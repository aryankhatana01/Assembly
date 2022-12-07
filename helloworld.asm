global _main

SECTION .data
msg     db      'Hello World!', 0x0A ; assign msg variable
 
SECTION .text
 
_main:
 
    mov     rdx, 13          ; number of bytes to write - one for each letter plus LF char.
    lea     rsi, [rel msg]   ; move the memory address of our message string into rsi
    mov     rdi, 1           ; write to the STDOUT file
    mov     rax, 0x2000004   ; invoke SYS_WRITE (kernel opcode 4)
    syscall
    
    mov     rax, 0x2000001   ; exit
    mov     rdi, 0
    syscall