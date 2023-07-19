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
               	leaq	231234(%rip), %rax      # 0x458ee0 <ktypeglobal:SwitchBenchmark#internal>
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
               	movb	267630(%rip), %al       # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207f3 <kfun:#main(){}+0x83>
               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	262903(%rip), %eax      # 0x460af0 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::Switch.testSparseIntSwitch/Main.kt>
               	cmpl	$2, %eax
               	je	0x420811 <kfun:#main(){}+0xa1>
               	leaq	262891(%rip), %rdi      # 0x460af0 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::Switch.testSparseIntSwitch/Main.kt>
               	leaq	-316(%rip), %rsi        # 0x4206d0 <kfun:$init_global#internal>
               	callq	0x439d50 <CallInitGlobalPossiblyLock>
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
               	je	0x420ad9 <kfun:#main(){}+0x369>
               	movq	%r13, 120(%rsp)
               	movq	72(%rsp), %rax
               	movq	%rbp, 8(%rsp)
               	movq	%rax, 288(%rbp)
               	movl	8(%r13), %ebp
               	xorl	%r12d, %r12d
               	testl	%ebp, %ebp
               	cmovsl	%r12d, %ebp
               	jmp	0x4208d8 <kfun:#main(){}+0x168>
               	movl	$4, %edi
               	nopl	(%rax,%rax)
               	addq	$1, %r12
               	leaq	136(%rsp), %rsi
               	callq	0x415d90 <kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any>
               	movl	8(%rax), %eax
               	addl	%eax, 8(%r15)
               	cmpq	%r12, %rbp
               	je	0x420ab6 <kfun:#main(){}+0x346>
               	movzbl	267376(%rip), %eax      # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208f1 <kfun:#main(){}+0x181>
               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	16(%r13,%r12,4), %r14d
               	movq	%rbx, %rax
               	cmpl	$2, -68(%rbx)
               	je	0x420915 <kfun:#main(){}+0x1a5>
               	leaq	-68(%rbx), %rdi
               	leaq	464(%rip), %rsi         # 0x420ae0 <kfun:Blackhole.$init_thread_local#internal>
               	callq	0x439e60 <CallInitThreadLocal>
               	movl	$3, %edi
               	callq	0x424ba0 <LookupTLS>
               	movq	(%rax), %r15
               	movq	%r15, 128(%rsp)
               	movl	$1, %edi
               	cmpl	$360, %r14d             # imm = 0x168
               	jg	0x420960 <kfun:#main(){}+0x1f0>
               	cmpl	$148, %r14d
               	jg	0x4209b0 <kfun:#main(){}+0x240>
               	leal	-11(%r14), %eax
               	cmpl	$36, %eax
               	ja	0x420a22 <kfun:#main(){}+0x2b2>
               	leaq	138875(%rip), %rcx      # 0x4427d0 <_IO_stdin_used+0x110>
               	movslq	(%rcx,%rax,4), %rax
               	addq	%rcx, %rax
               	jmpq	*%rax
               	nop
               	cmpl	$750, %r14d             # imm = 0x2EE
               	jg	0x4209f0 <kfun:#main(){}+0x280>
               	cmpl	$562, %r14d             # imm = 0x232
               	jle	0x420a56 <kfun:#main(){}+0x2e6>
               	cmpl	$563, %r14d             # imm = 0x233
               	je	0x4208b6 <kfun:#main(){}+0x146>
               	cmpl	$617, %r14d             # imm = 0x269
               	je	0x4208b6 <kfun:#main(){}+0x146>
               	cmpl	$677, %r14d             # imm = 0x2A5
               	je	0x4208b6 <kfun:#main(){}+0x146>
               	jmp	0x420a30 <kfun:#main(){}+0x2c0>
               	nopw	%cs:(%rax,%rax)
               	cmpl	$226, %r14d
               	jle	0x420a3a <kfun:#main(){}+0x2ca>
               	cmpl	$227, %r14d
               	je	0x4208c0 <kfun:#main(){}+0x150>
               	cmpl	$263, %r14d             # imm = 0x107
               	je	0x420a98 <kfun:#main(){}+0x328>
               	cmpl	$307, %r14d             # imm = 0x133
               	je	0x4208c0 <kfun:#main(){}+0x150>
               	jmp	0x420a30 <kfun:#main(){}+0x2c0>
               	nopl	(%rax)
               	cmpl	$882, %r14d             # imm = 0x372
               	jle	0x420a72 <kfun:#main(){}+0x302>
               	cmpl	$883, %r14d             # imm = 0x373
               	je	0x4208c0 <kfun:#main(){}+0x150>
               	cmpl	$967, %r14d             # imm = 0x3C7
               	je	0x4208c0 <kfun:#main(){}+0x150>
               	cmpl	$1031, %r14d            # imm = 0x407
               	je	0x4208c0 <kfun:#main(){}+0x150>
               	jmp	0x420a30 <kfun:#main(){}+0x2c0>
               	cmpl	$71, %r14d
               	je	0x4208b6 <kfun:#main(){}+0x146>
               	cmpl	$103, %r14d
               	movl	$5, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	cmpl	$149, %r14d
               	je	0x420aa2 <kfun:#main(){}+0x332>
               	cmpl	$175, %r14d
               	jne	0x420a30 <kfun:#main(){}+0x2c0>
               	movl	$7, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	cmpl	$361, %r14d             # imm = 0x169
               	je	0x420a8e <kfun:#main(){}+0x31e>
               	cmpl	$487, %r14d             # imm = 0x1E7
               	jne	0x420a30 <kfun:#main(){}+0x2c0>
               	movl	$3, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	cmpl	$751, %r14d             # imm = 0x2EF
               	je	0x420aac <kfun:#main(){}+0x33c>
               	cmpl	$823, %r14d             # imm = 0x337
               	jne	0x420a30 <kfun:#main(){}+0x2c0>
               	movl	$31, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	movl	$2, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	movl	$9, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	movl	$6, %edi
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
               	movl	$435, %edi              # imm = 0x1B3
               	jmp	0x4208c0 <kfun:#main(){}+0x150>
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
               	callq	0x41a670 <kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing>
               	nop

