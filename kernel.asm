org 0x7e00
jmp 0x0000:start


data:
	imagem db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 7, 8, 8, 8, 8, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 8, 8, 8, 8, 3, 1, 8, 8, 8, 8, 1, 8, 0, 0, 0, 0, 0, 0, 8, 8, 1, 3, 9, 9, 8, 1, 9, 8, 0, 0, 0, 0, 0, 0, 8, 8, 9, 9, 15, 15, 9, 9, 9, 8, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 9, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 8, 8, 9, 15, 15, 15, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 15, 15, 9, 9, 3, 8, 0, 0, 0, 0, 8, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 8, 1, 9, 9, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  imagem2 db 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 7, 8, 8, 8, 8, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 8, 8, 8, 8, 3, 1, 8, 8, 8, 8, 1, 8, 0, 0, 0, 0, 0, 0, 8, 8, 1, 3, 9, 9, 8, 1, 9, 8, 0, 0, 0, 0, 0, 0, 8, 8, 9, 9, 15, 15, 9, 9, 9, 8, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 9, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 8, 8, 9, 15, 15, 15, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 15, 15, 9, 9, 3, 8, 0, 0, 0, 0, 8, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 8, 1, 9, 9, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  imagem3 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 7, 8, 8, 8, 8, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 8, 8, 8, 8, 3, 1, 8, 8, 8, 8, 1, 8, 0, 0, 0, 0, 0, 0, 8, 8, 1, 3, 9, 9, 8, 1, 9, 8, 0, 0, 0, 0, 0, 0, 8, 8, 9, 9, 15, 15, 9, 9, 9, 8, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 9, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 8, 8, 9, 15, 15, 15, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 15, 15, 9, 9, 3, 8, 0, 0, 0, 0, 8, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 8, 1, 9, 9, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15
  imagem4 db 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 9, 9, 15, 15, 9, 9, 9, 8, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 9, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 8, 8, 9, 15, 15, 15, 3, 9, 9, 9, 1, 0, 0, 0, 0, 8, 0, 8, 9, 9, 9, 15, 15, 9, 9, 3, 8, 0, 0, 0, 0, 8, 8, 8, 8, 8, 9, 9, 9, 9, 8, 8, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 8, 1, 9, 9, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  string db 'PARABENS SORTUDO, VOCE ZEROU O JOGO', 0
  nextLevel db 'BOA, PASSOU DE FASE', 0
  chooseNumber db 'ESCOLHA O NUMERO DA CARTA DESEJADA (1-4)', 0
  losing db 'DERROTADO, TRY AGAIN', 0
  transition db 'ESSAS SAO AS CARTAS', 0
  color db 55, 200, 55

start:
  
  call initialPage
  call level1
  call level2
  call level3
  call final_level

getchar:
  mov ah, 0x00
  int 16h
ret

zerar:
  xor ax, ax  ;zera ax, xor é mais rápido que mov
  mov ds, ax  ;zera ds (não pode ser zerado diretamente)
  mov cx, ax  ;zera cx
  mov es, ax  ;zera es
  mov dx, ax
  ret

initVideo:
	mov al, 13h
	mov ah, 0
	int 10h
	ret

initialPage: ;initial layout
  xor ax, ax
  
  call zerar
  call initVideo
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20  ;row
  int 10h

  mov si, chooseNumber
  call prints

  call zerar
  mov si, imagem4
  .for1:
    cmp dx, 16    				
    je .endfor1
    mov cx, 0
    .for2:
      cmp cx, 16
      je .endfor2
      lodsb
      mov ah,0ch
      int 10h
      inc cx 				
      jmp .for2
    .endfor2:
      inc dx					
      jmp .for1
  .endfor1:
    ret

ret

transitionPage: ;pensar em como implementar a pagina de transição, nao achei brechas
  xor ax, ax
  
  call zerar
  call initVideo
  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20  ;row
  int 10h

  mov si, transition
  call prints

  call zerar
  mov si, imagem4
  .for1:
    cmp dx, 16    				
    je .endfor1
    mov cx, 0
    .for2:
      cmp cx, 16
      je .endfor2
      lodsb
      mov ah,0ch
      int 10h
      inc cx 				
      jmp .for2
    .endfor2:
      inc dx					
      jmp .for1
  .endfor1:
    ret

