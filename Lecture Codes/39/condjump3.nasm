;  COAL Video Lecture: 39
;  condjump3.nasm
;  Assemble: nasm -felf64 -g condjump3.nasm
;  Link: ld condjump3.o -o condjump3
;  Usage: ./condjump3

SECTION .data  
   msg1 db "AX == BX", 0xa  
   len_msg1 equ $ - msg1   
   msg2 db "AX > BX", 0xa  
   len_msg2 equ $ - msg2 
   msg3 db "BX > AX", 0xa  
   len_msg3 equ $ - msg3      

SECTION .text      
global _start   
_start:        
   mov ax, -35d 
   mov bx, -20d      
   cmp ax, bx      
   je _equal  
   cmp ax, bx     
   jg _axbigger  
   mov rax, 1            
   mov rdi, 2             
   mov rsi, msg3            
   mov rdx, len_msg3            
   syscall 
   jmp _end 
_axbigger:
   mov rax, 1            
   mov rdi, 2             
   mov rsi, msg2            
   mov rdx, len_msg2            
   syscall      
   jmp _end 
_equal:
   mov rax, 1            
   mov rdi, 1             
   mov rsi, msg1            
   mov rdx, len_msg1            
   syscall      
_end:      
   mov rax, 60      
   mov rdi, 0      
   syscall
