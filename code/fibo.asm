.model small

.data

  frst db ?
  scd db ?
  
  
main proc 
.code

  mov ax, @data
  mov ds, ax
  
  mov cx,2 
   
  
  ;input :a --->>>> ah,al,dl data erease 
  
   mov ax, 0  
   mov ah, 01h
   int 21h
   sub al, 48
   
   
    
   
   ;
    
    mov frst, al 
    
   ;
   
 
   ;////////print line////
   
   mov dl, 13 
   mov ah,2h
   int 21h
   mov dl, 10
   mov ah,2h
   int 21h
   
   ;////////print line////
   
   
    ;input :B  
  
   mov ax, 0  
   mov ah, 01h
   int 21h
   sub al, 48
   
   
   ;
    
    mov scd,al
    
   ;
   
 
   ;////////print line////
   
   mov dl, 13 
   mov ah,2h
   int 21h
   mov dl, 10
   mov ah,2h
   int 21h
   
   ;////////print line////   
   
   
   
    ;/////////output  dl ah will be erase  /////
          mov dl,frst
          add dl,48
          mov ah, 02h
           int 21h 
          
          mov dl,scd
          add dl,48
          mov ah, 02h
          int 21h
          
    
     ;/////////////////output////////////
    
    
      mov cx, 4
      mov al, frst 
    
    top:
         
       
        mov al,frst
        add al,scd
        mov frst, al
        mov bl,frst
        
       
        mov al,scd
        mov frst,al
        
        mov scd,bl   
        
         mov dl,scd
         add dl,48
         mov ah, 02h
         int 21h
         
    
    
    
    loop top
       
       
       
       
       
       
       
       
       
       
       
       
  
  
  
  mov ax, 4C00H
  int 21h

 


main endp
end main