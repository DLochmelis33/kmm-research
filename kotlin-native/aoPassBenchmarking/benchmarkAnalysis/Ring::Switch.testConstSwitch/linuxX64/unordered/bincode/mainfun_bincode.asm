<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$152, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 48(%rsp)
               	movaps	%xmm0, 32(%rsp)
               	movq	$0, 24(%rsp)
               	leaq	236706(%rip), %rax      # 0x45a620 <ktypeglobal:SwitchBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 16(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, %rbx
               	movq	-64(%rax), %rbp
               	movq	288(%rbp), %rax
               	movq	%rax, 40(%rsp)
               	leaq	32(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %r14      # imm = 0x400000000
               	movq	%r14, 48(%rsp)
               	movb	273174(%rip), %al       # 0x4634e0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209d3 <kfun:#main(){}+0x83>
               	callq	0x424b50 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	268439(%rip), %eax      # 0x462270 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::Switch.testConstSwitch/Main.kt>
               	cmpl	$2, %eax
               	je	0x4209f1 <kfun:#main(){}+0xa1>
               	leaq	268427(%rip), %rdi      # 0x462270 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::Switch.testConstSwitch/Main.kt>
               	leaq	-316(%rip), %rsi        # 0x4208b0 <kfun:$init_global#internal>
               	callq	0x43a970 <CallInitGlobalPossiblyLock>
               	leaq	16(%rsp), %rax
               	movq	%rax, 56(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 128(%rsp)
               	movaps	%xmm0, 112(%rsp)
               	movaps	%xmm0, 96(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 104(%rsp)
               	leaq	96(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$25769803776, %rax      # imm = 0x600000000
               	movq	%rax, 112(%rsp)
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movq	%r14, 80(%rsp)
               	movq	24(%rsp), %r13
               	movq	%r13, 88(%rsp)
               	testq	%r13, %r13
               	je	0x420ba0 <kfun:#main(){}+0x250>
               	movq	%r13, 120(%rsp)
               	movq	72(%rsp), %rax
               	movq	%rbp, 8(%rsp)
               	movq	%rax, 288(%rbp)
               	movl	8(%r13), %ebp
               	xorl	%r12d, %r12d
               	testl	%ebp, %ebp
               	cmovsl	%r12d, %ebp
               	jmp	0x420abc <kfun:#main(){}+0x16c>
               	movl	$4, %edi
               	nopl	(%rax,%rax)
               	addq	$1, %r12
               	leaq	136(%rsp), %rsi
               	callq	0x415df0 <kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any>
               	movl	8(%rax), %eax
               	addl	8(%r14), %eax
               	movl	%eax, 8(%r14)
               	cmpq	%r12, %rbp
               	je	0x420b7d <kfun:#main(){}+0x22d>
               	movzbl	272916(%rip), %eax      # 0x4634e0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ad5 <kfun:#main(){}+0x185>
               	callq	0x424b50 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	16(%r13,%r12,4), %r15d
               	movq	%rbx, %rax
               	cmpl	$2, -68(%rbx)
               	je	0x420af9 <kfun:#main(){}+0x1a9>
               	leaq	-68(%rbx), %rdi
               	leaq	188(%rip), %rsi         # 0x420bb0 <kfun:Blackhole.$init_thread_local#internal>
               	callq	0x43aa80 <CallInitThreadLocal>
               	movl	$3, %edi
               	callq	0x425110 <LookupTLS>
               	movq	(%rax), %r14
               	movq	%r14, 128(%rsp)
               	addl	$-1, %r15d
               	cmpl	$19, %r15d
               	ja	0x420b37 <kfun:#main(){}+0x1e7>
               	movl	$1, %edi
               	leaq	141804(%rip), %rcx      # 0x443510 <_IO_stdin_used+0x110>
               	movslq	(%rcx,%r15,4), %rax
               	addq	%rcx, %rax
               	jmpq	*%rax
               	movl	$3, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$5, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$6, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$2, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$435, %edi              # imm = 0x1B3
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$7, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$31, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movl	$9, %edi
               	jmp	0x420aa0 <kfun:#main(){}+0x150>
               	movq	40(%rsp), %rax
               	movq	8(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	addq	$152, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x41a7e0 <kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing>
               	nopw	%cs:(%rax,%rax)

