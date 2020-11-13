.model small
.stack 100h

.data
    msg db "input$"
    msg2 db "the  number is$"
    a db 100
    b db 5
    
    x db ? ; 3 digit variable out put er jonno
    y db ?
    z db ?

    
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
        
        ;newline
        mov dl,13
        mov ah,02h
        int 21h
        
        mov dl,10 ;crg return
        mov ah,02h
        int 21h
    
        
        ;take input
         
      
        
        mov al,a
        
      
       mov ah,0 
       
        
        mov dl,b
        
       
        div dl
        
        
        
           
            mov bx,0
            mov cx,0
            mov dx,0
            
            
            
            
                     
                     
           ; mov al,a ; a 3 digitvariable
            
            ;///////print 
             
            mov ah,0   ;clean ah
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
