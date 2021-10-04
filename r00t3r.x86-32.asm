; fill gprs with config values
; edx - low mem bound
; ecx - max mem bound

; program start
start:
	mov ecx, 0x400;		max mem loc bound = 0x400 or 1024 bytes
	mov edx, 0x0;		beginning of mem loc

; search and fill loop
; strategy :
; loop through memory space
; check if the value at given mem address is 0
; if it's zero then move forward to next instruction
; if it's not zero then store invalid opcode there
loop:
	cmp [eax], 0;							check if eax is 0
	je loop;								if eax is 0 then jump to loop
	mov [eax], 0xffffffff;					invalid opcode
	inc eax;								move forward
	jmp loop;								do it again
