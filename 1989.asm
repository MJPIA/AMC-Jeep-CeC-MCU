;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996-1999   Conquest Consultants
;		Version 1.30 (Oct  6 1999)
;
;	File:		1989.bin
;
;	Size:		4096 bytes
;	Checksum:	F800
;	CRC-32:		A2912082
;
;	Date:		Tue Dec 02 10:39:23 2025
;
;	CPU:		Intel 8048 (MCS-48 family)
;
;
;
	org	0F000H
;
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF013:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF017:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF027:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF033:
	db	033H
;
	call	L0135
;
	db	036H
;
LF037:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF047:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF053:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF057:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF073:
	db	073H
;
	call	L0375
;
	db	076H
;
LF077:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF087:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF093:
	retr
;
	call	L0495
;
	db	096H
;
LF097:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF0B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF0B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF0C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF0D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF0E7:
	rl	a
;
	db	0E8H
;
LF0E9:
	djnz	r1,0F0EAH
LF0EB:
	djnz	r3,0F0ECH
LF0ED:
	djnz	r5,0F0EEH
LF0EF:
	djnz	r7,0F0F0H
	mov	a,@r1
;
	db	0F2H
LF0F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF0F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF113:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF117:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF127:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF133:
	db	033H
;
	call	L0135
;
	db	036H
;
LF137:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF147:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF153:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF157:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF173:
	db	073H
;
	call	L0375
;
	db	076H
;
LF177:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF187:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF193:
	retr
;
	call	L0495
;
	db	096H
;
LF197:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF1B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF1B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF1C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF1D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF1E7:
	rl	a
;
	db	0E8H
;
LF1E9:
	djnz	r1,0F1EAH
LF1EB:
	djnz	r3,0F1ECH
LF1ED:
	djnz	r5,0F1EEH
LF1EF:
	djnz	r7,0F1F0H
	mov	a,@r1
;
	db	0F2H
LF1F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF1F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF213:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF217:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF227:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF233:
	db	033H
;
	call	L0135
;
	db	036H
;
LF237:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF247:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF253:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF257:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF273:
	db	073H
;
	call	L0375
;
	db	076H
;
LF277:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF287:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF293:
	retr
;
	call	L0495
;
	db	096H
;
LF297:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF2B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF2B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF2C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF2D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF2E7:
	rl	a
;
	db	0E8H
;
LF2E9:
	djnz	r1,0F2EAH
LF2EB:
	djnz	r3,0F2ECH
LF2ED:
	djnz	r5,0F2EEH
LF2EF:
	djnz	r7,0F2F0H
	mov	a,@r1
;
	db	0F2H
LF2F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF2F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF313:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF317:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF327:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF333:
	db	033H
;
	call	L0135
;
	db	036H
;
LF337:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF347:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF353:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF357:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF373:
	db	073H
;
	call	L0375
;
	db	076H
;
LF377:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF387:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF393:
	retr
;
	call	L0495
;
	db	096H
;
LF397:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF3B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF3B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF3C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF3D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF3E7:
	rl	a
;
	db	0E8H
;
LF3E9:
	djnz	r1,0F3EAH
LF3EB:
	djnz	r3,0F3ECH
LF3ED:
	djnz	r5,0F3EEH
LF3EF:
	djnz	r7,0F3F0H
	mov	a,@r1
;
	db	0F2H
LF3F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF3F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF413:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF417:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF427:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF433:
	db	033H
;
	call	L0135
;
	db	036H
;
LF437:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF447:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF453:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF457:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF473:
	db	073H
;
	call	L0375
;
	db	076H
;
LF477:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF487:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF493:
	retr
;
	call	L0495
;
	db	096H
;
LF497:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF4B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF4B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF4C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF4D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF4E7:
	rl	a
;
	db	0E8H
;
LF4E9:
	djnz	r1,0F4EAH
LF4EB:
	djnz	r3,0F4ECH
LF4ED:
	djnz	r5,0F4EEH
LF4EF:
	djnz	r7,0F4F0H
	mov	a,@r1
;
	db	0F2H
LF4F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF4F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF513:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF517:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF527:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF533:
	db	033H
;
	call	L0135
;
	db	036H
;
LF537:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF547:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF553:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF557:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF573:
	db	073H
;
	call	L0375
;
	db	076H
;
LF577:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF587:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF593:
	retr
;
	call	L0495
;
	db	096H
