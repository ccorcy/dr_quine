section .data ; this is a comment
data db "section .data %c this is a comment%cdata db %c%s%c%csection .text%cextern _printf%cglobal _start%cglobal _main%c_start:%c_main:%cpush rbp %c comment in main%cmov rbp, rsp%csub rsp, 24%cmov rcx, 0%cloop_break_line:%cpush 10%cinc rcx%ccmp rcx, 29%cje quine%cjmp loop_break_line%cquine:%cadd word [rbp - 200], 49%clea rdi, [rel data]%cmov rsi, 59%cmov rdx, 10%cmov rcx, 34%clea r8, [rel data]%cmov r9, 34%ccall _printf%cmov rsp, rbp%cleave%cret"
section .text
extern _printf
global _start
global _main
_start:
_main:
push rbp ; comment in main
mov rbp, rsp
sub rsp, 24
mov rcx, 0
loop_break_line:
push 10
inc rcx
cmp rcx, 29
je quine
jmp loop_break_line
quine:
add word [rbp - 200], 49
lea rdi, [rel data]
mov rsi, 59
mov rdx, 10
mov rcx, 34
lea r8, [rel data]
mov r9, 34
call _printf
mov rsp, rbp
leave
ret