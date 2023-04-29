;haytham salama
;20191016
.model small
.stack

.data

var1 db 0
message db "Sorry you have exceeded 3 trials","$"

.code
 main proc    
    
    mov ax,@data
    mov ds,ax  
    
    L1:cmp var1,3
    ja L2
    add var1,1
    jmp L1  
    
    L2:
    mov ah,09
    lea dx,message 
    int 21h
      
    int 20h
        
 main endp
end main        



