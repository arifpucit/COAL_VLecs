/* COAL Video Lecture: 46
*  Programmer: Arif Butt
*  cmdline.c
*  Compile and Link:     gcc -g  cmdline.c
*  usage:    ./a.out
*/   
#include <stdio.h>
int main(int argc, char *argv[]){
printf("No of arguments passed are: %d\n", argc);
printf("Parameters are:\n");
for(int i = 0; argv[i] != NULL ; i++)
printf("argv[%d]:%s \n", i, argv[i]);
return 0;
}
