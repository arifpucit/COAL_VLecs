;  COAL Video Lecture: 39
;  condjump2.nasm
;  Assemble: nasm -felf64 -g condjump2.nasm
;  Link: ld condjump2.o -o condjump2
;  Usage: ./condjump2

SECTION .data
    msg1: db "Negative Number!",0xa
    len_msg1: equ $ - msg1    
    msg2: db "Positive Number!",0xa
    len_msg2: equ $ - msg2        
    

SECTION .text   
   global _start   
_start:  
      mov ax, -5d 
      cmp ax, 0
      jge _positive
      mov rax, 1      
      mov rdi, 1       
      mov rsi, msg1      
      mov rdx, len_msg1      
      syscall
      jmp _end 
_positive:
      mov rax, 1      
      mov rdi, 1       
      mov rsi, msg2      
      mov rdx, len_msg2      
      syscall
_end:
      mov rax, 60
      mov rdi, 0
      syscall
