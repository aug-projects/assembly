;haytham salama
;20191016
.model small
.stack

.data

x      db 52
result db 3


.code
 main proc    
    
    mov ax,@data
    mov ds, ax         
    mov al,x 
    
    cmp al,50
    jne L52
    jmp df

      
L52:  
    cmp al,52
    jne L53 
    mov result,20
    int 20h
      
 L53:     
    cmp al,53
    jne L54
    mov result,13
    int 20h
 
 L54:       
    cmp al,54
    jne df
    mul result,3
    int 20h

      
df:
   add result,10
   int 20h 
   
                         
        
 main endp
end main        


