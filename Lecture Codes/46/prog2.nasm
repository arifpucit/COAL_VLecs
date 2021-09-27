;  COAL Video Lecture: 46
;  Programmer: Arif Butt
;  prog2.nasm
;  Assemble: nasm -felf64 prog2.nasm
;  Link:     gcc --static prog2.o
;  usage:    ./a.out

SECTION .data
   formatStr1: db "What is your name? ", 0
   formatStr2: db "Hello Mr. %s", 0xA
SECTION .bss
   name: resb 50
SECTION .text   
   global main
   extern printf
   extern gets
   extern exit
main:
;prompt the user to input his/her name
   lea rdi, formatStr1
   sub rsp, 8
   call printf
;get name from user
   lea rdi, name
   call gets
;display hello message with name
   lea rdi, formatStr2
   lea rsi, name
   call printf
   add rdi, 8
;make the exit library call
   mov rdi, 0
   call exit
