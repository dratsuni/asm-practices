.intel_syntax noprefix
.global _start

.data
hello: .ascii "hello, \0"
msg: .ascii "digite o seu nome: "
.bss
name: .space 255

.text

_start:
  lea rsi, [msg]
  mov rdx, 21
  call print
  call write_name
  lea rsi, [hello]
  mov rdx, 8
  call print
  lea rsi, [name]
  mov rdx, 255
  call print
  jmp quit
  
write_name:
   mov rax, 0x00
   mov rdi, 0x00
   lea rsi, [name]
   mov rdx, 255
   syscall
   ret

print:
  mov rax, 0x01
  mov rdi, 0x01
  syscall
  ret
quit:
  mov rax, 0x03c
  mov rdi, 0;
  syscall
