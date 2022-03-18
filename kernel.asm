org 0x7e00
jmp 0x0000:start

data:
	
	imagem db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 7, 8, 8, 8, 8, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 8, 8, 8, 8, 3, 1, 8, 8, 8, 8, 1, 8, 0, 0, 0, 0, 0, 0, 8, 8, 1, 3, 9, 9, 8, 1, 9, 8, 0, 0, 0, 0, 0, 0, 8, 8, 9, 9, 15, 15, 9, 9, 9, 8, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 9, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 8, 8, 9, 15, 15, 15, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 15, 15, 9, 9, 3, 8, 0, 0, 0, 0, 8, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 8, 1, 9, 9, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

start:
    xor ax, ax  ;zera ax, xor é mais rápido que mov
    mov ds, ax  ;zera ds (não pode ser zerado diretamente)
    mov cx, ax  ;zera cx
    mov es, ax  ;zera es
    mov dx, ax
    
    ;mov cx, 5 
    call getchar
    cmp al,50
    je .win
    jmp .lose

    .lose:
        jmp end
    .win:
        xor ax, ax  
        mov ds, ax  
        mov cx, ax  
        mov es, ax  
        mov dx, ax

        call initVideo

        mov si,imagem

        .for1:
            cmp dx, 16    				;comparador=for do C
            je .endfor1
            mov cx, 0 ;coluna
            .for2:
                cmp cx, 16
                je .endfor2
            lodsb
            mov ah,0ch
            int 10h
                inc cx 				;incrementador de cx
                jmp .for2
            .endfor2:
            inc dx					;incrementador de dx
            jmp .for1
        .endfor1:
        jmp end

        
    

getchar:
    mov ah, 0x00
    int 16h
ret


initVideo:
	mov al, 13h
	mov ah, 0
	int 10h
	ret



putchar:
    mov ah, 0x0e
    int 10h
ret

end:
    jmp $