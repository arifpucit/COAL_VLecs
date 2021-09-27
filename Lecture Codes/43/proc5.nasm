;  COAL Video Lecture: 43
;  Code taken from: https://pastebin.com/PN2jKVae
;  Assemble: nasm -felf64 proc5.nasm
;  Link:     gcc --static proc5.o -o proc5
;  usage:    ./proc5

section .bss
    digitSpace resb 100
    digitSpacePos resb 8 
 
section .text
    global main
main:
    mov rdi, 8763456782021
    call printUnsignedInt
    mov rax, 60
    mov rdi, 0
    syscall
 
 
printUnsignedInt:
    mov rax, rdi
    mov rcx, digitSpace
    mov rbx, 10
    mov [rcx], rbx
    inc rcx
    mov [digitSpacePos], rcx
    _printRAXLoop:
       mov rdx, 0
       mov rbx, 10
       div rbx
       push rax
       add rdx, 48
       mov rcx, [digitSpacePos]
       mov [rcx], dl
       inc rcx
       mov [digitSpacePos], rcx
       pop rax
       cmp rax, 0
       jne _printRAXLoop
       _printRAXLoop2:
          mov rcx, [digitSpacePos]
          mov rax, 1
          mov rdi, 1
          mov rsi, rcx
          mov rdx, 1
          syscall
          mov rcx, [digitSpacePos]
          dec rcx
          mov [digitSpacePos], rcx
          cmp rcx, digitSpace
          jge _printRAXLoop2
    ret
