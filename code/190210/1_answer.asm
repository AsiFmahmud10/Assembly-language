.model small
.stack 100h

.data
 
 Asif_ans db 2
  z db ?
  y db ?
 


.code

    main proc
        mov ax,@data
        mov ds,ax 
        
      mov cx, 7
      
      
      top:
             
         
          mov ax,0
           mov al,Asif_ans
           mov dl, 0
           
           
         
          
            mov dx,0
            mov dl,10
            
            div dl      
            mov z,ah
            add z,48
            
            mov ah,0
            div dl
            mov y,ah
            add y,48
            
            
            
            
            mov dl,y
            mov ah,02h
            int 21h
            
            mov dl,z
            mov ah,02h
            int 21h
           
            
                mov dl,13
                mov ah,02h
                int 21h
                mov dl,10  
                mov ah,02h
                int 21h
                        
         
         
         
         
         
         
         
         
         
         mov bl, Asif_ans
         add bl,2
         mov Asif_ans, bl
      
      
      loop top  
        
        
        mov ax,4C00h
        int 21h
        
    main endp
    end main
