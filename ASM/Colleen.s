extern _printf ; the C function, to be called
section .data
data: db "extern printf", 10, 0
.len: equ $ - data
global main
    section .text

; Ceci est un commentaire en dehors des fonctions du programme

main:   push rbx
        ; Ceci est un commentaire dans la fonction main
        mov rdi, data
        call _printf
        pop rbx
        ret
