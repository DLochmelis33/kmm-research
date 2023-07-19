<kfun:#main(){}>:
               	pushq	%rbp
               	pushq	%rbx
               	subq	$56, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	leaq	234214(%rip), %rax      # 0x4598d0 <ktypeglobal:FibonacciBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 8(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$17179869184, %rax      # imm = 0x400000000
               	movq	%rax, 32(%rsp)
               	movb	265829(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x42063c <kfun:#main(){}+0x6c>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leaq	8(%rsp), %rax
               	movq	%rax, 40(%rsp)
               	movl	$4294957296, %ebp       # imm = 0xFFFFD8F0
               	jmp	0x420654 <kfun:#main(){}+0x84>
               	incl	%ebp
               	je	0x420666 <kfun:#main(){}+0x96>
               	movzbl	265789(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420650 <kfun:#main(){}+0x80>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420650 <kfun:#main(){}+0x80>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	addq	$56, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265738(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420697 <kfun:#main(){}+0xc7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206a6 <kfun:#main(){}+0xd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260955(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265674(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206d7 <kfun:#main(){}+0x107>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206e6 <kfun:#main(){}+0x116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260891(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265610(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420717 <kfun:#main(){}+0x147>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420726 <kfun:#main(){}+0x156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260827(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265546(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420757 <kfun:#main(){}+0x187>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420766 <kfun:#main(){}+0x196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260763(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265482(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420797 <kfun:#main(){}+0x1c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207a6 <kfun:#main(){}+0x1d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260699(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265418(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207d7 <kfun:#main(){}+0x207>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207e6 <kfun:#main(){}+0x216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260635(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265354(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420817 <kfun:#main(){}+0x247>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420826 <kfun:#main(){}+0x256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260571(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265290(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420857 <kfun:#main(){}+0x287>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420866 <kfun:#main(){}+0x296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260507(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265226(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420897 <kfun:#main(){}+0x2c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208a6 <kfun:#main(){}+0x2d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260443(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265162(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208d7 <kfun:#main(){}+0x307>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208e6 <kfun:#main(){}+0x316>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260379(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265098(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420917 <kfun:#main(){}+0x347>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420926 <kfun:#main(){}+0x356>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260315(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265034(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420957 <kfun:#main(){}+0x387>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420966 <kfun:#main(){}+0x396>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260251(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264970(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420997 <kfun:#main(){}+0x3c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209a6 <kfun:#main(){}+0x3d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260187(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264906(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209d7 <kfun:#main(){}+0x407>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209e6 <kfun:#main(){}+0x416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260123(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264842(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a17 <kfun:#main(){}+0x447>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a26 <kfun:#main(){}+0x456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	260059(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264778(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a57 <kfun:#main(){}+0x487>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a66 <kfun:#main(){}+0x496>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259995(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264714(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a97 <kfun:#main(){}+0x4c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420aa6 <kfun:#main(){}+0x4d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259931(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264650(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ad7 <kfun:#main(){}+0x507>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ae6 <kfun:#main(){}+0x516>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259867(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264586(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b17 <kfun:#main(){}+0x547>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b26 <kfun:#main(){}+0x556>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259803(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264522(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b57 <kfun:#main(){}+0x587>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b66 <kfun:#main(){}+0x596>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259739(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264458(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b97 <kfun:#main(){}+0x5c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ba6 <kfun:#main(){}+0x5d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259675(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264394(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bd7 <kfun:#main(){}+0x607>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420be6 <kfun:#main(){}+0x616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259611(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264330(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c17 <kfun:#main(){}+0x647>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c26 <kfun:#main(){}+0x656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259547(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264266(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c57 <kfun:#main(){}+0x687>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c66 <kfun:#main(){}+0x696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259483(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264202(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c97 <kfun:#main(){}+0x6c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ca6 <kfun:#main(){}+0x6d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259419(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264138(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cd7 <kfun:#main(){}+0x707>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ce6 <kfun:#main(){}+0x716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259355(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264074(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d17 <kfun:#main(){}+0x747>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d26 <kfun:#main(){}+0x756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259291(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264010(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d57 <kfun:#main(){}+0x787>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d66 <kfun:#main(){}+0x796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259227(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263946(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d97 <kfun:#main(){}+0x7c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420da6 <kfun:#main(){}+0x7d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259163(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263882(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dd7 <kfun:#main(){}+0x807>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420de6 <kfun:#main(){}+0x816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259099(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263818(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e17 <kfun:#main(){}+0x847>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e26 <kfun:#main(){}+0x856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	259035(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263754(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e57 <kfun:#main(){}+0x887>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e66 <kfun:#main(){}+0x896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258971(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263690(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e97 <kfun:#main(){}+0x8c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ea6 <kfun:#main(){}+0x8d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258907(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263626(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ed7 <kfun:#main(){}+0x907>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ee6 <kfun:#main(){}+0x916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258843(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263562(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f17 <kfun:#main(){}+0x947>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f26 <kfun:#main(){}+0x956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258779(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263498(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f57 <kfun:#main(){}+0x987>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f66 <kfun:#main(){}+0x996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258715(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263434(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f97 <kfun:#main(){}+0x9c7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fa6 <kfun:#main(){}+0x9d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258651(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263370(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fd7 <kfun:#main(){}+0xa07>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fe6 <kfun:#main(){}+0xa16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258587(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263306(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421017 <kfun:#main(){}+0xa47>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421026 <kfun:#main(){}+0xa56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258523(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263242(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421057 <kfun:#main(){}+0xa87>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421066 <kfun:#main(){}+0xa96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258459(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	263177(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421098 <kfun:#main(){}+0xac8>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4210c4 <kfun:#main(){}+0xaf4>
               	testl	%ebx, %ebx
               	je	0x4210cc <kfun:#main(){}+0xafc>
               	movq	$0, 258337(%rip)        # 0x4601d0 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 258334(%rip)        # 0x4601d8 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 258380(%rip)        # 0x460210 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258357(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263066(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421107 <kfun:#main(){}+0xb37>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263002(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421147 <kfun:#main(){}+0xb77>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421156 <kfun:#main(){}+0xb86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258219(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262938(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421187 <kfun:#main(){}+0xbb7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421196 <kfun:#main(){}+0xbc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258155(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262874(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211c7 <kfun:#main(){}+0xbf7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211d6 <kfun:#main(){}+0xc06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258091(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262809(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421208 <kfun:#main(){}+0xc38>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421229 <kfun:#main(){}+0xc59>
               	testl	%ebx, %ebx
               	je	0x421231 <kfun:#main(){}+0xc61>
               	movq	$0, 257985(%rip)        # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 258027(%rip)        # 0x460214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258000(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262713(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421268 <kfun:#main(){}+0xc98>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421289 <kfun:#main(){}+0xcb9>
               	testl	%ebx, %ebx
               	je	0x421291 <kfun:#main(){}+0xcc1>
               	movq	$0, 257897(%rip)        # 0x4601e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 257935(%rip)        # 0x460218 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257904(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262618(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212c7 <kfun:#main(){}+0xcf7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4212d6 <kfun:#main(){}+0xd06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257835(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262554(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421307 <kfun:#main(){}+0xd37>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421316 <kfun:#main(){}+0xd46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257771(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262490(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421347 <kfun:#main(){}+0xd77>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421356 <kfun:#main(){}+0xd86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257707(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262426(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421387 <kfun:#main(){}+0xdb7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421396 <kfun:#main(){}+0xdc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257643(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262362(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213c7 <kfun:#main(){}+0xdf7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4213d6 <kfun:#main(){}+0xe06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257579(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262297(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421408 <kfun:#main(){}+0xe38>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421429 <kfun:#main(){}+0xe59>
               	testl	%ebx, %ebx
               	je	0x421431 <kfun:#main(){}+0xe61>
               	movq	$0, 257489(%rip)        # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 257523(%rip)        # 0x46021c <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257488(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262202(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421467 <kfun:#main(){}+0xe97>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421476 <kfun:#main(){}+0xea6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257419(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262138(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214a7 <kfun:#main(){}+0xed7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214b6 <kfun:#main(){}+0xee6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257355(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262073(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214e8 <kfun:#main(){}+0xf18>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421509 <kfun:#main(){}+0xf39>
               	testl	%ebx, %ebx
               	je	0x421511 <kfun:#main(){}+0xf41>
               	movq	$0, 257273(%rip)        # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 257303(%rip)        # 0x460220 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257264(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261978(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421547 <kfun:#main(){}+0xf77>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421556 <kfun:#main(){}+0xf86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257195(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261914(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421587 <kfun:#main(){}+0xfb7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421596 <kfun:#main(){}+0xfc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257131(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261850(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215c7 <kfun:#main(){}+0xff7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215d6 <kfun:#main(){}+0x1006>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257067(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261786(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421607 <kfun:#main(){}+0x1037>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421616 <kfun:#main(){}+0x1046>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257003(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261722(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421647 <kfun:#main(){}+0x1077>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421656 <kfun:#main(){}+0x1086>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256939(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261658(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421687 <kfun:#main(){}+0x10b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421696 <kfun:#main(){}+0x10c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256875(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261594(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216c7 <kfun:#main(){}+0x10f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216d6 <kfun:#main(){}+0x1106>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256811(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261530(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421707 <kfun:#main(){}+0x1137>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421716 <kfun:#main(){}+0x1146>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256747(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261466(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421747 <kfun:#main(){}+0x1177>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421756 <kfun:#main(){}+0x1186>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256683(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261402(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421787 <kfun:#main(){}+0x11b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421796 <kfun:#main(){}+0x11c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256619(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261338(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217c7 <kfun:#main(){}+0x11f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217d6 <kfun:#main(){}+0x1206>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256555(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261274(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421807 <kfun:#main(){}+0x1237>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421816 <kfun:#main(){}+0x1246>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256491(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261210(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421847 <kfun:#main(){}+0x1277>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421856 <kfun:#main(){}+0x1286>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256427(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261146(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421887 <kfun:#main(){}+0x12b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421896 <kfun:#main(){}+0x12c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256363(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	261081(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218c8 <kfun:#main(){}+0x12f8>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4218df <kfun:#main(){}+0x130f>
               	testl	%ebx, %ebx
               	je	0x4218e7 <kfun:#main(){}+0x1317>
               	movq	$0, 248353(%rip)        # 0x45e300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256282(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260986(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421927 <kfun:#main(){}+0x1357>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421936 <kfun:#main(){}+0x1366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256203(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260921(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421968 <kfun:#main(){}+0x1398>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42197f <kfun:#main(){}+0x13af>
               	testl	%ebx, %ebx
               	je	0x421987 <kfun:#main(){}+0x13b7>
               	movq	$0, 248201(%rip)        # 0x45e308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256122(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260826(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219c7 <kfun:#main(){}+0x13f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219d6 <kfun:#main(){}+0x1406>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256043(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260762(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a07 <kfun:#main(){}+0x1437>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a16 <kfun:#main(){}+0x1446>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255979(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260697(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a48 <kfun:#main(){}+0x1478>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a5f <kfun:#main(){}+0x148f>
               	testl	%ebx, %ebx
               	je	0x421a67 <kfun:#main(){}+0x1497>
               	movq	$0, 247985(%rip)        # 0x45e310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255898(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260602(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421aa7 <kfun:#main(){}+0x14d7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ab6 <kfun:#main(){}+0x14e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255819(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260538(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ae7 <kfun:#main(){}+0x1517>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421af6 <kfun:#main(){}+0x1526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255755(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260473(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b28 <kfun:#main(){}+0x1558>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421b49 <kfun:#main(){}+0x1579>
               	testl	%ebx, %ebx
               	je	0x421b51 <kfun:#main(){}+0x1581>
               	movq	$0, 255681(%rip)        # 0x460200 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 255707(%rip)        # 0x460224 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255664(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4246a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260378(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b87 <kfun:#main(){}+0x15b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b96 <kfun:#main(){}+0x15c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255595(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260314(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bc7 <kfun:#main(){}+0x15f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bd6 <kfun:#main(){}+0x1606>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255531(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260250(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c07 <kfun:#main(){}+0x1637>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c16 <kfun:#main(){}+0x1646>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255467(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260186(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c47 <kfun:#main(){}+0x1677>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c56 <kfun:#main(){}+0x1686>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255403(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260122(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c87 <kfun:#main(){}+0x16b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c96 <kfun:#main(){}+0x16c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255339(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260058(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cc7 <kfun:#main(){}+0x16f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cd6 <kfun:#main(){}+0x1706>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255275(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259994(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d07 <kfun:#main(){}+0x1737>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d16 <kfun:#main(){}+0x1746>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255211(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259930(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d47 <kfun:#main(){}+0x1777>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d56 <kfun:#main(){}+0x1786>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255147(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259866(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d87 <kfun:#main(){}+0x17b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d96 <kfun:#main(){}+0x17c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255083(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259802(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dc7 <kfun:#main(){}+0x17f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421dd6 <kfun:#main(){}+0x1806>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255019(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259738(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e07 <kfun:#main(){}+0x1837>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e16 <kfun:#main(){}+0x1846>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254955(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259674(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e47 <kfun:#main(){}+0x1877>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e56 <kfun:#main(){}+0x1886>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254891(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259610(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e87 <kfun:#main(){}+0x18b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e96 <kfun:#main(){}+0x18c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254827(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259546(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ec7 <kfun:#main(){}+0x18f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ed6 <kfun:#main(){}+0x1906>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254763(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259482(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f07 <kfun:#main(){}+0x1937>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f16 <kfun:#main(){}+0x1946>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254699(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259418(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f47 <kfun:#main(){}+0x1977>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f56 <kfun:#main(){}+0x1986>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254635(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259354(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f87 <kfun:#main(){}+0x19b7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421f96 <kfun:#main(){}+0x19c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254571(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259290(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fc7 <kfun:#main(){}+0x19f7>
               	callq	0x424450 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421fd6 <kfun:#main(){}+0x1a06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254507(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4246a0 <AddTLSRecord>

