Org 0h
Mov P0,0
Mov P1,0
Mov P2,0
Mov P3,0

mulai:
Mov P3,#00001b
Call Stengahhari;malam
Mov P3,#00000b
Call Stengahhari;siang
jmp mulai
ret

Stengahhari:
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
Call Jam
ret

Jam:
Mov P1,#11000000b
Call Satuan
Mov P1,#11111001b
Call Satuan
Mov P1,#10100100b
Call Satuan
Mov P1,#10110000b
Call Satuan
Mov P1,#10011001b
Call Satuan
Mov P1,#10010010b
ret

Satuan: Mov P0, #11000000b
	Call Detik
	Mov P0, #11111001b
	Call Detik
	Mov P0, #10100100b
	Call Detik
	Mov P0, #10110000b
	Call Detik
	Mov P0, #10011001b
	Call Detik
	Mov P0, #10010010b
	Call Detik
	Mov P0, #10000010b
	Call Detik
	Mov P0, #11111000b
	Call Detik
	Mov P0, #10000000b
	Call Detik
	Mov P0, #10010000b
	Call Detik
	ret
Detik:	Call Loop
	Call Loop
	Call Loop
	Call Loop
	Call Loop
	Call Loop
	ret	
Loop:	
Call Tunda
Call Tunda
Call Tunda
Call Tunda
Call Tunda
Call Tunda
Call Tunda
Call Tunda
Call Tunda
Call Tunda
ret
Tunda:  MOV	P2,#00001b
		Call Delay
	MOV	P2,#00000b

Delay : Mov r0,#255
Delay1 : Mov r1,#255
Delay2 : Nop
Djnz r1,delay2
Djnz r0,delay1
ret

end
