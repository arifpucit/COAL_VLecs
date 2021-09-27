 /*
  * COAL Video Lecture: 45
  * Programmer: Arif Butt
  * ex1.c: A sample C program that calls an assembly function from proc1.o
  * compile: gcc -c ex1.c
  * link: gcc ex1.o proc1.o -o myexe
  *  usage: ./myexe
*/

#include <stdio.h>
#include <stdlib.h>

extern int getval();

int main(){ 
   int rv = getval();
   printf("The value returned by Assembly getval function = %d \n", rv);
   return 0;
}
