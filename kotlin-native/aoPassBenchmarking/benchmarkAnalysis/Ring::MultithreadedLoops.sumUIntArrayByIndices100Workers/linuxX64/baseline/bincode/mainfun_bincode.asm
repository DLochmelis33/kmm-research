<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$392, %rsp              # imm = 0x188
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 368(%rsp)
               	movaps	%xmm0, 352(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, 40(%rsp)
               	movq	-64(%rax), %r14
               	movq	288(%r14), %rax
               	movq	%rax, 360(%rsp)
               	leaq	352(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 368(%rsp)
               	movb	288774(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42357b <kfun:#main(){}+0x7b>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$40, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdx
               	movq	$0, 8(%rax)
               	leaq	250125(%rip), %rcx      # 0x4606b0 <ktypeglobal:MultithreadedLoopsBenchmark#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdx, 344(%rsp)
               	movq	%rdx, 376(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 224(%rsp)
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movq	$0, 240(%rsp)
               	movq	288(%r14), %rcx
               	movq	%rcx, 152(%rsp)
               	leaq	144(%rsp), %rcx
               	movq	%rcx, 288(%r14)
               	movabsq	$55834574848, %rcx      # imm = 0xD00000000
               	movq	%rcx, 160(%rsp)
               	movq	%rax, 104(%rsp)
               	movl	$100, 40(%rax)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$824, %esi              # imm = 0x338
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r15
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	235052(%rip), %rax      # 0x45cc90 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%r15)
               	movl	$100, 24(%r15)
               	movq	%rcx, 56(%rsp)
               	movq	%rcx, 176(%rsp)
               	xorl	%r13d, %r13d
               	leaq	235305(%rip), %r12      # 0x45cdb0 <ktypeglobal:kotlin.IntArray#internal>
               	movq	%r14, 48(%rsp)
               	cmpq	$100, %r13
               	je	0x42376b <kfun:#main(){}+0x26b>
               	nopw	%cs:(%rax,%rax)
               	movb	288466(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4236af <kfun:#main(){}+0x1af>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$40024, %esi            # imm = 0x9C58
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbp
               	leaq	16(%rax), %rbx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	movq	%r12, 16(%rax)
               	movl	$10000, 24(%rax)        # imm = 0x2710
               	movq	%rbx, 184(%rsp)
               	xorl	%r14d, %r14d
               	cmpq	$10000, %r14            # imm = 0x2710
               	je	0x423732 <kfun:#main(){}+0x232>
               	nopl	(%rax)
               	movzbl	288369(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423710 <kfun:#main(){}+0x210>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%rbp), %eax
               	cmpq	%rax, %r14
               	jae	0x42446f <kfun:#main(){}+0xf6f>
               	movq	16(%rbp), %rax
               	movl	%r14d, 32(%rbp,%r14,4)
               	addq	$1, %r14
               	cmpq	$10000, %r14            # imm = 0x2710
               	jne	0x423700 <kfun:#main(){}+0x200>
               	movq	%rbx, %rdi
               	leaq	208(%rsp), %rsi
               	callq	0x422e70 <kfun:kotlin#<UIntArray-box>(kotlin.UIntArray?){}kotlin.Any?>
               	movl	24(%r15), %ecx
               	cmpq	%rcx, %r13
               	jae	0x42446f <kfun:#main(){}+0xf6f>
               	movq	16(%r15), %rcx
               	movq	%rax, 32(%r15,%r13,8)
               	addq	$1, %r13
               	movq	48(%rsp), %r14
               	cmpq	$100, %r13
               	jne	0x4236a0 <kfun:#main(){}+0x1a0>
               	movq	104(%rsp), %rax
               	movq	56(%rsp), %rcx
               	movq	%rcx, 24(%rax)
               	movl	40(%rax), %r13d
               	testl	%r13d, %r13d
               	js	0x4245a4 <kfun:#main(){}+0x10a4>
               	movq	296(%r14), %rdi
               	leaq	31(,%r13,8), %rsi
               	andq	$-8, %rsi
               	addq	$112, %rdi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r15
               	leaq	16(%rax), %rcx
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	234705(%rip), %rax      # 0x45cc90 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%r15)
               	movl	%r13d, 24(%r15)
               	movq	%rcx, 56(%rsp)
               	movq	%rcx, 224(%rsp)
               	xorl	%r12d, %r12d
               	cmpq	%r12, %r13
               	je	0x423934 <kfun:#main(){}+0x434>
               	movzbl	288145(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4237f0 <kfun:#main(){}+0x2f0>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	277273(%rip), %rax      # 0x467310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	movq	%rax, 232(%rsp)
               	callq	0x43b490 <(anonymous namespace)::theState()>
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x43ce80 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)>
               	testq	%rax, %rax
               	je	0x423890 <kfun:#main(){}+0x390>
               	movq	%rax, %rbp
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %r14d
               	xchgl	%r14d, 328(%rbx)
               	movq	%rbp, %rdi
               	addq	$240, %rdi
               	xorl	%esi, %esi
               	leaq	107118(%rip), %rdx      # 0x43dab0 <(anonymous namespace)::workerRoutine(void*)>
               	movq	%rbp, %rcx
               	callq	0x413780 <pthread_create@plt>
               	testq	%rbx, %rbx
               	je	0x423880 <kfun:#main(){}+0x380>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%r14d, %eax
               	xchgl	%eax, (%rbx)
               	testl	%r14d, %r14d
               	jne	0x423880 <kfun:#main(){}+0x380>
               	cmpl	$1, %eax
               	jne	0x423880 <kfun:#main(){}+0x380>
               	movzbl	288008(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423880 <kfun:#main(){}+0x380>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	movl	(%rbp), %ebx
               	movq	48(%rsp), %r14
               	jmp	0x423895 <kfun:#main(){}+0x395>
               	nopl	(%rax)
               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	240255(%rip), %rdx      # 0x45e370 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 88(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 240(%rsp)
               	movq	72(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movl	24(%r15), %eax
               	cmpq	%rax, %r12
               	jae	0x42446f <kfun:#main(){}+0xf6f>
               	movq	16(%r15), %rax
               	movq	%rcx, 32(%r15,%r12,8)
               	addq	$1, %r12
               	cmpq	%r12, %r13
               	jne	0x4237e0 <kfun:#main(){}+0x2e0>
               	movq	104(%rsp), %rcx
               	movq	56(%rsp), %rax
               	movq	%rax, 32(%rcx)
               	movq	152(%rsp), %rax
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 144(%rsp)
               	movaps	%xmm0, 256(%rsp)
               	movaps	%xmm0, 240(%rsp)
               	movaps	%xmm0, 224(%rsp)
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movq	$0, 272(%rsp)
               	movq	%rax, 152(%rsp)
               	leaq	144(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$73014444032, %rax      # imm = 0x1100000000
               	movq	%rax, 160(%rsp)
               	movl	40(%rcx), %ebx
               	testl	%ebx, %ebx
               	js	0x4245da <kfun:#main(){}+0x10da>
               	movq	296(%r14), %rdi
               	leaq	31(,%rbx,8), %rsi
               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
               	andq	%rax, %rsi
               	addq	$112, %rdi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	addq	$16, %rax
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%r12)
               	movq	$0, 24(%r12)
               	leaq	234110(%rip), %rcx      # 0x45cc90 <ktypeglobal:kotlin.Array#internal>
               	movq	%rcx, 16(%r12)
               	movl	%ebx, 24(%r12)
               	movq	%rax, 176(%rsp)
               	xorl	%r13d, %r13d
               	movq	%r12, 136(%rsp)
               	movq	%rbx, 336(%rsp)
               	cmpq	%rbx, %r13
               	je	0x42413a <kfun:#main(){}+0xc3a>
               	movb	287538(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423a4f <kfun:#main(){}+0x54f>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	104(%rsp), %rax
               	movq	32(%rax), %rax
               	movl	8(%rax), %ecx
               	cmpq	%rcx, %r13
               	jae	0x42446f <kfun:#main(){}+0xf6f>
               	movq	16(%rax,%r13,8), %rax
               	movq	%rax, 184(%rsp)
               	movslq	8(%rax), %r15
               	movl	282757(%rip), %eax      # 0x468b00 <state_global$kotlin.native.concurrent.TransferMode>
               	cmpl	$2, %eax
               	je	0x423a93 <kfun:#main(){}+0x593>
               	leaq	282745(%rip), %rdi      # 0x468b00 <state_global$kotlin.native.concurrent.TransferMode>
               	leaq	-40926(%rip), %rsi      # 0x419ab0 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
               	callq	0x43d890 <CallInitGlobalPossiblyLock>
               	movq	282662(%rip), %rax      # 0x468ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	16(%rax), %rbx
               	movq	%rbx, 192(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	248946(%rip), %rcx      # 0x460740 <ktypeglobal:MultithreadedLoopsBenchmark.$runSumUIntArrayByIndicesWorkers$lambda$0$FUNCTION_REFERENCE$0#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 200(%rsp)
               	movq	344(%rsp), %rcx
               	movq	%rcx, 24(%rax)
               	movl	%r13d, 32(%rax)
               	movl	20(%rbx), %eax
               	movl	%eax, 56(%rsp)
               	movq	$0, 304(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 288(%rsp)
               	leaq	280(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 296(%rsp)
               	leaq	304(%rsp), %rsi
               	callq	0x418f80 <WorkerLaunchpad>
               	movq	304(%rsp), %rdi
               	callq	0x428740 <CreateStablePointer>
               	movq	%rax, 120(%rsp)
               	movq	$0, 304(%rsp)
               	callq	0x43b490 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbp
               	movl	$1, %ebx
               	xchgl	%ebx, 328(%rbp)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbp, %rbp
               	je	0x423bb0 <kfun:#main(){}+0x6b0>
               	addq	$328, %rbp              # imm = 0x148
               	movl	%ebx, %eax
               	xchgl	%eax, (%rbp)
               	testl	%ebx, %ebx
               	jne	0x423bb0 <kfun:#main(){}+0x6b0>
               	cmpl	$1, %eax
               	jne	0x423bb0 <kfun:#main(){}+0x6b0>
               	movb	287193(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423bb0 <kfun:#main(){}+0x6b0>
               	movq	%rbp, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	152(%r14), %rdi
               	movq	%r15, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x423bf0 <kfun:#main(){}+0x6f0>
               	movq	%r15, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	jne	0x423c0d <kfun:#main(){}+0x70d>
               	jmp	0x423d10 <kfun:#main(){}+0x810>
               	nopl	(%rax,%rax)
               	movl	%r15d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	144(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	testq	%rax, %rax
               	je	0x423d10 <kfun:#main(){}+0x810>
               	movq	(%rax), %rbp
               	cmpl	%r15d, 8(%rbp)
               	jne	0x423c34 <kfun:#main(){}+0x734>
               	testq	%rbp, %rbp
               	jne	0x423c6f <kfun:#main(){}+0x76f>
               	jmp	0x423d10 <kfun:#main(){}+0x810>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x423d10 <kfun:#main(){}+0x810>
               	cmpl	%r15d, %esi
               	je	0x423c66 <kfun:#main(){}+0x766>
               	movq	%rbp, %rbx
               	movq	(%rbp), %rbp
               	testq	%rbp, %rbp
               	je	0x423d10 <kfun:#main(){}+0x810>
               	movslq	8(%rbp), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x423c20 <kfun:#main(){}+0x720>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x423c2f <kfun:#main(){}+0x72f>
               	jmp	0x423d10 <kfun:#main(){}+0x810>
               	testq	%rbx, %rbx
               	je	0x423d10 <kfun:#main(){}+0x810>
               	movq	16(%rbp), %rax
               	movq	%rax, 328(%rsp)
               	movl	$1, %edi
               	movl	$104, %esi
               	callq	0x413700 <calloc@plt>
               	testq	%rax, %rax
               	je	0x423d18 <kfun:#main(){}+0x818>
               	movq	%rax, %r15
               	movl	260(%r14), %eax
               	leal	1(%rax), %ecx
               	movl	%ecx, 260(%r14)
               	movl	$1, (%r15)
               	movl	%eax, 4(%r15)
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	leaq	16(%r15), %rdi
               	xorl	%esi, %esi
               	callq	0x413790 <pthread_mutex_init@plt>
               	movq	%r15, %rdi
               	addq	$56, %rdi
               	xorl	%esi, %esi
               	callq	0x4137a0 <pthread_cond_init@plt>
               	testq	%rbx, %rbx
               	je	0x423d1b <kfun:#main(){}+0x81b>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x423d1b <kfun:#main(){}+0x81b>
               	cmpl	$1, %eax
               	jne	0x423d1b <kfun:#main(){}+0x81b>
               	movb	286839(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423d1b <kfun:#main(){}+0x81b>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x423d1b <kfun:#main(){}+0x81b>
               	nop
               	xorl	%r15d, %r15d
               	jmp	0x424017 <kfun:#main(){}+0xb17>
               	xorl	%r15d, %r15d
               	movl	4(%r15), %r8d
               	movslq	%r8d, %rax
               	movq	96(%r14), %rdi
               	movq	%rax, %rcx
               	orq	%rdi, %rcx
               	shrq	$32, %rcx
               	movq	%rax, 312(%rsp)
               	je	0x423d51 <kfun:#main(){}+0x851>
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rbp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	jne	0x423d67 <kfun:#main(){}+0x867>
               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
               	movl	%r8d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ebp
               	movq	88(%r14), %rax
               	movq	(%rax,%rbp,8), %rax
               	testq	%rax, %rax
               	je	0x423dc8 <kfun:#main(){}+0x8c8>
               	movq	(%rax), %rbx
               	cmpl	8(%rbx), %r8d
               	jne	0x423d90 <kfun:#main(){}+0x890>
               	testq	%rbx, %rbx
               	jne	0x423dbf <kfun:#main(){}+0x8bf>
               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
               	nop
               	movl	%ecx, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rbp, %rdx
               	jne	0x423dc8 <kfun:#main(){}+0x8c8>
               	cmpl	%ecx, %r8d
               	je	0x423dba <kfun:#main(){}+0x8ba>
               	movq	%rbx, %rsi
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x423dc8 <kfun:#main(){}+0x8c8>
               	movslq	8(%rbx), %rcx
               	movq	%rcx, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x423d80 <kfun:#main(){}+0x880>
               	movq	%rcx, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rbp, %rdx
               	je	0x423d8b <kfun:#main(){}+0x88b>
               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
               	testq	%rsi, %rsi
               	je	0x423dc8 <kfun:#main(){}+0x8c8>
               	addq	$8, %rbx
               	jmp	0x423fbe <kfun:#main(){}+0xabe>
               	movl	%r8d, %ebx
               	movq	%r15, 320(%rsp)
               	movl	$1, %edi
               	movl	$24, %esi
               	callq	0x413700 <calloc@plt>
               	movl	%ebx, 132(%rsp)
               	movq	%rax, 112(%rsp)
               	movl	%ebx, 8(%rax)
               	leaq	120(%r14), %rdi
               	movq	96(%r14), %rsi
               	movq	112(%r14), %rdx
               	movl	$1, %ecx
               	callq	0x441d4a <std::__detail::_Prime_rehash_policy::_M_need_rehash(unsigned long, unsigned long, unsigned long) const>
               	testb	$1, %al
               	jne	0x423e1c <kfun:#main(){}+0x91c>
               	movq	88(%r14), %r12
               	movq	112(%rsp), %rdi
               	movq	%rbp, %rsi
               	jmp	0x423f48 <kfun:#main(){}+0xa48>
               	movq	%rdx, %r15
               	cmpq	$1, %rdx
               	je	0x423ed3 <kfun:#main(){}+0x9d3>
               	movl	$8, %esi
               	movq	%r15, %rdi
               	callq	0x413700 <calloc@plt>
               	movq	%rax, %r12
               	leaq	(,%r15,8), %rdx
               	movq	%rax, %rdi
               	xorl	%esi, %esi
               	callq	0x413750 <memset@plt>
               	movq	104(%r14), %rbx
               	movq	$0, 104(%r14)
               	testq	%rbx, %rbx
               	je	0x423efa <kfun:#main(){}+0x9fa>
               	leaq	104(%r14), %rsi
               	xorl	%edi, %edi
               	jmp	0x423e96 <kfun:#main(){}+0x996>
               	nopl	(%rax,%rax)
               	xorl	%edx, %edx
               	divl	%r15d
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	je	0x423eba <kfun:#main(){}+0x9ba>
               	movq	(%rax), %rax
               	movq	%rax, (%rcx)
               	movq	(%r12,%rdx,8), %rax
               	movq	%rcx, (%rax)
               	movq	%rdi, %rdx
               	movq	%rdx, %rdi
               	testq	%rbx, %rbx
               	je	0x423efa <kfun:#main(){}+0x9fa>
               	movq	%rbx, %rcx
               	movq	(%rbx), %rbx
               	movslq	8(%rcx), %rax
               	movq	%rax, %rdx
               	orq	%r15, %rdx
               	shrq	$32, %rdx
               	je	0x423e70 <kfun:#main(){}+0x970>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	(%r12,%rdx,8), %rax
               	testq	%rax, %rax
               	jne	0x423e7e <kfun:#main(){}+0x97e>
               	movq	(%rsi), %rax
               	movq	%rax, (%rcx)
               	movq	%rcx, (%rsi)
               	movq	%rsi, (%r12,%rdx,8)
               	cmpq	$0, (%rcx)
               	je	0x423e8e <kfun:#main(){}+0x98e>
               	movq	%rcx, (%r12,%rdi,8)
               	jmp	0x423e8e <kfun:#main(){}+0x98e>
               	leaq	136(%r14), %r12
               	movq	$0, 136(%r14)
               	movq	104(%r14), %rbx
               	movq	$0, 104(%r14)
               	testq	%rbx, %rbx
               	jne	0x423e60 <kfun:#main(){}+0x960>
               	movq	88(%r14), %rdi
               	leaq	136(%r14), %rax
               	cmpq	%rax, %rdi
               	je	0x423f0f <kfun:#main(){}+0xa0f>
               	callq	0x413730 <free@plt>
               	movq	%r15, 96(%r14)
               	movq	%r12, 88(%r14)
               	movq	312(%rsp), %rax
               	movq	%rax, %rcx
               	orq	%r15, %rcx
               	shrq	$32, %rcx
               	je	0x423f35 <kfun:#main(){}+0xa35>
               	xorl	%edx, %edx
               	divq	%r15
               	movq	%rdx, %rsi
               	jmp	0x423f43 <kfun:#main(){}+0xa43>
               	movl	132(%rsp), %eax
               	xorl	%edx, %edx
               	divl	%r15d
               	movl	%edx, %esi
               	movq	112(%rsp), %rdi
               	movq	%rdi, %rbx
               	addq	$8, %rbx
               	movq	(%r12,%rsi,8), %rax
               	testq	%rax, %rax
               	movq	320(%rsp), %r15
               	je	0x423f6f <kfun:#main(){}+0xa6f>
               	movq	(%rax), %rax
               	movq	%rax, (%rdi)
               	movq	(%r12,%rsi,8), %rax
               	movq	%rdi, (%rax)
               	jmp	0x423fb1 <kfun:#main(){}+0xab1>
               	movq	%r14, %rcx
               	addq	$104, %rcx
               	movq	104(%r14), %rax
               	movq	%rax, (%rdi)
               	movq	%rdi, 104(%r14)
               	testq	%rax, %rax
               	je	0x423fad <kfun:#main(){}+0xaad>
               	movq	96(%r14), %rbp
               	movslq	8(%rax), %rax
               	movq	%rax, %rdx
               	orq	%rbp, %rdx
               	shrq	$32, %rdx
               	je	0x423fa1 <kfun:#main(){}+0xaa1>
               	xorl	%edx, %edx
               	divq	%rbp
               	jmp	0x423fa5 <kfun:#main(){}+0xaa5>
               	xorl	%edx, %edx
               	divl	%ebp
               	movq	%rdi, (%r12,%rdx,8)
               	movq	88(%r14), %r12
               	movq	%rcx, (%r12,%rsi,8)
               	addq	$1, 112(%r14)
               	movq	136(%rsp), %r12
               	movq	%r15, 8(%rbx)
               	movl	$2, 64(%rsp)
               	leaq	-3489(%rip), %rax       # 0x423230 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal>
               	movq	%rax, 72(%rsp)
               	movq	120(%rsp), %rax
               	movq	%rax, 80(%rsp)
               	movq	%r15, 88(%rsp)
               	movl	56(%rsp), %eax
               	movl	%eax, 96(%rsp)
               	movq	96(%rsp), %rax
               	movq	%rax, 32(%rsp)
               	movups	64(%rsp), %xmm0
               	movups	80(%rsp), %xmm1
               	movups	%xmm1, 16(%rsp)
               	movups	%xmm0, (%rsp)
               	movq	328(%rsp), %rdi
               	callq	0x43b790 <Worker::putJob((anonymous namespace)::Job, bool)>
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x424070 <kfun:#main(){}+0xb70>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x424070 <kfun:#main(){}+0xb70>
               	cmpl	$1, %eax
               	jne	0x424070 <kfun:#main(){}+0xb70>
               	movb	285979(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424070 <kfun:#main(){}+0xb70>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	testq	%r15, %r15
               	movq	48(%rsp), %r14
               	je	0x42459f <kfun:#main(){}+0x109f>
               	movl	4(%r15), %ebx
               	movq	288(%rsp), %rax
               	movq	%rax, 288(%r14)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	237059(%rip), %rdx      # 0x45def0 <ktypeglobal:kotlin.native.concurrent.Future#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 88(%rsp)
               	movl	%ebx, 24(%rax)
               	movq	%rcx, 208(%rsp)
               	movq	72(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movl	24(%r12), %eax
               	cmpq	%rax, %r13
               	jae	0x42446f <kfun:#main(){}+0xf6f>
               	movq	16(%r12), %rax
               	movq	%rcx, 32(%r12,%r13,8)
               	addq	$1, %r13
               	movq	336(%rsp), %rbx
               	cmpq	%rbx, %r13
               	jne	0x423a40 <kfun:#main(){}+0x540>
               	movl	24(%r12), %eax
               	xorl	%r15d, %r15d
               	testl	%eax, %eax
               	cmovsl	%r15d, %eax
               	movq	%rax, 120(%rsp)
               	cmpq	120(%rsp), %r15
               	je	0x42444e <kfun:#main(){}+0xf4e>
               	nopl	(%rax,%rax)
               	movb	285714(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42416f <kfun:#main(){}+0xc6f>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	32(%r12,%r15,8), %rax
               	movq	%rax, 216(%rsp)
               	movslq	8(%rax), %r12
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movl	280890(%rip), %eax      # 0x468af4 <state_global$kotlin.native.concurrent.FutureState>
               	cmpl	$2, %eax
               	je	0x4241d2 <kfun:#main(){}+0xcd2>
               	leaq	280878(%rip), %rdi      # 0x468af4 <state_global$kotlin.native.concurrent.FutureState>
               	leaq	-47277(%rip), %rsi      # 0x418920 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
               	callq	0x43d890 <CallInitGlobalPossiblyLock>
               	movq	280775(%rip), %rdi      # 0x468aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	leaq	88(%rsp), %rsi
               	callq	0x41b470 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
               	movq	%rax, %r13
               	movq	%rax, 88(%rsp)
               	callq	0x43b490 <(anonymous namespace)::theState()>
               	movq	%rax, %r14
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x424240 <kfun:#main(){}+0xd40>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x424240 <kfun:#main(){}+0xd40>
               	cmpl	$1, %eax
               	jne	0x424240 <kfun:#main(){}+0xd40>
               	movb	285511(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424240 <kfun:#main(){}+0xd40>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nopl	(%rax)
               	movq	96(%r14), %rdi
               	movq	%r12, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	movq	%r15, 56(%rsp)
               	je	0x424270 <kfun:#main(){}+0xd70>
               	movq	%r12, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	movq	%rdx, %rcx
               	jmp	0x424279 <kfun:#main(){}+0xd79>
               	nopl	(%rax)
               	movl	%r12d, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	movl	%edx, %ecx
               	movq	88(%r14), %rax
               	movq	(%rax,%rcx,8), %rax
               	xorl	%r15d, %r15d
               	testq	%rax, %rax
               	je	0x4243a0 <kfun:#main(){}+0xea0>
               	movq	(%rax), %rbx
               	cmpl	%r12d, 8(%rbx)
               	jne	0x4242b4 <kfun:#main(){}+0xdb4>
               	testq	%rbx, %rbx
               	jne	0x4242ee <kfun:#main(){}+0xdee>
               	jmp	0x4243a0 <kfun:#main(){}+0xea0>
               	movl	%esi, %eax
               	xorl	%edx, %edx
               	divl	%edi
               	cmpq	%rcx, %rdx
               	jne	0x4243a0 <kfun:#main(){}+0xea0>
               	cmpl	%r12d, %esi
               	je	0x4242e5 <kfun:#main(){}+0xde5>
               	movq	%rbx, %rbp
               	movq	(%rbx), %rbx
               	testq	%rbx, %rbx
               	je	0x4243a0 <kfun:#main(){}+0xea0>
               	movslq	8(%rbx), %rsi
               	movq	%rsi, %rax
               	orq	%rdi, %rax
               	shrq	$32, %rax
               	je	0x4242a0 <kfun:#main(){}+0xda0>
               	movq	%rsi, %rax
               	xorl	%edx, %edx
               	divq	%rdi
               	cmpq	%rcx, %rdx
               	je	0x4242af <kfun:#main(){}+0xdaf>
               	jmp	0x4243a0 <kfun:#main(){}+0xea0>
               	testq	%rbp, %rbp
               	je	0x4243a0 <kfun:#main(){}+0xea0>
               	movq	16(%rbx), %r15
               	leaq	16(%r15), %rdi
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%rdi, 104(%rsp)
               	callq	0x413760 <pthread_mutex_lock@plt>
               	testq	%rbx, %rbx
               	je	0x424350 <kfun:#main(){}+0xe50>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x424350 <kfun:#main(){}+0xe50>
               	cmpl	$1, %eax
               	jne	0x424350 <kfun:#main(){}+0xe50>
               	movb	285242(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424350 <kfun:#main(){}+0xe50>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movl	(%r15), %r15d
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	104(%rsp), %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x4243a0 <kfun:#main(){}+0xea0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4243a0 <kfun:#main(){}+0xea0>
               	cmpl	$1, %eax
               	jne	0x4243a0 <kfun:#main(){}+0xea0>
               	movb	285157(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4243a0 <kfun:#main(){}+0xea0>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %rbx
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%rbx)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%rbx, %rbx
               	je	0x4243f0 <kfun:#main(){}+0xef0>
               	addq	$328, %rbx              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%rbx)
               	testl	%ebp, %ebp
               	jne	0x4243f0 <kfun:#main(){}+0xef0>
               	cmpl	$1, %eax
               	jne	0x4243f0 <kfun:#main(){}+0xef0>
               	movb	285082(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4243f0 <kfun:#main(){}+0xef0>
               	movq	%rbx, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	nop
               	cmpl	%r15d, 8(%r13)
               	movq	48(%rsp), %r14
               	jbe	0x42446f <kfun:#main(){}+0xf6f>
               	movslq	%r15d, %rax
               	movq	16(%r13,%rax,8), %rax
               	movq	%rax, 224(%rsp)
               	movq	72(%rsp), %rcx
               	movq	%rcx, 288(%r14)
               	movl	16(%rax), %eax
               	leal	-1(%rax), %ecx
               	cmpl	$2, %ecx
               	jae	0x424474 <kfun:#main(){}+0xf74>
               	movq	56(%rsp), %r15
               	addq	$1, %r15
               	movl	%r12d, %edi
               	leaq	232(%rsp), %rsi
               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
               	movq	136(%rsp), %r12
               	cmpq	120(%rsp), %r15
               	jne	0x424160 <kfun:#main(){}+0xc60>
               	movq	360(%rsp), %rax
               	movq	%rax, 288(%r14)
               	addq	$392, %rsp              # imm = 0x188
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
               	testl	%eax, %eax
               	je	0x4244ea <kfun:#main(){}+0xfea>
               	cmpl	$3, %eax
               	je	0x42453a <kfun:#main(){}+0x103a>
               	cmpl	$4, %eax
               	jne	0x42459a <kfun:#main(){}+0x109a>
               	leaq	264(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	233081(%rip), %rcx      # 0x45d340 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 272(%rsp)
               	leaq	262966(%rip), %rsi      # 0x464810 <__unnamed_68>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43da90 <ThrowException>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	233001(%rip), %rcx      # 0x45d340 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 240(%rsp)
               	leaq	262742(%rip), %rsi      # 0x464780 <__unnamed_31>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43da90 <ThrowException>
               	leaq	248(%rsp), %rsi
               	movl	%r12d, %edi
               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
               	movq	48(%rsp), %rax
               	movq	296(%rax), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	232905(%rip), %rcx      # 0x45d340 <ktypeglobal:kotlin.IllegalStateException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 256(%rsp)
               	leaq	262726(%rip), %rsi      # 0x4647d0 <__unnamed_69>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43da90 <ThrowException>
               	callq	0x41b3d0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
               	callq	0x418de0 <ThrowWorkerAlreadyTerminated>
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	232660(%rip), %rcx      # 0x45d2a0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 216(%rsp)
               	jmp	0x42460e <kfun:#main(){}+0x110e>
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	232606(%rip), %rcx      # 0x45d2a0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 168(%rsp)
               	leaq	261643(%rip), %rsi      # 0x464420 <__unnamed_54>
               	movq	%rbx, %rdi
               	callq	0x415ce0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43da90 <ThrowException>
               	jmp	0x424678 <kfun:#main(){}+0x1178>
               	movq	%rax, %rbx
               	movq	40(%rsp), %rax
               	movq	-64(%rax), %r15
               	movl	$1, %ebp
               	xchgl	%ebp, 328(%r15)
               	movq	%r14, %rdi
               	callq	0x413770 <pthread_mutex_unlock@plt>
               	testq	%r15, %r15
               	je	0x42467b <kfun:#main(){}+0x117b>
               	addq	$328, %r15              # imm = 0x148
               	movl	%ebp, %eax
               	xchgl	%eax, (%r15)
               	testl	%ebp, %ebp
               	jne	0x42467b <kfun:#main(){}+0x117b>
               	cmpl	$1, %eax
               	jne	0x42467b <kfun:#main(){}+0x117b>
               	movb	284430(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42467b <kfun:#main(){}+0x117b>
               	movq	%r15, %rdi
               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
               	jmp	0x42467b <kfun:#main(){}+0x117b>
               	movq	%rax, %rbx
               	movq	288(%rsp), %rax
               	movq	48(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	movq	%rbx, %rdi
               	callq	0x413740 <_Unwind_Resume@plt>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	284362(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4246b7 <kfun:#main(){}+0x11b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4246c6 <kfun:#main(){}+0x11c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279579(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	284298(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4246f7 <kfun:#main(){}+0x11f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424706 <kfun:#main(){}+0x1206>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279515(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	284234(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424737 <kfun:#main(){}+0x1237>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424746 <kfun:#main(){}+0x1246>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279451(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	284170(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424777 <kfun:#main(){}+0x1277>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424786 <kfun:#main(){}+0x1286>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279387(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	284106(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4247b7 <kfun:#main(){}+0x12b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4247c6 <kfun:#main(){}+0x12c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279323(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	284042(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4247f7 <kfun:#main(){}+0x12f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424806 <kfun:#main(){}+0x1306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279259(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283978(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424837 <kfun:#main(){}+0x1337>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424846 <kfun:#main(){}+0x1346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279195(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283914(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424877 <kfun:#main(){}+0x1377>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424886 <kfun:#main(){}+0x1386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279131(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283850(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4248b7 <kfun:#main(){}+0x13b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4248c6 <kfun:#main(){}+0x13c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279067(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283786(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4248f7 <kfun:#main(){}+0x13f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424906 <kfun:#main(){}+0x1406>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	279003(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283722(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424937 <kfun:#main(){}+0x1437>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424946 <kfun:#main(){}+0x1446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278939(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283658(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424977 <kfun:#main(){}+0x1477>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424986 <kfun:#main(){}+0x1486>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278875(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283594(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4249b7 <kfun:#main(){}+0x14b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4249c6 <kfun:#main(){}+0x14c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278811(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283530(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4249f7 <kfun:#main(){}+0x14f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424a06 <kfun:#main(){}+0x1506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278747(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283466(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424a37 <kfun:#main(){}+0x1537>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424a46 <kfun:#main(){}+0x1546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278683(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283402(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424a77 <kfun:#main(){}+0x1577>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424a86 <kfun:#main(){}+0x1586>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278619(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283338(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424ab7 <kfun:#main(){}+0x15b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424ac6 <kfun:#main(){}+0x15c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278555(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283274(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424af7 <kfun:#main(){}+0x15f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424b06 <kfun:#main(){}+0x1606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278491(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283210(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424b37 <kfun:#main(){}+0x1637>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424b46 <kfun:#main(){}+0x1646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278427(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283146(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424b77 <kfun:#main(){}+0x1677>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424b86 <kfun:#main(){}+0x1686>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278363(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283082(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424bb7 <kfun:#main(){}+0x16b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424bc6 <kfun:#main(){}+0x16c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278299(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	283018(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424bf7 <kfun:#main(){}+0x16f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424c06 <kfun:#main(){}+0x1706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278235(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282954(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424c37 <kfun:#main(){}+0x1737>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424c46 <kfun:#main(){}+0x1746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278171(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282890(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424c77 <kfun:#main(){}+0x1777>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424c86 <kfun:#main(){}+0x1786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278107(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282826(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424cb7 <kfun:#main(){}+0x17b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424cc6 <kfun:#main(){}+0x17c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	278043(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282762(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424cf7 <kfun:#main(){}+0x17f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424d06 <kfun:#main(){}+0x1806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277979(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282698(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424d37 <kfun:#main(){}+0x1837>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424d46 <kfun:#main(){}+0x1846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277915(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282634(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424d77 <kfun:#main(){}+0x1877>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424d86 <kfun:#main(){}+0x1886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277851(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282570(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424db7 <kfun:#main(){}+0x18b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424dc6 <kfun:#main(){}+0x18c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277787(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282506(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424df7 <kfun:#main(){}+0x18f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424e06 <kfun:#main(){}+0x1906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277723(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282442(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424e37 <kfun:#main(){}+0x1937>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424e46 <kfun:#main(){}+0x1946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277659(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282378(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424e77 <kfun:#main(){}+0x1977>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424e86 <kfun:#main(){}+0x1986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277595(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282314(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424eb7 <kfun:#main(){}+0x19b7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424ec6 <kfun:#main(){}+0x19c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277531(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282250(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424ef7 <kfun:#main(){}+0x19f7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424f06 <kfun:#main(){}+0x1a06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277467(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282186(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424f37 <kfun:#main(){}+0x1a37>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424f46 <kfun:#main(){}+0x1a46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277403(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282122(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424f77 <kfun:#main(){}+0x1a77>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424f86 <kfun:#main(){}+0x1a86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277339(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	282058(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424fb7 <kfun:#main(){}+0x1ab7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x424fc6 <kfun:#main(){}+0x1ac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277275(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281994(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x424ff7 <kfun:#main(){}+0x1af7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425006 <kfun:#main(){}+0x1b06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277211(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281930(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425037 <kfun:#main(){}+0x1b37>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425046 <kfun:#main(){}+0x1b46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277147(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281866(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425077 <kfun:#main(){}+0x1b77>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425086 <kfun:#main(){}+0x1b86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	277083(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	281801(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4250b8 <kfun:#main(){}+0x1bb8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4250e4 <kfun:#main(){}+0x1be4>
               	testl	%ebx, %ebx
               	je	0x4250ec <kfun:#main(){}+0x1bec>
               	movq	$0, 276929(%rip)        # 0x468a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 276926(%rip)        # 0x468a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 277004(%rip)        # 0x468af0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	276981(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281690(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425127 <kfun:#main(){}+0x1c27>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425136 <kfun:#main(){}+0x1c36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276907(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281626(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425167 <kfun:#main(){}+0x1c67>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425176 <kfun:#main(){}+0x1c76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276843(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281562(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4251a7 <kfun:#main(){}+0x1ca7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4251b6 <kfun:#main(){}+0x1cb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276779(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	281497(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4251e8 <kfun:#main(){}+0x1ce8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x425214 <kfun:#main(){}+0x1d14>
               	testl	%ebx, %ebx
               	je	0x42521c <kfun:#main(){}+0x1d1c>
               	movq	$0, 276641(%rip)        # 0x468aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
               	movq	$0, 276638(%rip)        # 0x468aa8 <kvar:kotlin.native.concurrent.FutureState.$ENTRIES#internal>
               	movl	$0, 276704(%rip)        # 0x468af4 <state_global$kotlin.native.concurrent.FutureState>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	276677(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	281385(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425258 <kfun:#main(){}+0x1d58>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x425279 <kfun:#main(){}+0x1d79>
               	testl	%ebx, %ebx
               	je	0x425281 <kfun:#main(){}+0x1d81>
               	movq	$0, 276545(%rip)        # 0x468ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 276607(%rip)        # 0x468af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	276576(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	281289(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4252b8 <kfun:#main(){}+0x1db8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4252d9 <kfun:#main(){}+0x1dd9>
               	testl	%ebx, %ebx
               	je	0x4252e1 <kfun:#main(){}+0x1de1>
               	movq	$0, 276457(%rip)        # 0x468ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 276515(%rip)        # 0x468afc <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	276480(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	281194(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425317 <kfun:#main(){}+0x1e17>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425326 <kfun:#main(){}+0x1e26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276411(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	281129(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425358 <kfun:#main(){}+0x1e58>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x425384 <kfun:#main(){}+0x1e84>
               	testl	%ebx, %ebx
               	je	0x42538c <kfun:#main(){}+0x1e8c>
               	movq	$0, 276305(%rip)        # 0x468ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
               	movq	$0, 276302(%rip)        # 0x468ac8 <kvar:kotlin.native.concurrent.TransferMode.$ENTRIES#internal>
               	movl	$0, 276348(%rip)        # 0x468b00 <state_global$kotlin.native.concurrent.TransferMode>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	276309(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	281017(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4253c8 <kfun:#main(){}+0x1ec8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4253df <kfun:#main(){}+0x1edf>
               	testl	%ebx, %ebx
               	je	0x4253e7 <kfun:#main(){}+0x1ee7>
               	movq	$0, 270129(%rip)        # 0x467310 <kvar:kotlin.native.concurrent.Worker.$companion#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	276218(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280922(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425427 <kfun:#main(){}+0x1f27>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425436 <kfun:#main(){}+0x1f36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276139(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280858(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425467 <kfun:#main(){}+0x1f67>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425476 <kfun:#main(){}+0x1f76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	276075(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	280793(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4254a8 <kfun:#main(){}+0x1fa8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4254c9 <kfun:#main(){}+0x1fc9>
               	testl	%ebx, %ebx
               	je	0x4254d1 <kfun:#main(){}+0x1fd1>
               	movq	$0, 275985(%rip)        # 0x468ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 276027(%rip)        # 0x468b04 <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	275984(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280698(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425507 <kfun:#main(){}+0x2007>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425516 <kfun:#main(){}+0x2016>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275915(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280634(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425547 <kfun:#main(){}+0x2047>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425556 <kfun:#main(){}+0x2056>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275851(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	280569(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425588 <kfun:#main(){}+0x2088>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4255a9 <kfun:#main(){}+0x20a9>
               	testl	%ebx, %ebx
               	je	0x4255b1 <kfun:#main(){}+0x20b1>
               	movq	$0, 275769(%rip)        # 0x468ad8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 275807(%rip)        # 0x468b08 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	275760(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280474(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4255e7 <kfun:#main(){}+0x20e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4255f6 <kfun:#main(){}+0x20f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275691(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280410(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425627 <kfun:#main(){}+0x2127>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425636 <kfun:#main(){}+0x2136>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275627(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280346(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425667 <kfun:#main(){}+0x2167>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425676 <kfun:#main(){}+0x2176>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275563(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280282(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4256a7 <kfun:#main(){}+0x21a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4256b6 <kfun:#main(){}+0x21b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275499(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280218(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4256e7 <kfun:#main(){}+0x21e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4256f6 <kfun:#main(){}+0x21f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275435(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280154(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425727 <kfun:#main(){}+0x2227>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425736 <kfun:#main(){}+0x2236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275371(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280090(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425767 <kfun:#main(){}+0x2267>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425776 <kfun:#main(){}+0x2276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275307(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	280026(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4257a7 <kfun:#main(){}+0x22a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4257b6 <kfun:#main(){}+0x22b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275243(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279962(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4257e7 <kfun:#main(){}+0x22e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4257f6 <kfun:#main(){}+0x22f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275179(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279898(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425827 <kfun:#main(){}+0x2327>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425836 <kfun:#main(){}+0x2336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275115(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279834(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425867 <kfun:#main(){}+0x2367>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425876 <kfun:#main(){}+0x2376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	275051(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279770(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4258a7 <kfun:#main(){}+0x23a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4258b6 <kfun:#main(){}+0x23b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274987(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279706(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4258e7 <kfun:#main(){}+0x23e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4258f6 <kfun:#main(){}+0x23f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274923(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279642(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425927 <kfun:#main(){}+0x2427>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425936 <kfun:#main(){}+0x2436>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274859(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	279577(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425968 <kfun:#main(){}+0x2468>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42597f <kfun:#main(){}+0x247f>
               	testl	%ebx, %ebx
               	je	0x425987 <kfun:#main(){}+0x2487>
               	movq	$0, 268697(%rip)        # 0x467318 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	274778(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279482(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4259c7 <kfun:#main(){}+0x24c7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4259d6 <kfun:#main(){}+0x24d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274699(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	279417(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425a08 <kfun:#main(){}+0x2508>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x425a1f <kfun:#main(){}+0x251f>
               	testl	%ebx, %ebx
               	je	0x425a27 <kfun:#main(){}+0x2527>
               	movq	$0, 268545(%rip)        # 0x467320 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	274618(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279322(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425a67 <kfun:#main(){}+0x2567>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425a76 <kfun:#main(){}+0x2576>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274539(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279258(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425aa7 <kfun:#main(){}+0x25a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425ab6 <kfun:#main(){}+0x25b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274475(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	279193(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425ae8 <kfun:#main(){}+0x25e8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x425aff <kfun:#main(){}+0x25ff>
               	testl	%ebx, %ebx
               	je	0x425b07 <kfun:#main(){}+0x2607>
               	movq	$0, 268329(%rip)        # 0x467328 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	274394(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279098(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425b47 <kfun:#main(){}+0x2647>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425b56 <kfun:#main(){}+0x2656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274315(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	279034(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425b87 <kfun:#main(){}+0x2687>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425b96 <kfun:#main(){}+0x2696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274251(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	278969(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425bc8 <kfun:#main(){}+0x26c8>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x425be9 <kfun:#main(){}+0x26e9>
               	testl	%ebx, %ebx
               	je	0x425bf1 <kfun:#main(){}+0x26f1>
               	movq	$0, 274177(%rip)        # 0x468ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 274211(%rip)        # 0x468b0c <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	274160(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4282d0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278874(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425c27 <kfun:#main(){}+0x2727>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425c36 <kfun:#main(){}+0x2736>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274091(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278810(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425c67 <kfun:#main(){}+0x2767>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425c76 <kfun:#main(){}+0x2776>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	274027(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278746(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425ca7 <kfun:#main(){}+0x27a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425cb6 <kfun:#main(){}+0x27b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273963(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278682(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425ce7 <kfun:#main(){}+0x27e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425cf6 <kfun:#main(){}+0x27f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273899(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278618(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425d27 <kfun:#main(){}+0x2827>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425d36 <kfun:#main(){}+0x2836>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273835(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278554(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425d67 <kfun:#main(){}+0x2867>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425d76 <kfun:#main(){}+0x2876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273771(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278490(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425da7 <kfun:#main(){}+0x28a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425db6 <kfun:#main(){}+0x28b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273707(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278426(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425de7 <kfun:#main(){}+0x28e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425df6 <kfun:#main(){}+0x28f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273643(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278362(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425e27 <kfun:#main(){}+0x2927>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425e36 <kfun:#main(){}+0x2936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273579(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278298(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425e67 <kfun:#main(){}+0x2967>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425e76 <kfun:#main(){}+0x2976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273515(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278234(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425ea7 <kfun:#main(){}+0x29a7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425eb6 <kfun:#main(){}+0x29b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273451(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278170(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425ee7 <kfun:#main(){}+0x29e7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425ef6 <kfun:#main(){}+0x29f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273387(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278106(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425f27 <kfun:#main(){}+0x2a27>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425f36 <kfun:#main(){}+0x2a36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273323(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	278042(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425f67 <kfun:#main(){}+0x2a67>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425f76 <kfun:#main(){}+0x2a76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273259(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277978(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425fa7 <kfun:#main(){}+0x2aa7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425fb6 <kfun:#main(){}+0x2ab6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273195(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277914(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x425fe7 <kfun:#main(){}+0x2ae7>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x425ff6 <kfun:#main(){}+0x2af6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273131(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277850(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x426027 <kfun:#main(){}+0x2b27>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x426036 <kfun:#main(){}+0x2b36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273067(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	277786(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x426067 <kfun:#main(){}+0x2b67>
               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x426076 <kfun:#main(){}+0x2b76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	273003(%rip), %rsi      # 0x468ae8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4282d0 <AddTLSRecord>

