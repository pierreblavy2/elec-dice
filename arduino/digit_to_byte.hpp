#ifndef DIGIT_TO_BYTE_HPP_
#define DIGIT_TO_BYTE_HPP_



inline byte digit_to_byte(byte digit_id){
    //    A
    //  |---| 
    // F|   |B
    //  |---|
    // E| G |C
    //  |---|    .H
    //    D


    //ABCDEFGH    
    switch(digit_id){
      //                ABCDEFGH
      case 0 : return 0b11111100;
      case 1 : return 0b01100000;
      case 2 : return 0b11011010;
      case 3 : return 0b11110010;
      case 4 : return 0b01100110;
      case 5 : return 0b10110110;
      case 6 : return 0b10111110;
      //                ABCDEFGH
      case 7 : return 0b11100100;
      case 8 : return 0b11111110;
      case 9 : return 0b11110110; 
      case 10: return 0b00000000;
      case 11: return 0b11111111; 
    };
    return 0b01101110; 


/*
    //HGFEDCBA  
    switch(digit_id){

     
      //                HGFEDCBA
      case 0 : return 0b00111111;
      case 1 : return 0b00000110;
      case 2 : return 0b01011011;//
      case 3 : return 0b01001111;
      case 4 : return 0b01100110;//
      case 5 : return 0b01101101;
      case 6 : return 0b01111101;
      //                HGFEDCBA
      case 7 : return 0b00100111; 
      case 8 : return 0b01111111;
      case 9 : return 0b01101111; 
      case 10: return 0b00000000;
      case 11: return 0b11111111; 
    };
    return 0b01101110;  
*/
}


/*
template<size_t N,typename T>
inline bool int_to_bytes(T x, byte (&write_here)[N]){
  for(size_t i = 0; i< N ; ++i){
     write_here[i]=x%10;
     x = x/10;
  }
  return x==0; //true = OK, false=overflow
}
*/



inline byte digit_to_byte(char digit_id,bool point){
  byte b=digit_to_byte(digit_id);
  if(point)b|=0b00000001;
  return b;
}


#endif
