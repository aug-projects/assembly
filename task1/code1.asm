.model small 
.stack
.data

st       db "enter sting between 1 and 50 characters",0dh,0ah,"$"
input db 50 DUP("$")   

.code
    
    mov ax,@data
    mov ds,ax
    
    
    lea dx,st
    mov ah,09H
    int 21h 
    
    mov ah,0ah
    lea dx,input
    int 21h 
    
   call REVERSE
                
        mov ah,2H
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        
        lea dx,input+2
        
        
        
        mov ah,09H
        int 21h
        
        
        mov ah,4CH
        int 21h

     reverse proc  
        
        mov si, OFFSET input+2
        mov cx,0h
        
        Lp1:
        mov ax,[si]
        CMP al,"$"
        JE L1
        
       
        PUSH [si]
        
       
        inc si
        inc cx
        
        JMP Lp1
        
        L1:
        mov si, OFFSET input+2 
        
        Lp2:
        CMP cx,0 
        JE EXIT
        
    
        pop dx
        XOR dh,dh
        
    
        mov [si],dx
        inc si
        dec cx
        
        JMP Lp2
        
        EXIT:
        mov [si],'$'
        ret  
        
     reverse endp 

