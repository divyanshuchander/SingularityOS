mov ah ,0x00
int 0x16 ; keyboard interrupt vector
mov ah , 0x0e
int 0x10




jmp $
times 510 - ($-$$) db 0
db 0x55 , 0xaa