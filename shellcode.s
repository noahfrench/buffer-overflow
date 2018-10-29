	;; Noah French (njf5cu)
	
	global shellcode

	section	.text
shellcode:
	jmp afterString
string:
	db "Noah French, your grade on this assignment is an A+"
newline:
	db "n"
afterString:
	xor rax, rax
	xor rdi, rdi
	xor rsi, rsi
	xor r10, r10
	xor r8, r8
	xor r9, r9
	mov al, 1
	mov edi, eax
	lea rsi, [rel string]
	xor rdx, rdx
	mov dl, 51
	syscall
	xor rax, rax
	mov al, 0x2a
	sub al, 0x20
	mov [rel newline], al
	xor rax, rax
	xor rdi, rdi
	xor rsi, rsi
	mov al, 1
	mov edi, eax
	lea rsi, [rel newline]
	xor rdx, rdx
	mov dl, 1
	syscall
 	xor rax, rax
	mov al, 60
	xor rdi, rdi
	xor rsi, rsi
	xor rdx, rdx
	xor r10, r10
	xor r8, r8
	xor r9, r9
	syscall
