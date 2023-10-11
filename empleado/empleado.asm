section .text

extern strlen
extern malloc
extern strcpy

global empleado

;struct Empleado* empleado(const char *nombre, int edad) 
empleado:
        push    r13
        mov     r13d, esi ; guardo edad

        push    r12 
        mov     r12, rdi    ; guardo *nombre en rbp

        mov     edi, 16    

        push    rbx

        call    malloc      ; rax tiene puntero a struct

        mov     rdi, r12
        mov     rbx, rax    ; rbx mantiene el puntero a struct
        call    strlen      ; rax tiene long nombr

        inc     rax
        mov     rdi, rax ; +1 por el byte nulo
        call    malloc      ; rax tiene puntero a nombre del struct

        
        mov     [rbx], rax

        mov     rsi, r12
        mov     rdi, rax
        call    strcpy

        mov     [rbx+8], r13d
        mov     rax, rbx

        pop     rbx
        pop     r12
        pop     r13
        ret





















