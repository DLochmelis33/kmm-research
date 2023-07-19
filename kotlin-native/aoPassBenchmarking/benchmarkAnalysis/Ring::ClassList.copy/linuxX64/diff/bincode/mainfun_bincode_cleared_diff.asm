--- ../../benchmarkAnalysis/Ring::ClassList.copy/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:51:29.980576590 +0200
+++ ../../benchmarkAnalysis/Ring::ClassList.copy/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:03:06.290360085 +0200

@@ -11,21 +11,21 @@
@@@[(8, 12), (14, 16)]@@@
-               	movq	-64(%rax), %r15
-               	movq	288(%r15), %rax
+               	movq	-64(%rax), %r14
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)

@@ -33,57 +33,57 @@
@@@[(3, 5), (7, 9), (11, 13), (19, 21), (22, 24), (34, 36), (38, 40), (42, 44), (63, 65), (67, 69)]@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	leaq	231216(%rip), %r12      # 0x45b7d0 <ktypeglobal:kotlin.collections.ArrayList#internal>
+               	leaq	236720(%rip), %r15      # 0x45cf10 <ktypeglobal:kotlin.collections.ArrayList#internal>
@@@@
-               	movq	%r12, 16(%rax)
+               	movq	%r15, 16(%rax)
@@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)

@@ -94,51 +94,51 @@
@@@[(7, 11), (18, 20), (30, 32), (39, 43), (49, 51), (62, 66)]@@@
-               	movq	%rax, 288(%r15)
-               	movq	296(%r15), %rdi
+               	movq	%rax, 288(%r14)
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%r12, 16(%rax)
+               	movq	%r15, 16(%rax)
@@@@
-               	movq	%r15, 184(%rsp)
+               	movq	%r14, 184(%rsp)
@@@@
-               	movq	184(%rsp), %r15
-               	movq	%rax, 288(%r15)
+               	movq	184(%rsp), %r14
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
-               	callq	0x41c470 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
-               	leaq	230703(%rip), %r12      # 0x45b7d0 <ktypeglobal:kotlin.collections.ArrayList#internal>
+               	callq	0x41c580 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
+               	leaq	236207(%rip), %r15      # 0x45cf10 <ktypeglobal:kotlin.collections.ArrayList#internal>

@@ -168,14 +168,14 @@
@@@[(3, 5)]@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%r14), %rdi

@@ -183,51 +183,51 @@
@@@[(3, 5), (7, 9), (11, 12), (13, 15), (18, 21), (32, 34), (36, 38), (40, 42), (44, 48), (50, 54), (58, 60), (62, 64)]@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	%rdx, 424(%rsp)
@@@@
+               	movq	%rdx, 424(%rsp)
+               	movl	32(%rdx), %ecx
@@@@
-               	leaq	149380(%rip), %rdx      # 0x447b40 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
-               	movl	%ebx, %ecx
+               	leaq	152577(%rip), %rdx      # 0x448980 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
@@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	callq	0x42af40 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r14
+               	callq	0x42b740 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r15
@@@@
-               	leaq	234364(%rip), %rax      # 0x45c7b0 <ktypeglobal:kotlin.text.StringBuilder#internal>
-               	movq	%rax, 16(%r14)
+               	leaq	239867(%rip), %rax      # 0x45def0 <ktypeglobal:kotlin.text.StringBuilder#internal>
+               	movq	%rax, 16(%r15)
@@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)

@@ -241,15 +241,15 @@
@@@[(12, 13), (14, 15)]@@@
+               	movq	%rax, 288(%r14)
@@@@
-               	movaps	%xmm0, 208(%rsp)

@@ -259,29 +259,31 @@
@@@[(3, 5), (6, 8), (10, 18), (20, 24), (25, 27), (28, 34)]@@@
+               	movaps	%xmm0, 208(%rsp)
+               	movq	288(%r14), %rax
@@@@
-               	movq	%r13, 288(%r15)
+               	movq	%r13, 288(%r14)
@@@@
-               	movl	32(%r14), %r15d
-               	cmpl	$2, %r15d
-               	jl	0x423220 <kfun:#main(){}+0x2b0>
-               	movq	24(%r14), %rax
+               	movl	32(%r15), %r14d
+               	cmpl	$2, %r14d
+               	jl	0x4233e0 <kfun:#main(){}+0x2b0>
+               	movq	24(%r15), %rax
@@@@
-               	je	0x423f9a <kfun:#main(){}+0x102a>
-               	addl	$-1, %r15d
+               	je	0x4241a3 <kfun:#main(){}+0x1073>
+               	addl	$-1, %r14d
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	cmpl	%r15d, 8(%rax)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
-               	movslq	%r15d, %rcx
+               	cmpl	%r14d, 8(%rax)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
+               	movslq	%r14d, %rcx

