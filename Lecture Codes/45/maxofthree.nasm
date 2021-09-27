;  COAL Video Lecture: 45
;  Programmer: Arif Butt
;  maxofthree.nasm
;  Assemble: nasm -felf64 maxofthree.nasm
;  Link:   Link it with the C file that calls the maxofthree function


SECTION .text   
   global  maxofthree     
   maxofthree:
        mov     rax, rdi                
        cmp     rax, rsi                
        cmovl   rax, rsi                
        cmp     rax, rdx               
        cmovl   rax, rdx               
        ret            
