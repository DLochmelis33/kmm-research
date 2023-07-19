--- ../../benchmarkAnalysis/Ring::ForLoops.stringLoop/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:53:06.820540829 +0200
+++ ../../benchmarkAnalysis/Ring::ForLoops.stringLoop/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:04:35.390333120 +0200

@@ -5,96 +5,95 @@
@@@[(6, 7), (8, 13), (17, 27), (42, 58), (59, 63), (68, 70), (77, 79), (81, 87), (100, 106), (107, 119), (124, 129), (139, 147)]@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
-               	movups	%xmm0, 48(%rsp)
-               	leaq	232233(%rip), %rax      # 0x459190 <ktypeglobal:ForLoopsBenchmark#internal>
+               	movups	%xmm0, 16(%rsp)
+               	leaq	233577(%rip), %rax      # 0x4598d0 <ktypeglobal:ForLoopsBenchmark#internal>
@@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
-               	movq	%rax, 72(%rsp)
-               	leaq	64(%rsp), %rax
-               	movq	%rax, 288(%r12)
+               	movq	-64(%rax), %r15
+               	movq	288(%r15), %rax
+               	movq	%rax, 88(%rsp)
+               	leaq	80(%rsp), %rax
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 16(%rsp)
-               	movaps	%xmm0, (%rsp)
-               	movq	$0, 32(%rsp)
-               	leaq	32(%rsp), %r14
-               	movq	288(%r12), %rax
-               	movq	%rax, 8(%rsp)
-               	movq	%rsp, %rax
-               	movq	%rax, 288(%r12)
+               	movaps	%xmm0, 48(%rsp)
+               	movaps	%xmm0, 32(%rsp)
+               	movq	$0, 64(%rsp)
+               	leaq	64(%rsp), %r14
+               	movq	288(%r15), %rax
+               	movq	%rax, 40(%rsp)
+               	leaq	32(%rsp), %rax
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	%rax, 16(%rsp)
-               	movq	296(%r12), %rdi
+               	movq	%rax, 48(%rsp)
+               	movq	296(%r15), %rdi
@@@@
-               	leaq	16(%rax), %r15
+               	leaq	16(%rax), %r12
@@@@
-               	movq	%r15, 24(%rsp)
+               	movq	%r12, 56(%rsp)
@@@@
-               	je	0x420794 <kfun:#main(){}+0x154>
-               	nopl	(%rax)
-               	movzbl	263657(%rip), %eax      # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x420994 <kfun:#main(){}+0x154>
+               	nopw	(%rax,%rax)
+               	movzbl	265009(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	jne	0x420760 <kfun:#main(){}+0x120>
-               	movq	%r15, 48(%rsp)
-               	movq	%r15, %rdi
+               	jne	0x420960 <kfun:#main(){}+0x120>
+               	movq	%r12, 16(%rsp)
+               	movq	16(%rsp), %rdi
@@@@
-               	callq	0x41a740 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
-               	movq	%rax, 32(%rsp)
-               	movq	%rax, 56(%rsp)
-               	movq	8(%rsp), %rax
-               	movq	%rax, 288(%r12)
-               	movq	56(%rsp), %r14
+               	callq	0x41a8d0 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
+               	movq	%rax, 64(%rsp)
+               	movq	%rax, 24(%rsp)
+               	movq	40(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	movq	24(%rsp), %r14
@@@@
-               	je	0x4207ed <kfun:#main(){}+0x1ad>
-               	nop
-               	movzbl	263545(%rip), %eax      # 0x460d50 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x4209ed <kfun:#main(){}+0x1ad>
+               	movzbl	264897(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	jne	0x4207d0 <kfun:#main(){}+0x190>
-               	movq	72(%rsp), %rax
-               	movq	%rax, 288(%r12)
-               	addq	$104, %rsp
+               	jne	0x4209d0 <kfun:#main(){}+0x190>
+               	movq	88(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	addq	$120, %rsp

@@ -102,2280 +101,2280 @@
@@@[(3, 7)]@@@
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax)
