	.file	"ass.c"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L9
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %r10
	movl	%edi, %ebp
	leal	-1(%rdi), %eax
	salq	$5, %rax
	leaq	32(%rsi,%rax), %rbx
	movl	$0, %eax
	leal	-1(%rdi), %r11d
.L8:
	movl	%r11d, %edx
	testl	%r11d, %r11d
	js	.L3
	movq	%r10, %r9
	movswl	24(%r10), %r8d
.L7:
	movslq	%edx, %rdi
	salq	$5, %rdi
	addq	%rsi, %rdi
	movl	8(%rdi), %ecx
	cmpl	%ecx, %r8d
	jne	.L4
	movl	12(%rdi), %ecx
	movl	%ecx, 8(%r9)
	jmp	.L5
.L4:
	movl	%ecx, 12(%r9)
.L5:
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	.L7
	addl	%ebp, %eax
.L3:
	addq	$32, %r10
	cmpq	%rbx, %r10
	jne	.L8
	jmp	.L2
.L9:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	movl	$0, %eax
	ret
.L2:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	.p2align 4,,5
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