@@ -290,49 +292,49 @@
@@@[(3, 5), (10, 14), (30, 36), (37, 43), (46, 48), (55, 57), (58, 60)]@@@
-               	movl	%r15d, %esi
+               	movl	%r14d, %esi
@@@@
-               	movl	%esi, %r15d
-               	movl	32(%r14), %eax
+               	movl	%esi, %r14d
+               	movl	32(%r15), %eax
@@@@
-               	movq	%r15, %r13
-               	movq	%r14, %r15
-               	movl	%r11d, %r14d
-               	callq	0x4279d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	%r14d, %r11d
+               	movq	%r14, %r13
@@@@
-               	movq	%r13, %r15
+               	movl	%r11d, %r15d
+               	callq	0x428010 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	%r15d, %r11d
+               	movq	%r14, %r15
+               	movq	%r13, %r14
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	movq	24(%r14), %rbp
+               	movq	24(%r15), %rbp
@@@@
-               	leal	-1(%r15), %esi
+               	leal	-1(%r14), %esi

@@ -342,165 +344,165 @@
@@@[(9, 15), (24, 26), (30, 34), (35, 37), (38, 40), (46, 48), (55, 57), (63, 65), (72, 74), (75, 83), (98, 100), (104, 108), (109, 111), (112, 114), (124, 128), (129, 133), (134, 136), (137, 139), (151, 153), (154, 158), (159, 161), (162, 164), (178, 182), (183, 187), (190, 192), (198, 202), (204, 208), (212, 214), (217, 219), (223, 225)]@@@
-               	jne	0x423790 <kfun:#main(){}+0x820>
-               	cmpl	$3, 32(%r14)
-               	jl	0x423220 <kfun:#main(){}+0x2b0>
+               	jne	0x423960 <kfun:#main(){}+0x830>
+               	cmpl	$3, 32(%r15)
+               	jl	0x4233e0 <kfun:#main(){}+0x2b0>
@@@@
-               	movq	24(%r14), %rbp
+               	movq	24(%r15), %rbp
@@@@
-               	cmpl	%r15d, 8(%rbp)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
+               	cmpl	%r14d, 8(%rbp)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
@@@@
-               	movslq	%r15d, %rcx
+               	movslq	%r14d, %rcx
@@@@
-               	movq	24(%r14), %rcx
+               	movq	24(%r15), %rcx
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	addl	$-2, %r15d
-               	cmpl	%r15d, 8(%rax)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
-               	movslq	%r15d, %rcx
+               	addl	$-2, %r14d
+               	cmpl	%r14d, 8(%rax)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
+               	movslq	%r14d, %rcx
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	cmpl	%r15d, 8(%rax)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
+               	cmpl	%r14d, 8(%rax)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
@@@@
-               	movslq	%r15d, %rcx
+               	movslq	%r14d, %rcx
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	jmp	0x423595 <kfun:#main(){}+0x625>
-               	movq	24(%r14), %rax
+               	jmp	0x423765 <kfun:#main(){}+0x635>
+               	movq	24(%r15), %rax
@@@@
-               	cmpl	%r15d, 8(%rax)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
+               	cmpl	%r14d, 8(%rax)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
@@@@
-               	movslq	%r15d, %rcx
+               	movslq	%r14d, %rcx
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	movq	24(%r14), %rbp
+               	movq	24(%r15), %rbp
@@@@
-               	cmpl	%r15d, 8(%rbp)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
+               	cmpl	%r14d, 8(%rbp)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
@@@@
-               	movslq	%r15d, %rax
+               	movslq	%r14d, %rax
@@@@
-               	movq	24(%r14), %rax
+               	movq	24(%r15), %rax
@@@@
-               	jne	0x423220 <kfun:#main(){}+0x2b0>
-               	movq	24(%r14), %rax
+               	jne	0x4233e0 <kfun:#main(){}+0x2b0>
+               	movq	24(%r15), %rax
@@@@
-               	cmpl	%r15d, 8(%rax)
-               	jbe	0x423f9a <kfun:#main(){}+0x102a>
+               	cmpl	%r14d, 8(%rax)
+               	jbe	0x4241a3 <kfun:#main(){}+0x1073>
@@@@
-               	movslq	%r15d, %rcx
+               	movslq	%r14d, %rcx
@@@@
-               	movq	%rax, 288(%r15)
-               	movq	296(%r15), %rdi
+               	movq	%rax, 288(%r14)
+               	movq	296(%r14), %rdi
@@@@
-               	callq	0x42af40 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	leaq	16(%rax), %r14
+               	callq	0x42b740 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %r12
@@@@
-               	movq	%r14, 488(%rsp)
+               	movq	%r12, 488(%rsp)
@@@@
-               	movq	%r14, 488(%rsp)
+               	movq	%r12, 488(%rsp)
@@@@
-               	movq	(%r14), %rax
+               	movq	(%r12), %rax

@@ -508,19 +510,19 @@
@@@[(3, 5), (18, 22)]@@@
-               	movq	%r14, %rdi
+               	movq	%r12, %rdi
@@@@
-               	callq	0x41c470 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
-               	movq	(%r14), %rax
+               	callq	0x41c580 <kfun:kotlin.collections.ArrayList.addAtInternal#internal>
+               	movq	(%r12), %rax

