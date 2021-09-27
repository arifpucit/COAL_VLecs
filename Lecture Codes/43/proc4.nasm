;  COAL Video Lecture: 43
;  Programmer: Arif Butt
;  proc2.nasm
;  Assemble: nasm -felf64 proc4.nasm
;  Link:     gcc --static proc4.o -o proc4
;  usage:    ./proc4

SECTION .data
   str:  db 0x0, 0xa
SECTION .text   
   global main
main:
   mov rdi, 7
   call printdigit
; exit gracefully   
   mov rax, 60
   mov rdi, 0
   syscall

printdigit: 
   add rdi, 48      ;convert digit to asii
   mov byte [str], dil 
   mov rax, 1 
   mov rdi, 1
   mov rsi, str
   mov rdx, 2
   syscall
   ret
