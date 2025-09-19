global _start

section .data
result db 0
newline db 10

section .text
_start:

    mov eax, 8      ; first number
    mov ebx, 1      ; second number
    sub eax, ebx    ; eax = eax - ebx (8 - 1 = 7)
    add eax, 48     ; convert to ASCII
    mov [result], al ; store result as a single byte

    ; print result
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 80h

    ; print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 80h

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 80h
