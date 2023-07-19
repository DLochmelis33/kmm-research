--- ../../benchmarkAnalysis/Ring::IntStream.filterAndCount/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:51:37.500573934 +0200
+++ ../../benchmarkAnalysis/Ring::IntStream.filterAndCount/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:03:13.440357956 +0200

@@ -38,22 +38,26 @@
@@@[(14, 17), (19, 20), (21, 22), (24, 27)]@@@
-               	callq	0x4206f0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	callq	0x4208e0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	movq	%rbx, 24(%rsp)
@@@@
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 48(%rsp)
@@@@
+               	movaps	%xmm0, 48(%rsp)
+               	xorps	%xmm0, %xmm0
+               	movq	288(%r15), %rax

@@ -109,11 +113,10 @@
@@@[(7, 10)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopw	(%rax,%rax)
