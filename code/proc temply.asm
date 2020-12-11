.model small
.stack 100h

.data

  a db ?
  inputSize dw ? 
  cin_N db ? 
  cout_N db ? 
  z db ?
  scnd db ?

.code

    main proc
        mov ax,@data
        mov ds,ax 
        
            mov inputSize, 3
            call cin
           
           call entr
            
            mov al, cin_N 
            mov cout_N, al
           
           call cout 
            
           
        
       exit: 
        mov ax,4C00h
        int 21h
      main endp  
     
    
      entr proc
                
                ;dx,ah;
                 mov dx, 0
                 mov ah, 0
                
                 mov dl,13
                 mov ah, 02
                 int 21h 
                 mov dl, 10
                 int 21h 
                 
                 mov dx, 0
                 mov ah, 0
                
                 
         ret
       entr endp
        
  ;;;;;;;;;;; cx, ax,dl      ;input;;;;;;;;;
      cin proc
                
                    
        mov cx,inputSize
        mov bx, 0
        mov ax, 0
        mov dx, 0
        mov dl , 10
         
        scan:
        mov ah,01h
        int 21h
        
       ; mov ah,0 
        sub al, 48
        
        mov dh, al
        
        mov al, bl
        mul dl
        add al, dh
        mov bl, al
        mov cin_N, bl
        
        loop scan  
  
            
                
         ret
       cin endp
      
      
      ;;;;;;;;;;;;;;;;;;; OUTPUT ;;;;;;;;;;;;;
      
      cout proc
                
                    
         
           mov ax,0
           mov dx,0
           mov al,cout_N
           
           
           
          ;/////clean////
          
            
            mov dl,10
            
            div dl      
            mov z,ah
            add z,48
            
            mov ah,0
            div dl
            mov scnd,ah
            add scnd,48
           ;;;;;;frst;;;; 
            mov dl,al
            add dl,48
            mov ah,02h
            int 21h
           ;;;;;scnd;;;; 
            
            mov dl,scnd
            mov ah,02h
            int 21h
           ;;;;;;;;;;;;;lst;;;;; 
             mov dl,z
             mov ah,02h
             int 21h
            
         ; ///////////////output ///////3 input   
        
                
         ret
       cout endp