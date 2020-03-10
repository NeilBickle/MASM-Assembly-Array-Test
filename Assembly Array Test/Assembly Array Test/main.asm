; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
	Nums DWORD 50,75,88
.code  ; code segment
main PROC ; main procedure
	; write your assembly code here	
	xor ecx, ecx
	.while ecx < 3
	mov esi, offset Nums
	xor eax, eax
	mov eax, [esi + 4 * ecx]
	; 		
	inc ecx
	cmp ecx, 3
	.endw
	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling