<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$312, %rsp              # imm = 0x138
               	xorpd	%xmm0, %xmm0
               	movapd	%xmm0, 80(%rsp)
               	movapd	%xmm0, 64(%rsp)
               	movupd	%xmm0, 16(%rsp)
               	leaq	418818(%rip), %rax      # 0x4c95f0 <ktypeglobal:StringBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 8(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, %rbx
               	movq	-64(%rax), %rbp
               	movq	288(%rbp), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movb	572926(%rip), %al       # 0x4ef038 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x463243 <kfun:#main(){}+0x83>
               	callq	0x467e80 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rbx, 48(%rsp)
               	leaq	8(%rsp), %rax
               	movq	%rax, 88(%rsp)
               	xorpd	%xmm0, %xmm0
               	movapd	%xmm0, 256(%rsp)
               	movapd	%xmm0, 240(%rsp)
               	movapd	%xmm0, 224(%rsp)
               	movapd	%xmm0, 208(%rsp)
               	movapd	%xmm0, 192(%rsp)
               	movapd	%xmm0, 176(%rsp)
               	movapd	%xmm0, 160(%rsp)
               	movq	$0, 272(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 168(%rsp)
               	leaq	160(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$64424509440, %rax      # imm = 0xF00000000
               	movq	%rax, 176(%rsp)
               	leaq	489184(%rip), %rax      # 0x4da9b8 <__unnamed_18>
               	movq	%rax, 24(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$64, %esi
               	callq	0x46b3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	358347(%rip), %rcx      # 0x4baad0 <ktypeglobal:kotlin.collections.ArrayList#internal>
               	movq	%rax, 32(%rsp)
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 184(%rsp)
               	movq	%rdi, 40(%rsp)
               	movl	$10000, %esi            # imm = 0x2710
               	callq	0x424c30 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
               	xorpd	%xmm0, %xmm0
               	movapd	%xmm0, 144(%rsp)
               	movapd	%xmm0, 128(%rsp)
               	movapd	%xmm0, 112(%rsp)
               	movapd	%xmm0, 96(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 104(%rsp)
               	leaq	96(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$34359738368, %rax      # imm = 0x800000000
               	movq	%rax, 112(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x46b3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbx
               	leaq	16(%rax), %r14
               	movq	$0, 8(%rax)
               	leaq	415671(%rip), %rax      # 0x4c8b50 <ktypeglobal:kotlin.ranges.IntRange#internal>
               	movq	%rax, 16(%rbx)
               	movq	%r14, 120(%rsp)
               	movq	%r14, %rdi
               	movl	$1, %esi
               	movl	$10000, %edx            # imm = 0x2710
               	movl	$1, %ecx
               	callq	0x45de70 <kfun:kotlin.ranges.IntProgression#<init>(kotlin.Int;kotlin.Int;kotlin.Int){}>
               	movq	%r14, 120(%rsp)
               	movq	16(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$18, %ecx
               	shlq	$4, %rcx
               	movl	$10, %r12d
               	cmpl	$18, (%rax,%rcx)
               	jne	0x4633e7 <kfun:#main(){}+0x227>
               	movl	44(%r14), %r12d
               	leaq	144(%rsp), %rax
               	movq	%rbp, 56(%rsp)
               	movq	296(%rbp), %rdi
               	movq	%rax, %rbp
               	addq	$112, %rdi
               	movl	$64, %esi
               	callq	0x46b3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r13
               	leaq	16(%rax), %r15
               	movq	$0, 8(%rax)
               	leaq	358062(%rip), %rax      # 0x4baad0 <ktypeglobal:kotlin.collections.ArrayList#internal>
               	movq	%rax, 16(%r13)
               	movq	%r15, 128(%rsp)
               	movq	%r15, %rdi
               	movl	%r12d, %esi
               	callq	0x424c30 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
               	movq	%r14, %rdi
               	leaq	136(%rsp), %rsi
               	callq	0x45df90 <kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator>
               	movq	%rax, %r12
               	leaq	288(%rsp), %r14
               	jmp	0x4634d1 <kfun:#main(){}+0x311>
               	nopl	(%rax)
               	movq	(%r12), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%r12, %rdi
               	movq	%rbp, %rsi
               	callq	*8(%rax)
               	movl	8(%rax), %ecx
               	movl	$16, %esi
               	movq	%r14, %rdi
               	leaq	166790(%rip), %rdx      # 0x48c022 <typeinfo name for kotlin::gc::GCSchedulerData+0x19d1>
               	xorl	%eax, %eax
               	callq	0x47a780 <konan::snprintf(char*, unsigned long, char const*, ...)>
               	movq	%r14, %rdi
               	leaq	152(%rsp), %rsi
               	callq	0x4799e0 <CreateStringFromCString>
               	movq	%rax, %rbx
               	movq	%r15, %rdi
               	callq	0x425d30 <kfun:kotlin.collections.ArrayList.checkIsMutable#internal>
               	movl	56(%r13), %esi
               	addl	60(%r13), %esi
               	movq	%r15, %rdi
               	movq	%rbx, %rdx
               	callq	0x426030 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
               	movq	(%r12), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%r12, %rdi
               	callq	*(%rax)
               	testb	%al, %al
               	je	0x463514 <kfun:#main(){}+0x354>
               	movzbl	572214(%rip), %eax      # 0x4ef038 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x463460 <kfun:#main(){}+0x2a0>
               	callq	0x467e80 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x463460 <kfun:#main(){}+0x2a0>
               	movq	%r15, 192(%rsp)
               	movq	104(%rsp), %rax
               	movq	56(%rsp), %r12
               	movq	%rax, 288(%r12)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x46b3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	358089(%rip), %rcx      # 0x4bac20 <ktypeglobal:kotlin.collections.ArrayList.Itr#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 200(%rsp)
               	movq	%r15, 24(%rax)
               	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
               	movq	%rcx, 32(%rax)
               	movq	%rbx, 200(%rsp)
               	movq	48(%rsp), %r13
               	movq	40(%rsp), %r14
               	movq	32(%rsp), %r15
               	jmp	0x4635dc <kfun:#main(){}+0x41c>
               	nop
               	movq	(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%rbx, %rdi
               	leaq	208(%rsp), %rsi
               	callq	*8(%rax)
               	movq	%rax, %rbp
               	movq	%r14, %rdi
               	callq	0x425d30 <kfun:kotlin.collections.ArrayList.checkIsMutable#internal>
               	movl	56(%r15), %esi
               	addl	60(%r15), %esi
               	movq	%r14, %rdi
               	movq	%rbp, %rdx
               	callq	0x426030 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
               	movq	(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%rbx, %rdi
               	callq	*(%rax)
               	testb	%al, %al
               	je	0x46361a <kfun:#main(){}+0x45a>
               	movzbl	571948(%rip), %eax      # 0x4ef038 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x463590 <kfun:#main(){}+0x3d0>
               	callq	0x467e80 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x463590 <kfun:#main(){}+0x3d0>
               	movq	%r14, 16(%rsp)
               	leaq	488338(%rip), %rax      # 0x4da9b8 <__unnamed_18>
               	movq	%rax, 24(%rsp)
               	movl	$9999, %ebx             # imm = 0x270F
               	leaq	551289(%rip), %r15      # 0x4e9fb0 <__unnamed_792>
               	leaq	322(%rip), %r14         # 0x463780 <kfun:Random.$init_thread_local#internal>
               	jmp	0x4636e3 <kfun:#main(){}+0x523>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax)
               	movl	$3, %edi
               	callq	0x4683f0 <LookupTLS>
               	movq	(%rax), %rbp
               	movq	%rbp, 216(%rsp)
               	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
               	movsd	152598(%rip), %xmm1     # xmm1 = mem[0],zero
                                                # 0x488a88 <_IO_stdin_used+0x88>
               	mulsd	%xmm1, %xmm0
               	addsd	%xmm1, %xmm0
               	movsd	152590(%rip), %xmm1     # xmm1 = mem[0],zero
                                                # 0x488a90 <_IO_stdin_used+0x90>
               	callq	0x413830 <fmod@plt>
               	movsd	%xmm0, 8(%rbp)
               	movq	24(%rsp), %rbp
               	movq	%rbp, 224(%rsp)
               	leaq	232(%rsp), %rdi
               	callq	0x4171b0 <kfun:kotlin.Double#toString(){}kotlin.String>
               	movq	%rbp, %rdi
               	movq	%rax, %rsi
               	leaq	240(%rsp), %rdx
               	callq	0x47a310 <Kotlin_String_plusImpl>
               	movq	%rax, 24(%rsp)
               	movq	%rax, 248(%rsp)
               	movq	%rax, %rdi
               	movq	%r15, %rsi
               	leaq	256(%rsp), %rdx
               	callq	0x47a310 <Kotlin_String_plusImpl>
               	movq	%rax, 24(%rsp)
               	addl	$-1, %ebx
               	je	0x463718 <kfun:#main(){}+0x558>
               	movzbl	571726(%rip), %eax      # 0x4ef038 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4636f3 <kfun:#main(){}+0x533>
               	callq	0x467e80 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%r13, %rax
               	cmpl	$2, -68(%r13)
               	je	0x463650 <kfun:#main(){}+0x490>
               	leaq	-68(%r13), %rdi
               	movq	%r14, %rsi
               	callq	0x47dbe0 <CallInitThreadLocal>
               	jmp	0x463650 <kfun:#main(){}+0x490>
               	leaq	272(%rsp), %rdx
               	movq	%rax, 264(%rsp)
               	leaq	519345(%rip), %rsi      # 0x4e23e0 <__unnamed_23>
               	movq	%rax, %rdi
               	callq	0x47a310 <Kotlin_String_plusImpl>
               	movq	%rax, 24(%rsp)
               	movq	168(%rsp), %rax
               	movq	%rax, 288(%r12)
               	leaq	8(%rsp), %rdi
               	callq	0x4616e0 <kfun:StringBenchmark#summarizeSplittedCsv(){}kotlin.Double>
               	movq	72(%rsp), %rax
               	movq	%rax, 288(%r12)
               	addq	$312, %rsp              # imm = 0x138
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	nopw	%cs:(%rax,%rax)

