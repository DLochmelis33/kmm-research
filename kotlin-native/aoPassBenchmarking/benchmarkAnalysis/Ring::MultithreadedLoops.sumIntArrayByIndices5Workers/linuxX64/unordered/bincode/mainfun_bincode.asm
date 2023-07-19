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
               	movq	%rax, 48(%rsp)
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 376(%rsp)
               	leaq	368(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 384(%rsp)
               	movb	285342(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a6b <kfun:#main(){}+0x7b>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$40, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdx
               	movq	$0, 8(%rax)
               	leaq	247901(%rip), %rcx      # 0x45e2f0 <ktypeglobal:MultithreadedLoopsBenchmark#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdx, 360(%rsp)
               	movq	%rdx, 392(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movq	288(%rbx), %rcx
               	movq	%rcx, 152(%rsp)
               	leaq	144(%rsp), %rcx
               	movq	%rcx, 288(%rbx)
               	movabsq	$42949672960, %rcx      # imm = 0xA00000000
               	movq	%rcx, 160(%rsp)
               	movl	$5, 40(%rax)
               	movq	%rax, 112(%rsp)
               	movl	40(%rax), %r14d
               	testl	%r14d, %r14d
               	js	0x422aec <kfun:#main(){}+0x10fc>
               	movq	%rbx, 40(%rsp)
               	movq	296(%rbx), %rdi
               	leaq	31(,%r14,8), %rsi
               	andq	$-8, %rsi
               	addq	$112, %rdi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	234359(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%r12)
               	movl	%r14d, 24(%r12)
               	movq	%rcx, 56(%rsp)
               	movq	%rcx, 176(%rsp)
               	xorl	%ebx, %ebx
               	cmpq	%r14, %rbx
               	je	0x421c47 <kfun:#main(){}+0x257>
               	nopl	(%rax,%rax)
               	movb	285050(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b8f <kfun:#main(){}+0x19f>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	40(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$40024, %esi            # imm = 0x9C58
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbp
               	leaq	16(%rax), %r15
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	234538(%rip), %rax      # 0x45aff0 <ktypeglobal:kotlin.IntArray#internal>
               	movq	%rax, 16(%rbp)
               	movl	$10000, 24(%rbp)        # imm = 0x2710
               	movq	%r15, 184(%rsp)
               	xorl	%r13d, %r13d
               	cmpq	$10000, %r13            # imm = 0x2710
               	je	0x421c22 <kfun:#main(){}+0x232>
               	nopl	(%rax)
               	movzbl	284937(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c00 <kfun:#main(){}+0x210>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%rbp), %eax
               	cmpq	%rax, %r13
               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
               	movq	16(%rbp), %rax
               	movl	%r13d, 32(%rbp,%r13,4)
               	addq	$1, %r13
               	cmpq	$10000, %r13            # imm = 0x2710
               	jne	0x421bf0 <kfun:#main(){}+0x200>
               	movl	24(%r12), %eax
               	cmpq	%rax, %rbx
               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
               	movq	16(%r12), %rax
               	movq	%r15, 32(%r12,%rbx,8)
               	addq	$1, %rbx
               	cmpq	%r14, %rbx
               	jne	0x421b80 <kfun:#main(){}+0x190>
               	movq	112(%rsp), %rax
               	movq	56(%rsp), %rcx
               	movq	%rcx, 24(%rax)
               	movl	40(%rax), %r14d
               	testl	%r14d, %r14d
               	js	0x422af5 <kfun:#main(){}+0x1105>
               	movq	40(%rsp), %r15
               	movq	296(%r15), %rdi
               	leaq	31(,%r14,8), %rsi
               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
               	andq	%rax, %rsi
               	addq	$112, %rdi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbp
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	234023(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%rbp)
               	movl	%r14d, 24(%rbp)
               	movq	%rcx, 120(%rsp)
               	movq	%rcx, 200(%rsp)
               	xorl	%r12d, %r12d
               	movq	%r14, 56(%rsp)
               	cmpq	%r12, %r14
               	je	0x421e23 <kfun:#main(){}+0x433>
               	nop
               	movzbl	284713(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ce0 <kfun:#main(){}+0x2f0>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	271913(%rip), %rax      # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	movq	%rax, 208(%rsp)
               	callq	0x43a470 <(anonymous namespace)::theState()>
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x43be80 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)>
               	testq	%rax, %rax
               	je	0x421d80 <kfun:#main(){}+0x390>
               	movq	%rax, %r13
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %r14d
               	xchgl	%r14d, 328(%rbx)
               	movq	%r13, %rdi
               	addq	$240, %rdi
               	xorl	%esi, %esi
               	leaq	110062(%rip), %rdx      # 0x43cb20 <(anonymous namespace)::workerRoutine(void*)>
               	movq	%r13, %rcx
               	callq	0x413780 <pthread_create@plt>
               	testq	%rbx, %rbx
               	je	0x421d70 <kfun:#main(){}+0x380>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%r14d, %eax
               	xchgl	%eax, (%rbx)
               	testl	%r14d, %r14d
               	jne	0x421d70 <kfun:#main(){}+0x380>
               	cmpl	$1, %eax
               	jne	0x421d70 <kfun:#main(){}+0x380>
               	movzbl	284576(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d70 <kfun:#main(){}+0x380>
               	movq	%rbx, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	movl	(%r13), %ebx
               	movq	40(%rsp), %r15
               	movq	56(%rsp), %r14
               	jmp	0x421d85 <kfun:#main(){}+0x395>
               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%r15), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movq	296(%r15), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	239567(%rip), %rdx      # 0x45c5b0 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 88(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 216(%rsp)
               	movq	72(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movl	24(%rbp), %eax
               	cmpq	%rax, %r12
               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
               	movq	16(%rbp), %rax
               	movq	%rcx, 32(%rbp,%r12,8)
               	addq	$1, %r12
               	cmpq	%r12, %r14
               	jne	0x421cd0 <kfun:#main(){}+0x2e0>
               	movq	112(%rsp), %rcx
               	movq	120(%rsp), %rax
               	movq	%rax, 32(%rcx)
               	movq	152(%rsp), %rax
               	movq	%rax, 288(%r15)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 256(%rsp)
               	movaps	%xmm0, 240(%rsp)
               	movaps	%xmm0, 224(%rsp)
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movq	$0, 272(%rsp)
               	movq	288(%r15), %rax
               	movq	%rax, 152(%rsp)
               	leaq	144(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movabsq	$73014444032, %rax      # imm = 0x1100000000
               	movq	%rax, 160(%rsp)
               	movl	40(%rcx), %r14d
               	testl	%r14d, %r14d
               	js	0x422b30 <kfun:#main(){}+0x1140>
               	movq	296(%r15), %rdi
               	leaq	31(,%r14,8), %rsi
               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
               	andq	%rax, %rsi
               	addq	$112, %rdi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbx
               	addq	$16, %rax
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rbx)
               	movq	$0, 24(%rbx)
               	leaq	233410(%rip), %rcx      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
               	movq	%rcx, 16(%rbx)
               	movl	%r14d, 24(%rbx)
               	movq	%rax, 176(%rsp)
               	xorl	%ebp, %ebp
               	movq	%rbx, 56(%rsp)
               	movq	%r14, 352(%rsp)
               	cmpq	%r14, %rbp
               	je	0x422672 <kfun:#main(){}+0xc82>
               	nopw	%cs:(%rax,%rax)
               	movb	284090(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f4f <kfun:#main(){}+0x55f>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	112(%rsp), %rax
               	movq	32(%rax), %rax
               	movl	8(%rax), %ecx
               	cmpq	%rcx, %rbp
               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
               	movq	16(%rax,%rbp,8), %rax
               	movq	%rax, 184(%rsp)
               	movl	8(%rax), %r13d
               	movl	279301(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
               	cmpl	$2, %eax
               	je	0x421f93 <kfun:#main(){}+0x5a3>
               	leaq	279289(%rip), %rdi      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
               	leaq	-33614(%rip), %rsi      # 0x419c40 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
               	callq	0x43c920 <CallInitGlobalPossiblyLock>
               	movq	279206(%rip), %rax      # 0x466240 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	16(%rax), %rbx
               	movq	%rbx, 192(%rsp)
               	movq	296(%r15), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	246706(%rip), %rcx      # 0x45e380 <ktypeglobal:MultithreadedLoopsBenchmark.$runSumIntArrayByIndicesWorkers$lambda$0$FUNCTION_REFERENCE$0#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 200(%rsp)
               	movq	360(%rsp), %rcx
               	movq	%rcx, 24(%rax)
               	movq	%rbp, 120(%rsp)
               	movl	%ebp, 32(%rax)
               	movl	20(%rbx), %eax
               	movl	%eax, 136(%rsp)
               	movq	$0, 312(%rsp)
               	movq	288(%r15), %rax
               	movq	%rax, 296(%rsp)
               	leaq	288(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 304(%rsp)
               	leaq	312(%rsp), %rsi
               	callq	0x4190e0 <WorkerLaunchpad>
               	movslq	%r13d, %r12
               	movq	312(%rsp), %rdi
               	callq	0x427110 <CreateStablePointer>
               	movq	%rax, 128(%rsp)
               	movq	$0, 312(%rsp)
               	callq	0x43a470 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x4220c0 <kfun:#main(){}+0x6d0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4220c0 <kfun:#main(){}+0x6d0>
               	cmpl	$1, %eax
               	jne	0x4220c0 <kfun:#main(){}+0x6d0>
               	movb	283729(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4220c0 <kfun:#main(){}+0x6d0>
               	movq	%rbx, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	152(%r14), %rdi
               	movq	%r12, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x422100 <kfun:#main(){}+0x710>
               	movq	%r12, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	jne	0x42211d <kfun:#main(){}+0x72d>
               	jmp	0x422220 <kfun:#main(){}+0x830>
               	nopl	(%rax,%rax)
               	movl	%r13d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	je	0x422220 <kfun:#main(){}+0x830>
               	movq	(%rax), %rbp
               	cmpl	%r13d, 8(%rbp)
               	jne	0x422144 <kfun:#main(){}+0x754>
               	testq	%rbp, %rbp
               	jne	0x42217e <kfun:#main(){}+0x78e>
               	jmp	0x422220 <kfun:#main(){}+0x830>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x422220 <kfun:#main(){}+0x830>
               	cmpl	%r13d, %esi
               	je	0x422175 <kfun:#main(){}+0x785>
               	movq	%rbp, %rbx
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x422220 <kfun:#main(){}+0x830>
               	movl	8(%rbp), %esi
               	movslq	%esi, %rax
               	movq	%rax, %rdx
               	orq	%rdi, %rdx
               	shrq	$32, %rdx
               	je	0x422130 <kfun:#main(){}+0x740>
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x42213f <kfun:#main(){}+0x74f>
               	jmp	0x422220 <kfun:#main(){}+0x830>
               	testq	%rbx, %rbx
               	je	0x422220 <kfun:#main(){}+0x830>
               	movq	16(%rbp), %r15
               	movl	$1, %edi
               	movl	$104, %esi
               	callq	0x413700 <calloc@plt>
               	testq	%rax, %rax
               	je	0x422228 <kfun:#main(){}+0x838>
               	movq	%rax, %r12
               	movl	260(%r14), %eax
               	leal	1(%rax), %ecx
               	movl	%ecx, 260(%r14)
               	movl	$1, (%r12)
               	movl	%eax, 4(%r12)
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	leaq	16(%r12), %rdi
               	xorl	%esi, %esi
               	callq	0x413790 <pthread_mutex_init@plt>
               	movq	%r12, %rdi
               	addq	$56, %rdi
               	xorl	%esi, %esi
               	callq	0x4137a0 <pthread_cond_init@plt>
               	testq	%rbx, %rbx
               	je	0x42222b <kfun:#main(){}+0x83b>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x42222b <kfun:#main(){}+0x83b>
               	cmpl	$1, %eax
               	jne	0x42222b <kfun:#main(){}+0x83b>
               	movb	283381(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42222b <kfun:#main(){}+0x83b>
               	movq	%rbx, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x42222b <kfun:#main(){}+0x83b>
               	xorl	%r12d, %r12d
               	jmp	0x42254d <kfun:#main(){}+0xb5d>
               	xorl	%r12d, %r12d
               	movl	4(%r12), %r13d
               	movslq	%r13d, %rax
               	movq	96(%r14), %rdi
               	movq	%rax, %rcx
               	orq	%rdi, %rcx
               	shrq	$32, %rcx
               	movq	%rax, 320(%rsp)
               	je	0x422265 <kfun:#main(){}+0x875>
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rbx
               	movq	88(%r14), %rax
               	movq	(%rax,%rbx,8), %rax
               	testq	%rax, %rax
               	jne	0x42227b <kfun:#main(){}+0x88b>
               	jmp	0x4222e7 <kfun:#main(){}+0x8f7>
               	movl	%r13d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ebx
               	movq	88(%r14), %rax
               	movq	(%rax,%rbx,8), %rax
               	testq	%rax, %rax
               	je	0x4222e7 <kfun:#main(){}+0x8f7>
               	movq	(%rax), %rbp
               	cmpl	8(%rbp), %r13d
               	jne	0x4222a0 <kfun:#main(){}+0x8b0>
               	testq	%rbp, %rbp
               	jne	0x4222cf <kfun:#main(){}+0x8df>
               	jmp	0x4222e7 <kfun:#main(){}+0x8f7>
               	nop
               	movl	%ecx, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rbx, %rdx
               	jne	0x4222e7 <kfun:#main(){}+0x8f7>
               	cmpl	%ecx, %r13d
               	je	0x4222ca <kfun:#main(){}+0x8da>
               	movq	%rbp, %rsi
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x4222e7 <kfun:#main(){}+0x8f7>
               	movl	8(%rbp), %ecx
               	movslq	%ecx, %rax
               	movq	%rax, %rdx
               	orq	%rdi, %rdx
               	shrq	$32, %rdx
               	je	0x422290 <kfun:#main(){}+0x8a0>
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rbx, %rdx
               	je	0x42229b <kfun:#main(){}+0x8ab>
               	jmp	0x4222e7 <kfun:#main(){}+0x8f7>
               	testq	%rsi, %rsi
               	je	0x4222e7 <kfun:#main(){}+0x8f7>
               	addq	$8, %rbp
               	movl	136(%rsp), %ecx
               	movq	128(%rsp), %rdx
               	jmp	0x422502 <kfun:#main(){}+0xb12>
               	movq	%r15, 344(%rsp)
               	movl	$1, %edi
               	movl	$24, %esi
               	callq	0x413700 <calloc@plt>
               	movq	%rax, 336(%rsp)
               	movl	%r13d, 8(%rax)
               	leaq	120(%r14), %rdi
               	movq	96(%r14), %rsi
               	movq	112(%r14), %rdx
               	movl	$1, %ecx
               	callq	0x440f4a <std::__detail::_Prime_rehash_policy::_M_need_rehash(unsigned long, unsigned long, unsigned long) const>
               	testb	$1, %al
               	movq	%r12, 328(%rsp)
               	jne	0x422335 <kfun:#main(){}+0x945>
               	movq	88(%r14), %r12
               	jmp	0x422465 <kfun:#main(){}+0xa75>
               	movq	%rdx, %r15
               	cmpq	$1, %rdx
               	je	0x4223f9 <kfun:#main(){}+0xa09>
               	movl	$8, %esi
               	movq	%r15, %rdi
               	callq	0x413700 <calloc@plt>
               	movq	%rax, %r12
               	leaq	(,%r15,8), %rdx
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x413750 <memset@plt>
               	movq	104(%r14), %rbp
               	movq	$0, 104(%r14)
               	testq	%rbp, %rbp
               	je	0x422420 <kfun:#main(){}+0xa30>
               	leaq	104(%r14), %rdi
               	xorl	%ebx, %ebx
               	jmp	0x4223b6 <kfun:#main(){}+0x9c6>
               	nopw	%cs:(%rax,%rax)
               	nop
               	xorl	%edx, %edx
               	divl	%r15d
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	je	0x4223e0 <kfun:#main(){}+0x9f0>
               	movq	(%rax), %rax
               	movq	%rax, (%rsi)
               	movq	(%r12,%rdx,8), %rax
               	movq	%rsi, (%rax)
               	movq	%rbx, %rdx
               	movq	%rdx, %rbx
               	testq	%rbp, %rbp
               	je	0x422420 <kfun:#main(){}+0xa30>
               	movq	%rbp, %rsi
               	movq	(%rbp), %rbp
               	movl	8(%rsi), %eax
               	movslq	%eax, %rcx
               	movq	%rcx, %rdx
               	orq	%r15, %rdx
               	shrq	$32, %rdx
               	je	0x422390 <kfun:#main(){}+0x9a0>
               	movq	%rcx, %rax
               	xorl	%edx, %edx
               	divq	%r15
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	jne	0x42239e <kfun:#main(){}+0x9ae>
               	movq	(%rdi), %rax
               	movq	%rax, (%rsi)
               	movq	%rsi, (%rdi)
               	movq	%rdi, (%r12,%rdx,8)
               	cmpq	$0, (%rsi)
               	je	0x4223ae <kfun:#main(){}+0x9be>
               	movq	%rsi, (%r12,%rbx,8)
               	jmp	0x4223ae <kfun:#main(){}+0x9be>
               	leaq	136(%r14), %r12
               	movq	$0, 136(%r14)
               	movq	104(%r14), %rbp
               	movq	$0, 104(%r14)
               	testq	%rbp, %rbp
               	jne	0x422379 <kfun:#main(){}+0x989>
               	movq	88(%r14), %rdi
               	leaq	136(%r14), %rax
               	cmpq	%rax, %rdi
               	je	0x422435 <kfun:#main(){}+0xa45>
               	callq	0x413710 <free@plt>
               	movq	%r15, 96(%r14)
               	movq	%r12, 88(%r14)
               	movq	320(%rsp), %rax
               	movq	%rax, %rcx
               	orq	%r15, %rcx
               	shrq	$32, %rcx
               	je	0x42245b <kfun:#main(){}+0xa6b>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	%rdx, %rbx
               	jmp	0x422465 <kfun:#main(){}+0xa75>
               	movl	%r13d, %eax
               	xorl	%edx, %edx
               	divl	%r15d
               	movl	%edx, %ebx
               	movq	336(%rsp), %rsi
               	movq	%rsi, %rbp
               	addq	$8, %rbp
               	movq	(%r12,%rbx,8), %rax
               	testq	%rax, %rax
               	movq	344(%rsp), %r15
               	je	0x422494 <kfun:#main(){}+0xaa4>
               	movq	(%rax), %rax
               	movq	%rax, (%rsi)
               	movq	(%r12,%rbx,8), %rax
               	movq	%rsi, (%rax)
               	jmp	0x4224df <kfun:#main(){}+0xaef>
               	movq	%r14, %rdi
               	addq	$104, %rdi
               	movq	104(%r14), %rax
               	movq	%rax, (%rsi)
               	movq	%rsi, 104(%r14)
               	movq	(%rsi), %rax
               	testq	%rax, %rax
               	je	0x4224db <kfun:#main(){}+0xaeb>
               	movq	96(%r14), %r8
               	movl	8(%rax), %eax
               	movslq	%eax, %rcx
               	movq	%rcx, %rdx
               	orq	%r8, %rdx
               	shrq	$32, %rdx
               	je	0x4224ce <kfun:#main(){}+0xade>
               	movq	%rcx, %rax
               	xorl	%edx, %edx
               	divq	%r8
               	jmp	0x4224d3 <kfun:#main(){}+0xae3>
               	xorl	%edx, %edx
               	divl	%r8d
               	movq	%rsi, (%r12,%rdx,8)
               	movq	88(%r14), %r12
               	movq	%rdi, (%r12,%rbx,8)
               	movq	112(%r14), %rax
               	addq	$1, %rax
               	movq	%rax, 112(%r14)
               	movl	136(%rsp), %ecx
               	movq	128(%rsp), %rdx
               	movq	328(%rsp), %r12
               	movq	%r12, 8(%rbp)
               	movl	$2, 64(%rsp)
               	leaq	-3237(%rip), %rax       # 0x421870 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumIntArrayByIndicesWorkers$lambda$1#static(kotlin.IntArray){}kotlin.Long#internal>
               	movq	%rax, 72(%rsp)
               	movq	%rdx, 80(%rsp)
               	movq	%r12, 88(%rsp)
               	movl	%ecx, 96(%rsp)
               	movq	96(%rsp), %rax
               	movq	%rax, 32(%rsp)
               	movups	64(%rsp), %xmm0
               	movups	80(%rsp), %xmm1
               	movups	%xmm1, 16(%rsp)
               	movups	%xmm0, (%rsp)
               	movq	%r15, %rdi
               	callq	0x43a770 <Worker::putJob((anonymous namespace)::Job, bool)>
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x4225a0 <kfun:#main(){}+0xbb0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4225a0 <kfun:#main(){}+0xbb0>
               	cmpl	$1, %eax
               	jne	0x4225a0 <kfun:#main(){}+0xbb0>
               	movb	282481(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4225a0 <kfun:#main(){}+0xbb0>
               	movq	%rbx, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	testq	%r12, %r12
               	movq	40(%rsp), %r15
               	movq	352(%rsp), %r14
               	je	0x422ae7 <kfun:#main(){}+0x10f7>
               	movl	4(%r12), %ebx
               	movq	296(%rsp), %rax
               	movq	%rax, 288(%r15)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%r15), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movq	296(%r15), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	236298(%rip), %rdx      # 0x45c130 <ktypeglobal:kotlin.native.concurrent.Future#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 88(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 208(%rsp)
               	movq	72(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movq	56(%rsp), %rbx
               	movl	24(%rbx), %eax
               	movq	120(%rsp), %rbp
               	cmpq	%rax, %rbp
               	jae	0x4229b7 <kfun:#main(){}+0xfc7>
               	movq	16(%rbx), %rax
               	movq	%rcx, 32(%rbx,%rbp,8)
               	addq	$1, %rbp
               	cmpq	%r14, %rbp
               	jne	0x421f40 <kfun:#main(){}+0x550>
               	movl	24(%rbx), %eax
               	xorl	%ebp, %ebp
               	testl	%eax, %eax
               	cmovsl	%ebp, %eax
               	movq	%rax, 128(%rsp)
               	cmpq	128(%rsp), %rbp
               	je	0x422996 <kfun:#main(){}+0xfa6>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax)
               	movb	282202(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4226af <kfun:#main(){}+0xcbf>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rbp, 120(%rsp)
               	movq	32(%rbx,%rbp,8), %rax
               	movq	%rax, 216(%rsp)
               	movl	8(%rax), %r13d
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%r15), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r15)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movl	277365(%rip), %eax      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
               	cmpl	$2, %eax
               	je	0x422717 <kfun:#main(){}+0xd27>
               	leaq	277353(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
               	leaq	-40098(%rip), %rsi      # 0x418a70 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
               	callq	0x43c920 <CallInitGlobalPossiblyLock>
               	movslq	%r13d, %r15
               	movq	277247(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	leaq	88(%rsp), %rsi
               	callq	0x41b620 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
               	movq	%rax, 136(%rsp)
               	movq	%rax, 88(%rsp)
               	callq	0x43a470 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbp, %rbp
               	je	0x422790 <kfun:#main(){}+0xda0>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x422790 <kfun:#main(){}+0xda0>
               	cmpl	$1, %eax
               	jne	0x422790 <kfun:#main(){}+0xda0>
               	movb	281985(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422790 <kfun:#main(){}+0xda0>
               	movq	%rbp, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	96(%r14), %rdi
               	movq	%r15, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x4227b0 <kfun:#main(){}+0xdc0>
               	movq	%r15, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x4227b9 <kfun:#main(){}+0xdc9>
               	movl	%r13d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	88(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	xorl	%r12d, %r12d
               	testq	%rax, %rax
               	je	0x4228e0 <kfun:#main(){}+0xef0>
               	movq	(%rax), %rbp
               	cmpl	%r13d, 8(%rbp)
               	jne	0x4227f4 <kfun:#main(){}+0xe04>
               	testq	%rbp, %rbp
               	jne	0x42282e <kfun:#main(){}+0xe3e>
               	jmp	0x4228e0 <kfun:#main(){}+0xef0>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x4228e0 <kfun:#main(){}+0xef0>
               	cmpl	%r13d, %esi
               	je	0x422825 <kfun:#main(){}+0xe35>
               	movq	%rbp, %rbx
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x4228e0 <kfun:#main(){}+0xef0>
               	movl	8(%rbp), %esi
               	movslq	%esi, %rax
               	movq	%rax, %rdx
               	orq	%rdi, %rdx
               	shrq	$32, %rdx
               	je	0x4227e0 <kfun:#main(){}+0xdf0>
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x4227ef <kfun:#main(){}+0xdff>
               	jmp	0x4228e0 <kfun:#main(){}+0xef0>
               	testq	%rbx, %rbx
               	je	0x4228e0 <kfun:#main(){}+0xef0>
               	movq	16(%rbp), %r15
               	leaq	16(%r15), %rdi
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	%rdi, 112(%rsp)
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbp, %rbp
               	je	0x422890 <kfun:#main(){}+0xea0>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x422890 <kfun:#main(){}+0xea0>
               	cmpl	$1, %eax
               	jne	0x422890 <kfun:#main(){}+0xea0>
               	movb	281729(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422890 <kfun:#main(){}+0xea0>
               	movq	%rbp, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movl	(%r15), %r12d
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	112(%rsp), %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbp, %rbp
               	je	0x4228e0 <kfun:#main(){}+0xef0>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x4228e0 <kfun:#main(){}+0xef0>
               	cmpl	$1, %eax
               	jne	0x4228e0 <kfun:#main(){}+0xef0>
               	movb	281644(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4228e0 <kfun:#main(){}+0xef0>
               	movq	%rbp, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x422930 <kfun:#main(){}+0xf40>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x422930 <kfun:#main(){}+0xf40>
               	cmpl	$1, %eax
               	jne	0x422930 <kfun:#main(){}+0xf40>
               	movb	281570(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422930 <kfun:#main(){}+0xf40>
               	movq	%rbx, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	136(%rsp), %rcx
               	cmpl	%r12d, 8(%rcx)
               	movq	40(%rsp), %r15
               	jbe	0x4229b7 <kfun:#main(){}+0xfc7>
               	movslq	%r12d, %rax
               	movq	16(%rcx,%rax,8), %rax
               	movq	%rax, 224(%rsp)
               	movq	72(%rsp), %rcx
               	movq	%rcx, 288(%r15)
               	movl	16(%rax), %eax
               	leal	-1(%rax), %ecx
               	cmpl	$2, %ecx
               	movq	56(%rsp), %rbx
               	jae	0x4229bc <kfun:#main(){}+0xfcc>
               	movq	120(%rsp), %rbp
               	addq	$1, %rbp
               	movl	%r13d, %edi
               	leaq	232(%rsp), %rsi
               	callq	0x43ddb0 <Kotlin_Worker_consumeFuture>
               	cmpq	128(%rsp), %rbp
               	jne	0x4226a0 <kfun:#main(){}+0xcb0>
               	movq	376(%rsp), %rax
               	movq	%rax, 288(%r15)
               	addq	$408, %rsp              # imm = 0x198
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
               	testl	%eax, %eax
               	je	0x422a32 <kfun:#main(){}+0x1042>
               	cmpl	$3, %eax
               	je	0x422a82 <kfun:#main(){}+0x1092>
               	cmpl	$4, %eax
               	jne	0x422ae2 <kfun:#main(){}+0x10f2>
               	leaq	264(%rsp), %rsi
               	movl	%r13d, %edi
               	callq	0x43ddb0 <Kotlin_Worker_consumeFuture>
               	movq	40(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	232305(%rip), %rcx      # 0x45b580 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 272(%rsp)
               	leaq	259598(%rip), %rsi      # 0x462030 <__unnamed_63>
               	movq	%rbx, %rdi
               	callq	0x415d50 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cb00 <ThrowException>
               	movq	40(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	232225(%rip), %rcx      # 0x45b580 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 240(%rsp)
               	leaq	259374(%rip), %rsi      # 0x461fa0 <__unnamed_31>
               	movq	%rbx, %rdi
               	callq	0x415d50 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cb00 <ThrowException>
               	leaq	248(%rsp), %rsi
               	movl	%r13d, %edi
               	callq	0x43ddb0 <Kotlin_Worker_consumeFuture>
               	movq	40(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	232129(%rip), %rcx      # 0x45b580 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 256(%rsp)
               	leaq	259358(%rip), %rsi      # 0x461ff0 <__unnamed_64>
               	movq	%rbx, %rdi
               	callq	0x415d50 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cb00 <ThrowException>
               	callq	0x41b580 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
               	callq	0x418f40 <ThrowWorkerAlreadyTerminated>
               	movq	296(%rbx), %rdi
               	jmp	0x422b37 <kfun:#main(){}+0x1147>
               	movq	40(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	231870(%rip), %rcx      # 0x45b4e0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 192(%rsp)
               	jmp	0x422b64 <kfun:#main(){}+0x1174>
               	movq	296(%r15), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a200 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	231816(%rip), %rcx      # 0x45b4e0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 168(%rsp)
               	leaq	258261(%rip), %rsi      # 0x461c40 <__unnamed_54>
               	movq	%rbx, %rdi
               	callq	0x415d50 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cb00 <ThrowException>
               	jmp	0x422bce <kfun:#main(){}+0x11de>
               	movq	%rax, %rbx
               	movq	48(%rsp), %rax
               	movq	-64(%rax), %r15
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%r15)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%r15, %r15
               	je	0x422bd1 <kfun:#main(){}+0x11e1>
               	addq	$328, %r15              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%r15)
               	testl	%ebp, %ebp
               	jne	0x422bd1 <kfun:#main(){}+0x11e1>
               	cmpl	$1, %eax
               	jne	0x422bd1 <kfun:#main(){}+0x11e1>
               	movb	280896(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422bd1 <kfun:#main(){}+0x11e1>
               	movq	%r15, %rdi
               	callq	0x426850 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x422bd1 <kfun:#main(){}+0x11e1>
               	movq	%rax, %rbx
               	movq	296(%rsp), %rax
               	movq	40(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	movq	%rbx, %rdi
               	callq	0x413740 <_Unwind_Resume@plt>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280834(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c07 <kfun:#main(){}+0x1217>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c16 <kfun:#main(){}+0x1226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276043(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280770(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c47 <kfun:#main(){}+0x1257>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c56 <kfun:#main(){}+0x1266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275979(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280706(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c87 <kfun:#main(){}+0x1297>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422c96 <kfun:#main(){}+0x12a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275915(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280642(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422cc7 <kfun:#main(){}+0x12d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422cd6 <kfun:#main(){}+0x12e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275851(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280578(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d07 <kfun:#main(){}+0x1317>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d16 <kfun:#main(){}+0x1326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275787(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280514(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d47 <kfun:#main(){}+0x1357>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d56 <kfun:#main(){}+0x1366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275723(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280450(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422d87 <kfun:#main(){}+0x1397>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422d96 <kfun:#main(){}+0x13a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275659(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280386(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422dc7 <kfun:#main(){}+0x13d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422dd6 <kfun:#main(){}+0x13e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275595(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280322(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e07 <kfun:#main(){}+0x1417>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e16 <kfun:#main(){}+0x1426>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275531(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280258(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e47 <kfun:#main(){}+0x1457>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e56 <kfun:#main(){}+0x1466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275467(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280194(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422e87 <kfun:#main(){}+0x1497>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422e96 <kfun:#main(){}+0x14a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275403(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280130(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422ec7 <kfun:#main(){}+0x14d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422ed6 <kfun:#main(){}+0x14e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275339(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280066(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f07 <kfun:#main(){}+0x1517>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f16 <kfun:#main(){}+0x1526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275275(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280002(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f47 <kfun:#main(){}+0x1557>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f56 <kfun:#main(){}+0x1566>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275211(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279938(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f87 <kfun:#main(){}+0x1597>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422f96 <kfun:#main(){}+0x15a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275147(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279874(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422fc7 <kfun:#main(){}+0x15d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422fd6 <kfun:#main(){}+0x15e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275083(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279810(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423007 <kfun:#main(){}+0x1617>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423016 <kfun:#main(){}+0x1626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275019(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279746(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423047 <kfun:#main(){}+0x1657>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423056 <kfun:#main(){}+0x1666>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274955(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279682(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423087 <kfun:#main(){}+0x1697>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423096 <kfun:#main(){}+0x16a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274891(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279618(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4230c7 <kfun:#main(){}+0x16d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4230d6 <kfun:#main(){}+0x16e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274827(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279554(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423107 <kfun:#main(){}+0x1717>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423116 <kfun:#main(){}+0x1726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274763(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279490(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423147 <kfun:#main(){}+0x1757>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423156 <kfun:#main(){}+0x1766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274699(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279426(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423187 <kfun:#main(){}+0x1797>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423196 <kfun:#main(){}+0x17a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274635(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279362(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4231c7 <kfun:#main(){}+0x17d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4231d6 <kfun:#main(){}+0x17e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274571(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279298(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423207 <kfun:#main(){}+0x1817>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423216 <kfun:#main(){}+0x1826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274507(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279234(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423247 <kfun:#main(){}+0x1857>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423256 <kfun:#main(){}+0x1866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274443(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279170(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423287 <kfun:#main(){}+0x1897>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423296 <kfun:#main(){}+0x18a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274379(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279106(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4232c7 <kfun:#main(){}+0x18d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4232d6 <kfun:#main(){}+0x18e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274315(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279042(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423307 <kfun:#main(){}+0x1917>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423316 <kfun:#main(){}+0x1926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274251(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278978(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423347 <kfun:#main(){}+0x1957>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423356 <kfun:#main(){}+0x1966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274187(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278914(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423387 <kfun:#main(){}+0x1997>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423396 <kfun:#main(){}+0x19a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274123(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278850(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4233c7 <kfun:#main(){}+0x19d7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4233d6 <kfun:#main(){}+0x19e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274059(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278786(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423407 <kfun:#main(){}+0x1a17>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423416 <kfun:#main(){}+0x1a26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273995(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278722(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423447 <kfun:#main(){}+0x1a57>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423456 <kfun:#main(){}+0x1a66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273931(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278658(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423487 <kfun:#main(){}+0x1a97>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423496 <kfun:#main(){}+0x1aa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273867(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278594(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4234c7 <kfun:#main(){}+0x1ad7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4234d6 <kfun:#main(){}+0x1ae6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273803(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278530(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423507 <kfun:#main(){}+0x1b17>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423516 <kfun:#main(){}+0x1b26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273739(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278466(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423547 <kfun:#main(){}+0x1b57>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423556 <kfun:#main(){}+0x1b66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273675(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278402(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423587 <kfun:#main(){}+0x1b97>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423596 <kfun:#main(){}+0x1ba6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273611(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278338(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4235c7 <kfun:#main(){}+0x1bd7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4235d6 <kfun:#main(){}+0x1be6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273547(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	278273(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423608 <kfun:#main(){}+0x1c18>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423634 <kfun:#main(){}+0x1c44>
               	testl	%ebx, %ebx
               	je	0x42363c <kfun:#main(){}+0x1c4c>
               	movq	$0, 273393(%rip)        # 0x466210 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 273390(%rip)        # 0x466218 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 273468(%rip)        # 0x466270 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	273445(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278162(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423677 <kfun:#main(){}+0x1c87>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423686 <kfun:#main(){}+0x1c96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273371(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278098(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4236b7 <kfun:#main(){}+0x1cc7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4236c6 <kfun:#main(){}+0x1cd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273307(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278034(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4236f7 <kfun:#main(){}+0x1d07>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423706 <kfun:#main(){}+0x1d16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273243(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277969(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423738 <kfun:#main(){}+0x1d48>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423764 <kfun:#main(){}+0x1d74>
               	testl	%ebx, %ebx
               	je	0x42376c <kfun:#main(){}+0x1d7c>
               	movq	$0, 273105(%rip)        # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	movq	$0, 273102(%rip)        # 0x466228 <kvar:kotlin.native.concurrent.FutureState.$ENTRIES#internal>
               	movl	$0, 273168(%rip)        # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	273141(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277857(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4237a8 <kfun:#main(){}+0x1db8>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4237c9 <kfun:#main(){}+0x1dd9>
               	testl	%ebx, %ebx
               	je	0x4237d1 <kfun:#main(){}+0x1de1>
               	movq	$0, 273009(%rip)        # 0x466230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 273071(%rip)        # 0x466278 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	273040(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277761(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423808 <kfun:#main(){}+0x1e18>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423829 <kfun:#main(){}+0x1e39>
               	testl	%ebx, %ebx
               	je	0x423831 <kfun:#main(){}+0x1e41>
               	movq	$0, 272921(%rip)        # 0x466238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 272979(%rip)        # 0x46627c <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272944(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277666(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423867 <kfun:#main(){}+0x1e77>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423876 <kfun:#main(){}+0x1e86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272875(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277601(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4238a8 <kfun:#main(){}+0x1eb8>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4238d4 <kfun:#main(){}+0x1ee4>
               	testl	%ebx, %ebx
               	je	0x4238dc <kfun:#main(){}+0x1eec>
               	movq	$0, 272769(%rip)        # 0x466240 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	$0, 272766(%rip)        # 0x466248 <kvar:kotlin.native.concurrent.TransferMode.$ENTRIES#internal>
               	movl	$0, 272812(%rip)        # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272773(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277489(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423918 <kfun:#main(){}+0x1f28>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42392f <kfun:#main(){}+0x1f3f>
               	testl	%ebx, %ebx
               	je	0x423937 <kfun:#main(){}+0x1f47>
               	movq	$0, 264673(%rip)        # 0x464310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272682(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277394(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423977 <kfun:#main(){}+0x1f87>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423986 <kfun:#main(){}+0x1f96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272603(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277330(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4239b7 <kfun:#main(){}+0x1fc7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4239c6 <kfun:#main(){}+0x1fd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272539(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277265(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4239f8 <kfun:#main(){}+0x2008>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423a19 <kfun:#main(){}+0x2029>
               	testl	%ebx, %ebx
               	je	0x423a21 <kfun:#main(){}+0x2031>
               	movq	$0, 272449(%rip)        # 0x466250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 272491(%rip)        # 0x466284 <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272448(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277170(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a57 <kfun:#main(){}+0x2067>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423a66 <kfun:#main(){}+0x2076>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272379(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277106(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a97 <kfun:#main(){}+0x20a7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423aa6 <kfun:#main(){}+0x20b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272315(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	277041(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ad8 <kfun:#main(){}+0x20e8>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423af9 <kfun:#main(){}+0x2109>
               	testl	%ebx, %ebx
               	je	0x423b01 <kfun:#main(){}+0x2111>
               	movq	$0, 272233(%rip)        # 0x466258 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 272271(%rip)        # 0x466288 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	272224(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276946(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b37 <kfun:#main(){}+0x2147>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b46 <kfun:#main(){}+0x2156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272155(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276882(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423b77 <kfun:#main(){}+0x2187>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423b86 <kfun:#main(){}+0x2196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272091(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276818(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423bb7 <kfun:#main(){}+0x21c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423bc6 <kfun:#main(){}+0x21d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	272027(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276754(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423bf7 <kfun:#main(){}+0x2207>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c06 <kfun:#main(){}+0x2216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271963(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276690(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c37 <kfun:#main(){}+0x2247>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c46 <kfun:#main(){}+0x2256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271899(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276626(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423c77 <kfun:#main(){}+0x2287>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423c86 <kfun:#main(){}+0x2296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271835(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276562(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423cb7 <kfun:#main(){}+0x22c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423cc6 <kfun:#main(){}+0x22d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271771(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276498(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423cf7 <kfun:#main(){}+0x2307>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d06 <kfun:#main(){}+0x2316>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271707(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276434(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d37 <kfun:#main(){}+0x2347>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d46 <kfun:#main(){}+0x2356>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271643(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276370(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d77 <kfun:#main(){}+0x2387>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423d86 <kfun:#main(){}+0x2396>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271579(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276306(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423db7 <kfun:#main(){}+0x23c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423dc6 <kfun:#main(){}+0x23d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271515(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276242(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423df7 <kfun:#main(){}+0x2407>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e06 <kfun:#main(){}+0x2416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271451(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276178(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e37 <kfun:#main(){}+0x2447>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e46 <kfun:#main(){}+0x2456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271387(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	276114(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423e77 <kfun:#main(){}+0x2487>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423e86 <kfun:#main(){}+0x2496>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271323(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	276049(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423eb8 <kfun:#main(){}+0x24c8>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423ecf <kfun:#main(){}+0x24df>
               	testl	%ebx, %ebx
               	je	0x423ed7 <kfun:#main(){}+0x24e7>
               	movq	$0, 263241(%rip)        # 0x464318 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271242(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275954(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f17 <kfun:#main(){}+0x2527>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423f26 <kfun:#main(){}+0x2536>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271163(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275889(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423f58 <kfun:#main(){}+0x2568>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x423f6f <kfun:#main(){}+0x257f>
               	testl	%ebx, %ebx
               	je	0x423f77 <kfun:#main(){}+0x2587>
               	movq	$0, 263089(%rip)        # 0x464320 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	271082(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275794(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423fb7 <kfun:#main(){}+0x25c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x423fc6 <kfun:#main(){}+0x25d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	271003(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275730(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423ff7 <kfun:#main(){}+0x2607>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424006 <kfun:#main(){}+0x2616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270939(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275665(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424038 <kfun:#main(){}+0x2648>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42404f <kfun:#main(){}+0x265f>
               	testl	%ebx, %ebx
               	je	0x424057 <kfun:#main(){}+0x2667>
               	movq	$0, 262873(%rip)        # 0x464328 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270858(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275570(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424097 <kfun:#main(){}+0x26a7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4240a6 <kfun:#main(){}+0x26b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270779(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275506(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4240d7 <kfun:#main(){}+0x26e7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4240e6 <kfun:#main(){}+0x26f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270715(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	275441(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424118 <kfun:#main(){}+0x2728>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x424139 <kfun:#main(){}+0x2749>
               	testl	%ebx, %ebx
               	je	0x424141 <kfun:#main(){}+0x2751>
               	movq	$0, 270641(%rip)        # 0x466260 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 270675(%rip)        # 0x46628c <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	270624(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x426c90 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275346(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424177 <kfun:#main(){}+0x2787>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424186 <kfun:#main(){}+0x2796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270555(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275282(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4241b7 <kfun:#main(){}+0x27c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4241c6 <kfun:#main(){}+0x27d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270491(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275218(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4241f7 <kfun:#main(){}+0x2807>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424206 <kfun:#main(){}+0x2816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270427(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275154(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424237 <kfun:#main(){}+0x2847>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424246 <kfun:#main(){}+0x2856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270363(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275090(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424277 <kfun:#main(){}+0x2887>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424286 <kfun:#main(){}+0x2896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270299(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	275026(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4242b7 <kfun:#main(){}+0x28c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4242c6 <kfun:#main(){}+0x28d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270235(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274962(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4242f7 <kfun:#main(){}+0x2907>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424306 <kfun:#main(){}+0x2916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270171(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274898(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424337 <kfun:#main(){}+0x2947>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424346 <kfun:#main(){}+0x2956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270107(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274834(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424377 <kfun:#main(){}+0x2987>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424386 <kfun:#main(){}+0x2996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	270043(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274770(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4243b7 <kfun:#main(){}+0x29c7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4243c6 <kfun:#main(){}+0x29d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269979(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274706(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4243f7 <kfun:#main(){}+0x2a07>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424406 <kfun:#main(){}+0x2a16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269915(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274642(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424437 <kfun:#main(){}+0x2a47>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424446 <kfun:#main(){}+0x2a56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269851(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274578(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424477 <kfun:#main(){}+0x2a87>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424486 <kfun:#main(){}+0x2a96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269787(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274514(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4244b7 <kfun:#main(){}+0x2ac7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4244c6 <kfun:#main(){}+0x2ad6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269723(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274450(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4244f7 <kfun:#main(){}+0x2b07>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424506 <kfun:#main(){}+0x2b16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269659(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274386(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424537 <kfun:#main(){}+0x2b47>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424546 <kfun:#main(){}+0x2b56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269595(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274322(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424577 <kfun:#main(){}+0x2b87>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424586 <kfun:#main(){}+0x2b96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269531(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	274258(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4245b7 <kfun:#main(){}+0x2bc7>
               	callq	0x426a40 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4245c6 <kfun:#main(){}+0x2bd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	269467(%rip), %rsi      # 0x466268 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x426c90 <AddTLSRecord>

