;  COAL Video Lecture: 45
;  Programmer: Arif Butt
;  callprintf.nasm
;  Assemble: nasm -felf64 callprintf.nasm
;  Link:     gcc --static callprintf.o
;  usage:    ./a.out

SECTION .data

formatStr: db "The value of integer is %d.", 0xA
SECTION .text   
   global main
   extern printf
main:
   mov rdi, formatStr 
   mov rsi, 2021
   mov al, 0 
   call printf
   mov rax, 0
   ret
