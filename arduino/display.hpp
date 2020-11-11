#ifndef DISPLAY_HPP_
#define DISPLAY_HPP_


template<size_t N>
struct Display{

  Display( int pin_data_, int pin_clock);
  
  template<size_t D>  void set_byte(byte b);
  void set_byte (size_t index, byte b);

  void update_force();
  void update();   

  const int pin_data;
  const int pin_clock;
  
  byte digits[N];   //in binary form (one bit per led)
  bool need_update=false;


  //NOT default constructible, NOT copyable, NOT movable.
  Display()=delete;
  Display(const Display &)=delete;
  Display(Display &&)=delete;
  template<typename T> Display& operator=(const T&)=delete;
  void clock_pulse();
  
  static_assert(N>0,"0 digit is not valid");
};


//--- implementation ---

template<size_t N>
void Display<N>::clock_pulse(){
  digitalWrite(pin_clock,LOW);
  digitalWrite(pin_clock,HIGH);
  delay(1); //slow version for crappy shift registers
};

  

template<size_t N>
Display<N>::Display( int pin_data_, int pin_clock_):
  pin_data (pin_data_) , 
  pin_clock(pin_clock_)
{
  for(size_t i=0; i < N;++i){digits[i]=0;}
  
}



template<size_t N>
void Display<N>::set_byte(size_t index, byte b){
  if(index>=N){return;}
  if(digits[index]==b){return;}
  need_update=true;
  digits[index]=b; 
}

template<size_t N>
template<size_t D>
void Display<N>::set_byte(byte b){
  static_assert(D<N, "invalid digit index");
  if(digits[D]==b){return;}
  need_update=true;
  digits[D]=b; 
}




template<size_t N>
inline void Display<N>::update_force(){

  //Fast version for quick shift registers
  /*
  for(size_t i=0;i<N;++i){
    shiftOut(pin_data, pin_clock, LSBFIRST,  digits[i] ); //TODO unsure for bit order !!!
  }
  
  digitalWrite(pin_data,LOW);
  clock_pulse();
*/

//slow version (for crappy shift registers)
  for(size_t i=0;i<N;++i){
    digitalWrite(pin_data, digits[i]&0b00000001 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b00000010 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b00000100 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b00001000 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b00010000 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b00100000 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b01000000 ? HIGH : LOW); clock_pulse();
    digitalWrite(pin_data, digits[i]&0b10000000 ? HIGH : LOW); clock_pulse();
  }

  //2 wires, we're one cycle late
  clock_pulse();
  
}






template<size_t N>
inline void Display<N>::update(){
  if(need_update){
    update_force();
    need_update=false;
  }
}


#endif
