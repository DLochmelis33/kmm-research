<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r15
               	pushq	%r14
               	pushq	%r13
               	pushq	%r12
               	pushq	%rbx
               	subq	$56, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	leaq	234206(%rip), %rax      # 0x4598d0 <ktypeglobal:EulerBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 8(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %r14
               	movq	288(%r14), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 32(%rsp)
               	movb	265821(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420644 <kfun:#main(){}+0x74>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	8(%rsp), %rax
               	movq	%rax, 40(%rsp)
               	movl	$6667, %r15d            # imm = 0x1A0B
               	movl	$3333, %r12d            # imm = 0xD05
               	jmp	0x420679 <kfun:#main(){}+0xa9>
               	nop
               	leaq	1(%r12), %rax
               	addq	$-1, %r15
               	cmpq	$9997, %r12             # imm = 0x270D
               	movq	%rax, %r12
               	je	0x420706 <kfun:#main(){}+0x136>
               	movb	265753(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420688 <kfun:#main(){}+0xb8>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	$10000, %eax            # imm = 0x2710
               	subl	%r12d, %eax
               	shrl	%eax
               	leaq	-1(%r12), %rcx
               	cmpq	%rax, %rcx
               	jb	0x420660 <kfun:#main(){}+0x90>
               	movl	%r15d, %eax
               	shrl	%eax
               	movl	%r15d, %ebp
               	subl	%eax, %ebp
               	movq	%r15, %rbx
               	shrq	%rbx
               	movq	%r12, %r13
               	imulq	%r12, %r13
               	jmp	0x4206cc <kfun:#main(){}+0xfc>
               	nopl	(%rax)
               	addq	$1, %rbx
               	addl	$-1, %ebp
               	cmpq	%rbx, %r12
               	je	0x420660 <kfun:#main(){}+0x90>
               	movzbl	265669(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206dc <kfun:#main(){}+0x10c>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	(%r12,%rbx), %eax
               	cmpl	$9999, %eax             # imm = 0x270F
               	ja	0x420660 <kfun:#main(){}+0x90>
               	movslq	%ebp, %rax
               	cmpq	%rax, %rbx
               	jle	0x4206c0 <kfun:#main(){}+0xf0>
               	movq	%rbx, %rcx
               	imulq	%rbx, %rcx
               	imulq	%rax, %rax
               	addq	%rcx, %rax
               	cmpq	%rax, %r13
               	jne	0x4206c0 <kfun:#main(){}+0xf0>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%r14)
               	addq	$56, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r13
               	popq	%r14
               	popq	%r15
               	popq	%rbp
               	retq
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265562(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420747 <kfun:#main(){}+0x177>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420756 <kfun:#main(){}+0x186>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260779(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265498(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420787 <kfun:#main(){}+0x1b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420796 <kfun:#main(){}+0x1c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260715(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265434(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207c7 <kfun:#main(){}+0x1f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207d6 <kfun:#main(){}+0x206>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260651(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265370(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420807 <kfun:#main(){}+0x237>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420816 <kfun:#main(){}+0x246>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260587(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265306(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420847 <kfun:#main(){}+0x277>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420856 <kfun:#main(){}+0x286>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260523(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265242(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420887 <kfun:#main(){}+0x2b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420896 <kfun:#main(){}+0x2c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260459(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265178(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208c7 <kfun:#main(){}+0x2f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208d6 <kfun:#main(){}+0x306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260395(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265114(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420907 <kfun:#main(){}+0x337>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420916 <kfun:#main(){}+0x346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260331(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265050(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420947 <kfun:#main(){}+0x377>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420956 <kfun:#main(){}+0x386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260267(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264986(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420987 <kfun:#main(){}+0x3b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420996 <kfun:#main(){}+0x3c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260203(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264922(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209c7 <kfun:#main(){}+0x3f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209d6 <kfun:#main(){}+0x406>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260139(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264858(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a07 <kfun:#main(){}+0x437>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a16 <kfun:#main(){}+0x446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260075(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264794(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a47 <kfun:#main(){}+0x477>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a56 <kfun:#main(){}+0x486>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260011(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264730(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a87 <kfun:#main(){}+0x4b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a96 <kfun:#main(){}+0x4c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259947(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264666(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ac7 <kfun:#main(){}+0x4f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ad6 <kfun:#main(){}+0x506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259883(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264602(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b07 <kfun:#main(){}+0x537>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b16 <kfun:#main(){}+0x546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259819(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264538(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b47 <kfun:#main(){}+0x577>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b56 <kfun:#main(){}+0x586>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259755(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264474(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b87 <kfun:#main(){}+0x5b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b96 <kfun:#main(){}+0x5c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259691(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264410(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bc7 <kfun:#main(){}+0x5f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bd6 <kfun:#main(){}+0x606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259627(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264346(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c07 <kfun:#main(){}+0x637>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c16 <kfun:#main(){}+0x646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259563(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264282(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c47 <kfun:#main(){}+0x677>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c56 <kfun:#main(){}+0x686>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259499(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264218(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c87 <kfun:#main(){}+0x6b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c96 <kfun:#main(){}+0x6c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259435(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264154(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cc7 <kfun:#main(){}+0x6f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cd6 <kfun:#main(){}+0x706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259371(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264090(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d07 <kfun:#main(){}+0x737>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d16 <kfun:#main(){}+0x746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259307(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264026(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d47 <kfun:#main(){}+0x777>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d56 <kfun:#main(){}+0x786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259243(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263962(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d87 <kfun:#main(){}+0x7b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d96 <kfun:#main(){}+0x7c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259179(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263898(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dc7 <kfun:#main(){}+0x7f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420dd6 <kfun:#main(){}+0x806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259115(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263834(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e07 <kfun:#main(){}+0x837>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e16 <kfun:#main(){}+0x846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259051(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263770(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e47 <kfun:#main(){}+0x877>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e56 <kfun:#main(){}+0x886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258987(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263706(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e87 <kfun:#main(){}+0x8b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e96 <kfun:#main(){}+0x8c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258923(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263642(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ec7 <kfun:#main(){}+0x8f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ed6 <kfun:#main(){}+0x906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258859(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263578(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f07 <kfun:#main(){}+0x937>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f16 <kfun:#main(){}+0x946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258795(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263514(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f47 <kfun:#main(){}+0x977>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f56 <kfun:#main(){}+0x986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258731(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263450(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f87 <kfun:#main(){}+0x9b7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f96 <kfun:#main(){}+0x9c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258667(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263386(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fc7 <kfun:#main(){}+0x9f7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fd6 <kfun:#main(){}+0xa06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258603(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263322(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421007 <kfun:#main(){}+0xa37>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421016 <kfun:#main(){}+0xa46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258539(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263258(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421047 <kfun:#main(){}+0xa77>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421056 <kfun:#main(){}+0xa86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258475(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263194(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421087 <kfun:#main(){}+0xab7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421096 <kfun:#main(){}+0xac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258411(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263130(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210c7 <kfun:#main(){}+0xaf7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210d6 <kfun:#main(){}+0xb06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258347(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263066(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421107 <kfun:#main(){}+0xb37>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421116 <kfun:#main(){}+0xb46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258283(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	263001(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421148 <kfun:#main(){}+0xb78>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421174 <kfun:#main(){}+0xba4>
               	testl	%ebx, %ebx
               	je	0x42117c <kfun:#main(){}+0xbac>
               	movq	$0, 258161(%rip)        # 0x4601d0 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 258158(%rip)        # 0x4601d8 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 258204(%rip)        # 0x460210 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258181(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262890(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211b7 <kfun:#main(){}+0xbe7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211c6 <kfun:#main(){}+0xbf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258107(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262826(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211f7 <kfun:#main(){}+0xc27>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421206 <kfun:#main(){}+0xc36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258043(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262762(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421237 <kfun:#main(){}+0xc67>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421246 <kfun:#main(){}+0xc76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257979(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262698(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421277 <kfun:#main(){}+0xca7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421286 <kfun:#main(){}+0xcb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257915(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262633(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212b8 <kfun:#main(){}+0xce8>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4212d9 <kfun:#main(){}+0xd09>
               	testl	%ebx, %ebx
               	je	0x4212e1 <kfun:#main(){}+0xd11>
               	movq	$0, 257809(%rip)        # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 257851(%rip)        # 0x460214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257824(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262537(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421318 <kfun:#main(){}+0xd48>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421339 <kfun:#main(){}+0xd69>
               	testl	%ebx, %ebx
               	je	0x421341 <kfun:#main(){}+0xd71>
               	movq	$0, 257721(%rip)        # 0x4601e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 257759(%rip)        # 0x460218 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257728(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262442(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421377 <kfun:#main(){}+0xda7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421386 <kfun:#main(){}+0xdb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257659(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262378(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213b7 <kfun:#main(){}+0xde7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213c6 <kfun:#main(){}+0xdf6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257595(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262314(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213f7 <kfun:#main(){}+0xe27>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421406 <kfun:#main(){}+0xe36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257531(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262250(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421437 <kfun:#main(){}+0xe67>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421446 <kfun:#main(){}+0xe76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257467(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262186(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421477 <kfun:#main(){}+0xea7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421486 <kfun:#main(){}+0xeb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257403(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262121(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214b8 <kfun:#main(){}+0xee8>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4214d9 <kfun:#main(){}+0xf09>
               	testl	%ebx, %ebx
               	je	0x4214e1 <kfun:#main(){}+0xf11>
               	movq	$0, 257313(%rip)        # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 257347(%rip)        # 0x46021c <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257312(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262026(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421517 <kfun:#main(){}+0xf47>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421526 <kfun:#main(){}+0xf56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257243(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261962(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421557 <kfun:#main(){}+0xf87>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421566 <kfun:#main(){}+0xf96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257179(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	261897(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421598 <kfun:#main(){}+0xfc8>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4215b9 <kfun:#main(){}+0xfe9>
               	testl	%ebx, %ebx
               	je	0x4215c1 <kfun:#main(){}+0xff1>
               	movq	$0, 257097(%rip)        # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 257127(%rip)        # 0x460220 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257088(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261802(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215f7 <kfun:#main(){}+0x1027>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421606 <kfun:#main(){}+0x1036>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257019(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261738(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421637 <kfun:#main(){}+0x1067>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421646 <kfun:#main(){}+0x1076>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256955(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261674(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421677 <kfun:#main(){}+0x10a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421686 <kfun:#main(){}+0x10b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256891(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261610(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216b7 <kfun:#main(){}+0x10e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216c6 <kfun:#main(){}+0x10f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256827(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261546(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216f7 <kfun:#main(){}+0x1127>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421706 <kfun:#main(){}+0x1136>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256763(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261482(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421737 <kfun:#main(){}+0x1167>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421746 <kfun:#main(){}+0x1176>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256699(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261418(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421777 <kfun:#main(){}+0x11a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421786 <kfun:#main(){}+0x11b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256635(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261354(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217b7 <kfun:#main(){}+0x11e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217c6 <kfun:#main(){}+0x11f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256571(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261290(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217f7 <kfun:#main(){}+0x1227>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421806 <kfun:#main(){}+0x1236>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256507(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261226(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421837 <kfun:#main(){}+0x1267>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421846 <kfun:#main(){}+0x1276>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256443(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261162(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421877 <kfun:#main(){}+0x12a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421886 <kfun:#main(){}+0x12b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256379(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261098(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218b7 <kfun:#main(){}+0x12e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218c6 <kfun:#main(){}+0x12f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256315(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261034(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218f7 <kfun:#main(){}+0x1327>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421906 <kfun:#main(){}+0x1336>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256251(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260970(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421937 <kfun:#main(){}+0x1367>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421946 <kfun:#main(){}+0x1376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256187(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260905(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421978 <kfun:#main(){}+0x13a8>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42198f <kfun:#main(){}+0x13bf>
               	testl	%ebx, %ebx
               	je	0x421997 <kfun:#main(){}+0x13c7>
               	movq	$0, 248177(%rip)        # 0x45e300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256106(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260810(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219d7 <kfun:#main(){}+0x1407>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219e6 <kfun:#main(){}+0x1416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256027(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260745(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a18 <kfun:#main(){}+0x1448>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a2f <kfun:#main(){}+0x145f>
               	testl	%ebx, %ebx
               	je	0x421a37 <kfun:#main(){}+0x1467>
               	movq	$0, 248025(%rip)        # 0x45e308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255946(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260650(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a77 <kfun:#main(){}+0x14a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a86 <kfun:#main(){}+0x14b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255867(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260586(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ab7 <kfun:#main(){}+0x14e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ac6 <kfun:#main(){}+0x14f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255803(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260521(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421af8 <kfun:#main(){}+0x1528>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421b0f <kfun:#main(){}+0x153f>
               	testl	%ebx, %ebx
               	je	0x421b17 <kfun:#main(){}+0x1547>
               	movq	$0, 247809(%rip)        # 0x45e310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255722(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260426(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b57 <kfun:#main(){}+0x1587>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b66 <kfun:#main(){}+0x1596>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255643(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260362(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b97 <kfun:#main(){}+0x15c7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ba6 <kfun:#main(){}+0x15d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255579(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260297(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bd8 <kfun:#main(){}+0x1608>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421bf9 <kfun:#main(){}+0x1629>
               	testl	%ebx, %ebx
               	je	0x421c01 <kfun:#main(){}+0x1631>
               	movq	$0, 255505(%rip)        # 0x460200 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 255531(%rip)        # 0x460224 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255488(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424750 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260202(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c37 <kfun:#main(){}+0x1667>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c46 <kfun:#main(){}+0x1676>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255419(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260138(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c77 <kfun:#main(){}+0x16a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c86 <kfun:#main(){}+0x16b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255355(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260074(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cb7 <kfun:#main(){}+0x16e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cc6 <kfun:#main(){}+0x16f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255291(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260010(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cf7 <kfun:#main(){}+0x1727>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d06 <kfun:#main(){}+0x1736>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255227(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259946(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d37 <kfun:#main(){}+0x1767>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d46 <kfun:#main(){}+0x1776>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255163(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259882(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d77 <kfun:#main(){}+0x17a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d86 <kfun:#main(){}+0x17b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255099(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259818(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421db7 <kfun:#main(){}+0x17e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421dc6 <kfun:#main(){}+0x17f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255035(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259754(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421df7 <kfun:#main(){}+0x1827>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e06 <kfun:#main(){}+0x1836>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254971(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259690(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e37 <kfun:#main(){}+0x1867>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e46 <kfun:#main(){}+0x1876>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254907(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259626(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e77 <kfun:#main(){}+0x18a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e86 <kfun:#main(){}+0x18b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254843(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259562(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421eb7 <kfun:#main(){}+0x18e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ec6 <kfun:#main(){}+0x18f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254779(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259498(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ef7 <kfun:#main(){}+0x1927>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f06 <kfun:#main(){}+0x1936>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254715(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259434(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f37 <kfun:#main(){}+0x1967>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f46 <kfun:#main(){}+0x1976>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254651(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259370(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f77 <kfun:#main(){}+0x19a7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f86 <kfun:#main(){}+0x19b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254587(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259306(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fb7 <kfun:#main(){}+0x19e7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fc6 <kfun:#main(){}+0x19f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254523(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259242(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ff7 <kfun:#main(){}+0x1a27>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422006 <kfun:#main(){}+0x1a36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254459(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259178(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422037 <kfun:#main(){}+0x1a67>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422046 <kfun:#main(){}+0x1a76>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254395(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259114(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422077 <kfun:#main(){}+0x1aa7>
               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422086 <kfun:#main(){}+0x1ab6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254331(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424750 <AddTLSRecord>

