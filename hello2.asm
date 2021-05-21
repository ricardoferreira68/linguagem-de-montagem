;Exemplo para um simples Hello World!
FORMAT ELF64 EXECUTABLE 3
SEGMENT READABLE EXECUTABLE
ENTRY MAIN

MAIN:
    mov ax, 14
    lea dx, [msg]
    int 21h
    int 20h

SEGMENT READABLE WRITEABLE
msg     db  'Hello World!', 10, 0
