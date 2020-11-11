#ifndef INPUT_HPP_PIERRE_
#define INPUT_HPP_PIERRE_


template<size_t N>
struct Input{  
  Input( int pin_data_, int pin_clock_, int pin_input_);
  void init(); //must be called once in setup, after defining output ports mode

  void scan();
  byte data[N]; //scan result goes here
  
  const int pin_data;
  const int pin_clock;
  const int pin_input;


  private:
  //NOT default constructible, NOT copyable, NOT movable.
  Input()=delete;
  Input(const Input &)=delete;
  Input(Input &&)=delete;
  template<typename T> Input& operator=(const T&)=delete;

  protected:
  void clock_pulse();

  void scan_init();
  void scan_byte(byte &write_here);
  
};

template<size_t N>
void Input<N>::clock_pulse(){
  digitalWrite(pin_clock,LOW);
  digitalWrite(pin_clock,HIGH);
  delay(1); //slow version for crappy shift registers

};


template<size_t N>
Input<N>::Input( int pin_data_, int pin_clock_, int pin_input_):
  pin_data(pin_data_),
  pin_clock(pin_clock_),
  pin_input(pin_input_)
{}


template<size_t N>
void Input<N>::init(){
  
  //init everything to 0, so we can start scanning by simply switching a 1
  digitalWrite(pin_data, LOW); 
  for(size_t i = 0; i<N*8; ++i){
         clock_pulse(); 
  }
  clock_pulse();//2 wires : we're one bit late
}


template<size_t N>
void Input<N>::scan(){
  scan_init();

  for(size_t i = 0; i<N; ++i){
    scan_byte(data[i]);
  }
}

template<size_t N>
void Input<N>::scan_init(){
  //put a 1 in the first byte of the shift register
  digitalWrite(pin_data, HIGH); 
  clock_pulse();
  digitalWrite(pin_data, LOW);
}


template<size_t N>
void Input<N>::scan_byte(byte &write_here){
    write_here=0;
    for(size_t j=0; j < 7; ++j){
      clock_pulse();  //the 2 wire version is one clock pulse late, so we clock pulse FIRST before reading
      if( digitalRead(pin_input) ){write_here|=0b00000001;}
      write_here<<=1;
    }
    clock_pulse();
    if( digitalRead(pin_input) ){write_here|=0b00000001;}
}





//idem, but launch callbacks on change
template<size_t N>
struct Input_run: public Input<N> {
  typedef void(*fn_t)();
  typedef Input<N> Base_t;
  static constexpr size_t BITS=N*8;

  //i is in bits, if N=2, i is in [0 ; 15]
  void register_rise(size_t i, fn_t);  
  void register_fall(size_t i, fn_t);

  Input_run(int pin_data_, int pin_clock_, int pin_input_);
  
  void scan_and_run();

  fn_t on_rise[BITS];
  fn_t on_fall[BITS];

  call_rise(size_t i){if(i>=BITS){return;}  if(on_rise[i]==nullptr){return;} on_rise[i]();}
  call_fall(size_t i){if(i>=BITS){return;}  if(on_fall[i]==nullptr){return;} on_fall[i]();}
 
};


template<size_t N>
Input_run<N>::Input_run(int pin_data_, int pin_clock_, int pin_input_):
    Base_t(pin_data_,pin_clock_,pin_input_)
{
  for(size_t i=0; i<BITS; ++i){
    on_rise[i]=nullptr; 
    on_fall[i]=nullptr;
  }
}


template<size_t N>
void Input_run<N>::register_rise(size_t i, fn_t f){
  if(i>=BITS){return;}
  on_rise[i]=f;
}


template<size_t N>
void Input_run<N>::register_fall(size_t i, fn_t f){
  if(i>=BITS){return;}
  on_fall[i]=f;
}




//--- Same as input, but run callbacks on changes ---
template<size_t N>
void Input_run<N>::scan_and_run(){

  this->scan_init();
  byte new_value;


  for(size_t i=0; i < N; ++i){
    this->scan_byte(new_value);
    byte& old_value = this->data[i];
    
    //compare bits, run callback
    byte mask = 0b10000000;
    for(size_t j=0; j < 8; ++j){
      byte old_bit = mask & old_value;
      byte new_bit = mask & new_value;
      if(old_bit!=new_bit){
          bool is_rise = (old_bit==0);
          if(is_rise){call_rise(j+8*i);}
          else       {call_fall(j+8*i);}
      }
      mask>>=1;
    }
    old_value=new_value;
  }
  
}


#endif
