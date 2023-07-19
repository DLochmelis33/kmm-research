--- ../../benchmarkAnalysis/Ring::Lambda.methodReference/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:53:52.120527829 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.methodReference/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:05:19.960318301 +0200

@@ -56,18 +56,19 @@
@@@[(3, 6)]@@@
-               	movl	%ecx, 259518(%rip)      # 0x45fac8 <kvar:globalAddendum#internal>
+               	movl	16(%rax), %eax
+               	movl	%eax, 260955(%rip)      # 0x460248 <kvar:globalAddendum#internal>
