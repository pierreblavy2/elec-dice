//ATTiny85
//processor ATTiny85
//clock internal 16MHz
//programmer Arduino as ISP (not arduinoISP)

//--- wires ---
//Switches
#define S_DATA     ATTINY85_PIN5
#define S_CLOCKS   ATTINY85_PIN6
#define S_SWITCHES ATTINY85_PIN7

//LED
#define D_DATA   ATTINY85_PIN3
#define D_CLOCKS ATTINY85_PIN2


//--- program modes ---
//Modes
#define MODE_DICE true
#define MODE_SUM  false
#include "attiny85.hpp"
#include "display.hpp"
#include "digit_to_byte.hpp"
#include "input.hpp"
#include "dice.hpp"


Display<3>   display(D_DATA , D_CLOCKS) ;
Input<1>     input  (S_DATA , S_CLOCKS , S_SWITCHES);
byte         last_input;
Dice         dice;

bool dice_mode = MODE_DICE;
byte dice_sum;
byte dice_num;




void anime(){
  byte x=0b00000001;
  for(size_t i = 0; i < 8; ++i){
    display.set_byte<0>(x);
    display.set_byte<1>(x);
    display.set_byte<2>(x); 
    display.update();
    delay(50);
    x<<=1;
  }
}



void display_number(byte r){
  display.set_byte<0>(digit_to_byte(r%10,false));
  display.set_byte<1>(digit_to_byte(r/10,false));
  display.set_byte<2>(digit_to_byte(0b00000000,false));
}

void update_dice_sum(byte x){
  if(dice_num<9){
    ++dice_num;
    dice_sum+=x;
  }
  display_number(dice_sum);
  display.set_byte<2>(digit_to_byte(dice_num,true));
}



//input callbacks : One dice per digit
template<int D>
void digit_1_dice_t(){
  anime();
  
  if(dice_mode == MODE_DICE){
      display.set_byte<0>(digit_to_byte(dice(D)%10,true));
      display.set_byte<1>(digit_to_byte(dice(D)%10,true));
      display.set_byte<2>(digit_to_byte(dice(D)%10,true));
  }
  else{
    update_dice_sum(dice(D));
  }
  display.update();
}

void on_d4() {digit_1_dice_t<4>();}
void on_d6() {digit_1_dice_t<6>();}
void on_d8() {digit_1_dice_t<8>();}
void on_d10(){digit_1_dice_t<10>();}


//input callbacks : One dice per 2 digit
template<int D>
void digit_2_dice_t(){
   anime();
   auto r = dice(D);
  
  if(dice_mode == MODE_DICE){
      display.set_byte<0>(digit_to_byte(r%10,false));
      display.set_byte<1>(digit_to_byte((r/10)%10 ,false));
      display.set_byte<2>(0b00000000);
  }
  else{
    update_dice_sum(dice(D));
  }
  display.update();
}


void on_d12() {digit_2_dice_t<12>();}
void on_d20() {digit_2_dice_t<20>();}


void on_sum(){
  dice_mode = MODE_SUM;
  dice_num = 0;
  dice_sum = 0;
  display.set_byte<0>(digit_to_byte(0));
  display.set_byte<1>(digit_to_byte(0));
  display.set_byte<2>(digit_to_byte(0));
  display.update();
}

void on_dice(){
  dice_mode = MODE_DICE;
  display.set_byte<0>(0);
  display.set_byte<1>(0);
  display.set_byte<2>(0);
  display.update();
}



void setup() {
  pinMode(S_DATA    ,OUTPUT);  digitalWrite(S_DATA    ,LOW);
  pinMode(S_CLOCKS  ,OUTPUT);  digitalWrite(S_CLOCKS  ,LOW);
  pinMode(S_SWITCHES,INPUT);   digitalWrite(S_SWITCHES,LOW);
  pinMode(D_CLOCKS  ,OUTPUT);  digitalWrite(D_CLOCKS  ,LOW);
  pinMode(D_DATA    ,OUTPUT);  digitalWrite(D_DATA    ,LOW);
  delay(250);
  
  input.init(); //should flush 0 to switches
  
  //attach callbacks to input
  /*
  input.register_rise(0,on_d4);
  input.register_rise(1,on_d6);
  input.register_rise(2,on_d8);
  input.register_rise(3,on_d10);
  input.register_rise(4,on_d12);
  input.register_rise(5,on_d20);
  input.register_rise(6,on_dice_sum);
  input.register_rise(7,on_dice);
  */

  display.set_byte<0>(0b10101010);
  display.set_byte<1>(0b01010101);
  display.set_byte<2>(0b11001100);
  display.update_force();
  delay(700);

  input.scan();
  last_input=input.data[0];
  
}



void loop() {
  byte mask;


  
  //track changes
  input.scan();
  mask = 0b10000000;
  
  for(size_t i=0; i < 8; ++i){
    byte old_bit = mask & last_input;
    byte new_bit = mask & input.data[0];
    if(old_bit!=new_bit){
    bool is_rise = (old_bit==0);
    if(is_rise){
      switch(i){
        case 0 : {on_d4();   break;}
        case 1 : {on_d6();   break;}
        case 2 : {on_d8();   break;}
        case 3 : {on_d10();  break;}
        case 4 : {on_d12();  break;}
        case 5 : {on_d20();  break;}
        case 6 : {on_dice(); break;}
        case 7 : {on_sum();  break;}
      }
    }
    }
    mask>>=1;
  }
  last_input=input.data[0];

  
  display.update();
}
