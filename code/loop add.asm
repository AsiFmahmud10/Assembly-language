.model small
.stack 100h


.data

   rem db ?
    
    ans db 0

.code

main proc
    mov ax ,@data
    mov ds, ax
    
    xor cx, cx
    
    mov cx, 3
    
    
    top:
    
    mov ah, 01h
    int 21h
    
    sub al, 48
    add ans, al
    
     mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h
            
    
    loop top
     
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h
                
    
    mov ax, 0
    mov al, ans
    mov dl, 10
    div dl
    
    mov rem, ah
    
    mov dl,al
    add dl, 48
    mov ah, 02h
    int 21h
    
    mov dl, rem
    add dl, 48
    mov ah, 02h
    int 21h 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    mov ax, 4C00h
        int 21h
    main endp
end main