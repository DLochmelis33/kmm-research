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
               	movb	279974(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4227db <kfun:#main(){}+0x7b>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$40, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdx
               	movq	$0, 8(%rax)
               	leaq	246333(%rip), %rcx      # 0x45ea40 <ktypeglobal:MultithreadedLoopsBenchmark#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdx, 360(%rsp)
               	movq	%rdx, 392(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movq	$0, 224(%rsp)
               	movq	288(%rbx), %rcx
               	movq	%rcx, 168(%rsp)
               	leaq	160(%rsp), %rcx
               	movq	%rcx, 288(%rbx)
               	movabsq	$38654705664, %rcx      # imm = 0x900000000
               	movq	%rcx, 176(%rsp)
               	movabsq	$42949672960100, %rcx   # imm = 0x271000000064
               	movq	%rax, 136(%rsp)
               	movq	%rcx, 40(%rax)
               	movq	%rbx, 48(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$80024, %esi            # imm = 0x13898
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbx
               	leaq	16(%rax), %r14
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	232957(%rip), %rax      # 0x45b6c0 <ktypeglobal:kotlin.LongArray#internal>
               	movq	%rax, 16(%rbx)
               	movl	$10000, 24(%rbx)        # imm = 0x2710
               	movq	%r14, 184(%rsp)
               	xorl	%ebp, %ebp
               	cmpq	$10000, %rbp            # imm = 0x2710
               	je	0x422922 <kfun:#main(){}+0x1c2>
               	nopw	%cs:(%rax,%rax)
               	nop
               	movzbl	279681(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422900 <kfun:#main(){}+0x1a0>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%rbx), %eax
               	cmpq	%rax, %rbp
               	jae	0x42363f <kfun:#main(){}+0xedf>
               	movq	16(%rbx), %rax
               	movq	%rbp, 32(%rbx,%rbp,8)
               	addq	$1, %rbp
               	cmpq	$10000, %rbp            # imm = 0x2710
               	jne	0x4228f0 <kfun:#main(){}+0x190>
               	movq	136(%rsp), %rax
               	movq	%r14, 24(%rax)
               	movl	40(%rax), %r14d
               	testl	%r14d, %r14d
               	js	0x423774 <kfun:#main(){}+0x1014>
               	movq	48(%rsp), %rbp
               	movq	296(%rbp), %rdi
               	leaq	31(,%r14,8), %rsi
               	andq	$-8, %rsi
               	addq	$112, %rdi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r15
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	232343(%rip), %rax      # 0x45b510 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%r15)
               	movl	%r14d, 24(%r15)
               	movq	%rcx, 64(%rsp)
               	movq	%rcx, 208(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r14, 120(%rsp)
               	cmpq	%r13, %r14
               	je	0x422af4 <kfun:#main(){}+0x394>
               	nop
               	movzbl	279505(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4229b0 <kfun:#main(){}+0x250>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	268633(%rip), %rax      # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	movq	%rax, 216(%rsp)
               	callq	0x43a660 <(anonymous namespace)::theState()>
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x43c050 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)>
               	testq	%rax, %rax
               	je	0x422a50 <kfun:#main(){}+0x2f0>
               	movq	%rax, %r12
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %r14d
               	xchgl	%r14d, 328(%rbx)
               	movq	%r12, %rdi
               	addq	$240, %rdi
               	xorl	%esi, %esi
               	leaq	107134(%rip), %rdx      # 0x43cc80 <(anonymous namespace)::workerRoutine(void*)>
               	movq	%r12, %rcx
               	callq	0x413780 <pthread_create@plt>
               	testq	%rbx, %rbx
               	je	0x422a40 <kfun:#main(){}+0x2e0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%r14d, %eax
               	xchgl	%eax, (%rbx)
               	testl	%r14d, %r14d
               	jne	0x422a40 <kfun:#main(){}+0x2e0>
               	cmpl	$1, %eax
               	jne	0x422a40 <kfun:#main(){}+0x2e0>
               	movzbl	279368(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422a40 <kfun:#main(){}+0x2e0>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	movl	(%r12), %ebx
               	movq	48(%rsp), %rbp
               	movq	120(%rsp), %r14
               	jmp	0x422a55 <kfun:#main(){}+0x2f5>
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
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	237727(%rip), %rdx      # 0x45cb50 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 104(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 224(%rsp)
               	movq	88(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movl	24(%r15), %eax
               	cmpq	%rax, %r13
               	jae	0x42363f <kfun:#main(){}+0xedf>
               	movq	16(%r15), %rax
               	movq	%rcx, 32(%r15,%r13,8)
               	addq	$1, %r13
               	cmpq	%r13, %r14
               	jne	0x4229a0 <kfun:#main(){}+0x240>
               	movq	136(%rsp), %rcx
               	movq	64(%rsp), %rax
               	movq	%rax, 32(%rcx)
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
               	movl	40(%rcx), %ebx
               	testl	%ebx, %ebx
               	js	0x4237af <kfun:#main(){}+0x104f>
               	movq	296(%rbp), %rdi
               	leaq	31(,%rbx,8), %rsi
               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
               	andq	%rax, %rsi
               	addq	$112, %rdi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	addq	$16, %rax
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%r12)
               	movq	$0, 24(%r12)
               	leaq	231739(%rip), %rcx      # 0x45b510 <ktypeglobal:kotlin.Array#internal>
               	movq	%rcx, 16(%r12)
               	movl	%ebx, 24(%r12)
               	movq	%rax, 192(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r12, 152(%rsp)
               	movq	%rbx, 352(%rsp)
               	cmpq	%rbx, %r13
               	je	0x4232f8 <kfun:#main(){}+0xb98>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax)
               	movb	278882(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c1f <kfun:#main(){}+0x4bf>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	136(%rsp), %rax
               	movq	32(%rax), %rax
               	movl	8(%rax), %ecx
               	cmpq	%rcx, %r13
               	jae	0x42363f <kfun:#main(){}+0xedf>
               	movq	16(%rax,%r13,8), %rax
               	movq	%rax, 200(%rsp)
               	movslq	8(%rax), %r15
               	movl	274098(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	cmpl	$2, %eax
               	je	0x422c66 <kfun:#main(){}+0x506>
               	leaq	274086(%rip), %rdi      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	leaq	-37489(%rip), %rsi      # 0x4199f0 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
               	callq	0x43ca60 <CallInitGlobalPossiblyLock>
               	movq	274003(%rip), %rax      # 0x465ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	16(%rax), %rbx
               	movq	%rbx, 208(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	245295(%rip), %rcx      # 0x45ead0 <ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedULongArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal>
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
               	callq	0x418ec0 <WorkerLaunchpad>
               	movq	328(%rsp), %rdi
               	callq	0x427910 <CreateStablePointer>
               	movq	%rax, 144(%rsp)
               	movq	$0, 328(%rsp)
               	callq	0x43a660 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbp, %rbp
               	je	0x422d80 <kfun:#main(){}+0x620>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x422d80 <kfun:#main(){}+0x620>
               	cmpl	$1, %eax
               	jne	0x422d80 <kfun:#main(){}+0x620>
               	movb	278535(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d80 <kfun:#main(){}+0x620>
               	movq	%rbp, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	152(%r14), %rdi
               	movq	%r15, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x422da0 <kfun:#main(){}+0x640>
               	movq	%r15, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x422da9 <kfun:#main(){}+0x649>
               	movl	%r15d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	movq	%r13, 120(%rsp)
               	je	0x422ed0 <kfun:#main(){}+0x770>
               	movq	(%rax), %rbp
               	cmpl	%r15d, 8(%rbp)
               	jne	0x422df4 <kfun:#main(){}+0x694>
               	testq	%rbp, %rbp
               	jne	0x422e2f <kfun:#main(){}+0x6cf>
               	jmp	0x422ed0 <kfun:#main(){}+0x770>
               	nopl	(%rax)
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x422ed0 <kfun:#main(){}+0x770>
               	cmpl	%r15d, %esi
               	je	0x422e26 <kfun:#main(){}+0x6c6>
               	movq	%rbp, %rbx
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x422ed0 <kfun:#main(){}+0x770>
               	movslq	8(%rbp), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x422de0 <kfun:#main(){}+0x680>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x422def <kfun:#main(){}+0x68f>
               	jmp	0x422ed0 <kfun:#main(){}+0x770>
               	testq	%rbx, %rbx
               	je	0x422ed0 <kfun:#main(){}+0x770>
               	movq	16(%rbp), %r15
               	movl	$1, %edi
               	movl	$104, %esi
               	callq	0x413700 <calloc@plt>
               	testq	%rax, %rax
               	je	0x422ed8 <kfun:#main(){}+0x778>
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
               	je	0x422edb <kfun:#main(){}+0x77b>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422edb <kfun:#main(){}+0x77b>
               	cmpl	$1, %eax
               	jne	0x422edb <kfun:#main(){}+0x77b>
               	movb	278206(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422edb <kfun:#main(){}+0x77b>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x422edb <kfun:#main(){}+0x77b>
               	nop
               	xorl	%r13d, %r13d
               	jmp	0x4231c3 <kfun:#main(){}+0xa63>
               	xorl	%r13d, %r13d
               	movl	4(%r13), %r8d
               	movslq	%r8d, %rax
               	movq	96(%r14), %rdi
               	movq	%rax, %rcx
               	orq	%rdi, %rcx
               	shrq	$32, %rcx
               	movq	%rax, 336(%rsp)
               	je	0x422f11 <kfun:#main(){}+0x7b1>
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rbp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	jne	0x422f27 <kfun:#main(){}+0x7c7>
               	jmp	0x422f8c <kfun:#main(){}+0x82c>
               	movl	%r8d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ebp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	je	0x422f8c <kfun:#main(){}+0x82c>
               	movq	(%rax), %rbx
               	cmpl	8(%rbx), %r8d
               	jne	0x422f50 <kfun:#main(){}+0x7f0>
               	testq	%rbx, %rbx
               	jne	0x422f7f <kfun:#main(){}+0x81f>
               	jmp	0x422f8c <kfun:#main(){}+0x82c>
               	nop
               	movl	%ecx, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rbp, %rdx
               	jne	0x422f8c <kfun:#main(){}+0x82c>
               	cmpl	%ecx, %r8d
               	je	0x422f7a <kfun:#main(){}+0x81a>
               	movq	%rbx, %rsi
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x422f8c <kfun:#main(){}+0x82c>
               	movslq	8(%rbx), %rcx
               	movq	%rcx, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x422f40 <kfun:#main(){}+0x7e0>
               	movq	%rcx, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rbp, %rdx
               	je	0x422f4b <kfun:#main(){}+0x7eb>
               	jmp	0x422f8c <kfun:#main(){}+0x82c>
               	testq	%rsi, %rsi
               	je	0x422f8c <kfun:#main(){}+0x82c>
               	addq	$8, %rbx
               	movl	64(%rsp), %edi
               	jmp	0x423170 <kfun:#main(){}+0xa10>
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
               	callq	0x440f1a <std::__detail::_Prime_rehash_policy::_M_need_rehash(unsigned long, unsigned long, unsigned long) const>
               	testb	$1, %al
               	jne	0x422fe7 <kfun:#main(){}+0x887>
               	movq	88(%r14), %r12
               	movl	64(%rsp), %edi
               	movq	128(%rsp), %rcx
               	movq	%rbp, %rsi
               	jmp	0x4230f9 <kfun:#main(){}+0x999>
               	movq	%rdx, %r15
               	cmpq	$1, %rdx
               	je	0x4232e1 <kfun:#main(){}+0xb81>
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
               	je	0x4230a3 <kfun:#main(){}+0x943>
               	leaq	104(%r14), %rsi
               	xorl	%edi, %edi
               	jmp	0x423066 <kfun:#main(){}+0x906>
               	nopl	(%rax,%rax)
               	xorl	%edx, %edx
               	divl	%r15d
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	je	0x42308a <kfun:#main(){}+0x92a>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rdx,8), %rax
               	movq	%rcx, (%rax)
               	movq	%rdi, %rdx
               	movq	%rdx, %rdi
               	testq	%rbx, %rbx
               	je	0x4230a3 <kfun:#main(){}+0x943>
               	movq	%rbx, %rcx
               	movq	(%rbx), %rbx
               	movslq	8(%rcx), %rax
               	movq	%rax, %rdx
               	orq	%r15, %rdx
               	shrq	$32, %rdx
               	je	0x423040 <kfun:#main(){}+0x8e0>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	jne	0x42304e <kfun:#main(){}+0x8ee>
               	movq	(%rsi), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, (%rsi)
               	movq	%rsi, (%r12,%rdx,8)
               	cmpq	$0, (%rcx)
               	je	0x42305e <kfun:#main(){}+0x8fe>
               	movq	%rcx, (%r12,%rdi,8)
               	jmp	0x42305e <kfun:#main(){}+0x8fe>
               	movq	88(%r14), %rdi
               	leaq	136(%r14), %rax
               	cmpq	%rax, %rdi
               	je	0x4230bd <kfun:#main(){}+0x95d>
               	callq	0x413730 <free@plt>
               	movl	76(%rsp), %r8d
               	movq	%r15, 96(%r14)
               	movq	%r12, 88(%r14)
               	movq	336(%rsp), %rax
               	movq	%rax, %rcx
               	orq	%r15, %rcx
               	shrq	$32, %rcx
               	je	0x4230e3 <kfun:#main(){}+0x983>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	%rdx, %rsi
               	jmp	0x4230ed <kfun:#main(){}+0x98d>
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
               	je	0x423120 <kfun:#main(){}+0x9c0>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rsi,8), %rax
               	movq	%rcx, (%rax)
               	jmp	0x423163 <kfun:#main(){}+0xa03>
               	movq	%r14, %rbp
               	addq	$104, %rbp
               	movq	104(%r14), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, 104(%r14)
               	testq	%rax, %rax
               	je	0x42315f <kfun:#main(){}+0x9ff>
               	movq	96(%r14), %r8
               	movslq	8(%rax), %rax
               	movq	%rax, %rdx
               	orq	%r8, %rdx
               	shrq	$32, %rdx
               	je	0x423152 <kfun:#main(){}+0x9f2>
               	xorl	%edx, %edx
               	divq	%r8
               	jmp	0x423157 <kfun:#main(){}+0x9f7>
               	xorl	%edx, %edx
               	divl	%r8d
               	movq	%rcx, (%r12,%rdx,8)
               	movq	88(%r14), %r12
               	movq	%rbp, (%r12,%rsi,8)
               	addq	$1, 112(%r14)
               	movq	152(%rsp), %r12
               	movq	%r13, 8(%rbx)
               	movl	$2, 80(%rsp)
               	leaq	-3203(%rip), %rax       # 0x422500 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumSharedULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal>
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
               	callq	0x43a960 <Worker::putJob((anonymous namespace)::Job, bool)>
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x423210 <kfun:#main(){}+0xab0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x423210 <kfun:#main(){}+0xab0>
               	cmpl	$1, %eax
               	jne	0x423210 <kfun:#main(){}+0xab0>
               	movb	277367(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423210 <kfun:#main(){}+0xab0>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	testq	%r13, %r13
               	movq	48(%rsp), %rbp
               	je	0x42376f <kfun:#main(){}+0x100f>
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
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	234563(%rip), %rdx      # 0x45c6d0 <ktypeglobal:kotlin.native.concurrent.Future#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 104(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 224(%rsp)
               	movq	88(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movl	24(%r12), %eax
               	movq	120(%rsp), %r13
               	cmpq	%rax, %r13
               	jae	0x42363f <kfun:#main(){}+0xedf>
               	movq	16(%r12), %rax
               	movq	%rcx, 32(%r12,%r13,8)
               	addq	$1, %r13
               	movq	352(%rsp), %rbx
               	cmpq	%rbx, %r13
               	jne	0x422c10 <kfun:#main(){}+0x4b0>
               	jmp	0x4232f8 <kfun:#main(){}+0xb98>
               	leaq	136(%r14), %r12
               	movq	$0, 136(%r14)
               	jmp	0x423016 <kfun:#main(){}+0x8b6>
               	movl	24(%r12), %eax
               	xorl	%r15d, %r15d
               	testl	%eax, %eax
               	cmovsl	%r15d, %eax
               	movq	%rax, 64(%rsp)
               	cmpq	64(%rsp), %r15
               	je	0x42361e <kfun:#main(){}+0xebe>
               	nopw	%cs:(%rax,%rax)
               	movb	277074(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42332f <kfun:#main(){}+0xbcf>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	movl	272250(%rip), %eax      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	cmpl	$2, %eax
               	je	0x423392 <kfun:#main(){}+0xc32>
               	leaq	272238(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	leaq	-43821(%rip), %rsi      # 0x418860 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
               	callq	0x43ca60 <CallInitGlobalPossiblyLock>
               	movq	272135(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	leaq	104(%rsp), %rsi
               	callq	0x41b3b0 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
               	movq	%rax, %r13
               	movq	%rax, 104(%rsp)
               	callq	0x43a660 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x423400 <kfun:#main(){}+0xca0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x423400 <kfun:#main(){}+0xca0>
               	cmpl	$1, %eax
               	jne	0x423400 <kfun:#main(){}+0xca0>
               	movb	276871(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423400 <kfun:#main(){}+0xca0>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	96(%r14), %rdi
               	movq	%r12, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	movq	%r15, 120(%rsp)
               	je	0x423430 <kfun:#main(){}+0xcd0>
               	movq	%r12, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x423439 <kfun:#main(){}+0xcd9>
               	nopl	(%rax)
               	movl	%r12d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	88(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	xorl	%r15d, %r15d
               	testq	%rax, %rax
               	je	0x423570 <kfun:#main(){}+0xe10>
               	movq	(%rax), %rbx
               	cmpl	%r12d, 8(%rbx)
               	jne	0x423474 <kfun:#main(){}+0xd14>
               	testq	%rbx, %rbx
               	jne	0x4234ae <kfun:#main(){}+0xd4e>
               	jmp	0x423570 <kfun:#main(){}+0xe10>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x423570 <kfun:#main(){}+0xe10>
               	cmpl	%r12d, %esi
               	je	0x4234a5 <kfun:#main(){}+0xd45>
               	movq	%rbx, %rbp
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x423570 <kfun:#main(){}+0xe10>
               	movslq	8(%rbx), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x423460 <kfun:#main(){}+0xd00>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x42346f <kfun:#main(){}+0xd0f>
               	jmp	0x423570 <kfun:#main(){}+0xe10>
               	testq	%rbp, %rbp
               	je	0x423570 <kfun:#main(){}+0xe10>
               	movq	16(%rbx), %r15
               	leaq	16(%r15), %rdi
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%rdi, 144(%rsp)
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x423510 <kfun:#main(){}+0xdb0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x423510 <kfun:#main(){}+0xdb0>
               	cmpl	$1, %eax
               	jne	0x423510 <kfun:#main(){}+0xdb0>
               	movb	276603(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423510 <kfun:#main(){}+0xdb0>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movl	(%r15), %r15d
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	144(%rsp), %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x423570 <kfun:#main(){}+0xe10>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x423570 <kfun:#main(){}+0xe10>
               	cmpl	$1, %eax
               	jne	0x423570 <kfun:#main(){}+0xe10>
               	movb	276506(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423570 <kfun:#main(){}+0xe10>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x4235c0 <kfun:#main(){}+0xe60>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4235c0 <kfun:#main(){}+0xe60>
               	cmpl	$1, %eax
               	jne	0x4235c0 <kfun:#main(){}+0xe60>
               	movb	276426(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4235c0 <kfun:#main(){}+0xe60>
               	movq	%rbx, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	cmpl	%r15d, 8(%r13)
               	movq	48(%rsp), %rbp
               	jbe	0x42363f <kfun:#main(){}+0xedf>
               	movslq	%r15d, %rax
               	movq	16(%r13,%rax,8), %rax
               	movq	%rax, 240(%rsp)
               	movq	88(%rsp), %rcx
               	movq	%rcx, 288(%rbp)
               	movl	16(%rax), %eax
               	leal	-1(%rax), %ecx
               	cmpl	$2, %ecx
               	jae	0x423644 <kfun:#main(){}+0xee4>
               	movq	120(%rsp), %r15
               	addq	$1, %r15
               	movl	%r12d, %edi
               	leaq	248(%rsp), %rsi
               	callq	0x43de90 <Kotlin_Worker_consumeFuture>
               	movq	152(%rsp), %r12
               	cmpq	64(%rsp), %r15
               	jne	0x423320 <kfun:#main(){}+0xbc0>
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
               	callq	0x41aa00 <ThrowArrayIndexOutOfBoundsException>
               	testl	%eax, %eax
               	je	0x4236ba <kfun:#main(){}+0xf5a>
               	cmpl	$3, %eax
               	je	0x42370a <kfun:#main(){}+0xfaa>
               	cmpl	$4, %eax
               	jne	0x42376a <kfun:#main(){}+0x100a>
               	leaq	280(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43de90 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230841(%rip), %rcx      # 0x45bc50 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 288(%rsp)
               	leaq	254422(%rip), %rsi      # 0x461880 <__unnamed_65>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cc60 <ThrowException>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230761(%rip), %rcx      # 0x45bc50 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 256(%rsp)
               	leaq	254198(%rip), %rsi      # 0x4617f0 <__unnamed_31>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cc60 <ThrowException>
               	leaq	264(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43de90 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230665(%rip), %rcx      # 0x45bc50 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 272(%rsp)
               	leaq	254182(%rip), %rsi      # 0x461840 <__unnamed_66>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cc60 <ThrowException>
               	callq	0x41b310 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
               	callq	0x418d20 <ThrowWorkerAlreadyTerminated>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230415(%rip), %rcx      # 0x45bbb0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 200(%rsp)
               	jmp	0x4237e3 <kfun:#main(){}+0x1083>
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230361(%rip), %rcx      # 0x45bbb0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 184(%rsp)
               	leaq	253094(%rip), %rsi      # 0x461490 <__unnamed_54>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cc60 <ThrowException>
               	jmp	0x42384d <kfun:#main(){}+0x10ed>
               	movq	%rax, %rbx
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %r15
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%r15)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%r15, %r15
               	je	0x423850 <kfun:#main(){}+0x10f0>
               	addq	$328, %r15              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%r15)
               	testl	%ebp, %ebp
               	jne	0x423850 <kfun:#main(){}+0x10f0>
               	cmpl	$1, %eax
               	jne	0x423850 <kfun:#main(){}+0x10f0>
               	movb	275769(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423850 <kfun:#main(){}+0x10f0>
               	movq	%r15, %rdi
               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x423850 <kfun:#main(){}+0x10f0>
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
               	movb	275706(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423887 <kfun:#main(){}+0x1127>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423896 <kfun:#main(){}+0x1136>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270923(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275642(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4238c7 <kfun:#main(){}+0x1167>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4238d6 <kfun:#main(){}+0x1176>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270859(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275578(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423907 <kfun:#main(){}+0x11a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423916 <kfun:#main(){}+0x11b6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275514(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423947 <kfun:#main(){}+0x11e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423956 <kfun:#main(){}+0x11f6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275450(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423987 <kfun:#main(){}+0x1227>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423996 <kfun:#main(){}+0x1236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270667(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275386(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4239c7 <kfun:#main(){}+0x1267>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4239d6 <kfun:#main(){}+0x1276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270603(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275322(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a07 <kfun:#main(){}+0x12a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a16 <kfun:#main(){}+0x12b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270539(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275258(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a47 <kfun:#main(){}+0x12e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a56 <kfun:#main(){}+0x12f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270475(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275194(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a87 <kfun:#main(){}+0x1327>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a96 <kfun:#main(){}+0x1336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270411(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275130(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ac7 <kfun:#main(){}+0x1367>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ad6 <kfun:#main(){}+0x1376>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275066(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b07 <kfun:#main(){}+0x13a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b16 <kfun:#main(){}+0x13b6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275002(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b47 <kfun:#main(){}+0x13e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b56 <kfun:#main(){}+0x13f6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274938(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b87 <kfun:#main(){}+0x1427>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b96 <kfun:#main(){}+0x1436>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274874(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423bc7 <kfun:#main(){}+0x1467>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423bd6 <kfun:#main(){}+0x1476>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274810(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c07 <kfun:#main(){}+0x14a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c16 <kfun:#main(){}+0x14b6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274746(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c47 <kfun:#main(){}+0x14e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c56 <kfun:#main(){}+0x14f6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274682(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c87 <kfun:#main(){}+0x1527>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c96 <kfun:#main(){}+0x1536>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274618(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423cc7 <kfun:#main(){}+0x1567>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423cd6 <kfun:#main(){}+0x1576>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274554(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d07 <kfun:#main(){}+0x15a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d16 <kfun:#main(){}+0x15b6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274490(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d47 <kfun:#main(){}+0x15e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d56 <kfun:#main(){}+0x15f6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274426(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d87 <kfun:#main(){}+0x1627>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d96 <kfun:#main(){}+0x1636>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274362(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423dc7 <kfun:#main(){}+0x1667>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423dd6 <kfun:#main(){}+0x1676>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274298(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e07 <kfun:#main(){}+0x16a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e16 <kfun:#main(){}+0x16b6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274234(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e47 <kfun:#main(){}+0x16e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e56 <kfun:#main(){}+0x16f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269451(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274170(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e87 <kfun:#main(){}+0x1727>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e96 <kfun:#main(){}+0x1736>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269387(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274106(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ec7 <kfun:#main(){}+0x1767>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ed6 <kfun:#main(){}+0x1776>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269323(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274042(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f07 <kfun:#main(){}+0x17a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f16 <kfun:#main(){}+0x17b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269259(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273978(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f47 <kfun:#main(){}+0x17e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f56 <kfun:#main(){}+0x17f6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273914(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f87 <kfun:#main(){}+0x1827>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f96 <kfun:#main(){}+0x1836>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273850(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423fc7 <kfun:#main(){}+0x1867>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423fd6 <kfun:#main(){}+0x1876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269067(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273786(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424007 <kfun:#main(){}+0x18a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424016 <kfun:#main(){}+0x18b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269003(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273722(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424047 <kfun:#main(){}+0x18e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424056 <kfun:#main(){}+0x18f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268939(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273658(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424087 <kfun:#main(){}+0x1927>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424096 <kfun:#main(){}+0x1936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268875(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273594(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4240c7 <kfun:#main(){}+0x1967>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4240d6 <kfun:#main(){}+0x1976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268811(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273530(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424107 <kfun:#main(){}+0x19a7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424116 <kfun:#main(){}+0x19b6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273466(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424147 <kfun:#main(){}+0x19e7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424156 <kfun:#main(){}+0x19f6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273402(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424187 <kfun:#main(){}+0x1a27>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424196 <kfun:#main(){}+0x1a36>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273338(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4241c7 <kfun:#main(){}+0x1a67>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4241d6 <kfun:#main(){}+0x1a76>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273274(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424207 <kfun:#main(){}+0x1aa7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424216 <kfun:#main(){}+0x1ab6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273210(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424247 <kfun:#main(){}+0x1ae7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424256 <kfun:#main(){}+0x1af6>
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
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	273145(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424288 <kfun:#main(){}+0x1b28>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4242b4 <kfun:#main(){}+0x1b54>
               	testl	%ebx, %ebx
               	je	0x4242bc <kfun:#main(){}+0x1b5c>
               	movq	$0, 268273(%rip)        # 0x465a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 268270(%rip)        # 0x465a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 268348(%rip)        # 0x465af0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	268325(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273034(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4242f7 <kfun:#main(){}+0x1b97>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424306 <kfun:#main(){}+0x1ba6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268251(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272970(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424337 <kfun:#main(){}+0x1bd7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424346 <kfun:#main(){}+0x1be6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268187(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272906(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424377 <kfun:#main(){}+0x1c17>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424386 <kfun:#main(){}+0x1c26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268123(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	272841(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4243b8 <kfun:#main(){}+0x1c58>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4243e4 <kfun:#main(){}+0x1c84>
               	testl	%ebx, %ebx
               	je	0x4243ec <kfun:#main(){}+0x1c8c>
               	movq	$0, 267985(%rip)        # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	movq	$0, 267982(%rip)        # 0x465aa8 <kvar:kotlin.native.concurrent.FutureState.$ENTRIES#internal>
               	movl	$0, 268048(%rip)        # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	268021(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	272729(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424428 <kfun:#main(){}+0x1cc8>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424449 <kfun:#main(){}+0x1ce9>
               	testl	%ebx, %ebx
               	je	0x424451 <kfun:#main(){}+0x1cf1>
               	movq	$0, 267889(%rip)        # 0x465ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 267951(%rip)        # 0x465af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	267920(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	272633(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424488 <kfun:#main(){}+0x1d28>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4244a9 <kfun:#main(){}+0x1d49>
               	testl	%ebx, %ebx
               	je	0x4244b1 <kfun:#main(){}+0x1d51>
               	movq	$0, 267801(%rip)        # 0x465ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 267859(%rip)        # 0x465afc <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	267824(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272538(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4244e7 <kfun:#main(){}+0x1d87>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4244f6 <kfun:#main(){}+0x1d96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267755(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	272473(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424528 <kfun:#main(){}+0x1dc8>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424554 <kfun:#main(){}+0x1df4>
               	testl	%ebx, %ebx
               	je	0x42455c <kfun:#main(){}+0x1dfc>
               	movq	$0, 267649(%rip)        # 0x465ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	$0, 267646(%rip)        # 0x465ac8 <kvar:kotlin.native.concurrent.TransferMode.$ENTRIES#internal>
               	movl	$0, 267692(%rip)        # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	267653(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	272361(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424598 <kfun:#main(){}+0x1e38>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4245af <kfun:#main(){}+0x1e4f>
               	testl	%ebx, %ebx
               	je	0x4245b7 <kfun:#main(){}+0x1e57>
               	movq	$0, 261473(%rip)        # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	267562(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272266(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4245f7 <kfun:#main(){}+0x1e97>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424606 <kfun:#main(){}+0x1ea6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267483(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272202(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424637 <kfun:#main(){}+0x1ed7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424646 <kfun:#main(){}+0x1ee6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267419(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	272137(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424678 <kfun:#main(){}+0x1f18>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424699 <kfun:#main(){}+0x1f39>
               	testl	%ebx, %ebx
               	je	0x4246a1 <kfun:#main(){}+0x1f41>
               	movq	$0, 267329(%rip)        # 0x465ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 267371(%rip)        # 0x465b04 <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	267328(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	272042(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4246d7 <kfun:#main(){}+0x1f77>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4246e6 <kfun:#main(){}+0x1f86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267259(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271978(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424717 <kfun:#main(){}+0x1fb7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424726 <kfun:#main(){}+0x1fc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267195(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	271913(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424758 <kfun:#main(){}+0x1ff8>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424779 <kfun:#main(){}+0x2019>
               	testl	%ebx, %ebx
               	je	0x424781 <kfun:#main(){}+0x2021>
               	movq	$0, 267113(%rip)        # 0x465ad8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 267151(%rip)        # 0x465b08 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	267104(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271818(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4247b7 <kfun:#main(){}+0x2057>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4247c6 <kfun:#main(){}+0x2066>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267035(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271754(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4247f7 <kfun:#main(){}+0x2097>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424806 <kfun:#main(){}+0x20a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266971(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271690(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424837 <kfun:#main(){}+0x20d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424846 <kfun:#main(){}+0x20e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266907(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271626(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424877 <kfun:#main(){}+0x2117>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424886 <kfun:#main(){}+0x2126>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266843(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271562(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4248b7 <kfun:#main(){}+0x2157>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4248c6 <kfun:#main(){}+0x2166>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266779(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271498(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4248f7 <kfun:#main(){}+0x2197>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424906 <kfun:#main(){}+0x21a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266715(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271434(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424937 <kfun:#main(){}+0x21d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424946 <kfun:#main(){}+0x21e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266651(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271370(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424977 <kfun:#main(){}+0x2217>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424986 <kfun:#main(){}+0x2226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266587(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271306(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4249b7 <kfun:#main(){}+0x2257>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4249c6 <kfun:#main(){}+0x2266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266523(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271242(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4249f7 <kfun:#main(){}+0x2297>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424a06 <kfun:#main(){}+0x22a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266459(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271178(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424a37 <kfun:#main(){}+0x22d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424a46 <kfun:#main(){}+0x22e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266395(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271114(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424a77 <kfun:#main(){}+0x2317>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424a86 <kfun:#main(){}+0x2326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266331(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271050(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424ab7 <kfun:#main(){}+0x2357>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424ac6 <kfun:#main(){}+0x2366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266267(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270986(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424af7 <kfun:#main(){}+0x2397>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424b06 <kfun:#main(){}+0x23a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266203(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	270921(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424b38 <kfun:#main(){}+0x23d8>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424b4f <kfun:#main(){}+0x23ef>
               	testl	%ebx, %ebx
               	je	0x424b57 <kfun:#main(){}+0x23f7>
               	movq	$0, 260041(%rip)        # 0x464318 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	266122(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270826(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424b97 <kfun:#main(){}+0x2437>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424ba6 <kfun:#main(){}+0x2446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266043(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	270761(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424bd8 <kfun:#main(){}+0x2478>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424bef <kfun:#main(){}+0x248f>
               	testl	%ebx, %ebx
               	je	0x424bf7 <kfun:#main(){}+0x2497>
               	movq	$0, 259889(%rip)        # 0x464320 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	265962(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270666(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424c37 <kfun:#main(){}+0x24d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424c46 <kfun:#main(){}+0x24e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265883(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270602(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424c77 <kfun:#main(){}+0x2517>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424c86 <kfun:#main(){}+0x2526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265819(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	270537(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424cb8 <kfun:#main(){}+0x2558>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424ccf <kfun:#main(){}+0x256f>
               	testl	%ebx, %ebx
               	je	0x424cd7 <kfun:#main(){}+0x2577>
               	movq	$0, 259673(%rip)        # 0x464328 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	265738(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270442(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424d17 <kfun:#main(){}+0x25b7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424d26 <kfun:#main(){}+0x25c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265659(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270378(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424d57 <kfun:#main(){}+0x25f7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424d66 <kfun:#main(){}+0x2606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265595(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	270313(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424d98 <kfun:#main(){}+0x2638>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424db9 <kfun:#main(){}+0x2659>
               	testl	%ebx, %ebx
               	je	0x424dc1 <kfun:#main(){}+0x2661>
               	movq	$0, 265521(%rip)        # 0x465ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 265555(%rip)        # 0x465b0c <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	265504(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4274a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270218(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424df7 <kfun:#main(){}+0x2697>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424e06 <kfun:#main(){}+0x26a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265435(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270154(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424e37 <kfun:#main(){}+0x26d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424e46 <kfun:#main(){}+0x26e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265371(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270090(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424e77 <kfun:#main(){}+0x2717>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424e86 <kfun:#main(){}+0x2726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265307(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270026(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424eb7 <kfun:#main(){}+0x2757>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424ec6 <kfun:#main(){}+0x2766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265243(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269962(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424ef7 <kfun:#main(){}+0x2797>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424f06 <kfun:#main(){}+0x27a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265179(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269898(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424f37 <kfun:#main(){}+0x27d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424f46 <kfun:#main(){}+0x27e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265115(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269834(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424f77 <kfun:#main(){}+0x2817>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424f86 <kfun:#main(){}+0x2826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265051(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269770(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424fb7 <kfun:#main(){}+0x2857>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424fc6 <kfun:#main(){}+0x2866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264987(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269706(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424ff7 <kfun:#main(){}+0x2897>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425006 <kfun:#main(){}+0x28a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264923(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269642(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425037 <kfun:#main(){}+0x28d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425046 <kfun:#main(){}+0x28e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264859(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269578(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425077 <kfun:#main(){}+0x2917>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425086 <kfun:#main(){}+0x2926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264795(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269514(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4250b7 <kfun:#main(){}+0x2957>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4250c6 <kfun:#main(){}+0x2966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264731(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269450(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4250f7 <kfun:#main(){}+0x2997>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425106 <kfun:#main(){}+0x29a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264667(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269386(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425137 <kfun:#main(){}+0x29d7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425146 <kfun:#main(){}+0x29e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264603(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269322(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425177 <kfun:#main(){}+0x2a17>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425186 <kfun:#main(){}+0x2a26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264539(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269258(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4251b7 <kfun:#main(){}+0x2a57>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4251c6 <kfun:#main(){}+0x2a66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264475(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269194(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4251f7 <kfun:#main(){}+0x2a97>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425206 <kfun:#main(){}+0x2aa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264411(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269130(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425237 <kfun:#main(){}+0x2ad7>
               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425246 <kfun:#main(){}+0x2ae6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264347(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4274a0 <AddTLSRecord>

