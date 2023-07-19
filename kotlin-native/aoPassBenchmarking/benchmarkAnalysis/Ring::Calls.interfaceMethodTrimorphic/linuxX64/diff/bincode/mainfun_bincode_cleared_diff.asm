--- ../../benchmarkAnalysis/Ring::Calls.interfaceMethodTrimorphic/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:52:01.340565956 +0200
+++ ../../benchmarkAnalysis/Ring::Calls.interfaceMethodTrimorphic/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:03:35.800351221 +0200

@@ -9,14 +9,14 @@
@@@[(3, 4), (8, 11)]@@@
+               	movups	%xmm0, 16(%rsp)
@@@@
-               	movups	%xmm0, 96(%rsp)
-               	leaq	232031(%rip), %rax      # 0x458ed0 <ktypeglobal:CallsBenchmark#internal>
+               	leaq	237535(%rip), %rax      # 0x45a650 <ktypeglobal:CallsBenchmark#internal>

@@ -46,107 +46,108 @@
@@@[(37, 41), (42, 51), (105, 109)]@@@
+               	movq	%rcx, 32(%rsp)
+               	movq	16(%rsp), %rax
+               	movq	%rax, 40(%rsp)
+               	movq	24(%rsp), %rcx
@@@@
-               	movq	32(%rsp), %rax
-               	movq	40(%rsp), %rdx
-               	movq	%rax, 56(%rsp)
-               	movq	%rdx, 64(%rsp)
-               	movq	%rcx, 72(%rsp)
-               	movq	%rax, 80(%rsp)
+               	movq	32(%rsp), %rcx
+               	movq	%rcx, 56(%rsp)
+               	movq	%rax, 64(%rsp)
@@@@
-               	jmp	0x4206f3 <kfun:#main(){}+0x2c3>
-               	nop
+               	jmp	0x420903 <kfun:#main(){}+0x2d3>
+               	nopw	%cs:(%rax,%rax)
