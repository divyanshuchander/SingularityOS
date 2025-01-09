[org 0x7c00]

mov bx , welcome
mov ah , 0x0e

main:
    mov al , [bx]
    cmp al , 0
    je exit
    int 0x10
    inc bx
    jmp main
welcome:
    db "Welcome to Divyanshu Operating System",0
exit:
    jmp $
jmp $

times 510 - ($-$$) db 0
db 0x55 , 0xaa
