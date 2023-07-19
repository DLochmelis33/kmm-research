--- ../../benchmarkAnalysis/Ring::Lambda.capturingLambdaNoInline/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:51:22.200579655 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.capturingLambdaNoInline/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:58.670362333 +0200

@@ -55,10 +55,11 @@
@@@[(3, 6)]@@@
-               	movl	%ecx, 262911(%rip)      # 0x460ac8 <kvar:globalAddendum#internal>
+               	movl	16(%rax), %eax
+               	movl	%eax, 268444(%rip)      # 0x462248 <kvar:globalAddendum#internal>

@@ -66,4 +67,5 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)
