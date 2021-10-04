start:
    mov esp, 0x400

    ; max bound
    mov eax, esp

    ; another code
    mov ecx, 0xc3c3c3c3 ; ret - i386
    mov edx, 0xd65f03c0 ; ret - aarch64  
    mov ebx, 0xe12fff1e ; bx lr - arm32

    ; main program 
    mov ebp, 0xe4ff6060
    mov esi, 0x6060e046
    mov edi, 0x0f60fc83

; main program
; 83fc20 - cmp esp, 0x20
; 0f46e1 - cmovbe esp, eax
; 60     - pushad
; 60     - pushad
; 60     - pushad
; 60     - pushad
; ffe4   - jmp esp

    pushad
    jmp esp