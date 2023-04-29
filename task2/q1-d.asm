;haytham salama
;20191016
.model small
.stack

.data

a db 5
b db 10
c db 5
d db 10

.code
 main proc    
    
    mov ax,@data
    mov ds, ax
                
    mov al,a
    mov bl,b
    mov bl,c
    mov cl,d
                    
    cmp al,bl
    ja L1
    
    cmp bl,cl
    ja  L1
    jmp L2
    
    L1:
    mov ax,1
    
    L2:        
    int 20h
        
 main endp
end main        