;
LF597:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF5B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF5B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF5C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF5D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF5E7:
	rl	a
;
	db	0E8H
;
LF5E9:
	djnz	r1,0F5EAH
LF5EB:
	djnz	r3,0F5ECH
LF5ED:
	djnz	r5,0F5EEH
LF5EF:
	djnz	r7,0F5F0H
	mov	a,@r1
;
	db	0F2H
LF5F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF5F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF613:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF617:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF627:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF633:
	db	033H
;
	call	L0135
;
	db	036H
;
LF637:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF647:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF653:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF657:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF673:
	db	073H
;
	call	L0375
;
	db	076H
;
LF677:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF687:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF693:
	retr
;
	call	L0495
;
	db	096H
;
LF697:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF6B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF6B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF6C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF6D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF6E7:
	rl	a
;
	db	0E8H
;
LF6E9:
	djnz	r1,0F6EAH
LF6EB:
	djnz	r3,0F6ECH
LF6ED:
	djnz	r5,0F6EEH
LF6EF:
	djnz	r7,0F6F0H
	mov	a,@r1
;
	db	0F2H
LF6F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF6F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF713:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF717:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF727:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF733:
	db	033H
;
	call	L0135
;
	db	036H
;
LF737:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF747:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF753:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF757:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF773:
	db	073H
;
	call	L0375
;
	db	076H
;
LF777:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF787:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF793:
	retr
;
	call	L0495
;
	db	096H
;
LF797:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF7B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF7B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF7C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF7D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF7E7:
	rl	a
;
	db	0E8H
;
LF7E9:
	djnz	r1,0F7EAH
LF7EB:
	djnz	r3,0F7ECH
LF7ED:
	djnz	r5,0F7EEH
LF7EF:
	djnz	r7,0F7F0H
	mov	a,@r1
;
	db	0F2H
LF7F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF7F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF813:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF817:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF827:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF833:
	db	033H
;
	call	L0135
;
	db	036H
;
LF837:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF847:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF853:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF857:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF873:
	db	073H
;
	call	L0375
;
	db	076H
;
LF877:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF887:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF893:
	retr
;
	call	L0495
;
	db	096H
;
LF897:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF8B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF8B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF8C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF8D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF8E7:
	rl	a
;
	db	0E8H
;
LF8E9:
	djnz	r1,0F8EAH
LF8EB:
	djnz	r3,0F8ECH
LF8ED:
	djnz	r5,0F8EEH
LF8EF:
	djnz	r7,0F8F0H
	mov	a,@r1
;
	db	0F2H
LF8F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF8F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LF913:
	addc	a,#014H
	dis	i
;
	db	016H
;
LF917:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LF927:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LF933:
	db	033H
;
	call	L0135
;
	db	036H
;
LF937:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LF947:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LF953:
	anl	a,#054H
	strt	t
;
	db	056H
;
LF957:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LF973:
	db	073H
;
	call	L0375
;
	db	076H
;
LF977:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LF987:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LF993:
	retr
;
	call	L0495
;
	db	096H
;
LF997:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LF9B3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LF9B7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LF9C7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LF9D3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LF9E7:
	rl	a
;
	db	0E8H
;
LF9E9:
	djnz	r1,0F9EAH
LF9EB:
	djnz	r3,0F9ECH
LF9ED:
	djnz	r5,0F9EEH
LF9EF:
	djnz	r7,0F9F0H
	mov	a,@r1
;
	db	0F2H
LF9F3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LF9F7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LFA13:
	addc	a,#014H
	dis	i
;
	db	016H
;
LFA17:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LFA27:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LFA33:
	db	033H
;
	call	L0135
;
	db	036H
;
LFA37:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LFA47:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LFA53:
	anl	a,#054H
	strt	t
;
	db	056H
;
LFA57:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LFA73:
	db	073H
;
	call	L0375
;
	db	076H
;
LFA77:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LFA87:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LFA93:
	retr
;
	call	L0495
;
	db	096H
;
LFA97:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LFAB3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LFAB7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LFAC7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LFAD3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LFAE7:
	rl	a
;
	db	0E8H
;
LFAE9:
	djnz	r1,0FAEAH
LFAEB:
	djnz	r3,0FAECH
LFAED:
	djnz	r5,0FAEEH
LFAEF:
	djnz	r7,0FAF0H
	mov	a,@r1
;
	db	0F2H
LFAF3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LFAF7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LFB13:
	addc	a,#014H
	dis	i
