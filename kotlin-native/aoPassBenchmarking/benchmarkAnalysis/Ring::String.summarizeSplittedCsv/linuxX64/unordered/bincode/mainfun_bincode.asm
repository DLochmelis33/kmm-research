<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$312, %rsp              # imm = 0x138
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movups	%xmm0, 16(%rsp)
               	leaq	419142(%rip), %rax      # 0x4c9d70 <ktypeglobal:StringBenchmark#internal>
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
               	movb	573258(%rip), %al       # 0x4ef7c0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x46387f <kfun:#main(){}+0x7f>
               	callq	0x4689f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rbx, 48(%rsp)
               	leaq	8(%rsp), %rax
               	movq	%rax, 88(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 256(%rsp)
               	movaps	%xmm0, 240(%rsp)
               	movaps	%xmm0, 224(%rsp)
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movq	$0, 272(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 168(%rsp)
               	leaq	160(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$64424509440, %rax      # imm = 0xF00000000
               	movq	%rax, 176(%rsp)
               	leaq	489516(%rip), %rax      # 0x4db138 <__unnamed_18>
               	movq	%rax, 24(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$64, %esi
               	callq	0x46c120 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	358679(%rip), %rcx      # 0x4bb250 <ktypeglobal:kotlin.collections.ArrayList#internal>
               	movq	%rax, 32(%rsp)
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 184(%rsp)
               	movq	%rdi, 40(%rsp)
               	movl	$10000, %esi            # imm = 0x2710
               	callq	0x424e60 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 144(%rsp)
               	movaps	%xmm0, 128(%rsp)
               	movaps	%xmm0, 112(%rsp)
               	movaps	%xmm0, 96(%rsp)
               	movq	288(%rbp), %rax
               	movq	%rax, 104(%rsp)
               	leaq	96(%rsp), %rax
               	movq	%rax, 288(%rbp)
               	movabsq	$34359738368, %rax      # imm = 0x800000000
               	movq	%rax, 112(%rsp)
               	movq	296(%rbp), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x46c120 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbx
               	leaq	16(%rax), %r14
               	movq	$0, 8(%rax)
               	leaq	416008(%rip), %rax      # 0x4c92d0 <ktypeglobal:kotlin.ranges.IntRange#internal>
               	movq	%rax, 16(%rbx)
               	movq	%r14, 120(%rsp)
               	movq	%r14, %rdi
               	movl	$1, %esi
               	movl	$10000, %edx            # imm = 0x2710
               	movl	$1, %ecx
               	callq	0x45e430 <kfun:kotlin.ranges.IntProgression#<init>(kotlin.Int;kotlin.Int;kotlin.Int){}>
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
               	jne	0x463a16 <kfun:#main(){}+0x216>
               	movl	44(%r14), %r12d
               	leaq	144(%rsp), %rax
               	movq	%rbp, 56(%rsp)
               	movq	296(%rbp), %rdi
               	movq	%rax, %rbp
               	addq	$112, %rdi
               	movl	$64, %esi
               	callq	0x46c120 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r13
               	leaq	16(%rax), %r15
               	movq	$0, 8(%rax)
               	leaq	358399(%rip), %rax      # 0x4bb250 <ktypeglobal:kotlin.collections.ArrayList#internal>
               	movq	%rax, 16(%r13)
               	movq	%r15, 128(%rsp)
               	movq	%r15, %rdi
               	movl	%r12d, %esi
               	callq	0x424e60 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
               	movq	%r14, %rdi
               	leaq	136(%rsp), %rsi
               	callq	0x45e550 <kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator>
               	movq	%rax, %r12
               	leaq	288(%rsp), %r14
               	jmp	0x463b01 <kfun:#main(){}+0x301>
               	nopl	(%rax,%rax)
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
               	leaq	170006(%rip), %rdx      # 0x48d2e2 <typeinfo name for kotlin::gc::GCSchedulerData+0x19d1>
               	xorl	%eax, %eax
               	callq	0x47b940 <konan::snprintf(char*, unsigned long, char const*, ...)>
               	movq	%r14, %rdi
               	leaq	152(%rsp), %rsi
               	callq	0x47ab90 <CreateStringFromCString>
               	movq	%rax, %rbx
               	movq	%r15, %rdi
               	callq	0x425f60 <kfun:kotlin.collections.ArrayList.checkIsMutable#internal>
               	movl	60(%r13), %esi
               	addl	56(%r13), %esi
               	movq	%r15, %rdi
               	movq	%rbx, %rdx
               	callq	0x426260 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
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
               	je	0x463b44 <kfun:#main(){}+0x344>
               	movzbl	572558(%rip), %eax      # 0x4ef7c0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x463a90 <kfun:#main(){}+0x290>
               	callq	0x4689f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x463a90 <kfun:#main(){}+0x290>
               	movq	%r15, 192(%rsp)
               	movq	104(%rsp), %rax
               	movq	56(%rsp), %r12
               	movq	%rax, 288(%r12)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x46c120 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	358425(%rip), %rcx      # 0x4bb3a0 <ktypeglobal:kotlin.collections.ArrayList.Itr#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 200(%rsp)
               	movq	%r15, 24(%rax)
               	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
               	movq	%rcx, 32(%rax)
               	movq	%rbx, 200(%rsp)
               	movq	48(%rsp), %r13
               	movq	40(%rsp), %r14
               	movq	32(%rsp), %r15
               	jmp	0x463c0c <kfun:#main(){}+0x40c>
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
               	callq	0x425f60 <kfun:kotlin.collections.ArrayList.checkIsMutable#internal>
               	movl	60(%r15), %esi
               	addl	56(%r15), %esi
               	movq	%r14, %rdi
               	movq	%rbp, %rdx
               	callq	0x426260 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
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
               	je	0x463c4a <kfun:#main(){}+0x44a>
               	movzbl	572292(%rip), %eax      # 0x4ef7c0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x463bc0 <kfun:#main(){}+0x3c0>
               	callq	0x4689f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x463bc0 <kfun:#main(){}+0x3c0>
               	movq	%r14, 16(%rsp)
               	leaq	488674(%rip), %rax      # 0x4db138 <__unnamed_18>
               	movq	%rax, 24(%rsp)
               	movl	$9999, %ebx             # imm = 0x270F
               	leaq	551625(%rip), %r15      # 0x4ea730 <__unnamed_792>
               	leaq	322(%rip), %r14         # 0x463db0 <kfun:Random.$init_thread_local#internal>
               	jmp	0x463d1a <kfun:#main(){}+0x51a>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax)
               	movl	$3, %edi
               	callq	0x468fb0 <LookupTLS>
               	movq	(%rax), %rbp
               	movq	%rbp, 216(%rsp)
               	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
               	movsd	155878(%rip), %xmm1     # xmm1 = mem[0],zero
                                                # 0x489d88 <_IO_stdin_used+0x88>
               	mulsd	%xmm1, %xmm0
               	addsd	%xmm1, %xmm0
               	movsd	155870(%rip), %xmm1     # xmm1 = mem[0],zero
                                                # 0x489d90 <_IO_stdin_used+0x90>
               	callq	0x413830 <fmod@plt>
               	movsd	%xmm0, 8(%rbp)
               	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
               	movq	24(%rsp), %rbp
               	movq	%rbp, 224(%rsp)
               	leaq	232(%rsp), %rdi
               	callq	0x417190 <kfun:kotlin.Double#toString(){}kotlin.String>
               	movq	%rbp, %rdi
               	movq	%rax, %rsi
               	leaq	240(%rsp), %rdx
               	callq	0x47b4d0 <Kotlin_String_plusImpl>
               	movq	%rax, 24(%rsp)
               	movq	24(%rsp), %rdi
               	movq	%rdi, 248(%rsp)
               	movq	%r15, %rsi
               	leaq	256(%rsp), %rdx
               	callq	0x47b4d0 <Kotlin_String_plusImpl>
               	movq	%rax, 24(%rsp)
               	addl	$-1, %ebx
               	je	0x463d4f <kfun:#main(){}+0x54f>
               	movzbl	572063(%rip), %eax      # 0x4ef7c0 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x463d2a <kfun:#main(){}+0x52a>
               	callq	0x4689f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%r13, %rax
               	cmpl	$2, -68(%r13)
               	je	0x463c80 <kfun:#main(){}+0x480>
               	leaq	-68(%r13), %rdi
               	movq	%r14, %rsi
               	callq	0x47ee50 <CallInitThreadLocal>
               	jmp	0x463c80 <kfun:#main(){}+0x480>
               	leaq	272(%rsp), %rdx
               	movq	24(%rsp), %rdi
               	movq	%rdi, 264(%rsp)
               	leaq	519669(%rip), %rsi      # 0x4e2b60 <__unnamed_23>
               	callq	0x47b4d0 <Kotlin_String_plusImpl>
               	movq	%rax, 24(%rsp)
               	movq	168(%rsp), %rax
               	movq	%rax, 288(%r12)
               	leaq	8(%rsp), %rdi
               	callq	0x461ce0 <kfun:StringBenchmark#summarizeSplittedCsv(){}kotlin.Double>
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
               	nop

