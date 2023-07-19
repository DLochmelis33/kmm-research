--- ../../benchmarkAnalysis/Ring::Lambda.noncapturingLambdaNoInline/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:35.530593712 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.noncapturingLambdaNoInline/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:15.010375353 +0200
@@ -8,7 +8,7 @@
                	xorps	%xmm0, %xmm0
                	movaps	%xmm0, 64(%rsp)
                	movaps	%xmm0, 48(%rsp)
-               	leaq	232144(%rip), %rax      # 0x459080 <ktypeglobal:LambdaBenchmark#internal>
+               	leaq	233520(%rip), %rax      # 0x4597c0 <ktypeglobal:LambdaBenchmark#internal>
                	orq	$3, %rax
                	movq	%rax, 40(%rsp)
                	movq	%fs:0, %rax
@@ -20,10 +20,10 @@
                	movq	%rax, 288(%r14)
                	movabsq	$17179869184, %r15      # imm = 0x400000000
                	movq	%r15, 64(%rsp)
-               	movb	268124(%rip), %al       # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
+               	movb	269572(%rip), %al       # 0x4624e0 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x420605 <kfun:#main(){}+0x75>
-               	callq	0x424210 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x4207e5 <kfun:#main(){}+0x75>
+               	callq	0x424840 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	leaq	40(%rsp), %rax
                	movq	%rax, 72(%rsp)
                	xorps	%xmm0, %xmm0
@@ -36,13 +36,13 @@
                	movq	%r15, 16(%rsp)
                	movq	%rbx, %rax
                	cmpl	$2, -68(%rbx)
-               	je	0x420655 <kfun:#main(){}+0xc5>
+               	je	0x420835 <kfun:#main(){}+0xc5>
                	leaq	-68(%rbx), %rdi
-               	leaq	208(%rip), %rsi         # 0x420720 <kfun:Random.$init_thread_local#internal>
-               	callq	0x439a40 <CallInitThreadLocal>
+               	leaq	224(%rip), %rsi         # 0x420910 <kfun:Random.$init_thread_local#internal>
+               	callq	0x43a770 <CallInitThreadLocal>
                	leaq	24(%rsp), %rbx
                	movl	$3, %edi
-               	callq	0x424780 <LookupTLS>
+               	callq	0x424e00 <LookupTLS>
                	movq	(%rax), %rax
                	movq	%rax, 24(%rsp)
                	movl	16(%rax), %ecx
@@ -58,28 +58,31 @@
                	leal	(%rdx,%rdx,4), %edx
                	subl	%edx, %ecx
                	movl	%ecx, 16(%rax)
-               	movl	%ecx, 263211(%rip)      # 0x460ac8 <kvar:globalAddendum#internal>
+               	movl	16(%rax), %eax
+               	movl	%eax, 264648(%rip)      # 0x461248 <kvar:globalAddendum#internal>
                	movq	8(%rsp), %rax
+               	movq	%rax, 288(%r14)
                	xorps	%xmm0, %xmm0
-               	movaps	%xmm0, (%rsp)
                	movaps	%xmm0, 16(%rsp)
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%r14), %rax
                	movq	%rax, 8(%rsp)
                	movq	%r12, 288(%r14)
                	movq	%r15, 16(%rsp)
                	movl	$10001, %ebp            # imm = 0x2711
-               	jmp	0x4206e8 <kfun:#main(){}+0x158>
-               	nopl	(%rax)
-               	movl	263154(%rip), %edi      # 0x460ac8 <kvar:globalAddendum#internal>
+               	jmp	0x4208d8 <kfun:#main(){}+0x168>
+               	nopw	(%rax,%rax)
+               	movl	264578(%rip), %edi      # 0x461248 <kvar:globalAddendum#internal>
                	movq	%rbx, %rsi
-               	callq	0x415d90 <kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any>
+               	callq	0x415df0 <kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any>
                	movq	%rax, 24(%rsp)
                	addl	$-1, %ebp
-               	je	0x4206fa <kfun:#main(){}+0x16a>
-               	movzbl	267881(%rip), %eax      # 0x461d58 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x4208ea <kfun:#main(){}+0x17a>
+               	movzbl	269313(%rip), %eax      # 0x4624e0 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x4206d0 <kfun:#main(){}+0x140>
-               	callq	0x424210 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	jmp	0x4206d0 <kfun:#main(){}+0x140>
+               	je	0x4208c0 <kfun:#main(){}+0x150>
+               	callq	0x424840 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x4208c0 <kfun:#main(){}+0x150>
                	movq	56(%rsp), %rax
                	movq	%rax, 288(%r14)
                	addq	$80, %rsp