;
	db	016H
;
LFB17:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LFB27:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LFB33:
	db	033H
;
	call	L0135
;
	db	036H
;
LFB37:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LFB47:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LFB53:
	anl	a,#054H
	strt	t
;
	db	056H
;
LFB57:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LFB73:
	db	073H
;
	call	L0375
;
	db	076H
;
LFB77:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LFB87:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LFB93:
	retr
;
	call	L0495
;
	db	096H
;
LFB97:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LFBB3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LFBB7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LFBC7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LFBD3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LFBE7:
	rl	a
;
	db	0E8H
;
LFBE9:
	djnz	r1,0FBEAH
LFBEB:
	djnz	r3,0FBECH
LFBED:
	djnz	r5,0FBEEH
LFBEF:
	djnz	r7,0FBF0H
	mov	a,@r1
;
	db	0F2H
LFBF3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LFBF7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LFC13:
	addc	a,#014H
	dis	i
;
	db	016H
;
LFC17:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LFC27:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LFC33:
	db	033H
;
	call	L0135
;
	db	036H
;
LFC37:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LFC47:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LFC53:
	anl	a,#054H
	strt	t
;
	db	056H
;
LFC57:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LFC73:
	db	073H
;
	call	L0375
;
	db	076H
;
LFC77:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LFC87:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LFC93:
	retr
;
	call	L0495
;
	db	096H
;
LFC97:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LFCB3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LFCB7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LFCC7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LFCD3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LFCE7:
	rl	a
;
	db	0E8H
;
LFCE9:
	djnz	r1,0FCEAH
LFCEB:
	djnz	r3,0FCECH
LFCED:
	djnz	r5,0FCEEH
LFCEF:
	djnz	r7,0FCF0H
	mov	a,@r1
;
	db	0F2H
LFCF3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LFCF7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LFD13:
	addc	a,#014H
	dis	i
;
	db	016H
;
LFD17:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LFD27:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LFD33:
	db	033H
;
	call	L0135
;
	db	036H
;
LFD37:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LFD47:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LFD53:
	anl	a,#054H
	strt	t
;
	db	056H
;
LFD57:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LFD73:
	db	073H
;
	call	L0375
;
	db	076H
;
LFD77:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LFD87:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LFD93:
	retr
;
	call	L0495
;
	db	096H
;
LFD97:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LFDB3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LFDB7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LFDC7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LFDD3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LFDE7:
	rl	a
;
	db	0E8H
;
LFDE9:
	djnz	r1,0FDEAH
LFDEB:
	djnz	r3,0FDECH
LFDED:
	djnz	r5,0FDEEH
LFDEF:
	djnz	r7,0FDF0H
	mov	a,@r1
;
	db	0F2H
LFDF3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LFDF7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LFE13:
	addc	a,#014H
	dis	i
;
	db	016H
;
LFE17:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LFE27:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LFE33:
	db	033H
;
	call	L0135
;
	db	036H
;
LFE37:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LFE47:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LFE53:
	anl	a,#054H
	strt	t
;
	db	056H
;
LFE57:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LFE73:
	db	073H
;
	call	L0375
;
	db	076H
;
LFE77:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LFE87:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LFE93:
	retr
;
	call	L0495
;
	db	096H
;
LFE97:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LFEB3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LFEB7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LFEC7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LFED3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LFEE7:
	rl	a
;
	db	0E8H
;
LFEE9:
	djnz	r1,0FEEAH
LFEEB:
	djnz	r3,0FEECH
LFEED:
	djnz	r5,0FEEEH
LFEEF:
	djnz	r7,0FEF0H
	mov	a,@r1
;
	db	0F2H
LFEF3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LFEF7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
	nop
;
	db	001H
;
	outl	bus,a
	add	a,#004H
	en	i
;
	db	006H
;
	dec	a
	ins	a,bus
	in	a,p1
	in	a,p2
;
	db	00BH
;
	movd	a,p4
	movd	a,p5
	movd	a,p6
	movd	a,p7
	inc	@r0
	inc	@r1
;
	db	012H
;
LFF13:
	addc	a,#014H
	dis	i
;
	db	016H
;
LFF17:
	inc	a
	inc	r0
	inc	r1
	inc	r2
	inc	r3
	inc	r4
	inc	r5
	inc	r6
	inc	r7
	xch	a,@r0
	xch	a,@r1
;
	db	022H
