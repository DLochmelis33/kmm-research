<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r12
               	pushq	%rbx
               	subq	$80, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 64(%rsp)
               	movaps	%xmm0, 48(%rsp)
               	leaq	232144(%rip), %rax      # 0x459080 <ktypeglobal:LambdaBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 40(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, %rbx
               	movq	-64(%rax), %r14
               	movq	288(%r14), %rax
               	movq	%rax, 56(%rsp)
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %r15      # imm = 0x400000000
               	movq	%r15, 64(%rsp)
               	movb	268124(%rip), %al       # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420605 <kfun:#main(){}+0x75>
               	callq	0x424210 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	40(%rsp), %rax
               	movq	%rax, 72(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 16(%rsp)
               	movaps	%xmm0, (%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 8(%rsp)
               	movq	%rsp, %r12
               	movq	%r12, 288(%r14)
               	movq	%r15, 16(%rsp)
               	movq	%rbx, %rax
               	cmpl	$2, -68(%rbx)
               	je	0x420655 <kfun:#main(){}+0xc5>
               	leaq	-68(%rbx), %rdi
               	leaq	208(%rip), %rsi         # 0x420720 <kfun:Random.$init_thread_local#internal>
               	callq	0x439a40 <CallInitThreadLocal>
               	leaq	24(%rsp), %rbx
               	movl	$3, %edi
               	callq	0x424780 <LookupTLS>
               	movq	(%rax), %rax
               	movq	%rax, 24(%rsp)
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
               	movl	%ecx, 263211(%rip)      # 0x460ac8 <kvar:globalAddendum#internal>
               	movq	8(%rsp), %rax
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, (%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	%rax, 8(%rsp)
               	movq	%r12, 288(%r14)
               	movq	%r15, 16(%rsp)
               	movl	$10001, %ebp            # imm = 0x2711
               	jmp	0x4206e8 <kfun:#main(){}+0x158>
               	nopl	(%rax)
               	movl	263154(%rip), %edi      # 0x460ac8 <kvar:globalAddendum#internal>
               	movq	%rbx, %rsi
               	callq	0x415d90 <kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any>
               	movq	%rax, 24(%rsp)
               	addl	$-1, %ebp
               	je	0x4206fa <kfun:#main(){}+0x16a>
               	movzbl	267881(%rip), %eax      # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206d0 <kfun:#main(){}+0x140>
               	callq	0x424210 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x4206d0 <kfun:#main(){}+0x140>
               	movq	56(%rsp), %rax
               	movq	%rax, 288(%r14)
               	addq	$80, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	nopw	%cs:(%rax,%rax)

