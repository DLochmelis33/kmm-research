<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%rbx
               	subq	$56, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	$0, 8(%rsp)
               	leaq	228765(%rip), %rax      # 0x458190 <ktypeglobal:InlineBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, (%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 32(%rsp)
               	movb	260373(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420444 <kfun:#main(){}+0x74>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movq	%rsp, %rax
               	movq	%rax, 40(%rsp)
               	movl	$2138476523, 8(%rsp)    # imm = 0x7F768FEB
               	movl	$10001, %ebp            # imm = 0x2711
               	jmp	0x420465 <kfun:#main(){}+0x95>
               	nop
               	addl	$-1, %ebp
               	je	0x420477 <kfun:#main(){}+0xa7>
               	movzbl	260324(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420460 <kfun:#main(){}+0x90>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420460 <kfun:#main(){}+0x90>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	addq	$56, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260274(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4204a7 <kfun:#main(){}+0xd7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4204b6 <kfun:#main(){}+0xe6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255499(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260210(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4204e7 <kfun:#main(){}+0x117>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4204f6 <kfun:#main(){}+0x126>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255435(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260146(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420527 <kfun:#main(){}+0x157>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420536 <kfun:#main(){}+0x166>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255371(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260082(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420567 <kfun:#main(){}+0x197>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420576 <kfun:#main(){}+0x1a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255307(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260018(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4205a7 <kfun:#main(){}+0x1d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205b6 <kfun:#main(){}+0x1e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255243(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259954(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4205e7 <kfun:#main(){}+0x217>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205f6 <kfun:#main(){}+0x226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255179(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259890(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420627 <kfun:#main(){}+0x257>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420636 <kfun:#main(){}+0x266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255115(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259826(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420667 <kfun:#main(){}+0x297>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420676 <kfun:#main(){}+0x2a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255051(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259762(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206a7 <kfun:#main(){}+0x2d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206b6 <kfun:#main(){}+0x2e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254987(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259698(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206e7 <kfun:#main(){}+0x317>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206f6 <kfun:#main(){}+0x326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254923(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259634(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420727 <kfun:#main(){}+0x357>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420736 <kfun:#main(){}+0x366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254859(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259570(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420767 <kfun:#main(){}+0x397>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420776 <kfun:#main(){}+0x3a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254795(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259506(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207a7 <kfun:#main(){}+0x3d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207b6 <kfun:#main(){}+0x3e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254731(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259442(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207e7 <kfun:#main(){}+0x417>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207f6 <kfun:#main(){}+0x426>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254667(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259378(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420827 <kfun:#main(){}+0x457>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420836 <kfun:#main(){}+0x466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254603(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259314(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420867 <kfun:#main(){}+0x497>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420876 <kfun:#main(){}+0x4a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254539(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259250(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208a7 <kfun:#main(){}+0x4d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208b6 <kfun:#main(){}+0x4e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254475(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259186(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208e7 <kfun:#main(){}+0x517>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208f6 <kfun:#main(){}+0x526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254411(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259122(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420927 <kfun:#main(){}+0x557>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420936 <kfun:#main(){}+0x566>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254347(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259058(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420967 <kfun:#main(){}+0x597>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420976 <kfun:#main(){}+0x5a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254283(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258994(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209a7 <kfun:#main(){}+0x5d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209b6 <kfun:#main(){}+0x5e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254219(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258930(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209e7 <kfun:#main(){}+0x617>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209f6 <kfun:#main(){}+0x626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254155(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258866(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a27 <kfun:#main(){}+0x657>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a36 <kfun:#main(){}+0x666>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254091(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258802(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a67 <kfun:#main(){}+0x697>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a76 <kfun:#main(){}+0x6a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254027(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258738(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420aa7 <kfun:#main(){}+0x6d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ab6 <kfun:#main(){}+0x6e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253963(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258674(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ae7 <kfun:#main(){}+0x717>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420af6 <kfun:#main(){}+0x726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253899(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258610(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b27 <kfun:#main(){}+0x757>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b36 <kfun:#main(){}+0x766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253835(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258546(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b67 <kfun:#main(){}+0x797>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b76 <kfun:#main(){}+0x7a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253771(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258482(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ba7 <kfun:#main(){}+0x7d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bb6 <kfun:#main(){}+0x7e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253707(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258418(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420be7 <kfun:#main(){}+0x817>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420bf6 <kfun:#main(){}+0x826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253643(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258354(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c27 <kfun:#main(){}+0x857>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c36 <kfun:#main(){}+0x866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253579(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258290(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c67 <kfun:#main(){}+0x897>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c76 <kfun:#main(){}+0x8a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253515(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258226(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ca7 <kfun:#main(){}+0x8d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cb6 <kfun:#main(){}+0x8e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253451(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258162(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ce7 <kfun:#main(){}+0x917>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420cf6 <kfun:#main(){}+0x926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253387(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258098(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d27 <kfun:#main(){}+0x957>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d36 <kfun:#main(){}+0x966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253323(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258034(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d67 <kfun:#main(){}+0x997>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d76 <kfun:#main(){}+0x9a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253259(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257970(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420da7 <kfun:#main(){}+0x9d7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420db6 <kfun:#main(){}+0x9e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253195(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257906(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420de7 <kfun:#main(){}+0xa17>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420df6 <kfun:#main(){}+0xa26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253131(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257842(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e27 <kfun:#main(){}+0xa57>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e36 <kfun:#main(){}+0xa66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253067(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257778(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e67 <kfun:#main(){}+0xa97>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e76 <kfun:#main(){}+0xaa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253003(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257713(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ea8 <kfun:#main(){}+0xad8>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x420ed4 <kfun:#main(){}+0xb04>
               	testl	%ebx, %ebx
               	je	0x420edc <kfun:#main(){}+0xb0c>
               	movq	$0, 252881(%rip)        # 0x45ea90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 252878(%rip)        # 0x45ea98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 252924(%rip)        # 0x45ead0 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252901(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257602(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f17 <kfun:#main(){}+0xb47>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f26 <kfun:#main(){}+0xb56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252827(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257538(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f57 <kfun:#main(){}+0xb87>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f66 <kfun:#main(){}+0xb96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252763(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257474(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f97 <kfun:#main(){}+0xbc7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fa6 <kfun:#main(){}+0xbd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252699(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257410(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fd7 <kfun:#main(){}+0xc07>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fe6 <kfun:#main(){}+0xc16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252635(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257345(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421018 <kfun:#main(){}+0xc48>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421039 <kfun:#main(){}+0xc69>
               	testl	%ebx, %ebx
               	je	0x421041 <kfun:#main(){}+0xc71>
               	movq	$0, 252529(%rip)        # 0x45eaa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 252571(%rip)        # 0x45ead4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252544(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257249(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421078 <kfun:#main(){}+0xca8>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421099 <kfun:#main(){}+0xcc9>
               	testl	%ebx, %ebx
               	je	0x4210a1 <kfun:#main(){}+0xcd1>
               	movq	$0, 252441(%rip)        # 0x45eaa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 252479(%rip)        # 0x45ead8 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252448(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257154(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210d7 <kfun:#main(){}+0xd07>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210e6 <kfun:#main(){}+0xd16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252379(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257090(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421117 <kfun:#main(){}+0xd47>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421126 <kfun:#main(){}+0xd56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252315(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257026(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421157 <kfun:#main(){}+0xd87>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421166 <kfun:#main(){}+0xd96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252251(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256962(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421197 <kfun:#main(){}+0xdc7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211a6 <kfun:#main(){}+0xdd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252187(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256898(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211d7 <kfun:#main(){}+0xe07>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211e6 <kfun:#main(){}+0xe16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252123(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	256833(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421218 <kfun:#main(){}+0xe48>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421239 <kfun:#main(){}+0xe69>
               	testl	%ebx, %ebx
               	je	0x421241 <kfun:#main(){}+0xe71>
               	movq	$0, 252033(%rip)        # 0x45eab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 252067(%rip)        # 0x45eadc <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252032(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256738(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421277 <kfun:#main(){}+0xea7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256674(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212b7 <kfun:#main(){}+0xee7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	256609(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212f8 <kfun:#main(){}+0xf28>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421319 <kfun:#main(){}+0xf49>
               	testl	%ebx, %ebx
               	je	0x421321 <kfun:#main(){}+0xf51>
               	movq	$0, 251817(%rip)        # 0x45eab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 251847(%rip)        # 0x45eae0 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
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
               	jmp	0x424040 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256514(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421357 <kfun:#main(){}+0xf87>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256450(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421397 <kfun:#main(){}+0xfc7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256386(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213d7 <kfun:#main(){}+0x1007>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213e6 <kfun:#main(){}+0x1016>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251611(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256322(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421417 <kfun:#main(){}+0x1047>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421426 <kfun:#main(){}+0x1056>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251547(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256258(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421457 <kfun:#main(){}+0x1087>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421466 <kfun:#main(){}+0x1096>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251483(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256194(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421497 <kfun:#main(){}+0x10c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214a6 <kfun:#main(){}+0x10d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251419(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256130(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214d7 <kfun:#main(){}+0x1107>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214e6 <kfun:#main(){}+0x1116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251355(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256066(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421517 <kfun:#main(){}+0x1147>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421526 <kfun:#main(){}+0x1156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251291(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256002(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421557 <kfun:#main(){}+0x1187>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421566 <kfun:#main(){}+0x1196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251227(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255938(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421597 <kfun:#main(){}+0x11c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215a6 <kfun:#main(){}+0x11d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251163(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255874(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215d7 <kfun:#main(){}+0x1207>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215e6 <kfun:#main(){}+0x1216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251099(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255810(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421617 <kfun:#main(){}+0x1247>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421626 <kfun:#main(){}+0x1256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251035(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255746(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421657 <kfun:#main(){}+0x1287>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421666 <kfun:#main(){}+0x1296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250971(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255682(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421697 <kfun:#main(){}+0x12c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216a6 <kfun:#main(){}+0x12d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250907(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255617(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216d8 <kfun:#main(){}+0x1308>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4216ef <kfun:#main(){}+0x131f>
               	testl	%ebx, %ebx
               	je	0x4216f7 <kfun:#main(){}+0x1327>
               	movq	$0, 244753(%rip)        # 0x45d300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250826(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255522(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421737 <kfun:#main(){}+0x1367>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255457(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421778 <kfun:#main(){}+0x13a8>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42178f <kfun:#main(){}+0x13bf>
               	testl	%ebx, %ebx
               	je	0x421797 <kfun:#main(){}+0x13c7>
               	movq	$0, 244601(%rip)        # 0x45d308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250666(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255362(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217d7 <kfun:#main(){}+0x1407>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217e6 <kfun:#main(){}+0x1416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250587(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255298(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421817 <kfun:#main(){}+0x1447>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255233(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421858 <kfun:#main(){}+0x1488>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42186f <kfun:#main(){}+0x149f>
               	testl	%ebx, %ebx
               	je	0x421877 <kfun:#main(){}+0x14a7>
               	movq	$0, 244385(%rip)        # 0x45d310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
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
               	jmp	0x424040 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255138(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218b7 <kfun:#main(){}+0x14e7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255074(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218f7 <kfun:#main(){}+0x1527>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255009(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421938 <kfun:#main(){}+0x1568>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421959 <kfun:#main(){}+0x1589>
               	testl	%ebx, %ebx
               	je	0x421961 <kfun:#main(){}+0x1591>
               	movq	$0, 250225(%rip)        # 0x45eac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 250251(%rip)        # 0x45eae4 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250208(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424040 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254914(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421997 <kfun:#main(){}+0x15c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254850(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219d7 <kfun:#main(){}+0x1607>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254786(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a17 <kfun:#main(){}+0x1647>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a26 <kfun:#main(){}+0x1656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250011(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254722(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a57 <kfun:#main(){}+0x1687>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a66 <kfun:#main(){}+0x1696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249947(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254658(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a97 <kfun:#main(){}+0x16c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421aa6 <kfun:#main(){}+0x16d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249883(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254594(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ad7 <kfun:#main(){}+0x1707>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ae6 <kfun:#main(){}+0x1716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249819(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254530(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b17 <kfun:#main(){}+0x1747>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b26 <kfun:#main(){}+0x1756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249755(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254466(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b57 <kfun:#main(){}+0x1787>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b66 <kfun:#main(){}+0x1796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249691(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254402(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b97 <kfun:#main(){}+0x17c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ba6 <kfun:#main(){}+0x17d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249627(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254338(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bd7 <kfun:#main(){}+0x1807>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421be6 <kfun:#main(){}+0x1816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249563(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254274(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c17 <kfun:#main(){}+0x1847>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c26 <kfun:#main(){}+0x1856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249499(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254210(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c57 <kfun:#main(){}+0x1887>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c66 <kfun:#main(){}+0x1896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249435(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254146(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c97 <kfun:#main(){}+0x18c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ca6 <kfun:#main(){}+0x18d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249371(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254082(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cd7 <kfun:#main(){}+0x1907>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ce6 <kfun:#main(){}+0x1916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249307(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254018(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d17 <kfun:#main(){}+0x1947>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d26 <kfun:#main(){}+0x1956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249243(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253954(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d57 <kfun:#main(){}+0x1987>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d66 <kfun:#main(){}+0x1996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249179(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253890(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d97 <kfun:#main(){}+0x19c7>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421da6 <kfun:#main(){}+0x19d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249115(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253826(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dd7 <kfun:#main(){}+0x1a07>
               	callq	0x423e30 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421de6 <kfun:#main(){}+0x1a16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249051(%rip), %rsi      # 0x45eac8 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424040 <AddTLSRecord>

