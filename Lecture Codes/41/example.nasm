;  COAL Video Lecture: 41
;  Programmer: Arif Butt
;  example.nasm
;  Assemble: nasm -felf6 -g  example.nasm
;  Link:     ld example.o -o example
;  usage:    ./example

SECTION .text   
   global _start
_start:
   mov rax, 255
   xor rax, rax
   push 65
   push 66
   push 67
   pop r11
   pop r12
   pop r13
   
;exit gracefully
   mov rax, 60
   mov rdi, 0
   syscall
