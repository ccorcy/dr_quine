%define DATA "%cdefine DATA %c%s%c%c%cdefine MAIN _main:%c%cdefine SYSCALL(x) 0x2000000 | x%csection .data%cdata db DATA, 0%cfilename db %cGrace_kid.s%c, 0%csection .text%cextern _dprintf%cglobal _start%cglobal _main%c_start:%cMAIN%cpush rbp%cmov rbp, rsp%cmov rcx, 0%cloop_char:%cpush 10%cinc rcx%ccmp rcx, 48%cje quine%cjmp loop_char%cquine:%clea rdi, [rel filename]%cmov rsi, 1537%cmov rdx, 420%cmov rax, SYSCALL(5) %c open syscall%csyscall%cadd byte [rsp + 8], 27%cadd byte [rsp + 24], 27%cadd byte [rsp + 56], 24%cadd byte [rsp + 64], 24%cadd byte [rsp + 232], 49%cmov rdi, rax%clea rsi, [rel data]%cmov rdx, 37%cmov rcx, 34%clea r8, [rel data]%cmov r9, 34%ccall _dprintf%cmov rax, SYSCALL(6)%csyscall%cleave%cret"
%define MAIN _main:
%define SYSCALL(x) 0x2000000 | x
section .data
data db DATA, 0
filename db "Grace_kid.s", 0
section .text
extern _dprintf
global _start
global _main
_start:
MAIN
push rbp
mov rbp, rsp
mov rcx, 0
loop_char:
push 10
inc rcx
cmp rcx, 48
je quine
jmp loop_char
quine:
lea rdi, [rel filename]
mov rsi, 1537
mov rdx, 420
mov rax, SYSCALL(5) ; open syscall
syscall
add byte [rsp + 8], 27
add byte [rsp + 24], 27
add byte [rsp + 56], 24
add byte [rsp + 64], 24
add byte [rsp + 232], 49
mov rdi, rax
lea rsi, [rel data]
mov rdx, 37
mov rcx, 34
lea r8, [rel data]
mov r9, 34
call _dprintf
mov rax, SYSCALL(6)
syscall
leave
ret