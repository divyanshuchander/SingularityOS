mov ah , 0x0e
mov al , 0x41

int 0x10    ; BIOS video interrupt
inc al      ; Incrementing al register by 1
int 0x10
; could use a loop as well so that doesnt have to repear for every char

jmp $
times 510 - ($ - $$) db 0
db 0x55 ,0xaa