.model SMALL
.stack
.data

    text db 50 DUP('$'),0dh,0ah,"$"
    input db "Enter  numbers: ",0dh,0ah,"$"        

.code

    mov ax,@data
    mov ds,ax
    
    lea dx,input
    mov ah,09h
    int 21h
    
    
    lea si,text
    mov cx,16
    mov ah,1
    next:
    int 21h
    cmp al,0dh
    je doneread
    mov [si],al
    inc si
    loop next 
    
    doneread:
    mov dl,0ah
    mov ah,2
    int 21h
    
    call reverse 
    
    mov dl,0ah
    mov ah,2
    int 21h
    
    mov dl,0dh
    mov ah,2
    int 21h
    
    lea dx,text
    
    mov ah,09h
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    
    reverse PROC
        mov si,offset text
        mov cx,0h
        
        Lp1:
        mov ax,[si]
        CMP al,'$'
        JE label1
        
        
        push [si]
        inc si
        inc cx
        JMP Lp1
        
        label1:
        mov si,offset text
        
        
        Lp2:
        CMP cx,0
        JE exit
        
        pop dx
        xor dh,dh
        mov [si],dx
        inc si
        dec cx
        
        JMP Lp2
        
        exit:
        
        mov [si],'$'
        RET
    
    reverse ENDP
    
    ret