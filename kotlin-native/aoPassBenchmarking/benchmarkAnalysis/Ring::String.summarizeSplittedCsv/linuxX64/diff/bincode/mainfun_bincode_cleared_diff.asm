--- ../../benchmarkAnalysis/Ring::String.summarizeSplittedCsv/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:48:11.020637583 +0200
+++ ../../benchmarkAnalysis/Ring::String.summarizeSplittedCsv/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:00:00.580414718 +0200

@@ -6,11 +6,11 @@
@@@[(3, 13)]@@@
-               	xorpd	%xmm0, %xmm0
-               	movapd	%xmm0, 80(%rsp)
-               	movapd	%xmm0, 64(%rsp)
-               	movupd	%xmm0, 16(%rsp)
-               	leaq	418818(%rip), %rax      # 0x4c95f0 <ktypeglobal:StringBenchmark#internal>
+               	xorps	%xmm0, %xmm0
+               	movaps	%xmm0, 80(%rsp)
+               	movaps	%xmm0, 64(%rsp)
+               	movups	%xmm0, 16(%rsp)
+               	leaq	419142(%rip), %rax      # 0x4c9d70 <ktypeglobal:StringBenchmark#internal>

@@ -22,21 +22,21 @@
@@@[(13, 29)]@@@
-               	xorpd	%xmm0, %xmm0
-               	movapd	%xmm0, 256(%rsp)
-               	movapd	%xmm0, 240(%rsp)
-               	movapd	%xmm0, 224(%rsp)
-               	movapd	%xmm0, 208(%rsp)
-               	movapd	%xmm0, 192(%rsp)
-               	movapd	%xmm0, 176(%rsp)
-               	movapd	%xmm0, 160(%rsp)
+               	xorps	%xmm0, %xmm0
+               	movaps	%xmm0, 256(%rsp)
+               	movaps	%xmm0, 240(%rsp)
+               	movaps	%xmm0, 224(%rsp)
+               	movaps	%xmm0, 208(%rsp)
+               	movaps	%xmm0, 192(%rsp)
+               	movaps	%xmm0, 176(%rsp)
+               	movaps	%xmm0, 160(%rsp)

@@ -44,26 +44,26 @@
@@@[(20, 32)]@@@
-               	callq	0x424c30 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
-               	xorpd	%xmm0, %xmm0
-               	movapd	%xmm0, 144(%rsp)
-               	movapd	%xmm0, 128(%rsp)
-               	movapd	%xmm0, 112(%rsp)
-               	movapd	%xmm0, 96(%rsp)
+               	callq	0x424e60 <kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}>
+               	xorps	%xmm0, %xmm0
+               	movaps	%xmm0, 144(%rsp)
+               	movaps	%xmm0, 128(%rsp)
+               	movaps	%xmm0, 112(%rsp)
+               	movaps	%xmm0, 96(%rsp)

@@ -103,23 +103,23 @@
@@@[(22, 26)]@@@
-               	jmp	0x4634d1 <kfun:#main(){}+0x311>
-               	nopl	(%rax)
+               	jmp	0x463b01 <kfun:#main(){}+0x301>
+               	nopl	(%rax,%rax)

@@ -217,72 +217,73 @@
@@@[(45, 46), (57, 61), (87, 95)]@@@
+               	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
@@@@
-               	movq	%rax, 248(%rsp)
-               	movq	%rax, %rdi
+               	movq	24(%rsp), %rdi
+               	movq	%rdi, 248(%rsp)
@@@@
-               	movq	%rax, 264(%rsp)
-               	leaq	519345(%rip), %rsi      # 0x4e23e0 <__unnamed_23>
-               	movq	%rax, %rdi
-               	callq	0x47a310 <Kotlin_String_plusImpl>
+               	movq	24(%rsp), %rdi
+               	movq	%rdi, 264(%rsp)
+               	leaq	519669(%rip), %rsi      # 0x4e2b60 <__unnamed_23>
+               	callq	0x47b4d0 <Kotlin_String_plusImpl>

@@ -293,5 +294,5 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop
