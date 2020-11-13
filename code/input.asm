.model small
.stack 100h

.data
  myres db ?
  z db ?
  y db ?
 


.code

    main proc
        mov ax,@data
        mov ds,ax 
        
       
       
   ;//////////input cng : cx,dx,bl,ax;///////
     
      
      
     ;///////clear////////    
       mov dl, 10
       mov bl, 0
       
       
       
        xor cx, cx
        
       ; koyta input ; 
        mov cx,3 
       ; koyta input ;
         
        scan:
        mov ah,01h
        int 21h
        
        mov ah,0 
        sub al, 48
        
        mov dh, al
        
        mov al, bl
        mul dl
        add al, dh
        mov bl, al
        mov myres, bl
        
        loop scan  
           
      ;//////////input cng : cx,dx,bl,ax;///////
      
      
      
      
        
       ; ///////////////output ///////3 input                
          ; mov ax,<--> jeita print korte hobe 
           mov ax,0
           mov al,myres
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
