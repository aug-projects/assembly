;haytham salama
;20191016
.model small
.stack

.data

var1 db 100
var2 db 70
var3 db 80
larg db ?

.code
 main proc    
    
    mov ax,@data
    mov ds, ax         

    mov al,var1
    mov larg,al 
    
    cmp al,var2
    jge L1
    mov al,var2
    mov larg,al 
    
    L1:
    
    mov al,larg
    cmp al,var3
    jge L2
    mov al,var3
    mov larg,al 
    
    L2:
    
    int 20h                      
            
 main endp
end main