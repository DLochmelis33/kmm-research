--- ../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:02.420603678 +0200
+++ ../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:01:45.150384320 +0200
@@ -10,7 +10,7 @@
                	movaps	%xmm0, 160(%rsp)
                	movaps	%xmm0, 144(%rsp)
                	movq	$0, 48(%rsp)
-               	leaq	236556(%rip), %rax      # 0x45b740 <ktypeglobal:IntStreamBenchmark#internal>
+               	leaq	237964(%rip), %rax      # 0x45bec0 <ktypeglobal:IntStreamBenchmark#internal>
                	orq	$3, %rax
                	movq	%rax, 40(%rsp)
                	movq	%fs:0, %rax
@@ -22,10 +22,10 @@
                	movq	%rax, 288(%rbp)
                	movabsq	$17179869184, %r14      # imm = 0x400000000
                	movq	%r14, 160(%rsp)
-               	movb	274887(%rip), %al       # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movb	276303(%rip), %al       # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x421b92 <kfun:#main(){}+0x92>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x421d92 <kfun:#main(){}+0x92>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	leaq	40(%rsp), %rax
                	movq	%rax, 168(%rsp)
                	xorps	%xmm0, %xmm0
@@ -39,25 +39,28 @@
                	movq	296(%rbp), %rdi
                	addq	$112, %rdi
                	movl	$32, %esi
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
                	leaq	16(%rax), %rbx
                	movq	$0, 8(%rax)
-               	leaq	235074(%rip), %rcx      # 0x45b230 <ktypeglobal:kotlin.ranges.IntRange#internal>
+               	leaq	236482(%rip), %rcx      # 0x45b9b0 <ktypeglobal:kotlin.ranges.IntRange#internal>
                	movq	%rcx, 16(%rax)
                	movq	%rbx, 24(%rsp)
                	movq	%rbx, %rdi
                	movl	$1, %esi
                	movl	$10000, %edx            # imm = 0x2710
-               	callq	0x420910 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	callq	0x420ae0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	movq	%rbx, 24(%rsp)
                	movq	%rbx, 48(%rsp)
                	movq	8(%rsp), %rax
+               	movq	%rax, 288(%rbp)
                	xorps	%xmm0, %xmm0
-               	movaps	%xmm0, 64(%rsp)
                	movaps	%xmm0, 128(%rsp)
                	movaps	%xmm0, 112(%rsp)
                	movaps	%xmm0, 96(%rsp)
                	movaps	%xmm0, 80(%rsp)
+               	movaps	%xmm0, 64(%rsp)
                	xorps	%xmm0, %xmm0
+               	movq	288(%rbp), %rax
                	movq	%rax, 72(%rsp)
                	leaq	64(%rsp), %rax
                	movq	%rax, 288(%rbp)
@@ -72,7 +75,7 @@
                	movq	48(%rsp), %rbx
                	movq	%rbx, 24(%rsp)
                	testq	%rbx, %rbx
-               	je	0x421e75 <kfun:#main(){}+0x375>
+               	je	0x422085 <kfun:#main(){}+0x385>
                	leaq	128(%rsp), %r14
                	leaq	120(%rsp), %r12
                	movq	%rbx, 88(%rsp)
@@ -81,10 +84,10 @@
                	movq	296(%rbp), %rdi
                	addq	$112, %rdi
                	movl	$24, %esi
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
                	leaq	16(%rax), %r13
                	movq	$0, 8(%rax)
-               	leaq	228721(%rip), %rcx      # 0x459a40 <ktypeglobal:kotlin.collections.object-2#internal>
+               	leaq	230110(%rip), %rcx      # 0x45a1c0 <ktypeglobal:kotlin.collections.object-2#internal>
                	movq	%rcx, 16(%rax)
                	movq	%r13, 96(%rsp)
                	movq	%rbx, 24(%rax)
@@ -92,39 +95,38 @@
                	movq	296(%rbp), %rdi
                	addq	$112, %rdi
                	movl	$40, %esi
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
                	leaq	16(%rax), %rbx
                	movq	$0, 8(%rax)
