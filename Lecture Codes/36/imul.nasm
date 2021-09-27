;  COAL Video Lecture: 36
;  imul.nasm
;  Assemble: nasm -felf64 imul.nasm
;  Link:     ld imul.o -o imul
;  usage:    gdb -q ./imul -tui

SECTION .text
global _start
_start:  

; 8-bit multiplication with multiplier in register
   MOV al, -4d     ; multiplicand al=fch
   MOV bl, 100d    ; multiplier bl=64h
   IMUL bl          ; AX = fe70h (-16) CF=OF=1
; 16-bit multiplication with multiplier in register
   MOV rax, 0
   MOV ax, -5d   ; multiplicand  ax=fffb
   MOV bx, 5d   ; multiplier
   IMUL bx         ; DX:AX = ffff ffe7h CF=OF=0
; 32-bit multiplication with multiplier in register
   MOV rax, 0
   MOV eax, 4823424 ;multiplicand
   MOV ebx, -423    ;multiplier 
   IMUL ebx         ;EDX:EAX = FFFFFFFF 86635D80h (CF=OF=0)
;Two operrand variant (imul dest, src)
   MOV r8, 4823424
   MOV r9, -423 
   IMUL r9, r8 ;r9=r8*r9  (r9=FFFFFFFF86635D80h) (CF=OF=0)
;Three operrand variant (imul dest, src1, src2)
   MOV r8, 0
   MOV r9,0
   MOV r8, 4823424
   IMUL r9, r8, -423 ;r9=r8*-423 (r9= FFFFFFFF86635D80h) (CF=OF=0)
;exit the program gracefully   
   mov rax,60
   mov rdi,0
   syscall
