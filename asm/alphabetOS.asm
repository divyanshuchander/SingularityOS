mov ah , 0x0e   ; teletype mode
mov al , 65
alphabetCaps:
    cmp al , "Z" + 1
    je exit
    int 0x10
    jmp alphabetNoCaps
alphabetNoCaps:
    add al , 32
    int 0x10
    sub al , 31
    jmp alphabetCaps

exit:
    jmp $
jmp $
times 510 - ($-$$) db 0
db 0x55, 0xaa