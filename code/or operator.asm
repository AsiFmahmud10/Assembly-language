                            .model small
.stack 100h
.data


 a dw 3
 b dw 4
 c dw 6
 
.code
main proc
    mov ax, @data
    mov ds, ax  
    mov ax, 0
    
     
   ;if (a > b || a < c)  
   ;  then{ a = 2}
   ;else{a = 5}
    
    mov ax, 0
    mov bx, 0
    mov cx, 0
   
   
    mov ax, a
    mov bx, b
    mov cx, c
       
    cmp ax,bX
    jg then
    
    cmp ax,cx
    jl then
    
    ;else 
     mov a, 5
     jmp exit
    
    
    
    
    then:
     mov a, -2
     jmp exit:
    
    
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