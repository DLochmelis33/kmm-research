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
               	leaq	232808(%rip), %rax      # 0x459160 <ktypeglobal:ForLoopsBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, (%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %r14
               	movq	288(%r14), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 32(%rsp)
               	movb	264464(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420449 <kfun:#main(){}+0x79>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rsp, %rax
               	movq	%rax, 40(%rsp)
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 64(%rsp)
               	movaps	%xmm0, 48(%rsp)
               	movq	$0, 80(%rsp)
               	movq	288(%r14), %rax
               	movq	%rax, 56(%rsp)
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$21474836480, %rax      # imm = 0x500000000
               	movq	%rax, 64(%rsp)
               	movq	296(%r14), %rdi
               	addq	$112, %rdi
               	movl	$80024, %esi            # imm = 0x13898
               	callq	0x427490 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	leaq	16(%rax), %r15
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	220736(%rip), %rax      # 0x456300 <ktypeglobal:kotlin.LongArray#internal>
               	movq	%rax, 16(%r12)
               	movl	$10000, 24(%r12)        # imm = 0x2710
               	movq	%r15, 72(%rsp)
               	xorl	%ebx, %ebx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	je	0x420511 <kfun:#main(){}+0x141>
               	nop
               	movzbl	264297(%rip), %eax      # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4204f0 <kfun:#main(){}+0x120>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%r12), %eax
               	cmpq	%rax, %rbx
               	jae	0x420571 <kfun:#main(){}+0x1a1>
               	movq	16(%r12), %rax
               	movq	%rbx, 32(%r12,%rbx,8)
               	addq	$1, %rbx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	jne	0x4204e0 <kfun:#main(){}+0x110>
               	movq	%r15, 8(%rsp)
               	movq	56(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movq	8(%rsp), %rax
               	movl	8(%rax), %eax
               	xorl	%ebx, %ebx
               	testl	%eax, %eax
               	cmovnsl	%eax, %ebx
               	jmp	0x420543 <kfun:#main(){}+0x173>
               	nopw	%cs:(%rax,%rax)
               	addl	$-1, %ebx
               	testl	%ebx, %ebx
               	je	0x420559 <kfun:#main(){}+0x189>
               	movzbl	264194(%rip), %eax      # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420540 <kfun:#main(){}+0x170>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420540 <kfun:#main(){}+0x170>
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
               	movb	264130(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420597 <kfun:#main(){}+0x1c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205a6 <kfun:#main(){}+0x1d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259355(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264066(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4205d7 <kfun:#main(){}+0x207>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205e6 <kfun:#main(){}+0x216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259291(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264002(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420617 <kfun:#main(){}+0x247>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420626 <kfun:#main(){}+0x256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259227(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263938(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420657 <kfun:#main(){}+0x287>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420666 <kfun:#main(){}+0x296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259163(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263874(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420697 <kfun:#main(){}+0x2c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206a6 <kfun:#main(){}+0x2d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259099(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263810(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206d7 <kfun:#main(){}+0x307>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206e6 <kfun:#main(){}+0x316>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259035(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263746(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420717 <kfun:#main(){}+0x347>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420726 <kfun:#main(){}+0x356>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258971(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263682(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420757 <kfun:#main(){}+0x387>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420766 <kfun:#main(){}+0x396>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258907(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263618(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420797 <kfun:#main(){}+0x3c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207a6 <kfun:#main(){}+0x3d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258843(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263554(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207d7 <kfun:#main(){}+0x407>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207e6 <kfun:#main(){}+0x416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258779(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263490(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420817 <kfun:#main(){}+0x447>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420826 <kfun:#main(){}+0x456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258715(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263426(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420857 <kfun:#main(){}+0x487>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420866 <kfun:#main(){}+0x496>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258651(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263362(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420897 <kfun:#main(){}+0x4c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208a6 <kfun:#main(){}+0x4d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258587(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263298(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208d7 <kfun:#main(){}+0x507>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208e6 <kfun:#main(){}+0x516>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258523(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263234(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420917 <kfun:#main(){}+0x547>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420926 <kfun:#main(){}+0x556>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258459(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263170(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420957 <kfun:#main(){}+0x587>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420966 <kfun:#main(){}+0x596>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258395(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263106(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420997 <kfun:#main(){}+0x5c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209a6 <kfun:#main(){}+0x5d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258331(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263042(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209d7 <kfun:#main(){}+0x607>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209e6 <kfun:#main(){}+0x616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258267(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262978(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a17 <kfun:#main(){}+0x647>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a26 <kfun:#main(){}+0x656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258203(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262914(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a57 <kfun:#main(){}+0x687>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a66 <kfun:#main(){}+0x696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258139(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262850(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a97 <kfun:#main(){}+0x6c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420aa6 <kfun:#main(){}+0x6d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258075(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262786(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ad7 <kfun:#main(){}+0x707>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ae6 <kfun:#main(){}+0x716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258011(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262722(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b17 <kfun:#main(){}+0x747>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b26 <kfun:#main(){}+0x756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257947(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262658(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b57 <kfun:#main(){}+0x787>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b66 <kfun:#main(){}+0x796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257883(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262594(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b97 <kfun:#main(){}+0x7c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ba6 <kfun:#main(){}+0x7d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257819(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262530(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bd7 <kfun:#main(){}+0x807>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420be6 <kfun:#main(){}+0x816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257755(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262466(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c17 <kfun:#main(){}+0x847>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c26 <kfun:#main(){}+0x856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257691(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262402(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c57 <kfun:#main(){}+0x887>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c66 <kfun:#main(){}+0x896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257627(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262338(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c97 <kfun:#main(){}+0x8c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ca6 <kfun:#main(){}+0x8d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257563(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262274(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cd7 <kfun:#main(){}+0x907>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ce6 <kfun:#main(){}+0x916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257499(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262210(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d17 <kfun:#main(){}+0x947>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d26 <kfun:#main(){}+0x956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257435(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262146(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d57 <kfun:#main(){}+0x987>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d66 <kfun:#main(){}+0x996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257371(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262082(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d97 <kfun:#main(){}+0x9c7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420da6 <kfun:#main(){}+0x9d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257307(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262018(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dd7 <kfun:#main(){}+0xa07>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420de6 <kfun:#main(){}+0xa16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257243(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261954(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e17 <kfun:#main(){}+0xa47>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e26 <kfun:#main(){}+0xa56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257179(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261890(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e57 <kfun:#main(){}+0xa87>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e66 <kfun:#main(){}+0xa96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257115(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261826(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e97 <kfun:#main(){}+0xac7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ea6 <kfun:#main(){}+0xad6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257051(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261762(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ed7 <kfun:#main(){}+0xb07>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ee6 <kfun:#main(){}+0xb16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256987(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261698(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f17 <kfun:#main(){}+0xb47>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f26 <kfun:#main(){}+0xb56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256923(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261634(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f57 <kfun:#main(){}+0xb87>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f66 <kfun:#main(){}+0xb96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256859(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	261569(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f98 <kfun:#main(){}+0xbc8>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x420fc4 <kfun:#main(){}+0xbf4>
               	testl	%ebx, %ebx
               	je	0x420fcc <kfun:#main(){}+0xbfc>
               	movq	$0, 256737(%rip)        # 0x45fa90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 256734(%rip)        # 0x45fa98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 256780(%rip)        # 0x45fad0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256757(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261458(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421007 <kfun:#main(){}+0xc37>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421016 <kfun:#main(){}+0xc46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256683(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261394(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421047 <kfun:#main(){}+0xc77>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421056 <kfun:#main(){}+0xc86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256619(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261330(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421087 <kfun:#main(){}+0xcb7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421096 <kfun:#main(){}+0xcc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256555(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261266(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210c7 <kfun:#main(){}+0xcf7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210d6 <kfun:#main(){}+0xd06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256491(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	261201(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421108 <kfun:#main(){}+0xd38>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421129 <kfun:#main(){}+0xd59>
               	testl	%ebx, %ebx
               	je	0x421131 <kfun:#main(){}+0xd61>
               	movq	$0, 256385(%rip)        # 0x45faa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 256427(%rip)        # 0x45fad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256400(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	261105(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421168 <kfun:#main(){}+0xd98>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421189 <kfun:#main(){}+0xdb9>
               	testl	%ebx, %ebx
               	je	0x421191 <kfun:#main(){}+0xdc1>
               	movq	$0, 256297(%rip)        # 0x45faa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 256335(%rip)        # 0x45fad8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256304(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261010(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211c7 <kfun:#main(){}+0xdf7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211d6 <kfun:#main(){}+0xe06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256235(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260946(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421207 <kfun:#main(){}+0xe37>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421216 <kfun:#main(){}+0xe46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256171(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260882(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421247 <kfun:#main(){}+0xe77>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421256 <kfun:#main(){}+0xe86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256107(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260818(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421287 <kfun:#main(){}+0xeb7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421296 <kfun:#main(){}+0xec6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256043(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260754(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212c7 <kfun:#main(){}+0xef7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212d6 <kfun:#main(){}+0xf06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255979(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260689(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421308 <kfun:#main(){}+0xf38>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421329 <kfun:#main(){}+0xf59>
               	testl	%ebx, %ebx
               	je	0x421331 <kfun:#main(){}+0xf61>
               	movq	$0, 255889(%rip)        # 0x45fab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 255923(%rip)        # 0x45fadc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255888(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260594(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421367 <kfun:#main(){}+0xf97>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421376 <kfun:#main(){}+0xfa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255819(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260530(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213a7 <kfun:#main(){}+0xfd7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213b6 <kfun:#main(){}+0xfe6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255755(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260465(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213e8 <kfun:#main(){}+0x1018>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421409 <kfun:#main(){}+0x1039>
               	testl	%ebx, %ebx
               	je	0x421411 <kfun:#main(){}+0x1041>
               	movq	$0, 255673(%rip)        # 0x45fab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 255703(%rip)        # 0x45fae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255664(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260370(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421447 <kfun:#main(){}+0x1077>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421456 <kfun:#main(){}+0x1086>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255595(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260306(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421487 <kfun:#main(){}+0x10b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421496 <kfun:#main(){}+0x10c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255531(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260242(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214c7 <kfun:#main(){}+0x10f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214d6 <kfun:#main(){}+0x1106>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255467(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260178(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421507 <kfun:#main(){}+0x1137>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421516 <kfun:#main(){}+0x1146>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255403(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260114(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421547 <kfun:#main(){}+0x1177>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421556 <kfun:#main(){}+0x1186>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255339(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260050(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421587 <kfun:#main(){}+0x11b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421596 <kfun:#main(){}+0x11c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255275(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259986(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215c7 <kfun:#main(){}+0x11f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215d6 <kfun:#main(){}+0x1206>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255211(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259922(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421607 <kfun:#main(){}+0x1237>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421616 <kfun:#main(){}+0x1246>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255147(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259858(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421647 <kfun:#main(){}+0x1277>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421656 <kfun:#main(){}+0x1286>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255083(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259794(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421687 <kfun:#main(){}+0x12b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421696 <kfun:#main(){}+0x12c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255019(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259730(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216c7 <kfun:#main(){}+0x12f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216d6 <kfun:#main(){}+0x1306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254955(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259666(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421707 <kfun:#main(){}+0x1337>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421716 <kfun:#main(){}+0x1346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254891(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259602(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421747 <kfun:#main(){}+0x1377>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421756 <kfun:#main(){}+0x1386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254827(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259538(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421787 <kfun:#main(){}+0x13b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421796 <kfun:#main(){}+0x13c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254763(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	259473(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217c8 <kfun:#main(){}+0x13f8>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4217df <kfun:#main(){}+0x140f>
               	testl	%ebx, %ebx
               	je	0x4217e7 <kfun:#main(){}+0x1417>
               	movq	$0, 248609(%rip)        # 0x45e300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	254682(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259378(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421827 <kfun:#main(){}+0x1457>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421836 <kfun:#main(){}+0x1466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254603(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	259313(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421868 <kfun:#main(){}+0x1498>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42187f <kfun:#main(){}+0x14af>
               	testl	%ebx, %ebx
               	je	0x421887 <kfun:#main(){}+0x14b7>
               	movq	$0, 248457(%rip)        # 0x45e308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	254522(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259218(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218c7 <kfun:#main(){}+0x14f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218d6 <kfun:#main(){}+0x1506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254443(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259154(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421907 <kfun:#main(){}+0x1537>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421916 <kfun:#main(){}+0x1546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254379(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	259089(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421948 <kfun:#main(){}+0x1578>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42195f <kfun:#main(){}+0x158f>
               	testl	%ebx, %ebx
               	je	0x421967 <kfun:#main(){}+0x1597>
               	movq	$0, 248241(%rip)        # 0x45e310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	254298(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258994(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219a7 <kfun:#main(){}+0x15d7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219b6 <kfun:#main(){}+0x15e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254219(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258930(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219e7 <kfun:#main(){}+0x1617>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219f6 <kfun:#main(){}+0x1626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254155(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	258865(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a28 <kfun:#main(){}+0x1658>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a49 <kfun:#main(){}+0x1679>
               	testl	%ebx, %ebx
               	je	0x421a51 <kfun:#main(){}+0x1681>
               	movq	$0, 254081(%rip)        # 0x45fac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 254107(%rip)        # 0x45fae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	254064(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424130 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258770(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a87 <kfun:#main(){}+0x16b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a96 <kfun:#main(){}+0x16c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253995(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258706(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ac7 <kfun:#main(){}+0x16f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ad6 <kfun:#main(){}+0x1706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253931(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258642(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b07 <kfun:#main(){}+0x1737>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b16 <kfun:#main(){}+0x1746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253867(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258578(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b47 <kfun:#main(){}+0x1777>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b56 <kfun:#main(){}+0x1786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253803(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258514(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b87 <kfun:#main(){}+0x17b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b96 <kfun:#main(){}+0x17c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253739(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258450(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bc7 <kfun:#main(){}+0x17f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bd6 <kfun:#main(){}+0x1806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253675(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258386(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c07 <kfun:#main(){}+0x1837>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c16 <kfun:#main(){}+0x1846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253611(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258322(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c47 <kfun:#main(){}+0x1877>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c56 <kfun:#main(){}+0x1886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253547(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258258(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c87 <kfun:#main(){}+0x18b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c96 <kfun:#main(){}+0x18c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253483(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258194(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cc7 <kfun:#main(){}+0x18f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cd6 <kfun:#main(){}+0x1906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253419(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258130(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d07 <kfun:#main(){}+0x1937>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d16 <kfun:#main(){}+0x1946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253355(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258066(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d47 <kfun:#main(){}+0x1977>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d56 <kfun:#main(){}+0x1986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253291(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258002(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d87 <kfun:#main(){}+0x19b7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d96 <kfun:#main(){}+0x19c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253227(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257938(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dc7 <kfun:#main(){}+0x19f7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421dd6 <kfun:#main(){}+0x1a06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253163(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257874(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e07 <kfun:#main(){}+0x1a37>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e16 <kfun:#main(){}+0x1a46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253099(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257810(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e47 <kfun:#main(){}+0x1a77>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e56 <kfun:#main(){}+0x1a86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253035(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257746(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e87 <kfun:#main(){}+0x1ab7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e96 <kfun:#main(){}+0x1ac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252971(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257682(%rip), %al       # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ec7 <kfun:#main(){}+0x1af7>
               	callq	0x423f20 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ed6 <kfun:#main(){}+0x1b06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252907(%rip), %rsi      # 0x45fac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424130 <AddTLSRecord>

