<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$216, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 128(%rsp)
               	movaps	%xmm0, 112(%rsp)
               	movups	%xmm0, 32(%rsp)
               	movups	%xmm0, 48(%rsp)
               	movups	%xmm0, 64(%rsp)
               	movups	%xmm0, 80(%rsp)
               	movups	%xmm0, 96(%rsp)
               	leaq	232031(%rip), %rax      # 0x458ed0 <ktypeglobal:CallsBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 24(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 120(%rsp)
               	leaq	112(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 128(%rsp)
               	movb	272531(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4204c6 <kfun:#main(){}+0x96>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	24(%rsp), %rax
               	movq	%rax, 136(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 192(%rsp)
               	movaps	%xmm0, 176(%rsp)
               	movaps	%xmm0, 160(%rsp)
               	movaps	%xmm0, 144(%rsp)
               	movq	$0, 208(%rsp)
               	movq	288(%rbx), %rax
               	movq	%rax, 152(%rsp)
               	leaq	144(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$38654705664, %rax      # imm = 0x900000000
               	movq	%rax, 160(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427660 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	234054(%rip), %rdx      # 0x4597a0 <ktypeglobal:CallsBenchmark.D#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 168(%rsp)
               	movq	%rcx, 32(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427660 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	232109(%rip), %rdx      # 0x459040 <ktypeglobal:CallsBenchmark.B#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 176(%rsp)
               	movq	%rcx, 40(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427660 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	232996(%rip), %rdx      # 0x4593f0 <ktypeglobal:CallsBenchmark.C#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 184(%rsp)
               	movq	%rcx, 48(%rsp)
               	movq	32(%rsp), %rax
               	movq	40(%rsp), %rdx
               	movq	%rax, 56(%rsp)
               	movq	%rdx, 64(%rsp)
               	movq	%rcx, 72(%rsp)
               	movq	%rax, 80(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427660 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	234797(%rip), %rdx      # 0x459b50 <ktypeglobal:CallsBenchmark.X#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 192(%rsp)
               	movq	%rcx, 88(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427660 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	235684(%rip), %rdx      # 0x459f00 <ktypeglobal:CallsBenchmark.Y#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 200(%rsp)
               	movq	%rcx, 96(%rsp)
               	movq	296(%rbx), %rdi
               	addq	$112, %rdi
               	movl	$16, %esi
               	callq	0x427660 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	leaq	16(%rax), %rcx
               	movq	$0, 8(%rax)
               	leaq	236571(%rip), %rdx      # 0x45a2b0 <ktypeglobal:CallsBenchmark.Z#internal>
               	movq	%rdx, 16(%rax)
               	movq	%rcx, 208(%rsp)
               	movq	%rcx, 104(%rsp)
               	movq	152(%rsp), %rax
               	movq	%rbx, 8(%rsp)
               	movq	%rax, 288(%rbx)
               	movq	64(%rsp), %r12
               	movq	72(%rsp), %rax
               	movq	%rax, 16(%rsp)
               	xorl	%r15d, %r15d
               	movl	$1000000, %ebx          # imm = 0xF4240
               	movq	80(%rsp), %r13
               	movl	$2863311531, %r14d      # imm = 0xAAAAAAAB
               	jmp	0x4206f3 <kfun:#main(){}+0x2c3>
               	nop
               	addl	$1, %r15d
               	movq	(%rax), %rax
               	andq	$-4, %rax
               	movq	(%rax), %rax
               	addl	$-1, %ebx
               	je	0x42072d <kfun:#main(){}+0x2fd>
               	movl	%r15d, %eax
               	imulq	%r14, %rax
               	shrq	$33, %rax
               	leal	(%rax,%rax,2), %eax
               	movl	%r15d, %ebp
               	subl	%eax, %ebp
               	movzbl	271939(%rip), %eax      # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420716 <kfun:#main(){}+0x2e6>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%r12, %rax
               	cmpl	$1, %ebp
               	je	0x4206e0 <kfun:#main(){}+0x2b0>
               	movq	%r13, %rax
               	cmpl	$2, %ebp
               	jne	0x4206e0 <kfun:#main(){}+0x2b0>
               	movq	16(%rsp), %rax
               	jmp	0x4206e0 <kfun:#main(){}+0x2b0>
               	movq	120(%rsp), %rax
               	movq	8(%rsp), %rcx
               	movq	%rax, 288(%rcx)
               	addq	$216, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271858(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420767 <kfun:#main(){}+0x337>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420776 <kfun:#main(){}+0x346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267083(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271794(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207a7 <kfun:#main(){}+0x377>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207b6 <kfun:#main(){}+0x386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	267019(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271730(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207e7 <kfun:#main(){}+0x3b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207f6 <kfun:#main(){}+0x3c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266955(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271666(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420827 <kfun:#main(){}+0x3f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420836 <kfun:#main(){}+0x406>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266891(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271602(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420867 <kfun:#main(){}+0x437>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420876 <kfun:#main(){}+0x446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266827(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271538(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208a7 <kfun:#main(){}+0x477>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208b6 <kfun:#main(){}+0x486>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266763(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271474(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208e7 <kfun:#main(){}+0x4b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208f6 <kfun:#main(){}+0x4c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266699(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271410(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420927 <kfun:#main(){}+0x4f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420936 <kfun:#main(){}+0x506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266635(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271346(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420967 <kfun:#main(){}+0x537>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420976 <kfun:#main(){}+0x546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266571(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271282(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209a7 <kfun:#main(){}+0x577>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209b6 <kfun:#main(){}+0x586>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266507(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271218(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209e7 <kfun:#main(){}+0x5b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209f6 <kfun:#main(){}+0x5c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266443(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271154(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a27 <kfun:#main(){}+0x5f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a36 <kfun:#main(){}+0x606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266379(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271090(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a67 <kfun:#main(){}+0x637>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a76 <kfun:#main(){}+0x646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266315(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	271026(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420aa7 <kfun:#main(){}+0x677>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ab6 <kfun:#main(){}+0x686>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266251(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270962(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ae7 <kfun:#main(){}+0x6b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420af6 <kfun:#main(){}+0x6c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266187(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270898(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b27 <kfun:#main(){}+0x6f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b36 <kfun:#main(){}+0x706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266123(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270834(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b67 <kfun:#main(){}+0x737>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b76 <kfun:#main(){}+0x746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	266059(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270770(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ba7 <kfun:#main(){}+0x777>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bb6 <kfun:#main(){}+0x786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265995(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270706(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420be7 <kfun:#main(){}+0x7b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bf6 <kfun:#main(){}+0x7c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265931(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270642(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c27 <kfun:#main(){}+0x7f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c36 <kfun:#main(){}+0x806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265867(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270578(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c67 <kfun:#main(){}+0x837>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c76 <kfun:#main(){}+0x846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265803(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270514(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ca7 <kfun:#main(){}+0x877>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cb6 <kfun:#main(){}+0x886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265739(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270450(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ce7 <kfun:#main(){}+0x8b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cf6 <kfun:#main(){}+0x8c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265675(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270386(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d27 <kfun:#main(){}+0x8f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d36 <kfun:#main(){}+0x906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265611(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270322(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d67 <kfun:#main(){}+0x937>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d76 <kfun:#main(){}+0x946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265547(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270258(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420da7 <kfun:#main(){}+0x977>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420db6 <kfun:#main(){}+0x986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265483(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270194(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420de7 <kfun:#main(){}+0x9b7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420df6 <kfun:#main(){}+0x9c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265419(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270130(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e27 <kfun:#main(){}+0x9f7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e36 <kfun:#main(){}+0xa06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265355(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270066(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e67 <kfun:#main(){}+0xa37>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e76 <kfun:#main(){}+0xa46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265291(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	270002(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ea7 <kfun:#main(){}+0xa77>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420eb6 <kfun:#main(){}+0xa86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265227(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269938(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ee7 <kfun:#main(){}+0xab7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ef6 <kfun:#main(){}+0xac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265163(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269874(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f27 <kfun:#main(){}+0xaf7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f36 <kfun:#main(){}+0xb06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265099(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269810(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f67 <kfun:#main(){}+0xb37>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f76 <kfun:#main(){}+0xb46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	265035(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269746(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fa7 <kfun:#main(){}+0xb77>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fb6 <kfun:#main(){}+0xb86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264971(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269682(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fe7 <kfun:#main(){}+0xbb7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ff6 <kfun:#main(){}+0xbc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264907(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269618(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421027 <kfun:#main(){}+0xbf7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421036 <kfun:#main(){}+0xc06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264843(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269554(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421067 <kfun:#main(){}+0xc37>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421076 <kfun:#main(){}+0xc46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264779(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269490(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210a7 <kfun:#main(){}+0xc77>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210b6 <kfun:#main(){}+0xc86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264715(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269426(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210e7 <kfun:#main(){}+0xcb7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210f6 <kfun:#main(){}+0xcc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264651(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269362(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421127 <kfun:#main(){}+0xcf7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421136 <kfun:#main(){}+0xd06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264587(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	269297(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421168 <kfun:#main(){}+0xd38>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421194 <kfun:#main(){}+0xd64>
               	testl	%ebx, %ebx
               	je	0x42119c <kfun:#main(){}+0xd6c>
               	movq	$0, 264465(%rip)        # 0x461a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 264462(%rip)        # 0x461a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 264508(%rip)        # 0x461ad0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	264485(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269186(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211d7 <kfun:#main(){}+0xda7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211e6 <kfun:#main(){}+0xdb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264411(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269122(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421217 <kfun:#main(){}+0xde7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421226 <kfun:#main(){}+0xdf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264347(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	269058(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421257 <kfun:#main(){}+0xe27>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421266 <kfun:#main(){}+0xe36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264283(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268994(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421297 <kfun:#main(){}+0xe67>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212a6 <kfun:#main(){}+0xe76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	264219(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268929(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212d8 <kfun:#main(){}+0xea8>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4212f9 <kfun:#main(){}+0xec9>
               	testl	%ebx, %ebx
               	je	0x421301 <kfun:#main(){}+0xed1>
               	movq	$0, 264113(%rip)        # 0x461aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 264155(%rip)        # 0x461ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
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
               	jmp	0x424300 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268833(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421338 <kfun:#main(){}+0xf08>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421359 <kfun:#main(){}+0xf29>
               	testl	%ebx, %ebx
               	je	0x421361 <kfun:#main(){}+0xf31>
               	movq	$0, 264025(%rip)        # 0x461aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 264063(%rip)        # 0x461ad8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	264032(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268738(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421397 <kfun:#main(){}+0xf67>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213a6 <kfun:#main(){}+0xf76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263963(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268674(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213d7 <kfun:#main(){}+0xfa7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213e6 <kfun:#main(){}+0xfb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263899(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268610(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421417 <kfun:#main(){}+0xfe7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421426 <kfun:#main(){}+0xff6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263835(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268546(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421457 <kfun:#main(){}+0x1027>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421466 <kfun:#main(){}+0x1036>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263771(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268482(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421497 <kfun:#main(){}+0x1067>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214a6 <kfun:#main(){}+0x1076>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263707(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268417(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214d8 <kfun:#main(){}+0x10a8>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4214f9 <kfun:#main(){}+0x10c9>
               	testl	%ebx, %ebx
               	je	0x421501 <kfun:#main(){}+0x10d1>
               	movq	$0, 263617(%rip)        # 0x461ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 263651(%rip)        # 0x461adc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	263616(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268322(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421537 <kfun:#main(){}+0x1107>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421546 <kfun:#main(){}+0x1116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263547(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268258(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421577 <kfun:#main(){}+0x1147>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421586 <kfun:#main(){}+0x1156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263483(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	268193(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215b8 <kfun:#main(){}+0x1188>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4215d9 <kfun:#main(){}+0x11a9>
               	testl	%ebx, %ebx
               	je	0x4215e1 <kfun:#main(){}+0x11b1>
               	movq	$0, 263401(%rip)        # 0x461ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 263431(%rip)        # 0x461ae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	263392(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268098(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421617 <kfun:#main(){}+0x11e7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421626 <kfun:#main(){}+0x11f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263323(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268034(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421657 <kfun:#main(){}+0x1227>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421666 <kfun:#main(){}+0x1236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263259(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267970(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421697 <kfun:#main(){}+0x1267>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216a6 <kfun:#main(){}+0x1276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263195(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267906(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216d7 <kfun:#main(){}+0x12a7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216e6 <kfun:#main(){}+0x12b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263131(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267842(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421717 <kfun:#main(){}+0x12e7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421726 <kfun:#main(){}+0x12f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263067(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267778(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421757 <kfun:#main(){}+0x1327>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421766 <kfun:#main(){}+0x1336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263003(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267714(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421797 <kfun:#main(){}+0x1367>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217a6 <kfun:#main(){}+0x1376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262939(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267650(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217d7 <kfun:#main(){}+0x13a7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217e6 <kfun:#main(){}+0x13b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262875(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267586(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421817 <kfun:#main(){}+0x13e7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421826 <kfun:#main(){}+0x13f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262811(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267522(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421857 <kfun:#main(){}+0x1427>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421866 <kfun:#main(){}+0x1436>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262747(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267458(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421897 <kfun:#main(){}+0x1467>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218a6 <kfun:#main(){}+0x1476>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262683(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267394(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218d7 <kfun:#main(){}+0x14a7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218e6 <kfun:#main(){}+0x14b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262619(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267330(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421917 <kfun:#main(){}+0x14e7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421926 <kfun:#main(){}+0x14f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262555(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267266(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421957 <kfun:#main(){}+0x1527>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421966 <kfun:#main(){}+0x1536>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262491(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	267201(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421998 <kfun:#main(){}+0x1568>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4219af <kfun:#main(){}+0x157f>
               	testl	%ebx, %ebx
               	je	0x4219b7 <kfun:#main(){}+0x1587>
               	movq	$0, 256337(%rip)        # 0x460300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	262410(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267106(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219f7 <kfun:#main(){}+0x15c7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a06 <kfun:#main(){}+0x15d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262331(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	267041(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a38 <kfun:#main(){}+0x1608>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a4f <kfun:#main(){}+0x161f>
               	testl	%ebx, %ebx
               	je	0x421a57 <kfun:#main(){}+0x1627>
               	movq	$0, 256185(%rip)        # 0x460308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	262250(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266946(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a97 <kfun:#main(){}+0x1667>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421aa6 <kfun:#main(){}+0x1676>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262171(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266882(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ad7 <kfun:#main(){}+0x16a7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ae6 <kfun:#main(){}+0x16b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262107(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	266817(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b18 <kfun:#main(){}+0x16e8>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421b2f <kfun:#main(){}+0x16ff>
               	testl	%ebx, %ebx
               	je	0x421b37 <kfun:#main(){}+0x1707>
               	movq	$0, 255969(%rip)        # 0x460310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	262026(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266722(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b77 <kfun:#main(){}+0x1747>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b86 <kfun:#main(){}+0x1756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261947(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266658(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bb7 <kfun:#main(){}+0x1787>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bc6 <kfun:#main(){}+0x1796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261883(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	266593(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bf8 <kfun:#main(){}+0x17c8>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421c19 <kfun:#main(){}+0x17e9>
               	testl	%ebx, %ebx
               	je	0x421c21 <kfun:#main(){}+0x17f1>
               	movq	$0, 261809(%rip)        # 0x461ac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 261835(%rip)        # 0x461ae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	261792(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424300 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266498(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c57 <kfun:#main(){}+0x1827>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c66 <kfun:#main(){}+0x1836>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261723(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266434(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c97 <kfun:#main(){}+0x1867>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ca6 <kfun:#main(){}+0x1876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261659(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266370(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cd7 <kfun:#main(){}+0x18a7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ce6 <kfun:#main(){}+0x18b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261595(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266306(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d17 <kfun:#main(){}+0x18e7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d26 <kfun:#main(){}+0x18f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261531(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266242(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d57 <kfun:#main(){}+0x1927>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d66 <kfun:#main(){}+0x1936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261467(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266178(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d97 <kfun:#main(){}+0x1967>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421da6 <kfun:#main(){}+0x1976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261403(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266114(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dd7 <kfun:#main(){}+0x19a7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421de6 <kfun:#main(){}+0x19b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261339(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266050(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e17 <kfun:#main(){}+0x19e7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e26 <kfun:#main(){}+0x19f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261275(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265986(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e57 <kfun:#main(){}+0x1a27>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e66 <kfun:#main(){}+0x1a36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261211(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265922(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e97 <kfun:#main(){}+0x1a67>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ea6 <kfun:#main(){}+0x1a76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261147(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265858(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ed7 <kfun:#main(){}+0x1aa7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ee6 <kfun:#main(){}+0x1ab6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261083(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265794(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f17 <kfun:#main(){}+0x1ae7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f26 <kfun:#main(){}+0x1af6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261019(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265730(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f57 <kfun:#main(){}+0x1b27>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f66 <kfun:#main(){}+0x1b36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260955(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265666(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f97 <kfun:#main(){}+0x1b67>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fa6 <kfun:#main(){}+0x1b76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260891(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265602(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fd7 <kfun:#main(){}+0x1ba7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fe6 <kfun:#main(){}+0x1bb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260827(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265538(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422017 <kfun:#main(){}+0x1be7>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422026 <kfun:#main(){}+0x1bf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260763(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265474(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422057 <kfun:#main(){}+0x1c27>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422066 <kfun:#main(){}+0x1c36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260699(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265410(%rip), %al       # 0x462d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422097 <kfun:#main(){}+0x1c67>
               	callq	0x4240f0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4220a6 <kfun:#main(){}+0x1c76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260635(%rip), %rsi      # 0x461ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424300 <AddTLSRecord>

