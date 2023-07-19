--- ../../benchmarkAnalysis/Ring::Calls.interfaceMethodHexamorphic/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:47:36.510647948 +0200
+++ ../../benchmarkAnalysis/Ring::Calls.interfaceMethodHexamorphic/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 02:59:32.640423361 +0200

@@ -46,66 +46,67 @@
@@@[(37, 38), (39, 43)]@@@
-               	movq	16(%rsp), %rdx
@@@@
-               	movq	%rdx, 40(%rsp)
+               	movq	16(%rsp), %rcx
+               	movq	%rcx, 40(%rsp)
+               	movq	24(%rsp), %rcx

@@ -124,10 +125,10 @@
@@@[(8, 10)]@@@
-               	nopl	(%rax)
+               	nop
