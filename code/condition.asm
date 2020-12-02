.model small 

.data
  


.code   

main proc
    
    mov ax, @data
    mov ds, ax
    
 
    
    mov ax, 0
    mov bx, 0 
    
     COMMENT @  for commenting we use this
   ;cx = max(ax,bx)
    
    mov ax, 2
    mov bx, 3
    
    cmp ax, bx
    jg a
    
    mov cx, bx
    
    jmp exit ;jgz jlz egulo jodi emni bebohar kori cmp sara tahole cx er upr depnd kore
    
    a:
    mov cx, ax
    exit:
    
    mov dx, cx
    add dl, 48
    mov ah, 02h
    int 21h 
    
         
    
    @
       
   comment @   
    ;  if (ax < 0)
     ;     ax = -ax  
     
       mov ax , -2
       cmp ax,0
       jnl exit
              
       neg ax    ; ax = -ax  
          
          
       
    exit:
    
    mov dx, ax
    add dl, 48
    mov ah, 02h
    int 21h 
              @
              
 ;if ( al >= bl) print al
 ;else print bl
  comment @
  
    mov ax, 5
    mov bx, 3
    
    cmp ax, bx
    jnge else                
    
    mov dx, ax
    jmp exit   
    
    
    else:
    mov dx,bx 
    
    exit:
    add dl, 48
    mov ah, 02h
    int 21h 
  @
  
  ;-------------Switch   if(ax == 0) print 0 ; else if (ax < 0) print 5 elseif (ax > 0)  print 1----
   comment @
     
    mov ax, -1
     
    cmp ax, 0
    je equal:
    jl minus:
    jg plus: 
    
    
   equal:
      mov dx, 0
      jmp exit
   minus:
     mov dx,0
      mov dx, -1
      jmp exit
   
   plus: 
       mov dx, 1
       jmp exit
    
    
    
    
     exit:
    add dl, 48
    mov ah, 02h
    int 21h 
    
    @  
   ;------------------- 
          comment @
   ; if( cx == 1 || cx == 3) print o if( cx == 2 || cx == 4 ) print e -----------
         
          mov cx,0
          mov cx, 4 
     
          cmp cx, 1
          je  pto 
          cmp cx, 3
          je pto
          cmp cx, 2
          je pte 
          cmp cx, 4
          je pte
     
     
     
     
      pto:
          mov dx, 'o'  
          jmp exit:
     
     
       pte:
          mov dx, 'e'
          jmp exit:
     
       exit:
        mov ah, 02h
        int 21h 
     
        @
    ;'''''''''''''''' and---------
     ; if( cx >= 2 && cx <= 4) print 8
            ; else 0 
     
         mov cx, 5 
     
         cmp cx, 2
         jl else 
         cmp cx, 4
         jg else 
         
         mov dx, 8
         jmp exit
         
         else:
         mov dx, 0
     
      exit:
        add dl,48
        mov ah, 02h
        int 21h 
     
     
    mov ax, 4c00h
    int 21h
    
    
    main endp
end main