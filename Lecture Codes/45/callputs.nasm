;  COAL Video Lecture: 45
;  Programmer: Arif Butt
;  callputs.nasm
;  Assemble: nasm -felf64 callputs.nasm
;  Link:     gcc --static callputs.o
;  usage:    ./a.out

SECTION .data
msg: db "Learning is fun with Arif Butt..."
SECTION .text   
   global main
   extern puts
   extern exit
main:
lea rdi, msg
call puts
mov rdi, rax
call exit
