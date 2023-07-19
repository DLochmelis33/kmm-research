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
               	leaq	234152(%rip), %rax      # 0x4598a0 <ktypeglobal:ForLoopsBenchmark#internal>
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
               	movb	265816(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420649 <kfun:#main(){}+0x79>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	callq	0x427c80 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
               	movq	%rax, %r12
               	leaq	16(%rax), %r15
               	xorps	%xmm0, %xmm0
               	movups	%xmm0, 8(%rax)
               	movq	$0, 24(%rax)
               	leaq	222080(%rip), %rax      # 0x456a40 <ktypeglobal:kotlin.LongArray#internal>
               	movq	%rax, 16(%r12)
               	movl	$10000, 24(%r12)        # imm = 0x2710
               	movq	%r15, 72(%rsp)
               	xorl	%ebx, %ebx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	je	0x420711 <kfun:#main(){}+0x141>
               	nop
               	movzbl	265649(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206f0 <kfun:#main(){}+0x120>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	24(%r12), %eax
               	cmpq	%rax, %rbx
               	jae	0x420771 <kfun:#main(){}+0x1a1>
               	movq	16(%r12), %rax
               	movq	%rbx, 32(%r12,%rbx,8)
               	addq	$1, %rbx
               	cmpq	$10000, %rbx            # imm = 0x2710
               	jne	0x4206e0 <kfun:#main(){}+0x110>
               	movq	%r15, 8(%rsp)
               	movq	56(%rsp), %rax
               	movq	%rax, 288(%r14)
               	movq	8(%rsp), %rax
               	movl	8(%rax), %eax
               	xorl	%ebx, %ebx
               	testl	%eax, %eax
               	cmovnsl	%eax, %ebx
               	jmp	0x420743 <kfun:#main(){}+0x173>
               	nopw	%cs:(%rax,%rax)
               	addl	$-1, %ebx
               	testl	%ebx, %ebx
               	je	0x420759 <kfun:#main(){}+0x189>
               	movzbl	265546(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420740 <kfun:#main(){}+0x170>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	jmp	0x420740 <kfun:#main(){}+0x170>
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%r14)
               	addq	$88, %rsp
               	popq	%rbx
               	popq	%r12
               	popq	%r14
               	popq	%r15
               	retq
               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265482(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420797 <kfun:#main(){}+0x1c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265418(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207d7 <kfun:#main(){}+0x207>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265354(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420817 <kfun:#main(){}+0x247>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265290(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420857 <kfun:#main(){}+0x287>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265226(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420897 <kfun:#main(){}+0x2c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265162(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208d7 <kfun:#main(){}+0x307>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265098(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420917 <kfun:#main(){}+0x347>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	265034(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420957 <kfun:#main(){}+0x387>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264970(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420997 <kfun:#main(){}+0x3c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264906(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209d7 <kfun:#main(){}+0x407>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264842(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a17 <kfun:#main(){}+0x447>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264778(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a57 <kfun:#main(){}+0x487>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264714(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a97 <kfun:#main(){}+0x4c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264650(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ad7 <kfun:#main(){}+0x507>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264586(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b17 <kfun:#main(){}+0x547>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264522(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b57 <kfun:#main(){}+0x587>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264458(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b97 <kfun:#main(){}+0x5c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264394(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bd7 <kfun:#main(){}+0x607>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264330(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c17 <kfun:#main(){}+0x647>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264266(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c57 <kfun:#main(){}+0x687>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264202(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c97 <kfun:#main(){}+0x6c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264138(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cd7 <kfun:#main(){}+0x707>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264074(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d17 <kfun:#main(){}+0x747>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	264010(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d57 <kfun:#main(){}+0x787>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263946(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d97 <kfun:#main(){}+0x7c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263882(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dd7 <kfun:#main(){}+0x807>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263818(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e17 <kfun:#main(){}+0x847>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263754(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e57 <kfun:#main(){}+0x887>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263690(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e97 <kfun:#main(){}+0x8c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263626(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ed7 <kfun:#main(){}+0x907>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263562(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f17 <kfun:#main(){}+0x947>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263498(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f57 <kfun:#main(){}+0x987>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263434(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f97 <kfun:#main(){}+0x9c7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263370(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fd7 <kfun:#main(){}+0xa07>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263306(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421017 <kfun:#main(){}+0xa47>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263242(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421057 <kfun:#main(){}+0xa87>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263178(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421097 <kfun:#main(){}+0xac7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210a6 <kfun:#main(){}+0xad6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258395(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263114(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210d7 <kfun:#main(){}+0xb07>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4210e6 <kfun:#main(){}+0xb16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258331(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	263050(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421117 <kfun:#main(){}+0xb47>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421126 <kfun:#main(){}+0xb56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258267(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262986(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421157 <kfun:#main(){}+0xb87>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421166 <kfun:#main(){}+0xb96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258203(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262921(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421198 <kfun:#main(){}+0xbc8>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4211c4 <kfun:#main(){}+0xbf4>
               	testl	%ebx, %ebx
               	je	0x4211cc <kfun:#main(){}+0xbfc>
               	movq	$0, 258081(%rip)        # 0x4601d0 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 258078(%rip)        # 0x4601d8 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 258124(%rip)        # 0x460210 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	258101(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262810(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421207 <kfun:#main(){}+0xc37>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421216 <kfun:#main(){}+0xc46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	258027(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262746(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421247 <kfun:#main(){}+0xc77>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421256 <kfun:#main(){}+0xc86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257963(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262682(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421287 <kfun:#main(){}+0xcb7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421296 <kfun:#main(){}+0xcc6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257899(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262618(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212c7 <kfun:#main(){}+0xcf7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262553(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421308 <kfun:#main(){}+0xd38>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421329 <kfun:#main(){}+0xd59>
               	testl	%ebx, %ebx
               	je	0x421331 <kfun:#main(){}+0xd61>
               	movq	$0, 257729(%rip)        # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 257771(%rip)        # 0x460214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257744(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262457(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421368 <kfun:#main(){}+0xd98>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421389 <kfun:#main(){}+0xdb9>
               	testl	%ebx, %ebx
               	je	0x421391 <kfun:#main(){}+0xdc1>
               	movq	$0, 257641(%rip)        # 0x4601e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 257679(%rip)        # 0x460218 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257648(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262362(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213c7 <kfun:#main(){}+0xdf7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262298(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421407 <kfun:#main(){}+0xe37>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421416 <kfun:#main(){}+0xe46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257515(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262234(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421447 <kfun:#main(){}+0xe77>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421456 <kfun:#main(){}+0xe86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257451(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262170(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421487 <kfun:#main(){}+0xeb7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421496 <kfun:#main(){}+0xec6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257387(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	262106(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214c7 <kfun:#main(){}+0xef7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214d6 <kfun:#main(){}+0xf06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257323(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	262041(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421508 <kfun:#main(){}+0xf38>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421529 <kfun:#main(){}+0xf59>
               	testl	%ebx, %ebx
               	je	0x421531 <kfun:#main(){}+0xf61>
               	movq	$0, 257233(%rip)        # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 257267(%rip)        # 0x46021c <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257232(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261946(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421567 <kfun:#main(){}+0xf97>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421576 <kfun:#main(){}+0xfa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257163(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261882(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215a7 <kfun:#main(){}+0xfd7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215b6 <kfun:#main(){}+0xfe6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	257099(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	261817(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215e8 <kfun:#main(){}+0x1018>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421609 <kfun:#main(){}+0x1039>
               	testl	%ebx, %ebx
               	je	0x421611 <kfun:#main(){}+0x1041>
               	movq	$0, 257017(%rip)        # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 257047(%rip)        # 0x460220 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	257008(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261722(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421647 <kfun:#main(){}+0x1077>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261658(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421687 <kfun:#main(){}+0x10b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261594(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216c7 <kfun:#main(){}+0x10f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261530(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421707 <kfun:#main(){}+0x1137>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261466(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421747 <kfun:#main(){}+0x1177>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261402(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421787 <kfun:#main(){}+0x11b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261338(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217c7 <kfun:#main(){}+0x11f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261274(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421807 <kfun:#main(){}+0x1237>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261210(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421847 <kfun:#main(){}+0x1277>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261146(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421887 <kfun:#main(){}+0x12b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261082(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218c7 <kfun:#main(){}+0x12f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218d6 <kfun:#main(){}+0x1306>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256299(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	261018(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421907 <kfun:#main(){}+0x1337>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421916 <kfun:#main(){}+0x1346>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256235(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260954(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421947 <kfun:#main(){}+0x1377>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421956 <kfun:#main(){}+0x1386>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256171(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260890(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421987 <kfun:#main(){}+0x13b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421996 <kfun:#main(){}+0x13c6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	256107(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260825(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219c8 <kfun:#main(){}+0x13f8>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4219df <kfun:#main(){}+0x140f>
               	testl	%ebx, %ebx
               	je	0x4219e7 <kfun:#main(){}+0x1417>
               	movq	$0, 248097(%rip)        # 0x45e300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	256026(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260730(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a27 <kfun:#main(){}+0x1457>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a36 <kfun:#main(){}+0x1466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255947(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260665(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a68 <kfun:#main(){}+0x1498>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a7f <kfun:#main(){}+0x14af>
               	testl	%ebx, %ebx
               	je	0x421a87 <kfun:#main(){}+0x14b7>
               	movq	$0, 247945(%rip)        # 0x45e308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255866(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260570(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ac7 <kfun:#main(){}+0x14f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ad6 <kfun:#main(){}+0x1506>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255787(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260506(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b07 <kfun:#main(){}+0x1537>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b16 <kfun:#main(){}+0x1546>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255723(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260441(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b48 <kfun:#main(){}+0x1578>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421b5f <kfun:#main(){}+0x158f>
               	testl	%ebx, %ebx
               	je	0x421b67 <kfun:#main(){}+0x1597>
               	movq	$0, 247729(%rip)        # 0x45e310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255642(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260346(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ba7 <kfun:#main(){}+0x15d7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bb6 <kfun:#main(){}+0x15e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255563(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260282(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421be7 <kfun:#main(){}+0x1617>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bf6 <kfun:#main(){}+0x1626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255499(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	260217(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c28 <kfun:#main(){}+0x1658>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421c49 <kfun:#main(){}+0x1679>
               	testl	%ebx, %ebx
               	je	0x421c51 <kfun:#main(){}+0x1681>
               	movq	$0, 255425(%rip)        # 0x460200 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 255451(%rip)        # 0x460224 <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	255408(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x4247a0 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260122(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c87 <kfun:#main(){}+0x16b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260058(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cc7 <kfun:#main(){}+0x16f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259994(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d07 <kfun:#main(){}+0x1737>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259930(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d47 <kfun:#main(){}+0x1777>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259866(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d87 <kfun:#main(){}+0x17b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259802(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dc7 <kfun:#main(){}+0x17f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259738(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e07 <kfun:#main(){}+0x1837>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259674(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e47 <kfun:#main(){}+0x1877>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259610(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e87 <kfun:#main(){}+0x18b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259546(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ec7 <kfun:#main(){}+0x18f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259482(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f07 <kfun:#main(){}+0x1937>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259418(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f47 <kfun:#main(){}+0x1977>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259354(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421f87 <kfun:#main(){}+0x19b7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259290(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421fc7 <kfun:#main(){}+0x19f7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259226(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422007 <kfun:#main(){}+0x1a37>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422016 <kfun:#main(){}+0x1a46>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254443(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259162(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422047 <kfun:#main(){}+0x1a77>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422056 <kfun:#main(){}+0x1a86>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254379(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259098(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x422087 <kfun:#main(){}+0x1ab7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x422096 <kfun:#main(){}+0x1ac6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254315(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259034(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4220c7 <kfun:#main(){}+0x1af7>
               	callq	0x424550 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4220d6 <kfun:#main(){}+0x1b06>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254251(%rip), %rsi      # 0x460208 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x4247a0 <AddTLSRecord>

