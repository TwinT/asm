extern print_uint64

section	.data
n dq 1
m dq 3

msg_overflow db	   'HUBO OVERFLOW',0xa	
len_overflow equ	$ - msg_overflow			

msg_bien db	   'TODO BIEN',0xa	
len_bien equ	$ - msg_bien	

section	.text
	global _start
_start:                
	mov rax, [n]
	mov rbx, [m]
	add rbx, rax
    mov rdi, rbx
    call print_uint64
	jo hubo
	jmp nohubo
sigo:
	mov	ebx, 1	    
	mov	eax, 4	    
	int	0x80        
	mov	eax, 1	    
	int	0x80        

hubo: 	
	mov	edx, len_overflow    
	mov	ecx, msg_overflow    
	jmp sigo

nohubo:
	mov	edx, len_bien    
	mov	ecx, msg_bien
	jmp sigo		