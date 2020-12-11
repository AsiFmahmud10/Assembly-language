.model small
.stack 100h

.data

  _answer db 1, 2 ,3 ,4 ,5
  
   n dw 5

.code

    main proc
        mov ax,@data   ;initialize data
        mov ds,ax 
      
      
         mov cx, n  ;counter for for loop 
        
         mov si, offset _answer ; copy the address of _answer to si ; let x be the address 
       
       for:
            ;;;;;;;;; neg the value of _answer
              
              mov bl,[si]   ;[si] represent value inside address x
              neg bl        ; if bl =2 ;neg bl = - 2 ;it means bl hold the negative number of a particular index
              mov [si],bl   ; mov bl as a value of si address  
              add si,1 ;    incrmnt so that si points to next address
              
      
       loop for
       
       
       
        mov cx, n         
        mov ax,0
        mov dx,0
         mov si, offset _answer ; si contains the address of first index of __answer   
         mov ah, 02h           ;;for print
       
       
       again:
       
              mov dl, [si]
              cmp dl,0      ; if(dl<0)
              jl an            ;true jump an
              
               mov dl,48
              int 21h
              jmp answer_exit
              
              an:
              mov bl,dl   ;as cursur is here that means dl([si]) it is a negative number 
              mov dl,'-'  ; print negative sign
              int 21h     ;intrpt
              
              neg bl      ; neg (-2) = 2 ;;; as we cant print neg numbr directly we print - sign then print the positive value
              mov dl,bl   ;for print we need to move data to dl
              add dl,48    ; ascii
              int 21h
              
              answer_exit:
              
              add si,1 ;so that si points to next address
       
       loop again
       
       
       
        
    
        mov ax,4C00h
        int 21h
        
    main endp
    end main
     
      