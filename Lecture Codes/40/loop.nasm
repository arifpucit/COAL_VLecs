;  COAL Video Lecture: 40
;  loop.nasm
;  Assemble: nasm -felf64 -g loop.nasm
;  Link: ld loop.o -o loop
;  Usage: gdb -q loop -tui

SECTION .text   
   global _start   
_start:
   mov rcx, 5 ; initialize counter
_loopbody:
;loop instructions comes here
   loop _loopbody 
;exit program gracefully
   mov rax, 60      
   mov rdi, 0      
   syscall
