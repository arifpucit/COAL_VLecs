;  COAL Video Lecture: 39
;  condjump1.nasm
;  Assemble: nasm -felf64 -g condjump1.nasm
;  Link: ld condjump1.o -o condjump1
;  Usage: ./condjump1

SECTION .data
  msg: db "Negative Number!",0xa
  len_msg: equ $ - msg        

SECTION .text   
   global _start   
_start:  
      mov ax, -5d 
      cmp ax, 0
      jge _end 
      mov rax, 1      
      mov rdi, 1       
      mov rsi, msg      
      mov rdx, len_msg      
      syscall 
_end:
      mov rax, 60
      mov rdi, 0
      syscall
