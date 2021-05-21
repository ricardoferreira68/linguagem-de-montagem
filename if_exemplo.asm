;Exemplo para um if
FORMAT ELF64 EXECUTABLE 3
SEGMENT READABLE EXECUTABLE
ENTRY MAIN
MAIN:
    LEA     rdi, [msg1] ; endereço da MSG para rdi
    MOV     rax, 29     ; comprimento da MSG para rax

minha_label:
    MOV     word [var], 2
    MOV     rdx, rax    ; move o conteúde de rax para rdx
    MOV     rsi, rdi    ; move a MSG para rsi
    MOV     rdi, 1      ; stdout
    MOV     rax, 1      ; sys_write
    SYSCALL

    if      var  ~eq 0  ; compara var com 0
    jmp     minha_label
    end if

fim:
    XOR     rdi, rdi    ; encerramento exit code 0
    MOV     rax, 60     ; sys_exit
    SYSCALL

SEGMENT READABLE WRITEABLE
msg1    db  'Faculdade Estácio de Belém', 10, 0
var     dw  0

