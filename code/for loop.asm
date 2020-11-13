.model small

.data

.code                
    main proc
     
     mov ax,@data
     mov ds,ax   
        
         mov cx, 3
         
         top:
         
                 mov dl, 5
                 add dl,48
                 mov ah,2
                 int 21h
         
         
         
         loop top
        
        
        
        main endp
    end main