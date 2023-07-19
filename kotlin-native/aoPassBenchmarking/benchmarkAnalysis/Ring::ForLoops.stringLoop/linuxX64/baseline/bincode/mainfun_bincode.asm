<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$104, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 80(%rsp)
               	movaps	%xmm0, 64(%rsp)
               	movups	%xmm0, 48(%rsp)
               	leaq	232233(%rip), %rax      # 0x459190 <ktypeglobal:ForLoopsBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 40(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %r12
               	movq	288(%r12), %rax
               	movq	%rax, 72(%rsp)
               	leaq	64(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 80(%rsp)
               	movb	263838(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206bb <kfun:#main(){}+0x7b>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	40(%rsp), %rax
               	movq	%rax, 88(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 16(%rsp)
               	movaps	%xmm0, (%rsp)
               	movq	$0, 32(%rsp)
               	leaq	32(%rsp), %r14
               	movq	288(%r12), %rax
               	movq	%rax, 8(%rsp)
               	movq	%rsp, %rax
               	movq	%rax, 288(%r12)
               	movabsq	$21474836480, %rax      # imm = 0x500000000
               	movq	%rax, 16(%rsp)
               	movq	296(%r12), %rdi
               	addq	$112, %rdi
               	movl	$20024, %esi            # imm = 0x4E38
               	callq	0x427720 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r13
               	leaq	16(%rax), %r15
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	220007(%rip), %rax      # 0x4562a0 <ktypeglobal:kotlin.CharArray#internal>
               	movq	%rax, 16(%r13)
               	movl	$10000, 24(%r13)        # imm = 0x2710
               	movq	%r15, 24(%rsp)
               	xorl	%ebx, %ebx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	je	0x420794 <kfun:#main(){}+0x154>
               	nopl	(%rax)
               	movzbl	263657(%rip), %eax      # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420770 <kfun:#main(){}+0x130>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%r13), %eax
               	cmpq	%rax, %rbx
               	jae	0x420809 <kfun:#main(){}+0x1c9>
               	movq	16(%r13), %rax
               	movw	%bx, 32(%r13,%rbx,2)
               	addq	$1, %rbx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	jne	0x420760 <kfun:#main(){}+0x120>
               	movq	%r15, 48(%rsp)
               	movq	%r15, %rdi
               	movq	%r14, %rsi
               	callq	0x41a740 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
               	movq	%rax, 32(%rsp)
               	movq	%rax, 56(%rsp)
               	movq	8(%rsp), %rax
               	movq	%rax, 288(%r12)
               	movq	56(%rsp), %r14
               	movl	8(%r14), %ebp
               	xorl	%ebx, %ebx
               	testl	%ebp, %ebp
               	cmovsl	%ebx, %ebp
               	cmpl	%ebx, %ebp
               	je	0x4207ed <kfun:#main(){}+0x1ad>
               	nop
               	movzbl	263545(%rip), %eax      # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207e0 <kfun:#main(){}+0x1a0>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	cmpl	%ebx, 8(%r14)
               	jbe	0x420809 <kfun:#main(){}+0x1c9>
               	addl	$1, %ebx
               	cmpl	%ebx, %ebp
               	jne	0x4207d0 <kfun:#main(){}+0x190>
               	movq	72(%rsp), %rax
               	movq	%rax, 288(%r12)
               	addq	$104, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
               	nop
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263474(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420827 <kfun:#main(){}+0x1e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420836 <kfun:#main(){}+0x1f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258699(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263410(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420867 <kfun:#main(){}+0x227>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420876 <kfun:#main(){}+0x236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258635(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263346(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208a7 <kfun:#main(){}+0x267>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208b6 <kfun:#main(){}+0x276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258571(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263282(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208e7 <kfun:#main(){}+0x2a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208f6 <kfun:#main(){}+0x2b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258507(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263218(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420927 <kfun:#main(){}+0x2e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420936 <kfun:#main(){}+0x2f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258443(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263154(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420967 <kfun:#main(){}+0x327>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420976 <kfun:#main(){}+0x336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258379(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263090(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209a7 <kfun:#main(){}+0x367>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209b6 <kfun:#main(){}+0x376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258315(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263026(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209e7 <kfun:#main(){}+0x3a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209f6 <kfun:#main(){}+0x3b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258251(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262962(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a27 <kfun:#main(){}+0x3e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a36 <kfun:#main(){}+0x3f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258187(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262898(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a67 <kfun:#main(){}+0x427>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a76 <kfun:#main(){}+0x436>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258123(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262834(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420aa7 <kfun:#main(){}+0x467>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ab6 <kfun:#main(){}+0x476>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258059(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262770(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ae7 <kfun:#main(){}+0x4a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420af6 <kfun:#main(){}+0x4b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257995(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262706(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b27 <kfun:#main(){}+0x4e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b36 <kfun:#main(){}+0x4f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257931(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262642(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b67 <kfun:#main(){}+0x527>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b76 <kfun:#main(){}+0x536>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257867(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262578(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ba7 <kfun:#main(){}+0x567>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bb6 <kfun:#main(){}+0x576>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257803(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262514(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420be7 <kfun:#main(){}+0x5a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bf6 <kfun:#main(){}+0x5b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257739(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262450(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c27 <kfun:#main(){}+0x5e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c36 <kfun:#main(){}+0x5f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257675(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262386(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c67 <kfun:#main(){}+0x627>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c76 <kfun:#main(){}+0x636>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257611(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262322(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ca7 <kfun:#main(){}+0x667>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cb6 <kfun:#main(){}+0x676>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257547(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262258(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ce7 <kfun:#main(){}+0x6a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cf6 <kfun:#main(){}+0x6b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257483(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262194(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d27 <kfun:#main(){}+0x6e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d36 <kfun:#main(){}+0x6f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257419(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262130(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d67 <kfun:#main(){}+0x727>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d76 <kfun:#main(){}+0x736>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257355(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262066(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420da7 <kfun:#main(){}+0x767>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420db6 <kfun:#main(){}+0x776>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257291(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262002(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420de7 <kfun:#main(){}+0x7a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420df6 <kfun:#main(){}+0x7b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257227(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261938(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e27 <kfun:#main(){}+0x7e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e36 <kfun:#main(){}+0x7f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257163(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261874(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e67 <kfun:#main(){}+0x827>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e76 <kfun:#main(){}+0x836>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257099(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261810(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ea7 <kfun:#main(){}+0x867>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420eb6 <kfun:#main(){}+0x876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257035(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261746(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ee7 <kfun:#main(){}+0x8a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ef6 <kfun:#main(){}+0x8b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256971(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261682(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f27 <kfun:#main(){}+0x8e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f36 <kfun:#main(){}+0x8f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256907(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261618(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f67 <kfun:#main(){}+0x927>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f76 <kfun:#main(){}+0x936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256843(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261554(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fa7 <kfun:#main(){}+0x967>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fb6 <kfun:#main(){}+0x976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256779(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261490(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fe7 <kfun:#main(){}+0x9a7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ff6 <kfun:#main(){}+0x9b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256715(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261426(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421027 <kfun:#main(){}+0x9e7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421036 <kfun:#main(){}+0x9f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256651(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261362(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421067 <kfun:#main(){}+0xa27>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421076 <kfun:#main(){}+0xa36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256587(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261298(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210a7 <kfun:#main(){}+0xa67>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210b6 <kfun:#main(){}+0xa76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256523(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261234(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210e7 <kfun:#main(){}+0xaa7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210f6 <kfun:#main(){}+0xab6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256459(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261170(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421127 <kfun:#main(){}+0xae7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421136 <kfun:#main(){}+0xaf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256395(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261106(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421167 <kfun:#main(){}+0xb27>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421176 <kfun:#main(){}+0xb36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256331(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261042(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211a7 <kfun:#main(){}+0xb67>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211b6 <kfun:#main(){}+0xb76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256267(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260978(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211e7 <kfun:#main(){}+0xba7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211f6 <kfun:#main(){}+0xbb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256203(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260913(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421228 <kfun:#main(){}+0xbe8>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421254 <kfun:#main(){}+0xc14>
               	testl	%ebx, %ebx
               	je	0x42125c <kfun:#main(){}+0xc1c>
               	movq	$0, 256081(%rip)        # 0x45fa90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 256078(%rip)        # 0x45fa98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 256124(%rip)        # 0x45fad0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256101(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260802(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421297 <kfun:#main(){}+0xc57>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212a6 <kfun:#main(){}+0xc66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256027(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260738(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212d7 <kfun:#main(){}+0xc97>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212e6 <kfun:#main(){}+0xca6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255963(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260674(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421317 <kfun:#main(){}+0xcd7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421326 <kfun:#main(){}+0xce6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255899(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260610(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421357 <kfun:#main(){}+0xd17>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421366 <kfun:#main(){}+0xd26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255835(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260545(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421398 <kfun:#main(){}+0xd58>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4213b9 <kfun:#main(){}+0xd79>
               	testl	%ebx, %ebx
               	je	0x4213c1 <kfun:#main(){}+0xd81>
               	movq	$0, 255729(%rip)        # 0x45faa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 255771(%rip)        # 0x45fad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255744(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260449(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213f8 <kfun:#main(){}+0xdb8>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421419 <kfun:#main(){}+0xdd9>
               	testl	%ebx, %ebx
               	je	0x421421 <kfun:#main(){}+0xde1>
               	movq	$0, 255641(%rip)        # 0x45faa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 255679(%rip)        # 0x45fad8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255648(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260354(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421457 <kfun:#main(){}+0xe17>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421466 <kfun:#main(){}+0xe26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255579(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260290(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421497 <kfun:#main(){}+0xe57>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214a6 <kfun:#main(){}+0xe66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255515(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260226(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214d7 <kfun:#main(){}+0xe97>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214e6 <kfun:#main(){}+0xea6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255451(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260162(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421517 <kfun:#main(){}+0xed7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421526 <kfun:#main(){}+0xee6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255387(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260098(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421557 <kfun:#main(){}+0xf17>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421566 <kfun:#main(){}+0xf26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255323(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260033(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421598 <kfun:#main(){}+0xf58>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4215b9 <kfun:#main(){}+0xf79>
               	testl	%ebx, %ebx
               	je	0x4215c1 <kfun:#main(){}+0xf81>
               	movq	$0, 255233(%rip)        # 0x45fab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 255267(%rip)        # 0x45fadc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255232(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259938(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215f7 <kfun:#main(){}+0xfb7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421606 <kfun:#main(){}+0xfc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255163(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259874(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421637 <kfun:#main(){}+0xff7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421646 <kfun:#main(){}+0x1006>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255099(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	259809(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421678 <kfun:#main(){}+0x1038>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421699 <kfun:#main(){}+0x1059>
               	testl	%ebx, %ebx
               	je	0x4216a1 <kfun:#main(){}+0x1061>
               	movq	$0, 255017(%rip)        # 0x45fab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 255047(%rip)        # 0x45fae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255008(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259714(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216d7 <kfun:#main(){}+0x1097>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216e6 <kfun:#main(){}+0x10a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254939(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259650(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421717 <kfun:#main(){}+0x10d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421726 <kfun:#main(){}+0x10e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254875(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259586(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421757 <kfun:#main(){}+0x1117>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421766 <kfun:#main(){}+0x1126>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254811(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259522(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421797 <kfun:#main(){}+0x1157>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217a6 <kfun:#main(){}+0x1166>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254747(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259458(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217d7 <kfun:#main(){}+0x1197>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217e6 <kfun:#main(){}+0x11a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254683(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259394(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421817 <kfun:#main(){}+0x11d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421826 <kfun:#main(){}+0x11e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254619(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259330(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421857 <kfun:#main(){}+0x1217>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421866 <kfun:#main(){}+0x1226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254555(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259266(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421897 <kfun:#main(){}+0x1257>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218a6 <kfun:#main(){}+0x1266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254491(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259202(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218d7 <kfun:#main(){}+0x1297>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218e6 <kfun:#main(){}+0x12a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254427(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259138(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421917 <kfun:#main(){}+0x12d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421926 <kfun:#main(){}+0x12e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254363(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259074(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421957 <kfun:#main(){}+0x1317>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421966 <kfun:#main(){}+0x1326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254299(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259010(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421997 <kfun:#main(){}+0x1357>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219a6 <kfun:#main(){}+0x1366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254235(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258946(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219d7 <kfun:#main(){}+0x1397>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219e6 <kfun:#main(){}+0x13a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254171(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258882(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a17 <kfun:#main(){}+0x13d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a26 <kfun:#main(){}+0x13e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254107(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	258817(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a58 <kfun:#main(){}+0x1418>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a6f <kfun:#main(){}+0x142f>
               	testl	%ebx, %ebx
               	je	0x421a77 <kfun:#main(){}+0x1437>
               	movq	$0, 247953(%rip)        # 0x45e300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	254026(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258722(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ab7 <kfun:#main(){}+0x1477>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ac6 <kfun:#main(){}+0x1486>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253947(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	258657(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421af8 <kfun:#main(){}+0x14b8>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421b0f <kfun:#main(){}+0x14cf>
               	testl	%ebx, %ebx
               	je	0x421b17 <kfun:#main(){}+0x14d7>
               	movq	$0, 247801(%rip)        # 0x45e308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	253866(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258562(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b57 <kfun:#main(){}+0x1517>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b66 <kfun:#main(){}+0x1526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253787(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258498(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b97 <kfun:#main(){}+0x1557>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ba6 <kfun:#main(){}+0x1566>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253723(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	258433(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bd8 <kfun:#main(){}+0x1598>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421bef <kfun:#main(){}+0x15af>
               	testl	%ebx, %ebx
               	je	0x421bf7 <kfun:#main(){}+0x15b7>
               	movq	$0, 247585(%rip)        # 0x45e310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	253642(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258338(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c37 <kfun:#main(){}+0x15f7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c46 <kfun:#main(){}+0x1606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253563(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258274(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c77 <kfun:#main(){}+0x1637>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c86 <kfun:#main(){}+0x1646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253499(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	258209(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cb8 <kfun:#main(){}+0x1678>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421cd9 <kfun:#main(){}+0x1699>
               	testl	%ebx, %ebx
               	je	0x421ce1 <kfun:#main(){}+0x16a1>
               	movq	$0, 253425(%rip)        # 0x45fac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 253451(%rip)        # 0x45fae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	253408(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4243c0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258114(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d17 <kfun:#main(){}+0x16d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d26 <kfun:#main(){}+0x16e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253339(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258050(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d57 <kfun:#main(){}+0x1717>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d66 <kfun:#main(){}+0x1726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253275(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257986(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d97 <kfun:#main(){}+0x1757>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421da6 <kfun:#main(){}+0x1766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253211(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257922(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dd7 <kfun:#main(){}+0x1797>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421de6 <kfun:#main(){}+0x17a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253147(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257858(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e17 <kfun:#main(){}+0x17d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e26 <kfun:#main(){}+0x17e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253083(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257794(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e57 <kfun:#main(){}+0x1817>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e66 <kfun:#main(){}+0x1826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253019(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257730(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e97 <kfun:#main(){}+0x1857>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ea6 <kfun:#main(){}+0x1866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252955(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257666(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ed7 <kfun:#main(){}+0x1897>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ee6 <kfun:#main(){}+0x18a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252891(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257602(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f17 <kfun:#main(){}+0x18d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f26 <kfun:#main(){}+0x18e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252827(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257538(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f57 <kfun:#main(){}+0x1917>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f66 <kfun:#main(){}+0x1926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252763(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257474(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f97 <kfun:#main(){}+0x1957>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fa6 <kfun:#main(){}+0x1966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252699(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257410(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fd7 <kfun:#main(){}+0x1997>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fe6 <kfun:#main(){}+0x19a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252635(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257346(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422017 <kfun:#main(){}+0x19d7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422026 <kfun:#main(){}+0x19e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252571(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257282(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422057 <kfun:#main(){}+0x1a17>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422066 <kfun:#main(){}+0x1a26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252507(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257218(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422097 <kfun:#main(){}+0x1a57>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4220a6 <kfun:#main(){}+0x1a66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252443(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257154(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4220d7 <kfun:#main(){}+0x1a97>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4220e6 <kfun:#main(){}+0x1aa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252379(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257090(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422117 <kfun:#main(){}+0x1ad7>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422126 <kfun:#main(){}+0x1ae6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252315(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257026(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422157 <kfun:#main(){}+0x1b17>
               	callq	0x4241b0 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422166 <kfun:#main(){}+0x1b26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252251(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4243c0 <AddTLSRecord>

