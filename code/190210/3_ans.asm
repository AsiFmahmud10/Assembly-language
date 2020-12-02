                                                                   .model small
.stack 100h

.data
 
 a db ?
  b db ?
  c db ?
  Asif_ans db ?
 
  msg1 db "Yeah! baby $"
  msg2 db "DUMB baby $"
 
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 190210   ;;;;;;;;;;;;;;;;;;;;

.code

    main proc
        mov ax,@data
        mov ds,ax 
        
        mov ah,01h
        int 21h
        sub al,48
        mov a,al
      
        mov ah,01h
        
        int 21h
        sub al,48
        mov b,al
        
                mov dl,10
                mov ah,02h
                int 21h
                mov dl,13  ;crg return
                mov ah,02h
                int 21h
          
      
        ;b-a == 3
        
        mov ax,0
        mov al,b
        sub al,a
        mov Asif_ans,al
        
        cmp Asif_ans,4
        je then
        
        
          mov dx,offset msg2
          mov ah,09h
          int 21h
   
        
          
          
           
                        
        
        
        
        
        
        jmp exit
        
      
       then:
           
            mov dx,offset msg1
            mov ah,09h
            int 21h
   
           
     
           
           
           
           
           
           
      
       
       
       
       exit:
       
       mov ax, 4c00h
       int 21h
       
         
         
        
    main endp
    end main
