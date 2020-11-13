                               .model small
.stack 100h

.data

   z dw 0     
           

.code

    main proc
        mov ax,@data
        mov ds,ax 
        
      xor cx,cx    
      mov cx, 5
          
          
     l1:
     
           
           
           mov bx, cx
           ;add bx,1
           
           l2:
          
                   
               mov dl,'*'
               mov ah, 02h
               int 21h
               
              dec bx
          
           cmp bx ,z
           jne l2
           
           
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
