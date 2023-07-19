<kfun:#main(){}>:
               	pushq	%r15
               	pushq	%r14
               	pushq	%r12
               	pushq	%rbx
               	subq	$200, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 112(%rsp)
               	movaps	%xmm0, 96(%rsp)
               	movups	%xmm0, 16(%rsp)
               	movups	%xmm0, 32(%rsp)
               	movups	%xmm0, 48(%rsp)
               	movups	%xmm0, 64(%rsp)
               	movups	%xmm0, 80(%rsp)
               	leaq	232901(%rip), %rax      # 0x459210 <ktypeglobal:CallsBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 8(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %r14
               	movq	288(%r14), %rax
               	movq	%rax, 104(%rsp)
               	leaq	96(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 112(%rsp)
               	movb	272572(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42049d <kfun:#main(){}+0x8d>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	8(%rsp), %rax
               	movq	%rax, 120(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movaps	%xmm0, 128(%rsp)
               	movq	$0, 192(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 136(%rsp)
               	leaq	128(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$38654705664, %rax      # imm = 0x900000000
               	movq	%rax, 144(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427600 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	234930(%rip), %rdx      # 0x459ae0 <ktypeglobal:CallsBenchmark.D#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 152(%rsp)
               	movq	%rcx, 16(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427600 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	232985(%rip), %rdx      # 0x459380 <ktypeglobal:CallsBenchmark.B#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 160(%rsp)
               	movq	%rcx, 24(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427600 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	233872(%rip), %rdx      # 0x459730 <ktypeglobal:CallsBenchmark.C#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 168(%rsp)
               	movq	%rcx, 32(%rsp)
               	movq	16(%rsp), %rax
               	movq	24(%rsp), %rdx
               	movq	%rax, 40(%rsp)
               	movq	%rdx, 48(%rsp)
               	movq	%rcx, 56(%rsp)
               	movq	%rax, 64(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427600 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	235673(%rip), %rdx      # 0x459e90 <ktypeglobal:CallsBenchmark.X#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 176(%rsp)
               	movq	%rcx, 72(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427600 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	236560(%rip), %rdx      # 0x45a240 <ktypeglobal:CallsBenchmark.Y#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 184(%rsp)
               	movq	%rcx, 80(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427600 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	237447(%rip), %rdx      # 0x45a5f0 <ktypeglobal:CallsBenchmark.Z#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 192(%rsp)
               	movq	%rcx, 88(%rsp)
               	movq	136(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movq	48(%rsp), %r15
               	movq	56(%rsp), %r12
               	xorl	%ebx, %ebx
               	jmp	0x4206c0 <kfun:#main(){}+0x2b0>
               	nopw	(%rax,%rax)
               	testb	$1, %bl
               	leal	1(%rbx), %eax
               	movq	%r12, %rcx
               	cmoveq	%r15, %rcx
               	movq	(%rcx), %rcx
               	andq	$-4, %rcx
               	movq	(%rcx), %rcx
               	movl	%eax, %ebx
               	cmpl	$1000000, %eax          # imm = 0xF4240
               	je	0x4206d2 <kfun:#main(){}+0x2c2>
               	movzbl	272009(%rip), %eax      # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206a0 <kfun:#main(){}+0x290>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x4206a0 <kfun:#main(){}+0x290>
               	movq	104(%rsp), %rax
               	movq	%rax, 288(%r14)
               	addq	$200, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r14
               	popq	%r15
               	retq
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271954(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420707 <kfun:#main(){}+0x2f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420716 <kfun:#main(){}+0x306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267179(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271890(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420747 <kfun:#main(){}+0x337>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420756 <kfun:#main(){}+0x346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267115(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271826(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420787 <kfun:#main(){}+0x377>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420796 <kfun:#main(){}+0x386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267051(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271762(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207c7 <kfun:#main(){}+0x3b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207d6 <kfun:#main(){}+0x3c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266987(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271698(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420807 <kfun:#main(){}+0x3f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420816 <kfun:#main(){}+0x406>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266923(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271634(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420847 <kfun:#main(){}+0x437>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420856 <kfun:#main(){}+0x446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266859(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271570(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420887 <kfun:#main(){}+0x477>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420896 <kfun:#main(){}+0x486>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266795(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271506(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208c7 <kfun:#main(){}+0x4b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208d6 <kfun:#main(){}+0x4c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266731(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271442(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420907 <kfun:#main(){}+0x4f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420916 <kfun:#main(){}+0x506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266667(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271378(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420947 <kfun:#main(){}+0x537>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420956 <kfun:#main(){}+0x546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266603(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271314(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420987 <kfun:#main(){}+0x577>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420996 <kfun:#main(){}+0x586>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266539(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271250(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209c7 <kfun:#main(){}+0x5b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209d6 <kfun:#main(){}+0x5c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266475(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271186(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a07 <kfun:#main(){}+0x5f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a16 <kfun:#main(){}+0x606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266411(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271122(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a47 <kfun:#main(){}+0x637>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a56 <kfun:#main(){}+0x646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266347(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271058(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a87 <kfun:#main(){}+0x677>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a96 <kfun:#main(){}+0x686>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266283(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270994(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ac7 <kfun:#main(){}+0x6b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ad6 <kfun:#main(){}+0x6c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266219(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270930(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b07 <kfun:#main(){}+0x6f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b16 <kfun:#main(){}+0x706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266155(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270866(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b47 <kfun:#main(){}+0x737>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b56 <kfun:#main(){}+0x746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266091(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270802(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b87 <kfun:#main(){}+0x777>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b96 <kfun:#main(){}+0x786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266027(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270738(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bc7 <kfun:#main(){}+0x7b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bd6 <kfun:#main(){}+0x7c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265963(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270674(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c07 <kfun:#main(){}+0x7f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c16 <kfun:#main(){}+0x806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265899(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270610(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c47 <kfun:#main(){}+0x837>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c56 <kfun:#main(){}+0x846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265835(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270546(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c87 <kfun:#main(){}+0x877>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c96 <kfun:#main(){}+0x886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265771(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270482(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cc7 <kfun:#main(){}+0x8b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cd6 <kfun:#main(){}+0x8c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265707(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270418(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d07 <kfun:#main(){}+0x8f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d16 <kfun:#main(){}+0x906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265643(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270354(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d47 <kfun:#main(){}+0x937>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d56 <kfun:#main(){}+0x946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265579(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270290(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d87 <kfun:#main(){}+0x977>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d96 <kfun:#main(){}+0x986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265515(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270226(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dc7 <kfun:#main(){}+0x9b7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420dd6 <kfun:#main(){}+0x9c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265451(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270162(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e07 <kfun:#main(){}+0x9f7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e16 <kfun:#main(){}+0xa06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265387(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270098(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e47 <kfun:#main(){}+0xa37>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e56 <kfun:#main(){}+0xa46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265323(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270034(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e87 <kfun:#main(){}+0xa77>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e96 <kfun:#main(){}+0xa86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265259(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269970(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ec7 <kfun:#main(){}+0xab7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ed6 <kfun:#main(){}+0xac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265195(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269906(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f07 <kfun:#main(){}+0xaf7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f16 <kfun:#main(){}+0xb06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265131(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269842(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f47 <kfun:#main(){}+0xb37>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f56 <kfun:#main(){}+0xb46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265067(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269778(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f87 <kfun:#main(){}+0xb77>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f96 <kfun:#main(){}+0xb86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265003(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269714(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fc7 <kfun:#main(){}+0xbb7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fd6 <kfun:#main(){}+0xbc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264939(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269650(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421007 <kfun:#main(){}+0xbf7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421016 <kfun:#main(){}+0xc06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264875(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269586(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421047 <kfun:#main(){}+0xc37>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421056 <kfun:#main(){}+0xc46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264811(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269522(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421087 <kfun:#main(){}+0xc77>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421096 <kfun:#main(){}+0xc86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264747(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269458(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210c7 <kfun:#main(){}+0xcb7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210d6 <kfun:#main(){}+0xcc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264683(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	269393(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421108 <kfun:#main(){}+0xcf8>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421134 <kfun:#main(){}+0xd24>
               	testl	%ebx, %ebx
               	je	0x42113c <kfun:#main(){}+0xd2c>
               	movq	$0, 264561(%rip)        # 0x461a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 264558(%rip)        # 0x461a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 264604(%rip)        # 0x461ad0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	264581(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269282(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421177 <kfun:#main(){}+0xd67>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421186 <kfun:#main(){}+0xd76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264507(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269218(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211b7 <kfun:#main(){}+0xda7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211c6 <kfun:#main(){}+0xdb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264443(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269154(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211f7 <kfun:#main(){}+0xde7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421206 <kfun:#main(){}+0xdf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264379(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269090(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421237 <kfun:#main(){}+0xe27>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421246 <kfun:#main(){}+0xe36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264315(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	269025(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421278 <kfun:#main(){}+0xe68>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421299 <kfun:#main(){}+0xe89>
               	testl	%ebx, %ebx
               	je	0x4212a1 <kfun:#main(){}+0xe91>
               	movq	$0, 264209(%rip)        # 0x461aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 264251(%rip)        # 0x461ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	264224(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268929(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212d8 <kfun:#main(){}+0xec8>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4212f9 <kfun:#main(){}+0xee9>
               	testl	%ebx, %ebx
               	je	0x421301 <kfun:#main(){}+0xef1>
               	movq	$0, 264121(%rip)        # 0x461aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 264159(%rip)        # 0x461ad8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	264128(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268834(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421337 <kfun:#main(){}+0xf27>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421346 <kfun:#main(){}+0xf36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264059(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268770(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421377 <kfun:#main(){}+0xf67>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421386 <kfun:#main(){}+0xf76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263995(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268706(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213b7 <kfun:#main(){}+0xfa7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213c6 <kfun:#main(){}+0xfb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263931(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268642(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213f7 <kfun:#main(){}+0xfe7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421406 <kfun:#main(){}+0xff6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263867(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268578(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421437 <kfun:#main(){}+0x1027>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421446 <kfun:#main(){}+0x1036>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263803(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268513(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421478 <kfun:#main(){}+0x1068>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421499 <kfun:#main(){}+0x1089>
               	testl	%ebx, %ebx
               	je	0x4214a1 <kfun:#main(){}+0x1091>
               	movq	$0, 263713(%rip)        # 0x461ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 263747(%rip)        # 0x461adc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	263712(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268418(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214d7 <kfun:#main(){}+0x10c7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214e6 <kfun:#main(){}+0x10d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263643(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268354(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421517 <kfun:#main(){}+0x1107>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421526 <kfun:#main(){}+0x1116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263579(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268289(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421558 <kfun:#main(){}+0x1148>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421579 <kfun:#main(){}+0x1169>
               	testl	%ebx, %ebx
               	je	0x421581 <kfun:#main(){}+0x1171>
               	movq	$0, 263497(%rip)        # 0x461ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 263527(%rip)        # 0x461ae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	263488(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268194(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215b7 <kfun:#main(){}+0x11a7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215c6 <kfun:#main(){}+0x11b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263419(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268130(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215f7 <kfun:#main(){}+0x11e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421606 <kfun:#main(){}+0x11f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263355(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268066(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421637 <kfun:#main(){}+0x1227>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421646 <kfun:#main(){}+0x1236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263291(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268002(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421677 <kfun:#main(){}+0x1267>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421686 <kfun:#main(){}+0x1276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263227(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267938(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216b7 <kfun:#main(){}+0x12a7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216c6 <kfun:#main(){}+0x12b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263163(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267874(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216f7 <kfun:#main(){}+0x12e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421706 <kfun:#main(){}+0x12f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263099(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267810(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421737 <kfun:#main(){}+0x1327>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421746 <kfun:#main(){}+0x1336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263035(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267746(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421777 <kfun:#main(){}+0x1367>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421786 <kfun:#main(){}+0x1376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262971(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267682(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217b7 <kfun:#main(){}+0x13a7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217c6 <kfun:#main(){}+0x13b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262907(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267618(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217f7 <kfun:#main(){}+0x13e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421806 <kfun:#main(){}+0x13f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262843(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267554(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421837 <kfun:#main(){}+0x1427>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421846 <kfun:#main(){}+0x1436>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262779(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267490(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421877 <kfun:#main(){}+0x1467>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421886 <kfun:#main(){}+0x1476>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262715(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267426(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218b7 <kfun:#main(){}+0x14a7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218c6 <kfun:#main(){}+0x14b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262651(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267362(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218f7 <kfun:#main(){}+0x14e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421906 <kfun:#main(){}+0x14f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262587(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	267297(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421938 <kfun:#main(){}+0x1528>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42194f <kfun:#main(){}+0x153f>
               	testl	%ebx, %ebx
               	je	0x421957 <kfun:#main(){}+0x1547>
               	movq	$0, 256433(%rip)        # 0x460300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	262506(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267202(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421997 <kfun:#main(){}+0x1587>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219a6 <kfun:#main(){}+0x1596>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262427(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	267137(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219d8 <kfun:#main(){}+0x15c8>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4219ef <kfun:#main(){}+0x15df>
               	testl	%ebx, %ebx
               	je	0x4219f7 <kfun:#main(){}+0x15e7>
               	movq	$0, 256281(%rip)        # 0x460308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	262346(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267042(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a37 <kfun:#main(){}+0x1627>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a46 <kfun:#main(){}+0x1636>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262267(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266978(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a77 <kfun:#main(){}+0x1667>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a86 <kfun:#main(){}+0x1676>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262203(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	266913(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ab8 <kfun:#main(){}+0x16a8>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421acf <kfun:#main(){}+0x16bf>
               	testl	%ebx, %ebx
               	je	0x421ad7 <kfun:#main(){}+0x16c7>
               	movq	$0, 256065(%rip)        # 0x460310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	262122(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266818(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b17 <kfun:#main(){}+0x1707>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b26 <kfun:#main(){}+0x1716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262043(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266754(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b57 <kfun:#main(){}+0x1747>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b66 <kfun:#main(){}+0x1756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261979(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	266689(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b98 <kfun:#main(){}+0x1788>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421bb9 <kfun:#main(){}+0x17a9>
               	testl	%ebx, %ebx
               	je	0x421bc1 <kfun:#main(){}+0x17b1>
               	movq	$0, 261905(%rip)        # 0x461ac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 261931(%rip)        # 0x461ae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	261888(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4242a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266594(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bf7 <kfun:#main(){}+0x17e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c06 <kfun:#main(){}+0x17f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261819(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266530(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c37 <kfun:#main(){}+0x1827>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c46 <kfun:#main(){}+0x1836>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261755(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266466(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c77 <kfun:#main(){}+0x1867>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c86 <kfun:#main(){}+0x1876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261691(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266402(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cb7 <kfun:#main(){}+0x18a7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cc6 <kfun:#main(){}+0x18b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261627(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266338(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cf7 <kfun:#main(){}+0x18e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d06 <kfun:#main(){}+0x18f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261563(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266274(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d37 <kfun:#main(){}+0x1927>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d46 <kfun:#main(){}+0x1936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261499(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266210(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d77 <kfun:#main(){}+0x1967>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d86 <kfun:#main(){}+0x1976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261435(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266146(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421db7 <kfun:#main(){}+0x19a7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421dc6 <kfun:#main(){}+0x19b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261371(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266082(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421df7 <kfun:#main(){}+0x19e7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e06 <kfun:#main(){}+0x19f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261307(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266018(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e37 <kfun:#main(){}+0x1a27>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e46 <kfun:#main(){}+0x1a36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261243(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265954(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e77 <kfun:#main(){}+0x1a67>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e86 <kfun:#main(){}+0x1a76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261179(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265890(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421eb7 <kfun:#main(){}+0x1aa7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ec6 <kfun:#main(){}+0x1ab6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261115(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265826(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ef7 <kfun:#main(){}+0x1ae7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f06 <kfun:#main(){}+0x1af6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261051(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265762(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f37 <kfun:#main(){}+0x1b27>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f46 <kfun:#main(){}+0x1b36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260987(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265698(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f77 <kfun:#main(){}+0x1b67>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f86 <kfun:#main(){}+0x1b76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260923(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265634(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fb7 <kfun:#main(){}+0x1ba7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fc6 <kfun:#main(){}+0x1bb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260859(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265570(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ff7 <kfun:#main(){}+0x1be7>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422006 <kfun:#main(){}+0x1bf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260795(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265506(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422037 <kfun:#main(){}+0x1c27>
               	callq	0x424090 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422046 <kfun:#main(){}+0x1c36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260731(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4242a0 <AddTLSRecord>

