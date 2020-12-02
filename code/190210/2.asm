.model small

.data
    asif db 9
    temp db 1
    n db ?
    ans db 0
    x db ? 
    myres db ?
    z db ?
    y db ?
     
.code                
    main proc
     
     mov ax,@data
     mov ds,ax
     
      mov ah,01h
      int 21h
      
      sub al,48
      mov x,al
      
           mov dl,13
           mov ah ,02h
           int 21h
           mov dl,10
           mov ah,02h
           int 21h
           
         mov ax,0
         
         mov cx,0
         mov cl, x
         
         top:
                 
                 mov al,asif
                 mov dl,temp
                 mul dl
                 add ans,al
                
                
                 
            inc temp
         
         loop top
        
         
          mov ax,0
          mov dx,0
          
         ;  jeita print korte hobe 
           
           mov al,ans
           mov dl, 0
           
           
          ;/////clean////
          
            mov dx,0
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
            
         ; ///////////////output ///////3 input   
        
        
        
        
        mov ax,4C00h
        int 21h
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
        
        main endp
    end main