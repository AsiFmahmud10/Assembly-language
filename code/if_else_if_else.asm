.model small
.stack 100h
.data
    a db 2
    b db 3
    
    z db ?
    y db ?
 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,a
    mov bl,b 
    
    ; if (a =1 ) {a = a+b} else if (a == 2) {a = a-b} else a=a*b
    
    cmp a,1
    je if_then
    
    cmp a,2
    je else_if
    
    mov al,0
    mov al,a
    mul bl
    mov a,al
    jmp exit
    
    if_then:
        add al,bl
        mov a,al
        jmp exit
        
     else_if:
        sub al,bl
        mov a,al
        jmp exit
        
    exit:
    
   ; ///////////////output ///////3 input                
          ; mov ax,<--> jeita print korte hobe 
          
          cmp a,0
          jl  mns
          jmp safe:
          
          mns:
          mov dl, '-'
          mov ah, 02h
          int 21h
          mov dx, 0
          neg a
          
          safe:
          
           mov ax,0
           mov al,a
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
            
         ; ///////////////output ///////3 input
    
    
    mov ax,4c00h
    int 21h
    main endp