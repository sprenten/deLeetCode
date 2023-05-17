	.file	"stringTest.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	byString
	.type	byString, @function
byString:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	snprintf@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L2
	movl	-20(%rbp), %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	byString, .-byString
	.section	.rodata
.LC1:
	.string	"%d \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$20, -96(%rbp)
	movl	$234, -92(%rbp)
	movl	$78, -88(%rbp)
	movl	$5092, -84(%rbp)
	movl	$3, -80(%rbp)
	movl	$276, -76(%rbp)
	movl	$843, -72(%rbp)
	movl	$702123, -68(%rbp)
	movl	$512, -64(%rbp)
	movl	$-1, -108(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L6
.L8:
	movl	-104(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, %edi
	call	byString
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L7
	movl	-108(%rbp), %edx
	leal	1(%rdx), %eax
	movl	%eax, -108(%rbp)
	movl	-100(%rbp), %eax
	movl	%edx, %edx
	movl	%eax, -48(%rbp,%rdx,4)
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
	addl	$1, -104(%rbp)
.L6:
	cmpl	$9, -104(%rbp)
	jle	.L8
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
