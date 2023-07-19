<kfun:#main(){}>:
               	pushq	%rax
               	movb	266729(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
               	testb	$1, %al
               	je	0x420b70 <kfun:#main(){}+0x10>
               	callq	0x424f50 <kotlin::mm::SuspendIfRequestedSlowPath()>
               	popq	%rax
               	jmp	0x420680 <kfun:#octoTest(){}>
               	nopw	%cs:(%rax,%rax)

