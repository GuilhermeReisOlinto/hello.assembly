section .data ;constantes
    msg db 'HELLO WORLD'
    tam equ $- msg

section .text

global _start

_start: 
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg
    mov edx, tam
    int 0x80
    
    ; destino, origen
    mov eax, 0x1 ; termino do programa
    mov ebx, 0x0 ; valor de retorno
    int 0x80
