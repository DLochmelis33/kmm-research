--- ../../benchmarkAnalysis/Ring::Calls.interfaceMethodBimorphic/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:18.890598537 +0200
+++ ../../benchmarkAnalysis/Ring::Calls.interfaceMethodBimorphic/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:00.200379884 +0200

@@ -44,76 +44,77 @@
@@@[(37, 38), (39, 43), (84, 85), (86, 91)]@@@
-               	movq	24(%rsp), %rdx
@@@@
-               	movq	%rdx, 48(%rsp)
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 48(%rsp)
+               	movq	32(%rsp), %rcx
@@@@
-               	movq	56(%rsp), %r12
@@@@
-               	jmp	0x4206c0 <kfun:#main(){}+0x2b0>
-               	nopw	(%rax,%rax)
+               	movq	56(%rsp), %r12
+               	jmp	0x4208c0 <kfun:#main(){}+0x2b0>
+               	nop
