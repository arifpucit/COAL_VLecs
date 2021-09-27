// Program: ifelse1.asm
// Computes: if R0 > 0 
//                 R1 = 1
//             else
//                 R1 = 0
// Usage: put a value in RAM[0], run and inspect RAM[1] 

 @R0
 D=M

 @POSITIVE //@8
 D;JGT	

 @R1
 M=0
 @END //@10
 0;JMP
(POSITIVE)

 @R1
 M=1
(END)

@END // @10
 0;JMP
