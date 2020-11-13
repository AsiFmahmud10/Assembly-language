.model small
.stack 100h

.data 

   a db 10
   b db 12
   x db ?
   y db ?
   z db ?
   ans db ?


.code
    main proc
        
    mov ax,@data
    mov ds,ax
    
    mov al,a
    mov dl,b
    mul dl
    
    mov ah,0
    mov dl,10
    
    div dl
    mov z,ah
    add z,48
    
    mov ah,0
    div dl
    mov y,ah
    add y,48
    
    mov dl,al
    add dl,48
    mov ah,02h
    int 21h
    
    
     mov dl,y
     mov ah,02h
     int 21h
    
     mov dl,z
     mov ah,02h
     int 21h
    
    
    mov ax,4C00h
    int 21h
    
    main endp
    end main

    

