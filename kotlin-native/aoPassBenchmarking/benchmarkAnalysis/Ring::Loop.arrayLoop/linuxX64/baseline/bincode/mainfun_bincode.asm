<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$568, %rsp              # imm = 0x238
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 480(%rsp)
               	movaps	%xmm0, 464(%rsp)
               	movups	%xmm0, 352(%rsp)
               	leaq	240909(%rip), %rax      # 0x45d620 <ktypeglobal:LoopBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 344(%rsp)
               	movq	%fs:0, %rax
               	movq	%rax, 104(%rsp)
               	movq	-64(%rax), %r12
               	movq	288(%r12), %rax
               	movq	%rax, 472(%rsp)
               	leaq	464(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 480(%rsp)
               	movb	279529(%rip), %al       # 0x466d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422978 <kfun:#main(){}+0x98>
               	callq	0x4271c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	344(%rsp), %rax
               	movq	%rax, 488(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 432(%rsp)
               	movaps	%xmm0, 416(%rsp)
               	movaps	%xmm0, 400(%rsp)
               	movaps	%xmm0, 384(%rsp)
               	movaps	%xmm0, 368(%rsp)
               	movq	$0, 448(%rsp)
               	movq	288(%r12), %rax
               	movq	%rax, 376(%rsp)
               	leaq	368(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$47244640256, %rax      # imm = 0xB00000000
               	movq	%rax, 384(%rsp)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$64, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %r13
               	movq	$0, 8(%rax)
               	leaq	233318(%rip), %r14      # 0x45b980 <ktypeglobal:kotlin.collections.ArrayList#internal>
               	movq	%rax, 296(%rsp)
               	movq	%r14, 16(%rax)
               	movq	%r13, 392(%rsp)
               	movq	%r13, %rdi
               	movl	$10000, %esi            # imm = 0x2710
               	callq	0x41b1b0 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 544(%rsp)
               	movaps	%xmm0, 528(%rsp)
               	movaps	%xmm0, 512(%rsp)
               	movaps	%xmm0, 496(%rsp)
               	movq	288(%r12), %rax
               	movq	%rax, 504(%rsp)
               	leaq	496(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$34359738368, %rax      # imm = 0x800000000
               	movq	%rax, 512(%rsp)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbp
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	239188(%rip), %rax      # 0x45d110 <ktypeglobal:kotlin.ranges.IntRange#internal>
               	movq	%rax, 16(%rbp)
               	movq	%rbx, 520(%rsp)
               	movq	%rbx, %rdi
               	movl	$10000, %esi            # imm = 0x2710
               	callq	0x421c40 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
               	movq	%rbx, 520(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 128(%rsp)
               	movaps	%xmm0, 112(%rsp)
               	movq	288(%r12), %rax
               	movq	%rax, 120(%rsp)
               	leaq	112(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 128(%rsp)
               	movq	16(%rbp), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$18, %ecx
               	shlq	$4, %rcx
               	cmpl	$18, (%rax,%rcx)
               	je	0x423613 <kfun:#main(){}+0xd33>
               	leaq	536(%rsp), %rbp
               	movq	120(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$64, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	movq	%rax, 288(%rsp)
               	movq	%r14, 16(%rax)
               	movq	%rdi, 528(%rsp)
               	movq	%rdi, 96(%rsp)
               	movl	$10, %esi
               	callq	0x41b1b0 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
               	movq	%rbx, %rdi
               	movq	%rbp, %rsi
               	callq	0x4220f0 <kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator>
               	movq	%rax, %rbx
               	movq	%r12, 8(%rsp)
               	movq	%r13, 304(%rsp)
               	movq	%rax, 280(%rsp)
               	jmp	0x422c3d <kfun:#main(){}+0x35d>
               	nop
               	movq	312(%rsp), %rdi
               	movq	%rdi, 80(%rsp)
               	movq	24(%rsp), %rax
               	movq	8(%rsp), %r12
               	movq	%rax, 288(%r12)
               	leaq	88(%rsp), %rsi
               	callq	0x420770 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String>
               	movq	320(%rsp), %rcx
               	movq	%rax, 24(%rcx)
               	movq	56(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movq	96(%rsp), %rbx
               	movq	%rbx, %rdi
               	callq	0x41bfe0 <kfun:kotlin.collections.ArrayList.checkIsMutable#internal>
               	movq	288(%rsp), %rax
               	movl	56(%rax), %esi
               	addl	60(%rax), %esi
               	movq	%rbx, %rdi
               	movq	328(%rsp), %rdx
               	callq	0x41c0b0 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
               	movq	304(%rsp), %r13
               	movq	280(%rsp), %rbx
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
               	je	0x42328a <kfun:#main(){}+0x9aa>
               	movb	278760(%rip), %al       # 0x466d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422c79 <kfun:#main(){}+0x399>
               	callq	0x4271c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%rbx, %rdi
               	leaq	544(%rsp), %rsi
               	callq	*8(%rax)
               	movl	8(%rax), %ebp
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rdx
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	240234(%rip), %rax      # 0x45d740 <ktypeglobal:Value#internal>
               	movq	%rax, 16(%rdx)
               	movq	%rcx, 328(%rsp)
               	movq	%rcx, 552(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movaps	%xmm0, 48(%rsp)
               	movq	288(%r12), %rax
               	movq	%rax, 56(%rsp)
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$25769803776, %rax      # imm = 0x600000000
               	movq	%rax, 64(%rsp)
               	movq	%rdx, 320(%rsp)
               	movl	%ebp, 32(%rdx)
               	movl	$16, %esi
               	leaq	112(%rsp), %r14
               	movq	%r14, %rdi
               	leaq	149036(%rip), %rdx      # 0x447370 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
               	movl	%ebp, %ecx
               	xorl	%eax, %eax
               	callq	0x439750 <konan::snprintf(char*, unsigned long, char const*, ...)>
               	movq	%r14, %rdi
               	leaq	72(%rsp), %rsi
               	callq	0x438d20 <CreateStringFromCString>
               	movq	%rax, %r13
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	288(%r12), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$17179869184, %rbx      # imm = 0x400000000
               	movq	%rbx, 32(%rsp)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r15
               	leaq	16(%rax), %rbp
               	movq	$0, 8(%rax)
               	leaq	236449(%rip), %rax      # 0x45c960 <ktypeglobal:kotlin.text.StringBuilder#internal>
               	movq	%rax, 16(%r15)
               	movq	%rbp, 40(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 128(%rsp)
               	movaps	%xmm0, 112(%rsp)
               	movq	288(%r12), %rax
               	movq	%rax, 120(%rsp)
               	movq	%r14, 288(%r12)
               	movq	%rbx, 128(%rsp)
               	movq	(%r13), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$25, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%r13, %rdi
               	callq	*(%rax)
               	movq	%rbp, %rdi
               	movl	%eax, %esi
               	callq	0x41ff20 <kfun:kotlin.text.StringBuilder#<init>(kotlin.Int){}>
               	movq	%rbp, 312(%rsp)
               	movq	%rbp, %rdi
               	movq	%r13, %rsi
               	leaq	136(%rsp), %rdx
               	callq	0x420210 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?){}kotlin.text.StringBuilder>
               	movq	120(%rsp), %rax
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 112(%rsp)
               	movaps	%xmm0, 256(%rsp)
               	movaps	%xmm0, 240(%rsp)
               	movaps	%xmm0, 224(%rsp)
               	movaps	%xmm0, 208(%rsp)
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movaps	%xmm0, 128(%rsp)
               	movq	%rax, 120(%rsp)
               	movq	%r14, 288(%r12)
               	movabsq	$85899345920, %rax      # imm = 0x1400000000
               	movq	%rax, 128(%rsp)
               	movl	32(%r15), %r12d
               	cmpl	$2, %r12d
               	jl	0x422bc0 <kfun:#main(){}+0x2e0>
               	movq	24(%r15), %rax
               	movq	%rax, 136(%rsp)
               	cmpl	$0, 8(%rax)
               	je	0x42360e <kfun:#main(){}+0xd2e>
               	addl	$-1, %r12d
               	movzwl	16(%rax), %r10d
               	movq	24(%r15), %rax
               	movq	%rax, 144(%rsp)
               	cmpl	%r12d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movslq	%r12d, %rcx
               	movzwl	16(%rax,%rcx,2), %r9d
               	xorl	%r14d, %r14d
               	movb	$1, %r11b
               	movb	$1, %r13b
               	jmp	0x422f3a <kfun:#main(){}+0x65a>
               	nopl	(%rax,%rax)
               	movq	(%rax), %rcx
               	movslq	%r14d, %rcx
               	movw	%r9w, 16(%rax,%rcx,2)
               	movb	$1, %r11b
               	movb	$1, %r13b
               	movl	%r14d, %edx
               	movl	%r12d, %esi
               	addl	$1, %edx
               	addl	$-1, %esi
               	movl	%r8d, %r9d
               	movl	%ebp, %r10d
               	movl	%edx, %r14d
               	movl	%esi, %r12d
               	movl	32(%r15), %eax
               	movl	%eax, %ecx
               	shrl	$31, %ecx
               	addl	%eax, %ecx
               	movl	%ecx, %edx
               	sarl	%edx
               	cmpl	%edx, %r14d
               	jge	0x423240 <kfun:#main(){}+0x960>
               	movzbl	278015(%rip), %eax      # 0x466d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422f90 <kfun:#main(){}+0x6b0>
               	movl	%r9d, %ebx
               	movl	%r10d, %ebp
               	movq	%r14, 336(%rsp)
               	movq	%r12, %r14
               	movq	%r15, %r12
               	movl	%r11d, %r15d
               	callq	0x4271c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	%r15d, %r11d
               	movq	%r12, %r15
               	movq	%r14, %r12
               	movq	336(%rsp), %r14
               	movl	%ebp, %r10d
               	movl	%ebx, %r9d
               	movq	24(%r15), %rax
               	movq	%rax, 152(%rsp)
               	leal	1(%r14), %edx
               	cmpl	%edx, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movslq	%edx, %rdi
               	movzwl	16(%rax,%rdi,2), %ebp
               	movq	24(%r15), %rbx
               	movq	%rbx, 160(%rsp)
               	leal	-1(%r12), %esi
               	cmpl	%esi, 8(%rbx)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movslq	%esi, %rax
               	movzwl	16(%rbx,%rax,2), %r8d
               	movl	%ebp, %ecx
               	andl	$64512, %ecx            # imm = 0xFC00
               	cmpl	$56320, %ecx            # imm = 0xDC00
               	setne	%cl
               	notb	%r13b
               	orb	%cl, %r13b
               	testb	$1, %r13b
               	jne	0x423120 <kfun:#main(){}+0x840>
               	movl	%r10d, %ecx
               	andl	$64512, %ecx            # imm = 0xFC00
               	movzwl	%cx, %ecx
               	cmpl	$55296, %ecx            # imm = 0xD800
               	jne	0x423120 <kfun:#main(){}+0x840>
               	cmpl	$3, 32(%r15)
               	jl	0x422bc0 <kfun:#main(){}+0x2e0>
               	movl	%r9d, %ecx
               	andl	$64512, %ecx            # imm = 0xFC00
               	cmpl	$56320, %ecx            # imm = 0xDC00
               	sete	%cl
               	testb	%cl, %r11b
               	je	0x4231e0 <kfun:#main(){}+0x900>
               	movl	%r8d, %ecx
               	andl	$64512, %ecx            # imm = 0xFC00
               	movq	24(%r15), %rbx
               	cmpl	$55296, %ecx            # imm = 0xD800
               	jne	0x4231e4 <kfun:#main(){}+0x904>
               	movq	%rbx, 168(%rsp)
               	cmpl	%r12d, 8(%rbx)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rbx), %rcx
               	movslq	%r12d, %rcx
               	movw	%bp, 16(%rbx,%rcx,2)
               	movq	24(%r15), %rcx
               	movq	%rcx, 176(%rsp)
               	cmpl	%esi, 8(%rcx)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rcx), %rbp
               	movw	%r10w, 16(%rcx,%rax,2)
               	movq	24(%r15), %rax
               	movq	%rax, 184(%rsp)
               	cmpl	%r14d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rax), %rcx
               	movslq	%r14d, %rcx
               	movw	%r8w, 16(%rax,%rcx,2)
               	movq	24(%r15), %rax
               	movq	%rax, 192(%rsp)
               	cmpl	%edx, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rax), %rcx
               	movw	%r9w, 16(%rax,%rdi,2)
               	movq	24(%r15), %rax
               	movq	%rax, 200(%rsp)
               	addl	$2, %r14d
               	cmpl	%r14d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movslq	%r14d, %rcx
               	movzwl	16(%rax,%rcx,2), %ebp
               	movq	24(%r15), %rax
               	movq	%rax, 208(%rsp)
               	addl	$-2, %r12d
               	cmpl	%r12d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movslq	%r12d, %rcx
               	movzwl	16(%rax,%rcx,2), %r8d
               	movb	$1, %r11b
               	movb	$1, %r13b
               	jmp	0x422f28 <kfun:#main(){}+0x648>
               	nopw	(%rax,%rax)
               	movl	%r9d, %eax
               	andl	$64512, %eax            # imm = 0xFC00
               	cmpl	$56320, %eax            # imm = 0xDC00
               	sete	%al
               	testb	%al, %r11b
               	je	0x4231a0 <kfun:#main(){}+0x8c0>
               	movl	%r8d, %ecx
               	andl	$64512, %ecx            # imm = 0xFC00
               	movq	24(%r15), %rax
               	cmpl	$55296, %ecx            # imm = 0xD800
               	jne	0x4231a4 <kfun:#main(){}+0x8c4>
               	movq	%rax, 248(%rsp)
               	cmpl	%r12d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rax), %rcx
               	movslq	%r12d, %rcx
               	movw	%r10w, 16(%rax,%rcx,2)
               	movq	24(%r15), %rax
               	movq	%rax, 256(%rsp)
               	cmpl	%r14d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rax), %rcx
               	movslq	%r14d, %rcx
               	movw	%r8w, 16(%rax,%rcx,2)
               	movb	$1, %r13b
               	xorl	%r11d, %r11d
               	movl	%r9d, %r8d
               	jmp	0x422f22 <kfun:#main(){}+0x642>
               	movq	24(%r15), %rax
               	movq	%rax, 216(%rsp)
               	cmpl	%r12d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rax), %rcx
               	movslq	%r12d, %rcx
               	movw	%r10w, 16(%rax,%rcx,2)
               	movq	24(%r15), %rax
               	movq	%rax, 224(%rsp)
               	cmpl	%r14d, 8(%rax)
               	ja	0x422f10 <kfun:#main(){}+0x630>
               	jmp	0x42360e <kfun:#main(){}+0xd2e>
               	nopl	(%rax)
               	movq	24(%r15), %rbx
               	movq	%rbx, 232(%rsp)
               	cmpl	%r12d, 8(%rbx)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rbx), %rax
               	movslq	%r12d, %rax
               	movw	%bp, 16(%rbx,%rax,2)
               	movq	24(%r15), %rax
               	movq	%rax, 240(%rsp)
               	cmpl	%r14d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	(%rax), %rcx
               	movslq	%r14d, %rcx
               	movw	%r9w, 16(%rax,%rcx,2)
               	movb	$1, %r11b
               	xorl	%r13d, %r13d
               	movl	%r10d, %ebp
               	jmp	0x422f22 <kfun:#main(){}+0x642>
               	nopw	%cs:(%rax,%rax)
               	nopl	(%rax,%rax)
               	andl	$-2, %ecx
               	subl	%ecx, %eax
               	cmpl	$1, %eax
               	jne	0x422bc0 <kfun:#main(){}+0x2e0>
               	andb	%r13b, %r11b
               	testb	$1, %r11b
               	jne	0x422bc0 <kfun:#main(){}+0x2e0>
               	movq	24(%r15), %rax
               	movq	%rax, 264(%rsp)
               	cmpl	%r12d, 8(%rax)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	testb	$1, %r13b
               	cmovnel	%r9d, %r10d
               	movq	(%rax), %rcx
               	movslq	%r12d, %rcx
               	movw	%r10w, 16(%rax,%rcx,2)
               	jmp	0x422bc0 <kfun:#main(){}+0x2e0>
               	movq	96(%rsp), %rbp
               	movq	%rbp, 400(%rsp)
               	movq	504(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	231424(%rip), %rcx      # 0x45bad0 <ktypeglobal:kotlin.collections.ArrayList.Itr#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 408(%rsp)
               	movq	%rbp, 24(%rax)
               	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
               	movq	%rcx, 32(%rax)
               	movq	%rbx, 408(%rsp)
               	jmp	0x423352 <kfun:#main(){}+0xa72>
               	nopl	(%rax,%rax)
               	movq	(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movl	60(%rax), %ecx
               	movq	64(%rax), %rax
               	andl	$160, %ecx
               	shlq	$4, %rcx
               	movq	8(%rax,%rcx), %rax
               	movq	%rbx, %rdi
               	leaq	416(%rsp), %rsi
               	callq	*8(%rax)
               	movq	%rax, %rbp
               	movq	%r13, %rdi
               	callq	0x41bfe0 <kfun:kotlin.collections.ArrayList.checkIsMutable#internal>
               	movq	296(%rsp), %rax
               	movl	56(%rax), %esi
               	addl	60(%rax), %esi
               	movq	%r13, %rdi
               	movq	%rbp, %rdx
               	callq	0x41c0b0 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
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
               	je	0x423394 <kfun:#main(){}+0xab4>
               	movzbl	276950(%rip), %eax      # 0x466d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423300 <kfun:#main(){}+0xa20>
               	callq	0x4271c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x423300 <kfun:#main(){}+0xa20>
               	movq	%r13, 352(%rsp)
               	movl	44(%r13), %ebx
               	testl	%ebx, %ebx
               	js	0x42365b <kfun:#main(){}+0xd7b>
               	movq	296(%r12), %rdi
               	leaq	31(,%rbx,8), %rsi
               	andq	$-8, %rsi
               	addq	$112, %rdi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %rbp
               	leaq	16(%rax), %r14
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	223470(%rip), %rax      # 0x459cd0 <ktypeglobal:kotlin.Array#internal>
               	movq	%rax, 16(%rbp)
               	movl	%ebx, 24(%rbp)
               	movq	%r14, 432(%rsp)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$32, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	leaq	16(%rax), %r15
               	movq	$0, 8(%rax)
               	leaq	231091(%rip), %rax      # 0x45bad0 <ktypeglobal:kotlin.collections.ArrayList.Itr#internal>
               	movq	%rax, 16(%r12)
               	movq	%r15, 440(%rsp)
               	movq	%r13, 24(%r12)
               	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
               	movq	%rax, 32(%r12)
               	movq	%r15, 440(%rsp)
               	xorl	%ebx, %ebx
               	movl	32(%r12), %eax
               	movq	24(%r12), %rcx
               	cmpl	44(%rcx), %eax
               	jge	0x4234a7 <kfun:#main(){}+0xbc7>
               	nopl	(%rax,%rax)
               	movzbl	276721(%rip), %eax      # 0x466d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x423470 <kfun:#main(){}+0xb90>
               	callq	0x4271c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%r15, %rdi
               	leaq	448(%rsp), %rsi
               	callq	0x41c500 <kfun:kotlin.collections.ArrayList.Itr.next#internal>
               	cmpl	%ebx, 24(%rbp)
               	jbe	0x42360e <kfun:#main(){}+0xd2e>
               	movq	16(%rbp), %rcx
               	movslq	%ebx, %rbx
               	movq	%rax, 32(%rbp,%rbx,8)
               	addl	$1, %ebx
               	movl	32(%r12), %eax
               	movq	24(%r12), %rcx
               	cmpl	44(%rcx), %eax
               	jl	0x423460 <kfun:#main(){}+0xb80>
               	movq	(%r14), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	cmpl	$72, 92(%rax)
               	jne	0x4236a7 <kfun:#main(){}+0xdc7>
               	movq	%r14, 360(%rsp)
               	movq	376(%rsp), %rax
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 48(%rsp)
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movq	%rax, 56(%rsp)
               	movq	8(%rsp), %rcx
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%rcx)
               	movabsq	$25769803776, %rax      # imm = 0x600000000
               	movq	%rax, 64(%rsp)
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	288(%rcx), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%rcx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 32(%rsp)
               	movq	360(%rsp), %r15
               	movq	%r15, 40(%rsp)
               	testq	%r15, %r15
               	je	0x4236b6 <kfun:#main(){}+0xdd6>
               	movq	%r15, 72(%rsp)
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%rcx)
               	movl	8(%r15), %r12d
               	xorl	%r13d, %r13d
               	testl	%r12d, %r12d
               	cmovsl	%r13d, %r12d
               	jmp	0x4235a1 <kfun:#main(){}+0xcc1>
               	nopl	(%rax)
               	addq	$1, %r13
               	movl	$3, %edi
               	callq	0x427730 <LookupTLS>
               	movq	(%rax), %rbx
               	movq	%rbx, 88(%rsp)
               	movl	8(%rbx), %r14d
               	movq	(%rbp), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	movq	%rbp, %rdi
               	callq	*120(%rax)
               	addl	%r14d, %eax
               	movl	%eax, 8(%rbx)
               	cmpq	%r13, %r12
               	je	0x4235e8 <kfun:#main(){}+0xd08>
               	movzbl	276395(%rip), %eax      # 0x466d58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4235b6 <kfun:#main(){}+0xcd6>
               	callq	0x4271c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	16(%r15,%r13,8), %rbp
               	movq	%rbp, 80(%rsp)
               	movq	104(%rsp), %rax
               	cmpl	$2, -68(%rax)
               	je	0x423570 <kfun:#main(){}+0xc90>
               	movq	104(%rsp), %rax
               	leaq	-68(%rax), %rdi
               	leaq	223(%rip), %rsi         # 0x4236c0 <kfun:Blackhole.$init_thread_local#internal>
               	callq	0x43c9f0 <CallInitThreadLocal>
               	jmp	0x423570 <kfun:#main(){}+0xc90>
               	movq	472(%rsp), %rax
               	movq	8(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	addq	$568, %rsp              # imm = 0x238
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x419d60 <ThrowArrayIndexOutOfBoundsException>
               	movq	(%rbx), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rbx
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$24, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rdi
               	movq	$0, 8(%rax)
               	leaq	228698(%rip), %rcx      # 0x45b3a0 <ktypeglobal:kotlin.native.internal.KClassImpl#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rdi, 136(%rsp)
               	movq	%rbx, 24(%rax)
               	callq	0x41a020 <ThrowInvalidReceiverTypeException>
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$56, %esi
               	callq	0x42a730 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rbx
               	movq	$0, 8(%rax)
               	leaq	224364(%rip), %rcx      # 0x45a2f0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
               	movq	%rcx, 16(%rax)
               	movq	%rbx, 424(%rsp)
               	leaq	253721(%rip), %rsi      # 0x4615b0 <__unnamed_47>
               	movq	%rbx, %rdi
               	callq	0x415dd0 <kfun:kotlin.RuntimeException#<init>(kotlin.String?){}>
               	movq	%rbx, %rdi
               	callq	0x43cb00 <ThrowException>
               	leaq	222754(%rip), %rsi      # 0x459cd0 <ktypeglobal:kotlin.Array#internal>
               	movq	%r14, %rdi
               	callq	0x419e30 <ThrowClassCastException>
               	callq	0x41a6f0 <kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing>
               	nopl	(%rax,%rax)

