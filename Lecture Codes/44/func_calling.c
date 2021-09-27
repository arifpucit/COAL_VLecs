 /*
  *  COAL Video Lecture: 44
  * Programmer: Arif Butt
  * func_calling.c: function_calling.c: A sample program showing growing and 
  * shrinking of stack, an how function parameters are passed  
  * compile: gcc -ggdb func_calling.c
  *  usage: gdb -q ./a.out
*/

#include <stdio.h>
#include <stdlib.h>
void func2(){
//some computation is done
   return;
}
long func1(long a, long b, long c, long d, long e, long f, long g, long h){
   func2();
   return 54;
}
int main(){ 
   long rv = func1(0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48);
   return rv;
}
