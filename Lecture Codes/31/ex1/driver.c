#include <stdio.h>
#include <stdlib.h>
#include "mymath.h"

int global_initialized = 100;
int global_uninitialized;

int main(int argc, char*argv[])
{
	int num1 = atoi(argv[1]);	
	int num2 = atoi(argv[2]);	
	printf("%d + %d = %d \n", num1, num2, myadd(num1,num2));
	printf("%d - %d = %d \n", num1, num2, mysub(num1,num2));
return 0;
}
