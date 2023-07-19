--- ../../benchmarkAnalysis/Ring::IntArray.countFilteredSomeManual/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:47:46.870644960 +0200
+++ ../../benchmarkAnalysis/Ring::IntArray.countFilteredSomeManual/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 02:59:40.100421416 +0200

@@ -100,18 +100,20 @@
@@@[(14, 15), (16, 17), (18, 20)]@@@
+               	movq	%rax, 288(%r13)
@@@@
-               	movaps	%xmm0, 112(%rsp)
@@@@
+               	movaps	%xmm0, 112(%rsp)
+               	movq	288(%r13), %rax

@@ -135,15 +137,16 @@
@@@[(3, 6)]@@@
-               	jmp	0x4211e4 <kfun:#main(){}+0x284>
+               	jmp	0x421414 <kfun:#main(){}+0x294>
+               	nop
