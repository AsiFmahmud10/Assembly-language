            .model small
.stack 100h

.data

  A db ?  ;3 digit input ekhane thakbe
  
  bir db 3
  res db ? 
  
   x db ? ; 3 digit variable out put er jonno
   y db ?
   z db ?



.code

    main proc
        mov ax,@data
        mov ds,ax 
        
        mov bl,0
        mov dl,10
        
     scan:
     
         
         mov ah,01h
         int 21h     
         
     
         
         cmp al,13 
         je exit
         
         
        
         sub al,48   
            
         
         
         mov cl,al
         mov al,bl
         mul dl    
         add al,cl
         mov bl,al
         mov a,bl    
            
            
         jmp scan   
            
        
        
        
        
       exit:  
       
            
                mov dl,13
                mov ah,02h
                mov dl,10  ;crg return
                mov ah,02h
                int 21h
                
       
            
              mov al,a
              mov bl,bir
              mul bl
              
            
         
         
             
            mov ah,0   ;clean ah
            mov dl,10
            
            div dl      
            add al,ah
           
            add al,48
            mov dl,al 
            
            mov ah,02h
            int 21h
            
            
        
        
        
        mov ax,4C00h
        int 21h
        
    main endp
    end main
