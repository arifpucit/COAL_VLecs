// Program: ifelse1.asm
// Computes: if R0 > 0 
//                 R1 = 1
//             else
//                 R1 = 0
// Usage: put a value in RAM[0], run and inspect RAM[1] 

 @R0
 D=M

 @8
 D;JGT	

 @R1
 M=0
 @10
 0;JMP

 @R1
 M=1

 @10
 0;JMP
