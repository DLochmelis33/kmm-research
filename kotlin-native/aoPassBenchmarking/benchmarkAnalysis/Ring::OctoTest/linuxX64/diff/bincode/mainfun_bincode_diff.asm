--- ../../benchmarkAnalysis/Ring::OctoTest/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:54:54.230511412 +0200
+++ ../../benchmarkAnalysis/Ring::OctoTest/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:06:22.240297762 +0200
@@ -1,10 +1,10 @@
 <kfun:#main(){}>:
                	pushq	%rax
-               	movb	266729(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movb	267889(%rip), %al       # 0x4624d8 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x420b70 <kfun:#main(){}+0x10>
-               	callq	0x424f50 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x420e70 <kfun:#main(){}+0x10>
+               	callq	0x425690 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	popq	%rax
-               	jmp	0x420680 <kfun:#octoTest(){}>
+               	jmp	0x420880 <kfun:#octoTest(){}>
                	nopw	%cs:(%rax,%rax)
 
