;  COAL Video Lecture: 39
;  condjump4.nasm
;  Assemble: nasm -felf64 -g condjump4.nasm
;  Link: ld condjump4.o -o condjump4
;  Usage: ./condjump4

SECTION .data  
   msg: db "Upper Case Alphabet", 0xa  
   len_msg: equ $ - msg         

SECTION .text      
global _start   
_start: 
   mov al, 'a'       
   cmp al, 'A'     
   jb _end
   cmp al, 'Z'
   ja _end
   mov rax, 1            
   mov rdi, 1             
   mov rsi, msg            
   mov rdx, len_msg            
   syscall      
_end:      
   mov rax, 60      
   mov rdi, 0      
   syscall
