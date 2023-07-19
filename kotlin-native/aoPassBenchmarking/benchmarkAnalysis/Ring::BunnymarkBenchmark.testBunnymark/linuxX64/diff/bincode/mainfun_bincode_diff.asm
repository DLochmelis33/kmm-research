--- ../../benchmarkAnalysis/Ring::BunnymarkBenchmark.testBunnymark/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:54:46.310512894 +0200
+++ ../../benchmarkAnalysis/Ring::BunnymarkBenchmark.testBunnymark/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:06:13.850300339 +0200
@@ -6,7 +6,7 @@
                	movaps	%xmm0, (%rsp)
                	movups	%xmm0, 48(%rsp)
                	movups	%xmm0, 64(%rsp)
-               	leaq	233582(%rip), %rax      # 0x459ce0 <ktypeglobal:BunnymarkBenchmark#internal>
+               	leaq	234958(%rip), %rax      # 0x45a460 <ktypeglobal:BunnymarkBenchmark#internal>
                	orq	$3, %rax
                	movq	%rax, 40(%rsp)
                	movq	%fs:0, %rax
@@ -17,10 +17,10 @@
                	movq	%rax, 288(%rbx)
                	movabsq	$17179869184, %rax      # imm = 0x400000000
                	movq	%rax, 16(%rsp)
-               	movb	266455(%rip), %al       # 0x461d90 <kotlin::mm::internal::gSuspensionRequested>
+               	movb	267839(%rip), %al       # 0x462518 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x420cc2 <kfun:#main(){}+0x72>
-               	callq	0x424910 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x420ee2 <kfun:#main(){}+0x72>
+               	callq	0x424f90 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	leaq	40(%rsp), %rdi
                	movq	%rdi, 24(%rsp)
                	movl	$1142947840, 48(%rsp)   # imm = 0x44200000
@@ -28,7 +28,7 @@
                	movabsq	$258755002368, %rax     # imm = 0x3C3F000000
                	movq	%rax, 64(%rsp)
                	movl	$800000, 72(%rsp)       # imm = 0xC3500
-               	callq	0x420450 <kfun:BunnymarkBenchmark#testBunnymark(){}>
+               	callq	0x420630 <kfun:BunnymarkBenchmark#testBunnymark(){}>
                	movq	8(%rsp), %rax
                	movq	%rax, 288(%rbx)
                	addq	$80, %rsp
