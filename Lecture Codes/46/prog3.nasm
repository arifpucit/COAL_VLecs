;  COAL Video Lecture: 46
;  Programmer: Arif Butt
;  prog3.nasm
;  Assemble: nasm -felf64 prog3.nasm
;  Link:     gcc --static prog3.o
;  usage:    ./a.out

SECTION .text   
     global  main
     extern  puts
main:
;we need to save the registers rdi, and rsi that puts uses
     push  rdi 
     push  rsi
;need to align the stack before call
    sub   rsp, 8 
    mov   rdi, [rsi]  ; the argument string to display
    call  puts                  
;need to restore registers puts used
    add   rsp, 8     
    pop   rsi                  
    pop   rdi
;need to restore rsp as well
    add   rsi, 8    ; move rsi to point to next argument
    dec   rdi       ; needd to count down the total arguments passed
    jnz   main      ; if not done counting keep going
     
     ret
