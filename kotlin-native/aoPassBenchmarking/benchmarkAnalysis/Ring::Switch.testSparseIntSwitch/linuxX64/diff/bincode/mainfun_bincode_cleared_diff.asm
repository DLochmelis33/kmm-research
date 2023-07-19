--- ../../benchmarkAnalysis/Ring::Switch.testSparseIntSwitch/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:51:53.470568427 +0200
+++ ../../benchmarkAnalysis/Ring::Switch.testSparseIntSwitch/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:03:28.200353502 +0200

@@ -63,106 +63,107 @@
@@@[(12, 15), (56, 58)]@@@
-               	addl	%eax, 8(%r15)
+               	addl	8(%r15), %eax
+               	movl	%eax, 8(%r15)
@@@@
-               	nop
+               	nopw	(%rax,%rax)
