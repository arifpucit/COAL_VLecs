;  COAL Video Lecture: 46
;  Programmer: Arif Butt
;  prog1.nasm
;  Assemble: nasm -felf64 prog1.nasm
;  Link:     gcc --static prog1.o
;  usage:    ./a.out

SECTION .data   
   text1      db  "What is your name? " 
   len_text1  equ  $ - text1  
   text2      db   "Hello Mr. "
   len_text2  equ  $ - text2

SECTION .bss   
   name resb 10

SECTION .text   
   global main
   main:
;prompt the user to input his/her name      
      mov rax,1      
      mov rdi,1       
      mov rsi,text1      
      mov rdx,len_text1      
      syscall           ;write(1,text1,len)   
;get name from user      
      mov rax,0      
      mov rdi,0       
      mov rsi,name      
      mov rdx,10      
      syscall           ;read(0,name,10) 
;display hello     
      mov rax,1      
      mov rdi,1       
      mov rsi,text2      
      mov rdx,len_text2      
      syscall          ;write(1,text2,len)     
;display name      
      mov rax,1      
      mov rdi,1       
      mov rsi,name      
      mov rdx,10      
      syscall          ;write(1,name,10)   
;exit program          
      mov rax,60      
      mov rdi,0      
      syscall          ;exit(0) 
