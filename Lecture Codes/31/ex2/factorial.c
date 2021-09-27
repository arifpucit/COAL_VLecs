#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
	int num, fact=1;
	printf("Please enter a number: ");
	scanf("%d",&num);
	for(int i=1; i<=num; i++)
		fact = fact * i;
   	printf("The factorial of %d is %d \n",num, fact);
	return 0;
}
