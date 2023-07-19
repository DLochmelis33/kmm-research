--- ../../benchmarkAnalysis/Ring::Lambda.noncapturingLambdaNoInline/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:35.530593712 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.noncapturingLambdaNoInline/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:15.010375353 +0200

@@ -58,28 +58,31 @@
@@@[(3, 6), (7, 8), (9, 10), (11, 13), (17, 23)]@@@
-               	movl	%ecx, 263211(%rip)      # 0x460ac8 <kvar:globalAddendum#internal>
+               	movl	16(%rax), %eax
+               	movl	%eax, 264648(%rip)      # 0x461248 <kvar:globalAddendum#internal>
@@@@
+               	movq	%rax, 288(%r14)
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%r14), %rax
@@@@
-               	jmp	0x4206e8 <kfun:#main(){}+0x158>
-               	nopl	(%rax)
-               	movl	263154(%rip), %edi      # 0x460ac8 <kvar:globalAddendum#internal>
+               	jmp	0x4208d8 <kfun:#main(){}+0x168>
+               	nopw	(%rax,%rax)
+               	movl	264578(%rip), %edi      # 0x461248 <kvar:globalAddendum#internal>
