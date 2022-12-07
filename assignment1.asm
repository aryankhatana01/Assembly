global main
extern printf, scanf
section .data
	msg: db "Enter your name: ",0
	msg_: db "Enter your number: ", 0
	fmt: db "%s", 0
	fmt1: db "%d", 0
	msg2: db "Your name is :", 0
	msg3: db "Your number is: ", 0
section .bss
	nam: resb 10240
	num: resb 4096
section .text
main:
	sub rsp, 8
	
	mov rdi, msg
	;mov al, 0
	call printf

	mov rdi, fmt
	mov rsi, nam
	;mov al, 0
	call scanf
	
	mov rdi, msg_
	call printf	
	
	mov rdi, fmt1
	mov rsi, num
	call scanf

	xor rax, rax
	mov rdi, msg2
	;mov al, 0
	call printf
	
	;sub rsp, 8	
	mov rdi, nam
	;mov al, 0
	call printf
	
	mov rdi, msg3
	call printf

	mov rdi, num
	call printf

	add rsp, 8
	ret
