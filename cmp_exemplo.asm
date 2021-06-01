
;Exemplo para um cmp
FORMAT ELF64 EXECUTABLE 3
SEGMENT READABLE EXECUTABLE
ENTRY MAIN
MAIN:
    LEA     rdi, [msg]  ; endereço da MSG para rdi
    MOV     rax, 10     ; comprimento da MSG para rax
    MOV     rdx, rax    ; move o conteúde de rax para rdx
    MOV     rsi, rdi    ; move a MSG para rsi
    MOV     eax, 10     ; move 10 para o registrador eax
    MOV     ebx, 0      ; move 0 para o registrador ebx

minha_label:
    ADD     ebx, 1      ; Adiciona 1 ao registrador ebx.
    MOV     rdi, 1      ; stdout
    MOV     rax, 1      ; sys_write
    SYSCALL
    cmp     ebx, eax    ; compara os registradores.
    jb      minha_label
    XOR     rdi, rdi    ; encerramento exit code 0
    MOV     rax, 60     ; sys_exit
    SYSCALL

SEGMENT READABLE WRITEABLE
msg     db  'Estácio', 10, 0
