;  COAL Video Lecture: 46
;  Programmer: Arif Butt
;  prog4.nasm
;  Assemble: nasm -felf64 prog4.nasm
;  Link:     gcc --static prog4.o
;  usage:    ./a.out 25 47


SECTION .data
   errmsg: db "You must enter two numbers", 0xa, 0
   formatStr: db "The sum of two numbers is %d.", 0xA
SECTION .text   
   global  main
   extern  atoi
   extern puts
   extern printf
main:
   cmp     rdi, 3              ; must have exactly two arguments
   jne     error

   push rsi
   mov  rdi, [rsi+8]        ; argv[1]
   call atoi                ; x in rax
   mov  r13, rax            ; x in r13     
   pop rsi
   mov  rdi, [rsi+16]       ; argv[2]
   call atoi                ; y in rax
   mov  r14, rax
   add  r13, r14            ; sum in r13
   mov rdi, formatStr 
   mov rsi, r13
   mov al, 0 
   call printf
   ret
        
error:                                 ; print error message
   mov     edi, errmsg
   call    puts
   ret 
