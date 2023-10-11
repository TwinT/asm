global intercambiar

intercambiar:

xor rax, rax
xor r8, r8
	
.condicion:
    mov    r8b, byte [rax + rdi] 
	test    r8b, r8b        ;cmp     byte [rax + rdi], 0   
	jz 	.inter

.ciclo1: 
	inc 	rax
    jmp 	.condicion

.inter:
    sub     rax, 1          
    test    rax, rax         ; compruebo si la longitud es igual a 0
    jz     .cortar              

    mov     rdx, 0

.ciclo:
    mov   cl, byte [rdi+rdx]  ; guardo char del principio ;rcx
    mov   sil, byte [rdi+rax]  ; guardo char del final ;rsi

    mov     [rdi+rdx], sil       ; guardo el caracter final en el principio
    mov     [rdi+rax], cl        ; guardo el caracter inicial en el final

    add     rdx, 1               ; avanzo uno hacia adelante en la cadena
    sub     rax, 1               ; retrocedo uno hacia atrás en la cadena

    cmp     rdx, rax             ; comparo si ini<fin
    jl      .ciclo                  

.cortar:
    ret
