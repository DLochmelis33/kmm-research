<kfun:#main(){}>:
               	pushq	%rbx
               	subq	$80, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 16(%rsp)
               	movaps	%xmm0, (%rsp)
               	movups	%xmm0, 48(%rsp)
               	movups	%xmm0, 64(%rsp)
               	leaq	233582(%rip), %rax      # 0x459ce0 <ktypeglobal:BunnymarkBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 40(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 8(%rsp)
               	movq	%rsp, %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 16(%rsp)
               	movb	266455(%rip), %al       # 0x461d90 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cc2 <kfun:#main(){}+0x72>
               	callq	0x424910 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	40(%rsp), %rdi
               	movq	%rdi, 24(%rsp)
               	movl	$1142947840, 48(%rsp)   # imm = 0x44200000
               	movl	$1139802112, 56(%rsp)   # imm = 0x43F00000
               	movabsq	$258755002368, %rax     # imm = 0x3C3F000000
               	movq	%rax, 64(%rsp)
               	movl	$800000, 72(%rsp)       # imm = 0xC3500
               	callq	0x420450 <kfun:BunnymarkBenchmark#testBunnymark(){}>
               	movq	8(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	addq	$80, %rsp
               	popq	%rbx
               	retq
               	nopw	(%rax,%rax)

