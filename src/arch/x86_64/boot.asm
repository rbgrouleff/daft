;;; Copied from http://blog.phil-opp.com/rust-os/multiboot-kernel.html

global start

section .text
bits 32
start:
    ; print `OK` to screen
    mov dword [0xb8000], 0x2f4b2f4f
    hlt
