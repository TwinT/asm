    .section    .text
    .global     sumar_asm
    .global     test_asm

# void sumar_asm(int *a, int*b, int length);
sumar_asm:

    .ciclo:
        dec %rdx
        jz .ciclo

test_asm:
    xor %rax, %rax
    sub $1, %rax
    setl %al
    movzbl %al, %eax
    mov $0xFFFFFFFF80000000, %rax
    mov $0x80000000, %eax
