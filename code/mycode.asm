                                    .model small
.stack 100h

.data 

    msg db "enter the number : $"
    a dw ?
    b dw ?
    sum dw ?
    rem db ?



.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ;print msg 
    
    mov dx,offset msg
    mov ah,09h
    int 21h
    
    
    ;new line
    
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h
    
    ;Input Number  
    
    mov dx,0
    mov ah,01h
    int 21h
    
    sub dl,48
    mov a,dl
    
    
    mov dx,offset msg
    mov ah,09h
    int 21h
    
    ;////////
    
    
    
    
    mov ax,a
    add ax,b
    mov sum,ax
    
    mov dl,10
    div dl
    mov rem,ah
    
    mov dl,al
    add dl,48
    mov ah,02h
    int 21h 
    
    
    mov dl,rem
    add dl,48
    mov ah,02h
    int 21h 
    
         
    mov ax,4C00h
    int 21h
    main endp
end main