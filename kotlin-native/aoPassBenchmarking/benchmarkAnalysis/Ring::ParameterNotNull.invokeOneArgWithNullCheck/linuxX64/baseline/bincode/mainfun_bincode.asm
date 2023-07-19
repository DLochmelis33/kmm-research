<kfun:#main(){}>:
               	pushq	%rbx
               	subq	$64, %rsp
               	xorps	%xmm0, %xmm0
               	movaps	%xmm0, 32(%rsp)
               	movaps	%xmm0, 16(%rsp)
               	movq	$0, 48(%rsp)
               	leaq	228526(%rip), %rax      # 0x458150 <ktypeglobal:ParameterNotNullAssertionBenchmark#internal>
               	orq	$3, %rax
               	movq	%rax, 8(%rsp)
               	movq	%fs:0, %rax
               	movq	-64(%rax), %rbx
               	movq	288(%rbx), %rax
               	movq	%rax, 24(%rsp)
               	leaq	16(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	movabsq	$21474836480, %rax      # imm = 0x500000000
               	movq	%rax, 32(%rsp)
               	movb	260205(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4204f4 <kfun:#main(){}+0x74>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	movl	255478(%rip), %eax      # 0x45eaf0 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/Main.kt>
               	cmpl	$2, %eax
               	je	0x420512 <kfun:#main(){}+0x92>
               	leaq	255466(%rip), %rdi      # 0x45eaf0 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/Main.kt>
               	leaq	-317(%rip), %rsi        # 0x4203d0 <kfun:$init_global#internal>
               	callq	0x439620 <CallInitGlobalPossiblyLock>
               	leaq	8(%rsp), %rax
               	movq	%rax, 40(%rsp)
               	movq	255397(%rip), %rax      # 0x45eac8 <kvar:OBJ#internal>
               	movq	%rax, 48(%rsp)
               	movq	24(%rsp), %rax
               	movq	%rax, 288(%rbx)
               	addq	$64, %rsp
               	popq	%rbx
               	retq
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260106(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420557 <kfun:#main(){}+0xd7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420566 <kfun:#main(){}+0xe6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255331(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	260042(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420597 <kfun:#main(){}+0x117>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205a6 <kfun:#main(){}+0x126>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255267(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259978(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4205d7 <kfun:#main(){}+0x157>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4205e6 <kfun:#main(){}+0x166>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255203(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259914(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420617 <kfun:#main(){}+0x197>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420626 <kfun:#main(){}+0x1a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255139(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259850(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420657 <kfun:#main(){}+0x1d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420666 <kfun:#main(){}+0x1e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255075(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259786(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420697 <kfun:#main(){}+0x217>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206a6 <kfun:#main(){}+0x226>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	255011(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259722(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4206d7 <kfun:#main(){}+0x257>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4206e6 <kfun:#main(){}+0x266>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254947(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259658(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420717 <kfun:#main(){}+0x297>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420726 <kfun:#main(){}+0x2a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254883(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259594(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420757 <kfun:#main(){}+0x2d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420766 <kfun:#main(){}+0x2e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254819(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259530(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420797 <kfun:#main(){}+0x317>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207a6 <kfun:#main(){}+0x326>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254755(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259466(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4207d7 <kfun:#main(){}+0x357>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4207e6 <kfun:#main(){}+0x366>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254691(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259402(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420817 <kfun:#main(){}+0x397>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420826 <kfun:#main(){}+0x3a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254627(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259338(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420857 <kfun:#main(){}+0x3d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420866 <kfun:#main(){}+0x3e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254563(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259274(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420897 <kfun:#main(){}+0x417>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208a6 <kfun:#main(){}+0x426>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254499(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259210(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4208d7 <kfun:#main(){}+0x457>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4208e6 <kfun:#main(){}+0x466>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254435(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259146(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420917 <kfun:#main(){}+0x497>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420926 <kfun:#main(){}+0x4a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254371(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259082(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420957 <kfun:#main(){}+0x4d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420966 <kfun:#main(){}+0x4e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254307(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	259018(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420997 <kfun:#main(){}+0x517>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209a6 <kfun:#main(){}+0x526>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254243(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258954(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4209d7 <kfun:#main(){}+0x557>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4209e6 <kfun:#main(){}+0x566>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254179(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258890(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a17 <kfun:#main(){}+0x597>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a26 <kfun:#main(){}+0x5a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254115(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258826(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a57 <kfun:#main(){}+0x5d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420a66 <kfun:#main(){}+0x5e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	254051(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258762(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420a97 <kfun:#main(){}+0x617>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420aa6 <kfun:#main(){}+0x626>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253987(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258698(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ad7 <kfun:#main(){}+0x657>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ae6 <kfun:#main(){}+0x666>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253923(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258634(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b17 <kfun:#main(){}+0x697>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b26 <kfun:#main(){}+0x6a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253859(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258570(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b57 <kfun:#main(){}+0x6d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420b66 <kfun:#main(){}+0x6e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253795(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258506(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b97 <kfun:#main(){}+0x717>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ba6 <kfun:#main(){}+0x726>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253731(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258442(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420bd7 <kfun:#main(){}+0x757>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420be6 <kfun:#main(){}+0x766>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253667(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258378(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c17 <kfun:#main(){}+0x797>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c26 <kfun:#main(){}+0x7a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253603(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258314(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c57 <kfun:#main(){}+0x7d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420c66 <kfun:#main(){}+0x7e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253539(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258250(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420c97 <kfun:#main(){}+0x817>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ca6 <kfun:#main(){}+0x826>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253475(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258186(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420cd7 <kfun:#main(){}+0x857>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ce6 <kfun:#main(){}+0x866>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253411(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258122(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d17 <kfun:#main(){}+0x897>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d26 <kfun:#main(){}+0x8a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253347(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	258058(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d57 <kfun:#main(){}+0x8d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420d66 <kfun:#main(){}+0x8e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253283(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257994(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420d97 <kfun:#main(){}+0x917>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420da6 <kfun:#main(){}+0x926>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253219(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257930(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420dd7 <kfun:#main(){}+0x957>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420de6 <kfun:#main(){}+0x966>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253155(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257866(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e17 <kfun:#main(){}+0x997>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e26 <kfun:#main(){}+0x9a6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253091(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257802(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e57 <kfun:#main(){}+0x9d7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420e66 <kfun:#main(){}+0x9e6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	253027(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257738(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e97 <kfun:#main(){}+0xa17>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ea6 <kfun:#main(){}+0xa26>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252963(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257674(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420ed7 <kfun:#main(){}+0xa57>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420ee6 <kfun:#main(){}+0xa66>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252899(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257610(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f17 <kfun:#main(){}+0xa97>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420f26 <kfun:#main(){}+0xaa6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252835(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257545(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420f58 <kfun:#main(){}+0xad8>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x420f84 <kfun:#main(){}+0xb04>
               	testl	%ebx, %ebx
               	je	0x420f8c <kfun:#main(){}+0xb0c>
               	movq	$0, 252705(%rip)        # 0x45ea90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
               	movq	$0, 252702(%rip)        # 0x45ea98 <kvar:kotlin.native.MemoryModel.$ENTRIES#internal>
               	movl	$0, 252756(%rip)        # 0x45ead8 <state_global$kotlin.native.MemoryModel>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252733(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopw	(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257434(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420fc7 <kfun:#main(){}+0xb47>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x420fd6 <kfun:#main(){}+0xb56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252659(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257370(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421007 <kfun:#main(){}+0xb87>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421016 <kfun:#main(){}+0xb96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252595(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257306(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421047 <kfun:#main(){}+0xbc7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421056 <kfun:#main(){}+0xbd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252531(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	257242(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421087 <kfun:#main(){}+0xc07>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421096 <kfun:#main(){}+0xc16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252467(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257177(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4210c8 <kfun:#main(){}+0xc48>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4210e9 <kfun:#main(){}+0xc69>
               	testl	%ebx, %ebx
               	je	0x4210f1 <kfun:#main(){}+0xc71>
               	movq	$0, 252353(%rip)        # 0x45eaa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
               	movl	$0, 252403(%rip)        # 0x45eadc <state_global$kotlin.native.concurrent.UNINITIALIZED>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252376(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	257081(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421128 <kfun:#main(){}+0xca8>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421149 <kfun:#main(){}+0xcc9>
               	testl	%ebx, %ebx
               	je	0x421151 <kfun:#main(){}+0xcd1>
               	movq	$0, 252265(%rip)        # 0x45eaa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
               	movl	$0, 252311(%rip)        # 0x45eae0 <state_global$kotlin.native.concurrent.INITIALIZING>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	252280(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256986(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421187 <kfun:#main(){}+0xd07>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421196 <kfun:#main(){}+0xd16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252211(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256922(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4211c7 <kfun:#main(){}+0xd47>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4211d6 <kfun:#main(){}+0xd56>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252147(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256858(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421207 <kfun:#main(){}+0xd87>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421216 <kfun:#main(){}+0xd96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252083(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256794(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421247 <kfun:#main(){}+0xdc7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421256 <kfun:#main(){}+0xdd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	252019(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256730(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421287 <kfun:#main(){}+0xe07>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421296 <kfun:#main(){}+0xe16>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251955(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	256665(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4212c8 <kfun:#main(){}+0xe48>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4212e9 <kfun:#main(){}+0xe69>
               	testl	%ebx, %ebx
               	je	0x4212f1 <kfun:#main(){}+0xe71>
               	movq	$0, 251857(%rip)        # 0x45eab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
               	movl	$0, 251899(%rip)        # 0x45eae4 <state_global$kotlin.native.internal.NativePtr>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	251864(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256570(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421327 <kfun:#main(){}+0xea7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421336 <kfun:#main(){}+0xeb6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251795(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256506(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421367 <kfun:#main(){}+0xee7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421376 <kfun:#main(){}+0xef6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251731(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	256441(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4213a8 <kfun:#main(){}+0xf28>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x4213c9 <kfun:#main(){}+0xf49>
               	testl	%ebx, %ebx
               	je	0x4213d1 <kfun:#main(){}+0xf51>
               	movq	$0, 251641(%rip)        # 0x45eab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
               	movl	$0, 251679(%rip)        # 0x45eae8 <state_global$kotlin.native.internal.UnhandledExceptionHookHolder>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	251640(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256346(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421407 <kfun:#main(){}+0xf87>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421416 <kfun:#main(){}+0xf96>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251571(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256282(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421447 <kfun:#main(){}+0xfc7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421456 <kfun:#main(){}+0xfd6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251507(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256218(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421487 <kfun:#main(){}+0x1007>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421496 <kfun:#main(){}+0x1016>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251443(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256154(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4214c7 <kfun:#main(){}+0x1047>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4214d6 <kfun:#main(){}+0x1056>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251379(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256090(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421507 <kfun:#main(){}+0x1087>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421516 <kfun:#main(){}+0x1096>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251315(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	256026(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421547 <kfun:#main(){}+0x10c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421556 <kfun:#main(){}+0x10d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251251(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255962(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421587 <kfun:#main(){}+0x1107>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421596 <kfun:#main(){}+0x1116>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251187(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255898(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4215c7 <kfun:#main(){}+0x1147>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4215d6 <kfun:#main(){}+0x1156>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251123(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255834(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421607 <kfun:#main(){}+0x1187>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421616 <kfun:#main(){}+0x1196>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	251059(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255770(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421647 <kfun:#main(){}+0x11c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421656 <kfun:#main(){}+0x11d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250995(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255706(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421687 <kfun:#main(){}+0x1207>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421696 <kfun:#main(){}+0x1216>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250931(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255642(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4216c7 <kfun:#main(){}+0x1247>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4216d6 <kfun:#main(){}+0x1256>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250867(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255578(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421707 <kfun:#main(){}+0x1287>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421716 <kfun:#main(){}+0x1296>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250803(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255514(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421747 <kfun:#main(){}+0x12c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421756 <kfun:#main(){}+0x12d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250739(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255449(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421788 <kfun:#main(){}+0x1308>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42179f <kfun:#main(){}+0x131f>
               	testl	%ebx, %ebx
               	je	0x4217a7 <kfun:#main(){}+0x1327>
               	movq	$0, 244577(%rip)        # 0x45d300 <kvar:kotlin.collections.EmptyIterator.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250658(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255354(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4217e7 <kfun:#main(){}+0x1367>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4217f6 <kfun:#main(){}+0x1376>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250579(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255289(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421828 <kfun:#main(){}+0x13a8>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42183f <kfun:#main(){}+0x13bf>
               	testl	%ebx, %ebx
               	je	0x421847 <kfun:#main(){}+0x13c7>
               	movq	$0, 244425(%rip)        # 0x45d308 <kvar:kotlin.collections.EmptySet.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250498(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255194(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421887 <kfun:#main(){}+0x1407>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421896 <kfun:#main(){}+0x1416>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250419(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	255130(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4218c7 <kfun:#main(){}+0x1447>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4218d6 <kfun:#main(){}+0x1456>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250355(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	255065(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421908 <kfun:#main(){}+0x1488>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x42191f <kfun:#main(){}+0x149f>
               	testl	%ebx, %ebx
               	je	0x421927 <kfun:#main(){}+0x14a7>
               	movq	$0, 244209(%rip)        # 0x45d310 <kvar:kotlin.coroutines.EmptyCoroutineContext.$instance#internal>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250274(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopw	%cs:(%rax,%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254970(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421967 <kfun:#main(){}+0x14e7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421976 <kfun:#main(){}+0x14f6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250195(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254906(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219a7 <kfun:#main(){}+0x1527>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x4219b6 <kfun:#main(){}+0x1536>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	250131(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	254841(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x4219e8 <kfun:#main(){}+0x1568>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421a09 <kfun:#main(){}+0x1589>
               	testl	%ebx, %ebx
               	je	0x421a11 <kfun:#main(){}+0x1591>
               	movq	$0, 250049(%rip)        # 0x45eac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
               	movl	$0, 250083(%rip)        # 0x45eaec <state_global$kotlin.ranges.IntRange>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	250040(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopl	(%rax)
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254746(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a47 <kfun:#main(){}+0x15c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a56 <kfun:#main(){}+0x15d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249971(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254682(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421a87 <kfun:#main(){}+0x1607>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421a96 <kfun:#main(){}+0x1616>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249907(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254618(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421ac7 <kfun:#main(){}+0x1647>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421ad6 <kfun:#main(){}+0x1656>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249843(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254554(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b07 <kfun:#main(){}+0x1687>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b16 <kfun:#main(){}+0x1696>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249779(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254490(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b47 <kfun:#main(){}+0x16c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b56 <kfun:#main(){}+0x16d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249715(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254426(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421b87 <kfun:#main(){}+0x1707>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421b96 <kfun:#main(){}+0x1716>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249651(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254362(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421bc7 <kfun:#main(){}+0x1747>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421bd6 <kfun:#main(){}+0x1756>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249587(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254298(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c07 <kfun:#main(){}+0x1787>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c16 <kfun:#main(){}+0x1796>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249523(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254234(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c47 <kfun:#main(){}+0x17c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c56 <kfun:#main(){}+0x17d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249459(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254170(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421c87 <kfun:#main(){}+0x1807>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421c96 <kfun:#main(){}+0x1816>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249395(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254106(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421cc7 <kfun:#main(){}+0x1847>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421cd6 <kfun:#main(){}+0x1856>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249331(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	254042(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d07 <kfun:#main(){}+0x1887>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d16 <kfun:#main(){}+0x1896>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249267(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253978(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d47 <kfun:#main(){}+0x18c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d56 <kfun:#main(){}+0x18d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249203(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253914(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421d87 <kfun:#main(){}+0x1907>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421d96 <kfun:#main(){}+0x1916>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249139(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253850(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421dc7 <kfun:#main(){}+0x1947>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421dd6 <kfun:#main(){}+0x1956>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249075(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253786(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e07 <kfun:#main(){}+0x1987>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e16 <kfun:#main(){}+0x1996>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	249011(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%rbp
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %rbx
               	movl	%edi, %ebp
               	movb	253722(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e47 <kfun:#main(){}+0x19c7>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	addl	$-1, %ebp
               	cmpl	$3, %ebp
               	jae	0x421e56 <kfun:#main(){}+0x19d6>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	retq
               	leaq	248947(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%rbx, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%rbp
               	jmp	0x424110 <AddTLSRecord>
               	pushq	%r14
               	pushq	%rbx
               	pushq	%rax
               	movq	%rsi, %r14
               	movl	%edi, %ebx
               	movb	253657(%rip), %al       # 0x45fd58 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x421e88 <kfun:#main(){}+0x1a08>
               	callq	0x423f00 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	leal	-1(%rbx), %eax
               	cmpl	$2, %eax
               	jb	0x421ea9 <kfun:#main(){}+0x1a29>
               	testl	%ebx, %ebx
               	je	0x421eb1 <kfun:#main(){}+0x1a31>
               	movq	$0, 248873(%rip)        # 0x45eac8 <kvar:OBJ#internal>
               	movl	$0, 248903(%rip)        # 0x45eaf0 <state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/Main.kt>
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	retq
               	leaq	248856(%rip), %rsi      # 0x45ead0 <__KonanTlsKey>
               	movq	%r14, %rdi
               	movl	$3, %edx
               	addq	$8, %rsp
               	popq	%rbx
               	popq	%r14
               	jmp	0x424110 <AddTLSRecord>
               	nopl	(%rax)

