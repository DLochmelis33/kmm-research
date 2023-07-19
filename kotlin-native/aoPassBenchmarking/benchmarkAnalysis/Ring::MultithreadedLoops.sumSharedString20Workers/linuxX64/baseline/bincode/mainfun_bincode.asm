<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$408, %rsp              # imm = 0x198
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 384(%rsp)
               	movaps	%xmm0, 368(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, 56(%rsp)
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 376(%rsp)
               	leaq	368(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 384(%rsp)
               	movb	283318(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421acb <kfun:#main(){}+0x7b>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$48, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdx
               	movq	$0, 8(%rax)
               	leaq	245885(%rip), %rcx      # 0x45db70 <ktypeglobal:MultithreadedLoopsBenchmark#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdx, 360(%rsp)
               	movq	%rdx, 392(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movq	$0, 224(%rsp)
               	leaq	192(%rsp), %r14
               	movq	288(%rbx), %rcx
               	movq	%rcx, 168(%rsp)
               	leaq	160(%rsp), %rcx
               	movq	%rcx, 288(%rbx)
               	movabsq	$38654705664, %rcx      # imm = 0x900000000
               	movq	%rcx, 176(%rsp)
               	movabsq	$42949672960020, %rcx   # imm = 0x271000000014
               	movq	%rax, 136(%rsp)
               	movq	%rcx, 48(%rax)
               	movq	%rbx, 48(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$20024, %esi            # imm = 0x4E38
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbx
               	leaq	16(%rax), %r15
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	232485(%rip), %rax      # 0x45a7e0 <ktypeglobal:kotlin.CharArray#internal>
               	movq	%rax, 16(%rbx)
               	movl	$10000, 24(%rbx)        # imm = 0x2710
               	movq	%r15, 184(%rsp)
               	xorl	%ebp, %ebp
               	cmpq	$10000, %rbp            # imm = 0x2710
               	je	0x421c12 <kfun:#main(){}+0x1c2>
               	nopl	(%rax)
               	movzbl	283025(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bf0 <kfun:#main(){}+0x1a0>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%rbx), %eax
               	cmpq	%rax, %rbp
               	jae	0x42294f <kfun:#main(){}+0xeff>
               	movq	16(%rbx), %rax
               	movw	%bp, 32(%rbx,%rbp,2)
               	addq	$1, %rbp
               	cmpq	$10000, %rbp            # imm = 0x2710
               	jne	0x421be0 <kfun:#main(){}+0x190>
               	movq	136(%rsp), %rbx
               	movq	%r15, 24(%rbx)
               	movq	%r15, %rdi
               	movq	%r14, %rsi
               	callq	0x41b880 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
               	movq	%rax, 192(%rsp)
               	movq	%rax, 32(%rbx)
               	movl	48(%rbx), %r14d
               	testl	%r14d, %r14d
               	js	0x422a84 <kfun:#main(){}+0x1034>
               	movq	48(%rsp), %rbp
               	movq	296(%rbp), %rdi
               	leaq	31(,%r14,8), %rsi
               	andq	$-8, %rsi
               	addq	$112, %rdi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r15
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	232144(%rip), %rax      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%r15)
               	movl	%r14d, 24(%r15)
               	movq	%rcx, 64(%rsp)
               	movq	%rcx, 208(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r14, 120(%rsp)
               	cmpq	%r13, %r14
               	je	0x421e04 <kfun:#main(){}+0x3b4>
               	nopw	%cs:(%rax,%rax)
               	movzbl	282817(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cc0 <kfun:#main(){}+0x270>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	271945(%rip), %rax      # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	movq	%rax, 216(%rsp)
               	callq	0x439970 <(anonymous namespace)::theState()>
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x43b360 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)>
               	testq	%rax, %rax
               	je	0x421d60 <kfun:#main(){}+0x310>
               	movq	%rax, %r12
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %r14d
               	xchgl	%r14d, 328(%rbx)
               	movq	%r12, %rdi
               	addq	$240, %rdi
               	xorl	%esi, %esi
               	leaq	107102(%rip), %rdx      # 0x43bf70 <(anonymous namespace)::workerRoutine(void*)>
               	movq	%r12, %rcx
               	callq	0x413780 <pthread_create@plt>
               	testq	%rbx, %rbx
               	je	0x421d50 <kfun:#main(){}+0x300>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%r14d, %eax
               	xchgl	%eax, (%rbx)
               	testl	%r14d, %r14d
               	jne	0x421d50 <kfun:#main(){}+0x300>
               	cmpl	$1, %eax
               	jne	0x421d50 <kfun:#main(){}+0x300>
               	movzbl	282680(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d50 <kfun:#main(){}+0x300>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	movl	(%r12), %ebx
               	movq	48(%rsp), %rbp
               	movq	120(%rsp), %r14
               	jmp	0x421d65 <kfun:#main(){}+0x315>
               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 96(%rsp)
               	movaps	%xmm0, 80(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 88(%rsp)
               	leaq	80(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 96(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	237679(%rip), %rdx      # 0x45be30 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 104(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 224(%rsp)
               	movq	88(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movl	24(%r15), %eax
               	cmpq	%rax, %r13
               	jae	0x42294f <kfun:#main(){}+0xeff>
               	movq	16(%r15), %rax
               	movq	%rcx, 32(%r15,%r13,8)
               	addq	$1, %r13
               	cmpq	%r13, %r14
               	jne	0x421cb0 <kfun:#main(){}+0x260>
               	movq	136(%rsp), %rcx
               	movq	64(%rsp), %rax
               	movq	%rax, 40(%rcx)
               	movq	168(%rsp), %rax
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 272(%rsp)
               	movaps	%xmm0, 256(%rsp)
               	movaps	%xmm0, 240(%rsp)
               	movaps	%xmm0, 224(%rsp)
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movq	$0, 288(%rsp)
               	movq	%rax, 168(%rsp)
               	leaq	160(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$73014444032, %rax      # imm = 0x1100000000
               	movq	%rax, 176(%rsp)
               	movl	48(%rcx), %ebx
               	testl	%ebx, %ebx
               	js	0x422abf <kfun:#main(){}+0x106f>
               	movq	296(%rbp), %rdi
               	leaq	31(,%rbx,8), %rsi
               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
               	andq	%rax, %rsi
               	addq	$112, %rdi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	addq	$16, %rax
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%r12)
               	movq	$0, 24(%r12)
               	leaq	231531(%rip), %rcx      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
               	movq	%rcx, 16(%r12)
               	movl	%ebx, 24(%r12)
               	movq	%rax, 192(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r12, 152(%rsp)
               	movq	%rbx, 352(%rsp)
               	cmpq	%rbx, %r13
               	je	0x422608 <kfun:#main(){}+0xbb8>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax)
               	movb	282194(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f2f <kfun:#main(){}+0x4df>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	136(%rsp), %rax
               	movq	40(%rax), %rax
               	movl	8(%rax), %ecx
               	cmpq	%rcx, %r13
               	jae	0x42294f <kfun:#main(){}+0xeff>
               	movq	16(%rax,%r13,8), %rax
               	movq	%rax, 200(%rsp)
               	movslq	8(%rax), %r15
               	movl	277410(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	cmpl	$2, %eax
               	je	0x421f76 <kfun:#main(){}+0x526>
               	leaq	277398(%rip), %rdi      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	leaq	-33969(%rip), %rsi      # 0x419ac0 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
               	callq	0x43bd70 <CallInitGlobalPossiblyLock>
               	movq	277315(%rip), %rax      # 0x465ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	16(%rax), %rbx
               	movq	%rbx, 208(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	244815(%rip), %rcx      # 0x45dc00 <ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedStringWorkers$lambda$0$FUNCTION_REFERENCE$0#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 216(%rsp)
               	movq	360(%rsp), %rcx
               	movq	%rcx, 24(%rax)
               	movl	20(%rbx), %eax
               	movl	%eax, 64(%rsp)
               	movq	$0, 328(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 312(%rsp)
               	leaq	304(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 320(%rsp)
               	leaq	328(%rsp), %rsi
               	callq	0x418f90 <WorkerLaunchpad>
               	movq	328(%rsp), %rdi
               	callq	0x426c20 <CreateStablePointer>
               	movq	%rax, 144(%rsp)
               	movq	$0, 328(%rsp)
               	callq	0x439970 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbp, %rbp
               	je	0x422090 <kfun:#main(){}+0x640>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x422090 <kfun:#main(){}+0x640>
               	cmpl	$1, %eax
               	jne	0x422090 <kfun:#main(){}+0x640>
               	movb	281847(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422090 <kfun:#main(){}+0x640>
               	movq	%rbp, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	152(%r14), %rdi
               	movq	%r15, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x4220b0 <kfun:#main(){}+0x660>
               	movq	%r15, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x4220b9 <kfun:#main(){}+0x669>
               	movl	%r15d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	movq	%r13, 120(%rsp)
               	je	0x4221e0 <kfun:#main(){}+0x790>
               	movq	(%rax), %rbp
               	cmpl	%r15d, 8(%rbp)
               	jne	0x422104 <kfun:#main(){}+0x6b4>
               	testq	%rbp, %rbp
               	jne	0x42213f <kfun:#main(){}+0x6ef>
               	jmp	0x4221e0 <kfun:#main(){}+0x790>
               	nopl	(%rax)
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x4221e0 <kfun:#main(){}+0x790>
               	cmpl	%r15d, %esi
               	je	0x422136 <kfun:#main(){}+0x6e6>
               	movq	%rbp, %rbx
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x4221e0 <kfun:#main(){}+0x790>
               	movslq	8(%rbp), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x4220f0 <kfun:#main(){}+0x6a0>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x4220ff <kfun:#main(){}+0x6af>
               	jmp	0x4221e0 <kfun:#main(){}+0x790>
               	testq	%rbx, %rbx
               	je	0x4221e0 <kfun:#main(){}+0x790>
               	movq	16(%rbp), %r15
               	movl	$1, %edi
               	movl	$104, %esi
               	callq	0x413700 <calloc@plt>
               	testq	%rax, %rax
               	je	0x4221e8 <kfun:#main(){}+0x798>
               	movq	%rax, %r13
               	movl	260(%r14), %eax
               	leal	1(%rax), %ecx
               	movl	%ecx, 260(%r14)
               	movl	$1, (%r13)
               	movl	%eax, 4(%r13)
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	leaq	16(%r13), %rdi
               	xorl	%esi, %esi
               	callq	0x413790 <pthread_mutex_init@plt>
               	movq	%r13, %rdi
               	addq	$56, %rdi
               	xorl	%esi, %esi
               	callq	0x4137a0 <pthread_cond_init@plt>
               	testq	%rbx, %rbx
               	je	0x4221eb <kfun:#main(){}+0x79b>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4221eb <kfun:#main(){}+0x79b>
               	cmpl	$1, %eax
               	jne	0x4221eb <kfun:#main(){}+0x79b>
               	movb	281518(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4221eb <kfun:#main(){}+0x79b>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x4221eb <kfun:#main(){}+0x79b>
               	nop
               	xorl	%r13d, %r13d
               	jmp	0x4224d3 <kfun:#main(){}+0xa83>
               	xorl	%r13d, %r13d
               	movl	4(%r13), %r8d
               	movslq	%r8d, %rax
               	movq	96(%r14), %rdi
               	movq	%rax, %rcx
               	orq	%rdi, %rcx
               	shrq	$32, %rcx
               	movq	%rax, 336(%rsp)
               	je	0x422221 <kfun:#main(){}+0x7d1>
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rbp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	jne	0x422237 <kfun:#main(){}+0x7e7>
               	jmp	0x42229c <kfun:#main(){}+0x84c>
               	movl	%r8d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ebp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	je	0x42229c <kfun:#main(){}+0x84c>
               	movq	(%rax), %rbx
               	cmpl	8(%rbx), %r8d
               	jne	0x422260 <kfun:#main(){}+0x810>
               	testq	%rbx, %rbx
               	jne	0x42228f <kfun:#main(){}+0x83f>
               	jmp	0x42229c <kfun:#main(){}+0x84c>
               	nop
               	movl	%ecx, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rbp, %rdx
               	jne	0x42229c <kfun:#main(){}+0x84c>
               	cmpl	%ecx, %r8d
               	je	0x42228a <kfun:#main(){}+0x83a>
               	movq	%rbx, %rsi
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x42229c <kfun:#main(){}+0x84c>
               	movslq	8(%rbx), %rcx
               	movq	%rcx, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x422250 <kfun:#main(){}+0x800>
               	movq	%rcx, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rbp, %rdx
               	je	0x42225b <kfun:#main(){}+0x80b>
               	jmp	0x42229c <kfun:#main(){}+0x84c>
               	testq	%rsi, %rsi
               	je	0x42229c <kfun:#main(){}+0x84c>
               	addq	$8, %rbx
               	movl	64(%rsp), %edi
               	jmp	0x422480 <kfun:#main(){}+0xa30>
               	movq	%r15, 344(%rsp)
               	movl	$1, %edi
               	movl	$24, %esi
               	movl	%r8d, %ebx
               	callq	0x413700 <calloc@plt>
               	movl	%ebx, 76(%rsp)
               	movq	%rax, 128(%rsp)
               	movl	%ebx, 8(%rax)
               	leaq	120(%r14), %rdi
               	movq	96(%r14), %rsi
               	movq	112(%r14), %rdx
               	movl	$1, %ecx
               	callq	0x44020a <std::__detail::_Prime_rehash_policy::_M_need_rehash(unsigned long, unsigned long, unsigned long) const>
               	testb	$1, %al
               	jne	0x4222f7 <kfun:#main(){}+0x8a7>
               	movq	88(%r14), %r12
               	movl	64(%rsp), %edi
               	movq	128(%rsp), %rcx
               	movq	%rbp, %rsi
               	jmp	0x422409 <kfun:#main(){}+0x9b9>
               	movq	%rdx, %r15
               	cmpq	$1, %rdx
               	je	0x4225f1 <kfun:#main(){}+0xba1>
               	movl	$8, %esi
               	movq	%r15, %rdi
               	callq	0x413700 <calloc@plt>
               	movq	%rax, %r12
               	leaq	(,%r15,8), %rdx
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x413750 <memset@plt>
               	movl	76(%rsp), %r8d
               	movq	104(%r14), %rbx
               	movq	$0, 104(%r14)
               	testq	%rbx, %rbx
               	je	0x4223b3 <kfun:#main(){}+0x963>
               	leaq	104(%r14), %rsi
               	xorl	%edi, %edi
               	jmp	0x422376 <kfun:#main(){}+0x926>
               	nopl	(%rax,%rax)
               	xorl	%edx, %edx
               	divl	%r15d
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	je	0x42239a <kfun:#main(){}+0x94a>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rdx,8), %rax
               	movq	%rcx, (%rax)
               	movq	%rdi, %rdx
               	movq	%rdx, %rdi
               	testq	%rbx, %rbx
               	je	0x4223b3 <kfun:#main(){}+0x963>
               	movq	%rbx, %rcx
               	movq	(%rbx), %rbx
               	movslq	8(%rcx), %rax
               	movq	%rax, %rdx
               	orq	%r15, %rdx
               	shrq	$32, %rdx
               	je	0x422350 <kfun:#main(){}+0x900>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	jne	0x42235e <kfun:#main(){}+0x90e>
               	movq	(%rsi), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, (%rsi)
               	movq	%rsi, (%r12,%rdx,8)
               	cmpq	$0, (%rcx)
               	je	0x42236e <kfun:#main(){}+0x91e>
               	movq	%rcx, (%r12,%rdi,8)
               	jmp	0x42236e <kfun:#main(){}+0x91e>
               	movq	88(%r14), %rdi
               	leaq	136(%r14), %rax
               	cmpq	%rax, %rdi
               	je	0x4223cd <kfun:#main(){}+0x97d>
               	callq	0x413730 <free@plt>
               	movl	76(%rsp), %r8d
               	movq	%r15, 96(%r14)
               	movq	%r12, 88(%r14)
               	movq	336(%rsp), %rax
               	movq	%rax, %rcx
               	orq	%r15, %rcx
               	shrq	$32, %rcx
               	je	0x4223f3 <kfun:#main(){}+0x9a3>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	%rdx, %rsi
               	jmp	0x4223fd <kfun:#main(){}+0x9ad>
               	movl	%r8d, %eax
               	xorl	%edx, %edx
               	divl	%r15d
               	movl	%edx, %esi
               	movl	64(%rsp), %edi
               	movq	128(%rsp), %rcx
               	movq	%rcx, %rbx
               	addq	$8, %rbx
               	movq	(%r12,%rsi,8), %rax
               	testq	%rax, %rax
               	movq	344(%rsp), %r15
               	je	0x422430 <kfun:#main(){}+0x9e0>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rsi,8), %rax
               	movq	%rcx, (%rax)
               	jmp	0x422473 <kfun:#main(){}+0xa23>
               	movq	%r14, %rbp
               	addq	$104, %rbp
               	movq	104(%r14), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, 104(%r14)
               	testq	%rax, %rax
               	je	0x42246f <kfun:#main(){}+0xa1f>
               	movq	96(%r14), %r8
               	movslq	8(%rax), %rax
               	movq	%rax, %rdx
               	orq	%r8, %rdx
               	shrq	$32, %rdx
               	je	0x422462 <kfun:#main(){}+0xa12>
               	xorl	%edx, %edx
               	divq	%r8
               	jmp	0x422467 <kfun:#main(){}+0xa17>
               	xorl	%edx, %edx
               	divl	%r8d
               	movq	%rcx, (%r12,%rdx,8)
               	movq	88(%r14), %r12
               	movq	%rbp, (%r12,%rsi,8)
               	addq	$1, 112(%r14)
               	movq	152(%rsp), %r12
               	movq	%r13, 8(%rbx)
               	movl	$2, 80(%rsp)
               	leaq	-3011(%rip), %rax       # 0x4218d0 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal>
               	movq	%rax, 88(%rsp)
               	movq	144(%rsp), %rax
               	movq	%rax, 96(%rsp)
               	movq	%r13, 104(%rsp)
               	movl	%edi, 112(%rsp)
               	movq	112(%rsp), %rax
               	movq	%rax, 32(%rsp)
               	movups	80(%rsp), %xmm0
               	movups	96(%rsp), %xmm1
               	movups	%xmm1, 16(%rsp)
               	movups	%xmm0, (%rsp)
               	movq	%r15, %rdi
               	callq	0x439c70 <Worker::putJob((anonymous namespace)::Job, bool)>
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x422520 <kfun:#main(){}+0xad0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422520 <kfun:#main(){}+0xad0>
               	cmpl	$1, %eax
               	jne	0x422520 <kfun:#main(){}+0xad0>
               	movb	280679(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422520 <kfun:#main(){}+0xad0>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	testq	%r13, %r13
               	movq	48(%rsp), %rbp
               	je	0x422a7f <kfun:#main(){}+0x102f>
               	movl	4(%r13), %ebx
               	movq	312(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 96(%rsp)
               	movaps	%xmm0, 80(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 88(%rsp)
               	leaq	80(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 96(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	234515(%rip), %rdx      # 0x45b9b0 <ktypeglobal:kotlin.native.concurrent.Future#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 104(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 224(%rsp)
               	movq	88(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movl	24(%r12), %eax
               	movq	120(%rsp), %r13
               	cmpq	%rax, %r13
               	jae	0x42294f <kfun:#main(){}+0xeff>
               	movq	16(%r12), %rax
               	movq	%rcx, 32(%r12,%r13,8)
               	addq	$1, %r13
               	movq	352(%rsp), %rbx
               	cmpq	%rbx, %r13
               	jne	0x421f20 <kfun:#main(){}+0x4d0>
               	jmp	0x422608 <kfun:#main(){}+0xbb8>
               	leaq	136(%r14), %r12
               	movq	$0, 136(%r14)
               	jmp	0x422326 <kfun:#main(){}+0x8d6>
               	movl	24(%r12), %eax
               	xorl	%r15d, %r15d
               	testl	%eax, %eax
               	cmovsl	%r15d, %eax
               	movq	%rax, 64(%rsp)
               	cmpq	64(%rsp), %r15
               	je	0x42292e <kfun:#main(){}+0xede>
               	nopw	%cs:(%rax,%rax)
               	movb	280386(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42263f <kfun:#main(){}+0xbef>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	32(%r12,%r15,8), %rax
               	movq	%rax, 232(%rsp)
               	movslq	8(%rax), %r12
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 96(%rsp)
               	movaps	%xmm0, 80(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 88(%rsp)
               	leaq	80(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 96(%rsp)
               	movl	275562(%rip), %eax      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	cmpl	$2, %eax
               	je	0x4226a2 <kfun:#main(){}+0xc52>
               	leaq	275550(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	leaq	-40301(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
               	callq	0x43bd70 <CallInitGlobalPossiblyLock>
               	movq	275447(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	leaq	104(%rsp), %rsi
               	callq	0x41b480 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
               	movq	%rax, %r13
               	movq	%rax, 104(%rsp)
               	callq	0x439970 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x422710 <kfun:#main(){}+0xcc0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422710 <kfun:#main(){}+0xcc0>
               	cmpl	$1, %eax
               	jne	0x422710 <kfun:#main(){}+0xcc0>
               	movb	280183(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422710 <kfun:#main(){}+0xcc0>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	96(%r14), %rdi
               	movq	%r12, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	movq	%r15, 120(%rsp)
               	je	0x422740 <kfun:#main(){}+0xcf0>
               	movq	%r12, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x422749 <kfun:#main(){}+0xcf9>
               	nopl	(%rax)
               	movl	%r12d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	88(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	xorl	%r15d, %r15d
               	testq	%rax, %rax
               	je	0x422880 <kfun:#main(){}+0xe30>
               	movq	(%rax), %rbx
               	cmpl	%r12d, 8(%rbx)
               	jne	0x422784 <kfun:#main(){}+0xd34>
               	testq	%rbx, %rbx
               	jne	0x4227be <kfun:#main(){}+0xd6e>
               	jmp	0x422880 <kfun:#main(){}+0xe30>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x422880 <kfun:#main(){}+0xe30>
               	cmpl	%r12d, %esi
               	je	0x4227b5 <kfun:#main(){}+0xd65>
               	movq	%rbx, %rbp
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x422880 <kfun:#main(){}+0xe30>
               	movslq	8(%rbx), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x422770 <kfun:#main(){}+0xd20>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x42277f <kfun:#main(){}+0xd2f>
               	jmp	0x422880 <kfun:#main(){}+0xe30>
               	testq	%rbp, %rbp
               	je	0x422880 <kfun:#main(){}+0xe30>
               	movq	16(%rbx), %r15
               	leaq	16(%r15), %rdi
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%rdi, 144(%rsp)
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x422820 <kfun:#main(){}+0xdd0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422820 <kfun:#main(){}+0xdd0>
               	cmpl	$1, %eax
               	jne	0x422820 <kfun:#main(){}+0xdd0>
               	movb	279915(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422820 <kfun:#main(){}+0xdd0>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movl	(%r15), %r15d
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	144(%rsp), %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x422880 <kfun:#main(){}+0xe30>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422880 <kfun:#main(){}+0xe30>
               	cmpl	$1, %eax
               	jne	0x422880 <kfun:#main(){}+0xe30>
               	movb	279818(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422880 <kfun:#main(){}+0xe30>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x4228d0 <kfun:#main(){}+0xe80>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4228d0 <kfun:#main(){}+0xe80>
               	cmpl	$1, %eax
               	jne	0x4228d0 <kfun:#main(){}+0xe80>
               	movb	279738(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4228d0 <kfun:#main(){}+0xe80>
               	movq	%rbx, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	cmpl	%r15d, 8(%r13)
               	movq	48(%rsp), %rbp
               	jbe	0x42294f <kfun:#main(){}+0xeff>
               	movslq	%r15d, %rax
               	movq	16(%r13,%rax,8), %rax
               	movq	%rax, 240(%rsp)
               	movq	88(%rsp), %rcx
               	movq	%rcx, 288(%rbp)
               	movl	16(%rax), %eax
               	leal	-1(%rax), %ecx
               	cmpl	$2, %ecx
               	jae	0x422954 <kfun:#main(){}+0xf04>
               	movq	120(%rsp), %r15
               	addq	$1, %r15
               	movl	%r12d, %edi
               	leaq	248(%rsp), %rsi
               	callq	0x43d180 <Kotlin_Worker_consumeFuture>
               	movq	152(%rsp), %r12
               	cmpq	64(%rsp), %r15
               	jne	0x422630 <kfun:#main(){}+0xbe0>
               	movq	376(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	addq	$408, %rsp              # imm = 0x198
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
               	testl	%eax, %eax
               	je	0x4229ca <kfun:#main(){}+0xf7a>
               	cmpl	$3, %eax
               	je	0x422a1a <kfun:#main(){}+0xfca>
               	cmpl	$4, %eax
               	jne	0x422a7a <kfun:#main(){}+0x102a>
               	leaq	280(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43d180 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230489(%rip), %rcx      # 0x45ae00 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 288(%rsp)
               	leaq	257766(%rip), %rsi      # 0x4618a0 <__unnamed_63>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bf50 <ThrowException>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230409(%rip), %rcx      # 0x45ae00 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 256(%rsp)
               	leaq	257542(%rip), %rsi      # 0x461810 <__unnamed_31>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bf50 <ThrowException>
               	leaq	264(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43d180 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230313(%rip), %rcx      # 0x45ae00 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 272(%rsp)
               	leaq	257526(%rip), %rsi      # 0x461860 <__unnamed_64>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bf50 <ThrowException>
               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230063(%rip), %rcx      # 0x45ad60 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 200(%rsp)
               	jmp	0x422af3 <kfun:#main(){}+0x10a3>
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230009(%rip), %rcx      # 0x45ad60 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 184(%rsp)
               	leaq	256438(%rip), %rsi      # 0x4614b0 <__unnamed_54>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bf50 <ThrowException>
               	jmp	0x422b5d <kfun:#main(){}+0x110d>
               	movq	%rax, %rbx
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %r15
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%r15)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%r15, %r15
               	je	0x422b60 <kfun:#main(){}+0x1110>
               	addq	$328, %r15              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%r15)
               	testl	%ebp, %ebp
               	jne	0x422b60 <kfun:#main(){}+0x1110>
               	cmpl	$1, %eax
               	jne	0x422b60 <kfun:#main(){}+0x1110>
               	movb	279081(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422b60 <kfun:#main(){}+0x1110>
               	movq	%r15, %rdi
               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x422b60 <kfun:#main(){}+0x1110>
               	movq	%rax, %rbx
               	movq	312(%rsp), %rax
               	movq	48(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	movq	%rbx, %rdi
               	callq	0x413740 <_Unwind_Resume@plt>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279018(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422b97 <kfun:#main(){}+0x1147>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ba6 <kfun:#main(){}+0x1156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274235(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278954(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422bd7 <kfun:#main(){}+0x1187>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422be6 <kfun:#main(){}+0x1196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274171(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278890(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c17 <kfun:#main(){}+0x11c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c26 <kfun:#main(){}+0x11d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274107(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278826(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c57 <kfun:#main(){}+0x1207>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c66 <kfun:#main(){}+0x1216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274043(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278762(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c97 <kfun:#main(){}+0x1247>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ca6 <kfun:#main(){}+0x1256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273979(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278698(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422cd7 <kfun:#main(){}+0x1287>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ce6 <kfun:#main(){}+0x1296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273915(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278634(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d17 <kfun:#main(){}+0x12c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d26 <kfun:#main(){}+0x12d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273851(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278570(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d57 <kfun:#main(){}+0x1307>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d66 <kfun:#main(){}+0x1316>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273787(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278506(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d97 <kfun:#main(){}+0x1347>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422da6 <kfun:#main(){}+0x1356>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273723(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278442(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422dd7 <kfun:#main(){}+0x1387>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422de6 <kfun:#main(){}+0x1396>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273659(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278378(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e17 <kfun:#main(){}+0x13c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e26 <kfun:#main(){}+0x13d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273595(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278314(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e57 <kfun:#main(){}+0x1407>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e66 <kfun:#main(){}+0x1416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273531(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278250(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e97 <kfun:#main(){}+0x1447>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ea6 <kfun:#main(){}+0x1456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273467(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278186(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ed7 <kfun:#main(){}+0x1487>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ee6 <kfun:#main(){}+0x1496>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273403(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278122(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f17 <kfun:#main(){}+0x14c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f26 <kfun:#main(){}+0x14d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273339(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278058(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f57 <kfun:#main(){}+0x1507>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f66 <kfun:#main(){}+0x1516>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273275(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277994(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f97 <kfun:#main(){}+0x1547>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422fa6 <kfun:#main(){}+0x1556>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273211(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277930(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422fd7 <kfun:#main(){}+0x1587>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422fe6 <kfun:#main(){}+0x1596>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273147(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277866(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423017 <kfun:#main(){}+0x15c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423026 <kfun:#main(){}+0x15d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273083(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277802(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423057 <kfun:#main(){}+0x1607>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423066 <kfun:#main(){}+0x1616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273019(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277738(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423097 <kfun:#main(){}+0x1647>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4230a6 <kfun:#main(){}+0x1656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272955(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277674(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4230d7 <kfun:#main(){}+0x1687>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4230e6 <kfun:#main(){}+0x1696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272891(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277610(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423117 <kfun:#main(){}+0x16c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423126 <kfun:#main(){}+0x16d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272827(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277546(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423157 <kfun:#main(){}+0x1707>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423166 <kfun:#main(){}+0x1716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272763(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277482(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423197 <kfun:#main(){}+0x1747>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4231a6 <kfun:#main(){}+0x1756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272699(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277418(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4231d7 <kfun:#main(){}+0x1787>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4231e6 <kfun:#main(){}+0x1796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272635(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277354(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423217 <kfun:#main(){}+0x17c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423226 <kfun:#main(){}+0x17d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272571(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277290(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423257 <kfun:#main(){}+0x1807>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423266 <kfun:#main(){}+0x1816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272507(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277226(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423297 <kfun:#main(){}+0x1847>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4232a6 <kfun:#main(){}+0x1856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272443(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277162(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4232d7 <kfun:#main(){}+0x1887>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4232e6 <kfun:#main(){}+0x1896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272379(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277098(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423317 <kfun:#main(){}+0x18c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423326 <kfun:#main(){}+0x18d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272315(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277034(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423357 <kfun:#main(){}+0x1907>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423366 <kfun:#main(){}+0x1916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272251(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276970(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423397 <kfun:#main(){}+0x1947>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4233a6 <kfun:#main(){}+0x1956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272187(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276906(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4233d7 <kfun:#main(){}+0x1987>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4233e6 <kfun:#main(){}+0x1996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272123(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276842(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423417 <kfun:#main(){}+0x19c7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423426 <kfun:#main(){}+0x19d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272059(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276778(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423457 <kfun:#main(){}+0x1a07>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423466 <kfun:#main(){}+0x1a16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271995(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276714(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423497 <kfun:#main(){}+0x1a47>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4234a6 <kfun:#main(){}+0x1a56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271931(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276650(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4234d7 <kfun:#main(){}+0x1a87>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4234e6 <kfun:#main(){}+0x1a96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271867(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276586(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423517 <kfun:#main(){}+0x1ac7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423526 <kfun:#main(){}+0x1ad6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271803(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276522(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423557 <kfun:#main(){}+0x1b07>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423566 <kfun:#main(){}+0x1b16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271739(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276457(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423598 <kfun:#main(){}+0x1b48>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4235c4 <kfun:#main(){}+0x1b74>
               	testl	%ebx, %ebx
               	je	0x4235cc <kfun:#main(){}+0x1b7c>
               	movq	$0, 271585(%rip)        # 0x465a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 271582(%rip)        # 0x465a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 271660(%rip)        # 0x465af0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271637(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276346(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423607 <kfun:#main(){}+0x1bb7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423616 <kfun:#main(){}+0x1bc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271563(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276282(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423647 <kfun:#main(){}+0x1bf7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423656 <kfun:#main(){}+0x1c06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271499(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276218(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423687 <kfun:#main(){}+0x1c37>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423696 <kfun:#main(){}+0x1c46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271435(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276153(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4236c8 <kfun:#main(){}+0x1c78>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4236f4 <kfun:#main(){}+0x1ca4>
               	testl	%ebx, %ebx
               	je	0x4236fc <kfun:#main(){}+0x1cac>
               	movq	$0, 271297(%rip)        # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	movq	$0, 271294(%rip)        # 0x465aa8 <kvar:kotlin.native.concurrent.FutureState.$ENTRIES#internal>
               	movl	$0, 271360(%rip)        # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271333(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276041(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423738 <kfun:#main(){}+0x1ce8>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423759 <kfun:#main(){}+0x1d09>
               	testl	%ebx, %ebx
               	je	0x423761 <kfun:#main(){}+0x1d11>
               	movq	$0, 271201(%rip)        # 0x465ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 271263(%rip)        # 0x465af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271232(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275945(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423798 <kfun:#main(){}+0x1d48>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4237b9 <kfun:#main(){}+0x1d69>
               	testl	%ebx, %ebx
               	je	0x4237c1 <kfun:#main(){}+0x1d71>
               	movq	$0, 271113(%rip)        # 0x465ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 271171(%rip)        # 0x465afc <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271136(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275850(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4237f7 <kfun:#main(){}+0x1da7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423806 <kfun:#main(){}+0x1db6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271067(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275785(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423838 <kfun:#main(){}+0x1de8>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423864 <kfun:#main(){}+0x1e14>
               	testl	%ebx, %ebx
               	je	0x42386c <kfun:#main(){}+0x1e1c>
               	movq	$0, 270961(%rip)        # 0x465ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	$0, 270958(%rip)        # 0x465ac8 <kvar:kotlin.native.concurrent.TransferMode.$ENTRIES#internal>
               	movl	$0, 271004(%rip)        # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270965(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275673(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4238a8 <kfun:#main(){}+0x1e58>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4238bf <kfun:#main(){}+0x1e6f>
               	testl	%ebx, %ebx
               	je	0x4238c7 <kfun:#main(){}+0x1e77>
               	movq	$0, 264785(%rip)        # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270874(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275578(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423907 <kfun:#main(){}+0x1eb7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423916 <kfun:#main(){}+0x1ec6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270795(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275514(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423947 <kfun:#main(){}+0x1ef7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423956 <kfun:#main(){}+0x1f06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270731(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275449(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423988 <kfun:#main(){}+0x1f38>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4239a9 <kfun:#main(){}+0x1f59>
               	testl	%ebx, %ebx
               	je	0x4239b1 <kfun:#main(){}+0x1f61>
               	movq	$0, 270641(%rip)        # 0x465ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 270683(%rip)        # 0x465b04 <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270640(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275354(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4239e7 <kfun:#main(){}+0x1f97>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4239f6 <kfun:#main(){}+0x1fa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270571(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275290(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a27 <kfun:#main(){}+0x1fd7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a36 <kfun:#main(){}+0x1fe6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270507(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275225(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a68 <kfun:#main(){}+0x2018>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423a89 <kfun:#main(){}+0x2039>
               	testl	%ebx, %ebx
               	je	0x423a91 <kfun:#main(){}+0x2041>
               	movq	$0, 270425(%rip)        # 0x465ad8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 270463(%rip)        # 0x465b08 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270416(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275130(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ac7 <kfun:#main(){}+0x2077>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ad6 <kfun:#main(){}+0x2086>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270347(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275066(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b07 <kfun:#main(){}+0x20b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b16 <kfun:#main(){}+0x20c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270283(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275002(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b47 <kfun:#main(){}+0x20f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b56 <kfun:#main(){}+0x2106>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270219(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274938(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b87 <kfun:#main(){}+0x2137>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b96 <kfun:#main(){}+0x2146>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270155(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274874(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423bc7 <kfun:#main(){}+0x2177>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423bd6 <kfun:#main(){}+0x2186>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270091(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274810(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c07 <kfun:#main(){}+0x21b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c16 <kfun:#main(){}+0x21c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270027(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274746(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c47 <kfun:#main(){}+0x21f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c56 <kfun:#main(){}+0x2206>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269963(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274682(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c87 <kfun:#main(){}+0x2237>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c96 <kfun:#main(){}+0x2246>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269899(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274618(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423cc7 <kfun:#main(){}+0x2277>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423cd6 <kfun:#main(){}+0x2286>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269835(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274554(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d07 <kfun:#main(){}+0x22b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d16 <kfun:#main(){}+0x22c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269771(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274490(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d47 <kfun:#main(){}+0x22f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d56 <kfun:#main(){}+0x2306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269707(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274426(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d87 <kfun:#main(){}+0x2337>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d96 <kfun:#main(){}+0x2346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269643(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274362(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423dc7 <kfun:#main(){}+0x2377>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423dd6 <kfun:#main(){}+0x2386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269579(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274298(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e07 <kfun:#main(){}+0x23b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e16 <kfun:#main(){}+0x23c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269515(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	274233(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e48 <kfun:#main(){}+0x23f8>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423e5f <kfun:#main(){}+0x240f>
               	testl	%ebx, %ebx
               	je	0x423e67 <kfun:#main(){}+0x2417>
               	movq	$0, 263353(%rip)        # 0x464318 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	269434(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274138(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ea7 <kfun:#main(){}+0x2457>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423eb6 <kfun:#main(){}+0x2466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269355(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	274073(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ee8 <kfun:#main(){}+0x2498>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423eff <kfun:#main(){}+0x24af>
               	testl	%ebx, %ebx
               	je	0x423f07 <kfun:#main(){}+0x24b7>
               	movq	$0, 263201(%rip)        # 0x464320 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	269274(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273978(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f47 <kfun:#main(){}+0x24f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f56 <kfun:#main(){}+0x2506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269195(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273914(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f87 <kfun:#main(){}+0x2537>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f96 <kfun:#main(){}+0x2546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269131(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	273849(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423fc8 <kfun:#main(){}+0x2578>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423fdf <kfun:#main(){}+0x258f>
               	testl	%ebx, %ebx
               	je	0x423fe7 <kfun:#main(){}+0x2597>
               	movq	$0, 262985(%rip)        # 0x464328 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	269050(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273754(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424027 <kfun:#main(){}+0x25d7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424036 <kfun:#main(){}+0x25e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268971(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273690(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424067 <kfun:#main(){}+0x2617>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424076 <kfun:#main(){}+0x2626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268907(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	273625(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4240a8 <kfun:#main(){}+0x2658>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4240c9 <kfun:#main(){}+0x2679>
               	testl	%ebx, %ebx
               	je	0x4240d1 <kfun:#main(){}+0x2681>
               	movq	$0, 268833(%rip)        # 0x465ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 268867(%rip)        # 0x465b0c <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	268816(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4267b0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273530(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424107 <kfun:#main(){}+0x26b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424116 <kfun:#main(){}+0x26c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268747(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273466(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424147 <kfun:#main(){}+0x26f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424156 <kfun:#main(){}+0x2706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268683(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273402(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424187 <kfun:#main(){}+0x2737>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424196 <kfun:#main(){}+0x2746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268619(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273338(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4241c7 <kfun:#main(){}+0x2777>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4241d6 <kfun:#main(){}+0x2786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268555(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273274(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424207 <kfun:#main(){}+0x27b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424216 <kfun:#main(){}+0x27c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268491(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273210(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424247 <kfun:#main(){}+0x27f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424256 <kfun:#main(){}+0x2806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268427(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273146(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424287 <kfun:#main(){}+0x2837>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424296 <kfun:#main(){}+0x2846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268363(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273082(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4242c7 <kfun:#main(){}+0x2877>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4242d6 <kfun:#main(){}+0x2886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268299(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273018(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424307 <kfun:#main(){}+0x28b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424316 <kfun:#main(){}+0x28c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268235(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272954(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424347 <kfun:#main(){}+0x28f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424356 <kfun:#main(){}+0x2906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268171(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272890(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424387 <kfun:#main(){}+0x2937>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424396 <kfun:#main(){}+0x2946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268107(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272826(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4243c7 <kfun:#main(){}+0x2977>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4243d6 <kfun:#main(){}+0x2986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268043(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272762(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424407 <kfun:#main(){}+0x29b7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424416 <kfun:#main(){}+0x29c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267979(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272698(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424447 <kfun:#main(){}+0x29f7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424456 <kfun:#main(){}+0x2a06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267915(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272634(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424487 <kfun:#main(){}+0x2a37>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424496 <kfun:#main(){}+0x2a46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267851(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272570(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4244c7 <kfun:#main(){}+0x2a77>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4244d6 <kfun:#main(){}+0x2a86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267787(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272506(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424507 <kfun:#main(){}+0x2ab7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424516 <kfun:#main(){}+0x2ac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267723(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272442(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424547 <kfun:#main(){}+0x2af7>
               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424556 <kfun:#main(){}+0x2b06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267659(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4267b0 <AddTLSRecord>

