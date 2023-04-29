;haytham salama
;20191016
.model small
.stack

.data

var1 db 10
var2 db 20
var3 db ?
var4 db ?

.code
 main proc    
    
    mov ax,@data
    mov ds,ax  
    
    mov al,var1
    mov bl,var2
    cmp al,bl
    
    jb L1
    je L2
    
    mov var3,0
    jmp L3
    
    L1:
    
    mov var3,10
    jmp L3
    
    L2:
    
    mov var3,6
    mov var4,7
    
    jmp L3
    
    L3:            
              
    int 20h
        
 main endp
end main 