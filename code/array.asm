.model small
.stack 100h

.data

  ary db 2, 3 ,4 ,5 ,6
  ary2 db 4 dup(?)  ;dup(?) just declare array
  ary3 dw 2,3 dup(1)  ;2 1 1 1
  


.code

    main proc
        mov ax,@data
        mov ds,ax 
      
      
         mov cx, 3 
         mov ah, 01
         lea si, ary2 ;or, mov si, offset ary2
       
       for:
              int 21h
              mov [si],al 
              sub [si], 48
              add si,1 ;array dw hole 2
       
       loop for
       
      
        mov cx, 4 
        mov ax,0
        mov dx,0
         mov ah, 02
        lea si, ary2
       
       again:
       
              mov dl, [si]
              add dl, 48
              int 21h
       
              ;inc si
              add si,1 ;array dw hole
       
       loop again
       
       
       
        
    
        mov ax,4C00h
        int 21h
        
    main endp
    end main
     
     
     array_i proc
        
        
        
        
             ret
        end array_i 