--- ../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:02.420603678 +0200
+++ ../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:01:45.150384320 +0200

@@ -39,25 +39,28 @@
@@@[(14, 17), (19, 20), (21, 22), (26, 27), (28, 29)]@@@
-               	callq	0x420910 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	callq	0x420ae0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	movq	%rbx, 24(%rsp)
@@@@
+               	movq	%rax, 288(%rbp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
+               	movaps	%xmm0, 64(%rsp)
@@@@
+               	movq	288(%rbp), %rax

@@ -92,39 +95,38 @@
@@@[(38, 43)]@@@
-               	jmp	0x421dbf <kfun:#main(){}+0x2bf>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x421fcf <kfun:#main(){}+0x2cf>
+               	nopw	(%rax,%rax)
