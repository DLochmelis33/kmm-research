--- ../../benchmarkAnalysis/Ring::Switch.testDenseIntSwitch/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:49:22.330616326 +0200
+++ ../../benchmarkAnalysis/Ring::Switch.testDenseIntSwitch/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:01:07.850394817 +0200

@@ -63,55 +63,56 @@
@@@[(12, 15)]@@@
-               	addl	%eax, 8(%r14)
+               	addl	8(%r14), %eax
+               	movl	%eax, 8(%r14)

@@ -123,6 +124,6 @@
@@@[(3, 7)]@@@
-               	callq	0x41a670 <kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41a7e0 <kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing>
+               	nopl	(%rax)
