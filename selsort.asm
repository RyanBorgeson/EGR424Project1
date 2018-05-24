; int Data[] -> R0
; int N -> R1

MOV R2, #0				; start = 0
MOV R3, #0				; i = 0 (offset)
MOV R4, #0  			; minix = 0
MOV R5, #0  			; temp = 0
MOV R6, R1				; duplicate of N.
; R7 = Temp data
; R8 = Temp data 2

SUB R1, R1, #1			; Subtract 1 from N before entering for loop.

.L2						; Local label for beginning of the for loop.
	MOV R4, R2			; Copy the contents of start into minix.
	ADD R3, R2, #1  	; Add 1 to start and move to i.
	
.L3						; Local label for second for loop.
	LDR R7, [R0, R3]	; Load Data[i] value into R7.
	LDR R8, [R0, R4]	; Load Data[minix] value into R8.
	
	CMP R7, R8			; if Data[i] < Data[minix]
	MOVLE R4, R3		; if condition is true, minix = i
	
	ADD R3, R3, #4		; Increment i (offset) by 4 bytes. Int = 4 bytes. 
	;CMP R3, R6			; Check for i < N, R6 contains N, but needs to be R6 = N * 4 instead.
	;BNE .L2			; Return to the previous for loop label once condition is met.
	

