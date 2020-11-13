.model small
.stack 100h

.data
    msg db 32
    msg2 db "the  number is$"
    res db ?
     rem db ?


.code


    main proc
        
        mov ax,@data
        mov ds,ax
        mov al, msg
       
        mov dl, 10
         
         mov cx,1
         div dl
         mov rem, ah
        
     
     scan:
        
        mov dl,al
        add dl,48 
        mov ah, 02h
        int 21h
        
        inc cx
        
        mov al, rem
        cmp cx, 2
        jle scan
    
    
    mov ax,4C00h
    int 21h    

    main endp
end main
    