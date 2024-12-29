mov bx , 5
cmp bx , 7
je equalLoop
jne notEqual
jmp $

equalLoop:
    mov ah , 0x0e
    mov al , "Y"
    int 0x10

jmp $

notEqual:

    mov ah , 0x0e
    mov al , "X"
    int 0x10

jmp $
times 510 - ($-$$) db 0
db 0x55, 0xaa