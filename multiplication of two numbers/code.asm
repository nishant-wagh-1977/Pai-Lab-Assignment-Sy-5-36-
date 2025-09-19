global _start

section .data
result db 0
newline db 10

section .text
_start:

    mov al, 2       ; first digit (in 8-bit register, since small number)
    mov bl, 3       ; second digit
    mul bl          ; AL * BL → result in AX (lower byte AL has result)

    add al, '0'     ; convert to ASCII
    mov [result], al

    ; print result
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 80h

    ; newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 80h

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 80h
