 .model small
.stack 100h

.data

  ary2 db 3 dup(?) 
  ary3 db 5 dup(?) 
  msg db "Answer to the question no 1 : $"
  
  x dw ?        ;to hold address
  y dw ?       ;;to hold address

.code

    main proc
        mov ax,@data
        mov ds,ax          ;init data
      
         ;input ----array2
         
         mov cx, 3 
         mov ah, 01
         mov si, offset ary2        ;copy the address of ary2 to si
                                    ;input array 2
       for:
              int 21h
              mov [si],al 
              sub [si], 48
              add si,1 ;array dw hole 2
       
       loop for
                
         ;;;;;;;;;;;;;;;;;;;;;; new line ;;;;;;;;
         
                 mov dx, 0
                 mov ah, 0
                
                 mov dl,13
                 mov ah, 02
                 int 21h 
                 mov dl, 10
                 int 21h 
                 
                 mov dx, 0
                 mov ah, 0    
           
      
         
         mov cx,0
         mov dx,0
         mov ax,0
        
         ;input ----array3
         
         mov cx, 5 
         mov ah, 01
         mov si, offset ary3
       
       for2:
              int 21h
              mov [si],al 
              sub [si], 48
              add si,1 ;array dw hole 2
      
      
       
       loop for2        
       ;;;;;;;;;;;;;;; new line ;;;;;;;;
                 mov dx, 0
                 mov ah, 0
                
                 mov dl,13
                 mov ah, 02
                 int 21h 
                 mov dl, 10
                 int 21h 
                 
                 mov dx, 0
                 mov ah, 0    
           
       ;;;;;;;;;;;;;;;new line;;;;;;;;
       
                 mov dx, 0
                 mov ah, 0
                
                 mov dl,13
                 mov ah, 02
                 int 21h 
                 mov dl, 10
                 int 21h 
                 
            mov dx,offset msg      ;;print msg 
            mov ah,09h
            int 21h
                 ;;;;;;;;;;;;;;new line ;;;;;;;;;;
                 
                  mov dx, 0
                 mov ah, 0
                
                 mov dl,13
                 mov ah, 02
                 int 21h 
                 mov dl, 10
                 int 21h
          
             ;;;;;;;;;;;;;;;;;;;;;;;;
          
                 mov dx, 0
                 mov ah, 0    
           
      ;;;;;;;;;;;  ;;;;;;;;;;;
     
         
         mov x,offset ary2  ; x holds the address of first index ary 2
         mov y,offset ary3  ; y ; x holds the address of first index ary 2
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;add;;;;;;;;;;;; 
         
         mov cx, 3       ;; run loop until reach 3 element
       
         mov si, offset ary2  ; si holds address  ary2
       
       for3:
              mov x,si    ; x  holds address  si so that we can work with the address next time
              mov al,[si] ; al holds the value of address s[i]
              mov si,y
              inc y       ;y point to next address
              inc x        ;;y point to next address
              add [si],al  ; al to si value
              mov si,x       ; mov x to si
               
             
       loop for3
                    
       ;;;;;;;;;;;;;;;;;enter;;;;;;;;;;;
      
                 mov dx, 0
                 mov ah, 0
                
                 mov dl,13
                 mov ah, 02
                 int 21h 
                 mov dl, 10
                 int 21h 
                 
                 mov dx, 0
                 mov ah, 0    
           
      ;;;;;;;;;;;;;;;;;enter;;;;;;;;;;;
                 
       ;;;print;;;;
         
        mov cx, 5                     ;;;;;;;;;print the array3 
        mov ax,0
        mov dx,0
         mov ah, 02
        mov si, offset ary3
       
       again2:
       
              mov dl, [si]
              add dl, 48
              int 21h
       
              ;inc si
              add si,1 ;array dw hole
       
       loop again2
    
         
         
       
       
        
    
        mov ax,4C00h
        int 21h
        
    main endp
    end main
     
                
                 
         ret
       entry endp 