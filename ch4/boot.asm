org 07c00h
BaseOfStack equ 07c00h
LABEL_START: 
    mov ax,cs;
    mov ds,ax;
    mov es,ax;
    mov ss, ax;
    mov sp, BaseOfStack;
 
;clear screen
mov ax, 0600h
mov bx, 0700h
mov cx, 0
mov dx, 0184fh
int 10h
mov dh, 0
call DispStr
jmp $
MessageLength equ 9
BootMessage db "Booting  "
Message1    db "Ready.   "
Message2    db "No Loader"
DispStr:
    mov ax, MessageLength
    mul dh
    add ax, BootMessage
    mov bp,ax
    mov ax,ds
    mov es,ax
    mov cx, MessageLength
    mov ax, 01301h
    mov bx, 0070h
    mov dl,0
    int 10h
    ret;
times 510-($-$$) db 0
dw 0xaa55