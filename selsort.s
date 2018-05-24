	.syntax unified
	.cpu cortex-m3
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"selsort.c"
	.text
	.align	2
	.global	selsort
	.thumb
	.thumb_func
	.type	selsort, %function
selsort:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r3, r1, #1
	mov	ip, #0
	sub	sp, sp, #12
	cmp	ip, r3
	mov	lr, r1
	mov	r10, r0
	str	r3, [sp, #4]
	bge	.L11
.L5:
	add	r9, ip, #1
	cmp	lr, r9
	it	le
	addle	r8, r10, #4
	ble	.L3
	mov	r8, r10
	ldr	fp, [r8], #4
	mov	r4, ip
	mov	r6, r8
	mov	r5, fp
	mov	r1, r9
.L4:
	mov	r3, r6
	ldr	r2, [r6], #4
	add	r7, r0, r4, lsl #2
	cmp	r2, r5
	ite	lt
	movlt	r4, r1
	movge	r3, r7
	adds	r1, r1, #1
	cmp	r5, r2
	it	ge
	movge	r5, r2
	cmp	lr, r1
	bne	.L4
	cmp	ip, r4
	itt	ne
	strne	fp, [r3]
	strne	r5, [r10]
.L3:
	mov	ip, r9
	ldr	r3, [sp, #4]
	mov	r10, r8
	cmp	ip, r3
	blt	.L5
.L11:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	selsort, .-selsort
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 5.4.1 20160609 (release) [ARM/embedded-5-branch revision 237715]"
