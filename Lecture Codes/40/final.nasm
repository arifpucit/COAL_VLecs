;  COAL Video Lecture: 40
;  final.nasm
;  Assemble: nasm -felf64 -g final.nasm
;  Link: ld final.o -o final
;  Usage: gdb -q final -tui

SECTION .data
   msg  db   "PUCIT", 0xA   
   len_msg  equ  $ - msg

SECTION .text   
   global _start   
_start:
   mov rcx, 5 ; initialize counter
_loopbody:
;loop instructions comes here  
   mov rax, 1       
   mov rdi, 1      
   mov rsi, msg      
   mov rdx, len_msg
   push rcx
   syscall 
   pop rcx
   loop _loopbody 
;exit program gracefully
   mov rax, 60      
   mov rdi, 0      
   syscall