;
	mov	a,#024H
	en	tcnti
;
	db	026H
;
LFF27:
	clr	a
	xch	a,r0
	xch	a,r1
	xch	a,r2
	xch	a,r3
	xch	a,r4
	xch	a,r5
	xch	a,r6
	xch	a,r7
	xchd	a,@r0
	xchd	a,@r1
;
	db	032H
LFF33:
	db	033H
;
	call	L0135
;
	db	036H
;
LFF37:
	cpl	a
;
	db	038H
;
	outl	p1,a
	outl	p2,a
;
	db	03BH
;
	movd	p4,a
	movd	p5,a
	movd	p6,a
	movd	p7,a
	orl	a,@r0
	orl	a,@r1
	mov	a,t
	orl	a,#044H
	strt	cnt
;
	db	046H
;
LFF47:
	swap	a
	orl	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	anl	a,@r0
	anl	a,@r1
;
	db	052H
;
LFF53:
	anl	a,#054H
	strt	t
;
	db	056H
;
LFF57:
	da	a
	anl	a,r0
	anl	a,r1
	anl	a,r2
	anl	a,r3
	anl	a,r4
	anl	a,r5
	anl	a,r6
	anl	a,r7
	add	a,@r0
	add	a,@r1
	mov	t,a
;
	db	063H
;
	jmp	L0365
;
	db	066H
;
	rrc	a
	add	a,r0
	add	a,r1
	add	a,r2
	add	a,r3
	add	a,r4
	add	a,r5
	add	a,r6
	add	a,r7
	addc	a,@r0
	addc	a,@r1
;
	db	072H
LFF73:
	db	073H
;
	call	L0375
;
	db	076H
;
LFF77:
	rr	a
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
	movx	a,@r0
	movx	a,@r1
;
	db	082H
;
	ret
	jmp	L0485
;
	db	086H
LFF87:
	db	087H
;
	orl	bus,#089H
	orl	p2,#08BH
	orld	p4,a
	orld	p5,a
	orld	p6,a
	orld	p7,a
	movx	@r0,a
	movx	@r1,a
;
	db	092H
;
LFF93:
	retr
;
	call	L0495
;
	db	096H
;
LFF97:
	clr	c
	anl	bus,#099H
	anl	p2,#09BH
	anld	p4,a
	anld	p5,a
	anld	p6,a
	anld	p7,a
	mov	@r0,a
	mov	@r1,a
;
	db	0A2H
;
	movp	a,@a
	jmp	L05A5
;
	db	0A6H
;
	cpl	c
	mov	r0,a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	@r0,#0B1H
;
	db	0B2H
;
LFFB3:
	jmpp	@a		;INFO: indirect jump
;
	call	L05B5
;
	db	0B6H
LFFB7:
	db	0B7H
;
	mov	r0,#0B9H
	mov	r2,#0BBH
	mov	r4,#0BDH
	mov	r6,#0BFH
;
	db	0C0H
	db	0C1H
	db	0C2H
	db	0C3H
;
	jmp	L06C5
;
	db	0C6H
;
LFFC7:
	mov	a,psw
	dec	r0
	dec	r1
	dec	r2
	dec	r3
	dec	r4
	dec	r5
	dec	r6
	dec	r7
	xrl	a,@r0
	xrl	a,@r1
;
	db	0D2H
;
LFFD3:
	xrl	a,#0D4H
	sel	rb1
;
	db	0D6H
;
	mov	psw,a
	xrl	a,r0
	xrl	a,r1
	xrl	a,r2
	xrl	a,r3
	xrl	a,r4
	xrl	a,r5
	xrl	a,r6
	xrl	a,r7
;
	db	0E0H
	db	0E1H
	db	0E2H
;
	movp3	a,@a
	jmp	L07E5
;
	db	0E6H
;
LFFE7:
	rl	a
;
	db	0E8H
;
LFFE9:
	djnz	r1,0FFEAH
LFFEB:
	djnz	r3,0FFECH
LFFED:
	djnz	r5,0FFEEH
LFFEF:
	djnz	r7,0FFF0H
	mov	a,@r1
;
	db	0F2H
LFFF3:
	db	0F3H
;
	call	L07F5
;
	db	0F6H
;
LFFF7:
	rlc	a
	mov	a,r0
	mov	a,r1
	mov	a,r2
	mov	a,r3
	mov	a,r4
	mov	a,r5
	mov	a,r6
	mov	a,r7
