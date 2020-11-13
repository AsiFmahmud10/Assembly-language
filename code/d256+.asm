.model small
.stack 100h

.data

  A dw 25  ;3 digit input ekhane thakbe
  B dw 10 
  x db ? ; 3 digit variable out put er jonno
  y db ?
  z db ?

  


.code

    main proc
        mov ax,@data
        mov ds,ax 
        
        mov ax,a
        add ax,b
        
          
        
       ; ///////////////output ///////3 input                
          ; mov ax,<--> jeita print korte hobe
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
