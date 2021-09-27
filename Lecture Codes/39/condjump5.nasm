;  COAL Video Lecture: 39
;  condjump5.nasm
;  Assemble: nasm -felf64 -g condjump5.nasm
;  Link: ld condjump5.o -o condjump5
;  Usage: ./condjump5

SECTION .data  
   msg db "YES", 0xa  
   len_msg: equ $ - msg         

SECTION .text      
global _start   
_start:       
   mov al, 'Y'       
   cmp al, 'Y'      
   je _true
   cmp al, 'y'
   je _true
   jmp _end
_true:
   mov rax, 1            
   mov rdi, 1             
   mov rsi, msg           
   mov rdx, len_msg            
   syscall       
_end:      
   mov rax, 60      
   mov rdi, 0      
   syscall
