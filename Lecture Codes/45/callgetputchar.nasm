;  COAL Video Lecture: 45
;  Programmer: Arif Butt
;  callgetputchar.nasm
;  Assemble: nasm -felf64 callgetputchar.nasm
;  Link:     gcc --static callgetputchar.o
;  usage:    ./a.out

SECTION .text   
   global main
   extern getchar
   extern putchar
main:
   call getchar
   mov rdi, rax
   call putchar
   mov rdi, 10
   call putchar
   mov rax, 0
   ret
