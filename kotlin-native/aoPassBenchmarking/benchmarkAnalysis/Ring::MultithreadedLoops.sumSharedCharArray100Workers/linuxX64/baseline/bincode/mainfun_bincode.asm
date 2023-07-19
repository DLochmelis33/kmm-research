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
               	movb	283958(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42184b <kfun:#main(){}+0x7b>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$40, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdx
               	movq	$0, 8(%rax)
               	leaq	246525(%rip), %rcx      # 0x45db70 <ktypeglobal:MultithreadedLoopsBenchmark#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdx, 360(%rsp)
               	movq	%rdx, 392(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movq	288(%rbx), %rcx
               	movq	%rcx, 168(%rsp)
               	leaq	160(%rsp), %rcx
               	movq	%rcx, 288(%rbx)
               	movabsq	$34359738368, %rcx      # imm = 0x800000000
               	movq	%rcx, 176(%rsp)
               	movabsq	$42949672960100, %rcx   # imm = 0x271000000064
               	movq	%rax, 136(%rsp)
               	movq	%rcx, 40(%rax)
               	movq	%rbx, 48(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$20024, %esi            # imm = 0x4E38
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbx
               	leaq	16(%rax), %r14
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	233145(%rip), %rax      # 0x45a7e0 <ktypeglobal:kotlin.CharArray#internal>
               	movq	%rax, 16(%rbx)
               	movl	$10000, 24(%rbx)        # imm = 0x2710
               	movq	%r14, 184(%rsp)
               	xorl	%ebp, %ebp
               	cmpq	$10000, %rbp            # imm = 0x2710
               	je	0x421982 <kfun:#main(){}+0x1b2>
               	nopl	(%rax)
               	movzbl	283681(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421960 <kfun:#main(){}+0x190>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%rbx), %eax
               	cmpq	%rax, %rbp
               	jae	0x42269f <kfun:#main(){}+0xecf>
               	movq	16(%rbx), %rax
               	movw	%bp, 32(%rbx,%rbp,2)
               	addq	$1, %rbp
               	cmpq	$10000, %rbp            # imm = 0x2710
               	jne	0x421950 <kfun:#main(){}+0x180>
               	movq	136(%rsp), %rax
               	movq	%r14, 24(%rax)
               	movl	40(%rax), %r14d
               	testl	%r14d, %r14d
               	js	0x4227d4 <kfun:#main(){}+0x1004>
               	movq	48(%rsp), %rbp
               	movq	296(%rbp), %rdi
               	leaq	31(,%r14,8), %rsi
               	andq	$-8, %rsi
               	addq	$112, %rdi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r15
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	232823(%rip), %rax      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%r15)
               	movl	%r14d, 24(%r15)
               	movq	%rcx, 64(%rsp)
               	movq	%rcx, 200(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r14, 120(%rsp)
               	cmpq	%r13, %r14
               	je	0x421b54 <kfun:#main(){}+0x384>
               	nop
               	movzbl	283505(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a10 <kfun:#main(){}+0x240>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	272633(%rip), %rax      # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	movq	%rax, 208(%rsp)
               	callq	0x4396c0 <(anonymous namespace)::theState()>
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x43b0b0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)>
               	testq	%rax, %rax
               	je	0x421ab0 <kfun:#main(){}+0x2e0>
               	movq	%rax, %r12
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %r14d
               	xchgl	%r14d, 328(%rbx)
               	movq	%r12, %rdi
               	addq	$240, %rdi
               	xorl	%esi, %esi
               	leaq	107102(%rip), %rdx      # 0x43bcc0 <(anonymous namespace)::workerRoutine(void*)>
               	movq	%r12, %rcx
               	callq	0x413780 <pthread_create@plt>
               	testq	%rbx, %rbx
               	je	0x421aa0 <kfun:#main(){}+0x2d0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%r14d, %eax
               	xchgl	%eax, (%rbx)
               	testl	%r14d, %r14d
               	jne	0x421aa0 <kfun:#main(){}+0x2d0>
               	cmpl	$1, %eax
               	jne	0x421aa0 <kfun:#main(){}+0x2d0>
               	movzbl	283368(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421aa0 <kfun:#main(){}+0x2d0>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	movl	(%r12), %ebx
               	movq	48(%rsp), %rbp
               	movq	120(%rsp), %r14
               	jmp	0x421ab5 <kfun:#main(){}+0x2e5>
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
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	238367(%rip), %rdx      # 0x45be30 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 104(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 216(%rsp)
               	movq	88(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movl	24(%r15), %eax
               	cmpq	%rax, %r13
               	jae	0x42269f <kfun:#main(){}+0xecf>
               	movq	16(%r15), %rax
               	movq	%rcx, 32(%r15,%r13,8)
               	addq	$1, %r13
               	cmpq	%r13, %r14
               	jne	0x421a00 <kfun:#main(){}+0x230>
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
               	js	0x42280f <kfun:#main(){}+0x103f>
               	movq	296(%rbp), %rdi
               	leaq	31(,%rbx,8), %rsi
               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
               	andq	%rax, %rsi
               	addq	$112, %rdi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	addq	$16, %rax
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%r12)
               	movq	$0, 24(%r12)
               	leaq	232219(%rip), %rcx      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
               	movq	%rcx, 16(%r12)
               	movl	%ebx, 24(%r12)
               	movq	%rax, 192(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r12, 152(%rsp)
               	movq	%rbx, 352(%rsp)
               	cmpq	%rbx, %r13
               	je	0x422358 <kfun:#main(){}+0xb88>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax)
               	movb	282882(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c7f <kfun:#main(){}+0x4af>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	136(%rsp), %rax
               	movq	32(%rax), %rax
               	movl	8(%rax), %ecx
               	cmpq	%rcx, %r13
               	jae	0x42269f <kfun:#main(){}+0xecf>
               	movq	16(%rax,%r13,8), %rax
               	movq	%rax, 200(%rsp)
               	movslq	8(%rax), %r15
               	movl	278098(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	cmpl	$2, %eax
               	je	0x421cc6 <kfun:#main(){}+0x4f6>
               	leaq	278086(%rip), %rdi      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	leaq	-33281(%rip), %rsi      # 0x419ac0 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
               	callq	0x43bac0 <CallInitGlobalPossiblyLock>
               	movq	278003(%rip), %rax      # 0x465ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	16(%rax), %rbx
               	movq	%rbx, 208(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	245503(%rip), %rcx      # 0x45dc00 <ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedCharArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal>
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
               	callq	0x426970 <CreateStablePointer>
               	movq	%rax, 144(%rsp)
               	movq	$0, 328(%rsp)
               	callq	0x4396c0 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbp, %rbp
               	je	0x421de0 <kfun:#main(){}+0x610>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x421de0 <kfun:#main(){}+0x610>
               	cmpl	$1, %eax
               	jne	0x421de0 <kfun:#main(){}+0x610>
               	movb	282535(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421de0 <kfun:#main(){}+0x610>
               	movq	%rbp, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	152(%r14), %rdi
               	movq	%r15, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x421e00 <kfun:#main(){}+0x630>
               	movq	%r15, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x421e09 <kfun:#main(){}+0x639>
               	movl	%r15d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	movq	%r13, 120(%rsp)
               	je	0x421f30 <kfun:#main(){}+0x760>
               	movq	(%rax), %rbp
               	cmpl	%r15d, 8(%rbp)
               	jne	0x421e54 <kfun:#main(){}+0x684>
               	testq	%rbp, %rbp
               	jne	0x421e8f <kfun:#main(){}+0x6bf>
               	jmp	0x421f30 <kfun:#main(){}+0x760>
               	nopl	(%rax)
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x421f30 <kfun:#main(){}+0x760>
               	cmpl	%r15d, %esi
               	je	0x421e86 <kfun:#main(){}+0x6b6>
               	movq	%rbp, %rbx
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x421f30 <kfun:#main(){}+0x760>
               	movslq	8(%rbp), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x421e40 <kfun:#main(){}+0x670>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x421e4f <kfun:#main(){}+0x67f>
               	jmp	0x421f30 <kfun:#main(){}+0x760>
               	testq	%rbx, %rbx
               	je	0x421f30 <kfun:#main(){}+0x760>
               	movq	16(%rbp), %r15
               	movl	$1, %edi
               	movl	$104, %esi
               	callq	0x413700 <calloc@plt>
               	testq	%rax, %rax
               	je	0x421f38 <kfun:#main(){}+0x768>
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
               	je	0x421f3b <kfun:#main(){}+0x76b>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x421f3b <kfun:#main(){}+0x76b>
               	cmpl	$1, %eax
               	jne	0x421f3b <kfun:#main(){}+0x76b>
               	movb	282206(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f3b <kfun:#main(){}+0x76b>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x421f3b <kfun:#main(){}+0x76b>
               	nop
               	xorl	%r13d, %r13d
               	jmp	0x422223 <kfun:#main(){}+0xa53>
               	xorl	%r13d, %r13d
               	movl	4(%r13), %r8d
               	movslq	%r8d, %rax
               	movq	96(%r14), %rdi
               	movq	%rax, %rcx
               	orq	%rdi, %rcx
               	shrq	$32, %rcx
               	movq	%rax, 336(%rsp)
               	je	0x421f71 <kfun:#main(){}+0x7a1>
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rbp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	jne	0x421f87 <kfun:#main(){}+0x7b7>
               	jmp	0x421fec <kfun:#main(){}+0x81c>
               	movl	%r8d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ebp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	je	0x421fec <kfun:#main(){}+0x81c>
               	movq	(%rax), %rbx
               	cmpl	8(%rbx), %r8d
               	jne	0x421fb0 <kfun:#main(){}+0x7e0>
               	testq	%rbx, %rbx
               	jne	0x421fdf <kfun:#main(){}+0x80f>
               	jmp	0x421fec <kfun:#main(){}+0x81c>
               	nop
               	movl	%ecx, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rbp, %rdx
               	jne	0x421fec <kfun:#main(){}+0x81c>
               	cmpl	%ecx, %r8d
               	je	0x421fda <kfun:#main(){}+0x80a>
               	movq	%rbx, %rsi
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x421fec <kfun:#main(){}+0x81c>
               	movslq	8(%rbx), %rcx
               	movq	%rcx, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x421fa0 <kfun:#main(){}+0x7d0>
               	movq	%rcx, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rbp, %rdx
               	je	0x421fab <kfun:#main(){}+0x7db>
               	jmp	0x421fec <kfun:#main(){}+0x81c>
               	testq	%rsi, %rsi
               	je	0x421fec <kfun:#main(){}+0x81c>
               	addq	$8, %rbx
               	movl	64(%rsp), %edi
               	jmp	0x4221d0 <kfun:#main(){}+0xa00>
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
               	callq	0x43ff5a <std::__detail::_Prime_rehash_policy::_M_need_rehash(unsigned long, unsigned long, unsigned long) const>
               	testb	$1, %al
               	jne	0x422047 <kfun:#main(){}+0x877>
               	movq	88(%r14), %r12
               	movl	64(%rsp), %edi
               	movq	128(%rsp), %rcx
               	movq	%rbp, %rsi
               	jmp	0x422159 <kfun:#main(){}+0x989>
               	movq	%rdx, %r15
               	cmpq	$1, %rdx
               	je	0x422341 <kfun:#main(){}+0xb71>
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
               	je	0x422103 <kfun:#main(){}+0x933>
               	leaq	104(%r14), %rsi
               	xorl	%edi, %edi
               	jmp	0x4220c6 <kfun:#main(){}+0x8f6>
               	nopl	(%rax,%rax)
               	xorl	%edx, %edx
               	divl	%r15d
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	je	0x4220ea <kfun:#main(){}+0x91a>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rdx,8), %rax
               	movq	%rcx, (%rax)
               	movq	%rdi, %rdx
               	movq	%rdx, %rdi
               	testq	%rbx, %rbx
               	je	0x422103 <kfun:#main(){}+0x933>
               	movq	%rbx, %rcx
               	movq	(%rbx), %rbx
               	movslq	8(%rcx), %rax
               	movq	%rax, %rdx
               	orq	%r15, %rdx
               	shrq	$32, %rdx
               	je	0x4220a0 <kfun:#main(){}+0x8d0>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	jne	0x4220ae <kfun:#main(){}+0x8de>
               	movq	(%rsi), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, (%rsi)
               	movq	%rsi, (%r12,%rdx,8)
               	cmpq	$0, (%rcx)
               	je	0x4220be <kfun:#main(){}+0x8ee>
               	movq	%rcx, (%r12,%rdi,8)
               	jmp	0x4220be <kfun:#main(){}+0x8ee>
               	movq	88(%r14), %rdi
               	leaq	136(%r14), %rax
               	cmpq	%rax, %rdi
               	je	0x42211d <kfun:#main(){}+0x94d>
               	callq	0x413730 <free@plt>
               	movl	76(%rsp), %r8d
               	movq	%r15, 96(%r14)
               	movq	%r12, 88(%r14)
               	movq	336(%rsp), %rax
               	movq	%rax, %rcx
               	orq	%r15, %rcx
               	shrq	$32, %rcx
               	je	0x422143 <kfun:#main(){}+0x973>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	%rdx, %rsi
               	jmp	0x42214d <kfun:#main(){}+0x97d>
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
               	je	0x422180 <kfun:#main(){}+0x9b0>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rsi,8), %rax
               	movq	%rcx, (%rax)
               	jmp	0x4221c3 <kfun:#main(){}+0x9f3>
               	movq	%r14, %rbp
               	addq	$104, %rbp
               	movq	104(%r14), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, 104(%r14)
               	testq	%rax, %rax
               	je	0x4221bf <kfun:#main(){}+0x9ef>
               	movq	96(%r14), %r8
               	movslq	8(%rax), %rax
               	movq	%rax, %rdx
               	orq	%r8, %rdx
               	shrq	$32, %rdx
               	je	0x4221b2 <kfun:#main(){}+0x9e2>
               	xorl	%edx, %edx
               	divq	%r8
               	jmp	0x4221b7 <kfun:#main(){}+0x9e7>
               	xorl	%edx, %edx
               	divl	%r8d
               	movq	%rcx, (%r12,%rdx,8)
               	movq	88(%r14), %r12
               	movq	%rbp, (%r12,%rsi,8)
               	addq	$1, 112(%r14)
               	movq	152(%rsp), %r12
               	movq	%r13, 8(%rbx)
               	movl	$2, 80(%rsp)
               	leaq	-2947(%rip), %rax       # 0x421660 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedCharArrayWorkers$lambda$1#static(kotlin.CharArray){}kotlin.Long#internal>
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
               	callq	0x4399c0 <Worker::putJob((anonymous namespace)::Job, bool)>
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x422270 <kfun:#main(){}+0xaa0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422270 <kfun:#main(){}+0xaa0>
               	cmpl	$1, %eax
               	jne	0x422270 <kfun:#main(){}+0xaa0>
               	movb	281367(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422270 <kfun:#main(){}+0xaa0>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	testq	%r13, %r13
               	movq	48(%rsp), %rbp
               	je	0x4227cf <kfun:#main(){}+0xfff>
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
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	235203(%rip), %rdx      # 0x45b9b0 <ktypeglobal:kotlin.native.concurrent.Future#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 104(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 224(%rsp)
               	movq	88(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movl	24(%r12), %eax
               	movq	120(%rsp), %r13
               	cmpq	%rax, %r13
               	jae	0x42269f <kfun:#main(){}+0xecf>
               	movq	16(%r12), %rax
               	movq	%rcx, 32(%r12,%r13,8)
               	addq	$1, %r13
               	movq	352(%rsp), %rbx
               	cmpq	%rbx, %r13
               	jne	0x421c70 <kfun:#main(){}+0x4a0>
               	jmp	0x422358 <kfun:#main(){}+0xb88>
               	leaq	136(%r14), %r12
               	movq	$0, 136(%r14)
               	jmp	0x422076 <kfun:#main(){}+0x8a6>
               	movl	24(%r12), %eax
               	xorl	%r15d, %r15d
               	testl	%eax, %eax
               	cmovsl	%r15d, %eax
               	movq	%rax, 64(%rsp)
               	cmpq	64(%rsp), %r15
               	je	0x42267e <kfun:#main(){}+0xeae>
               	nopw	%cs:(%rax,%rax)
               	movb	281074(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42238f <kfun:#main(){}+0xbbf>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	movl	276250(%rip), %eax      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	cmpl	$2, %eax
               	je	0x4223f2 <kfun:#main(){}+0xc22>
               	leaq	276238(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	leaq	-39613(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
               	callq	0x43bac0 <CallInitGlobalPossiblyLock>
               	movq	276135(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	leaq	104(%rsp), %rsi
               	callq	0x41b480 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
               	movq	%rax, %r13
               	movq	%rax, 104(%rsp)
               	callq	0x4396c0 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x422460 <kfun:#main(){}+0xc90>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422460 <kfun:#main(){}+0xc90>
               	cmpl	$1, %eax
               	jne	0x422460 <kfun:#main(){}+0xc90>
               	movb	280871(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422460 <kfun:#main(){}+0xc90>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	96(%r14), %rdi
               	movq	%r12, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	movq	%r15, 120(%rsp)
               	je	0x422490 <kfun:#main(){}+0xcc0>
               	movq	%r12, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x422499 <kfun:#main(){}+0xcc9>
               	nopl	(%rax)
               	movl	%r12d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	88(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	xorl	%r15d, %r15d
               	testq	%rax, %rax
               	je	0x4225d0 <kfun:#main(){}+0xe00>
               	movq	(%rax), %rbx
               	cmpl	%r12d, 8(%rbx)
               	jne	0x4224d4 <kfun:#main(){}+0xd04>
               	testq	%rbx, %rbx
               	jne	0x42250e <kfun:#main(){}+0xd3e>
               	jmp	0x4225d0 <kfun:#main(){}+0xe00>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x4225d0 <kfun:#main(){}+0xe00>
               	cmpl	%r12d, %esi
               	je	0x422505 <kfun:#main(){}+0xd35>
               	movq	%rbx, %rbp
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x4225d0 <kfun:#main(){}+0xe00>
               	movslq	8(%rbx), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x4224c0 <kfun:#main(){}+0xcf0>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x4224cf <kfun:#main(){}+0xcff>
               	jmp	0x4225d0 <kfun:#main(){}+0xe00>
               	testq	%rbp, %rbp
               	je	0x4225d0 <kfun:#main(){}+0xe00>
               	movq	16(%rbx), %r15
               	leaq	16(%r15), %rdi
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%rdi, 144(%rsp)
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x422570 <kfun:#main(){}+0xda0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422570 <kfun:#main(){}+0xda0>
               	cmpl	$1, %eax
               	jne	0x422570 <kfun:#main(){}+0xda0>
               	movb	280603(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422570 <kfun:#main(){}+0xda0>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movl	(%r15), %r15d
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	144(%rsp), %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x4225d0 <kfun:#main(){}+0xe00>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4225d0 <kfun:#main(){}+0xe00>
               	cmpl	$1, %eax
               	jne	0x4225d0 <kfun:#main(){}+0xe00>
               	movb	280506(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4225d0 <kfun:#main(){}+0xe00>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x422620 <kfun:#main(){}+0xe50>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422620 <kfun:#main(){}+0xe50>
               	cmpl	$1, %eax
               	jne	0x422620 <kfun:#main(){}+0xe50>
               	movb	280426(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422620 <kfun:#main(){}+0xe50>
               	movq	%rbx, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	cmpl	%r15d, 8(%r13)
               	movq	48(%rsp), %rbp
               	jbe	0x42269f <kfun:#main(){}+0xecf>
               	movslq	%r15d, %rax
               	movq	16(%r13,%rax,8), %rax
               	movq	%rax, 240(%rsp)
               	movq	88(%rsp), %rcx
               	movq	%rcx, 288(%rbp)
               	movl	16(%rax), %eax
               	leal	-1(%rax), %ecx
               	cmpl	$2, %ecx
               	jae	0x4226a4 <kfun:#main(){}+0xed4>
               	movq	120(%rsp), %r15
               	addq	$1, %r15
               	movl	%r12d, %edi
               	leaq	248(%rsp), %rsi
               	callq	0x43ced0 <Kotlin_Worker_consumeFuture>
               	movq	152(%rsp), %r12
               	cmpq	64(%rsp), %r15
               	jne	0x422380 <kfun:#main(){}+0xbb0>
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
               	je	0x42271a <kfun:#main(){}+0xf4a>
               	cmpl	$3, %eax
               	je	0x42276a <kfun:#main(){}+0xf9a>
               	cmpl	$4, %eax
               	jne	0x4227ca <kfun:#main(){}+0xffa>
               	leaq	280(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43ced0 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	231177(%rip), %rcx      # 0x45ae00 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 288(%rsp)
               	leaq	258454(%rip), %rsi      # 0x4618a0 <__unnamed_63>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bca0 <ThrowException>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	231097(%rip), %rcx      # 0x45ae00 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 256(%rsp)
               	leaq	258230(%rip), %rsi      # 0x461810 <__unnamed_31>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bca0 <ThrowException>
               	leaq	264(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43ced0 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	231001(%rip), %rcx      # 0x45ae00 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 272(%rsp)
               	leaq	258214(%rip), %rsi      # 0x461860 <__unnamed_64>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bca0 <ThrowException>
               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230751(%rip), %rcx      # 0x45ad60 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 192(%rsp)
               	jmp	0x422843 <kfun:#main(){}+0x1073>
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x4298e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	230697(%rip), %rcx      # 0x45ad60 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 184(%rsp)
               	leaq	257126(%rip), %rsi      # 0x4614b0 <__unnamed_54>
               	movq	%rbx, %rdi
               	callq	0x415cf0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43bca0 <ThrowException>
               	jmp	0x4228ad <kfun:#main(){}+0x10dd>
               	movq	%rax, %rbx
               	movq	56(%rsp), %rax
               	movq	-64(%rax), %r15
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%r15)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%r15, %r15
               	je	0x4228b0 <kfun:#main(){}+0x10e0>
               	addq	$328, %r15              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%r15)
               	testl	%ebp, %ebp
               	jne	0x4228b0 <kfun:#main(){}+0x10e0>
               	cmpl	$1, %eax
               	jne	0x4228b0 <kfun:#main(){}+0x10e0>
               	movb	279769(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4228b0 <kfun:#main(){}+0x10e0>
               	movq	%r15, %rdi
               	callq	0x426120 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x4228b0 <kfun:#main(){}+0x10e0>
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
               	movb	279706(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4228e7 <kfun:#main(){}+0x1117>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4228f6 <kfun:#main(){}+0x1126>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274923(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279642(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422927 <kfun:#main(){}+0x1157>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422936 <kfun:#main(){}+0x1166>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274859(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279578(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422967 <kfun:#main(){}+0x1197>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422976 <kfun:#main(){}+0x11a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274795(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279514(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4229a7 <kfun:#main(){}+0x11d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4229b6 <kfun:#main(){}+0x11e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274731(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279450(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4229e7 <kfun:#main(){}+0x1217>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4229f6 <kfun:#main(){}+0x1226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274667(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279386(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422a27 <kfun:#main(){}+0x1257>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422a36 <kfun:#main(){}+0x1266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274603(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279322(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422a67 <kfun:#main(){}+0x1297>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422a76 <kfun:#main(){}+0x12a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274539(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279258(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422aa7 <kfun:#main(){}+0x12d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ab6 <kfun:#main(){}+0x12e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274475(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279194(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ae7 <kfun:#main(){}+0x1317>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422af6 <kfun:#main(){}+0x1326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274411(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279130(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422b27 <kfun:#main(){}+0x1357>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422b36 <kfun:#main(){}+0x1366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274347(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279066(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422b67 <kfun:#main(){}+0x1397>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422b76 <kfun:#main(){}+0x13a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274283(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279002(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ba7 <kfun:#main(){}+0x13d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422bb6 <kfun:#main(){}+0x13e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274219(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278938(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422be7 <kfun:#main(){}+0x1417>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422bf6 <kfun:#main(){}+0x1426>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274155(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278874(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c27 <kfun:#main(){}+0x1457>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c36 <kfun:#main(){}+0x1466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274091(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278810(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c67 <kfun:#main(){}+0x1497>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c76 <kfun:#main(){}+0x14a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274027(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278746(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ca7 <kfun:#main(){}+0x14d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422cb6 <kfun:#main(){}+0x14e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273963(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278682(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ce7 <kfun:#main(){}+0x1517>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422cf6 <kfun:#main(){}+0x1526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273899(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278618(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d27 <kfun:#main(){}+0x1557>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d36 <kfun:#main(){}+0x1566>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273835(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278554(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d67 <kfun:#main(){}+0x1597>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d76 <kfun:#main(){}+0x15a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273771(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278490(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422da7 <kfun:#main(){}+0x15d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422db6 <kfun:#main(){}+0x15e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273707(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278426(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422de7 <kfun:#main(){}+0x1617>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422df6 <kfun:#main(){}+0x1626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273643(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278362(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e27 <kfun:#main(){}+0x1657>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e36 <kfun:#main(){}+0x1666>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273579(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278298(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e67 <kfun:#main(){}+0x1697>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e76 <kfun:#main(){}+0x16a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273515(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278234(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ea7 <kfun:#main(){}+0x16d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422eb6 <kfun:#main(){}+0x16e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273451(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278170(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ee7 <kfun:#main(){}+0x1717>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ef6 <kfun:#main(){}+0x1726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273387(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278106(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f27 <kfun:#main(){}+0x1757>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f36 <kfun:#main(){}+0x1766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273323(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278042(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f67 <kfun:#main(){}+0x1797>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f76 <kfun:#main(){}+0x17a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273259(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277978(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422fa7 <kfun:#main(){}+0x17d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422fb6 <kfun:#main(){}+0x17e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273195(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277914(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422fe7 <kfun:#main(){}+0x1817>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ff6 <kfun:#main(){}+0x1826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273131(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277850(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423027 <kfun:#main(){}+0x1857>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423036 <kfun:#main(){}+0x1866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273067(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277786(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423067 <kfun:#main(){}+0x1897>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423076 <kfun:#main(){}+0x18a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273003(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277722(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4230a7 <kfun:#main(){}+0x18d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4230b6 <kfun:#main(){}+0x18e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272939(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277658(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4230e7 <kfun:#main(){}+0x1917>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4230f6 <kfun:#main(){}+0x1926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272875(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277594(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423127 <kfun:#main(){}+0x1957>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423136 <kfun:#main(){}+0x1966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272811(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277530(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423167 <kfun:#main(){}+0x1997>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423176 <kfun:#main(){}+0x19a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272747(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277466(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4231a7 <kfun:#main(){}+0x19d7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4231b6 <kfun:#main(){}+0x19e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272683(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277402(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4231e7 <kfun:#main(){}+0x1a17>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4231f6 <kfun:#main(){}+0x1a26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272619(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277338(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423227 <kfun:#main(){}+0x1a57>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423236 <kfun:#main(){}+0x1a66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272555(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277274(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423267 <kfun:#main(){}+0x1a97>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423276 <kfun:#main(){}+0x1aa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272491(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277210(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4232a7 <kfun:#main(){}+0x1ad7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4232b6 <kfun:#main(){}+0x1ae6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272427(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277145(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4232e8 <kfun:#main(){}+0x1b18>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423314 <kfun:#main(){}+0x1b44>
               	testl	%ebx, %ebx
               	je	0x42331c <kfun:#main(){}+0x1b4c>
               	movq	$0, 272273(%rip)        # 0x465a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 272270(%rip)        # 0x465a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 272348(%rip)        # 0x465af0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272325(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277034(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423357 <kfun:#main(){}+0x1b87>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423366 <kfun:#main(){}+0x1b96>
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
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276970(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423397 <kfun:#main(){}+0x1bc7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4233a6 <kfun:#main(){}+0x1bd6>
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
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276906(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4233d7 <kfun:#main(){}+0x1c07>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4233e6 <kfun:#main(){}+0x1c16>
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
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276841(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423418 <kfun:#main(){}+0x1c48>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423444 <kfun:#main(){}+0x1c74>
               	testl	%ebx, %ebx
               	je	0x42344c <kfun:#main(){}+0x1c7c>
               	movq	$0, 271985(%rip)        # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	movq	$0, 271982(%rip)        # 0x465aa8 <kvar:kotlin.native.concurrent.FutureState.$ENTRIES#internal>
               	movl	$0, 272048(%rip)        # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272021(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276729(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423488 <kfun:#main(){}+0x1cb8>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4234a9 <kfun:#main(){}+0x1cd9>
               	testl	%ebx, %ebx
               	je	0x4234b1 <kfun:#main(){}+0x1ce1>
               	movq	$0, 271889(%rip)        # 0x465ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 271951(%rip)        # 0x465af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271920(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276633(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4234e8 <kfun:#main(){}+0x1d18>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423509 <kfun:#main(){}+0x1d39>
               	testl	%ebx, %ebx
               	je	0x423511 <kfun:#main(){}+0x1d41>
               	movq	$0, 271801(%rip)        # 0x465ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 271859(%rip)        # 0x465afc <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271824(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276538(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423547 <kfun:#main(){}+0x1d77>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423556 <kfun:#main(){}+0x1d86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271755(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276473(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423588 <kfun:#main(){}+0x1db8>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4235b4 <kfun:#main(){}+0x1de4>
               	testl	%ebx, %ebx
               	je	0x4235bc <kfun:#main(){}+0x1dec>
               	movq	$0, 271649(%rip)        # 0x465ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	$0, 271646(%rip)        # 0x465ac8 <kvar:kotlin.native.concurrent.TransferMode.$ENTRIES#internal>
               	movl	$0, 271692(%rip)        # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271653(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276361(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4235f8 <kfun:#main(){}+0x1e28>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42360f <kfun:#main(){}+0x1e3f>
               	testl	%ebx, %ebx
               	je	0x423617 <kfun:#main(){}+0x1e47>
               	movq	$0, 265473(%rip)        # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271562(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276266(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423657 <kfun:#main(){}+0x1e87>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423666 <kfun:#main(){}+0x1e96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271483(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276202(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423697 <kfun:#main(){}+0x1ec7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4236a6 <kfun:#main(){}+0x1ed6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271419(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276137(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4236d8 <kfun:#main(){}+0x1f08>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4236f9 <kfun:#main(){}+0x1f29>
               	testl	%ebx, %ebx
               	je	0x423701 <kfun:#main(){}+0x1f31>
               	movq	$0, 271329(%rip)        # 0x465ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 271371(%rip)        # 0x465b04 <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271328(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276042(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423737 <kfun:#main(){}+0x1f67>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423746 <kfun:#main(){}+0x1f76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271259(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275978(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423777 <kfun:#main(){}+0x1fa7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423786 <kfun:#main(){}+0x1fb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271195(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275913(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4237b8 <kfun:#main(){}+0x1fe8>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4237d9 <kfun:#main(){}+0x2009>
               	testl	%ebx, %ebx
               	je	0x4237e1 <kfun:#main(){}+0x2011>
               	movq	$0, 271113(%rip)        # 0x465ad8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 271151(%rip)        # 0x465b08 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271104(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275818(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423817 <kfun:#main(){}+0x2047>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423826 <kfun:#main(){}+0x2056>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271035(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275754(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423857 <kfun:#main(){}+0x2087>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423866 <kfun:#main(){}+0x2096>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270971(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275690(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423897 <kfun:#main(){}+0x20c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4238a6 <kfun:#main(){}+0x20d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270907(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275626(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4238d7 <kfun:#main(){}+0x2107>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4238e6 <kfun:#main(){}+0x2116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270843(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275562(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423917 <kfun:#main(){}+0x2147>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423926 <kfun:#main(){}+0x2156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270779(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275498(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423957 <kfun:#main(){}+0x2187>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423966 <kfun:#main(){}+0x2196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270715(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275434(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423997 <kfun:#main(){}+0x21c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4239a6 <kfun:#main(){}+0x21d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270651(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275370(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4239d7 <kfun:#main(){}+0x2207>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4239e6 <kfun:#main(){}+0x2216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270587(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275306(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a17 <kfun:#main(){}+0x2247>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a26 <kfun:#main(){}+0x2256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270523(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275242(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a57 <kfun:#main(){}+0x2287>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a66 <kfun:#main(){}+0x2296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270459(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275178(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a97 <kfun:#main(){}+0x22c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423aa6 <kfun:#main(){}+0x22d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270395(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275114(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ad7 <kfun:#main(){}+0x2307>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ae6 <kfun:#main(){}+0x2316>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270331(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275050(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b17 <kfun:#main(){}+0x2347>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b26 <kfun:#main(){}+0x2356>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270267(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274986(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b57 <kfun:#main(){}+0x2387>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b66 <kfun:#main(){}+0x2396>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270203(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	274921(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b98 <kfun:#main(){}+0x23c8>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423baf <kfun:#main(){}+0x23df>
               	testl	%ebx, %ebx
               	je	0x423bb7 <kfun:#main(){}+0x23e7>
               	movq	$0, 264041(%rip)        # 0x464318 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270122(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274826(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423bf7 <kfun:#main(){}+0x2427>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c06 <kfun:#main(){}+0x2436>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270043(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	274761(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c38 <kfun:#main(){}+0x2468>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423c4f <kfun:#main(){}+0x247f>
               	testl	%ebx, %ebx
               	je	0x423c57 <kfun:#main(){}+0x2487>
               	movq	$0, 263889(%rip)        # 0x464320 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	269962(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274666(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c97 <kfun:#main(){}+0x24c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ca6 <kfun:#main(){}+0x24d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269883(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274602(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423cd7 <kfun:#main(){}+0x2507>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ce6 <kfun:#main(){}+0x2516>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269819(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	274537(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d18 <kfun:#main(){}+0x2548>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423d2f <kfun:#main(){}+0x255f>
               	testl	%ebx, %ebx
               	je	0x423d37 <kfun:#main(){}+0x2567>
               	movq	$0, 263673(%rip)        # 0x464328 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	269738(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274442(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d77 <kfun:#main(){}+0x25a7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d86 <kfun:#main(){}+0x25b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269659(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274378(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423db7 <kfun:#main(){}+0x25e7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423dc6 <kfun:#main(){}+0x25f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269595(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	274313(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423df8 <kfun:#main(){}+0x2628>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423e19 <kfun:#main(){}+0x2649>
               	testl	%ebx, %ebx
               	je	0x423e21 <kfun:#main(){}+0x2651>
               	movq	$0, 269521(%rip)        # 0x465ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 269555(%rip)        # 0x465b0c <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	269504(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426500 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274218(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e57 <kfun:#main(){}+0x2687>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e66 <kfun:#main(){}+0x2696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269435(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274154(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e97 <kfun:#main(){}+0x26c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ea6 <kfun:#main(){}+0x26d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269371(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274090(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ed7 <kfun:#main(){}+0x2707>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423ee6 <kfun:#main(){}+0x2716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269307(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274026(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f17 <kfun:#main(){}+0x2747>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f26 <kfun:#main(){}+0x2756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269243(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273962(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f57 <kfun:#main(){}+0x2787>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f66 <kfun:#main(){}+0x2796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269179(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273898(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f97 <kfun:#main(){}+0x27c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423fa6 <kfun:#main(){}+0x27d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269115(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273834(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423fd7 <kfun:#main(){}+0x2807>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423fe6 <kfun:#main(){}+0x2816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269051(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273770(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424017 <kfun:#main(){}+0x2847>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424026 <kfun:#main(){}+0x2856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268987(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273706(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424057 <kfun:#main(){}+0x2887>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424066 <kfun:#main(){}+0x2896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268923(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273642(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424097 <kfun:#main(){}+0x28c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4240a6 <kfun:#main(){}+0x28d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268859(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273578(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4240d7 <kfun:#main(){}+0x2907>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4240e6 <kfun:#main(){}+0x2916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268795(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273514(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424117 <kfun:#main(){}+0x2947>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424126 <kfun:#main(){}+0x2956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268731(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273450(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424157 <kfun:#main(){}+0x2987>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424166 <kfun:#main(){}+0x2996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268667(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273386(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424197 <kfun:#main(){}+0x29c7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4241a6 <kfun:#main(){}+0x29d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268603(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273322(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4241d7 <kfun:#main(){}+0x2a07>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4241e6 <kfun:#main(){}+0x2a16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268539(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273258(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424217 <kfun:#main(){}+0x2a47>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424226 <kfun:#main(){}+0x2a56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268475(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273194(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424257 <kfun:#main(){}+0x2a87>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424266 <kfun:#main(){}+0x2a96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268411(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	273130(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424297 <kfun:#main(){}+0x2ac7>
               	callq	0x4262f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4242a6 <kfun:#main(){}+0x2ad6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	268347(%rip), %rsi      # 0x465ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426500 <AddTLSRecord>

