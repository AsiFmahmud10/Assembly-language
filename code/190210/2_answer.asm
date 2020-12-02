 .model small
.stack 100h

.data
 
 a db ?
  b db ?
  c db ?
  _ans db ?
  z db ?
  y db ?
   msg db "/////Asif 190210// $"


.code

    main proc
        mov ax,@data
        mov ds,ax 
        
        
        
                mov dx,offset msg
                mov ah,09h
                int 21h
                
        
                mov dl,10
                mov ah,02h
                int 21h
                mov dl,13  ;crg return
                mov ah,02h
                int 21h     
        
               ;clear
               mov ax,0
               mov bx,0
               mov dx,0        
        
        
        mov ah,01h
        int 21h
        sub al,48
        mov a,al
      
         mov ah,01h
        int 21h
        sub al,48
        mov b,al
      
        mov ah,01h
        int 21h
        sub al,48
        mov c,al
      
        mov al,a
        mov bl,b
        mov cl,c
        
        cmp al,bl
        jne else
        cmp bl,cl
        jne else
        
          
         add cl,al
         add cl,bl 
         mov _ans,cl 
          
          
           
                mov dl,10
                mov ah,02h
                int 21h
                mov dl,13  ;crg return
                mov ah,02h
                int 21h
                        
           
           mov ax,0
           mov al,_ans
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
        
        
        
        
        
        jmp exit
        
      
       else:
           
           mov ax,0
           mov bx,0
           mov cx,0
           
           
     
           
           
           
           
           
           
      
       
       
       
       exit:
       
       mov ax, 4c00h
       int 21h
       
         
         
        
    main endp
    end main
