#ifndef DICE_HPP_PIERRE_
#define DICE_HPP_PIERRE_

struct Dice{
   int operator()(int d){
    init_once(); 
    return random(1,d+1);
   }

   //init once, on first use.
   static void init_once(){
     static bool is_init=[](){
       randomSeed(millis());
       return true;
     }();
   }
};

#endif
