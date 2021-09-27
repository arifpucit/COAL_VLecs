// Program: swap.asm
// Usage: put values in RAM[0], RAM[1]

//swap the values of RAM[0] and RAM[1]
 @R1  
 D=M
 @temp
 M=D

 @R0  
 D=M
 @R1  
 M=D

 @temp  
 D=M
 @R0
 M=D
(END)
 @END  
 0;JMP