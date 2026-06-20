.intel_syntax noprefix
.global _start
.text 

_start:
   call hello
   jmp quit
hello:
   mov rax, 0x01
   mov rdi, 0x01
   lea rsi, [hello_world]
   mov rdx, 16
   syscall
   ret

quit:
   mov rax, 0x03c
   mov rdi, 0
   syscall
  

.data 
hello_world: .ascii "hello world :D!\n"

