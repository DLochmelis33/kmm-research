<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%r14
               	pushq	%rbx
               	subq	$80, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	$0, 8(%rsp)
               	leaq	232379(%rip), %rax      # 0x459140 <ktypeglobal:InlineBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, (%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %r14      # imm = 0x400000000
               	movq	%r14, 32(%rsp)
               	movb	268163(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4205d6 <kfun:#main(){}+0x76>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rsp, %rax
               	movq	%rax, 40(%rsp)
               	movl	$2138476523, 8(%rsp)    # imm = 0x7F768FEB
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 64(%rsp)
               	movaps	%xmm0, 48(%rsp)
               	leaq	72(%rsp), %rsi
               	movq	288(%rbx), %rax
               	movq	%rax, 56(%rsp)
               	leaq	48(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movq	%r14, 64(%rsp)
               	movl	8(%rsp), %edi
               	callq	0x415d90 <kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any>
               	movl	$10001, %ebp            # imm = 0x2711
               	jmp	0x420635 <kfun:#main(){}+0xd5>
               	nopl	(%rax,%rax)
               	addl	$-1, %ebp
               	je	0x420647 <kfun:#main(){}+0xe7>
               	movzbl	268052(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420630 <kfun:#main(){}+0xd0>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420630 <kfun:#main(){}+0xd0>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	addq	$80, %rsp
               	popq	%rbx
               	popq	%r14
               	popq	%rbp
               	retq
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	268002(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420677 <kfun:#main(){}+0x117>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420686 <kfun:#main(){}+0x126>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263227(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267938(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206b7 <kfun:#main(){}+0x157>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206c6 <kfun:#main(){}+0x166>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263163(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267874(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206f7 <kfun:#main(){}+0x197>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420706 <kfun:#main(){}+0x1a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263099(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267810(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420737 <kfun:#main(){}+0x1d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420746 <kfun:#main(){}+0x1e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	263035(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267746(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420777 <kfun:#main(){}+0x217>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420786 <kfun:#main(){}+0x226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262971(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267682(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207b7 <kfun:#main(){}+0x257>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207c6 <kfun:#main(){}+0x266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262907(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267618(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207f7 <kfun:#main(){}+0x297>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420806 <kfun:#main(){}+0x2a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262843(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267554(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420837 <kfun:#main(){}+0x2d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420846 <kfun:#main(){}+0x2e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262779(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267490(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420877 <kfun:#main(){}+0x317>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420886 <kfun:#main(){}+0x326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262715(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267426(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208b7 <kfun:#main(){}+0x357>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208c6 <kfun:#main(){}+0x366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262651(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267362(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208f7 <kfun:#main(){}+0x397>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420906 <kfun:#main(){}+0x3a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262587(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267298(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420937 <kfun:#main(){}+0x3d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420946 <kfun:#main(){}+0x3e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262523(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267234(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420977 <kfun:#main(){}+0x417>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420986 <kfun:#main(){}+0x426>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262459(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267170(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209b7 <kfun:#main(){}+0x457>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209c6 <kfun:#main(){}+0x466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262395(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267106(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209f7 <kfun:#main(){}+0x497>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a06 <kfun:#main(){}+0x4a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262331(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	267042(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a37 <kfun:#main(){}+0x4d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a46 <kfun:#main(){}+0x4e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262267(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266978(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a77 <kfun:#main(){}+0x517>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a86 <kfun:#main(){}+0x526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262203(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266914(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ab7 <kfun:#main(){}+0x557>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ac6 <kfun:#main(){}+0x566>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262139(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266850(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420af7 <kfun:#main(){}+0x597>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b06 <kfun:#main(){}+0x5a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262075(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266786(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b37 <kfun:#main(){}+0x5d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b46 <kfun:#main(){}+0x5e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	262011(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266722(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b77 <kfun:#main(){}+0x617>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b86 <kfun:#main(){}+0x626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261947(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266658(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bb7 <kfun:#main(){}+0x657>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bc6 <kfun:#main(){}+0x666>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261883(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266594(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bf7 <kfun:#main(){}+0x697>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c06 <kfun:#main(){}+0x6a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261819(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266530(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c37 <kfun:#main(){}+0x6d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c46 <kfun:#main(){}+0x6e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261755(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266466(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c77 <kfun:#main(){}+0x717>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c86 <kfun:#main(){}+0x726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261691(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266402(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cb7 <kfun:#main(){}+0x757>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cc6 <kfun:#main(){}+0x766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261627(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266338(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cf7 <kfun:#main(){}+0x797>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d06 <kfun:#main(){}+0x7a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261563(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266274(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d37 <kfun:#main(){}+0x7d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d46 <kfun:#main(){}+0x7e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261499(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266210(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d77 <kfun:#main(){}+0x817>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d86 <kfun:#main(){}+0x826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261435(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266146(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420db7 <kfun:#main(){}+0x857>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420dc6 <kfun:#main(){}+0x866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261371(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266082(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420df7 <kfun:#main(){}+0x897>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e06 <kfun:#main(){}+0x8a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261307(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	266018(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e37 <kfun:#main(){}+0x8d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e46 <kfun:#main(){}+0x8e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261243(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265954(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e77 <kfun:#main(){}+0x917>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e86 <kfun:#main(){}+0x926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261179(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265890(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420eb7 <kfun:#main(){}+0x957>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ec6 <kfun:#main(){}+0x966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261115(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265826(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ef7 <kfun:#main(){}+0x997>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f06 <kfun:#main(){}+0x9a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	261051(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265762(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f37 <kfun:#main(){}+0x9d7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f46 <kfun:#main(){}+0x9e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260987(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265698(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f77 <kfun:#main(){}+0xa17>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f86 <kfun:#main(){}+0xa26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260923(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265634(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fb7 <kfun:#main(){}+0xa57>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fc6 <kfun:#main(){}+0xa66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260859(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265570(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ff7 <kfun:#main(){}+0xa97>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421006 <kfun:#main(){}+0xaa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260795(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265506(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421037 <kfun:#main(){}+0xad7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421046 <kfun:#main(){}+0xae6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260731(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	265441(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421078 <kfun:#main(){}+0xb18>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4210a4 <kfun:#main(){}+0xb44>
               	testl	%ebx, %ebx
               	je	0x4210ac <kfun:#main(){}+0xb4c>
               	movq	$0, 260609(%rip)        # 0x460a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 260606(%rip)        # 0x460a98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 260652(%rip)        # 0x460ad0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	260629(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265330(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210e7 <kfun:#main(){}+0xb87>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210f6 <kfun:#main(){}+0xb96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260555(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265266(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421127 <kfun:#main(){}+0xbc7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421136 <kfun:#main(){}+0xbd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260491(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265202(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421167 <kfun:#main(){}+0xc07>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421176 <kfun:#main(){}+0xc16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260427(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265138(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211a7 <kfun:#main(){}+0xc47>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211b6 <kfun:#main(){}+0xc56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260363(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	265073(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211e8 <kfun:#main(){}+0xc88>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421209 <kfun:#main(){}+0xca9>
               	testl	%ebx, %ebx
               	je	0x421211 <kfun:#main(){}+0xcb1>
               	movq	$0, 260257(%rip)        # 0x460aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 260299(%rip)        # 0x460ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	260272(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	264977(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421248 <kfun:#main(){}+0xce8>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421269 <kfun:#main(){}+0xd09>
               	testl	%ebx, %ebx
               	je	0x421271 <kfun:#main(){}+0xd11>
               	movq	$0, 260169(%rip)        # 0x460aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 260207(%rip)        # 0x460ad8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	260176(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264882(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212a7 <kfun:#main(){}+0xd47>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212b6 <kfun:#main(){}+0xd56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260107(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264818(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212e7 <kfun:#main(){}+0xd87>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212f6 <kfun:#main(){}+0xd96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260043(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264754(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421327 <kfun:#main(){}+0xdc7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421336 <kfun:#main(){}+0xdd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259979(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264690(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421367 <kfun:#main(){}+0xe07>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421376 <kfun:#main(){}+0xe16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259915(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264626(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213a7 <kfun:#main(){}+0xe47>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213b6 <kfun:#main(){}+0xe56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259851(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	264561(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213e8 <kfun:#main(){}+0xe88>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421409 <kfun:#main(){}+0xea9>
               	testl	%ebx, %ebx
               	je	0x421411 <kfun:#main(){}+0xeb1>
               	movq	$0, 259761(%rip)        # 0x460ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 259795(%rip)        # 0x460adc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	259760(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264466(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421447 <kfun:#main(){}+0xee7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421456 <kfun:#main(){}+0xef6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259691(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264402(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421487 <kfun:#main(){}+0xf27>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421496 <kfun:#main(){}+0xf36>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259627(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	264337(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214c8 <kfun:#main(){}+0xf68>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4214e9 <kfun:#main(){}+0xf89>
               	testl	%ebx, %ebx
               	je	0x4214f1 <kfun:#main(){}+0xf91>
               	movq	$0, 259545(%rip)        # 0x460ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 259575(%rip)        # 0x460ae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	259536(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264242(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421527 <kfun:#main(){}+0xfc7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421536 <kfun:#main(){}+0xfd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259467(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264178(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421567 <kfun:#main(){}+0x1007>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421576 <kfun:#main(){}+0x1016>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259403(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264114(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215a7 <kfun:#main(){}+0x1047>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215b6 <kfun:#main(){}+0x1056>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259339(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264050(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215e7 <kfun:#main(){}+0x1087>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215f6 <kfun:#main(){}+0x1096>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259275(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263986(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421627 <kfun:#main(){}+0x10c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421636 <kfun:#main(){}+0x10d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259211(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263922(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421667 <kfun:#main(){}+0x1107>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421676 <kfun:#main(){}+0x1116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259147(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263858(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216a7 <kfun:#main(){}+0x1147>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216b6 <kfun:#main(){}+0x1156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259083(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263794(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216e7 <kfun:#main(){}+0x1187>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216f6 <kfun:#main(){}+0x1196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259019(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263730(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421727 <kfun:#main(){}+0x11c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421736 <kfun:#main(){}+0x11d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258955(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263666(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421767 <kfun:#main(){}+0x1207>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421776 <kfun:#main(){}+0x1216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258891(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263602(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217a7 <kfun:#main(){}+0x1247>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217b6 <kfun:#main(){}+0x1256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258827(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263538(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217e7 <kfun:#main(){}+0x1287>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217f6 <kfun:#main(){}+0x1296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258763(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263474(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421827 <kfun:#main(){}+0x12c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421836 <kfun:#main(){}+0x12d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258699(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263410(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421867 <kfun:#main(){}+0x1307>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421876 <kfun:#main(){}+0x1316>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258635(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	263345(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218a8 <kfun:#main(){}+0x1348>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4218bf <kfun:#main(){}+0x135f>
               	testl	%ebx, %ebx
               	je	0x4218c7 <kfun:#main(){}+0x1367>
               	movq	$0, 252481(%rip)        # 0x45f300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258554(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263250(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421907 <kfun:#main(){}+0x13a7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421916 <kfun:#main(){}+0x13b6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258475(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	263185(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421948 <kfun:#main(){}+0x13e8>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42195f <kfun:#main(){}+0x13ff>
               	testl	%ebx, %ebx
               	je	0x421967 <kfun:#main(){}+0x1407>
               	movq	$0, 252329(%rip)        # 0x45f308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258394(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263090(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219a7 <kfun:#main(){}+0x1447>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219b6 <kfun:#main(){}+0x1456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258315(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263026(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219e7 <kfun:#main(){}+0x1487>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219f6 <kfun:#main(){}+0x1496>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258251(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262961(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a28 <kfun:#main(){}+0x14c8>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a3f <kfun:#main(){}+0x14df>
               	testl	%ebx, %ebx
               	je	0x421a47 <kfun:#main(){}+0x14e7>
               	movq	$0, 252113(%rip)        # 0x45f310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258170(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262866(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a87 <kfun:#main(){}+0x1527>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a96 <kfun:#main(){}+0x1536>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258091(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262802(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ac7 <kfun:#main(){}+0x1567>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ad6 <kfun:#main(){}+0x1576>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258027(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262737(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b08 <kfun:#main(){}+0x15a8>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421b29 <kfun:#main(){}+0x15c9>
               	testl	%ebx, %ebx
               	je	0x421b31 <kfun:#main(){}+0x15d1>
               	movq	$0, 257953(%rip)        # 0x460ac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 257979(%rip)        # 0x460ae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257936(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424210 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262642(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b67 <kfun:#main(){}+0x1607>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b76 <kfun:#main(){}+0x1616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257867(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262578(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ba7 <kfun:#main(){}+0x1647>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bb6 <kfun:#main(){}+0x1656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257803(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262514(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421be7 <kfun:#main(){}+0x1687>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bf6 <kfun:#main(){}+0x1696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257739(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262450(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c27 <kfun:#main(){}+0x16c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c36 <kfun:#main(){}+0x16d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257675(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262386(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c67 <kfun:#main(){}+0x1707>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c76 <kfun:#main(){}+0x1716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257611(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262322(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ca7 <kfun:#main(){}+0x1747>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cb6 <kfun:#main(){}+0x1756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257547(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262258(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ce7 <kfun:#main(){}+0x1787>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cf6 <kfun:#main(){}+0x1796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257483(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262194(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d27 <kfun:#main(){}+0x17c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d36 <kfun:#main(){}+0x17d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257419(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262130(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d67 <kfun:#main(){}+0x1807>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d76 <kfun:#main(){}+0x1816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257355(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262066(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421da7 <kfun:#main(){}+0x1847>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421db6 <kfun:#main(){}+0x1856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257291(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262002(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421de7 <kfun:#main(){}+0x1887>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421df6 <kfun:#main(){}+0x1896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257227(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261938(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e27 <kfun:#main(){}+0x18c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e36 <kfun:#main(){}+0x18d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257163(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261874(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e67 <kfun:#main(){}+0x1907>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e76 <kfun:#main(){}+0x1916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257099(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261810(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ea7 <kfun:#main(){}+0x1947>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421eb6 <kfun:#main(){}+0x1956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257035(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261746(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ee7 <kfun:#main(){}+0x1987>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ef6 <kfun:#main(){}+0x1996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256971(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261682(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f27 <kfun:#main(){}+0x19c7>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f36 <kfun:#main(){}+0x19d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256907(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261618(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f67 <kfun:#main(){}+0x1a07>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f76 <kfun:#main(){}+0x1a16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256843(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261554(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fa7 <kfun:#main(){}+0x1a47>
               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fb6 <kfun:#main(){}+0x1a56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256779(%rip), %rsi      # 0x460ac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424210 <AddTLSRecord>

