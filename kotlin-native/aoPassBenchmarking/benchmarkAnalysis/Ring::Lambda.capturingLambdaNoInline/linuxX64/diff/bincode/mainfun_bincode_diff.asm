--- ../../benchmarkAnalysis/Ring::Lambda.capturingLambdaNoInline/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:51:22.200579655 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.capturingLambdaNoInline/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:58.670362333 +0200
@@ -6,7 +6,7 @@
                	xorps	%xmm0, %xmm0
                	movaps	%xmm0, 32(%rsp)
                	movaps	%xmm0, 16(%rsp)
-               	leaq	231459(%rip), %rax      # 0x458f00 <ktypeglobal:LambdaBenchmark#internal>
+               	leaq	236995(%rip), %rax      # 0x45a680 <ktypeglobal:LambdaBenchmark#internal>
                	orq	$3, %rax
                	movq	%rax, 8(%rsp)
                	movq	%fs:0, %rax
@@ -18,10 +18,10 @@
                	movq	%rax, 288(%rbx)
                	movabsq	$17179869184, %r15      # imm = 0x400000000
                	movq	%r15, 32(%rsp)
-               	movb	267823(%rip), %al       # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
+               	movb	273367(%rip), %al       # 0x4634e0 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x420732 <kfun:#main(){}+0x72>
-               	callq	0x4242e0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x420912 <kfun:#main(){}+0x72>
+               	callq	0x424910 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	leaq	8(%rsp), %rax
                	movq	%rax, 40(%rsp)
                	xorps	%xmm0, %xmm0
@@ -34,12 +34,12 @@
                	movq	%r15, 64(%rsp)
                	movq	%r14, %rax
                	cmpl	$2, -68(%r14)
-               	je	0x420786 <kfun:#main(){}+0xc6>
+               	je	0x420966 <kfun:#main(){}+0xc6>
                	leaq	-68(%r14), %rdi
-               	leaq	111(%rip), %rsi         # 0x4207f0 <kfun:Random.$init_thread_local#internal>
-               	callq	0x439b10 <CallInitThreadLocal>
+               	leaq	127(%rip), %rsi         # 0x4209e0 <kfun:Random.$init_thread_local#internal>
+               	callq	0x43a840 <CallInitThreadLocal>
                	movl	$3, %edi
-               	callq	0x424850 <LookupTLS>
+               	callq	0x424ed0 <LookupTLS>
                	movq	(%rax), %rax
                	movq	%rax, 72(%rsp)
                	movl	16(%rax), %ecx
@@ -55,10 +55,11 @@
                	leal	(%rdx,%rdx,4), %edx
                	subl	%edx, %ecx
                	movl	%ecx, 16(%rax)
-               	movl	%ecx, 262911(%rip)      # 0x460ac8 <kvar:globalAddendum#internal>
+               	movl	16(%rax), %eax
+               	movl	%eax, 268444(%rip)      # 0x462248 <kvar:globalAddendum#internal>
                	movq	56(%rsp), %rax
                	movq	%rax, 288(%rbx)
-               	callq	0x420590 <kfun:LambdaBenchmark#capturingLambdaNoInline(){}kotlin.Int>
+               	callq	0x420770 <kfun:LambdaBenchmark#capturingLambdaNoInline(){}kotlin.Int>
                	movq	24(%rsp), %rax
                	movq	%rax, 288(%rbx)
                	addq	$80, %rsp
@@ -66,4 +67,5 @@
                	popq	%r14
                	popq	%r15
                	retq
+               	nopw	%cs:(%rax,%rax)
 
