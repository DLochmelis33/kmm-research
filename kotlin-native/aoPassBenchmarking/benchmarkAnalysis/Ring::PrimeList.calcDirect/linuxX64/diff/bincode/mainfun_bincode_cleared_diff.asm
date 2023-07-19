--- ../../benchmarkAnalysis/Ring::PrimeList.calcDirect/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:58.830586793 +0200
+++ ../../benchmarkAnalysis/Ring::PrimeList.calcDirect/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:37.040368674 +0200

@@ -75,13 +75,15 @@
@@@[(3, 5), (9, 10), (12, 13)]@@@
-               	movaps	%xmm0, 32(%rsp)
+               	movq	%rax, 288(%rbp)
@@@@
+               	movaps	%xmm0, 32(%rsp)
@@@@
+               	movq	288(%rbp), %rax

@@ -89,55 +91,55 @@
@@@[(25, 31)]@@@
-               	leaq	228839(%rip), %r14      # 0x45a0d0 <ktypeglobal:kotlin.collections.AbstractMutableList.IteratorImpl#internal>
-               	jmp	0x422327 <kfun:#main(){}+0x287>
-               	nop
+               	leaq	230345(%rip), %r14      # 0x45a850 <ktypeglobal:kotlin.collections.AbstractMutableList.IteratorImpl#internal>
+               	jmp	0x4224c7 <kfun:#main(){}+0x297>
+               	nopl	(%rax)
