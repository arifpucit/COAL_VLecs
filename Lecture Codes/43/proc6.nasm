;  COAL Video Lecture: 43
;  Programmer: Arif Butt
;  proc6.nasm
;  Assemble: nasm -felf64 proc6.nasm
;  Link:     gcc --static proc6.o  myfunctions.o -o proc6
;  usage:    ./proc6


SECTION .text   
   global main
   extern sumOfThree
   extern printUnsignedInt
main:
   mov rdi, 1500
   mov rsi, 411
   mov rdx, 110
   call sumOfThree
   mov rdi, rax
   call printUnsignedInt
   ret

