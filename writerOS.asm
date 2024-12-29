[org 0x7c00]
mov ah , 0x0e
mov bx , init
print:
    mov al, [bx]
    cmp al , 0
    je main
    int 0x10
    inc bx;
    jmp print
init:
    db "Type whatever you want to type below:", 0x0D,0x0A , 0
main:
    mov ah, 0x00
    int 0x16
    mov ah, 0x0e
    int 0x10
    jmp main


jmp $
times 510 - ($-$$) db 0
db 0x55 , 0xaa