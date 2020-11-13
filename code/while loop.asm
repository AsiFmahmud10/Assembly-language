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
         
         mov cx, 1 
        jmp while
        
        
        sol:
             inc cx
             
             mov dl,'a'
             mov ah,02h
             int 21h
        
        
        
        
        
        while:
           
            cmp cx, 4
            jle sol: 
                 
        
        mov ax,4C00h
        int 21h
        
    main endp
    end main
