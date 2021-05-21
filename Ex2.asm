;Exemplo para um simples Hello World!

format ELF63 executable 3

segment readable executable

entry main

main:
    ; Seu programa comeca aqui:
    call    read_hex    ; Lê eax como hex do console.
    inc     eax         ; Incrementa eax por 1.
	add		eax, 10
    call    print_eax   ; Imprime eax como hex para o console.

    ; Sai do Processo:
	push	0
	call	[ExitProcess]

include 'training.inc'
