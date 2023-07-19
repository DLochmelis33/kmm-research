<kfun:#main(){}>:
               	pushq	%rax
               	movb	267889(%rip), %al       # 0x4624d8 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420e70 <kfun:#main(){}+0x10>
               	callq	0x425690 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	popq	%rax
               	jmp	0x420880 <kfun:#octoTest(){}>
               	nopw	%cs:(%rax,%rax)

