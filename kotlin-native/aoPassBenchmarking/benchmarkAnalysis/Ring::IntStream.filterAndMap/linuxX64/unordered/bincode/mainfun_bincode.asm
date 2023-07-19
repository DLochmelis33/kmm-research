<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$184, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movq	$0, 48(%rsp)
               	leaq	237964(%rip), %rax      # 0x45bec0 <ktypeglobal:IntStreamBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 40(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, %r15
               	movq	-64(%rax), %rbp
               	movq	288(%rbp), %rax
               	movq	%rax, 152(%rsp)
               	leaq	144(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %r14      # imm = 0x400000000
               	movq	%r14, 160(%rsp)
               	movb	276303(%rip), %al       # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d92 <kfun:#main(){}+0x92>
               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	40(%rsp), %rax
               	movq	%rax, 168(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 16(%rsp)
               	movaps	%xmm0, (%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 8(%rsp)
               	movq	%rsp, %r12
               	movq	%r12, 288(%rbp)
               	movq	%r14, 16(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	236482(%rip), %rcx      # 0x45b9b0 <ktypeglobal:kotlin.ranges.IntRange#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 24(%rsp)
               	movq	%rbx, %rdi
               	movl	$1, %esi
               	movl	$10000, %edx            # imm = 0x2710
               	callq	0x420ae0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
               	movq	%rbx, 24(%rsp)
               	movq	%rbx, 48(%rsp)
               	movq	8(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 128(%rsp)
               	movaps	%xmm0, 112(%rsp)
               	movaps	%xmm0, 96(%rsp)
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	xorps	%xmm0, %xmm0
               	movq	288(%rbp), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$42949672960, %rax      # imm = 0xA00000000
               	movq	%rax, 80(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movaps	%xmm0, (%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 8(%rsp)
               	movq	%r12, 288(%rbp)
               	movq	%r14, 16(%rsp)
               	movq	48(%rsp), %rbx
               	movq	%rbx, 24(%rsp)
               	testq	%rbx, %rbx
               	je	0x422085 <kfun:#main(){}+0x385>
               	leaq	128(%rsp), %r14
               	leaq	120(%rsp), %r12
               	movq	%rbx, 88(%rsp)
               	movq	8(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %r13
               	movq	$0, 8(%rax)
               	leaq	230110(%rip), %rcx      # 0x45a1c0 <ktypeglobal:kotlin.collections.object-2#internal>
               	movq	%rcx, 16(%rax)
               	movq	%r13, 96(%rsp)
               	movq	%rbx, 24(%rax)
               	movq	%r13, 96(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$40, %esi
               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	234996(%rip), %rcx      # 0x45b510 <ktypeglobal:kotlin.sequences.FilteringSequence#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 104(%rsp)
               	movq	%r13, 24(%rax)
               	movb	$1, 40(%rax)
               	leaq	256108(%rip), %rcx      # 0x4607a0 <__unnamed_55>
               	movq	%rcx, 32(%rax)
               	movq	%rbx, 104(%rsp)
               	movq	%rbp, 56(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	234630(%rip), %rcx      # 0x45b3f0 <ktypeglobal:kotlin.sequences.TransformingSequence#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 112(%rsp)
               	movq	%rbx, 24(%rax)
               	leaq	256042(%rip), %rcx      # 0x4607a8 <__unnamed_56>
               	movq	%rcx, 32(%rax)
               	movq	%rdi, 112(%rsp)
               	movq	%r12, %rsi
               	callq	0x41feb0 <kfun:kotlin.sequences.TransformingSequence#iterator(){}kotlin.collections.Iterator<1:1>>
               	movq	%rax, %r13
               	jmp	0x421fcf <kfun:#main(){}+0x2cf>
               	nopw	(%rax,%rax)
               	movl	$3, %edi
               	callq	0x426570 <LookupTLS>
               	movq	(%rax), %rbp
               	movq	%rbp, 136(%rsp)
               	movl	8(%rbp), %r12d
               	movq	(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movq	%rbx, %rdi
               	callq	*120(%rax)
               	addl	%r12d, %eax
               	movl	%eax, 8(%rbp)
               	movq	(%r13), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%r13, %rdi
               	callq	*(%rax)
               	testb	%al, %al
               	je	0x42205f <kfun:#main(){}+0x35f>
               	movzbl	275672(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422009 <kfun:#main(){}+0x309>
               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	(%r13), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%r13, %rdi
               	movq	%r14, %rsi
               	callq	*8(%rax)
               	movq	%rax, %rbx
               	movq	%r15, %rax
               	cmpl	$2, -68(%r15)
               	je	0x421fa0 <kfun:#main(){}+0x2a0>
               	leaq	-68(%r15), %rdi
               	leaq	59(%rip), %rsi          # 0x422090 <kfun:Blackhole.$init_thread_local#internal>
               	callq	0x43bee0 <CallInitThreadLocal>
               	jmp	0x421fa0 <kfun:#main(){}+0x2a0>
               	movq	152(%rsp), %rax
               	movq	56(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	addq	$184, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x419d50 <ThrowNullPointerException>
               	nopw	(%rax,%rax)

