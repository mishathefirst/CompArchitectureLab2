cseg at 0
	
	//R4 = c
	//R5 = e
	//R6 = d
	//R7 = b
	
	mov a, P1
	anl a, #0f0h
	swap a
	anl a, #0fh
	mov b, #0ah
	mul ab
	mov b, a
	mov a, P1
	anl a, #0fh
	mov R4, #00h
	add a, b   //?
	mov b, a
	mov a, b
	mov y + 01h, #00h
	mov y, a
	
	mov R6, a
	mov b, y + 01h
	mov R5, #064h
	lcall ?C?SIDIV
	SETB    C
	MOV     A,R5
	SUBB    A,#032H
	MOV     A,R4
	XRL     A,#080H
	SUBB    A,#080H
	MOV     R6,y
	MOV     R7,y+01H
	MOV     R4,#00H
	MOV     R5,#064H
	JC      ?C0003
	LCALL   ?C?SIDIV
	MOV     A,R7
	ADD     A,#01H
	MOV     R7,A
	CLR     A
	ADDC    A,R6
	MOV     R6,A
	SJMP    ?C0004
	?C0003:
	LCALL   ?C?SIDIV
	?C0004:
	MOV     y,R6
	MOV     y+01H,R7
                                           
	MOV     P2,y+01H
                                           
	MOV     R6,y
	MOV     R7,y+01H
	MOV     R4,#00H
	MOV     R5,#0AH
	LCALL   ?C?IMUL
	MOV     y,R6
	MOV     y+01H,R7
                                          
	MOV     A,y
	ANL     A,#0FH
	MOV     R6,A
	CLR     A
	MOV     R0,#04H
	?C0006:
	XCH     A,R6
	MOV     C,ACC.7
	RRC     A
	XCH     A,R6
	RRC     A
	DJNZ    R0,?C0006
	MOV     P3,A
                                          
	MOV     R6,#00H
	MOV     R7,y+01H
	MOV     R4,#00H
	MOV     R5,#0AH
	LCALL   ?C?IMUL
	MOV     A,R6
	ANL     A,#0FH
	MOV     R7,A
	MOV     A,R7
	ADD     A,P3
	MOV     P3,A
                                           
	LJMP    ?C0001
	
end
	
	
	