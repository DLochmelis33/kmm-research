<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%rbx
               	subq	$88, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	leaq	234002(%rip), %rax      # 0x459810 <ktypeglobal:LambdaBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 8(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, %r14
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %r15      # imm = 0x400000000
               	movq	%r15, 32(%rsp)
               	movb	265878(%rip), %al       # 0x4614e0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420653 <kfun:#main(){}+0x73>
               	callq	0x424660 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	8(%rsp), %rax
               	movq	%rax, 40(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 64(%rsp)
               	movaps	%xmm0, 48(%rsp)
               	movq	288(%rbx), %rax
               	movq	%rax, 56(%rsp)
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movq	%r15, 64(%rsp)
               	movq	%r14, %rax
               	cmpl	$2, -68(%r14)
               	je	0x4206a7 <kfun:#main(){}+0xc7>
               	leaq	-68(%r14), %rdi
               	leaq	142(%rip), %rsi         # 0x420730 <kfun:Random.$init_thread_local#internal>
               	callq	0x43a590 <CallInitThreadLocal>
               	movl	$3, %edi
               	callq	0x424c20 <LookupTLS>
               	movq	(%rax), %rax
               	movq	%rax, 72(%rsp)
               	movl	16(%rax), %ecx
               	leal	(%rcx,%rcx,2), %ecx
               	addl	$11, %ecx
               	movslq	%ecx, %rcx
               	imulq	$1717986919, %rcx, %rdx # imm = 0x66666667
               	movq	%rdx, %rsi
               	shrq	$63, %rsi
               	sarq	$35, %rdx
               	addl	%esi, %edx
               	shll	$2, %edx
               	leal	(%rdx,%rdx,4), %edx
               	subl	%edx, %ecx
               	movl	%ecx, 16(%rax)
               	movl	16(%rax), %eax
               	movl	%eax, 260955(%rip)      # 0x460248 <kvar:globalAddendum#internal>
               	movq	56(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movl	$10001, %ebp            # imm = 0x2711
               	jmp	0x420705 <kfun:#main(){}+0x125>
               	addl	$-1, %ebp
               	je	0x420717 <kfun:#main(){}+0x137>
               	movzbl	265684(%rip), %eax      # 0x4614e0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420700 <kfun:#main(){}+0x120>
               	callq	0x424660 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420700 <kfun:#main(){}+0x120>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	addq	$88, %rsp
               	popq	%rbx
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	nop

