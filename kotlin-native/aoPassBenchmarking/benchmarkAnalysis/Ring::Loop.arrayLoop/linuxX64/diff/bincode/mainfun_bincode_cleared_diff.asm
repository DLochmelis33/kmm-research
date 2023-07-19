--- ../../benchmarkAnalysis/Ring::Loop.arrayLoop/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:52:26.170554508 +0200
+++ ../../benchmarkAnalysis/Ring::Loop.arrayLoop/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:03:58.040344455 +0200

@@ -170,15 +170,15 @@
@@@[(3, 5)]@@@
-               	movl	8(%rax), %ebp
+               	movl	8(%rax), %ebx

@@ -192,18 +192,18 @@
@@@[(3, 4), (5, 7), (10, 13)]@@@
+               	movl	%ebx, 32(%rdx)
@@@@
-               	movl	%ebp, 32(%rdx)
+               	movl	32(%rdx), %ecx
@@@@
-               	leaq	149036(%rip), %rdx      # 0x447370 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
-               	movl	%ebp, %ecx
+               	leaq	152217(%rip), %rdx      # 0x448170 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>

@@ -243,15 +243,15 @@
@@@[(12, 13), (14, 15)]@@@
+               	movq	%rax, 288(%r12)
@@@@
-               	movaps	%xmm0, 112(%rsp)

@@ -261,30 +261,32 @@
@@@[(3, 5), (30, 34)]@@@
+               	movaps	%xmm0, 112(%rsp)
+               	movq	288(%r12), %rax
@@@@
-               	jmp	0x422f3a <kfun:#main(){}+0x65a>
-               	nopl	(%rax,%rax)
+               	jmp	0x4230da <kfun:#main(){}+0x66a>
+               	nopl	(%rax)

@@ -295,7 +297,7 @@
@@@[(3, 5)]@@@
-               	movl	%ebp, %r10d
+               	movl	%ebx, %r10d

@@ -326,163 +328,163 @@
@@@[(6, 12), (13, 17), (18, 22), (48, 50), (51, 61), (62, 64), (93, 95), (105, 109), (158, 168), (169, 171), (181, 185), (186, 188)]@@@
-               	movzwl	16(%rax,%rdi,2), %ebp
-               	movq	24(%r15), %rbx
-               	movq	%rbx, 160(%rsp)
+               	movzwl	16(%rax,%rdi,2), %ebx
+               	movq	24(%r15), %rbp
+               	movq	%rbp, 160(%rsp)
@@@@
-               	cmpl	%esi, 8(%rbx)
-               	jbe	0x42360e <kfun:#main(){}+0xd2e>
+               	cmpl	%esi, 8(%rbp)
+               	jbe	0x4237be <kfun:#main(){}+0xd4e>
@@@@
-               	movzwl	16(%rbx,%rax,2), %r8d
-               	movl	%ebp, %ecx
+               	movzwl	16(%rbp,%rax,2), %r8d
+               	movl	%ebx, %ecx
@@@@
-               	movq	24(%r15), %rbx
+               	movq	24(%r15), %rbp
@@@@
-               	jne	0x4231e4 <kfun:#main(){}+0x904>
-               	movq	%rbx, 168(%rsp)
-               	cmpl	%r12d, 8(%rbx)
-               	jbe	0x42360e <kfun:#main(){}+0xd2e>
-               	movq	(%rbx), %rcx
+               	jne	0x423384 <kfun:#main(){}+0x914>
+               	movq	%rbp, 168(%rsp)
+               	cmpl	%r12d, 8(%rbp)
+               	jbe	0x4237be <kfun:#main(){}+0xd4e>
+               	movq	(%rbp), %rcx
@@@@
-               	movw	%bp, 16(%rbx,%rcx,2)
+               	movw	%bx, 16(%rbp,%rcx,2)
@@@@
-               	movzwl	16(%rax,%rcx,2), %ebp
+               	movzwl	16(%rax,%rcx,2), %ebx
@@@@
-               	jmp	0x422f28 <kfun:#main(){}+0x648>
-               	nopw	(%rax,%rax)
+               	jmp	0x4230c8 <kfun:#main(){}+0x658>
+               	nopl	(%rax,%rax)
@@@@
-               	movq	24(%r15), %rbx
-               	movq	%rbx, 232(%rsp)
-               	cmpl	%r12d, 8(%rbx)
-               	jbe	0x42360e <kfun:#main(){}+0xd2e>
-               	movq	(%rbx), %rax
+               	movq	24(%r15), %rbp
+               	movq	%rbp, 232(%rsp)
+               	cmpl	%r12d, 8(%rbp)
+               	jbe	0x4237be <kfun:#main(){}+0xd4e>
+               	movq	(%rbp), %rax
@@@@
-               	movw	%bp, 16(%rbx,%rax,2)
+               	movw	%bx, 16(%rbp,%rax,2)
@@@@
-               	movl	%r10d, %ebp
-               	jmp	0x422f22 <kfun:#main(){}+0x642>
+               	movl	%r10d, %ebx
+               	jmp	0x4230c2 <kfun:#main(){}+0x652>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -572,41 +574,43 @@
@@@[(3, 11), (30, 38), (46, 48), (49, 50), (52, 54), (55, 56)]@@@
-               	movl	32(%r12), %eax
-               	movq	24(%r12), %rcx
-               	cmpl	44(%rcx), %eax
-               	jge	0x4234a7 <kfun:#main(){}+0xbc7>
+               	movq	24(%r12), %rax
+               	movl	44(%rax), %eax
+               	cmpl	%eax, 32(%r12)
+               	jge	0x423647 <kfun:#main(){}+0xbd7>
@@@@
-               	movl	32(%r12), %eax
-               	movq	24(%r12), %rcx
-               	cmpl	44(%rcx), %eax
-               	jl	0x423460 <kfun:#main(){}+0xb80>
+               	movq	24(%r12), %rax
+               	movl	44(%rax), %eax
+               	cmpl	%eax, 32(%r12)
+               	jl	0x423600 <kfun:#main(){}+0xb90>
@@@@
+               	movq	8(%rsp), %rcx
+               	movq	%rax, 288(%rcx)
@@@@
-               	movaps	%xmm0, 48(%rsp)
@@@@
+               	movaps	%xmm0, 48(%rsp)
+               	movq	288(%rcx), %rax
@@@@
-               	movq	8(%rsp), %rcx

@@ -630,11 +634,11 @@
@@@[(3, 7)]@@@
-               	jmp	0x4235a1 <kfun:#main(){}+0xcc1>
-               	nopl	(%rax)
+               	jmp	0x423751 <kfun:#main(){}+0xce1>
+               	nopl	(%rax,%rax)