@@ -528,49 +530,54 @@
@@@[(3, 5), (21, 22), (23, 24), (25, 27), (29, 31), (35, 37), (39, 41), (42, 43), (50, 52), (57, 58), (59, 60), (62, 64)]@@@
-               	movq	%r14, %rdi
+               	movq	%r12, %rdi
@@@@
+               	movq	%rax, 288(%r14)
@@@@
-               	movaps	%xmm0, 32(%rsp)
@@@@
+               	movaps	%xmm0, 32(%rsp)
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	288(%r15), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%r14)
@@@@
+               	movq	%r14, %rbx
@@@@
-               	movaps	%xmm0, 208(%rsp)
+               	movq	%rax, 288(%rbx)
@@@@
+               	movaps	%xmm0, 208(%rsp)
@@@@
+               	movq	288(%rbx), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%rbx)

@@ -581,22 +588,22 @@
@@@[(20, 22), (24, 26)]@@@
-               	movq	288(%r15), %rax
+               	movq	288(%rbx), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%rbx)

@@ -607,26 +614,25 @@
@@@[(10, 14), (16, 20), (21, 28)]@@@
-               	jmp	0x423d01 <kfun:#main(){}+0xd91>
-               	movq	296(%r15), %rdi
+               	jmp	0x423ef1 <kfun:#main(){}+0xdc1>
+               	movq	296(%rbx), %rdi
@@@@
-               	callq	0x42af40 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%r15, %rbx
+               	callq	0x42b740 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%r15, %rcx
@@@@
-               	movq	%r12, %rax
-               	leaq	16(%r15), %r12
-               	movq	$0, 8(%r15)
-               	movq	%rax, 16(%r15)
+               	leaq	16(%rax), %r12
+               	movq	$0, 8(%rax)
+               	movq	%rcx, 16(%rax)

@@ -651,8 +657,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x423ca7 <kfun:#main(){}+0xd37>
-               	nopl	(%rax,%rax)
+               	jmp	0x423e97 <kfun:#main(){}+0xd67>
+               	nopl	(%rax)

@@ -683,37 +689,39 @@
@@@[(16, 20), (22, 23), (24, 25), (29, 31), (33, 35)]@@@
-               	movq	184(%rsp), %r15
-               	movq	%rax, 288(%r15)
+               	movq	184(%rsp), %rbx
+               	movq	%rax, 288(%rbx)
@@@@
+               	movq	%rax, 288(%rbx)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
+               	movaps	%xmm0, 64(%rsp)
+               	movq	288(%rbx), %rax
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%rbx)

@@ -722,53 +730,54 @@
@@@[(18, 20), (34, 37), (39, 43), (51, 55), (57, 65)]@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rcx, 120(%rsp)
+               	movq	112(%rsp), %rax
+               	movq	%rax, 120(%rsp)
@@@@
-               	movq	16(%rax), %rdx
-               	movq	%rcx, 32(%rax)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
@@@@
-               	movq	%rax, 288(%r15)
-               	jmp	0x423f71 <kfun:#main(){}+0x1001>
+               	movq	%rax, 288(%rbx)
+               	jmp	0x42417a <kfun:#main(){}+0x104a>
@@@@
-               	callq	0x41afa0 <kfun:kotlin.collections#toMutableList__at__kotlin.collections.Collection<0:0>(){0§<kotlin.Any?>}kotlin.collections.MutableList<0:0>>
-               	jmp	0x423f6e <kfun:#main(){}+0xffe>
-               	leaq	248(%rsp), %rbx
-               	movq	296(%r15), %rdi
+               	callq	0x41b0b0 <kfun:kotlin.collections#toMutableList__at__kotlin.collections.Collection<0:0>(){0§<kotlin.Any?>}kotlin.collections.MutableList<0:0>>
+               	jmp	0x424177 <kfun:#main(){}+0x1047>
+               	leaq	248(%rsp), %rbp
+               	movq	296(%rbx), %rdi

@@ -785,35 +794,36 @@
@@@[(3, 5), (7, 9), (23, 26), (28, 32), (40, 42)]@@@
-               	movq	%rbx, %rsi
+               	movq	%rbp, %rsi
@@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rcx, 280(%rsp)
+               	movq	272(%rsp), %rax
+               	movq	%rax, 280(%rsp)
@@@@
-               	movq	16(%rax), %rdx
-               	movq	%rcx, 32(%rax)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
@@@@
-               	movq	%rax, 288(%r15)
+               	movq	%rax, 288(%rbx)

@@ -822,2304 +832,2304 @@
@@@[(8, 10), (21, 27)]@@@
-               	movq	296(%r15), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	callq	0x41a1c0 <ThrowInvalidReceiverTypeException>
-               	callq	0x419e30 <ThrowNullPointerException>
-               	nopl	(%rax,%rax)
+               	callq	0x41a2e0 <ThrowInvalidReceiverTypeException>
+               	callq	0x419f50 <ThrowNullPointerException>
+               	nopw	%cs:(%rax,%rax)
