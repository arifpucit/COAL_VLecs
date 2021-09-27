 /*
  *  COAL Video Lecture: 44
  *  Programmer: Arif Butt
  *  bufferoverflow.c: A sample code showing stack based buffer overflow
  *  Receives a string via command line argument, pass it to a function
  *  which creates a fixed size buffer and copy that string in that buffer
  *  using strcpy() function, and then display the string on stdout
  *  Finally the control returns to the main function
  *  compile: gcc -ggdb bufferoverflow.c
  *  usage: ./a.out AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
  *  Scuba Diving:      gdb -q a.out
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void f1(char* data){
	char buff[10];
 	strcpy(buff, data);
	printf("The command line received is: %s \n", buff);
}

int main(int argc, char * argv[]){
	if(argc > 1)
		f1(argv[1]);
	else
		printf("No command line received.\n");
   exit(0);
}
