--- ../../benchmarkAnalysis/Ring::Switch.testObjConstSwitch/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:48:43.290627664 +0200
+++ ../../benchmarkAnalysis/Ring::Switch.testObjConstSwitch/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:00:31.040405799 +0200

@@ -63,55 +63,56 @@
@@@[(12, 15)]@@@
-               	addl	%eax, 8(%r14)
+               	addl	8(%r14), %eax
+               	movl	%eax, 8(%r14)
