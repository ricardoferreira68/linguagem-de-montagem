;Exemplo para um jmp
FORMAT ELF64 EXECUTABLE 3
SEGMENT READABLE EXECUTABLE
ENTRY MAIN
MAIN:
    LEA     rdi, [msg]  ; endereço da MSG para rdi
    MOV     rax, 14     ; comprimento da MSG para rax
    MOV     rdx, rax    ; move o conteúde de rax para rdx
    MOV     rsi, rdi    ; move a MSG para rsi

minha_label:
    MOV     rdi, 1      ; stdout
    MOV     rax, 1      ; sys_write
    SYSCALL
    JMP     minha_label
    XOR     rdi, rdi    ; encerramento exit code 0
    MOV     rax, 60     ; sys_exit
    SYSCALL

SEGMENT READABLE WRITEABLE
msg     db  'Hello World!', 10, 0
