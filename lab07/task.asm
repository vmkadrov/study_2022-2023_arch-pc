;--------------------------------
; Программа вычисления варианта
;--------------------------------
%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ',0
src: DB '(5 + x)^2 - 3 ',0
dst: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, src
call sprintLF
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi 
add eax, 5
mul eax
sub eax, 3
mov edx, eax
mov eax, dst
call sprint
mov eax,edx
call iprintLF
call quit