ret

level1:
  call zerar
  call getchar 
    cmp al,50 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .lose
    cmp al, 49
    je .win
    cmp al, 51
    je .win
    cmp al, 52
    je .win
  jmp level1

  .lose:
    call loser
  .win:
    xor ax, ax  

    call initVideo

    mov bl, al
    mov al, 13h
    mov ah, 2
    mov dh, 20  ;row
    int 10h

    mov si, chooseNumber
    call prints

    call zerar
    mov si,imagem

    .for1:
      cmp dx, 16    				
      je .endfor1
      mov cx, 0 
      .for2:
        cmp cx, 16
        je .endfor2
      lodsb
      mov ah,0ch
      int 10h
        inc cx 				
        jmp .for2
      .endfor2:
      inc dx					
      jmp .for1
    .endfor1:
      ret
            
level2:
  call zerar
  call getchar 
    cmp al,51 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .lose
    cmp al, 49
    je .win
    cmp al, 50
    je .win
    cmp al, 52
    je .win
  jmp level2

  .lose:
    call loser
  .win:
    xor ax, ax  

    call initVideo

    mov si,imagem3

    .for1:
      cmp dx, 16    				
      je .endfor1
      mov cx, 0 
      .for2:
        cmp cx, 16
        je .endfor2
      lodsb
      mov ah,0ch
      int 10h
        inc cx 				
        jmp .for2
      .endfor2:
      inc dx					
      jmp .for1
    .endfor1:
      ret

level3:
  call zerar
  call getchar 
    cmp al, 49 ;define where the bomb is (49 = 1, 50 = 2, 51 = 3, 52 = 4)
    je .lose
    cmp al, 52
    je .win
    cmp al, 50
    je .win
    cmp al, 51
    je .win
  jmp level2

  .lose:
    call loser
  .win:
    xor ax, ax  

    call initVideo

    mov si,imagem

    .for1:
      cmp dx, 16    				
      je .endfor1
      mov cx, 0 
      .for2:
        cmp cx, 16
        je .endfor2
      lodsb
      mov ah,0ch
      int 10h
        inc cx 				
        jmp .for2
      .endfor2:
      inc dx					
      jmp .for1
    .endfor1:
      ret

final_level:
    call zerar
    call getchar
    cmp al,52 ;define where the bomb is
    je .win
    jmp .lose

    .lose:
        call loser
    .win:
        call zerar
        call initVideo
        mov di, color
        mov si, color
        call stoi
        mov bl, al
        mov al, 13h
        mov ah, 2
        mov dh,10    ;row
        ; mov dl,15  ;column
        int 10h

        mov si, string
        call prints

        jmp end

loser:
  call zerar
  call initVideo

  mov bl, al
  mov al, 13h
  mov ah, 2
  mov dh, 20  ;row
  int 10h

  mov si, losing
  call prints

  call zerar
  mov si,imagem2

  .for1:
      cmp dx, 16    				
      je .endfor1
      mov cx, 0 
      .for2:
          cmp cx, 16
          je .endfor2
      lodsb
      mov ah,0ch
      int 10h
          inc cx 				
          jmp .for2
      .endfor2:
      inc dx					
      jmp .for1
  .endfor1:
      jmp end

putchar:
    mov ah, 0x0e
    int 10h
ret

prints:                            ; mov si, string
    .loop4:
        lodsb                    ; bota character em al, vai tirando de si e põe em al
        cmp al, 0
        je .endloop4
        call putchar
        jmp .loop4      
    .endloop4:
    ret


stoi:                ; mov si, string => stores color in ax
  xor cx, cx
  xor ax, ax
  .loop1:
    push ax
    lodsb
    mov cl, al
    pop ax
    cmp cl, 0        ; check EOF(NULL)
    je .endloop1
    sub cl, 48       ; '9'-'0' = 9
    mov bx, 10
    mul bx           ; 999*10 = 9990
    add ax, cx       ; 9990+9 = 9999
    jmp .loop1
  .endloop1:
    ret


end:
    jmp $