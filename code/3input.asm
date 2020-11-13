.model small
.stack 100h

.data

  A db ?  ;3 digit input ekhane thakbe
  
  
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
     
         
         mov ah,01h ;take one digit
         int 21h    ;al e input joma hoy 
         
     
         
         cmp al,13 ; if press enter exit
         je exit
         
         
        
         sub al,48 ;asci to decimal   
            
         
         
         mov cl,al
         mov al,bl
         mul dl    ;al er sathe add hoy
         add al,cl
         mov bl,al
         mov a,bl  ;A te input joma ase   
            
            
         jmp scan   
            
        
        
        
        
       exit:  
       
            
              
            
       
            ; sob 0 kore neya
            
            mov ax,0
            mov bx,0
            mov cx,0
            mov dx,0
            
            
            
            ;new line
                
                mov dl,10
                mov ah,02h
                mov dl,13  ;crg return
                mov ah,02h
                int 21h
                        
                        
                mov ax,0 ;clean
                mov dx,0
            
                     
                     
            mov al,a ; a 3 digitvariable
            
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
