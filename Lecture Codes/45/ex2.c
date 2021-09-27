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

extern long maxofthree(long, long, long);

int main() {
    printf("maxofthree(15,-23,7) = %ld\n", maxofthree(15, -23, 7));
    printf("maxofthree(10,5,24) = %ld\n", maxofthree(10, 5, 24));
    printf("maxofthree(-19,-138,-10) = %ld\n", maxofthree(-19, -138, -10));
    return 0;
}
