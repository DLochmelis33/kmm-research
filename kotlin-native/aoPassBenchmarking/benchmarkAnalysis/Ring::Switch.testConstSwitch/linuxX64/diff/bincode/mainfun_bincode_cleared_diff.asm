--- ../../benchmarkAnalysis/Ring::Switch.testConstSwitch/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:48:35.290629855 +0200
+++ ../../benchmarkAnalysis/Ring::Switch.testConstSwitch/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:00:23.550408068 +0200

@@ -63,55 +63,56 @@
@@@[(12, 15)]@@@
-               	addl	%eax, 8(%r14)
+               	addl	8(%r14), %eax
+               	movl	%eax, 8(%r14)
