	.file	"cachetest.c"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	transpose
	.type	transpose, @function
transpose:
.LFB1:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, -16(%rsp)
	movq	%rdi, -24(%rsp)
.L10:
	leal	-3(%r15), %eax
	movq	-16(%rsp), %r13
	leal	-4(%r15), %r14d
	leal	-1(%r15), %r12d
	xorl	%edi, %edi
	movb	%al, -1(%rsp)
.L8:
	cmpb	%r14b, %r15b
	jle	.L3
	movzbl	-1(%rsp), %r10d
	movl	%edi, %ebx
	movq	-24(%rsp), %rsi
	leal	4(%rdi), %ebp
	leal	3(%rdi), %r9d
	leal	-1(%rbx), %r8d
	movq	%r13, %r11
	.p2align 4,,10
	.p2align 3
.L6:
	cmpb	%bpl, %bl
	jge	.L4
	movq	%r11, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L5:
	leal	(%rdi,%rax), %ecx
	addl	$1, %eax
	addq	$256, %rdx
	movslq	%ecx, %rcx
	movl	(%rsi,%rcx,4), %ecx
	movl	%ecx, -256(%rdx)
	leal	(%r8,%rax), %ecx
	cmpb	%r9b, %cl
	jl	.L5
.L4:
	leal	1(%r10), %eax
	subl	$1, %r10d
	addq	$4, %r11
	addq	$256, %rsi
	cmpb	%r10b, %r12b
	jle	.L3
	movl	%eax, %r10d
	jmp	.L6
.L3:
	addl	$4, %edi
	addq	$1024, %r13
	cmpl	$64, %edi
	jne	.L8
	addl	$4, %r15d
	addq	$16, -16(%rsp)
	addq	$1024, -24(%rsp)
	cmpb	$68, %r15b
	jne	.L10
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	transpose, .-transpose
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
