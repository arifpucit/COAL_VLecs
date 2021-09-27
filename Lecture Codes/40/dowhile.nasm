;  COAL Video Lecture: 40
;  dwhile.nasm
;  Assemble: nasm -felf64 -g dowhile.nasm
;  Link: ld dowhile.o -o dowhile
;  Usage: gdb -q dowhile -tui


SECTION .text   
   global _start   
_start:
   mov rax, 0 ; initialize counter

_loopbody:
;loop instructions comes here
   inc rax
   cmp rax, 5
   jl _loopbody

;exit gracefully
   mov rax, 60      
   mov rdi, 0      
   syscall
