section .data
  msg db "Hello world", 0xA
  len equ $- msg
section .text
  global _start
  _start:
    mov eax, 1
    mov ebx, 4
    mov ecx, msg
    mov edx, len
    int 0x80
    mov eax, 0
    mov ebx, 1
    int 0x80
