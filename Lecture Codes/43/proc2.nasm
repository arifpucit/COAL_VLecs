;  COAL Video Lecture: 43
;  Programmer: Arif Butt
;  proc2.nasm
;  Assemble: nasm -felf64 proc2.nasm
;  Link:     gcc proc2.o -o proc2
;  usage:    ./proc2

SECTION .text   
   global main
main:
   mov rdi, 50
   mov rsi, -15
   mov rdx, 35
   call sumOfThree
   ret

sumOfThree:
   add rdi, rsi     
   add rdi, rdx     
   mov rax, rdi   
   ret 
