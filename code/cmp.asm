.model small
.stack 100h

.data
    msg db "input$"
    msg2 db "the  number is$"
    res db ?
     rem db ?


.code


    main proc
        
        mov ax,@data
        mov ds,ax
        
        ;input text
        
        mov dx,offset msg
        mov ah,09h
        int 21h
        mov dl,13
        mov ah,02h
        int 21h
        mov dl,10
        mov ah,02h
        int 21h
    
        ;take input
        
        mov bl,0
        scanNum:
            
            
            mov ax,0
            mov ah,01h
            int 21h
           
            cmp al,13
            je exit
            
            sub al,48
            
            
            
            mov cl,al
            mov dl,10
            mov al,bl
            mul dl
            add al,cl
            mov bl,al
            mov res,bl
           
        jmp scanNum
        
    exit:
    
        mov dx,offset msg2   
        mov ah,09h
        int 21h
        
        mov dl,13
        mov ah,02h
        int 21h
        mov dl,10
        mov ah,02h
        int 21h
     
        mov ax,0
        mov al,res
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
    