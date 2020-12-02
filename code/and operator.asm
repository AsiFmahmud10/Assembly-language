.model small
.stack 100h
.data


 a dw 5
 b dw 4
 c dw 7
 
.code
main proc
    mov ax, @data
    mov ds, ax  
    mov ax, 0
    
     
   ;if (a > b && b < c) 
   ;  then{}
   ;else{}
    
    mov ax, 0
    mov bx, 0
    mov cx, 0
   
   
    mov ax, a
    mov bx, b
    mov cx, c
       
    cmp ax,bX
    jnge else
    
    cmp bx,cx
    jge else
    
    ;then
    mov a, -2
    jmp exit:
    
    else:
       mov a, 5 
    
   ;......................... 
    
    
    
    
    exit:
       cmp a, 0
       jge safe:
       mov dx, '-'
       mov ah, 02
       int 21h
       neg a
       
       
       safe:
    
       mov dx, a
       add dx, 48
       mov ah, 02h
       int 21h
       
       
    
    mov ax, 4c00h
    int 21h
    
    main endp
end main