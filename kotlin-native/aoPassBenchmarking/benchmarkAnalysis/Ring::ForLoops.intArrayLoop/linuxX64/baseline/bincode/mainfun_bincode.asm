<kfun:#main(){}>:
               	pushq	%r15
               	pushq	%r14
               	pushq	%r12
               	pushq	%rbx
               	subq	$88, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	$0, 8(%rsp)
               	leaq	228760(%rip), %rax      # 0x458190 <ktypeglobal:ForLoopsBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, (%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %r14
               	movq	288(%r14), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rbx      # imm = 0x400000000
               	movq	%rbx, 32(%rsp)
               	movb	260368(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420449 <kfun:#main(){}+0x79>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rsp, %rax
               	movq	%rax, 40(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 64(%rsp)
               	movaps	%xmm0, 48(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 56(%rsp)
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movq	%rbx, 64(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$40024, %esi            # imm = 0x9C58
               	callq	0x427480 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	leaq	16(%rax), %r15
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	216707(%rip), %rax      # 0x455330 <ktypeglobal:kotlin.IntArray#internal>
               	movq	%rax, 16(%r12)
               	movl	$10000, 24(%r12)        # imm = 0x2710
               	movq	%r15, 72(%rsp)
               	xorl	%ebx, %ebx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	je	0x420501 <kfun:#main(){}+0x131>
               	nop
               	movzbl	260217(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4204e0 <kfun:#main(){}+0x110>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%r12), %eax
               	cmpq	%rax, %rbx
               	jae	0x420561 <kfun:#main(){}+0x191>
               	movq	16(%r12), %rax
               	movl	%ebx, 32(%r12,%rbx,4)
               	addq	$1, %rbx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	jne	0x4204d0 <kfun:#main(){}+0x100>
               	movq	%r15, 8(%rsp)
               	movq	56(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movq	8(%rsp), %rax
               	movl	8(%rax), %eax
               	xorl	%ebx, %ebx
               	testl	%eax, %eax
               	cmovnsl	%eax, %ebx
               	jmp	0x420533 <kfun:#main(){}+0x163>
               	nopw	%cs:(%rax,%rax)
               	addl	$-1, %ebx
               	testl	%ebx, %ebx
               	je	0x420549 <kfun:#main(){}+0x179>
               	movzbl	260114(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420530 <kfun:#main(){}+0x160>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420530 <kfun:#main(){}+0x160>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%r14)
               	addq	$88, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r14
               	popq	%r15
               	retq
               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260050(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420587 <kfun:#main(){}+0x1b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420596 <kfun:#main(){}+0x1c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255275(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259986(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4205c7 <kfun:#main(){}+0x1f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205d6 <kfun:#main(){}+0x206>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255211(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259922(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420607 <kfun:#main(){}+0x237>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420616 <kfun:#main(){}+0x246>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255147(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259858(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420647 <kfun:#main(){}+0x277>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420656 <kfun:#main(){}+0x286>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255083(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259794(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420687 <kfun:#main(){}+0x2b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420696 <kfun:#main(){}+0x2c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255019(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259730(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206c7 <kfun:#main(){}+0x2f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206d6 <kfun:#main(){}+0x306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254955(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259666(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420707 <kfun:#main(){}+0x337>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420716 <kfun:#main(){}+0x346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254891(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259602(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420747 <kfun:#main(){}+0x377>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420756 <kfun:#main(){}+0x386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254827(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259538(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420787 <kfun:#main(){}+0x3b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420796 <kfun:#main(){}+0x3c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254763(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259474(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207c7 <kfun:#main(){}+0x3f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207d6 <kfun:#main(){}+0x406>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254699(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259410(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420807 <kfun:#main(){}+0x437>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420816 <kfun:#main(){}+0x446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254635(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259346(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420847 <kfun:#main(){}+0x477>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420856 <kfun:#main(){}+0x486>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254571(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259282(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420887 <kfun:#main(){}+0x4b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420896 <kfun:#main(){}+0x4c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254507(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259218(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208c7 <kfun:#main(){}+0x4f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208d6 <kfun:#main(){}+0x506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254443(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259154(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420907 <kfun:#main(){}+0x537>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420916 <kfun:#main(){}+0x546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254379(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259090(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420947 <kfun:#main(){}+0x577>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420956 <kfun:#main(){}+0x586>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254315(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259026(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420987 <kfun:#main(){}+0x5b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420996 <kfun:#main(){}+0x5c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254251(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258962(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209c7 <kfun:#main(){}+0x5f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209d6 <kfun:#main(){}+0x606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254187(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258898(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a07 <kfun:#main(){}+0x637>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a16 <kfun:#main(){}+0x646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254123(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258834(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a47 <kfun:#main(){}+0x677>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a56 <kfun:#main(){}+0x686>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254059(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258770(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a87 <kfun:#main(){}+0x6b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a96 <kfun:#main(){}+0x6c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253995(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258706(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ac7 <kfun:#main(){}+0x6f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ad6 <kfun:#main(){}+0x706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253931(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258642(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b07 <kfun:#main(){}+0x737>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b16 <kfun:#main(){}+0x746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253867(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258578(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b47 <kfun:#main(){}+0x777>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b56 <kfun:#main(){}+0x786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253803(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258514(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b87 <kfun:#main(){}+0x7b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b96 <kfun:#main(){}+0x7c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253739(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258450(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bc7 <kfun:#main(){}+0x7f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bd6 <kfun:#main(){}+0x806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253675(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258386(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c07 <kfun:#main(){}+0x837>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c16 <kfun:#main(){}+0x846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253611(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258322(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c47 <kfun:#main(){}+0x877>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c56 <kfun:#main(){}+0x886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253547(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258258(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c87 <kfun:#main(){}+0x8b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c96 <kfun:#main(){}+0x8c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253483(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258194(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cc7 <kfun:#main(){}+0x8f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cd6 <kfun:#main(){}+0x906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253419(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258130(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d07 <kfun:#main(){}+0x937>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d16 <kfun:#main(){}+0x946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253355(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258066(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d47 <kfun:#main(){}+0x977>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d56 <kfun:#main(){}+0x986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253291(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258002(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d87 <kfun:#main(){}+0x9b7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d96 <kfun:#main(){}+0x9c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253227(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257938(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dc7 <kfun:#main(){}+0x9f7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420dd6 <kfun:#main(){}+0xa06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253163(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257874(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e07 <kfun:#main(){}+0xa37>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e16 <kfun:#main(){}+0xa46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253099(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257810(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e47 <kfun:#main(){}+0xa77>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e56 <kfun:#main(){}+0xa86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253035(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257746(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e87 <kfun:#main(){}+0xab7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e96 <kfun:#main(){}+0xac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252971(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257682(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ec7 <kfun:#main(){}+0xaf7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ed6 <kfun:#main(){}+0xb06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252907(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257618(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f07 <kfun:#main(){}+0xb37>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f16 <kfun:#main(){}+0xb46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252843(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257554(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f47 <kfun:#main(){}+0xb77>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f56 <kfun:#main(){}+0xb86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252779(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257489(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f88 <kfun:#main(){}+0xbb8>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x420fb4 <kfun:#main(){}+0xbe4>
               	testl	%ebx, %ebx
               	je	0x420fbc <kfun:#main(){}+0xbec>
               	movq	$0, 252657(%rip)        # 0x45ea90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 252654(%rip)        # 0x45ea98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 252700(%rip)        # 0x45ead0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252677(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257378(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ff7 <kfun:#main(){}+0xc27>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421006 <kfun:#main(){}+0xc36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252603(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257314(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421037 <kfun:#main(){}+0xc67>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421046 <kfun:#main(){}+0xc76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252539(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257250(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421077 <kfun:#main(){}+0xca7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421086 <kfun:#main(){}+0xcb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252475(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257186(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210b7 <kfun:#main(){}+0xce7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210c6 <kfun:#main(){}+0xcf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252411(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257121(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210f8 <kfun:#main(){}+0xd28>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421119 <kfun:#main(){}+0xd49>
               	testl	%ebx, %ebx
               	je	0x421121 <kfun:#main(){}+0xd51>
               	movq	$0, 252305(%rip)        # 0x45eaa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 252347(%rip)        # 0x45ead4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252320(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257025(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421158 <kfun:#main(){}+0xd88>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421179 <kfun:#main(){}+0xda9>
               	testl	%ebx, %ebx
               	je	0x421181 <kfun:#main(){}+0xdb1>
               	movq	$0, 252217(%rip)        # 0x45eaa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 252255(%rip)        # 0x45ead8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252224(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256930(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211b7 <kfun:#main(){}+0xde7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211c6 <kfun:#main(){}+0xdf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252155(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256866(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211f7 <kfun:#main(){}+0xe27>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421206 <kfun:#main(){}+0xe36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252091(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256802(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421237 <kfun:#main(){}+0xe67>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421246 <kfun:#main(){}+0xe76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252027(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256738(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421277 <kfun:#main(){}+0xea7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421286 <kfun:#main(){}+0xeb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251963(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256674(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212b7 <kfun:#main(){}+0xee7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212c6 <kfun:#main(){}+0xef6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251899(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	256609(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212f8 <kfun:#main(){}+0xf28>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421319 <kfun:#main(){}+0xf49>
               	testl	%ebx, %ebx
               	je	0x421321 <kfun:#main(){}+0xf51>
               	movq	$0, 251809(%rip)        # 0x45eab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 251843(%rip)        # 0x45eadc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	251808(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256514(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421357 <kfun:#main(){}+0xf87>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421366 <kfun:#main(){}+0xf96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251739(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256450(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421397 <kfun:#main(){}+0xfc7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213a6 <kfun:#main(){}+0xfd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251675(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	256385(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213d8 <kfun:#main(){}+0x1008>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4213f9 <kfun:#main(){}+0x1029>
               	testl	%ebx, %ebx
               	je	0x421401 <kfun:#main(){}+0x1031>
               	movq	$0, 251593(%rip)        # 0x45eab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 251623(%rip)        # 0x45eae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	251584(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256290(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421437 <kfun:#main(){}+0x1067>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421446 <kfun:#main(){}+0x1076>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251515(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256226(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421477 <kfun:#main(){}+0x10a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421486 <kfun:#main(){}+0x10b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251451(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256162(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214b7 <kfun:#main(){}+0x10e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214c6 <kfun:#main(){}+0x10f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251387(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256098(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214f7 <kfun:#main(){}+0x1127>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421506 <kfun:#main(){}+0x1136>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251323(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256034(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421537 <kfun:#main(){}+0x1167>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421546 <kfun:#main(){}+0x1176>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251259(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255970(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421577 <kfun:#main(){}+0x11a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421586 <kfun:#main(){}+0x11b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251195(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255906(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215b7 <kfun:#main(){}+0x11e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215c6 <kfun:#main(){}+0x11f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251131(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255842(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215f7 <kfun:#main(){}+0x1227>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421606 <kfun:#main(){}+0x1236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251067(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255778(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421637 <kfun:#main(){}+0x1267>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421646 <kfun:#main(){}+0x1276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251003(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255714(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421677 <kfun:#main(){}+0x12a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421686 <kfun:#main(){}+0x12b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250939(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255650(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216b7 <kfun:#main(){}+0x12e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216c6 <kfun:#main(){}+0x12f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250875(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255586(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216f7 <kfun:#main(){}+0x1327>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421706 <kfun:#main(){}+0x1336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250811(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255522(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421737 <kfun:#main(){}+0x1367>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421746 <kfun:#main(){}+0x1376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250747(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255458(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421777 <kfun:#main(){}+0x13a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421786 <kfun:#main(){}+0x13b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250683(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255393(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217b8 <kfun:#main(){}+0x13e8>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4217cf <kfun:#main(){}+0x13ff>
               	testl	%ebx, %ebx
               	je	0x4217d7 <kfun:#main(){}+0x1407>
               	movq	$0, 244529(%rip)        # 0x45d300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250602(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255298(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421817 <kfun:#main(){}+0x1447>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421826 <kfun:#main(){}+0x1456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250523(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255233(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421858 <kfun:#main(){}+0x1488>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42186f <kfun:#main(){}+0x149f>
               	testl	%ebx, %ebx
               	je	0x421877 <kfun:#main(){}+0x14a7>
               	movq	$0, 244377(%rip)        # 0x45d308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250442(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255138(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218b7 <kfun:#main(){}+0x14e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218c6 <kfun:#main(){}+0x14f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250363(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255074(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218f7 <kfun:#main(){}+0x1527>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421906 <kfun:#main(){}+0x1536>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250299(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255009(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421938 <kfun:#main(){}+0x1568>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42194f <kfun:#main(){}+0x157f>
               	testl	%ebx, %ebx
               	je	0x421957 <kfun:#main(){}+0x1587>
               	movq	$0, 244161(%rip)        # 0x45d310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250218(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254914(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421997 <kfun:#main(){}+0x15c7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219a6 <kfun:#main(){}+0x15d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250139(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254850(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219d7 <kfun:#main(){}+0x1607>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219e6 <kfun:#main(){}+0x1616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250075(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	254785(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a18 <kfun:#main(){}+0x1648>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a39 <kfun:#main(){}+0x1669>
               	testl	%ebx, %ebx
               	je	0x421a41 <kfun:#main(){}+0x1671>
               	movq	$0, 250001(%rip)        # 0x45eac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 250027(%rip)        # 0x45eae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	249984(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424120 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254690(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a77 <kfun:#main(){}+0x16a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a86 <kfun:#main(){}+0x16b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249915(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254626(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ab7 <kfun:#main(){}+0x16e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ac6 <kfun:#main(){}+0x16f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249851(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254562(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421af7 <kfun:#main(){}+0x1727>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b06 <kfun:#main(){}+0x1736>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249787(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254498(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b37 <kfun:#main(){}+0x1767>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b46 <kfun:#main(){}+0x1776>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249723(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254434(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b77 <kfun:#main(){}+0x17a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b86 <kfun:#main(){}+0x17b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249659(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254370(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bb7 <kfun:#main(){}+0x17e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bc6 <kfun:#main(){}+0x17f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249595(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254306(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bf7 <kfun:#main(){}+0x1827>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c06 <kfun:#main(){}+0x1836>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249531(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254242(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c37 <kfun:#main(){}+0x1867>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c46 <kfun:#main(){}+0x1876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249467(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254178(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c77 <kfun:#main(){}+0x18a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c86 <kfun:#main(){}+0x18b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249403(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254114(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cb7 <kfun:#main(){}+0x18e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cc6 <kfun:#main(){}+0x18f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249339(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254050(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cf7 <kfun:#main(){}+0x1927>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d06 <kfun:#main(){}+0x1936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249275(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253986(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d37 <kfun:#main(){}+0x1967>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d46 <kfun:#main(){}+0x1976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249211(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253922(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d77 <kfun:#main(){}+0x19a7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d86 <kfun:#main(){}+0x19b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249147(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253858(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421db7 <kfun:#main(){}+0x19e7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421dc6 <kfun:#main(){}+0x19f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249083(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253794(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421df7 <kfun:#main(){}+0x1a27>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e06 <kfun:#main(){}+0x1a36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249019(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253730(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e37 <kfun:#main(){}+0x1a67>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e46 <kfun:#main(){}+0x1a76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	248955(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253666(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e77 <kfun:#main(){}+0x1aa7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e86 <kfun:#main(){}+0x1ab6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	248891(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253602(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421eb7 <kfun:#main(){}+0x1ae7>
               	callq	0x423f10 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ec6 <kfun:#main(){}+0x1af6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	248827(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424120 <AddTLSRecord>

