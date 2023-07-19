--- ../../benchmarkAnalysis/Ring::Lambda.methodReference/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:53:52.120527829 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.methodReference/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:05:19.960318301 +0200
@@ -7,7 +7,7 @@
                	xorps	%xmm0, %xmm0
                	movaps	%xmm0, 32(%rsp)
                	movaps	%xmm0, 16(%rsp)
-               	leaq	232626(%rip), %rax      # 0x4590d0 <ktypeglobal:LambdaBenchmark#internal>
+               	leaq	234002(%rip), %rax      # 0x459810 <ktypeglobal:LambdaBenchmark#internal>
                	orq	$3, %rax
                	movq	%rax, 8(%rsp)
                	movq	%fs:0, %rax
@@ -19,10 +19,10 @@
                	movq	%rax, 288(%rbx)
                	movabsq	$17179869184, %r15      # imm = 0x400000000
                	movq	%r15, 32(%rsp)
-               	movb	264430(%rip), %al       # 0x460d58 <kotlin::mm::internal::gSuspensionRequested>
+               	movb	265878(%rip), %al       # 0x4614e0 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x420473 <kfun:#main(){}+0x73>
-               	callq	0x424040 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x420653 <kfun:#main(){}+0x73>
+               	callq	0x424660 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	leaq	8(%rsp), %rax
                	movq	%rax, 40(%rsp)
                	xorps	%xmm0, %xmm0
@@ -35,12 +35,12 @@
                	movq	%r15, 64(%rsp)
                	movq	%r14, %rax
                	cmpl	$2, -68(%r14)
-               	je	0x4204c7 <kfun:#main(){}+0xc7>
+               	je	0x4206a7 <kfun:#main(){}+0xc7>
                	leaq	-68(%r14), %rdi
-               	leaq	142(%rip), %rsi         # 0x420550 <kfun:Random.$init_thread_local#internal>
-               	callq	0x439870 <CallInitThreadLocal>
+               	leaq	142(%rip), %rsi         # 0x420730 <kfun:Random.$init_thread_local#internal>
+               	callq	0x43a590 <CallInitThreadLocal>
                	movl	$3, %edi
-               	callq	0x4245b0 <LookupTLS>
+               	callq	0x424c20 <LookupTLS>
                	movq	(%rax), %rax
                	movq	%rax, 72(%rsp)
                	movl	16(%rax), %ecx
@@ -56,18 +56,19 @@
                	leal	(%rdx,%rdx,4), %edx
                	subl	%edx, %ecx
                	movl	%ecx, 16(%rax)
-               	movl	%ecx, 259518(%rip)      # 0x45fac8 <kvar:globalAddendum#internal>
+               	movl	16(%rax), %eax
+               	movl	%eax, 260955(%rip)      # 0x460248 <kvar:globalAddendum#internal>
                	movq	56(%rsp), %rax
                	movq	%rax, 288(%rbx)
                	movl	$10001, %ebp            # imm = 0x2711
-               	jmp	0x420525 <kfun:#main(){}+0x125>
+               	jmp	0x420705 <kfun:#main(){}+0x125>
                	addl	$-1, %ebp
-               	je	0x420537 <kfun:#main(){}+0x137>
-               	movzbl	264236(%rip), %eax      # 0x460d58 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x420717 <kfun:#main(){}+0x137>
+               	movzbl	265684(%rip), %eax      # 0x4614e0 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x420520 <kfun:#main(){}+0x120>
-               	callq	0x424040 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	jmp	0x420520 <kfun:#main(){}+0x120>
+               	je	0x420700 <kfun:#main(){}+0x120>
+               	callq	0x424660 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x420700 <kfun:#main(){}+0x120>
                	movq	24(%rsp), %rax
                	movq	%rax, 288(%rbx)
                	addq	$88, %rsp