-               	leaq	233607(%rip), %rcx      # 0x45ad90 <ktypeglobal:kotlin.sequences.FilteringSequence#internal>
+               	leaq	234996(%rip), %rcx      # 0x45b510 <ktypeglobal:kotlin.sequences.FilteringSequence#internal>
                	movq	%rcx, 16(%rax)
                	movq	%rbx, 104(%rsp)
                	movq	%r13, 24(%rax)
                	movb	$1, 40(%rax)
-               	leaq	254719(%rip), %rcx      # 0x460020 <__unnamed_55>
+               	leaq	256108(%rip), %rcx      # 0x4607a0 <__unnamed_55>
                	movq	%rcx, 32(%rax)
                	movq	%rbx, 104(%rsp)
                	movq	%rbp, 56(%rsp)
                	movq	296(%rbp), %rdi
                	addq	$112, %rdi
                	movl	$32, %esi
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
                	leaq	16(%rax), %rdi
                	movq	$0, 8(%rax)
-               	leaq	233241(%rip), %rcx      # 0x45ac70 <ktypeglobal:kotlin.sequences.TransformingSequence#internal>
+               	leaq	234630(%rip), %rcx      # 0x45b3f0 <ktypeglobal:kotlin.sequences.TransformingSequence#internal>
                	movq	%rcx, 16(%rax)
                	movq	%rdi, 112(%rsp)
                	movq	%rbx, 24(%rax)
-               	leaq	254653(%rip), %rcx      # 0x460028 <__unnamed_56>
+               	leaq	256042(%rip), %rcx      # 0x4607a8 <__unnamed_56>
                	movq	%rcx, 32(%rax)
                	movq	%rdi, 112(%rsp)
                	movq	%r12, %rsi
-               	callq	0x41fd00 <kfun:kotlin.sequences.TransformingSequence#iterator(){}kotlin.collections.Iterator<1:1>>
+               	callq	0x41feb0 <kfun:kotlin.sequences.TransformingSequence#iterator(){}kotlin.collections.Iterator<1:1>>
                	movq	%rax, %r13
-               	jmp	0x421dbf <kfun:#main(){}+0x2bf>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x421fcf <kfun:#main(){}+0x2cf>
+               	nopw	(%rax,%rax)
                	movl	$3, %edi
-               	callq	0x425ed0 <LookupTLS>
+               	callq	0x426570 <LookupTLS>
                	movq	(%rax), %rbp
                	movq	%rbp, 136(%rsp)
                	movl	8(%rbp), %r12d
@@ -146,11 +148,11 @@
                	movq	%r13, %rdi
                	callq	*(%rax)
                	testb	%al, %al
-               	je	0x421e4f <kfun:#main(){}+0x34f>
-               	movzbl	274272(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x42205f <kfun:#main(){}+0x35f>
+               	movzbl	275672(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
                	testb	$1, %al
-               	je	0x421df9 <kfun:#main(){}+0x2f9>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	je	0x422009 <kfun:#main(){}+0x309>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
                	movq	(%r13), %rax
                	andq	$-4, %rax
                	movq	(%rax), %rax
@@ -165,11 +167,11 @@
                	movq	%rax, %rbx
                	movq	%r15, %rax
                	cmpl	$2, -68(%r15)
-               	je	0x421d90 <kfun:#main(){}+0x290>
+               	je	0x421fa0 <kfun:#main(){}+0x2a0>
                	leaq	-68(%r15), %rdi
-               	leaq	59(%rip), %rsi          # 0x421e80 <kfun:Blackhole.$init_thread_local#internal>
-               	callq	0x43b190 <CallInitThreadLocal>
-               	jmp	0x421d90 <kfun:#main(){}+0x290>
+               	leaq	59(%rip), %rsi          # 0x422090 <kfun:Blackhole.$init_thread_local#internal>
+               	callq	0x43bee0 <CallInitThreadLocal>
+               	jmp	0x421fa0 <kfun:#main(){}+0x2a0>
                	movq	152(%rsp), %rax
                	movq	56(%rsp), %rcx
                	movq	%rax, 288(%rcx)
@@ -181,6 +183,6 @@
                	popq	%r15
                	popq	%rbp
                	retq
-               	callq	0x419bd0 <ThrowNullPointerException>
+               	callq	0x419d50 <ThrowNullPointerException>
                	nopw	(%rax,%rax)
 
