section .data
  mensagem db "Hello, world!", 0xA
  tamanho equ $- mensagem
section .text
global _start
_start:
  mov eax, 4         ; sys_write (Modo de escrita)
  mov ebx, 1         ; Standard Output (STDOUT)
  mov ecx, mensagem  ; Mensagem para escrita
  mov edx, tamanho   ; Tamanho da mensagem
  int 0x80           ; syscall (Chama o kernel)
  mov eax, 1         ; sys_exit (Modo de saida)
  int 0x80           ; syscall
