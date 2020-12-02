.model small         
.stack 100h

.data

   z db ?     
   ansAsif db ?
           

.code

    main proc
        mov ax,@data
        mov ds,ax 
      
      mov ah,01h
      int 21h
      mov z,al
      sub z,48
      
           mov dl,13
           mov ah ,02h
           int 21h
           mov dl,10
           mov ah,02h
           int 21h
          
      
      
      mov ax,0
      mov dx,0
      
      mov al, z
      mov ansAsif, al
      sub ansAsif,1
      
      
      
      ;....................   
      xor cx,cx    
      mov cl, z
      
          
          
     l1:
     
           
           
           mov bl, 1
           ;add bx,1
           
           l2:
          
                   
               mov dl,bl
               add dl, 48
               mov ah, 02h
               int 21h
               
              
               mov dl,'-'
               mov ah, 02h
               int 21h
              
              
              
              
              inc bl
          
           cmp bl ,ansAsif
           jle l2
           
            mov dl,ansAsif
               add dl,1
               add dl,48
               mov ah, 02h
               int 21h
           
           
           
           mov dl,13
           mov ah ,02h
           int 21h
           mov dl,10
           mov ah,02h
           int 21h
           
           
          
     loop l1:     
          
          
        
        
        
        mov ax,4C00h
        int 21h
        
    main endp
    end main
