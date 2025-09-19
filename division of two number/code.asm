global _start

section .data
result db 0
newline db 10

section .text
_start:

    mov eax, 8      ; dividend
    mov ebx, 2      ; divisor
    div ebx         ; eax / ebx -> quotient in eax, remainder in edx
    ; eax = 4, edx = 0

    add eax, 48     ; convert quotient to ASCII
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
