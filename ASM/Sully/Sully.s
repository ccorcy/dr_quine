section .data
data db "section .data%cdata db %c%s%c, 0%ccompile db %cnasm -f macho64 Sully_%cd.s && ld -lSystem -macosx_version_min 10.12 -o Sully_%cd Sully_%cd.o && rm -f Sully_*.o%c, 0%cexec db %c./Sully_%cd%c, 0%cfilename db %cSully_%cd.s%c, 0%csection .text%cglobal _start%cglobal _main%cextern _sprintf%cextern _dprintf%cextern _malloc%cextern _free%cextern _system%c_start:%c_main:%cpush rbp%cmov rbp, rsp%cmov r14, %d%cmov r15, r14%cdec r15%ccmp r14, 0%cjl return%cmov rdi, 10%ccall _malloc%cmov r13, rax%cmov rdi, r13%clea rsi, [rel filename]%cmov rdx, r14%ccall _sprintf%cmov rdi, r13%cmov rsi, 1537%cmov rdx, 420%cmov rax, 0x2000005%csyscall%cmov r12, rax%cmov rdi, r13%ccall _free%cmov rcx, 0%cloop_char:%cpush 10%cinc rcx%ccmp rcx, 102%cje done%cjmp loop_char%cdone:%cadd dword [rsp + 8], 24%cadd dword [rsp + 16], 27%cadd dword [rsp + 24], 27%cadd dword [rsp + 32], 27%cadd dword [rsp + 40], 24%cadd dword [rsp + 56], 24%cadd dword [rsp + 64], 27%cadd dword [rsp + 72], 24%cadd dword [rsp + 88], 24%cadd dword [rsp + 96], 27%cadd dword [rsp + 104], 24%cmov qword [rsp + 216], r15%cmov rdi, r12%clea rsi, [rel data]%cmov rdx, 10%cmov rcx, 34%clea r8, [rel data]%cmov r9, 34%ccall _dprintf%cmov rdi, r12%cmov rax, 0x0000006%csyscall%cmov rdi, 100%ccall _malloc%cmov r13, rax%cmov rdi, r13%clea rsi, [rel compile]%cmov rdx, r14%cmov rcx, r14%cmov r8, r14%ccall _sprintf%cmov rdi, r13%ccall _system%cmov rdi, r13%ccall _free%ccmp r14, 0%cjle return%cmov rdi, r13%clea rsi, [rel exec]%cmov rdx, r14%ccall _sprintf%cmov rdi, r13%clea rsi, [rel exec]%ccall _system%creturn:%cleave%cret", 0
compile db "nasm -f macho64 Sully_%d.s && ld -lSystem -macosx_version_min 10.12 -o Sully_%d Sully_%d.o && rm -f Sully_*.o", 0
exec db "./Sully_%d", 0
filename db "Sully_%d.s", 0
section .text
global _start
global _main
extern _sprintf
extern _dprintf
extern _malloc
extern _free
extern _system
_start:
_main:
push rbp
mov rbp, rsp
mov r14, 5
mov r15, r14
dec r15
cmp r14, 0
jl return
mov rdi, 10
call _malloc
mov r13, rax
mov rdi, r13
lea rsi, [rel filename]
mov rdx, r14
call _sprintf
mov rdi, r13
mov rsi, 1537
mov rdx, 420
mov rax, 0x2000005
syscall
mov r12, rax
mov rdi, r13
call _free
mov rcx, 0
loop_char:
push 10
inc rcx
cmp rcx, 102
je done
jmp loop_char
done:
add dword [rsp + 8], 24
add dword [rsp + 16], 27
add dword [rsp + 24], 27
add dword [rsp + 32], 27
add dword [rsp + 40], 24
add dword [rsp + 56], 24
add dword [rsp + 64], 27
add dword [rsp + 72], 24
add dword [rsp + 88], 24
add dword [rsp + 96], 27
add dword [rsp + 104], 24
mov qword [rsp + 216], r15
mov rdi, r12
lea rsi, [rel data]
mov rdx, 10
mov rcx, 34
lea r8, [rel data]
mov r9, 34
call _dprintf
mov rdi, r12
mov rax, 0x0000006
syscall
mov rdi, 100
call _malloc
mov r13, rax
mov rdi, r13
lea rsi, [rel compile]
mov rdx, r14
mov rcx, r14
mov r8, r14
call _sprintf
mov rdi, r13
call _system
mov rdi, r13
call _free
cmp r14, 0
jle return
mov rdi, r13
lea rsi, [rel exec]
mov rdx, r14
call _sprintf
mov rdi, r13
lea rsi, [rel exec]
call _system
return:
leave
ret