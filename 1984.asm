;
;	Disassembled by:
;		DASMx object code disassembler
;		(c) Copyright 1996-1999   Conquest Consultants
;		Version 1.30 (Oct  6 1999)
;
;	File:		1984.bin
;
;	Size:		4096 bytes
;	Checksum:	F800
;	CRC-32:		0BDC94A9
;
;	Date:		Tue Dec 02 10:38:17 2025
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
	jb0	LF013
	call	L0015
	jtf	LF017
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
	jnt0	LF027
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
	jb1	LF033
	call	L0135
	jt0	LF037
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
	jnt1	LF047
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
	jb2	LF053
	call	L0255
	jt1	LF057
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
	jb3	LF073
	call	L0375
	jf1	LF077
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF113
	call	L0015
	jtf	LF117
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
	jnt0	LF127
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
	jb1	LF133
	call	L0135
	jt0	LF137
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
	jnt1	LF147
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
	jb2	LF153
	call	L0255
	jt1	LF157
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
	jb3	LF173
	call	L0375
	jf1	LF177
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF213
	call	L0015
	jtf	LF217
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
	jnt0	LF227
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
	jb1	LF233
	call	L0135
	jt0	LF237
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
	jnt1	LF247
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
	jb2	LF253
	call	L0255
	jt1	LF257
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
	jb3	LF273
	call	L0375
	jf1	LF277
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF313
	call	L0015
	jtf	LF317
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
	jnt0	LF327
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
	jb1	LF333
	call	L0135
	jt0	LF337
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
	jnt1	LF347
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
	jb2	LF353
	call	L0255
	jt1	LF357
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
	jb3	LF373
	call	L0375
	jf1	LF377
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF413
	call	L0015
	jtf	LF417
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
	jnt0	LF427
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
	jb1	LF433
	call	L0135
	jt0	LF437
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
	jnt1	LF447
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
	jb2	LF453
	call	L0255
	jt1	LF457
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
	jb3	LF473
	call	L0375
	jf1	LF477
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF513
	call	L0015
	jtf	LF517
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
	jnt0	LF527
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
	jb1	LF533
	call	L0135
	jt0	LF537
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
	jnt1	LF547
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
	jb2	LF553
	call	L0255
	jt1	LF557
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
	jb3	LF573
	call	L0375
	jf1	LF577
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF613
	call	L0015
	jtf	LF617
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
	jnt0	LF627
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
	jb1	LF633
	call	L0135
	jt0	LF637
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
	jnt1	LF647
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
	jb2	LF653
	call	L0255
	jt1	LF657
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
	jb3	LF673
	call	L0375
	jf1	LF677
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF713
	call	L0015
	jtf	LF717
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
	jnt0	LF727
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
	jb1	LF733
	call	L0135
	jt0	LF737
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
	jnt1	LF747
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
	jb2	LF753
	call	L0255
	jt1	LF757
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
	jb3	LF773
	call	L0375
	jf1	LF777
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF813
	call	L0015
	jtf	LF817
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
	jnt0	LF827
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
	jb1	LF833
	call	L0135
	jt0	LF837
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
	jnt1	LF847
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
	jb2	LF853
	call	L0255
	jt1	LF857
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
	jb3	LF873
	call	L0375
	jf1	LF877
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LF913
	call	L0015
	jtf	LF917
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
	jnt0	LF927
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
	jb1	LF933
	call	L0135
	jt0	LF937
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
	jnt1	LF947
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
	jb2	LF953
	call	L0255
	jt1	LF957
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
	jb3	LF973
	call	L0375
	jf1	LF977
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LFA13
	call	L0015
	jtf	LFA17
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
	jnt0	LFA27
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
	jb1	LFA33
	call	L0135
	jt0	LFA37
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
	jnt1	LFA47
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
	jb2	LFA53
	call	L0255
	jt1	LFA57
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
	jb3	LFA73
	call	L0375
	jf1	LFA77
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LFB13
	call	L0015
	jtf	LFB17
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
	jnt0	LFB27
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
	jb1	LFB33
	call	L0135
	jt0	LFB37
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
	jnt1	LFB47
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
	jb2	LFB53
	call	L0255
	jt1	LFB57
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
	jb3	LFB73
	call	L0375
	jf1	LFB77
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LFC13
	call	L0015
	jtf	LFC17
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
	jnt0	LFC27
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
	jb1	LFC33
	call	L0135
	jt0	LFC37
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
	jnt1	LFC47
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
	jb2	LFC53
	call	L0255
	jt1	LFC57
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
	jb3	LFC73
	call	L0375
	jf1	LFC77
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LFD13
	call	L0015
	jtf	LFD17
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
	jnt0	LFD27
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
	jb1	LFD33
	call	L0135
	jt0	LFD37
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
	jnt1	LFD47
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
	jb2	LFD53
	call	L0255
	jt1	LFD57
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
	jb3	LFD73
	call	L0375
	jf1	LFD77
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LFE13
	call	L0015
	jtf	LFE17
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
	jnt0	LFE27
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
	jb1	LFE33
	call	L0135
	jt0	LFE37
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
	jnt1	LFE47
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
	jb2	LFE53
	call	L0255
	jt1	LFE57
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
	jb3	LFE73
	call	L0375
	jf1	LFE77
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
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
	jb0	LFF13
	call	L0015
	jtf	LFF17
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
	jnt0	LFF27
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
	jb1	LFF33
	call	L0135
	jt0	LFF37
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
	jnt1	LFF47
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
	jb2	LFF53
	call	L0255
	jt1	LFF57
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
	jb3	LFF73
	call	L0375
	jf1	LFF77
	addc	a,r0
	addc	a,r1
	addc	a,r2
	addc	a,r3
	addc	a,r4
	addc	a,r5
	addc	a,r6
	addc	a,r7
