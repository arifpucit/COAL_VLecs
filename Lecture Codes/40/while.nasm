;  COAL Video Lecture: 40
;  for.nasm
;  Assemble: nasm -felf64 -g while.nasm
;  Link: ld while.o -o while
;  Usage: gdb -q while -tui


SECTION .text   
   global _start   
_start:
   mov rax, 0 ; initialize counter
   cmp rax, 5
   jge _endofloop

_loopbody:
;loop instructions comes here
   inc rax
   cmp rax, 5
   jl _loopbody

_endofloop:

;exit gracefully
   mov rax, 60      
   mov rdi, 0      
   syscall
