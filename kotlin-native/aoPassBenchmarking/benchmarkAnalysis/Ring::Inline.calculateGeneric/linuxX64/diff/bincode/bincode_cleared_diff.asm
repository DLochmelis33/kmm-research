--- ../../benchmarkAnalysis/Ring::Inline.calculateGeneric/linuxX64/baseline/bincode/bincode.asm	2023-07-19 02:53:37.190532617 +0200
+++ ../../benchmarkAnalysis/Ring::Inline.calculateGeneric/linuxX64/unordered/bincode/bincode.asm	2023-07-19 03:05:05.370323690 +0200

@@ -1,5 +1,5 @@
@@@[(1, 3)]@@@
-../../benchmarkAnalysis/Ring::Inline.calculateGeneric/linuxX64/baseline/main.kexe:	file format elf64-x86-64
+../../benchmarkAnalysis/Ring::Inline.calculateGeneric/linuxX64/unordered/main.kexe:	file format elf64-x86-64

@@ -49,17 +49,17 @@
@@@[(3, 5), (9, 11), (15, 17)]@@@
-<strlen@plt>:
+<free@plt>:
@@@@
-<memcpy@plt>:
+<strlen@plt>:
@@@@
-<free@plt>:
+<memcpy@plt>:

@@ -503,41 +503,41 @@
@@@[(3, 5)]@@@
-               	subq	$248, %rsp
+               	subq	$264, %rsp              # imm = 0x108

@@ -551,13 +551,13 @@
@@@[(11, 13)]@@@
-               	leaq	160(%r13), %r12
+               	leaq	160(%r13), %r14

@@ -590,15 +590,15 @@
@@@[(9, 13)]@@@
-               	movq	%r12, 128(%rbx)
-               	leaq	71497(%rip), %rax       # 0x425630 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
+               	movq	%r14, 128(%rbx)
+               	leaq	73321(%rip), %rax       # 0x425d50 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>

@@ -606,78 +606,76 @@
@@@[(14, 22), (23, 55), (58, 64), (65, 74), (76, 78), (79, 90), (105, 109), (110, 112), (114, 118)]@@@
-               	movq	168(%r13), %r14
-               	movq	%r12, 208(%rsp)
-               	leaq	71533(%rip), %rax       # 0x4256f0 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	168(%r13), %r12
+               	movq	%r14, 216(%rsp)
+               	leaq	73357(%rip), %rax       # 0x425e10 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	%rax, 240(%rsp)
+               	leaq	73358(%rip), %rax       # 0x425e20 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
@@@@
-               	leaq	71534(%rip), %rax       # 0x425700 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
-               	movq	%rax, 224(%rsp)
-               	movdqu	224(%rsp), %xmm0
-               	movq	$0, 224(%rsp)
-               	movups	72(%r14), %xmm1
-               	movaps	%xmm1, 48(%rsp)
-               	movq	208(%rsp), %rax
-               	movq	%rax, 72(%r14)
-               	movq	216(%rsp), %rax
-               	movq	%rax, 80(%r14)
-               	movdqu	88(%r14), %xmm1
-               	movdqa	%xmm1, 64(%rsp)
-               	movdqu	%xmm0, 88(%r14)
-               	movq	%xmm1, %rcx
-               	testq	%rcx, %rcx
-               	je	0x414043 <_GLOBAL__sub_I_GlobalData.cpp+0x3e3>
+               	movq	232(%rsp), %rax
+               	movq	240(%rsp), %rcx
+               	movq	$0, 232(%rsp)
+               	movups	72(%r12), %xmm0
+               	movaps	%xmm0, 48(%rsp)
+               	movq	216(%rsp), %rdx
+               	movq	%rdx, 72(%r12)
+               	movq	224(%rsp), %rdx
+               	movq	%rdx, 80(%r12)
+               	movdqu	88(%r12), %xmm0
+               	movdqa	%xmm0, 64(%rsp)
+               	movq	%rax, 88(%r12)
+               	movq	%rcx, 96(%r12)
+               	movq	%xmm0, %rax
+               	testq	%rax, %rax
+               	je	0x41400b <_GLOBAL__sub_I_GlobalData.cpp+0x3ab>
@@@@
-               	callq	*%rcx
-               	movq	88(%r14), %rcx
-               	movq	$0, 192(%rsp)
+               	callq	*%rax
+               	movq	$0, 200(%rsp)
+               	movq	88(%r12), %rcx
@@@@
-               	movq	%rbp, 240(%rsp)
-               	je	0x414061 <_GLOBAL__sub_I_GlobalData.cpp+0x401>
-               	leaq	72(%r14), %rsi
-               	leaq	176(%rsp), %rdi
+               	movq	%rbp, 248(%rsp)
+               	movq	%r14, 256(%rsp)
+               	je	0x41405d <_GLOBAL__sub_I_GlobalData.cpp+0x3fd>
+               	leaq	72(%r12), %rsi
+               	leaq	184(%rsp), %rdi
@@@@
-               	movups	88(%r14), %xmm0
+               	movups	88(%r12), %xmm0
@@@@
-               	movups	%xmm0, 192(%rsp)
-               	jmp	0x414071 <_GLOBAL__sub_I_GlobalData.cpp+0x411>
-               	movq	%xmm0, %rcx
-               	movq	$0, 192(%rsp)
-               	testq	%rcx, %rcx
-               	movq	%rbp, 240(%rsp)
-               	jne	0x414019 <_GLOBAL__sub_I_GlobalData.cpp+0x3b9>
-               	movups	192(%rsp), %xmm0
+               	movups	%xmm0, 200(%rsp)
+               	jmp	0x41406d <_GLOBAL__sub_I_GlobalData.cpp+0x40d>
+               	movups	200(%rsp), %xmm0
@@@@
-               	movq	%r14, 8(%rbx)
-               	leaq	314492(%rip), %rax      # 0x460d40 <kotlin::mm::GlobalData::instance_+0x50>
+               	movq	%r12, 8(%rbx)
+               	leaq	316360(%rip), %rax      # 0x461488 <kotlin::mm::GlobalData::instance_+0x50>
@@@@
-               	movq	%r14, 24(%rbx)
+               	movq	%r12, 24(%rbx)
@@@@
-               	movq	%r14, 48(%rbx)
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
+               	movq	%r12, 48(%rbx)
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>

@@ -697,22 +695,22 @@
@@@[(6, 10), (11, 13), (23, 25)]@@@
-               	movabsq	$9223372036854775807, %r15 # imm = 0x7FFFFFFFFFFFFFFF
-               	leaq	1(%r15), %rax
+               	movabsq	$9223372036854775807, %r14 # imm = 0x7FFFFFFFFFFFFFFF
+               	leaq	1(%r14), %rax
@@@@
-               	cmovnsq	%r15, %rax
+               	cmovnsq	%r14, %rax
@@@@
-               	addq	%r15, %rdx
+               	addq	%r14, %rdx

@@ -728,185 +726,244 @@
@@@[(3, 7), (14, 61), (73, 84), (85, 106), (109, 111), (128, 135), (139, 146), (154, 158), (187, 189), (193, 196), (201, 244), (245, 249), (255, 258), (263, 267), (270, 274), (277, 279), (282, 284), (303, 319), (323, 330), (331, 335)]@@@
-               	movw	$256, 31(%rsp)          # imm = 0x100
+               	movq	(%rsp), %rbp
+               	movb	$0, 15(%rbp)
+               	movb	$1, 32(%rsp)
@@@@
-               	leaq	96(%rsp), %rbp
-               	movq	%rbp, 80(%rsp)
-               	movq	16(%rsp), %rax
-               	movq	23(%rsp), %rcx
-               	movq	%rax, 96(%rsp)
-               	movq	%rcx, 103(%rsp)
-               	movq	$15, 88(%rsp)
-               	movw	$256, 111(%rsp)         # imm = 0x100
-               	leaq	60236(%rip), %r15       # 0x422da0 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
-               	movq	%r15, 120(%rsp)
+               	movb	$0, 112(%rsp)
+               	cmpb	$0, 32(%rsp)
+               	je	0x414275 <_GLOBAL__sub_I_GlobalData.cpp+0x615>
+               	leaq	96(%rsp), %rax
+               	movq	%rax, 80(%rsp)
+               	movq	8(%rsp), %r15
+               	cmpq	$15, %r15
+               	jbe	0x414263 <_GLOBAL__sub_I_GlobalData.cpp+0x603>
+               	testq	%r15, %r15
+               	js	0x41462e <_GLOBAL__sub_I_GlobalData.cpp+0x9ce>
+               	leaq	1(%r15), %rdi
+               	movl	$1, %esi
+               	callq	0x4136c0 <calloc@plt>
+               	movq	%rax, 80(%rsp)
+               	movq	%r15, 96(%rsp)
+               	testq	%r15, %r15
+               	je	0x41428b <_GLOBAL__sub_I_GlobalData.cpp+0x62b>
+               	cmpq	$1, %r15
+               	jne	0x41427d <_GLOBAL__sub_I_GlobalData.cpp+0x61d>
+               	movb	(%rbp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x41428b <_GLOBAL__sub_I_GlobalData.cpp+0x62b>
+               	movb	$1, %r14b
+               	xorl	%r15d, %r15d
+               	jmp	0x4142a5 <_GLOBAL__sub_I_GlobalData.cpp+0x645>
+               	movq	%rax, %rdi
+               	movq	%rbp, %rsi
+               	movq	%r15, %rdx
+               	callq	0x4136f0 <memcpy@plt>
+               	movq	%r15, 88(%rsp)
+               	movq	80(%rsp), %rax
+               	movb	$0, (%rax,%r15)
+               	movb	$1, 112(%rsp)
+               	movb	$1, %r15b
+               	xorl	%r14d, %r14d
+               	leaq	61700(%rip), %rbp       # 0x4233b0 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
+               	movq	%rbp, 120(%rsp)
@@@@
-               	movq	%rax, %rcx
-               	addq	$56, %rcx
-               	movq	%rcx, 40(%rax)
-               	movq	80(%rsp), %rdx
-               	cmpq	%rbp, %rdx
-               	je	0x4142b0 <_GLOBAL__sub_I_GlobalData.cpp+0x650>
+               	testb	%r14b, %r14b
+               	leaq	16(%rsp), %r14
+               	jne	0x41433f <_GLOBAL__sub_I_GlobalData.cpp+0x6df>
+               	movq	%rax, %rdx
+               	addq	$56, %rdx
@@@@
-               	movq	96(%rsp), %rcx
-               	movq	%rcx, 56(%rax)
-               	jmp	0x4142b9 <_GLOBAL__sub_I_GlobalData.cpp+0x659>
-               	movdqu	(%rbp), %xmm0
-               	movdqu	%xmm0, (%rcx)
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 48(%rax)
-               	movq	%rbp, 80(%rsp)
+               	movq	80(%rsp), %rsi
+               	leaq	96(%rsp), %rcx
+               	cmpq	%rcx, %rsi
+               	je	0x414317 <_GLOBAL__sub_I_GlobalData.cpp+0x6b7>
+               	movq	%rsi, 40(%rax)
+               	movq	96(%rsp), %rdx
+               	movq	%rdx, 56(%rax)
+               	jmp	0x41431f <_GLOBAL__sub_I_GlobalData.cpp+0x6bf>
+               	movdqu	(%rcx), %xmm0
+               	movdqu	%xmm0, (%rdx)
+               	movq	88(%rsp), %rdx
+               	movq	%rdx, 48(%rax)
+               	movq	%rcx, 80(%rsp)
@@@@
-               	movq	%r15, 80(%rax)
+               	movq	%rbp, 80(%rax)
@@@@
-               	cmpq	%rbp, %rdi
-               	je	0x414322 <_GLOBAL__sub_I_GlobalData.cpp+0x6c2>
-               	callq	0x4136f0 <free@plt>
+               	leaq	96(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x41438d <_GLOBAL__sub_I_GlobalData.cpp+0x72d>
+               	callq	0x4136d0 <free@plt>
@@@@
-               	leaq	16(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x41433c <_GLOBAL__sub_I_GlobalData.cpp+0x6dc>
-               	callq	0x4136f0 <free@plt>
+               	cmpq	%r14, %rdi
+               	je	0x4143a2 <_GLOBAL__sub_I_GlobalData.cpp+0x742>
+               	callq	0x4136d0 <free@plt>
@@@@
-               	movq	64(%r14), %rbp
-               	movq	%rbx, 64(%r14)
+               	movq	64(%r12), %rbp
+               	movq	%rbx, 64(%r12)
@@@@
-               	movq	%r13, %r15
-               	addq	$480, %r15              # imm = 0x1E0
@@@@
-               	leaq	16(%rsp), %rax
-               	movq	%rax, (%rsp)
+               	movq	%r14, (%rsp)
@@@@
-               	movq	$0, 176(%rsp)
-               	movq	%r12, 48(%rsp)
-               	leaq	72(%rsp), %rbx
-               	movq	%rbx, 56(%rsp)
-               	movq	%rax, 72(%rsp)
-               	movw	$100, 80(%rsp)
-               	movq	$9, 64(%rsp)
+               	movq	$0, 184(%rsp)
+               	movq	256(%rsp), %rax
+               	movq	%rax, 48(%rsp)
+               	movb	$0, 88(%rsp)
+               	leaq	72(%rsp), %rbp
+               	movq	%rbp, 56(%rsp)
+               	movq	8(%rsp), %rbx
+               	cmpq	$15, %rbx
+               	jbe	0x4144ba <_GLOBAL__sub_I_GlobalData.cpp+0x85a>
+               	testq	%rbx, %rbx
+               	js	0x41462e <_GLOBAL__sub_I_GlobalData.cpp+0x9ce>
+               	leaq	1(%rbx), %rdi
+               	movl	$1, %esi
+               	callq	0x4136c0 <calloc@plt>
+               	movq	%rax, 56(%rsp)
+               	movq	%rbx, 72(%rsp)
+               	testq	%rbx, %rbx
+               	jne	0x4144c2 <_GLOBAL__sub_I_GlobalData.cpp+0x862>
+               	jmp	0x4144de <_GLOBAL__sub_I_GlobalData.cpp+0x87e>
+               	movq	%rbp, %rax
+               	testq	%rbx, %rbx
+               	je	0x4144de <_GLOBAL__sub_I_GlobalData.cpp+0x87e>
+               	cmpq	$1, %rbx
+               	jne	0x4144d0 <_GLOBAL__sub_I_GlobalData.cpp+0x870>
+               	movb	16(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x4144de <_GLOBAL__sub_I_GlobalData.cpp+0x87e>
+               	movq	%rax, %rdi
+               	movq	%r14, %rsi
+               	movq	%rbx, %rdx
+               	callq	0x4136f0 <memcpy@plt>
+               	movq	%r13, %r12
+               	addq	$480, %r12              # imm = 0x1E0
+               	movq	%rbx, 64(%rsp)
+               	movq	56(%rsp), %rax
+               	movb	$0, (%rax,%rbx)
@@@@
-               	leaq	70382(%rip), %rbp       # 0x425730 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
-               	movq	%rbp, 96(%rsp)
+               	leaq	72014(%rip), %rbx       # 0x425e50 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
+               	movq	%rbx, 96(%rsp)
@@@@
-               	movq	%r12, 8(%rax)
+               	movq	48(%rsp), %rcx
+               	movq	%rcx, 8(%rax)
@@@@
-               	cmpq	%rbx, %rdx
-               	je	0x414487 <_GLOBAL__sub_I_GlobalData.cpp+0x827>
+               	cmpq	%rbp, %rdx
+               	je	0x41454c <_GLOBAL__sub_I_GlobalData.cpp+0x8ec>
@@@@
-               	jmp	0x41448f <_GLOBAL__sub_I_GlobalData.cpp+0x82f>
-               	movdqu	(%rbx), %xmm0
+               	jmp	0x414555 <_GLOBAL__sub_I_GlobalData.cpp+0x8f5>
+               	movdqu	(%rbp), %xmm0
@@@@
-               	movq	%rbx, 56(%rsp)
+               	movq	%rbp, 56(%rsp)
@@@@
-               	movq	%rbp, 56(%rax)
+               	movq	%rbx, 56(%rax)
@@@@
-               	cmpq	%rbx, %rdi
-               	je	0x41450c <_GLOBAL__sub_I_GlobalData.cpp+0x8ac>
-               	callq	0x4136f0 <free@plt>
-               	cmpq	$0, (%r15)
-               	jne	0x4147bf <_GLOBAL__sub_I_GlobalData.cpp+0xb5f>
-               	movq	176(%rsp), %rax
-               	movq	%rax, (%r15)
-               	movq	$0, 176(%rsp)
+               	cmpq	%rbp, %rdi
+               	je	0x4145d2 <_GLOBAL__sub_I_GlobalData.cpp+0x972>
+               	callq	0x4136d0 <free@plt>
+               	cmpq	$0, (%r12)
+               	jne	0x414889 <_GLOBAL__sub_I_GlobalData.cpp+0xc29>
+               	movq	184(%rsp), %rax
+               	movq	%rax, (%r12)
+               	movq	$0, 184(%rsp)
@@@@
-               	leaq	16(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x414547 <_GLOBAL__sub_I_GlobalData.cpp+0x8e7>
-               	callq	0x4136f0 <free@plt>
+               	cmpq	%r14, %rdi
+               	je	0x41460a <_GLOBAL__sub_I_GlobalData.cpp+0x9aa>
+               	callq	0x4136d0 <free@plt>
@@@@
-               	movq	%r13, 313503(%rip)      # 0x460df8 <kotlin::mm::GlobalData::instance_+0x108>
-               	addq	$248, %rsp
+               	movq	%r13, 315172(%rip)      # 0x461540 <kotlin::mm::GlobalData::instance_+0x108>
+               	addq	$264, %rsp              # imm = 0x108

@@ -914,185 +971,187 @@
@@@[(3, 5), (49, 55), (59, 66), (92, 102), (118, 128), (132, 136), (148, 152), (175, 181), (194, 202), (217, 221), (238, 243), (244, 246), (247, 254), (271, 272)]@@@
+               	leaq	198795(%rip), %rdi      # 0x444ec0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x4362a0 <std::__throw_length_error(char const*)>
@@@@
-               	cmpq	%rbx, %rdi
-               	je	0x414604 <_GLOBAL__sub_I_GlobalData.cpp+0x9a4>
-               	callq	0x4136f0 <free@plt>
+               	cmpq	%rbp, %rdi
+               	je	0x4146d3 <_GLOBAL__sub_I_GlobalData.cpp+0xa73>
+               	callq	0x4136d0 <free@plt>
@@@@
-               	leaq	16(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x41461e <_GLOBAL__sub_I_GlobalData.cpp+0x9be>
-               	callq	0x4136f0 <free@plt>
+               	cmpq	%r14, %rdi
+               	je	0x4146e8 <_GLOBAL__sub_I_GlobalData.cpp+0xa88>
+               	callq	0x4136d0 <free@plt>
@@@@
-               	leaq	40(%rbx), %r12
-               	movq	%r12, %rdi
-               	callq	0x43bdf8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 305459(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x41468f <_GLOBAL__sub_I_GlobalData.cpp+0xa2f>
+               	leaq	40(%rbx), %r15
+               	movq	%r15, %rdi
+               	callq	0x43cc38 <std::condition_variable::notify_all()>
+               	cmpq	$0, 305257(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x414759 <_GLOBAL__sub_I_GlobalData.cpp+0xaf9>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43bdf8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 305385(%rip)        # 0x45efb8 <write+0x45efb8>
-               	jne	0x414660 <_GLOBAL__sub_I_GlobalData.cpp+0xa00>
-               	jmp	0x4146e9 <_GLOBAL__sub_I_GlobalData.cpp+0xa89>
+               	movq	%r15, %rdi
+               	callq	0x43cc38 <std::condition_variable::notify_all()>
+               	cmpq	$0, 305183(%rip)        # 0x45efb8 <write+0x45efb8>
+               	jne	0x41472a <_GLOBAL__sub_I_GlobalData.cpp+0xaca>
+               	jmp	0x4147b3 <_GLOBAL__sub_I_GlobalData.cpp+0xb53>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43bdf8 <std::condition_variable::notify_all()>
+               	movq	%r15, %rdi
+               	callq	0x43cc38 <std::condition_variable::notify_all()>
@@@@
-               	callq	0x43bdca <std::condition_variable::~condition_variable()>
-               	leaq	16(%rbx), %r12
+               	callq	0x43cc0a <std::condition_variable::~condition_variable()>
+               	leaq	16(%rbx), %r15
@@@@
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%r12, %rdi
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r15, %rdi
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	movq	%r15, %rdi
-               	callq	0x423230 <kotlin::ScopedThread::~ScopedThread()>
-               	movq	240(%rsp), %rdi
-               	callq	0x426990 <GCStateHolder::~GCStateHolder()>
+               	movq	%r12, %rdi
+               	callq	0x423840 <kotlin::ScopedThread::~ScopedThread()>
+               	movq	248(%rsp), %rdi
+               	callq	0x427160 <GCStateHolder::~GCStateHolder()>
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x423220 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x423830 <std::thread::~thread()>
@@@@
-               	cmpb	$0, 112(%rsp)
-               	jne	0x414826 <_GLOBAL__sub_I_GlobalData.cpp+0xbc6>
-               	jmp	0x414835 <_GLOBAL__sub_I_GlobalData.cpp+0xbd5>
+               	movb	112(%rsp), %r15b
+               	jmp	0x4148ee <_GLOBAL__sub_I_GlobalData.cpp+0xc8e>
@@@@
+               	testb	%r15b, %r15b
+               	je	0x414907 <_GLOBAL__sub_I_GlobalData.cpp+0xca7>
@@@@
-               	cmpq	%rbp, %rdi
-               	je	0x414835 <_GLOBAL__sub_I_GlobalData.cpp+0xbd5>
-               	callq	0x4136f0 <free@plt>
+               	leaq	96(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x414907 <_GLOBAL__sub_I_GlobalData.cpp+0xca7>
+               	callq	0x4136d0 <free@plt>
@@@@
-               	nop

@@ -1729,7 +1788,7 @@
@@@[(3, 5)]@@@
-               	movl	%esi, %r12d
+               	movl	%esi, %ebp

@@ -1750,111 +1809,90 @@
@@@[(6, 14), (15, 17), (30, 32), (34, 38), (48, 62), (63, 170)]@@@
-               	je	0x4152a3 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x93>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testl	%r12d, %r12d
-               	js	0x415474 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x264>
+               	je	0x415372 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x92>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	%ebp, %ebp
+               	js	0x4154d9 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f9>
@@@@
-               	movl	%r12d, %eax
+               	movl	%ebp, %eax
@@@@
-               	movl	%r12d, 24(%rcx)
+               	movl	%ebp, 24(%rcx)
@@@@
-               	cmpl	%r12d, %edx
-               	cmovlel	%edx, %r12d
+               	cmpl	%ebp, %edx
+               	cmovlel	%edx, %ebp
@@@@
-               	jne	0x41552a <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x31a>
-               	testl	%r12d, %r12d
-               	js	0x41546f <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x25f>
-               	cmpl	%r12d, 8(%rbx)
-               	jb	0x41546f <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x25f>
-               	cmpl	%r12d, 24(%rcx)
-               	jb	0x41546f <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x25f>
+               	jne	0x41558e <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x2ae>
+               	testl	%ebp, %ebp
+               	js	0x4154d4 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f4>
+               	cmpl	%ebp, 8(%rbx)
+               	jb	0x4154d4 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f4>
+               	cmpl	%ebp, 24(%rcx)
+               	jb	0x4154d4 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f4>
@@@@
-               	testl	%r12d, %r12d
-               	jle	0x41544c <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x23c>
-               	leaq	32(%rcx), %r10
-               	leaq	16(%rbx), %rbp
-               	movl	%r12d, %r9d
-               	cmpl	$1, %r12d
-               	je	0x415383 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x173>
-               	leaq	(%rbx,%r9,8), %rdx
-               	addq	$16, %rdx
-               	cmpq	%rdx, %r10
-               	jae	0x41541b <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x20b>
-               	leaq	(%rcx,%r9,8), %rdx
-               	addq	$32, %rdx
-               	cmpq	%rdx, %rbp
-               	jae	0x41541b <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x20b>
-               	xorl	%esi, %esi
-               	movl	%r9d, %edx
-               	subl	%esi, %edx
-               	movq	%rsi, %r8
-               	notq	%r8
-               	addq	%r9, %r8
-               	andq	$7, %rdx
-               	je	0x4153b3 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1a3>
-               	nopl	(%rax)
-               	movq	(%rbp,%rsi,8), %rdi
-               	movq	%rdi, (%r10,%rsi,8)
-               	addq	$1, %rsi
-               	addq	$-1, %rdx
-               	jne	0x4153a0 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x190>
-               	cmpq	$7, %r8
-               	jb	0x41544c <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x23c>
-               	nopl	(%rax)
-               	movq	16(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 32(%rcx,%rsi,8)
-               	movq	24(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 40(%rcx,%rsi,8)
-               	movq	32(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 48(%rcx,%rsi,8)
-               	movq	40(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 56(%rcx,%rsi,8)
-               	movq	48(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 64(%rcx,%rsi,8)
-               	movq	56(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 72(%rcx,%rsi,8)
-               	movq	64(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 80(%rcx,%rsi,8)
-               	movq	72(%rbx,%rsi,8), %rdx
-               	movq	%rdx, 88(%rcx,%rsi,8)
-               	addq	$8, %rsi
-               	cmpq	%rsi, %r9
-               	jne	0x4153c0 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1b0>
-               	jmp	0x41544c <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x23c>
-               	movl	%r9d, %esi
-               	andl	$-2, %esi
-               	xorl	%edx, %edx
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
-               	movups	(%rbp,%rdx,8), %xmm0
-               	movups	%xmm0, (%r10,%rdx,8)
-               	addq	$2, %rdx
-               	cmpq	%rdx, %rsi
-               	jne	0x415430 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x220>
-               	cmpq	%r9, %rsi
-               	jne	0x415385 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x175>
+               	testl	%ebp, %ebp
+               	jle	0x4154b1 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1d1>
+               	movl	%ebp, %esi
+               	leaq	-1(%rsi), %rdi
+               	movl	%esi, %edx
+               	andl	$7, %edx
+               	cmpq	$7, %rdi
+               	jae	0x41542b <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x14b>
+               	xorl	%edi, %edi
+               	jmp	0x415489 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1a9>
+               	andl	$-8, %esi
+               	xorl	%edi, %edi
+               	movq	16(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 32(%rcx,%rdi,8)
+               	movq	24(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 40(%rcx,%rdi,8)
+               	movq	32(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 48(%rcx,%rdi,8)
+               	movq	40(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 56(%rcx,%rdi,8)
+               	movq	48(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 64(%rcx,%rdi,8)
+               	movq	56(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 72(%rcx,%rdi,8)
+               	movq	64(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 80(%rcx,%rdi,8)
+               	movq	72(%rbx,%rdi,8), %rbp
+               	movq	%rbp, 88(%rcx,%rdi,8)
+               	addq	$8, %rdi
+               	cmpq	%rdi, %rsi
+               	jne	0x415430 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x150>
+               	testq	%rdx, %rdx
+               	je	0x4154b1 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1d1>
+               	leaq	(%rbx,%rdi,8), %rsi
+               	addq	$16, %rsi
+               	leaq	(%rcx,%rdi,8), %rcx
+               	addq	$32, %rcx
+               	xorl	%edi, %edi
+               	movq	(%rsi,%rdi,8), %rbp
+               	movq	%rbp, (%rcx,%rdi,8)
+               	addq	$1, %rdi
+               	cmpq	%rdi, %rdx
+               	jne	0x4154a0 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1c0>

@@ -1867,51 +1905,51 @@
@@@[(6, 8), (23, 27), (28, 30)]@@@
-               	leaq	40(%rsp), %rbp
+               	leaq	40(%rsp), %r12
@@@@
-               	movq	%rbp, %rdx
-               	callq	0x41ee10 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movq	%r12, %rdx
+               	callq	0x41efe0 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
@@@@
-               	movl	%r12d, %esi
+               	movl	%ebp, %esi

@@ -2969,9 +3007,10 @@
@@@[(3, 4)]@@@
+               	movq	32(%rsp), %rax

@@ -2999,20 +3038,19 @@
@@@[(12, 15), (17, 18), (20, 21)]@@@
-               	callq	0x419f70 <ThrowInvalidReceiverTypeException>
-               	nopl	(%rax,%rax)
+               	callq	0x41a110 <ThrowInvalidReceiverTypeException>
@@@@
+               	pushq	%rbp
@@@@
-               	pushq	%r13

@@ -3023,30 +3061,30 @@
@@@[(3, 7), (9, 11), (26, 28), (30, 32)]@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
+               	movq	-64(%rax), %rbp
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)
@@@@
-               	movq	288(%r12), %rax
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rbx, 288(%r12)
+               	movq	%rbx, 288(%rbp)

@@ -3054,16 +3092,16 @@
@@@[(17, 19)]@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)

@@ -3071,118 +3109,119 @@
@@@[(3, 5), (6, 8), (10, 26), (27, 30), (32, 36), (37, 58), (63, 67), (71, 77), (81, 111), (112, 116), (118, 131), (132, 134), (135, 137), (140, 148), (149, 151), (155, 157), (167, 169), (171, 173), (176, 177), (179, 180), (181, 183)]@@@
-               	movq	288(%r12), %rax
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rbx, 288(%r12)
+               	movq	%rbx, 288(%rbp)
@@@@
-               	movslq	16(%r14), %r15
-               	testq	%r15, %r15
-               	jns	0x4169ef <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	movq	8(%r14), %r13
-               	movq	%r13, 120(%rsp)
-               	movq	%r13, 128(%rsp)
-               	movl	8(%r13), %edx
-               	movl	%edx, %ebx
+               	movl	16(%r14), %r15d
+               	testl	%r15d, %r15d
+               	jns	0x416a4f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	movq	8(%r14), %r12
+               	movq	%r12, 120(%rsp)
+               	movq	%r12, 128(%rsp)
+               	movl	8(%r12), %eax
+               	movl	%eax, %ebx
@@@@
-               	andl	%edx, %ebx
+               	andl	%eax, %ebx
+               	movl	8(%r12), %edx
@@@@
-               	callq	0x417d30 <checkRangeIndexes>
-               	movq	(%r13), %rax
+               	callq	0x417e70 <checkRangeIndexes>
+               	movq	(%r12), %rax
@@@@
-               	jge	0x4169ef <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	leaq	16(,%r15,2), %r10
-               	addq	%r13, %r10
-               	movl	%r15d, %r9d
-               	notl	%r9d
-               	addl	%ebx, %r9d
-               	cmpl	$15, %r9d
-               	jb	0x4169cc <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
-               	addq	$1, %r9
-               	movq	%r9, %r8
+               	jge	0x416a4f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	movslq	%r15d, %r9
+               	leaq	(%r12,%r9,2), %r11
+               	addq	$16, %r11
+               	movl	%r15d, %r10d
+               	notl	%r10d
+               	addl	%ebx, %r10d
+               	cmpl	$15, %r10d
+               	jb	0x416a2c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
+               	addq	$1, %r10
+               	movq	%r10, %r8
@@@@
-               	movl	%edi, %esi
-               	andl	$7, %esi
+               	movl	%edi, %edx
+               	andl	$7, %edx
@@@@
-               	jmp	0x416991 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
-               	leaq	240(,%r15,2), %rdx
-               	addq	%r13, %rdx
+               	jmp	0x4169f1 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
+               	leaq	(%r12,%r9,2), %rsi
+               	addq	$240, %rsi
@@@@
-               	nop
-               	movups	%xmm0, -208(%rdx,%rcx,2)
-               	movups	%xmm0, -224(%rdx,%rcx,2)
-               	movups	%xmm0, -192(%rdx,%rcx,2)
-               	movups	%xmm0, -176(%rdx,%rcx,2)
-               	movups	%xmm0, -160(%rdx,%rcx,2)
-               	movups	%xmm0, -144(%rdx,%rcx,2)
-               	movups	%xmm0, -128(%rdx,%rcx,2)
-               	movups	%xmm0, -112(%rdx,%rcx,2)
-               	movups	%xmm0, -96(%rdx,%rcx,2)
-               	movups	%xmm0, -80(%rdx,%rcx,2)
-               	movups	%xmm0, -64(%rdx,%rcx,2)
-               	movups	%xmm0, -48(%rdx,%rcx,2)
-               	movups	%xmm0, -32(%rdx,%rcx,2)
-               	movups	%xmm0, -16(%rdx,%rcx,2)
+               	nopl	(%rax)
+               	movups	%xmm0, -208(%rsi,%rcx,2)
+               	movups	%xmm0, -224(%rsi,%rcx,2)
+               	movups	%xmm0, -192(%rsi,%rcx,2)
+               	movups	%xmm0, -176(%rsi,%rcx,2)
+               	movups	%xmm0, -160(%rsi,%rcx,2)
+               	movups	%xmm0, -144(%rsi,%rcx,2)
+               	movups	%xmm0, -128(%rsi,%rcx,2)
+               	movups	%xmm0, -112(%rsi,%rcx,2)
+               	movups	%xmm0, -96(%rsi,%rcx,2)
+               	movups	%xmm0, -80(%rsi,%rcx,2)
+               	movups	%xmm0, -64(%rsi,%rcx,2)
+               	movups	%xmm0, -48(%rsi,%rcx,2)
+               	movups	%xmm0, -32(%rsi,%rcx,2)
+               	movups	%xmm0, -16(%rsi,%rcx,2)
@@@@
-               	movups	%xmm0, 16(%rdx,%rcx,2)
-               	movups	%xmm0, (%rdx,%rcx,2)
+               	movups	%xmm0, 16(%rsi,%rcx,2)
+               	movups	%xmm0, (%rsi,%rcx,2)
@@@@
-               	jne	0x416920 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
-               	testq	%rsi, %rsi
-               	je	0x4169c0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
-               	movq	%r15, %rcx
-               	addq	%r15, %rcx
-               	leaq	(%rcx,%rax,2), %rax
-               	addq	%r13, %rax
+               	jne	0x416980 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
+               	testq	%rdx, %rdx
+               	je	0x416a20 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
+               	addq	%r9, %r9
+               	leaq	(%r9,%rax,2), %rax
+               	addq	%r12, %rax
@@@@
-               	negq	%rsi
+               	negq	%rdx
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	incq	%rsi
-               	jne	0x4169b0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
-               	cmpq	%r8, %r9
-               	je	0x4169ef <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	incq	%rdx
+               	jne	0x416a10 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
+               	cmpq	%r8, %r10
+               	je	0x416a4f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
@@@@
-               	leaq	(%r10,%r8,2), %r10
+               	leaq	(%r11,%r8,2), %r11
@@@@
-               	movw	$0, (%r10,%rax,2)
+               	movw	$0, (%r11,%rax,2)
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)
@@@@
-               	popq	%r13
@@@@
+               	popq	%rbp
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -3273,45 +3312,45 @@
@@@[(23, 24), (25, 30)]@@@
-               	movq	16(%r14,%rax,8), %rax
@@@@
-               	cmpq	16(%r15,%rcx,8), %rax
-               	jne	0x416cce <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>
+               	movq	16(%r15,%rcx,8), %rcx
+               	cmpq	%rcx, 16(%r14,%rax,8)
+               	jne	0x416d1e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>

@@ -3568,240 +3607,293 @@
@@@[(16, 17), (18, 19), (20, 21), (29, 45), (46, 63), (64, 83), (84, 86), (87, 141), (142, 267), (268, 294), (295, 298), (299, 315), (316, 321), (325, 334), (335, 340), (346, 351), (355, 379), (380, 404), (406, 408), (409, 426), (427, 429), (430, 453), (454, 488)]@@@
+               	movaps	%xmm0, 576(%rsp)
@@@@
-               	movaps	%xmm0, 544(%rsp)
@@@@
+               	movq	%rax, 24(%rsp)
@@@@
-               	movq	%rcx, 560(%rsp)
-               	movq	24(%rbx), %r15
-               	movl	8(%r15), %ebp
-               	movq	-64(%rax), %rbx
-               	movl	$1, %r14d
-               	xchgl	%r14d, 328(%rbx)
-               	movq	%rax, 8(%rsp)
-               	movl	$1, %ecx
-               	movq	-64(%rax), %rdi
-               	testq	%rdi, %rdi
-               	je	0x417174 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc4>
+               	movq	%rcx, 576(%rsp)
+               	movq	24(%rbx), %rcx
+               	movq	%rcx, 8(%rsp)
+               	movl	8(%rcx), %r13d
+               	movq	-64(%rax), %rdx
@@@@
-               	xchgl	%ecx, 328(%rdi)
-               	jmp	0x417176 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc6>
-               	xorl	%edi, %edi
+               	movl	$1, %esi
+               	xchgl	%esi, 328(%rdx)
+               	movl	%esi, 108(%rsp)
+               	movq	$0, 120(%rsp)
+               	movl	$1, 128(%rsp)
+               	movb	$0, 132(%rsp)
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x4171f4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xf4>
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 120(%rsp)
+               	movl	%ecx, 128(%rsp)
+               	movb	$1, 132(%rsp)
+               	movq	%rdx, 144(%rsp)
@@@@
-               	movaps	%xmm0, 48(%rsp)
-               	movq	$0, 64(%rsp)
-               	testl	%ebp, %ebp
-               	je	0x4177ca <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x71a>
-               	movl	%r14d, 116(%rsp)
-               	movq	%rbx, 128(%rsp)
-               	movl	%ecx, 44(%rsp)
-               	movq	%rdi, 120(%rsp)
+               	movaps	%xmm0, 32(%rsp)
+               	movq	$0, 48(%rsp)
+               	movq	48(%rsp), %rax
+               	movq	32(%rsp), %r15
+               	subq	%r15, %rax
+               	sarq	$5, %rax
+               	cmpq	%r13, %rax
+               	jae	0x41730e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x20e>
+               	movq	40(%rsp), %rbx
+               	movq	%rbx, %r12
+               	subq	%r15, %r12
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
+               	movq	%rax, %r14
+               	cmpq	%r15, %rbx
+               	je	0x4172dd <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	leaq	16(%r14), %rax
+               	leaq	16(%r15), %rcx
+               	jmp	0x417295 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x195>
+               	nopl	(%rax,%rax)
+               	movq	%rdx, -16(%rax)
+               	movq	(%rcx), %rdx
+               	movq	%rdx, (%rax)
+               	movq	-8(%rcx), %rdx
+               	movq	%rdx, -8(%rax)
+               	movq	%rcx, -16(%rcx)
+               	movq	$0, -8(%rcx)
+               	movb	$0, (%rcx)
+               	addq	$32, %rax
+               	leaq	32(%rcx), %rdx
+               	addq	$16, %rcx
+               	cmpq	%rbx, %rcx
+               	movq	%rdx, %rcx
+               	je	0x4172aa <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1aa>
+               	movq	%rax, -16(%rax)
+               	movq	-16(%rcx), %rdx
+               	cmpq	%rcx, %rdx
+               	jne	0x417260 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x160>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x41726a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x16a>
+               	cmpq	%rbx, %r15
+               	je	0x4172dd <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	%r15, %rbp
+               	jmp	0x4172c9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c9>
+               	nopl	(%rax,%rax)
+               	addq	$16, %rbp
+               	cmpq	%rbx, %rbp
+               	je	0x4172dd <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x4172c0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x4172c0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	sarq	$5, %r12
+               	testq	%r15, %r15
+               	je	0x4172ee <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1ee>
+               	movq	%r15, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	%r14, 32(%rsp)
+               	shlq	$5, %r12
+               	addq	%r14, %r12
+               	movq	%r12, 40(%rsp)
+               	movq	%r13, %rax
+               	shlq	$5, %rax
+               	addq	%r14, %rax
@@@@
-               	movq	%rax, 56(%rsp)
-               	movq	%rbp, %rcx
-               	shlq	$5, %rcx
-               	addq	%rax, %rcx
-               	movq	%rcx, 64(%rsp)
-               	leaq	160(%rsp), %rax
-               	movq	%rax, 144(%rsp)
-               	movq	$0, 152(%rsp)
-               	movb	$0, 160(%rsp)
-               	movq	$-1, 176(%rsp)
-               	leaq	200(%rsp), %rax
-               	movq	%rax, 184(%rsp)
-               	movq	$0, 192(%rsp)
-               	movb	$0, 200(%rsp)
-               	movq	$-1, 216(%rsp)
-               	leaq	240(%rsp), %rax
-               	movq	%rax, 224(%rsp)
-               	movq	$0, 232(%rsp)
-               	movb	$0, 240(%rsp)
-               	movq	$-1, 256(%rsp)
-               	leaq	280(%rsp), %rax
-               	movq	%rax, 264(%rsp)
-               	movq	$0, 272(%rsp)
-               	movb	$0, 280(%rsp)
-               	movq	$-1, 296(%rsp)
-               	leaq	320(%rsp), %rax
-               	movq	%rax, 304(%rsp)
-               	movq	$0, 312(%rsp)
-               	movb	$0, 320(%rsp)
-               	movq	$-1, 336(%rsp)
-               	leaq	360(%rsp), %rax
-               	movq	%rax, 344(%rsp)
-               	movq	$0, 352(%rsp)
-               	movb	$0, 360(%rsp)
-               	movq	$-1, 376(%rsp)
-               	leaq	400(%rsp), %rax
-               	movq	%rax, 384(%rsp)
-               	movq	$0, 392(%rsp)
-               	movb	$0, 400(%rsp)
-               	movq	$-1, 416(%rsp)
-               	leaq	440(%rsp), %rax
-               	movq	%rax, 424(%rsp)
-               	movq	$0, 432(%rsp)
-               	movb	$0, 440(%rsp)
-               	movq	$-1, 456(%rsp)
-               	leaq	480(%rsp), %rax
-               	movq	%rax, 464(%rsp)
-               	movq	$0, 472(%rsp)
-               	movb	$0, 480(%rsp)
-               	movq	$-1, 496(%rsp)
-               	leaq	520(%rsp), %rax
-               	movq	%rax, 504(%rsp)
-               	movq	$0, 512(%rsp)
-               	movb	$0, 520(%rsp)
-               	movq	$-1, 536(%rsp)
-               	leaq	88(%rsp), %r13
-               	movq	64(%rsp), %r12
-               	xorl	%eax, %eax
-               	movq	%r15, 32(%rsp)
-               	movq	%rbp, 104(%rsp)
-               	jmp	0x417410 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x360>
-               	movq	%rcx, (%r14)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14)
-               	movq	32(%rsp), %r15
-               	movq	104(%rsp), %rbp
+               	testl	%r13d, %r13d
+               	je	0x4178f6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x7f6>
+               	leaq	176(%rsp), %rax
+               	movq	%rax, 160(%rsp)
+               	movq	$0, 168(%rsp)
+               	movb	$0, 176(%rsp)
+               	movq	$-1, 192(%rsp)
+               	leaq	216(%rsp), %rax
+               	movq	%rax, 200(%rsp)
+               	movq	$0, 208(%rsp)
+               	movb	$0, 216(%rsp)
+               	movq	$-1, 232(%rsp)
+               	leaq	256(%rsp), %rax
+               	movq	%rax, 240(%rsp)
+               	movq	$0, 248(%rsp)
+               	movb	$0, 256(%rsp)
+               	movq	$-1, 272(%rsp)
+               	leaq	296(%rsp), %rax
+               	movq	%rax, 280(%rsp)
+               	movq	$0, 288(%rsp)
+               	movb	$0, 296(%rsp)
+               	movq	$-1, 312(%rsp)
+               	leaq	336(%rsp), %rax
+               	movq	%rax, 320(%rsp)
+               	movq	$0, 328(%rsp)
+               	movb	$0, 336(%rsp)
+               	movq	$-1, 352(%rsp)
+               	leaq	376(%rsp), %rax
+               	movq	%rax, 360(%rsp)
+               	movq	$0, 368(%rsp)
+               	movb	$0, 376(%rsp)
+               	movq	$-1, 392(%rsp)
+               	leaq	416(%rsp), %rax
+               	movq	%rax, 400(%rsp)
+               	movq	$0, 408(%rsp)
+               	movb	$0, 416(%rsp)
+               	movq	$-1, 432(%rsp)
+               	leaq	456(%rsp), %rax
+               	movq	%rax, 440(%rsp)
+               	movq	$0, 448(%rsp)
+               	movb	$0, 456(%rsp)
+               	movq	$-1, 472(%rsp)
+               	leaq	496(%rsp), %rax
+               	movq	%rax, 480(%rsp)
+               	movq	$0, 488(%rsp)
+               	movb	$0, 496(%rsp)
+               	movq	$-1, 512(%rsp)
+               	leaq	536(%rsp), %rax
+               	movq	%rax, 520(%rsp)
+               	movq	$0, 528(%rsp)
+               	movb	$0, 536(%rsp)
+               	movq	$-1, 552(%rsp)
+               	leaq	80(%rsp), %rbp
+               	leaq	592(%rsp), %r15
+               	xorl	%r14d, %r14d
+               	movq	8(%rsp), %rbx
+               	movq	%r13, 96(%rsp)
+               	jmp	0x417564 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
+               	movq	%rcx, (%r13)
@@@@
-               	movq	%rax, 8(%r14)
-               	movq	%r13, 72(%rsp)
-               	movq	$0, 80(%rsp)
-               	movb	$0, 88(%rsp)
-               	addq	$32, %r14
-               	movq	%r14, 56(%rsp)
-               	movq	16(%rsp), %rax
-               	addq	$1, %rax
-               	cmpq	%rbp, %rax
-               	je	0x4176ab <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5fb>
-               	movq	16(%r15,%rax,8), %rcx
+               	movq	%rax, 16(%r13)
+               	movq	8(%rsp), %rbx
+               	movq	72(%rsp), %rax
+               	movq	%rax, 8(%r13)
+               	movq	%rbp, 64(%rsp)
+               	movq	$0, 72(%rsp)
+               	movb	$0, 80(%rsp)
+               	addq	$32, %r13
+               	movq	%r13, 40(%rsp)
+               	movq	96(%rsp), %r13
+               	leaq	592(%rsp), %r15
+               	addq	$1, %r14
+               	cmpq	%r13, %r14
+               	je	0x4177f2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6f2>
+               	movq	16(%rbx,%r14,8), %rcx
@@@@
-               	jb	0x417403 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x353>
-               	movq	%rax, 16(%rsp)
+               	jb	0x417557 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x457>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	56(%rsp), %r14
-               	movq	%r14, %r15
-               	movq	%rax, 24(%rsp)
-               	subq	%rax, %r15
-               	movq	%r15, %rbx
-               	sarq	$5, %rbx
-               	leaq	183220(%rip), %rax      # 0x443ffb <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
+               	movq	40(%rsp), %r13
+               	movq	32(%rsp), %rax
+               	movq	%r13, %rbx
+               	movq	%rax, 16(%rsp)
+               	subq	%rax, %rbx
+               	movq	%rbx, %r12
+               	sarq	$5, %r12
+               	leaq	186533(%rip), %rax      # 0x444e3b <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
@@@@
-               	leaq	576(%rsp), %rbp
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rdx
+               	movq	%r15, %rdi
+               	movq	%r12, %rdx
@@@@
-               	callq	0x435260 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
-               	movq	%r13, 72(%rsp)
-               	movq	%rbp, %rdi
-               	callq	0x4136d0 <strlen@plt>
+               	callq	0x435c40 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
+               	movq	%rbp, 64(%rsp)
+               	movq	%r15, %rdi
+               	callq	0x4136e0 <strlen@plt>
+               	movq	%rbp, %rcx
@@@@
-               	cmpq	$16, %rax
-               	jb	0x4174a4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x3f4>
+               	movq	%rcx, %rax
+               	cmpq	$16, %rbp
+               	jb	0x4175ee <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ee>
@@@@
-               	movq	%rax, %r13
-               	movq	%rax, 72(%rsp)
-               	movq	%rbp, 88(%rsp)
+               	movq	%rax, 64(%rsp)
+               	movq	%rbp, 80(%rsp)
@@@@
-               	jne	0x4174f1 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x441>
-               	movb	576(%rsp), %al
-               	movb	%al, (%r13)
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	je	0x417514 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
-               	leaq	16(%r14), %rax
-               	movq	%rax, (%r14)
-               	movq	72(%rsp), %rcx
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rcx
-               	jne	0x4173c3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x313>
-               	movups	(%r13), %xmm0
-               	movups	%xmm0, (%rax)
-               	jmp	0x4173cf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x31f>
-               	movq	%r13, %rdi
-               	leaq	576(%rsp), %rsi
+               	jne	0x417604 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x504>
+               	movb	592(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x417617 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x517>
+               	movq	%rax, %rdi
+               	leaq	592(%rsp), %rsi
@@@@
-               	callq	0x4136e0 <memcpy@plt>
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	jne	0x4174ca <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x41a>
-               	testq	%r15, %r15
-               	movq	%rbx, %rax
+               	callq	0x4136f0 <memcpy@plt>
+               	movq	%rbp, 72(%rsp)
+               	movq	64(%rsp), %rax
+               	movb	$0, (%rax,%rbp)
+               	cmpq	%r13, 48(%rsp)
+               	je	0x417653 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x553>
+               	leaq	16(%r13), %rax
+               	movq	%rax, (%r13)
+               	movq	64(%rsp), %rcx
+               	leaq	80(%rsp), %rbp
+               	cmpq	%rbp, %rcx
+               	jne	0x417513 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x413>
+               	movups	(%rbp), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x417520 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x420>
+               	testq	%rbx, %rbx
+               	movq	%r12, %rax
@@@@
-               	leaq	(%rax,%rbx), %r13
+               	leaq	(%rax,%r12), %r15
@@@@
-               	cmpq	%rcx, %r13
-               	cmovaq	%rcx, %r13
-               	addq	%rbx, %rax
-               	cmovbq	%rcx, %r13
-               	movq	%r12, %rbp
-               	movq	24(%rsp), %rbx
-               	subq	%rbx, %rbp
-               	sarq	$5, %rbp
-               	testq	%r13, %r13
-               	je	0x417565 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b5>
+               	cmpq	%rcx, %r15
+               	cmovaq	%rcx, %r15
+               	addq	%r12, %rax
+               	cmovbq	%rcx, %r15
+               	testq	%r15, %r15
+               	leaq	80(%rsp), %rbx
+               	je	0x417697 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x597>
@@@@
-               	movq	%r13, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%rax, %r14
-               	jmp	0x417568 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b8>
-               	xorl	%r14d, %r14d
-               	shlq	$5, %rbp
-               	leaq	(%r14,%rbp), %rax
-               	addq	$16, %rax
-               	movq	%rax, (%r14,%rbp)
+               	jmp	0x417699 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
+               	xorl	%eax, %eax
+               	shlq	$5, %r12
+               	leaq	(%rax,%r12), %rdx
+               	addq	$16, %rdx
+               	movq	%rdx, (%rax,%r12)
+               	movq	64(%rsp), %rcx
+               	cmpq	%rbx, %rcx
+               	je	0x4176c6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5c6>
+               	leaq	(%rax,%r12), %rdx
+               	movq	%rcx, (%rdx)
+               	movq	80(%rsp), %rcx
+               	movq	%rcx, 16(%rax,%r12)
+               	jmp	0x4176cc <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5cc>
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rdx)
@@@@
-               	leaq	88(%rsp), %rdx
-               	cmpq	%rdx, %rcx
-               	movq	32(%rsp), %r15
-               	je	0x41759f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ef>
-               	leaq	(%r14,%rbp), %rax
-               	movq	%rcx, (%rax)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14,%rbp)
-               	jmp	0x4175a5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4f5>
-               	movups	(%rdx), %xmm0
-               	movups	%xmm0, (%rax)
-               	movq	80(%rsp), %rax
-               	movq	%rax, 8(%r14,%rbp)
-               	movq	%rdx, 72(%rsp)
-               	movq	$0, 80(%rsp)
-               	movb	$0, 88(%rsp)
-               	cmpq	%rbx, %r12
-               	je	0x4176a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5f0>
-               	leaq	16(%r14), %rcx
-               	leaq	16(%rbx), %rax
-               	jmp	0x417616 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x566>
-               	nopl	(%rax,%rax)
+               	movq	%rcx, 8(%rax,%r12)
+               	movq	%rbx, 64(%rsp)
+               	movq	$0, 72(%rsp)
+               	movb	$0, 80(%rsp)
+               	movq	16(%rsp), %r12
+               	cmpq	%r12, %r13
+               	movq	%rax, 152(%rsp)
+               	je	0x41779c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x69c>
+               	leaq	16(%rax), %rcx
+               	leaq	16(%r12), %rax
+               	jmp	0x417746 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x646>
+               	nopl	(%rax)

@@ -3813,241 +3905,239 @@
@@@[(3, 5), (20, 29), (30, 34), (37, 88), (98, 108), (177, 178), (179, 182), (196, 214), (220, 229), (237, 249), (252, 256), (257, 259), (265, 269), (273, 289), (290, 299), (300, 308), (309, 317), (321, 329), (330, 334), (338, 340), (341, 351)]@@@
-               	cmpq	%r12, %rax
+               	cmpq	%r13, %rax
@@@@
-               	cmpq	%rbx, %r12
-               	jne	0x417649 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
-               	jmp	0x417661 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b1>
-               	nop
+               	cmpq	%r12, %r13
+               	je	0x4177a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
+               	movq	%r12, %rbx
+               	jmp	0x417789 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x689>
+               	nopl	(%rax,%rax)
@@@@
-               	cmpq	%r12, %rbx
-               	je	0x41765c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5ac>
+               	cmpq	%r13, %rbx
+               	je	0x4177a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
@@@@
-               	je	0x417640 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	callq	0x4136f0 <free@plt>
-               	jmp	0x417640 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	movq	24(%rsp), %rbx
-               	testq	%rbx, %rbx
-               	je	0x41766e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%rbx, %rdi
-               	callq	0x4136f0 <free@plt>
-               	movq	%r14, 48(%rsp)
-               	movq	%rbp, 56(%rsp)
-               	shlq	$5, %r13
-               	movq	%r13, %r12
-               	addq	%r14, %r12
-               	movq	72(%rsp), %rdi
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rdi
-               	je	0x417696 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5e6>
-               	callq	0x4136f0 <free@plt>
-               	movq	104(%rsp), %rbp
-               	jmp	0x4173fe <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x34e>
-               	leaq	32(%r14), %rbp
-               	testq	%rbx, %rbx
-               	jne	0x417666 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b6>
-               	jmp	0x41766e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	je	0x417780 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x417780 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	leaq	32(%rax), %rbp
+               	testq	%r12, %r12
+               	movq	96(%rsp), %r13
+               	je	0x4177b2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6b2>
+               	movq	%r12, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	152(%rsp), %rax
+               	movq	%rax, 32(%rsp)
+               	movq	%rbp, 40(%rsp)
+               	shlq	$5, %r15
+               	addq	%rax, %r15
+               	movq	%r15, 48(%rsp)
+               	movq	64(%rsp), %rdi
+               	leaq	80(%rsp), %rbp
+               	cmpq	%rbp, %rdi
+               	movq	8(%rsp), %rbx
+               	je	0x41754f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x41754f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	movq	128(%rsp), %rbx
-               	movl	116(%rsp), %r14d
-               	je	0x4176f1 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x641>
-               	callq	0x43a845 <operator delete(void*)>
-               	movq	424(%rsp), %rdi
-               	leaq	440(%rsp), %rax
+               	je	0x417826 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x726>
+               	callq	0x43b685 <operator delete(void*)>
+               	movq	440(%rsp), %rdi
+               	leaq	456(%rsp), %rax
@@@@
-               	movl	44(%rsp), %ecx
@@@@
-               	je	0x4177f6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x746>
+               	je	0x41792e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x82e>
+               	movl	128(%rsp), %ecx
@@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	je	0x417823 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%r14d, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%r14d, %r14d
-               	jne	0x417823 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	144(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x417962 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	addq	$328, %rdi              # imm = 0x148
+               	movl	108(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, (%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x417962 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
@@@@
-               	je	0x417823 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	movq	%rbx, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	$0, 600(%rsp)
-               	movq	8(%rsp), %rax
+               	je	0x417962 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	$0, 616(%rsp)
+               	movq	24(%rsp), %rax
@@@@
-               	movq	%rcx, 592(%rsp)
-               	movq	48(%rsp), %r13
-               	movq	56(%rsp), %r14
-               	movq	%r14, %r15
-               	subq	%r13, %r15
-               	movq	%r15, %rbx
+               	movq	%rcx, 608(%rsp)
+               	movq	40(%rsp), %rbp
+               	movq	32(%rsp), %r13
+               	movq	%rbp, %r14
+               	subq	%r13, %r14
+               	movq	%r14, %rbx
@@@@
-               	movq	%r14, 24(%rsp)
-               	js	0x417a63 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x9b3>
+               	movq	%rbp, 8(%rsp)
+               	js	0x417bb3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xab3>
@@@@
-               	movq	%r15, %rax
+               	movq	%r14, %rax
@@@@
-               	callq	0x427570 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %rbp
+               	callq	0x427d60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r15
@@@@
-               	leaq	255923(%rip), %rax      # 0x456090 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%rbp)
-               	movl	%ebx, 24(%rbp)
-               	movq	%rcx, 32(%rsp)
-               	movq	%rcx, 600(%rsp)
-               	cmpq	%r13, %r14
-               	jne	0x417907 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x857>
-               	movq	8(%rsp), %rax
+               	leaq	257460(%rip), %rax      # 0x4567d0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r15)
+               	movl	%ebx, 24(%r15)
+               	movq	%rcx, 96(%rsp)
+               	movq	%rcx, 616(%rsp)
+               	cmpq	%r13, %rbp
+               	jne	0x417a47 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x947>
+               	movq	24(%rsp), %rax
@@@@
-               	jmp	0x4179ba <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x90a>
-               	sarq	$5, %r15
-               	movq	8(%rsp), %rax
+               	jmp	0x417b05 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xa05>
+               	sarq	$5, %r14
+               	cmpq	$1, %r14
+               	movl	$1, %ebp
+               	cmovaq	%r14, %rbp
+               	movq	24(%rsp), %rax
@@@@
-               	cmpq	$1, %r15
-               	movl	$1, %ebx
-               	cmovaq	%r15, %rbx
+               	xorl	%ebx, %ebx
+               	leaq	160(%rsp), %r14
+               	movabsq	$4294967296, %r12       # imm = 0x100000000
+               	nopl	(%rax,%rax)
+               	movq	$0, 184(%rsp)
@@@@
-               	xorl	%r15d, %r15d
-               	leaq	144(%rsp), %r12
-               	movabsq	$4294967296, %r14       # imm = 0x100000000
-               	movq	$0, 168(%rsp)
-               	movq	%rcx, 152(%rsp)
-               	movq	%r12, 288(%rax)
+               	movq	%rcx, 168(%rsp)
+               	movq	%r14, 288(%rax)
@@@@
-               	leaq	168(%rsp), %rsi
-               	callq	0x435b60 <CreateStringFromCString>
-               	movq	168(%rsp), %rax
-               	movq	%r15, %rcx
+               	leaq	184(%rsp), %rsi
+               	callq	0x4367d0 <CreateStringFromCString>
+               	movq	184(%rsp), %rax
+               	movq	%rbx, %rcx
@@@@
-               	movq	%rax, 32(%rbp,%rcx)
-               	movq	8(%rsp), %rax
+               	movq	%rax, 32(%r15,%rcx)
+               	movq	24(%rsp), %rax
@@@@
-               	addq	%r14, %r15
+               	addq	%r12, %rbx
@@@@
-               	addq	$-1, %rbx
-               	jne	0x417940 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x890>
-               	movq	32(%rsp), %r15
-               	movq	%r15, 568(%rsp)
-               	movq	584(%rsp), %rcx
+               	addq	$-1, %rbp
+               	jne	0x417a80 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x980>
+               	movq	96(%rsp), %r15
+               	movq	%r15, 584(%rsp)
+               	movq	600(%rsp), %rcx

@@ -4055,135 +4145,133 @@
@@@[(3, 13), (17, 22), (86, 99), (181, 189), (199, 219), (223, 227), (228, 230)]@@@
-               	leaq	181794(%rip), %rdi      # 0x444080 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
-               	callq	0x4358c0 <std::__throw_length_error(char const*)>
-               	callq	0x41a090 <ThrowIllegalArgumentException>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	leaq	185106(%rip), %rdi      # 0x444ec0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x4362a0 <std::__throw_length_error(char const*)>
+               	callq	0x41a230 <ThrowIllegalArgumentException>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	je	0x417b7f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	callq	0x43a845 <operator delete(void*)>
-               	leaq	48(%rsp), %rdi
-               	callq	0x4358e0 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
-               	movq	120(%rsp), %rdi
-               	movl	44(%rsp), %esi
-               	callq	0x435940 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	je	0x417cca <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	callq	0x43b685 <operator delete(void*)>
+               	leaq	32(%rsp), %rdi
+               	callq	0x4362c0 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
+               	leaq	112(%rsp), %rdi
+               	callq	0x436320 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	jne	0x417b7a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xaca>
-               	jmp	0x417b7f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	jne	0x417cc5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbc5>
+               	jmp	0x417cca <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	je	0x417d0c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc5c>
-               	movq	16(%rsp), %rbx
-               	movq	(%rbx), %rdi
-               	addq	$16, %rbx
-               	cmpq	%rbx, %rdi
-               	je	0x417d01 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc51>
-               	callq	0x4136f0 <free@plt>
-               	addq	$16, %rbx
-               	cmpq	24(%rsp), %rbx
-               	jne	0x417cf0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc40>
+               	je	0x417e54 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd54>
+               	movq	16(%rsp), %rbp
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417e49 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd49>
+               	callq	0x4136d0 <free@plt>
+               	addq	$16, %rbp
+               	cmpq	8(%rsp), %rbp
+               	jne	0x417e37 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd37>
@@@@
-               	callq	0x4136f0 <free@plt>
-               	movq	%rbp, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	%rbx, %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -4473,54 +4561,55 @@
@@@[(15, 18), (20, 34), (35, 47)]@@@
-               	movq	%rcx, 176(%rsp)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 176(%rsp)
@@@@
-               	movq	16(%rax), %rdx
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 192(%rsp)
+               	movq	136(%rsp), %rcx
+               	movq	%rcx, 200(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 208(%rsp)
+               	movq	152(%rsp), %rcx
+               	movq	%rcx, 216(%rsp)
+               	movq	(%rax), %rdx
@@@@
-               	movq	136(%rsp), %rax
-               	movq	168(%rsp), %rcx
-               	movq	%rcx, 192(%rsp)
-               	movq	%rax, 200(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
-               	movq	152(%rsp), %rax
-               	movq	168(%rsp), %rcx
-               	movq	%rcx, 208(%rsp)
-               	movq	%rax, 216(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 32(%rcx)

@@ -4542,23 +4631,24 @@
@@@[(3, 6), (8, 22), (23, 35)]@@@
-               	movq	%rcx, 320(%rsp)
+               	movq	312(%rsp), %rax
+               	movq	%rax, 320(%rsp)
@@@@
-               	movq	16(%rax), %rdx
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	312(%rsp), %rax
+               	movq	%rax, 336(%rsp)
+               	movq	280(%rsp), %rcx
+               	movq	%rcx, 344(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)
+               	movq	312(%rsp), %rax
+               	movq	%rax, 352(%rsp)
+               	movq	296(%rsp), %rcx
+               	movq	%rcx, 360(%rsp)
+               	movq	(%rax), %rdx
@@@@
-               	movq	280(%rsp), %rax
-               	movq	312(%rsp), %rcx
-               	movq	%rcx, 336(%rsp)
-               	movq	%rax, 344(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
-               	movq	296(%rsp), %rax
-               	movq	312(%rsp), %rcx
-               	movq	%rcx, 352(%rsp)
-               	movq	%rax, 360(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 32(%rcx)

@@ -4615,7 +4705,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -5085,63 +5175,64 @@
@@@[(3, 14), (15, 27), (67, 73), (85, 87)]@@@
-               	movq	8(%rax), %r13
-               	movq	%r13, 72(%rsp)
-               	movq	%r13, 80(%rsp)
-               	movq	%r13, 88(%rsp)
-               	movl	294221(%rip), %eax      # 0x460ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	movq	8(%rax), %rax
+               	movq	%rax, 72(%rsp)
+               	movq	%rax, 80(%rsp)
+               	movq	80(%rsp), %rbp
+               	movq	%rbp, 88(%rsp)
+               	movl	295736(%rip), %eax      # 0x461214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
@@@@
-               	je	0x418d9f <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x11f>
-               	leaq	294209(%rip), %rdi      # 0x460ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
-               	leaq	470(%rip), %rsi         # 0x418f70 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
-               	callq	0x439720 <CallInitGlobalPossiblyLock>
-               	cmpq	%r13, 294138(%rip)      # 0x460aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	je	0x418e41 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c1>
+               	je	0x418ef4 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x124>
+               	leaq	295724(%rip), %rdi      # 0x461214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	leaq	481(%rip), %rsi         # 0x4190d0 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
+               	callq	0x43a450 <CallInitGlobalPossiblyLock>
+               	cmpq	295653(%rip), %rbp      # 0x4611e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	je	0x418f96 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c6>
@@@@
-               	callq	0x439900 <ThrowException>
-               	movq	8(%rbx), %rbp
-               	movl	294029(%rip), %eax      # 0x460ad8 <state_global$kotlin.native.concurrent.INITIALIZING>
+               	callq	0x43a630 <ThrowException>
+               	movq	8(%rbx), %r13
+               	movl	295544(%rip), %eax      # 0x461218 <state_global$kotlin.native.concurrent.INITIALIZING>
@@@@
-               	movq	%rax, 8(%rbp)
+               	movq	%rax, 8(%r13)

@@ -5166,32 +5257,33 @@
@@@[(36, 39)]@@@
-               	callq	0x439900 <ThrowException>
+               	callq	0x43a630 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -5208,41 +5300,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 293534(%rip)      # 0x460aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	leaq	293527(%rip), %rdi      # 0x460aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	%rcx, 295038(%rip)      # 0x4611e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	leaq	295031(%rip), %rdi      # 0x4611e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	295024(%rip), %rax      # 0x4611e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
@@@@
-               	movq	288(%rbx), %rax
-               	movq	%rax, 40(%rsp)
-               	leaq	32(%rsp), %rax
-               	movq	%rax, 288(%rbx)
+               	movq	288(%rbx), %rcx
+               	movq	%rcx, 40(%rsp)
+               	leaq	32(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	movq	%rcx, 56(%rsp)
+               	movq	%rax, 56(%rsp)
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -5259,41 +5352,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 293286(%rip)      # 0x460aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
-               	leaq	293279(%rip), %rdi      # 0x460aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	%rcx, 294790(%rip)      # 0x4611e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	leaq	294783(%rip), %rdi      # 0x4611e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	294776(%rip), %rax      # 0x4611e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
@@@@
-               	movq	288(%rbx), %rax
-               	movq	%rax, 40(%rsp)
-               	leaq	32(%rsp), %rax
-               	movq	%rax, 288(%rbx)
+               	movq	288(%rbx), %rcx
+               	movq	%rcx, 40(%rsp)
+               	leaq	32(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	movq	%rcx, 56(%rsp)
+               	movq	%rax, 56(%rsp)
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -5302,15 +5396,18 @@
@@@[(12, 21)]@@@
-               	cmpb	$0, -72(%rax)
-               	jne	0x4192f0 <kfun:kotlin.native.concurrent.Lock#lock(){}+0x180>
-               	movb	$1, -72(%rax)
+               	movl	-72(%rax), %ecx
+               	cmpl	$2, %ecx
+               	je	0x41945e <kfun:kotlin.native.concurrent.Lock#lock(){}+0x18e>
+               	cmpl	$3, %ecx
+               	je	0x4194bc <kfun:kotlin.native.concurrent.Lock#lock(){}+0x1ec>
+               	movl	$2, -72(%rax)

@@ -5378,21 +5475,21 @@
@@@[(3, 7)]@@@
-               	nopl	(%rax,%rax)
-               	movzbl	297529(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movzbl	299025(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>

@@ -5402,25 +5499,26 @@
@@@[(3, 6)]@@@
-               	nopl	(%rax)
+               	callq	0x41a300 <ThrowFileFailedToInitializeException>
+               	nopw	%cs:(%rax,%rax)

@@ -5454,29 +5552,29 @@
@@@[(9, 17), (18, 22)]@@@
-               	testb	$2, 89(%rax)
-               	jne	0x419421 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x81>
-               	jmp	0x419450 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	jne	0x4195a7 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x87>
+               	jmp	0x4195d6 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
@@@@
-               	testb	$2, 89(%rax)
-               	je	0x419450 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	je	0x4195d6 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>

@@ -5486,7 +5584,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -5581,19 +5679,19 @@
@@@[(17, 23)]@@@
-               	jne	0x419604 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
-               	movq	8(%r14), %rax
-               	cmpq	8(%rbx), %rax
+               	jne	0x419794 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
+               	movq	8(%rbx), %rax
+               	cmpq	%rax, 8(%r14)

@@ -5803,30 +5901,31 @@
@@@[(21, 32), (37, 39)]@@@
-               	movq	%rcx, 291104(%rip)      # 0x460ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	leaq	291097(%rip), %rdi      # 0x460ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	movq	$0, 24(%rax)
-               	movq	291082(%rip), %rsi      # 0x460ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	callq	0x4241a0 <InitAndRegisterGlobal>
+               	movq	%rcx, 292560(%rip)      # 0x4611f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	leaq	292553(%rip), %rdi      # 0x4611f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	292546(%rip), %rax      # 0x4611f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	$0, 8(%rax)
+               	movq	292531(%rip), %rsi      # 0x4611f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	callq	0x424800 <InitAndRegisterGlobal>
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -6345,116 +6444,118 @@
@@@[(3, 7), (9, 11), (16, 22), (24, 28), (29, 35), (36, 39), (44, 46), (48, 50), (54, 56), (58, 60), (78, 80), (82, 84), (88, 92), (98, 100), (107, 109), (110, 112), (113, 123), (124, 130), (131, 133), (134, 137), (139, 147), (153, 157), (163, 167)]@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
+               	movq	-64(%rax), %r15
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x41a349 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x69>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r12), %rdi
+               	je	0x41a4e7 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x67>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x427570 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	leaq	16(%rax), %rdx
+               	callq	0x427d60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
@@@@
-               	leaq	251374(%rip), %rcx      # 0x457960 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	leaq	252817(%rip), %rdx      # 0x4580a0 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 88(%rsp)
+               	movq	%rcx, 290009(%rip)      # 0x4611f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	movq	290002(%rip), %rax      # 0x4611f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
@@@@
-               	movq	%rcx, 16(%rax)
-               	movq	%rdx, 88(%rsp)
-               	movq	%rdx, 288561(%rip)      # 0x460ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
@@@@
-               	movq	288(%r12), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	288(%r12), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	288(%r12), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	js	0x41a61f <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33f>
-               	movq	296(%r12), %rdi
+               	js	0x41a7bc <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33c>
+               	movq	296(%r15), %rdi
@@@@
-               	leaq	16(%rax), %r15
+               	leaq	16(%rax), %r14
@@@@
-               	movq	%r15, 40(%rsp)
+               	movq	%r14, 40(%rsp)
@@@@
-               	xorl	%r14d, %r14d
+               	xorl	%r12d, %r12d
@@@@
-               	cmovsl	%r14d, %ebp
-               	cmpl	%r14d, %ebp
-               	je	0x41a509 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x229>
-               	nopl	(%rax)
-               	movzbl	292985(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%r12d, %ebp
+               	cmpl	%r12d, %ebp
+               	je	0x41a6ab <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x22b>
+               	nop
+               	movzbl	294433(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41a4e0 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x200>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	16(%r13,%r14,8), %rax
+               	je	0x41a680 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x200>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	16(%r13,%r12,8), %rax
@@@@
-               	movslq	16(%rax), %rcx
+               	movl	16(%rax), %ecx
@@@@
-               	jbe	0x41a61a <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33a>
+               	jbe	0x41a7b7 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x337>
+               	movslq	%ecx, %rcx
@@@@
-               	addq	$1, %r14
-               	cmpl	%r14d, %ebp
-               	jne	0x41a4d0 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x1f0>
-               	movq	(%r15), %rax
+               	addq	$1, %r12
+               	cmpl	%r12d, %ebp
+               	jne	0x41a670 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x1f0>
+               	movq	(%r14), %rax
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	%r15, 120(%rsp)
+               	movq	%rax, 288(%r15)
+               	movq	%r14, 120(%rsp)
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	288055(%rip), %rax      # 0x460a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
+               	movq	%rax, 288(%r15)
+               	movq	289495(%rip), %rax      # 0x4611d0 <kvar:kotlin.native.MemoryModel.$VALUES#internal>

@@ -6462,31 +6563,31 @@
@@@[(3, 5), (28, 36), (37, 39)]@@@
-               	movq	296(%r12), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	287945(%rip), %rsi      # 0x460ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
-               	leaq	287938(%rip), %rdi      # 0x460ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
-               	callq	0x4241a0 <InitAndRegisterGlobal>
+               	movq	%rax, 288(%r15)
+               	movq	289387(%rip), %rsi      # 0x4611f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	leaq	289380(%rip), %rdi      # 0x4611f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	callq	0x424800 <InitAndRegisterGlobal>
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)

@@ -6495,12 +6596,11 @@
@@@[(3, 14)]@@@
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	callq	0x41a090 <ThrowIllegalArgumentException>
-               	leaq	244325(%rip), %rsi      # 0x456090 <ktypeglobal:kotlin.Array#internal>
-               	movq	%r15, %rdi
-               	callq	0x419d80 <ThrowClassCastException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	callq	0x41a230 <ThrowIllegalArgumentException>
+               	leaq	245768(%rip), %rsi      # 0x4567d0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%r14, %rdi
+               	callq	0x419f20 <ThrowClassCastException>

@@ -7656,18 +7756,18 @@
@@@[(8, 18)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41b95b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x18b>
-               	movzbl	287923(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41bafd <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x19d>
+               	movzbl	289387(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>

@@ -7680,40 +7780,43 @@
@@@[(10, 12), (13, 16), (26, 29), (34, 38), (39, 42)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41b979 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41bb1b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx
@@@@
-               	jmp	0x41b922 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x152>
+               	jmp	0x41bac2 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x162>
+               	nopl	(%rax)
@@@@
-               	je	0x41b9c1 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1f1>
-               	movslq	20(%rbx), %rcx
+               	je	0x41bb63 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x203>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41b979 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41bb1b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx

@@ -7725,23 +7828,23 @@
@@@[(21, 27)]@@@
-               	callq	0x439900 <ThrowException>
-               	callq	0x419be0 <ThrowNullPointerException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x43a630 <ThrowException>
+               	callq	0x419d80 <ThrowNullPointerException>
+               	nopl	(%rax,%rax)

@@ -7772,52 +7875,52 @@
@@@[(45, 55)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41bce4 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x314>
-               	movzbl	287311(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41be94 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x324>
+               	movzbl	288759(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>

@@ -7836,19 +7939,20 @@
@@@[(10, 12), (13, 16)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41bd31 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41bee1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -7856,14 +7960,14 @@
@@@[(9, 13)]@@@
-               	jmp	0x41bc39 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
-               	nopl	(%rax)
+               	jmp	0x41bdd9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
+               	nop

@@ -7874,23 +7978,24 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41bd79 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3a9>
-               	movslq	20(%rbx), %rcx
+               	je	0x41bf29 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3b9>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41bd31 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41bee1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -7898,11 +8003,12 @@
@@@[(9, 12)]@@@
-               	jmp	0x41bacd <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	jmp	0x41bc6d <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	nopw	%cs:(%rax,%rax)

@@ -8016,13 +8122,13 @@
@@@[(6, 16)]@@@
-               	je	0x41bec4 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	68(%rbx), %eax
-               	cmpl	76(%rbx), %eax
-               	jle	0x41bfcc <kfun:kotlin.collections.HashMap.rehash#internal+0x18c>
+               	je	0x41c074 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	76(%rbx), %eax
+               	cmpl	%eax, 68(%rbx)
+               	jle	0x41c1ae <kfun:kotlin.collections.HashMap.rehash#internal+0x1be>

@@ -8039,67 +8145,67 @@
@@@[(10, 19), (58, 64), (81, 82), (83, 85)]@@@
-               	movslq	68(%rbx), %rdx
-               	cmpq	%rdx, %r13
-               	jge	0x41bfd5 <kfun:kotlin.collections.HashMap.rehash#internal+0x195>
-               	movzbl	286204(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	68(%rbx), %edx
+               	movslq	%edx, %rax
+               	cmpq	%rax, %r13
+               	jge	0x41c17a <kfun:kotlin.collections.HashMap.rehash#internal+0x18a>
+               	movzbl	287638(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	ja	0x41bf30 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	movq	288(%rbp), %rax
-               	jmp	0x41c009 <kfun:kotlin.collections.HashMap.rehash#internal+0x1c9>
+               	ja	0x41c0e0 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -8107,15 +8213,16 @@
@@@[(3, 13), (15, 16), (17, 19)]@@@
-               	movl	8(%rax), %ecx
-               	movq	8(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	cmpl	%r14d, %ecx
-               	jne	0x41c0ef <kfun:kotlin.collections.HashMap.rehash#internal+0x2af>
+               	movl	8(%rax), %eax
+               	movq	8(%rsp), %rcx
+               	movq	%rcx, 288(%rbp)
+               	cmpl	%r14d, %eax
+               	jne	0x41c2a2 <kfun:kotlin.collections.HashMap.rehash#internal+0x2b2>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -8173,14 +8280,13 @@
@@@[(10, 13)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)

@@ -8249,43 +8355,43 @@
@@@[(15, 17)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -8368,65 +8474,65 @@
@@@[(19, 21)]@@@
-               	movb	72(%r12), %cl
+               	movl	72(%r12), %ecx

@@ -8505,7 +8611,7 @@
@@@[(3, 5)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -8599,37 +8705,38 @@
@@@[(3, 7), (9, 18), (23, 25), (27, 29), (32, 34), (38, 42), (43, 49)]@@@
-               	movabsq	$17179869184, %rsi      # imm = 0x400000000
-               	movq	%rsi, 16(%rsp)
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 16(%rsp)
@@@@
-               	movq	8(%rsp), %rcx
-               	cmpl	8(%rdx), %r8d
-               	movq	%rcx, 288(%rbp)
-               	jl	0x41cc14 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5f4>
+               	movl	8(%rdx), %edx
+               	movq	8(%rsp), %rsi
+               	movq	%rsi, 288(%rbp)
+               	cmpl	%edx, %r8d
+               	jl	0x41cdcd <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5fd>
@@@@
-               	movq	%rsi, 16(%rsp)
+               	movq	%rcx, 16(%rsp)
@@@@
-               	movl	8(%rax), %ecx
+               	movl	8(%rax), %esi
@@@@
-               	movl	%ecx, %edx
+               	movl	%esi, %edx
@@@@
-               	movq	%rsi, %r13
-               	jg	0x41c97a <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	movq	%rcx, %r13
+               	jg	0x41cb2c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>
@@@@
-               	subl	%edx, %ecx
-               	testl	%ecx, %ecx
-               	jle	0x41c97a <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	subl	%edx, %esi
+               	testl	%esi, %esi
+               	jle	0x41cb2c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>

@@ -8639,15 +8746,15 @@
@@@[(3, 21)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	leal	3(%rdx), %esi
-               	testl	%edx, %edx
-               	cmovnsl	%edx, %esi
-               	sarl	$2, %esi
-               	cmpl	%esi, %eax
-               	jge	0x41cb00 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	leal	3(%rcx), %edx
+               	testl	%ecx, %ecx
+               	cmovnsl	%ecx, %edx
+               	sarl	$2, %edx
+               	cmpl	%edx, %eax
+               	jge	0x41ccb0 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>

@@ -8670,13 +8777,14 @@
@@@[(3, 14), (15, 17)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	cmpl	%eax, %edx
-               	jge	0x41cbd9 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
-               	movaps	%xmm0, (%rsp)
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	cmpl	%eax, %ecx
+               	jge	0x41cd92 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rcx

@@ -8696,19 +8804,18 @@
@@@[(17, 20)]@@@
-               	jmp	0x41cb44 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x524>
-               	nopw	(%rax,%rax)
+               	jmp	0x41ccfb <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x52b>

@@ -8725,13 +8832,14 @@
@@@[(7, 10), (11, 15)]@@@
-               	jmp	0x41c6c8 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
-               	movaps	%xmm0, (%rsp)
+               	jmp	0x41c878 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
@@@@
-               	movq	%rcx, 8(%rsp)
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax
+               	movq	%rax, 8(%rsp)

@@ -8775,16 +8883,17 @@
@@@[(3, 4), (5, 6), (7, 10)]@@@
+               	movl	8(%rax), %eax
@@@@
-               	cmpl	8(%rax), %esi
@@@@
-               	jle	0x41cbd9 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
+               	cmpl	%eax, %esi
+               	jle	0x41cd92 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>

@@ -8804,43 +8913,45 @@
@@@[(22, 26), (50, 54)]@@@
-               	addl	$1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 76(%rbx)
@@@@
-               	callq	0x439900 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43a630 <ThrowException>
+               	nopl	(%rax,%rax)

@@ -8989,46 +9100,46 @@
@@@[(37, 39)]@@@
-               	movzbl	72(%rbx), %ecx
+               	movl	72(%rbx), %ecx

@@ -9090,11 +9201,13 @@
@@@[(8, 12)]@@@
-               	addl	$-1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 76(%rbx)

@@ -9105,8 +9218,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)

@@ -9347,26 +9460,26 @@
@@@[(22, 30)]@@@
-               	movl	$4294967165, %ecx       # imm = 0xFFFFFF7D
-               	addl	92(%rax), %ecx
-               	cmpl	$2, %ecx
-               	jb	0x41d4ce <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>
+               	movl	92(%rax), %eax
+               	addl	$4294967165, %eax       # imm = 0xFFFFFF7D
+               	cmpl	$2, %eax
+               	jb	0x41d68e <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>

@@ -9451,51 +9564,50 @@
@@@[(6, 14), (18, 19), (47, 51), (58, 68)]@@@
-               	je	0x41d69d <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x5d>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	jmp	0x41d6b9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x79>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x41d869 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x41d869 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
@@@@
+               	movl	16(%rbx), %eax
@@@@
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)
@@@@
-               	je	0x41d723 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
+               	je	0x41d8d3 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)

@@ -9538,26 +9650,27 @@
@@@[(6, 20), (21, 36)]@@@
-               	je	0x41d7eb <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %eax
-               	movq	8(%r15), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41d844 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc4>
-               	leal	1(%rax), %edx
+               	je	0x41d99b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %ecx
+               	movq	8(%r15), %rax
+               	cmpl	68(%rax), %ecx
+               	jge	0x41d9f9 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc9>
+               	leal	1(%rcx), %edx
@@@@
-               	movl	%eax, 20(%r15)
-               	movq	8(%rcx), %rcx
-               	movq	%rcx, 32(%rsp)
-               	cmpl	%eax, 8(%rcx)
-               	jbe	0x41d888 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x108>
-               	cltq
-               	movq	16(%rcx,%rax,8), %rbx
+               	movl	%ecx, 20(%r15)
+               	movq	8(%rax), %rax
+               	movq	%rax, 32(%rsp)
+               	movl	20(%r15), %ecx
+               	cmpl	%ecx, 8(%rax)
+               	jbe	0x41da3d <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x10d>
+               	movslq	%ecx, %rcx
+               	movq	16(%rax,%rcx,8), %rbx

@@ -9571,19 +9684,19 @@
@@@[(16, 22)]@@@
-               	callq	0x439900 <ThrowException>
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax)
+               	callq	0x43a630 <ThrowException>
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -9607,30 +9720,31 @@
@@@[(6, 25), (36, 40)]@@@
-               	je	0x41d902 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %r13d
-               	movq	8(%r15), %rbp
-               	cmpl	68(%rbp), %r13d
-               	jge	0x41d980 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf0>
-               	leal	1(%r13), %eax
-               	movl	%eax, 16(%r15)
-               	movl	%r13d, 20(%r15)
+               	je	0x41dac2 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %eax
+               	movq	8(%r15), %r13
+               	cmpl	68(%r13), %eax
+               	jge	0x41db42 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf2>
+               	leal	1(%rax), %ecx
+               	movl	%ecx, 16(%r15)
+               	movl	%eax, 20(%r15)
+               	movl	20(%r15), %ebp
@@@@
-               	movq	%rbp, 24(%rax)
-               	movl	%r13d, 32(%rax)
+               	movq	%r13, 24(%rax)
+               	movl	%ebp, 32(%rax)

@@ -9677,16 +9791,17 @@
@@@[(13, 15), (16, 19)]@@@
-               	movslq	16(%r15), %rcx
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41da66 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x96>
+               	jbe	0x41dc29 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x99>
+               	movslq	%ecx, %rcx

@@ -9696,8 +9811,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -9717,18 +9832,19 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41db0b <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9b>
-               	movslq	16(%r15), %rcx
+               	je	0x41dcce <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9e>
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41db10 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa0>
+               	jbe	0x41dcd3 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa3>
+               	movslq	%ecx, %rcx

@@ -9738,9 +9854,9 @@
@@@[(3, 9)]@@@
-               	callq	0x419be0 <ThrowNullPointerException>
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419d80 <ThrowNullPointerException>
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax,%rax)

@@ -10811,26 +10927,27 @@
@@@[(17, 19), (26, 33)]@@@
-               	movslq	16(%rbx), %r14
+               	movl	16(%rbx), %r14d
@@@@
-               	jbe	0x41ea66 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd6>
-               	movq	(%rbp), %rax
-               	movw	%r15w, 16(%rbp,%r14,2)
+               	jbe	0x41ec29 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd9>
+               	movslq	%r14d, %rax
+               	movq	(%rbp), %rcx
+               	movw	%r15w, 16(%rbp,%rax,2)

@@ -10844,8 +10961,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -10898,17 +11015,17 @@
@@@[(3, 5), (6, 8), (12, 22)]@@@
-               	movl	%ecx, %ebp
+               	movl	%ecx, %ebx
@@@@
-               	movq	%rsi, %rbx
+               	movq	%rsi, %r15
@@@@
-               	je	0x41eb1f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	leaq	252855(%rip), %r12      # 0x45c6e0 <__unnamed_8>
-               	cmovneq	%rbx, %r12
+               	je	0x41ecdf <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testq	%r15, %r15
+               	leaq	254263(%rip), %rbp      # 0x45ce20 <__unnamed_8>
+               	cmovneq	%r15, %rbp

@@ -10922,7 +11039,7 @@
@@@[(3, 5)]@@@
-               	movq	(%r12), %rax
+               	movq	(%rbp), %rax

@@ -10930,49 +11047,51 @@
@@@[(3, 5), (7, 9), (10, 28), (31, 42), (44, 67), (68, 70), (74, 78)]@@@
-               	movq	%r12, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	movl	%ebp, %esi
+               	movl	%ebx, %esi
@@@@
-               	callq	0x41a640 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
-               	movl	%ebp, %ebx
-               	subl	%r13d, %ebx
-               	movq	8(%rsp), %r14
-               	movl	16(%r14), %esi
-               	addl	%ebx, %esi
-               	movq	%r14, %rdi
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movq	(%r12), %rax
+               	callq	0x41a7d0 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
+               	movl	%ebx, %r14d
+               	subl	%r13d, %r14d
+               	movq	8(%rsp), %r15
+               	movl	16(%r15), %esi
+               	addl	%r14d, %esi
+               	movq	%r15, %rdi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	(%rbp), %rax
@@@@
-               	jne	0x41ec4d <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x15d>
-               	movslq	16(%r14), %rbp
-               	movq	8(%r14), %rax
-               	movq	%rax, 56(%rsp)
-               	leaq	(%rax,%rbp,2), %rdi
+               	jne	0x41ee1b <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x16b>
+               	movl	16(%r15), %eax
+               	movq	8(%r15), %rcx
+               	movq	%rcx, 56(%rsp)
+               	movslq	%eax, %r15
+               	leaq	(%rcx,%r15,2), %rdi
@@@@
-               	leaq	(%r12,%rax,2), %rsi
-               	addq	$16, %rsi
-               	movslq	%ebx, %rdx
-               	addq	%rdx, %rdx
-               	callq	0x4136e0 <memcpy@plt>
-               	addl	%ebp, %ebx
-               	movq	%r14, %rdi
-               	movl	%ebx, %esi
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r14)
-               	movq	%r14, %rbx
+               	leaq	16(,%rax,2), %rsi
+               	addq	%rbp, %rsi
+               	movslq	%r14d, %rbp
+               	movq	%rbp, %rdx
+               	addq	%rbp, %rdx
+               	callq	0x4136f0 <memcpy@plt>
+               	addl	%r15d, %ebp
+               	movq	8(%rsp), %r15
+               	movq	%r15, %rdi
+               	movl	%ebp, %esi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%ebp, 16(%r15)
@@@@
-               	movq	%rbx, (%rdx)
+               	movq	%r15, (%rdx)
@@@@
-               	movq	%rbx, (%rdx)
-               	movq	%rbx, %rax
+               	movq	%r15, (%rdx)
+               	movq	%r15, %rax

@@ -10981,27 +11100,26 @@
@@@[(3, 18), (19, 29), (30, 32), (33, 41)]@@@
-               	cmpl	%r13d, %ebp
-               	cmovll	%r13d, %ebp
-               	movq	%r12, %r14
-               	movl	%ebp, 4(%rsp)
-               	movq	8(%rsp), %rbx
-               	cmpl	%r13d, %ebp
-               	je	0x41ec18 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	nopl	(%rax)
-               	movzbl	274649(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	cmpl	%r13d, %ebx
+               	cmovll	%r13d, %ebx
+               	cmpl	%r13d, %ebx
+               	je	0x41ede6 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	nopl	(%rax,%rax)
+               	movzbl	276065(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41ec80 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	8(%rbx), %rbp
-               	movq	%rbp, 64(%rsp)
-               	movslq	16(%rbx), %r12
+               	je	0x41ee40 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%r15), %r14
+               	movq	%r14, 64(%rsp)
+               	movl	16(%r15), %r12d
@@@@
-               	movq	%rbx, %rdi
+               	movq	8(%rsp), %rdi
@@@@
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%r15d, 16(%rbx)
-               	movq	(%r14), %rax
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	8(%rsp), %rax
+               	movl	%r15d, 16(%rax)
+               	movq	8(%rsp), %r15
+               	movq	(%rbp), %rax

@@ -11009,20 +11127,20 @@
@@@[(3, 5), (7, 12), (13, 28)]@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jbe	0x41ece9 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x1f9>
+               	cmpl	%r12d, 8(%r14)
+               	jbe	0x41eeb4 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x204>
+               	movslq	%r12d, %rcx
@@@@
-               	movq	(%rbp), %rcx
-               	movw	%ax, 16(%rbp,%r12,2)
-               	movl	4(%rsp), %ebp
-               	cmpl	%r13d, %ebp
-               	jne	0x41ec70 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
-               	jmp	0x41ec18 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	callq	0x419cb0 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	movq	(%r14), %rdx
+               	movw	%ax, 16(%r14,%rcx,2)
+               	cmpl	%r13d, %ebx
+               	jne	0x41ee30 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
+               	jmp	0x41ede6 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	callq	0x419e50 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax)

@@ -11034,62 +11152,62 @@
@@@[(3, 5), (9, 13), (15, 17), (22, 28), (29, 37), (38, 42), (43, 45), (51, 58), (59, 60), (63, 67), (71, 83), (84, 86), (87, 91)]@@@
-               	movq	%rdi, %r15
+               	movq	%rdi, %rbx
@@@@
-               	movq	-64(%rax), %rbp
-               	movq	288(%rbp), %rax
+               	movq	-64(%rax), %r13
+               	movq	288(%r13), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r13)
@@@@
-               	je	0x41ed5f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %esi
+               	je	0x41ef2f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%rbx), %esi
@@@@
-               	movq	%r15, %rdi
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r15), %r13
-               	movq	8(%r15), %r14
+               	movq	%rbx, %rdi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	16(%rbx), %r15d
+               	movq	8(%rbx), %r14
@@@@
-               	leaq	12(%rsp), %rbx
-               	leaq	152337(%rip), %rdx      # 0x444098 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	leaq	12(%rsp), %rbp
+               	leaq	155522(%rip), %rdx      # 0x444ed8 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
@@@@
-               	movq	%rbx, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	je	0x41edc6 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
-               	leaq	12(%rsp), %rbx
-               	leaq	(%r14,%r13,2), %rcx
+               	je	0x41ef96 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
+               	movslq	%r15d, %rcx
+               	leaq	12(%rsp), %rbp
+               	leaq	(%r14,%rcx,2), %rcx
@@@@
-               	nop
@@@@
-               	movzbl	1(%rbx), %eax
-               	addq	$1, %rbx
+               	movzbl	1(%rbp), %eax
+               	addq	$1, %rbp
@@@@
-               	subl	%eax, %ebx
-               	addl	%r13d, %ebx
-               	movq	%r15, %rdi
-               	movl	%ebx, %esi
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r15)
+               	subl	%eax, %ebp
+               	addl	%ebp, %r15d
+               	movq	%rbx, %rdi
+               	movl	%r15d, %esi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%rbx)
@@@@
-               	movq	%r15, (%rax)
+               	movq	%rbx, (%rax)
@@@@
-               	movq	%rax, 288(%rbp)
-               	movq	%r15, %rax
+               	movq	%rax, 288(%r13)
+               	movq	%rbx, %rax

@@ -11122,33 +11240,34 @@
@@@[(14, 18), (19, 32), (34, 38), (39, 43), (44, 50)]@@@
-               	movl	16(%r12), %esi
-               	addl	8(%rbx), %esi
+               	movl	8(%rbx), %esi
+               	addl	16(%r12), %esi
@@@@
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r12), %r15
-               	movq	8(%r12), %rax
-               	movq	%rax, 24(%rsp)
-               	movslq	8(%rbx), %rbp
-               	leaq	(%rax,%r15,2), %rdi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	16(%r12), %eax
+               	movq	8(%r12), %rcx
+               	movq	%rcx, 24(%rsp)
+               	movl	8(%rbx), %edx
+               	movslq	%eax, %rbp
+               	leaq	(%rcx,%rbp,2), %rdi
@@@@
-               	movq	%rbp, %rdx
-               	addq	%rbp, %rdx
+               	movslq	%edx, %r15
+               	leaq	(%r15,%r15), %rdx
@@@@
-               	callq	0x4136e0 <memcpy@plt>
-               	leal	(%r15,%rbp), %ebx
+               	callq	0x4136f0 <memcpy@plt>
+               	addl	%ebp, %r15d
@@@@
-               	movl	%ebx, %esi
-               	callq	0x41ef00 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r12)
+               	movl	%r15d, %esi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%r12)

@@ -11234,29 +11353,28 @@
@@@[(13, 15), (16, 19)]@@@
-               	testq	%rbp, %rbp
-               	je	0x41f0b1 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xe1>
@@@@
-               	js	0x41f118 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x148>
+               	je	0x41f27e <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xde>
+               	js	0x41f2e5 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x145>

@@ -11291,8 +11409,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41a090 <ThrowIllegalArgumentException>
-               	nopl	(%rax)
+               	callq	0x41a230 <ThrowIllegalArgumentException>
+               	nopw	(%rax,%rax)

@@ -12054,20 +12172,21 @@
@@@[(3, 4), (6, 8), (11, 13)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax
@@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -12140,19 +12259,20 @@
@@@[(3, 4), (6, 8)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax

@@ -12251,20 +12371,22 @@
@@@[(13, 14), (22, 23)]@@@
+               	movq	32(%rsp), %rax
@@@@
+               	movq	32(%rsp), %rax

@@ -12275,7 +12397,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -12381,35 +12503,36 @@
@@@[(26, 34), (43, 46)]@@@
-               	callq	0x41fe10 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
-               	movslq	16(%r15), %rcx
-               	testq	%rcx, %rcx
-               	js	0x4200c9 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa9>
+               	callq	0x41fff0 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
+               	movl	16(%r15), %ecx
+               	testl	%ecx, %ecx
+               	js	0x4202b8 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa8>
@@@@
-               	jbe	0x4200fc <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xdc>
+               	jbe	0x4202ee <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xde>
+               	movslq	%ecx, %rcx

@@ -12499,112 +12622,113 @@
@@@[(27, 37), (71, 73), (79, 103), (113, 127), (128, 132), (133, 141), (156, 159)]@@@
-               	movq	-64(%rax), %r13
-               	movq	288(%r13), %rax
-               	movq	%rax, 88(%rsp)
-               	leaq	80(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	movq	-64(%rax), %rbx
+               	movq	288(%rbx), %rax
+               	movq	%rax, 24(%rsp)
+               	leaq	16(%rsp), %rax
+               	movq	%rax, 288(%rbx)
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	jg	0x4202c0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
-               	jmp	0x4204ae <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	leaq	8(%rsp), %rax
-               	movq	%rax, 104(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movq	%rax, 120(%rsp)
-               	movq	8(%rsp), %rcx
-               	movw	%bp, 24(%rsp)
-               	movq	%rax, 128(%rsp)
-               	cmpl	$1, 16(%rsp)
-               	jne	0x4203dc <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
+               	jg	0x4204b0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
+               	jmp	0x4206a8 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
+               	leaq	128(%rsp), %rax
+               	movq	%rax, 40(%rsp)
+               	movq	%rax, 48(%rsp)
+               	movq	48(%rsp), %rax
+               	movq	%rax, 56(%rsp)
+               	movq	(%rax), %rcx
+               	movw	%bp, 16(%rax)
+               	movq	48(%rsp), %r14
+               	movq	%r14, 64(%rsp)
+               	cmpl	$1, 8(%r14)
+               	jne	0x4205cc <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
@@@@
-               	movaps	%xmm0, 48(%rsp)
-               	movaps	%xmm0, 32(%rsp)
-               	movq	$0, 64(%rsp)
-               	movq	288(%r13), %rax
-               	movq	%rax, 40(%rsp)
-               	leaq	32(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	movaps	%xmm0, 96(%rsp)
+               	movaps	%xmm0, 80(%rsp)
+               	movq	$0, 112(%rsp)
+               	movq	288(%rbx), %rax
+               	movq	%rax, 88(%rsp)
+               	leaq	80(%rsp), %rax
+               	movq	%rax, 288(%rbx)
@@@@
-               	movq	%rax, 48(%rsp)
-               	movl	16(%rsp), %eax
+               	movq	%rax, 96(%rsp)
+               	movl	8(%r14), %eax
@@@@
-               	jne	0x4204d4 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x304>
-               	movzwl	24(%rsp), %esi
-               	movq	40(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
+               	jne	0x4206ce <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x30e>
+               	movzwl	16(%r14), %esi
+               	movq	88(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax)

@@ -12619,16 +12743,16 @@
@@@[(3, 4), (5, 12)]@@@
-               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
@@@@
-               	js	0x4204ae <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	xorl	%r15d, %r15d
-               	movb	268591(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	js	0x42069a <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2da>
+               	xorl	%r13d, %r13d
+               	movq	%rbx, 8(%rsp)
+               	movb	269959(%rip), %al       # 0x462498 <kotlin::mm::internal::gSuspensionRequested>

@@ -12641,33 +12765,34 @@
@@@[(3, 18), (19, 33), (37, 40), (41, 45), (46, 53)]@@@
-               	movl	16(%rsp), %r14d
-               	testl	%r14d, %r14d
-               	cmovsl	%r15d, %r14d
-               	xorl	%r15d, %r15d
-               	cmpl	%r15d, %r14d
-               	je	0x420491 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
-               	nopl	(%rax)
-               	movzbl	268505(%rip), %eax      # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	8(%r14), %r15d
+               	testl	%r15d, %r15d
+               	cmovsl	%r13d, %r15d
+               	xorl	%r13d, %r13d
+               	cmpl	%r13d, %r15d
+               	je	0x420681 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
+               	movzbl	269873(%rip), %eax      # 0x462498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x420480 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	cmpw	%bx, 24(%rsp,%r15,2)
-               	je	0x4204ac <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2dc>
-               	addq	$1, %r15
-               	cmpl	%r15d, %r14d
-               	jne	0x420470 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
+               	je	0x420670 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	cmpw	%bx, 16(%r14,%r13,2)
+               	je	0x4206a1 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e1>
+               	addq	$1, %r13
+               	cmpl	%r13d, %r15d
+               	jne	0x420660 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
@@@@
+               	movq	8(%rsp), %rbx
+               	movl	$0, %r13d
+               	jg	0x42060b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
@@@@
-               	movl	$0, %r15d
-               	jg	0x42041b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
-               	jmp	0x4204ae <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
+               	jmp	0x4206a8 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
-               	addq	$136, %rsp
+               	movq	8(%rsp), %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
+               	addq	$152, %rsp

@@ -12676,37 +12801,37 @@
@@@[(9, 13), (22, 30), (47, 51)]@@@
-               	jne	0x420512 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x342>
-               	movq	296(%r13), %rdi
+               	jne	0x42070c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x34c>
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rbx, 56(%rsp)
-               	leaq	248176(%rip), %rsi      # 0x45ce80 <__unnamed_49>
-               	jmp	0x42054a <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x37a>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 104(%rsp)
+               	leaq	249526(%rip), %rsi      # 0x45d5c0 <__unnamed_49>
+               	jmp	0x420744 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x384>
+               	movq	296(%rbx), %rdi
@@@@
-               	callq	0x439900 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43a630 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -12769,2779 +12894,2969 @@
@@@[(2881, 2889), (2890, 2895), (2896, 2899), (2903, 2909), (2913, 2919), (2923, 2929), (2933, 2939), (2943, 2949), (2953, 2959), (2963, 2969), (2973, 2979), (2983, 2989), (2993, 2999), (3003, 3009), (3013, 3019), (3023, 3029), (3033, 3039), (3043, 3049), (3053, 3059), (3063, 3069), (3073, 3079), (3083, 3089), (3093, 3099), (3103, 3109), (3113, 3119), (3123, 3129), (3133, 3139), (3143, 3149), (3153, 3159), (3163, 3169), (3173, 3179), (3183, 3189), (3193, 3199), (3203, 3209), (3213, 3219), (3223, 3229), (3233, 3239), (3243, 3249), (3253, 3259), (3263, 3269), (3273, 3279), (3283, 3289), (3293, 3299), (3303, 3309), (3313, 3319), (3323, 3329), (3333, 3339), (3343, 3349), (3353, 3359), (3363, 3369), (3373, 3379), (3383, 3389), (3393, 3399), (3403, 3409), (3413, 3419), (3423, 3429), (3433, 3439), (3443, 3449), (3453, 3459), (3463, 3469), (3473, 3479), (3483, 3489), (3493, 3499), (3503, 3509), (3513, 3519), (3523, 3529), (3533, 3539), (3543, 3549), (3553, 3559), (3563, 3569), (3573, 3579), (3583, 3589), (3593, 3599), (3603, 3609), (3613, 3619), (3623, 3629), (3633, 3639), (3643, 3649), (3653, 3659), (3663, 3669), (3673, 3679), (3683, 3689), (3693, 3699), (3703, 3709), (3713, 3719), (3723, 3729), (3733, 3739), (3743, 3749), (3753, 3759), (3763, 3769), (3773, 3779), (3783, 3789), (3793, 3799), (3803, 3809), (3813, 3819), (3823, 3829), (3833, 3839), (3843, 3849), (3853, 3864), (3868, 3871), (3875, 3877)]@@@
-               	cmpb	$0, 256785(%rip)        # 0x460ae8 <_Konan_init_stdlib_guard>
-               	je	0x421fe7 <_Konan_constructors+0x17>
-               	cmpb	$0, 256777(%rip)        # 0x460ae9 <_Konan_init_main_guard>
-               	je	0x422aed <_Konan_constructors+0xb1d>
+               	cmpl	$0, 258129(%rip)        # 0x461228 <state_global$kotlin.ranges.IntRange+0x4>
+               	je	0x4221e7 <_Konan_constructors+0x17>
+               	cmpl	$0, 258124(%rip)        # 0x46122c <state_global$kotlin.ranges.IntRange+0x8>
+               	je	0x423105 <_Konan_constructors+0xf35>
@@@@
-               	movb	$1, 256762(%rip)        # 0x460ae8 <_Konan_init_stdlib_guard>
-               	leaq	361683(%rip), %rax      # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	movq	361708(%rip), %rcx      # 0x47a4e8 <(anonymous namespace)::initTailNode>
+               	movl	$1, 258103(%rip)        # 0x461228 <state_global$kotlin.ranges.IntRange+0x4>
+               	movq	363056(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
@@@@
-               	cmpq	$0, 361664(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
+               	cmpq	$0, 363012(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
+               	leaq	363005(%rip), %rax      # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361642(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250619(%rip), %rcx      # 0x45f320 <init_node+0x8>
+               	movq	%rdx, 363016(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	363009(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362965(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361613(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250606(%rip), %rcx      # 0x45f330 <init_node.16+0x8>
+               	movq	%rdx, 362976(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362969(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362925(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361584(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250593(%rip), %rcx      # 0x45f340 <init_node.17+0x8>
+               	movq	%rdx, 362936(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362929(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362885(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361555(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250580(%rip), %rcx      # 0x45f350 <init_node.18+0x8>
+               	movq	%rdx, 362896(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362889(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362845(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361526(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250567(%rip), %rcx      # 0x45f360 <init_node.19+0x8>
+               	movq	%rdx, 362856(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362849(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362805(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361497(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250554(%rip), %rcx      # 0x45f370 <init_node.20+0x8>
+               	movq	%rdx, 362816(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362809(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362765(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361468(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250541(%rip), %rcx      # 0x45f380 <init_node.21+0x8>
+               	movq	%rdx, 362776(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362769(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362725(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361439(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250528(%rip), %rcx      # 0x45f390 <init_node.22+0x8>
+               	movq	%rdx, 362736(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362729(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362685(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361410(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250515(%rip), %rcx      # 0x45f3a0 <init_node.23+0x8>
+               	movq	%rdx, 362696(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362689(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362645(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361381(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250502(%rip), %rcx      # 0x45f3b0 <init_node.24+0x8>
+               	movq	%rdx, 362656(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362649(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362605(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361352(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250489(%rip), %rcx      # 0x45f3c0 <init_node.25+0x8>
+               	movq	%rdx, 362616(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362609(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362565(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361323(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250476(%rip), %rcx      # 0x45f3d0 <init_node.26+0x8>
+               	movq	%rdx, 362576(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362569(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362525(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361294(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250463(%rip), %rcx      # 0x45f3e0 <init_node.27+0x8>
+               	movq	%rdx, 362536(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362529(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362485(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361265(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250450(%rip), %rcx      # 0x45f3f0 <init_node.28+0x8>
+               	movq	%rdx, 362496(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362489(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362445(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361236(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250437(%rip), %rcx      # 0x45f400 <init_node.29+0x8>
+               	movq	%rdx, 362456(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362449(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362405(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361207(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250424(%rip), %rcx      # 0x45f410 <init_node.30+0x8>
+               	movq	%rdx, 362416(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362409(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362365(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361178(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250411(%rip), %rcx      # 0x45f420 <init_node.31+0x8>
+               	movq	%rdx, 362376(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362369(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362325(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361149(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250398(%rip), %rcx      # 0x45f430 <init_node.32+0x8>
+               	movq	%rdx, 362336(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362329(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362285(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361120(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250385(%rip), %rcx      # 0x45f440 <init_node.33+0x8>
+               	movq	%rdx, 362296(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362289(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362245(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361091(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250372(%rip), %rcx      # 0x45f450 <init_node.34+0x8>
+               	movq	%rdx, 362256(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362249(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362205(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361062(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250359(%rip), %rcx      # 0x45f460 <init_node.35+0x8>
+               	movq	%rdx, 362216(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362209(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362165(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361033(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250346(%rip), %rcx      # 0x45f470 <init_node.36+0x8>
+               	movq	%rdx, 362176(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362169(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362125(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 361004(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250333(%rip), %rcx      # 0x45f480 <init_node.37+0x8>
+               	movq	%rdx, 362136(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362129(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362085(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360975(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250320(%rip), %rcx      # 0x45f490 <init_node.38+0x8>
+               	movq	%rdx, 362096(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362089(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362045(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360946(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250307(%rip), %rcx      # 0x45f4a0 <init_node.39+0x8>
+               	movq	%rdx, 362056(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362049(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 362005(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360917(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250294(%rip), %rcx      # 0x45f4b0 <init_node.40+0x8>
+               	movq	%rdx, 362016(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	362009(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361965(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360888(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250281(%rip), %rcx      # 0x45f4c0 <init_node.41+0x8>
+               	movq	%rdx, 361976(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361969(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361925(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360859(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250268(%rip), %rcx      # 0x45f4d0 <init_node.42+0x8>
+               	movq	%rdx, 361936(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361929(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361885(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360830(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250255(%rip), %rcx      # 0x45f4e0 <init_node.43+0x8>
+               	movq	%rdx, 361896(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361889(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361845(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360801(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250242(%rip), %rcx      # 0x45f4f0 <init_node.44+0x8>
+               	movq	%rdx, 361856(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361849(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361805(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360772(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250229(%rip), %rcx      # 0x45f500 <init_node.45+0x8>
+               	movq	%rdx, 361816(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361809(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361765(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360743(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250216(%rip), %rcx      # 0x45f510 <init_node.46+0x8>
+               	movq	%rdx, 361776(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361769(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361725(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360714(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250203(%rip), %rcx      # 0x45f520 <init_node.47+0x8>
+               	movq	%rdx, 361736(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361729(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361685(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360685(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250190(%rip), %rcx      # 0x45f530 <init_node.48+0x8>
+               	movq	%rdx, 361696(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361689(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361645(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360656(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250177(%rip), %rcx      # 0x45f540 <init_node.49+0x8>
+               	movq	%rdx, 361656(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361649(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361605(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360627(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250164(%rip), %rcx      # 0x45f550 <init_node.50+0x8>
+               	movq	%rdx, 361616(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361609(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361565(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360598(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250151(%rip), %rcx      # 0x45f560 <init_node.51+0x8>
+               	movq	%rdx, 361576(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361569(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361525(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360569(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250138(%rip), %rcx      # 0x45f570 <init_node.52+0x8>
+               	movq	%rdx, 361536(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361529(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361485(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360540(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250125(%rip), %rcx      # 0x45f580 <init_node.53+0x8>
+               	movq	%rdx, 361496(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361489(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361445(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360511(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250112(%rip), %rcx      # 0x45f590 <init_node.54+0x8>
+               	movq	%rdx, 361456(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361449(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361405(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360482(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250099(%rip), %rcx      # 0x45f5a0 <init_node.55+0x8>
+               	movq	%rdx, 361416(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361409(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361365(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360453(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250086(%rip), %rcx      # 0x45f5b0 <init_node.56+0x8>
+               	movq	%rdx, 361376(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361369(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361325(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360424(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250073(%rip), %rcx      # 0x45f5c0 <init_node.57+0x8>
+               	movq	%rdx, 361336(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361329(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361285(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360395(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250060(%rip), %rcx      # 0x45f5d0 <init_node.58+0x8>
+               	movq	%rdx, 361296(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361289(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361245(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360366(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250047(%rip), %rcx      # 0x45f5e0 <init_node.59+0x8>
+               	movq	%rdx, 361256(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361249(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361205(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360337(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250034(%rip), %rcx      # 0x45f5f0 <init_node.60+0x8>
+               	movq	%rdx, 361216(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361209(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361165(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360308(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250021(%rip), %rcx      # 0x45f600 <init_node.61+0x8>
+               	movq	%rdx, 361176(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361169(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361125(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360279(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	250008(%rip), %rcx      # 0x45f610 <init_node.62+0x8>
+               	movq	%rdx, 361136(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361129(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361085(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360250(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249995(%rip), %rcx      # 0x45f620 <init_node.63+0x8>
+               	movq	%rdx, 361096(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361089(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361045(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360221(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249982(%rip), %rcx      # 0x45f630 <init_node.64+0x8>
+               	movq	%rdx, 361056(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361049(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 361005(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360192(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249969(%rip), %rcx      # 0x45f640 <init_node.65+0x8>
+               	movq	%rdx, 361016(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	361009(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360965(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360163(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249956(%rip), %rcx      # 0x45f650 <init_node.66+0x8>
+               	movq	%rdx, 360976(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360969(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360925(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360134(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249943(%rip), %rcx      # 0x45f660 <init_node.67+0x8>
+               	movq	%rdx, 360936(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360929(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360885(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360105(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249930(%rip), %rcx      # 0x45f670 <init_node.68+0x8>
+               	movq	%rdx, 360896(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360889(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360845(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360076(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249917(%rip), %rcx      # 0x45f680 <init_node.69+0x8>
+               	movq	%rdx, 360856(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360849(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360805(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360047(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249904(%rip), %rcx      # 0x45f690 <init_node.70+0x8>
+               	movq	%rdx, 360816(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360809(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360765(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 360018(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249891(%rip), %rcx      # 0x45f6a0 <init_node.71+0x8>
+               	movq	%rdx, 360776(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360769(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360725(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359989(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249878(%rip), %rcx      # 0x45f6b0 <init_node.72+0x8>
+               	movq	%rdx, 360736(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360729(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360685(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359960(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249865(%rip), %rcx      # 0x45f6c0 <init_node.73+0x8>
+               	movq	%rdx, 360696(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360689(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360645(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359931(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249852(%rip), %rcx      # 0x45f6d0 <init_node.74+0x8>
+               	movq	%rdx, 360656(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360649(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360605(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359902(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249839(%rip), %rcx      # 0x45f6e0 <init_node.75+0x8>
+               	movq	%rdx, 360616(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360609(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360565(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359873(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249826(%rip), %rcx      # 0x45f6f0 <init_node.76+0x8>
+               	movq	%rdx, 360576(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360569(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360525(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359844(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249813(%rip), %rcx      # 0x45f700 <init_node.77+0x8>
+               	movq	%rdx, 360536(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360529(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360485(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359815(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249800(%rip), %rcx      # 0x45f710 <init_node.78+0x8>
+               	movq	%rdx, 360496(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360489(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360445(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359786(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249787(%rip), %rcx      # 0x45f720 <init_node.79+0x8>
+               	movq	%rdx, 360456(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360449(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360405(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359757(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249774(%rip), %rcx      # 0x45f730 <init_node.80+0x8>
+               	movq	%rdx, 360416(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360409(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360365(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359728(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249761(%rip), %rcx      # 0x45f740 <init_node.81+0x8>
+               	movq	%rdx, 360376(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360369(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360325(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359699(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249748(%rip), %rcx      # 0x45f750 <init_node.82+0x8>
+               	movq	%rdx, 360336(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360329(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360285(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359670(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249735(%rip), %rcx      # 0x45f760 <init_node.83+0x8>
+               	movq	%rdx, 360296(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360289(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360245(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359641(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249722(%rip), %rcx      # 0x45f770 <init_node.84+0x8>
+               	movq	%rdx, 360256(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360249(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360205(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359612(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249709(%rip), %rcx      # 0x45f780 <init_node.85+0x8>
+               	movq	%rdx, 360216(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360209(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360165(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359583(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249696(%rip), %rcx      # 0x45f790 <init_node.86+0x8>
+               	movq	%rdx, 360176(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360169(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360125(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359554(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249683(%rip), %rcx      # 0x45f7a0 <init_node.87+0x8>
+               	movq	%rdx, 360136(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360129(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360085(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359525(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249670(%rip), %rcx      # 0x45f7b0 <init_node.88+0x8>
+               	movq	%rdx, 360096(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360089(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360045(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359496(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249657(%rip), %rcx      # 0x45f7c0 <init_node.89+0x8>
+               	movq	%rdx, 360056(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360049(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 360005(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359467(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249644(%rip), %rcx      # 0x45f7d0 <init_node.90+0x8>
+               	movq	%rdx, 360016(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	360009(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359965(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359438(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249631(%rip), %rcx      # 0x45f7e0 <init_node.91+0x8>
+               	movq	%rdx, 359976(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359969(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359925(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359409(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249618(%rip), %rcx      # 0x45f7f0 <init_node.92+0x8>
+               	movq	%rdx, 359936(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359929(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359885(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359380(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249605(%rip), %rcx      # 0x45f800 <init_node.93+0x8>
+               	movq	%rdx, 359896(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359889(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359845(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359351(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249592(%rip), %rcx      # 0x45f810 <init_node.94+0x8>
+               	movq	%rdx, 359856(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359849(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359805(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359322(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249579(%rip), %rcx      # 0x45f820 <init_node.95+0x8>
+               	movq	%rdx, 359816(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359809(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359765(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359293(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249566(%rip), %rcx      # 0x45f830 <init_node.96+0x8>
+               	movq	%rdx, 359776(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359769(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359725(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359264(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249553(%rip), %rcx      # 0x45f840 <init_node.97+0x8>
+               	movq	%rdx, 359736(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359729(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359685(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359235(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249540(%rip), %rcx      # 0x45f850 <init_node.98+0x8>
+               	movq	%rdx, 359696(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359689(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359645(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359206(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249527(%rip), %rcx      # 0x45f860 <init_node.99+0x8>
+               	movq	%rdx, 359656(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359649(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359605(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359177(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249514(%rip), %rcx      # 0x45f870 <init_node.100+0x8>
+               	movq	%rdx, 359616(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359609(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359565(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359148(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249501(%rip), %rcx      # 0x45f880 <init_node.101+0x8>
+               	movq	%rdx, 359576(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359569(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359525(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359119(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249488(%rip), %rcx      # 0x45f890 <init_node.102+0x8>
+               	movq	%rdx, 359536(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359529(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359485(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359090(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249475(%rip), %rcx      # 0x45f8a0 <init_node.103+0x8>
+               	movq	%rdx, 359496(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359489(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359445(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359061(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249462(%rip), %rcx      # 0x45f8b0 <init_node.104+0x8>
+               	movq	%rdx, 359456(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359449(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359405(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359032(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249449(%rip), %rcx      # 0x45f8c0 <init_node.105+0x8>
+               	movq	%rdx, 359416(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359409(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359365(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 359003(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249436(%rip), %rcx      # 0x45f8d0 <init_node.106+0x8>
+               	movq	%rdx, 359376(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359369(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359325(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 358974(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249423(%rip), %rcx      # 0x45f8e0 <init_node.107+0x8>
+               	movq	%rdx, 359336(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359329(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359285(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 358945(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249410(%rip), %rcx      # 0x45f8f0 <init_node.108+0x8>
+               	movq	%rdx, 359296(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359289(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359245(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 358916(%rip)        # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	249397(%rip), %rcx      # 0x45f900 <init_node.109+0x8>
+               	movq	%rdx, 359256(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	movq	359249(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359205(%rip)        # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	movq	%rax, 358920(%rip)      # 0x47a4e8 <(anonymous namespace)::initTailNode>
-               	cmpb	$0, 253954(%rip)        # 0x460ae9 <_Konan_init_main_guard>
-               	jne	0x421fe6 <_Konan_constructors+0x16>
-               	leaq	358868(%rip), %rax      # 0x47a4c8 <(anonymous namespace)::initHeadNode>
-               	movq	358893(%rip), %rcx      # 0x47a4e8 <(anonymous namespace)::initTailNode>
+               	movq	%rax, 359216(%rip)      # 0x47ac28 <(anonymous namespace)::initTailNode>
+               	cmpl	$0, 254253(%rip)        # 0x46122c <state_global$kotlin.ranges.IntRange+0x8>
+               	jne	0x4221e6 <_Konan_constructors+0x16>
+               	movl	$1, 254237(%rip)        # 0x46122c <state_global$kotlin.ranges.IntRange+0x8>
+               	leaq	359154(%rip), %rax      # 0x47ac08 <(anonymous namespace)::initHeadNode>
+               	movq	359179(%rip), %rcx      # 0x47ac28 <(anonymous namespace)::initTailNode>
@@@@
-               	movb	$1, 253911(%rip)        # 0x460ae9 <_Konan_init_main_guard>
-               	leaq	249343(%rip), %rax      # 0x45f918 <init_node.111>
+               	leaq	247780(%rip), %rax      # 0x45f918 <init_node.111>
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -15712,17 +16027,17 @@
@@@[(10, 11), (12, 15)]@@@
-               	movq	(%r15), %rdi
@@@@
-               	addq	8(%rbx), %rdi
+               	movq	8(%rbx), %rdi
+               	addq	(%r15), %rdi

@@ -15984,84 +16299,85 @@
@@@[(54, 58), (75, 78), (79, 87), (108, 112)]@@@
-               	movq	(%rbx), %rdi
-               	callq	0x423220 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x423830 <std::thread::~thread()>
@@@@
-               	testq	%rdi, %rdi
-               	jne	0x423226 <std::thread::~thread()+0x6>
-               	retq
@@@@
-               	callq	0x43b523 <std::terminate()>
-               	nopl	(%rax)
+               	cmpq	$0, (%rdi)
+               	jne	0x423839 <std::thread::~thread()+0x9>
+               	popq	%rax
+               	retq
+               	callq	0x43c363 <std::terminate()>
+               	nop
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x423220 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x423830 <std::thread::~thread()>

@@ -16720,42 +17036,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -16764,7 +17082,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -16776,42 +17094,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -16820,7 +17140,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -16832,42 +17152,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -16876,7 +17198,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -16987,31 +17309,35 @@
@@@[(3, 9), (14, 18), (25, 29), (33, 37), (38, 42)]@@@
-               	callq	0x43b7d4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 216(%rbx)
+               	callq	0x43c614 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	216(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 216(%rbx)
@@@@
-               	addq	$-1, 192(%rbx)
+               	movq	192(%rbx), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 192(%rbx)
@@@@
-               	jmp	0x4136f0 <free@plt>
-               	nop
+               	jmp	0x4136d0 <free@plt>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movl	$328, %edi              # imm = 0x148
-               	addq	-64(%rax), %rdi
+               	movq	-64(%rax), %rdi
+               	addq	$328, %rdi              # imm = 0x148
@@@@
-               	jmp	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	jmp	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -17051,8 +17377,10 @@
@@@[(3, 9)]@@@
-               	callq	0x43b7d4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x43c614 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -17063,14 +17391,14 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -17086,30 +17414,34 @@
@@@[(3, 9), (14, 18), (25, 29)]@@@
-               	callq	0x43b7d4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 224(%r14)
+               	callq	0x43c614 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	224(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 224(%r14)
@@@@
-               	addq	$-1, 200(%r14)
+               	movq	200(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 200(%r14)
@@@@
-               	jmp	0x4136f0 <free@plt>
-               	nopl	(%rax)
+               	jmp	0x4136d0 <free@plt>
+               	nopw	%cs:(%rax,%rax)

@@ -17131,12 +17463,14 @@
@@@[(3, 9)]@@@
-               	callq	0x43b7d4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 40(%rbx)
+               	callq	0x43c614 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	40(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%rbx)

@@ -17144,7 +17478,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -17178,97 +17512,96 @@
@@@[(51, 52), (53, 63), (69, 73)]@@@
-               	movq	%rax, %rcx
@@@@
-               	movq	(%rsp), %rax
-               	shlq	$32, %rax
-               	orq	%r12, %rax
-               	movq	%rcx, %r12
-               	movq	%rax, 16(%rcx)
+               	movq	(%rsp), %rcx
+               	shlq	$32, %rcx
+               	orq	%rcx, %r12
+               	movq	%r12, 16(%rax)
+               	movq	%rax, %r12
@@@@
-               	je	0x42445a <AddTLSRecord+0x24a>
-               	nopl	(%rax)
+               	je	0x424aca <AddTLSRecord+0x24a>
+               	nopw	(%rax,%rax)

@@ -17292,98 +17625,102 @@
@@@[(93, 94), (113, 117), (118, 121)]@@@
+               	movq	(%r12), %rax
@@@@
-               	addq	$1, 120(%r15)
+               	movq	120(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 120(%r15)
@@@@
-               	addl	%eax, 156(%r15)
+               	addl	156(%r15), %eax
+               	movl	%eax, 156(%r15)

@@ -17393,83 +17730,81 @@
@@@[(30, 43), (53, 57), (99, 106)]@@@
-               	jne	0x4245f2 <LookupTLS+0x82>
-               	jmp	0x42464d <LookupTLS+0xdd>
-               	movslq	168(%r9), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
-               	popq	%rcx
-               	retq
-               	leaq	247019(%rip), %rax      # 0x460ac8 <__KonanTlsKey>
+               	jne	0x424c6d <LookupTLS+0x7d>
+               	jmp	0x424ccd <LookupTLS+0xdd>
+               	movq	168(%r9), %rax
+               	jmp	0x424ce9 <LookupTLS+0xf9>
+               	leaq	247216(%rip), %rax      # 0x461208 <__KonanTlsKey>
@@@@
-               	je	0x424648 <LookupTLS+0xd8>
-               	nop
+               	je	0x424cc8 <LookupTLS+0xd8>
+               	nopw	(%rax,%rax)
@@@@
-               	movslq	16(%rcx), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
+               	movq	16(%rcx), %rax
+               	movq	72(%r9), %rcx
+               	cltq
+               	leaq	(%rcx,%rax,8), %rax

@@ -17480,92 +17815,93 @@
@@@[(39, 45), (46, 53), (70, 76)]@@@
-               	movslq	8(%rsi), %rdx
-               	testq	%rdx, %rdx
-               	je	0x424796 <Kotlin_processArrayInMark+0xb6>
+               	movl	8(%rsi), %eax
+               	testl	%eax, %eax
+               	je	0x424e16 <Kotlin_processArrayInMark+0xb6>
@@@@
-               	leaq	-8(,%rdx,8), %r8
-               	testb	$8, %r8b
-               	jne	0x424726 <Kotlin_processArrayInMark+0x46>
+               	movslq	%eax, %r8
+               	leaq	-8(,%r8,8), %rdx
+               	testb	$8, %dl
+               	jne	0x424da6 <Kotlin_processArrayInMark+0x46>
@@@@
-               	testq	%r8, %r8
-               	je	0x424796 <Kotlin_processArrayInMark+0xb6>
-               	leaq	(%rsi,%rdx,8), %r8
+               	testq	%rdx, %rdx
+               	je	0x424e16 <Kotlin_processArrayInMark+0xb6>
+               	leaq	(%rsi,%r8,8), %r8

@@ -17687,215 +18023,221 @@
@@@[(105, 109), (133, 147), (148, 152)]@@@
-               	addq	$-1, 246476(%rip)       # 0x460d98 <kotlin::mm::GlobalData::instance_+0xa8>
+               	movq	246677(%rip), %rax      # 0x4614e0 <kotlin::mm::GlobalData::instance_+0xa8>
+               	addq	$-1, %rax
+               	movq	%rax, 246666(%rip)      # 0x4614e0 <kotlin::mm::GlobalData::instance_+0xa8>
@@@@
-               	callq	0x43b78e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 24(%rsp)
-               	addq	$-1, 246424(%rip)       # 0x460db0 <kotlin::mm::GlobalData::instance_+0xc0>
-               	jmp	0x424adc <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x17c>
-               	movq	246399(%rip), %rdi      # 0x460da0 <kotlin::mm::GlobalData::instance_+0xb0>
+               	callq	0x43c5ce <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	246607(%rip), %rax      # 0x4614f8 <kotlin::mm::GlobalData::instance_+0xc0>
+               	addq	$-1, %rax
+               	movq	%rax, 246596(%rip)      # 0x4614f8 <kotlin::mm::GlobalData::instance_+0xc0>
+               	jmp	0x425166 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x186>
+               	movq	246571(%rip), %rdi      # 0x4614e8 <kotlin::mm::GlobalData::instance_+0xb0>
@@@@
-               	je	0x424b40 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x1e0>
-               	nopw	(%rax,%rax)
+               	je	0x4251e0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x200>
+               	nopw	%cs:(%rax,%rax)

@@ -18018,213 +18360,226 @@
@@@[(3, 22), (23, 25), (26, 38), (39, 53), (54, 61), (62, 72), (73, 79), (81, 94), (101, 107), (108, 126), (127, 129), (133, 138), (142, 146), (151, 163), (178, 188), (189, 200), (204, 208), (212, 240), (241, 244), (245, 247), (248, 259), (260, 261), (262, 267), (268, 269), (270, 274), (281, 285), (286, 289), (290, 296), (297, 304), (308, 315), (319, 333), (335, 353), (355, 363)]@@@
-               	movq	280(%r12), %rdx
-               	xorl	%ecx, %ecx
-               	testq	%rdx, %rdx
-               	je	0x424f57 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xc7>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %rsi
-               	leaq	(,%rax,8), %rdi
-               	movslq	20(%rdx), %rbp
-               	leaq	(%rsi,%rbp,8), %rbx
+               	movq	280(%r12), %r13
+               	movq	%r13, 8(%rsp)
+               	testq	%r13, %r13
+               	je	0x425624 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf4>
+               	movslq	16(%r13), %rax
+               	leaq	(,%rax,8), %rcx
+               	addq	%r13, %rcx
+               	leaq	(,%rax,8), %rdx
+               	movslq	20(%r13), %rsi
+               	leaq	(%rcx,%rsi,8), %rbx
@@@@
-               	subq	%rdi, %rbx
+               	subq	%rdx, %rbx
@@@@
-               	leaq	(%rdx,%rax,8), %r13
-               	addq	$24, %r13
-               	testq	%rdx, %rdx
-               	je	0x424f65 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
+               	movq	%rbp, 16(%rsp)
+               	movq	%rbx, 24(%rsp)
+               	testq	%r13, %r13
+               	je	0x42564c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	cmpq	%rbx, %rbp
+               	jb	0x42564c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
@@@@
-               	cmpq	%rbx, %r13
-               	jb	0x424f65 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
-               	movq	8(%rdx), %rdx
-               	testq	%rdx, %rdx
-               	je	0x424f5e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xce>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %r13
-               	addq	$24, %r13
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x425632 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x102>
+               	movslq	16(%r13), %rax
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
@@@@
-               	movslq	20(%rdx), %rsi
-               	leaq	-24(,%rsi,8), %rbx
-               	addq	%r13, %rbx
+               	movq	%rbp, 16(%rsp)
+               	movslq	20(%r13), %rcx
+               	leaq	-24(,%rcx,8), %rbx
+               	addq	%rbp, %rbx
@@@@
-               	cmpq	%rbx, %r13
-               	jae	0x424f25 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x95>
-               	jmp	0x424f65 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x4255e0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xb0>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x42564c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	pxor	%xmm0, %xmm0
+               	movdqa	%xmm0, 16(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	jmp	0x424f65 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	jmp	0x42564a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11a>
+               	movq	$0, 8(%rsp)
+               	pxor	%xmm0, %xmm0
+               	movdqa	%xmm0, 16(%rsp)
@@@@
-               	xorl	%edx, %edx
-               	movq	64(%r12), %rsi
-               	movq	72(%r12), %rdi
-               	movl	%ecx, %eax
-               	movq	%rdx, %rbp
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	xorl	%ebp, %ebp
+               	movq	72(%r12), %rcx
+               	movq	64(%r12), %rdx
+               	xorl	%esi, %esi
+               	movl	%esi, %eax
+               	nopw	(%rax,%rax)
@@@@
-               	jne	0x424f80 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf0>
-               	testq	%rbp, %rbp
-               	jne	0x424fbd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	movl	$1, %ecx
-               	movq	%rsi, %rdx
+               	jne	0x425660 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x130>
@@@@
-               	je	0x424f6f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
-               	jmp	0x424fbd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	nopl	(%rax)
-               	movl	$2, %ecx
-               	movq	%rbp, %rdx
-               	cmpq	%rbp, %rdi
-               	je	0x424f6f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
+               	jne	0x42569a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	testq	%rbp, %rbp
+               	jne	0x42569a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	movq	%rdx, 8(%rsp)
+               	movl	$1, %esi
+               	movq	%rdx, %r13
+               	jmp	0x425658 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
+               	nop
+               	movl	$2, %esi
+               	cmpq	%r13, %rcx
+               	je	0x425658 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
@@@@
-               	movdqa	%xmm0, (%rsp)
+               	movdqa	%xmm0, 32(%rsp)
@@@@
-               	jne	0x425201 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x371>
-               	movq	(%rbp), %rsi
+               	jne	0x425913 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3e3>
+               	movq	8(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x425008 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x178>
-               	movdqa	(%rsp), %xmm1
+               	je	0x4256ec <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1bc>
+               	movdqa	32(%rsp), %xmm1
@@@@
-               	movdqa	%xmm1, (%rsp)
-               	addq	$8, %rbp
-               	movq	64(%r12), %rcx
-               	movq	72(%r12), %rdx
-               	movq	%rbp, %rdi
-               	movq	%rbp, %rsi
-               	movq	%rdi, %rbp
+               	movdqa	%xmm1, 32(%rsp)
+               	addq	$8, %r13
+               	movq	%r13, 8(%rsp)
+               	movq	72(%r12), %rcx
+               	movq	64(%r12), %rdx
@@@@
-               	cmpq	%rdx, %rsi
-               	je	0x425030 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1a0>
-               	jmp	0x42514b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2bb>
-               	testq	%rbp, %rbp
-               	jne	0x424fc6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	%rcx, %rdi
-               	movq	%rcx, %rsi
+               	cmpq	%rcx, %r13
+               	je	0x425710 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1e0>
+               	jmp	0x42584e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x31e>
@@@@
-               	je	0x42501c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x18c>
-               	jmp	0x424fc6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	(%r13), %rsi
+               	jne	0x4256a4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	testq	%rbp, %rbp
+               	jne	0x4256a4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
+               	movq	%rdx, %r13
+               	jmp	0x4256ff <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1cf>
+               	movq	16(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x425098 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x208>
-               	movdqa	(%rsp), %xmm1
+               	je	0x425781 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x251>
+               	movdqa	32(%rsp), %xmm1
@@@@
-               	movapd	%xmm1, (%rsp)
-               	addq	$8, %r13
-               	testq	%rbp, %rbp
-               	je	0x4250f1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	cmpq	%rbx, %r13
-               	jb	0x4250f1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	movq	8(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x4250ea <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x25a>
-               	movslq	16(%rbp), %rax
-               	leaq	24(,%rax,8), %r13
-               	addq	%rbp, %r13
+               	movapd	%xmm1, 32(%rsp)
+               	addq	$8, %rbp
+               	movq	%rbp, 16(%rsp)
+               	testq	%r13, %r13
+               	je	0x4257fe <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	cmpq	%rbx, %rbp
+               	jb	0x4257fe <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	nopl	(%rax)
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x4257e4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2b4>
+               	movslq	16(%r13), %rax
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
@@@@
-               	movslq	20(%rbp), %rcx
+               	movq	%rbp, 16(%rsp)
+               	movslq	20(%r13), %rcx
@@@@
-               	addq	%r13, %rbx
+               	addq	%rbp, %rbx
@@@@
-               	cmpq	%rbx, %r13
-               	jae	0x4250b5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x225>
-               	jmp	0x4250f1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x4257a0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x4257fe <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	movq	$0, 8(%rsp)
+               	xorpd	%xmm0, %xmm0
+               	movapd	%xmm0, 16(%rsp)
@@@@
-               	xorl	%ebx, %ebx
@@@@
-               	movq	64(%r12), %rcx
-               	movq	72(%r12), %rdx
+               	xorl	%ebx, %ebx
+               	movq	72(%r12), %rcx
+               	movq	64(%r12), %rdx
@@@@
-               	movq	%rbp, %rdi
@@@@
-               	movq	%rdi, %rbp
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax)
@@@@
-               	jne	0x425110 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x280>
+               	jne	0x425810 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2e0>
+               	testq	%r13, %r13
+               	jne	0x4256a4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	jne	0x424fc6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	jne	0x4256a4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
@@@@
-               	movq	%rcx, %rdi
-               	testq	%r13, %r13
-               	je	0x425100 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x424fc6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	movq	%rdx, %r13
+               	jmp	0x42580a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
@@@@
-               	movq	%rbp, %rdi
-               	cmpq	%rbp, %rdx
-               	je	0x425100 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x424fc6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	cmpq	%r13, %rcx
+               	je	0x42580a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
+               	jmp	0x4256a4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	movdqa	%xmm0, (%rsp)
-               	jmp	0x425165 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d5>
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movdqa	%xmm0, 32(%rsp)
+               	jmp	0x425875 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x345>
+               	nopw	(%rax,%rax)
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x425160 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d0>
-               	cmpb	$0, 244096(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	je	0x4251a3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	cmpq	%r14, 244079(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	jne	0x4251a3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	leaq	244070(%rip), %rcx      # 0x460af0 <(anonymous namespace)::current>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	jne	0x425870 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x340>
+               	cmpb	$0, 244152(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x4258b4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	cmpq	%r14, 244135(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	jne	0x4258b4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	leaq	244126(%rip), %rcx      # 0x461238 <(anonymous namespace)::current>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	je	0x4251cf <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x33f>
-               	movdqu	(%rax), %xmm1
-               	jmp	0x4251e3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x353>
-               	cmpb	$0, 244302(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x4251eb <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	cmpq	%r14, 244285(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x4251eb <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	leaq	244276(%rip), %rcx      # 0x460bf0 <(anonymous namespace)::last>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	je	0x4258e1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3b1>
+               	movupd	(%rax), %xmm1
+               	jmp	0x4258f5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3c5>
+               	cmpb	$0, 244357(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x4258fd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	cmpq	%r14, 244340(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x4258fd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	leaq	244331(%rip), %rcx      # 0x461338 <(anonymous namespace)::last>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	jne	0x42519d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x30d>
-               	pxor	%xmm1, %xmm1
-               	movdqu	%xmm1, 16(%rax)
-               	movdqu	%xmm1, (%rax)
+               	jne	0x4258ae <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x37e>
+               	xorpd	%xmm1, %xmm1
+               	movupd	%xmm1, 16(%rax)
+               	movupd	%xmm1, (%rax)

@@ -18275,41 +18630,41 @@
@@@[(36, 44), (46, 48), (49, 51)]@@@
-               	callq	0x42fb00 <mi_free>
-               	movq	(%r15), %rax
-               	movq	32(%r15), %rcx
-               	movq	%rcx, 8(%rax)
+               	callq	0x430400 <mi_free>
+               	movq	32(%r15), %rax
+               	movq	(%r15), %rcx
+               	movq	%rax, 8(%rcx)
@@@@
-               	movdqu	16(%rax), %xmm1
+               	movdqu	16(%rcx), %xmm1
@@@@
-               	movdqu	%xmm1, 16(%rax)
+               	movdqu	%xmm1, 16(%rcx)

@@ -18348,12 +18703,12 @@
@@@[(9, 13)]@@@
-               	jmp	0x4253b3 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
-               	movl	%ebx, %ebx
+               	jmp	0x425ac3 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
+               	movl	%eax, %ebx

@@ -18372,26 +18727,28 @@
@@@[(14, 18), (19, 23), (24, 27), (28, 35)]@@@
-               	movslq	20(%rcx), %rbp
-               	testq	%rbp, %rbp
+               	movl	20(%rcx), %ecx
+               	testl	%ecx, %ecx
@@@@
-               	js	0x4253f0 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
-               	movl	%ebp, %ebp
+               	js	0x425b00 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
+               	movl	%ecx, %ebp
@@@@
-               	jmp	0x425402 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc2>
+               	jmp	0x425b15 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc5>
+               	nop
@@@@
-               	movl	24(%rax), %eax
-               	negq	%rbp
-               	imulq	%rax, %rbp
+               	movslq	%ecx, %rcx
+               	movl	24(%rax), %ebp
+               	negq	%rcx
+               	imulq	%rcx, %rbp

@@ -18413,68 +18770,69 @@
@@@[(24, 35), (44, 50)]@@@
-               	movslq	20(%rax), %rbx
-               	testq	%rbx, %rbx
-               	jns	0x42536b <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
-               	movl	8(%rsi), %eax
-               	negq	%rbx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	jns	0x425a7b <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
+               	cltq
+               	movl	8(%rsi), %ebx
+               	negq	%rax
@@@@
-               	je	0x4254e1 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
-               	nopw	(%rax,%rax)
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x425bf1 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
+               	nopl	(%rax)
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>

@@ -18494,23 +18852,23 @@
@@@[(10, 13), (14, 15)]@@@
-               	jne	0x4255f8 <GCStateHolder::schedule()+0x68>
-               	movq	40(%rbx), %rax
+               	jne	0x425d08 <GCStateHolder::schedule()+0x68>
@@@@
+               	movq	40(%rbx), %rax

@@ -18519,35 +18877,38 @@
@@@[(8, 10), (11, 16), (17, 21), (31, 35)]@@@
+               	movq	%rdi, %rax
+               	movq	(%rdi), %rdi
@@@@
-               	je	0x425620 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x425d39 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
+               	movl	8(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x425620 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x425d39 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
@@@@
-               	jmp	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -18560,54 +18921,52 @@
@@@[(3, 8), (15, 21), (60, 65)]@@@
-               	movl	$248, %eax
-               	addq	(%rdi), %rax
-               	movq	%rax, %rdi
+               	movq	(%rdi), %rdi
+               	addq	$248, %rdi
@@@@
-               	je	0x4256a1 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
-               	nopw	(%rax,%rax)
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x425dc1 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movq	(%rdi), %rdi
-               	jmp	0x427310 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
-               	nopl	(%rax,%rax)
+               	jmp	0x427b00 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
+               	nopw	%cs:(%rax,%rax)

@@ -18650,96 +19009,99 @@
@@@[(6, 9), (15, 18), (19, 25), (35, 39), (43, 49), (67, 111), (113, 121), (133, 157), (159, 164)]@@@
-               	movq	%rcx, 208(%rsp)
+               	movq	%rcx, 192(%rsp)
+               	leaq	104(%rsp), %r13
@@@@
-               	jmp	0x425815 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe5>
+               	jmp	0x425f43 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf3>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	104(%rsp), %rdi
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	je	0x425789 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
-               	movq	(%rax), %r13
+               	je	0x425ea9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
+               	movq	(%rax), %rbp
@@@@
-               	je	0x425841 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x111>
-               	nopl	(%rax,%rax)
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x425f71 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x121>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movups	%xmm0, 242304(%rip)     # 0x460af0 <(anonymous namespace)::current>
-               	movups	%xmm0, 242313(%rip)     # 0x460b00 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 242322(%rip)     # 0x460b10 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 242331(%rip)     # 0x460b20 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 242340(%rip)     # 0x460b30 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 242349(%rip)     # 0x460b40 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 242358(%rip)     # 0x460b50 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 242367(%rip)     # 0x460b60 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 242376(%rip)     # 0x460b70 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 242385(%rip)     # 0x460b80 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 242394(%rip)     # 0x460b90 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 242403(%rip)     # 0x460ba0 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 242412(%rip)     # 0x460bb0 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 242421(%rip)     # 0x460bc0 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 242430(%rip)     # 0x460bd0 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 242439(%rip)     # 0x460be0 <(anonymous namespace)::current+0xf0>
-               	movq	%r13, 242192(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	movb	$1, 242193(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 242189(%rip)      # 0x460b00 <(anonymous namespace)::current+0x10>
-               	movb	$1, 242190(%rip)        # 0x460b08 <(anonymous namespace)::current+0x18>
-               	movb	$0, 242153(%rip)        # 0x460aea <(anonymous namespace)::lock>
+               	movups	%xmm0, 242328(%rip)     # 0x461238 <(anonymous namespace)::current>
+               	movups	%xmm0, 242337(%rip)     # 0x461248 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 242346(%rip)     # 0x461258 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 242355(%rip)     # 0x461268 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 242364(%rip)     # 0x461278 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 242373(%rip)     # 0x461288 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 242382(%rip)     # 0x461298 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 242391(%rip)     # 0x4612a8 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 242400(%rip)     # 0x4612b8 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 242409(%rip)     # 0x4612c8 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 242418(%rip)     # 0x4612d8 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 242427(%rip)     # 0x4612e8 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 242436(%rip)     # 0x4612f8 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 242445(%rip)     # 0x461308 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 242454(%rip)     # 0x461318 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 242463(%rip)     # 0x461328 <(anonymous namespace)::current+0xf0>
+               	movq	%rbp, 242216(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	movb	$1, 242217(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 242213(%rip)      # 0x461248 <(anonymous namespace)::current+0x10>
+               	movb	$1, 242214(%rip)        # 0x461250 <(anonymous namespace)::current+0x18>
+               	movb	$0, 242175(%rip)        # 0x461230 <(anonymous namespace)::lock>
@@@@
-               	xchgb	%al, 246943(%rip)       # 0x461db0 <(anonymous namespace)::markingRequested (.0.0)>
-               	movq	%r13, %rax
-               	xchgq	%rax, 246949(%rip)      # 0x461dc0 <(anonymous namespace)::markingEpoch (.0)>
-               	callq	0x423f30 <kotlin::mm::RequestThreadsSuspension()>
+               	xchgb	%al, 246967(%rip)       # 0x4624f8 <(anonymous namespace)::markingRequested (.0.0)>
+               	movq	%rbp, %rax
+               	xchgq	%rax, 246973(%rip)      # 0x462508 <(anonymous namespace)::markingEpoch (.0)>
+               	callq	0x424540 <kotlin::mm::RequestThreadsSuspension()>
@@@@
-               	jne	0x425930 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x200>
-               	cmpb	$0, 242096(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	je	0x42595a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x22a>
-               	leaq	242079(%rip), %rbx      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 242072(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x425973 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x243>
-               	cmpb	$0, 242327(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x425980 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	leaq	242310(%rip), %rbx      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 242303(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x425980 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x426060 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x210>
+               	cmpb	$0, 242120(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x42608a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x23a>
+               	leaq	242103(%rip), %rbx      # 0x461238 <(anonymous namespace)::current>
+               	cmpq	%rbp, 242096(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x4260a3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x253>
+               	cmpb	$0, 242351(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x4260b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	leaq	242334(%rip), %rbx      # 0x461338 <(anonymous namespace)::last>
+               	cmpq	%rbp, 242327(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x4260b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	movb	$0, 242019(%rip)        # 0x460aea <(anonymous namespace)::lock>
-               	nopw	(%rax,%rax)
+               	movq	%rbp, (%rsp)
+               	movb	$0, 242037(%rip)        # 0x461230 <(anonymous namespace)::lock>
+               	nopl	(%rax,%rax)

@@ -18747,281 +19109,291 @@
@@@[(64, 84), (95, 102), (103, 116), (172, 193), (194, 199), (203, 206), (225, 230), (231, 236), (244, 248), (272, 284), (312, 315), (316, 321), (339, 346), (350, 372)]@@@
-               	je	0x425a6f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x33f>
-               	leaq	241802(%rip), %rax      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 241795(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x425a88 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x358>
-               	cmpb	$0, 242050(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x425a93 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
-               	leaq	242033(%rip), %rax      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 242026(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x425a93 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
+               	je	0x4261a3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x353>
+               	leaq	241826(%rip), %rax      # 0x461238 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 241815(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x4261c0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x370>
+               	cmpb	$0, 242070(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x4261cb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
+               	leaq	242053(%rip), %rax      # 0x461338 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 242042(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x4261cb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
@@@@
-               	movq	216(%rsp), %rdi
-               	movq	%r13, %rsi
-               	callq	0x426bb0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movq	200(%rsp), %rdi
+               	movq	(%rsp), %rbp
+               	movq	%rbp, %rsi
+               	callq	0x427380 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
-               	movq	%r13, %rsi
-               	callq	0x424960 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
-               	movq	%r13, %rdi
-               	movq	208(%rsp), %rsi
-               	callq	0x425340 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	movq	%rbp, %rsi
+               	callq	0x424fe0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
+               	movq	%rbp, %rdi
+               	movq	192(%rsp), %rsi
+               	callq	0x425a50 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
+               	nop
@@@@
-               	jne	0x425b70 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x440>
-               	cmpb	$0, 241520(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	leaq	242249(%rip), %r14      # 0x460dd8 <kotlin::mm::GlobalData::instance_+0xe8>
-               	je	0x425ba1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x471>
-               	leaq	241496(%rip), %rax      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 241489(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x425bbf <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x48f>
-               	cmpb	$0, 241744(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x425be0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b0>
-               	leaq	241727(%rip), %rax      # 0x460bf0 <(anonymous namespace)::last>
+               	jne	0x4262a0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x450>
+               	cmpb	$0, 241544(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	leaq	242273(%rip), %r14      # 0x461520 <kotlin::mm::GlobalData::instance_+0xe8>
+               	je	0x4262d5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x485>
+               	leaq	241520(%rip), %rax      # 0x461238 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 241509(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x4262f7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4a7>
+               	cmpb	$0, 241764(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x426310 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c0>
+               	leaq	241747(%rip), %rax      # 0x461338 <(anonymous namespace)::last>
@@@@
-               	cmpq	%r13, 241715(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x425be2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 241731(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x426312 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jmp	0x425be2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
-               	nopl	(%rax,%rax)
+               	jmp	0x426312 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jne	0x425c00 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4d0>
-               	leaq	16(%rsp), %r15
-               	movq	%r15, 24(%rsp)
+               	jne	0x426330 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4e0>
+               	leaq	8(%rsp), %r15
@@@@
-               	movq	$0, 32(%rsp)
-               	movq	242088(%rip), %rbp      # 0x460dd8 <kotlin::mm::GlobalData::instance_+0xe8>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	movq	242112(%rip), %rbp      # 0x461520 <kotlin::mm::GlobalData::instance_+0xe8>
@@@@
-               	addq	$-1, 242052(%rip)       # 0x460dd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	242077(%rip), %rax      # 0x461518 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 242066(%rip)      # 0x461518 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	callq	0x43b78e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 32(%rsp)
-               	addq	$-1, 242000(%rip)       # 0x460de8 <kotlin::mm::GlobalData::instance_+0xf8>
-               	jmp	0x425c5c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x52c>
+               	callq	0x43c5ce <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	242003(%rip), %rax      # 0x461530 <kotlin::mm::GlobalData::instance_+0xf8>
+               	addq	$-1, %rax
+               	movq	%rax, 241992(%rip)      # 0x461530 <kotlin::mm::GlobalData::instance_+0xf8>
+               	jmp	0x426396 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x546>
@@@@
-               	movq	32(%rsp), %rax
-               	movq	%r15, 24(%rsp)
+               	movq	24(%rsp), %rax
@@@@
-               	movq	$0, 32(%rsp)
-               	jmp	0x425d20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x5f0>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	jmp	0x426470 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
@@@@
-               	je	0x425d61 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x631>
-               	nopw	(%rax,%rax)
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movq	(%rsp), %r14
+               	je	0x4264b1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x661>
+               	nop
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x425d50 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
-               	cmpb	$0, 241040(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	je	0x425d7a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x64a>
-               	leaq	241023(%rip), %rax      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 241016(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x425d93 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x663>
-               	cmpb	$0, 241271(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x425dbd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
-               	leaq	241254(%rip), %rax      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 241247(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x425dbd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
+               	jne	0x4264a0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x650>
+               	cmpb	$0, 241032(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x4264ca <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x67a>
+               	leaq	241015(%rip), %rax      # 0x461238 <(anonymous namespace)::current>
+               	cmpq	%r14, 241008(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x4264e3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x693>
+               	cmpb	$0, 241263(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x42650d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>
+               	leaq	241246(%rip), %rax      # 0x461338 <(anonymous namespace)::last>
+               	cmpq	%r14, 241239(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x42650d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>

@@ -19046,186 +19418,197 @@
@@@[(10, 14), (21, 29), (42, 64), (131, 155), (160, 169), (175, 181), (189, 211), (214, 222), (223, 226), (231, 234), (254, 259), (262, 270), (271, 275), (278, 286), (287, 294)]@@@
-               	addq	$-1, 241434(%rip)       # 0x460dd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	241427(%rip), %rax      # 0x461518 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 241416(%rip)      # 0x461518 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jmp	0x425de8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6b8>
-               	nop
-               	movb	$0, 241433(%rip)        # 0x460df0 <kotlin::mm::GlobalData::instance_+0x100>
-               	movq	241394(%rip), %rbx      # 0x460dd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	jmp	0x426538 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6e8>
+               	nopl	(%rax,%rax)
+               	movb	$0, 241409(%rip)        # 0x461538 <kotlin::mm::GlobalData::instance_+0x100>
+               	movq	241370(%rip), %rbx      # 0x461518 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jne	0x425ef0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7c0>
-               	cmpb	$0, 240624(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	je	0x425f1a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7ea>
-               	leaq	240607(%rip), %rax      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 240600(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x425f33 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x803>
-               	cmpb	$0, 240855(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x425f5d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
-               	leaq	240838(%rip), %rax      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 240831(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x425f5d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
+               	jne	0x426650 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x800>
+               	cmpb	$0, 240600(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x42667a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82a>
+               	leaq	240583(%rip), %rax      # 0x461238 <(anonymous namespace)::current>
+               	cmpq	%r14, 240576(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x426693 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x843>
+               	cmpb	$0, 240831(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x4266bd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
+               	leaq	240814(%rip), %rax      # 0x461338 <(anonymous namespace)::last>
+               	cmpq	%r14, 240807(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x4266bd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
@@@@
-               	jne	0x426000 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8d0>
-               	cmpb	$0, 240352(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	je	0x42602a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8fa>
-               	leaq	240335(%rip), %rbx      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 240328(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x426043 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x913>
-               	cmpb	$0, 240583(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x426050 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	leaq	240566(%rip), %rbx      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 240559(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x426050 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x426760 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x910>
+               	cmpb	$0, 240328(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x42678a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x93a>
+               	leaq	240311(%rip), %rbx      # 0x461238 <(anonymous namespace)::current>
+               	cmpq	%r14, 240304(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x4267a3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x953>
+               	cmpb	$0, 240559(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x4267b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	leaq	240542(%rip), %rbx      # 0x461338 <(anonymous namespace)::last>
+               	cmpq	%r14, 240535(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x4267b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	leaq	104(%rsp), %rax
-               	movups	%xmm0, (%rax)
-               	movq	$0, 16(%rax)
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
-               	movq	241026(%rip), %rax      # 0x460df8 <kotlin::mm::GlobalData::instance_+0x108>
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>
+               	movq	241005(%rip), %rax      # 0x461540 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	je	0x4260a1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x971>
-               	nop
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x426801 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9b1>
+               	nopl	(%rax,%rax)
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	cmpb	$0, 240196(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	je	0x4260c6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x996>
-               	leaq	240179(%rip), %rax      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 240172(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x4260df <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9af>
-               	cmpb	$0, 240427(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x4260fd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
-               	leaq	240410(%rip), %rax      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 240403(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x4260fd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	cmpb	$0, 240172(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x42682a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9da>
+               	leaq	240155(%rip), %rax      # 0x461238 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 240144(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x426847 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9f7>
+               	cmpb	$0, 240399(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x42685e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
+               	leaq	240382(%rip), %rax      # 0x461338 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 240371(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x42685e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
@@@@
-               	jne	0x4260fd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	je	0x426880 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa30>
+               	movb	$0, 240075(%rip)        # 0x461230 <(anonymous namespace)::lock>
+               	movq	(%r14), %rbx
+               	testq	%rbx, %rbx
+               	jne	0x42689a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa4a>
+               	jmp	0x426a40 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movq	%r13, 136(%rsp)
-               	movb	$0, 240094(%rip)        # 0x460aea <(anonymous namespace)::lock>
+               	movb	$0, 240034(%rip)        # 0x461230 <(anonymous namespace)::lock>
@@@@
-               	jmp	0x426137 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
+               	jmp	0x4268b7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	nop
@@@@
-               	testb	$64, 88(%rax)
-               	jne	0x426190 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa60>
+               	movl	88(%rax), %eax
+               	testb	$64, %al
+               	jne	0x426910 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xac0>
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x426266 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb36>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x4269f6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba6>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x426274 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb44>
-               	nopw	(%rax,%rax)
+               	jmp	0x426a06 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbb6>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x4261ac <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa7c>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x42692a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xada>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x4261ba <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa8a>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jmp	0x42693a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaea>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -19234,38 +19617,42 @@
@@@[(3, 13), (14, 17), (37, 47), (51, 60)]@@@
-               	callq	0x427270 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
-               	movq	16(%rsp), %r15
-               	movq	24(%rsp), %rbx
-               	movq	$0, 16(%rsp)
-               	movq	%r15, 160(%rsp)
+               	callq	0x427a50 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
+               	movq	16(%rsp), %rbx
+               	movq	8(%rsp), %rax
+               	movq	$0, 8(%rsp)
+               	movq	%rax, 144(%rsp)
@@@@
-               	je	0x426225 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaf5>
+               	movq	144(%rsp), %r15
+               	je	0x4269ad <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb5d>
@@@@
-               	addq	$1, 120(%rsp)
-               	leaq	160(%rsp), %rdi
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	16(%rsp), %r15
+               	movq	120(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 120(%rsp)
+               	leaq	144(%rsp), %rdi
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	leaq	8(%rsp), %r15
@@@@
-               	jne	0x426137 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
-               	jmp	0x4262b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb80>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jne	0x4268b7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	jmp	0x426a40 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -19274,422 +19661,441 @@
@@@[(14, 17), (32, 56), (62, 69), (73, 74), (75, 81), (85, 102), (110, 162), (236, 238), (251, 266), (269, 276), (277, 290), (296, 299), (300, 306), (307, 354), (358, 363), (364, 370), (387, 391), (408, 414), (420, 465), (528, 541), (542, 545), (557, 567), (611, 615)]@@@
-               	nop
-               	movq	240449(%rip), %rax      # 0x460df8 <kotlin::mm::GlobalData::instance_+0x108>
+               	movq	240377(%rip), %rax      # 0x461540 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	jne	0x4262d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba0>
-               	cmpb	$0, 239632(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %rsi
-               	je	0x426302 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbd2>
-               	leaq	239607(%rip), %rax      # 0x460af0 <(anonymous namespace)::current>
-               	cmpq	%rsi, 239600(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	je	0x42631b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbeb>
-               	cmpb	$0, 239855(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x426339 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
-               	leaq	239838(%rip), %rax      # 0x460bf0 <(anonymous namespace)::last>
-               	cmpq	%rsi, 239831(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x426339 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
+               	jne	0x426a60 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc10>
+               	cmpb	$0, 239560(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	movq	(%rsp), %r14
+               	je	0x426a8e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc3e>
+               	leaq	239539(%rip), %rax      # 0x461238 <(anonymous namespace)::current>
+               	cmpq	%r14, 239532(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	je	0x426aa7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc57>
+               	cmpb	$0, 239787(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x426ac5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
+               	leaq	239770(%rip), %rax      # 0x461338 <(anonymous namespace)::last>
+               	cmpq	%r14, 239763(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x426ac5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
@@@@
-               	movb	$0, 239530(%rip)        # 0x460aea <(anonymous namespace)::lock>
-               	movq	200(%rsp), %rdi
-               	callq	0x426bb0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movb	$0, 239460(%rip)        # 0x461230 <(anonymous namespace)::lock>
+               	movq	184(%rsp), %rdi
+               	movq	%r14, %rsi
+               	callq	0x427380 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
+               	leaq	104(%rsp), %r13
@@@@
-               	je	0x426371 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc41>
-               	nop
-               	callq	0x422b30 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x426b11 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcc1>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x423140 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x426360 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc30>
-               	cmpb	$0, 239488(%rip)        # 0x460af8 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %r13
-               	je	0x426440 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	cmpq	%r13, 239459(%rip)      # 0x460af0 <(anonymous namespace)::current>
-               	jne	0x426440 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 239473(%rip)      # 0x460b10 <(anonymous namespace)::current+0x20>
-               	movb	$1, 239474(%rip)        # 0x460b18 <(anonymous namespace)::current+0x28>
+               	jne	0x426b00 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcb0>
+               	cmpb	$0, 239400(%rip)        # 0x461240 <(anonymous namespace)::current+0x8>
+               	je	0x426bd0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	cmpq	%r14, 239379(%rip)      # 0x461238 <(anonymous namespace)::current>
+               	jne	0x426bd0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 239393(%rip)      # 0x461258 <(anonymous namespace)::current+0x20>
+               	movb	$1, 239394(%rip)        # 0x461260 <(anonymous namespace)::current+0x28>
@@@@
-               	movups	%xmm0, 239400(%rip)     # 0x460af0 <(anonymous namespace)::current>
-               	movups	%xmm0, 239409(%rip)     # 0x460b00 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 239418(%rip)     # 0x460b10 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 239427(%rip)     # 0x460b20 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 239436(%rip)     # 0x460b30 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 239445(%rip)     # 0x460b40 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 239454(%rip)     # 0x460b50 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 239463(%rip)     # 0x460b60 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 239472(%rip)     # 0x460b70 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 239481(%rip)     # 0x460b80 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 239490(%rip)     # 0x460b90 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 239499(%rip)     # 0x460ba0 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 239508(%rip)     # 0x460bb0 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 239517(%rip)     # 0x460bc0 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 239526(%rip)     # 0x460bd0 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 239535(%rip)     # 0x460be0 <(anonymous namespace)::current+0xf0>
-               	jmp	0x426465 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	nopw	%cs:(%rax,%rax)
-               	cmpb	$0, 239537(%rip)        # 0x460bf8 <(anonymous namespace)::last+0x8>
-               	je	0x426465 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	cmpq	%r13, 239520(%rip)      # 0x460bf0 <(anonymous namespace)::last>
-               	jne	0x426465 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	callq	0x43c180 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 239538(%rip)      # 0x460c10 <(anonymous namespace)::last+0x20>
-               	movb	$1, 239539(%rip)        # 0x460c18 <(anonymous namespace)::last+0x28>
-               	movb	$0, 239230(%rip)        # 0x460aea <(anonymous namespace)::lock>
+               	movups	%xmm0, 239320(%rip)     # 0x461238 <(anonymous namespace)::current>
+               	movups	%xmm0, 239329(%rip)     # 0x461248 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 239338(%rip)     # 0x461258 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 239347(%rip)     # 0x461268 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 239356(%rip)     # 0x461278 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 239365(%rip)     # 0x461288 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 239374(%rip)     # 0x461298 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 239383(%rip)     # 0x4612a8 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 239392(%rip)     # 0x4612b8 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 239401(%rip)     # 0x4612c8 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 239410(%rip)     # 0x4612d8 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 239419(%rip)     # 0x4612e8 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 239428(%rip)     # 0x4612f8 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 239437(%rip)     # 0x461308 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 239446(%rip)     # 0x461318 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 239455(%rip)     # 0x461328 <(anonymous namespace)::current+0xf0>
+               	jmp	0x426bf5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	nop
+               	cmpb	$0, 239465(%rip)        # 0x461340 <(anonymous namespace)::last+0x8>
+               	je	0x426bf5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	cmpq	%r14, 239448(%rip)      # 0x461338 <(anonymous namespace)::last>
+               	jne	0x426bf5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	callq	0x43cfc0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 239466(%rip)      # 0x461358 <(anonymous namespace)::last+0x20>
+               	movb	$1, 239467(%rip)        # 0x461360 <(anonymous namespace)::last+0x28>
+               	movb	$0, 239156(%rip)        # 0x461230 <(anonymous namespace)::lock>
@@@@
-               	movq	%rbx, 152(%rsp)
+               	movq	%rbx, %r13
@@@@
-               	movabsq	$8245936382198116210, %r13 # imm = 0x726F737365636F72
-               	movq	%r13, 14(%rax)
-               	movq	$22, 168(%rsp)
-               	movb	$1, 192(%rsp)
-               	movq	$0, 144(%rsp)
-               	movq	%rbp, 16(%rsp)
+               	movabsq	$8245936382198116210, %rcx # imm = 0x726F737365636F72
+               	movq	%rcx, 14(%rax)
+               	movq	$22, 152(%rsp)
+               	movq	144(%rsp), %rbx
+               	movb	$0, 22(%rbx)
+               	movb	$1, 176(%rsp)
+               	movq	$0, 136(%rsp)
+               	movq	%rbp, 8(%rsp)
+               	movb	$0, 48(%rsp)
@@@@
-               	movq	%rax, %rbx
-               	movq	%rax, 24(%rsp)
-               	movq	$22, 40(%rsp)
-               	movups	119041(%rip), %xmm0     # 0x4436fb <typeinfo name for kotlin::gc::GCSchedulerData+0x1012>
-               	movups	%xmm0, (%rax)
-               	movq	%r13, 14(%rax)
+               	movq	%rax, 16(%rsp)
@@@@
-               	movb	$1, 56(%rsp)
-               	leaq	1530(%rip), %r13        # 0x426c10 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
-               	movq	%r13, 64(%rsp)
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rax)
+               	movq	14(%rbx), %rcx
+               	movq	%rcx, 14(%rax)
+               	movq	$22, 24(%rsp)
+               	movq	16(%rsp), %rbx
+               	movb	$0, 22(%rbx)
+               	movb	$1, 48(%rsp)
+               	leaq	1576(%rip), %rax        # 0x4273e0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
+               	movq	%rax, 56(%rsp)
@@@@
-               	movq	%rbp, 8(%rax)
+               	movq	8(%rsp), %rcx
+               	movq	%rcx, 8(%rax)
@@@@
+               	movq	%rax, %rcx
+               	addq	$32, %rcx
+               	movq	%rcx, 16(%rax)
+               	leaq	32(%rsp), %rdx
+               	cmpq	%rdx, %rbx
+               	je	0x426ef0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a0>
@@@@
-               	movq	$22, 32(%rax)
-               	movq	$22, 24(%rax)
-               	leaq	40(%rsp), %rcx
-               	movq	%rcx, 24(%rsp)
-               	movq	$0, 32(%rsp)
-               	movb	$0, 40(%rsp)
-               	movb	$1, 48(%rax)
-               	movq	%r13, 56(%rax)
-               	movq	%rax, 8(%rsp)
-               	leaq	144(%rsp), %rdi
-               	leaq	8(%rsp), %rsi
-               	movq	231740(%rip), %rdx      # 0x45efc0 <write+0x45efc0>
-               	callq	0x43e3ae <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
-               	movq	8(%rsp), %rdi
-               	testq	%rdi, %rdi
-               	movq	136(%rsp), %r13
-               	movq	152(%rsp), %rbx
-               	je	0x4266a9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf79>
-               	movq	(%rdi), %rax
-               	callq	*8(%rax)
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x4266cd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	movq	24(%rsp), %rdi
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x4266cd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	callq	0x4136f0 <free@plt>
-               	cmpq	$0, (%rbp)
-               	jne	0x42681f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10ef>
-               	movq	144(%rsp), %rax
-               	movq	%rax, (%rbp)
-               	movq	$0, 144(%rsp)
-               	cmpb	$0, 192(%rsp)
-               	je	0x426507 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	movq	160(%rsp), %rdi
-               	leaq	176(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x426507 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	callq	0x4136f0 <free@plt>
-               	jmp	0x426507 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	movq	32(%rsp), %rcx
+               	movq	%rcx, 32(%rax)
+               	jmp	0x426ef6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a6>
+               	nopl	(%rax)
@@@@
-               	movq	240(%rsp), %rax
-               	addq	%rax, 32(%rbp)
+               	movq	224(%rsp), %rax
+               	addq	32(%rbp), %rax
+               	movq	%rax, 32(%rbp)
@@@@
-               	leaq	104(%rsp), %rax
-               	movups	%xmm0, 8(%rax)
-               	movq	%r13, 160(%rbp)
+               	movups	%xmm0, 8(%r13)
+               	movq	(%rsp), %rax
+               	movq	%rax, 160(%rbp)
@@@@
-               	movq	%rbp, 16(%rsp)
+               	movq	%rbp, 8(%rsp)
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	callq	0x42fb00 <mi_free>
-               	jmp	0x4267a0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1070>
-               	movq	%r13, 16(%rsp)
+               	callq	0x430400 <mi_free>
+               	jmp	0x426e90 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1040>
+               	movq	%r14, 8(%rsp)
@@@@
-               	jmp	0x42676d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x103d>
+               	jmp	0x426e51 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1001>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rcx)
+               	movq	%r13, %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 24(%rax)
+               	movq	%rdx, 16(%rsp)
+               	movq	$0, 24(%rsp)
+               	movb	$0, 32(%rsp)
+               	movb	$1, 48(%rax)
+               	leaq	1216(%rip), %rcx        # 0x4273e0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
+               	movq	%rcx, 56(%rax)
+               	movq	%rax, 64(%rsp)
+               	leaq	136(%rsp), %rdi
+               	leaq	64(%rsp), %rsi
+               	movq	229507(%rip), %rdx      # 0x45efc0 <write+0x45efc0>
+               	callq	0x43f1ee <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
+               	movq	64(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x426f52 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1102>
+               	movq	(%rdi), %rax
+               	callq	*8(%rax)
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	leaq	104(%rsp), %r13
+               	je	0x426f7b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	movq	16(%rsp), %rdi
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x426f7b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	callq	0x4136d0 <free@plt>
+               	cmpq	$0, (%rbp)
+               	jne	0x426fee <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x119e>
+               	movq	136(%rsp), %rax
+               	movq	%rax, (%rbp)
+               	movq	$0, 136(%rsp)
+               	cmpb	$0, 176(%rsp)
+               	je	0x426c97 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	movq	144(%rsp), %rdi
+               	leaq	160(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x426c97 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x426c97 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
@@@@
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x4268c4 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
-               	movq	24(%rsp), %rbx
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rbx
-               	jne	0x4268bc <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x118c>
-               	jmp	0x4268c4 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	je	0x427093 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
+               	movq	16(%rsp), %rbx
+               	jmp	0x427081 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1231>
@@@@
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rbx
+               	je	0x427093 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
@@@@
-               	je	0x4268e8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x11b8>
-               	callq	0x4136f0 <free@plt>
-               	cmpq	$0, 231112(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x42697f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x124f>
-               	movq	152(%rsp), %rdi
+               	je	0x4270b7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1267>
+               	callq	0x4136d0 <free@plt>
+               	cmpq	$0, 229113(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x427149 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x12f9>
+               	movq	%r13, %rdi
@@@@
-               	callq	0x422b40 <__clang_call_terminate>
-               	nopw	(%rax,%rax)
+               	callq	0x423150 <__clang_call_terminate>
+               	nopw	%cs:(%rax,%rax)

@@ -19750,37 +20156,36 @@
@@@[(3, 7), (8, 13), (18, 24), (26, 27), (32, 40), (41, 54)]@@@
-               	movq	8(%rdi), %r15
-               	movq	%r15, 8(%rsp)
+               	movq	8(%rdi), %rdi
+               	movq	%rdi, 8(%rsp)
@@@@
-               	cmpq	$0, 230545(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x426b35 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x35>
-               	movq	%r15, %rdi
+               	cmpq	$0, 228545(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x427302 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x32>
@@@@
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jg	0x426b7d <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x7d>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jg	0x427348 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x78>
@@@@
+               	nopl	(%rax)
@@@@
-               	callq	0x43bdd0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jle	0x426b50 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
+               	callq	0x43cc10 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jle	0x427320 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
@@@@
-               	je	0x426b99 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	movq	8(%rsp), %r15
-               	testq	%r15, %r15
-               	je	0x426b99 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	cmpq	$0, 230446(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x426b94 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x94>
-               	movq	%r15, %rdi
+               	je	0x427366 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x427366 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	cmpq	$0, 228446(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x427361 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x91>

@@ -19791,8 +20196,8 @@
@@@[(3, 7)]@@@
-               	callq	0x43c0ba <std::__throw_system_error(int)>
-               	nop
+               	callq	0x43cefa <std::__throw_system_error(int)>
+               	nopl	(%rax)

@@ -19838,140 +20243,140 @@
@@@[(39, 41), (42, 58), (71, 79), (80, 85), (89, 107), (108, 121), (122, 128), (138, 143), (169, 175), (182, 188), (196, 201)]@@@
-               	movq	%rax, 128(%rsp)
-               	leaq	128(%r13), %rax
@@@@
-               	xorl	%eax, %eax
-               	movq	%rax, 40(%rsp)
-               	leaq	8(%rsp), %rbp
-               	movq	%r14, 112(%rsp)
-               	movq	%r15, 104(%rsp)
-               	jmp	0x426ce5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	leaq	128(%r13), %rax
+               	movq	%rax, 112(%rsp)
+               	xorl	%ebp, %ebp
+               	leaq	8(%rsp), %rbx
+               	movq	%r14, 104(%rsp)
+               	movq	%r15, 96(%rsp)
+               	jmp	0x4274a5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>
+               	nopl	(%rax)
@@@@
-               	movq	32(%r13), %rbx
-               	movb	$1, %al
-               	testq	%rbx, %rbx
-               	jne	0x426d58 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x148>
+               	movq	32(%r13), %rax
+               	movb	$1, %cl
+               	testq	%rax, %rax
+               	jne	0x427513 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x133>
@@@@
-               	movq	40(%rsp), %rax
-               	cmpq	%rax, 160(%r13)
-               	jne	0x426d52 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x142>
+               	cmpq	%rbp, 160(%r13)
+               	jne	0x42750d <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12d>
@@@@
-               	movq	%rbp, %rsi
-               	callq	0x43bdd0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	32(%r13), %rbx
-               	testq	%rbx, %rbx
-               	je	0x426d20 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x110>
-               	jmp	0x426d54 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x144>
-               	xorl	%ebx, %ebx
-               	movb	16(%rsp), %al
-               	movq	16(%r13), %rcx
+               	movq	%rbx, %rsi
+               	callq	0x43cc10 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	32(%r13), %rax
+               	testq	%rax, %rax
+               	je	0x4274e0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x100>
+               	jmp	0x42750f <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12f>
+               	xorl	%eax, %eax
+               	movb	16(%rsp), %cl
+               	movq	16(%r13), %rdx
@@@@
-               	movq	%rcx, 72(%rsp)
-               	movq	24(%r13), %rcx
-               	movq	160(%r13), %rdx
-               	movq	%rdx, 40(%rsp)
-               	movq	%rbx, 88(%rsp)
-               	movq	%rcx, 80(%rsp)
-               	movq	128(%rsp), %rcx
+               	movq	%rdx, 64(%rsp)
+               	movq	24(%r13), %rdx
+               	movq	160(%r13), %rbx
+               	movq	%rax, 80(%rsp)
+               	movq	%rdx, 72(%rsp)
+               	movq	120(%rsp), %rax
@@@@
-               	movups	%xmm0, (%rcx)
-               	testb	%al, %al
-               	je	0x427091 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x481>
+               	movups	%xmm0, (%rax)
+               	testb	%cl, %cl
+               	je	0x427874 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x494>
@@@@
-               	testq	%rbx, %rbx
-               	je	0x426f40 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
+               	cmpq	$0, 80(%rsp)
+               	je	0x427720 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movq	%rbx, 144(%rsp)
@@@@
-               	jne	0x426e54 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	jmp	0x426f00 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
-               	nop
+               	jne	0x42761e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	jmp	0x4276d0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
+               	nopl	(%rax)
@@@@
-               	callq	0x43b7d4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 280(%r14)
+               	callq	0x43c614 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	280(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 280(%r14)
@@@@
-               	testb	$64, 88(%rsi)
-               	je	0x426e71 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x261>
+               	movl	88(%rsi), %eax
+               	testb	$64, %al
+               	je	0x42763c <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x25c>

@@ -19990,99 +20395,103 @@
@@@[(6, 10), (18, 35), (51, 54), (55, 60), (67, 69), (97, 102)]@@@
-               	addq	$-1, 256(%r14)
+               	movq	256(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 256(%r14)
@@@@
-               	jne	0x426e54 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	nopl	(%rax)
-               	cmpq	$0, 136(%rsp)
-               	movq	112(%rsp), %r14
-               	movq	104(%rsp), %r15
-               	movq	144(%rsp), %rdi
-               	je	0x426f40 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
-               	movl	60(%rsp), %ecx
+               	jne	0x42761e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	nop
+               	cmpq	$0, 128(%rsp)
+               	movq	104(%rsp), %r14
+               	movq	96(%rsp), %r15
+               	movq	144(%rsp), %rbx
+               	movq	136(%rsp), %rdi
+               	je	0x427720 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movl	52(%rsp), %ecx
@@@@
-               	movq	40(%rsp), %rax
-               	movq	%rax, 24(%rsp)
+               	movq	%rbx, 24(%rsp)
@@@@
-               	je	0x42709b <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x48b>
-               	movq	120(%rsp), %rdi
+               	je	0x42787e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x49e>
+               	movq	%rbx, %r12
+               	movq	112(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	leaq	8(%rsp), %rbp
-               	je	0x426ce5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
+               	leaq	8(%rsp), %rbx
+               	movq	%r12, %rbp
+               	je	0x4274a5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>

@@ -20228,7 +20637,7 @@
@@@[(3, 5)]@@@
-               	movq	%rsi, %r13
+               	movq	%rsi, %rbx

@@ -20238,27 +20647,31 @@
@@@[(3, 5), (6, 18), (20, 30), (31, 33)]@@@
-               	movq	(%rbp), %rbx
+               	movq	(%rbp), %r13
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4272cc <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
-               	movq	%rbx, %rdi
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x42fb00 <mi_free>
+               	testq	%r13, %r13
+               	je	0x427aac <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
+               	movq	%r13, %rdi
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x430400 <mi_free>
@@@@
-               	jne	0x4272d9 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x69>
-               	movq	%r12, 8(%r13)
+               	jne	0x427ab5 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x65>
+               	movq	%r12, 8(%rbx)
+               	movq	16(%rbx), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 16(%rbx)
+               	movq	24(%rbx), %rax
+               	subq	%r14, %rax
+               	movq	%rax, 24(%rbx)
@@@@
-               	addq	$-1, 16(%r13)
-               	subq	%r14, 24(%r13)

@@ -20267,7 +20680,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -20275,29 +20688,29 @@
@@@[(3, 5)]@@@
-               	movq	%rdi, %rbx
+               	movq	(%rdi), %rbx

@@ -20462,127 +20875,129 @@
@@@[(3, 5), (6, 10), (11, 39), (40, 44), (46, 50), (51, 60), (66, 68), (69, 70), (75, 92), (94, 113), (115, 136), (142, 147), (148, 150), (159, 169), (170, 177), (181, 220)]@@@
-               	movq	%rsi, %r12
+               	movq	%rsi, %r15
@@@@
-               	addq	$15, %r12
-               	andq	$-8, %r12
+               	addq	$15, %r15
+               	andq	$-8, %r15
@@@@
-               	movq	16(%rax), %rbp
-               	movq	40(%rbp), %rax
-               	addq	%r12, %rax
-               	movq	%rax, 40(%rbp)
-               	cmpq	48(%rbp), %rax
-               	jb	0x4275e2 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x72>
-               	cmpq	$0, 24(%rbp)
-               	je	0x427788 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x218>
-               	leaq	8(%rbp), %rdi
-               	movq	%rbp, %rsi
-               	callq	*32(%rbp)
-               	movq	$0, 40(%rbp)
-               	movq	$0, 56(%rbp)
-               	movq	(%rbp), %rax
+               	movq	16(%rax), %rbx
+               	movq	40(%rbx), %rax
+               	addq	%r15, %rax
+               	movq	%rax, 40(%rbx)
+               	cmpq	48(%rbx), %rax
+               	jb	0x427dd0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x70>
+               	cmpq	$0, 24(%rbx)
+               	je	0x427f88 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x228>
+               	leaq	8(%rbx), %rdi
+               	movq	%rbx, %rsi
+               	callq	*32(%rbx)
+               	movq	$0, 40(%rbx)
+               	movq	$0, 56(%rbx)
+               	movq	(%rbx), %rax
@@@@
-               	movq	%rax, 48(%rbp)
-               	movq	(%rbp), %rax
+               	movq	%rax, 48(%rbx)
+               	movq	(%rbx), %rax
@@@@
-               	movq	%rax, 64(%rbp)
-               	movb	239464(%rip), %al       # 0x461d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 64(%rbx)
+               	movb	239298(%rip), %al       # 0x462498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4275f1 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x81>
-               	callq	0x424000 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x427800 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x427ddf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x7f>
+               	callq	0x424630 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x427ff0 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
+               	movq	%rax, 24(%rsp)
+               	movb	$0, 36(%rsp)
@@@@
-               	movq	%rax, 32(%rsp)
@@@@
-               	callq	0x425590 <GCStateHolder::schedule()>
-               	movq	%rax, %rbp
-               	movq	(%rbx), %r15
-               	movq	128(%r15), %r13
-               	movq	%r13, 16(%rsp)
-               	movb	$0, 24(%rsp)
-               	cmpq	$0, 227677(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x42766d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfd>
-               	movq	%r13, %rdi
+               	callq	0x425ca0 <GCStateHolder::schedule()>
+               	movq	%rax, %r12
+               	movq	(%rbx), %rbp
+               	movq	128(%rbp), %rdi
+               	movq	%rdi, 8(%rsp)
+               	movb	$0, 16(%rsp)
+               	cmpq	$0, 225645(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x427e5a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfa>
@@@@
-               	jne	0x4277a3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x233>
-               	movb	$1, 24(%rsp)
-               	cmpq	%rbp, 120(%r15)
-               	jge	0x4276b7 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x147>
-               	leaq	136(%r15), %rbx
-               	leaq	16(%rsp), %r13
-               	nopl	(%rax,%rax)
-               	cmpb	$0, 312(%r15)
-               	jne	0x4276ab <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13b>
+               	jne	0x427fa3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x243>
+               	movb	$1, 16(%rsp)
+               	cmpq	%r12, 120(%rbp)
+               	jge	0x427ea1 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x141>
+               	leaq	136(%rbp), %rbx
+               	leaq	8(%rsp), %r13
+               	nopw	%cs:(%rax,%rax)
+               	nop
+               	cmpb	$0, 312(%rbp)
+               	jne	0x427e9a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13a>
@@@@
-               	callq	0x43bdd0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	cmpq	%rbp, 120(%r15)
-               	jl	0x427690 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
-               	cmpb	$0, 24(%rsp)
-               	je	0x4276d3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	movq	16(%rsp), %r13
-               	testq	%r13, %r13
-               	je	0x4276d3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	cmpq	$0, 227572(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x4276ce <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15e>
-               	movq	%r13, %rdi
+               	callq	0x43cc10 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	cmpq	%r12, 120(%rbp)
+               	jl	0x427e80 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
+               	cmpb	$0, 16(%rsp)
+               	je	0x427ebf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x427ebf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	cmpq	$0, 225541(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x427eba <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15a>
@@@@
-               	je	0x427704 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	addq	$328, %rdi              # imm = 0x148
-               	movl	12(%rsp), %ecx
+               	je	0x427ef4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	movl	32(%rsp), %ecx
@@@@
-               	xchgl	%eax, (%rdi)
+               	xchgl	%eax, 328(%rdi)
@@@@
-               	je	0x427704 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x427800 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x427ef4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x427ff0 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
-               	je	0x42778d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x21d>
-               	movq	$0, (%rbp)
-               	movq	%rbp, 16(%rsp)
+               	je	0x427f8d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x22d>
+               	movq	$0, (%rax)
+               	movq	%rax, 8(%rsp)
+               	movq	8(%rsp), %rbx
@@@@
-               	movq	$0, 16(%rsp)
-               	movq	(%rax), %rbx
-               	movq	%rbp, (%rax)
-               	testq	%rbx, %rbx
-               	je	0x42775f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	%rbx, %rdi
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x42fb00 <mi_free>
-               	jmp	0x42775f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	$0, 16(%rsp)
-               	movq	%rbp, 24(%r14)
-               	movq	%rbp, 32(%r14)
-               	addq	$1, 40(%r14)
-               	addq	%r12, 48(%r14)
-               	leaq	16(%rsp), %rdi
-               	callq	0x425310 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbp, %rax
+               	movq	$0, 8(%rsp)
+               	movq	(%rax), %r12
+               	movq	%rbx, (%rax)
+               	testq	%r12, %r12
+               	je	0x427f54 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	%r12, %rdi
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r12, %rdi
+               	callq	0x430400 <mi_free>
+               	jmp	0x427f54 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	$0, 8(%rsp)
+               	movq	%rbx, 24(%r14)
+               	movq	%rbx, 32(%r14)
+               	movq	40(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%r14)
+               	addq	48(%r14), %r15
+               	movq	%r15, 48(%r14)
+               	leaq	8(%rsp), %rdi
+               	callq	0x425a20 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%rbx, %rax

@@ -20591,65 +21006,66 @@
@@@[(3, 9), (21, 26), (30, 34), (64, 70)]@@@
-               	callq	0x43c1d2 <std::__throw_bad_function_call()>
-               	leaq	114558(%rip), %rdi      # 0x443712 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
-               	movq	%r12, %rsi
+               	callq	0x43d012 <std::__throw_bad_function_call()>
+               	leaq	116158(%rip), %rdi      # 0x444552 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
+               	movq	%r15, %rsi
@@@@
-               	movq	32(%rsp), %rdi
-               	movl	12(%rsp), %esi
-               	callq	0x425600 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
+               	leaq	24(%rsp), %rdi
+               	callq	0x425d10 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
@@@@
-               	callq	0x422b40 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x423150 <__clang_call_terminate>
+               	nop
@@@@
-               	jne	0x42787f <kotlin::allocateInObjectPool(unsigned long)+0x7f>
-               	addl	$1, 16(%rax)
+               	jne	0x428074 <kotlin::allocateInObjectPool(unsigned long)+0x84>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)

@@ -20659,31 +21075,33 @@
@@@[(30, 32), (34, 38)]@@@
-               	movb	96(%rdx), %cl
+               	movq	96(%rdx), %rcx
@@@@
-               	orb	$2, 126(%rdx,%rax)
+               	movb	126(%rdx,%rax), %cl
+               	orb	$2, %cl
+               	movb	%cl, 126(%rdx,%rax)

@@ -20695,214 +21113,214 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -21005,71 +21423,55 @@
@@@[(3, 14), (15, 24), (25, 71)]@@@
-               	jne	0x427ef6 <_mi_random_init+0xe6>
-               	movb	(%rsp), %r8b
-               	movb	1(%rsp), %r15b
-               	movb	2(%rsp), %dil
-               	movb	3(%rsp), %al
-               	movl	%eax, 44(%rsp)
+               	jne	0x4286a7 <_mi_random_init+0xa7>
+               	movb	(%rsp), %al
+               	movb	1(%rsp), %r11b
+               	movb	2(%rsp), %r10b
+               	movb	3(%rsp), %r9b
@@@@
-               	movb	5(%rsp), %al
-               	movl	%eax, 52(%rsp)
-               	movb	6(%rsp), %al
-               	movl	%eax, 48(%rsp)
-               	movb	7(%rsp), %al
-               	movl	%eax, 64(%rsp)
+               	movb	5(%rsp), %bpl
+               	movb	6(%rsp), %r8b
+               	movb	7(%rsp), %bl
@@@@
-               	movb	9(%rsp), %al
-               	movl	%eax, 76(%rsp)
-               	movb	10(%rsp), %al
-               	movl	%eax, 92(%rsp)
-               	movb	11(%rsp), %al
-               	movl	%eax, 100(%rsp)
-               	movb	12(%rsp), %sil
-               	movb	13(%rsp), %al
-               	movl	%eax, 60(%rsp)
-               	movb	14(%rsp), %al
-               	movl	%eax, 80(%rsp)
-               	movb	15(%rsp), %al
-               	movl	%eax, 96(%rsp)
-               	movb	16(%rsp), %r10b
-               	movb	17(%rsp), %r13b
-               	movb	18(%rsp), %al
-               	movl	%eax, 56(%rsp)
-               	movb	19(%rsp), %al
-               	movl	%eax, 88(%rsp)
-               	movb	20(%rsp), %r11b
-               	movb	21(%rsp), %bpl
-               	movb	22(%rsp), %r12b
-               	movb	23(%rsp), %al
-               	movl	%eax, 68(%rsp)
-               	movb	24(%rsp), %r9b
-               	movb	25(%rsp), %al
-               	movl	%eax, 72(%rsp)
-               	movb	26(%rsp), %al
-               	jmp	0x428237 <_mi_random_init+0x427>
+               	movb	9(%rsp), %sil
+               	movl	%esi, 36(%rsp)
+               	movb	10(%rsp), %sil
+               	movl	%esi, 48(%rsp)
+               	movb	11(%rsp), %sil
+               	movl	%esi, 52(%rsp)
+               	movb	12(%rsp), %r12b
+               	movb	13(%rsp), %sil
+               	movl	%esi, 32(%rsp)
+               	movb	14(%rsp), %sil
+               	movl	%esi, 40(%rsp)
+               	movb	15(%rsp), %sil
+               	movl	%esi, 44(%rsp)
+               	movb	16(%rsp), %r13b
+               	movb	17(%rsp), %r15b
+               	movb	18(%rsp), %dil
+               	jmp	0x4289a4 <_mi_random_init+0x3a4>

@@ -21130,261 +21532,249 @@
@@@[(3, 13), (17, 18), (19, 28), (29, 31), (32, 54), (55, 57), (58, 80), (81, 83), (84, 106), (107, 109), (110, 127), (128, 139), (140, 142), (143, 176), (177, 179), (180, 220), (221, 223), (224, 295), (296, 309), (310, 312), (313, 315), (317, 331), (334, 336), (340, 361), (362, 385), (387, 393), (397, 398), (400, 401), (402, 406), (407, 423), (429, 442)]@@@
-               	movq	%rcx, %r8
-               	shrq	$31, %r8
-               	xorq	%rcx, %r8
-               	movq	%r8, %rax
-               	cmoveq	%rbp, %rax
-               	movl	%r8d, (%rsp)
-               	movq	%rax, %rcx
-               	shrq	$30, %rcx
-               	xorq	%rax, %rcx
-               	imulq	%rbx, %rcx
@@@@
-               	imulq	%r15, %rax
@@@@
-               	shrq	$31, %rcx
-               	xorq	%rax, %rcx
-               	movl	%ecx, 4(%rsp)
-               	movq	%rcx, %rax
-               	cmoveq	%rbp, %rax
-               	movq	%rax, %rdx
+               	cmoveq	%rbp, %rcx
+               	movl	%eax, (%rsp)
+               	movq	%rcx, %rdx
@@@@
-               	xorq	%rax, %rdx
+               	xorq	%rcx, %rdx
@@@@
-               	movq	%rdx, %rax
-               	shrq	$27, %rax
-               	xorq	%rdx, %rax
-               	imulq	%r15, %rax
-               	movq	%rax, %rdx
-               	shrq	$31, %rdx
-               	xorq	%rax, %rdx
-               	movl	%edx, 8(%rsp)
-               	movq	%rdx, %rax
-               	cmoveq	%rbp, %rax
-               	movq	%rax, %rsi
+               	movq	%rdx, %rsi
+               	shrq	$27, %rsi
+               	xorq	%rdx, %rsi
+               	imulq	%r15, %rsi
+               	movq	%rsi, %rcx
+               	shrq	$31, %rcx
+               	xorq	%rsi, %rcx
+               	movl	%ecx, 4(%rsp)
+               	movq	%rcx, %rdx
+               	cmoveq	%rbp, %rdx
+               	movq	%rdx, %rsi
@@@@
-               	xorq	%rax, %rsi
+               	xorq	%rdx, %rsi
@@@@
-               	movq	%rsi, %rax
-               	shrq	$27, %rax
-               	xorq	%rsi, %rax
-               	imulq	%r15, %rax
-               	movq	%rax, %rsi
-               	shrq	$31, %rsi
-               	xorq	%rax, %rsi
-               	movl	%esi, 12(%rsp)
-               	movq	%rsi, %rax
-               	cmoveq	%rbp, %rax
-               	movq	%rax, %rdi
+               	movq	%rsi, %rdi
+               	shrq	$27, %rdi
+               	xorq	%rsi, %rdi
+               	imulq	%r15, %rdi
+               	movq	%rdi, %rdx
+               	shrq	$31, %rdx
+               	xorq	%rdi, %rdx
+               	movl	%edx, 8(%rsp)
+               	movq	%rdx, %rsi
+               	cmoveq	%rbp, %rsi
+               	movq	%rsi, %rdi
@@@@
-               	xorq	%rax, %rdi
+               	xorq	%rsi, %rdi
@@@@
-               	movq	%rdi, %rax
-               	shrq	$27, %rax
-               	xorq	%rdi, %rax
-               	imulq	%r15, %rax
-               	movq	%rax, %r10
-               	shrq	$31, %r10
-               	xorq	%rax, %r10
-               	movq	%r10, %rax
-               	cmoveq	%rbp, %rax
-               	movl	%r10d, 16(%rsp)
-               	movq	%rax, %rdi
+               	movq	%rdi, %rsi
+               	shrq	$27, %rsi
+               	xorq	%rdi, %rsi
+               	imulq	%r15, %rsi
+               	movq	%rsi, %r12
+               	shrq	$31, %r12
+               	xorq	%rsi, %r12
+               	movl	%r12d, 12(%rsp)
+               	movq	%r12, %rsi
+               	cmoveq	%rbp, %rsi
+               	movq	%rsi, %rdi
@@@@
-               	xorq	%rax, %rdi
+               	xorq	%rsi, %rdi
@@@@
-               	movq	%rdi, %rax
-               	shrq	$27, %rax
-               	xorq	%rdi, %rax
-               	imulq	%r15, %rax
-               	movq	%rax, %r11
-               	shrq	$31, %r11
-               	xorq	%rax, %r11
-               	movl	%r11d, 20(%rsp)
-               	movq	%r11, %rdi
+               	movq	%rdi, %rsi
+               	shrq	$27, %rsi
+               	xorq	%rdi, %rsi
+               	imulq	%r15, %rsi
+               	movq	%rsi, %r13
+               	shrq	$31, %r13
+               	xorq	%rsi, %r13
+               	movq	%r13, %rdi
@@@@
-               	movq	%rdi, %rax
-               	shrq	$30, %rax
-               	xorq	%rdi, %rax
-               	imulq	%rbx, %rax
-               	movq	%rax, %rdi
+               	movl	%r13d, 16(%rsp)
+               	movq	%rdi, %rsi
+               	shrq	$30, %rsi
+               	xorq	%rdi, %rsi
+               	imulq	%rbx, %rsi
+               	movq	%rsi, %rdi
@@@@
-               	xorq	%rax, %rdi
+               	xorq	%rsi, %rdi
@@@@
-               	movq	%rdi, %r9
-               	shrq	$31, %r9
-               	xorq	%rdi, %r9
-               	movl	%r9d, 24(%rsp)
-               	cmovneq	%r9, %rbp
-               	movq	%rbp, %rax
-               	shrq	$30, %rax
-               	xorq	%rbp, %rax
-               	imulq	%rbx, %rax
-               	movq	%rax, %rdi
+               	movq	%rdi, %rsi
+               	shrq	$31, %rsi
+               	xorq	%rdi, %rsi
+               	movl	%esi, 20(%rsp)
+               	cmoveq	%rbp, %rsi
+               	movq	%rsi, %rdi
+               	shrq	$30, %rdi
+               	xorq	%rsi, %rdi
+               	imulq	%rbx, %rdi
+               	movq	%rdi, %rsi
+               	shrq	$27, %rsi
+               	xorq	%rdi, %rsi
+               	imulq	%r15, %rsi
+               	movq	%rsi, %rdi
+               	shrq	$31, %rdi
+               	xorq	%rsi, %rdi
+               	movl	%edi, 24(%rsp)
+               	cmoveq	%rbp, %rdi
+               	movq	%rdi, %rsi
+               	shrq	$30, %rsi
+               	xorq	%rdi, %rsi
+               	imulq	%rbx, %rsi
+               	movq	%rsi, %rdi
@@@@
-               	xorq	%rax, %rdi
+               	xorq	%rsi, %rdi
@@@@
-               	movq	%rdi, %rax
-               	shrq	$31, %rax
-               	xorl	%edi, %eax
-               	movl	%eax, 28(%rsp)
-               	movl	%r8d, %r15d
+               	movq	%rdi, %rsi
+               	shrq	$31, %rsi
+               	xorl	%edi, %esi
+               	movl	%esi, 28(%rsp)
+               	movl	%eax, %r11d
+               	shrl	$8, %r11d
+               	movl	%eax, %r10d
+               	shrl	$16, %r10d
+               	movl	%eax, %r9d
+               	shrl	$24, %r9d
+               	movl	%ecx, %ebp
+               	shrl	$8, %ebp
+               	movl	%ecx, %r8d
+               	shrl	$16, %r8d
+               	movl	%ecx, %ebx
+               	shrl	$24, %ebx
+               	movl	%edx, %esi
+               	shrl	$8, %esi
+               	movl	%esi, 36(%rsp)
+               	movl	%edx, %esi
+               	shrl	$16, %esi
+               	movl	%esi, 48(%rsp)
+               	movl	%edx, %esi
+               	shrl	$24, %esi
+               	movl	%esi, 52(%rsp)
+               	movl	%r12d, %esi
+               	shrl	$8, %esi
+               	movl	%esi, 32(%rsp)
+               	movl	%r12d, %esi
+               	shrl	$16, %esi
+               	movl	%esi, 40(%rsp)
+               	movl	%r12d, %esi
+               	shrl	$24, %esi
+               	movl	%esi, 44(%rsp)
+               	movl	%r13d, %r15d
@@@@
-               	movl	%r8d, %edi
+               	movl	%r13d, %edi
@@@@
-               	movl	%r8d, %eax
-               	shrl	$24, %eax
-               	movl	%eax, 44(%rsp)
-               	movl	%ecx, %eax
-               	shrl	$8, %eax
-               	movl	%eax, 52(%rsp)
-               	movl	%ecx, %eax
-               	shrl	$16, %eax
-               	movl	%eax, 48(%rsp)
-               	movl	%ecx, %eax
-               	shrl	$24, %eax
-               	movl	%eax, 64(%rsp)
-               	movl	%edx, %eax
-               	shrl	$8, %eax
-               	movl	%eax, 76(%rsp)
-               	movl	%edx, %eax
-               	shrl	$16, %eax
-               	movl	%eax, 92(%rsp)
-               	movl	%edx, %eax
-               	shrl	$24, %eax
-               	movl	%eax, 100(%rsp)
-               	movl	%esi, %eax
-               	shrl	$8, %eax
-               	movl	%eax, 60(%rsp)
-               	movl	%esi, %eax
-               	shrl	$16, %eax
-               	movl	%eax, 80(%rsp)
-               	movl	%esi, %eax
-               	shrl	$24, %eax
-               	movl	%eax, 96(%rsp)
-               	movl	%r10d, %r13d
-               	shrl	$8, %r13d
-               	movl	%r10d, %eax
-               	shrl	$16, %eax
-               	movl	%eax, 56(%rsp)
-               	movl	%r10d, %eax
-               	shrl	$24, %eax
-               	movl	%eax, 88(%rsp)
-               	movl	%r11d, %ebp
-               	shrl	$8, %ebp
-               	movl	%r11d, %r12d
-               	shrl	$16, %r12d
-               	movl	%r11d, %eax
-               	shrl	$24, %eax
-               	movl	%eax, 68(%rsp)
-               	movl	%r9d, %eax
-               	shrl	$8, %eax
-               	movl	%eax, 72(%rsp)
-               	movl	%r9d, %eax
-               	shrl	$16, %eax
-               	movl	%eax, 84(%rsp)
-               	movzbl	%r8b, %ebx
-               	movzbl	%r15b, %eax
-               	shll	$8, %eax
-               	orl	%ebx, %eax
-               	movzbl	%dil, %edi
-               	shll	$16, %edi
-               	orl	%eax, %edi
-               	movzbl	44(%rsp), %eax
-               	shll	$24, %eax
-               	orl	%edi, %eax
+               	movzbl	%al, %eax
+               	movzbl	%r11b, %esi
+               	shll	$8, %esi
+               	orl	%eax, %esi
+               	movzbl	%r10b, %eax
+               	shll	$16, %eax
+               	orl	%esi, %eax
+               	movzbl	%r9b, %esi
+               	shll	$24, %esi
+               	orl	%eax, %esi
@@@@
-               	movdqu	%xmm0, 116(%r14)
-               	movdqu	%xmm0, 104(%r14)
-               	movdqu	%xmm0, 88(%r14)
-               	movdqu	%xmm0, 72(%r14)
-               	movdqu	%xmm0, 56(%r14)
-               	movaps	105980(%rip), %xmm1     # 0x442080 <_IO_stdin_used+0x80>
+               	movdqu	%xmm0, 108(%r14)
+               	movdqu	%xmm0, 92(%r14)
+               	movdqu	%xmm0, 76(%r14)
+               	movdqu	%xmm0, 60(%r14)
+               	movdqu	%xmm0, 44(%r14)
+               	movq	$0, 124(%r14)
+               	movaps	107725(%rip), %xmm1     # 0x442ec0 <_IO_stdin_used+0x80>
@@@@
-               	movl	%eax, 16(%r14)
+               	movl	%esi, 16(%r14)
@@@@
-               	movzbl	52(%rsp), %ecx
+               	movzbl	%bpl, %ecx
@@@@
-               	movzbl	48(%rsp), %edi
-               	shll	$16, %edi
-               	orl	%ecx, %edi
-               	movzbl	%r10b, %eax
-               	movzbl	%r11b, %ecx
+               	movzbl	%r8b, %eax
+               	shll	$16, %eax
+               	orl	%ecx, %eax
+               	movzbl	%bl, %ecx
+               	shll	$24, %ecx
+               	orl	%eax, %ecx
+               	movl	%ecx, 20(%r14)
+               	movzbl	%r13b, %eax
+               	movzbl	20(%rsp), %ecx
@@@@
-               	movzbl	%sil, %edx
+               	movzbl	%r12b, %edx
@@@@
-               	movzbl	64(%rsp), %eax
-               	shll	$24, %eax
-               	orl	%edi, %eax
-               	movzbl	%r13b, %ecx
-               	movzbl	%bpl, %edx
-               	shll	$8, %edx
-               	orl	%ecx, %edx
-               	movzbl	76(%rsp), %ecx
-               	movzbl	60(%rsp), %esi
-               	shll	$8, %esi
-               	orl	%ecx, %esi
-               	movd	%esi, %xmm2
-               	pinsrw	$1, %edx, %xmm2
-               	movzbl	56(%rsp), %ecx
-               	movzbl	%r12b, %edx
+               	movzbl	%r15b, %eax
+               	movzbl	21(%rsp), %ecx
+               	shll	$8, %ecx
+               	orl	%eax, %ecx
+               	movzbl	36(%rsp), %eax
+               	movzbl	32(%rsp), %edx
@@@@
-               	orl	%ecx, %edx
-               	movzbl	92(%rsp), %ecx
-               	movzbl	80(%rsp), %esi
-               	shll	$8, %esi
-               	orl	%ecx, %esi
-               	movd	%esi, %xmm3
-               	pinsrw	$1, %edx, %xmm3
-               	movzbl	100(%rsp), %ecx
-               	movd	%ecx, %xmm4
-               	movzbl	96(%rsp), %ecx
-               	pinsrw	$2, %ecx, %xmm4
-               	movl	%eax, 20(%r14)
-               	movzbl	88(%rsp), %eax
-               	pinsrw	$4, %eax, %xmm4
-               	movzbl	68(%rsp), %eax
-               	pinsrw	$6, %eax, %xmm4
-               	movzbl	%r9b, %eax
-               	movzbl	72(%rsp), %ecx
+               	orl	%eax, %edx
+               	movd	%edx, %xmm2
+               	pinsrw	$1, %ecx, %xmm2
+               	movzbl	%dil, %eax
+               	movzbl	22(%rsp), %ecx
@@@@
+               	movzbl	48(%rsp), %eax
+               	movzbl	40(%rsp), %edx
+               	shll	$8, %edx
+               	orl	%eax, %edx
+               	movd	%edx, %xmm3
+               	pinsrw	$1, %ecx, %xmm3
@@@@
+               	pslld	$8, %xmm2
@@@@
-               	pslld	$8, %xmm2
@@@@
+               	movzbl	44(%rsp), %eax
+               	movzbl	52(%rsp), %ecx
+               	movd	%ecx, %xmm1
+               	pinsrw	$2, %eax, %xmm1
@@@@
-               	pslld	$24, %xmm4
-               	por	%xmm0, %xmm4
-               	movdqu	%xmm4, 24(%r14)
-               	movzbl	84(%rsp), %eax
+               	movzbl	19(%rsp), %eax
+               	pinsrw	$4, %eax, %xmm1
+               	movzbl	23(%rsp), %eax
+               	pinsrw	$6, %eax, %xmm1
+               	pslld	$24, %xmm1
+               	por	%xmm0, %xmm1
+               	movdqu	%xmm1, 24(%r14)
+               	movzbl	24(%rsp), %eax
+               	movzbl	25(%rsp), %ecx
+               	shll	$8, %ecx
+               	orl	%eax, %ecx
+               	movzbl	26(%rsp), %eax
@@@@
-               	movl	28(%rsp), %eax
-               	movl	%eax, 44(%r14)
+               	movzbl	28(%rsp), %eax
+               	movzbl	29(%rsp), %ecx
+               	shll	$8, %ecx
+               	orl	%eax, %ecx
+               	movzbl	30(%rsp), %eax
+               	shll	$16, %eax
+               	orl	%ecx, %eax
+               	movzbl	31(%rsp), %ecx
+               	shll	$24, %ecx
+               	orl	%eax, %ecx
+               	movl	%ecx, 44(%r14)

@@ -21392,7 +21782,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -21419,25 +21809,27 @@
@@@[(14, 15), (16, 21), (27, 29)]@@@
-               	orq	%r15, %rax
@@@@
-               	addl	$-1, 3008(%rbx)
+               	movl	3008(%rbx), %ecx
+               	addl	$-1, %ecx
+               	movl	%ecx, 3008(%rbx)
+               	orq	%r15, %rax
@@@@
-               	nop
+               	nopw	(%rax,%rax)

@@ -21447,42 +21839,42 @@
@@@[(3, 13), (33, 39)]@@@
-               	cmpb	$1, 235828(%rip)        # 0x461dcc <_mi_process_is_initialized>
-               	jne	0x428b9b <mi_process_done+0x71b>
-               	cmpb	$0, 335859(%rip)        # 0x47a498 <mi_process_done.process_done>
-               	jne	0x428b9b <mi_process_done+0x71b>
-               	movb	$1, 335846(%rip)        # 0x47a498 <mi_process_done.process_done>
+               	cmpb	$0, 235740(%rip)        # 0x462514 <_mi_process_is_initialized>
+               	je	0x429340 <mi_process_done+0x720>
+               	cmpb	$0, 335763(%rip)        # 0x47abd8 <mi_process_done.process_done>
+               	jne	0x429340 <mi_process_done+0x720>
+               	movb	$1, 335750(%rip)        # 0x47abd8 <mi_process_done.process_done>
@@@@
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	callq	0x42b890 <mi_stats_merge_from>
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	callq	0x42c070 <mi_stats_merge_from>

@@ -21589,63 +21981,64 @@
@@@[(32, 37), (49, 50), (52, 55), (60, 61), (62, 67), (72, 74)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	72(%rsp)
+               	movq	72(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx
@@@@
+               	movq	72(%rsp), %rax
@@@@
-               	movq	%r14, %rax
-               	imulq	72(%rsp)
+               	imulq	%r14
@@@@
-               	imulq	$1000, 80(%rsp), %rsi   # imm = 0x3E8
@@@@
-               	movq	%r14, %rax
-               	imulq	88(%rsp)
+               	movq	88(%rsp), %rax
+               	imulq	$1000, 80(%rsp), %rcx   # imm = 0x3E8
+               	imulq	%r14
@@@@
-               	addq	%rsi, %rbx
+               	addq	%rcx, %rbx

@@ -21855,10 +22248,10 @@
@@@[(6, 10)]@@@
-               	jmp	0x42877b <mi_process_done+0x2fb>
-               	nopw	(%rax,%rax)
+               	jmp	0x428f1d <mi_process_done+0x2fd>
+               	nop

@@ -21868,78 +22261,87 @@
@@@[(3, 27), (88, 104), (126, 131)]@@@
-               	cmpb	$0, 233975(%rip)        # 0x461dcc <_mi_process_is_initialized>
-               	jne	0x42998c <mi_process_init+0xdcc>
-               	movb	$1, 233962(%rip)        # 0x461dcc <_mi_process_is_initialized>
-               	cmpb	$0, 234584(%rip)        # 0x462041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	jne	0x428c2e <mi_process_init+0x6e>
-               	movb	$1, 234575(%rip)        # 0x462041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	leaq	228367(%rip), %rdi      # 0x460808 <_mi_heap_default_key>
-               	leaq	3504(%rip), %rsi        # 0x4299b0 <mi_pthread_done>
+               	cmpb	$0, 233887(%rip)        # 0x462514 <_mi_process_is_initialized>
+               	je	0x429386 <mi_process_init+0x26>
+               	addq	$104, %rsp
+               	popq	%rbx
+               	popq	%r12
+               	popq	%r13
+               	popq	%r14
+               	popq	%r15
+               	popq	%rbp
+               	retq
+               	movb	$1, 233863(%rip)        # 0x462514 <_mi_process_is_initialized>
+               	cmpb	$0, 234477(%rip)        # 0x462781 <mi_process_setup_auto_thread_done.tls_initialized>
+               	jne	0x4293d9 <mi_process_init+0x79>
+               	movb	$1, 234468(%rip)        # 0x462781 <mi_process_setup_auto_thread_done.tls_initialized>
+               	leaq	228300(%rip), %rdi      # 0x460f70 <_mi_heap_default_key>
+               	leaq	3525(%rip), %rsi        # 0x42a170 <mi_pthread_done>
@@@@
-               	callq	0x429fb0 <_mi_verbose_message>
-               	callq	0x42a0d0 <mi_thread_init>
-               	callq	0x42a0d0 <mi_thread_init>
-               	movq	$-80, %r15
-               	movq	%fs:(%r15), %rax
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	leaq	233740(%rip), %rax      # 0x461e00 <_mi_stats_main>
+               	callq	0x42a790 <_mi_verbose_message>
+               	callq	0x42a8b0 <mi_thread_init>
+               	callq	0x42a8b0 <mi_thread_init>
+               	movq	$-80, %r14
+               	movq	%fs:(%r14), %rax
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	leaq	233631(%rip), %rax      # 0x462540 <_mi_stats_main>
@@@@
-               	movabsq	$-4835703278458516699, %rax # imm = 0xBCE4217D2849CB25
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$-4835703278458516699, %rcx # imm = 0xBCE4217D2849CB25
+               	imulq	%rcx

@@ -21949,8 +22351,9 @@
@@@[(3, 8)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -21960,31 +22363,32 @@
@@@[(9, 14)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -22029,61 +22433,61 @@
@@@[(3, 6), (43, 45), (50, 54), (55, 75), (76, 80), (81, 86)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
@@@@
-               	leaq	(%r14,%rbp), %rcx
+               	leaq	(%r15,%rbp), %rcx
@@@@
-               	je	0x428f70 <mi_process_init+0x3b0>
-               	movq	%rbx, %r14
+               	je	0x429720 <mi_process_init+0x3c0>
+               	movq	%rbx, %r15
@@@@
-               	jne	0x428f30 <mi_process_init+0x370>
-               	movq	%fs:(%r15), %rdi
-               	callq	0x4283d0 <_mi_heap_random_next>
-               	movq	%rax, %r14
-               	andl	$536739840, %r14d       # imm = 0x1FFE0000
-               	shlq	$13, %r14
-               	orq	%r13, %r14
-               	jmp	0x428f30 <mi_process_init+0x370>
-               	cmpq	$0, 267216(%rip)        # 0x46a348 <mi_clock_diff>
-               	jne	0x428ff1 <mi_process_init+0x431>
+               	jne	0x4296e0 <mi_process_init+0x380>
+               	movq	%fs:(%r14), %rdi
+               	callq	0x428b60 <_mi_heap_random_next>
+               	movq	%rax, %r15
+               	andl	$536739840, %r15d       # imm = 0x1FFE0000
+               	shlq	$13, %r15
+               	orq	%r13, %r15
+               	jmp	0x4296e0 <mi_process_init+0x380>
+               	cmpq	$0, 267104(%rip)        # 0x46aa88 <mi_clock_diff>
+               	jne	0x4297a7 <mi_process_init+0x447>
@@@@
-               	leaq	8(%rsp), %r15
-               	movq	%r15, %rsi
+               	leaq	8(%rsp), %r14
+               	movq	%r14, %rsi
@@@@
-               	movabsq	$-4835703278458516699, %rax # imm = 0xBCE4217D2849CB25
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$-4835703278458516699, %rcx # imm = 0xBCE4217D2849CB25
+               	imulq	%rcx

@@ -22091,26 +22495,28 @@
@@@[(3, 5), (6, 19), (20, 22), (23, 25), (32, 37)]@@@
-               	movq	%r15, %rsi
+               	movq	%r14, %rsi
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
-               	movq	8(%rsp), %rax
-               	subq	%rbp, %rax
-               	movq	%rdx, %rcx
-               	shrq	$63, %rcx
+               	movq	8(%rsp), %rcx
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx
+               	subq	%rbp, %rcx
+               	movq	%rdx, %rax
+               	shrq	$63, %rax
@@@@
-               	addq	%rcx, %rdx
+               	addq	%rax, %rdx
@@@@
-               	imulq	$1000, %rax, %rax       # imm = 0x3E8
+               	imulq	$1000, %rcx, %rax       # imm = 0x3E8
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -22132,20 +22538,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x429530 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	266884(%rip), %rax      # 0x46a308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 266885(%rip)        # 0x46a310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x429d00 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	266763(%rip), %rax      # 0x46aa48 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 266764(%rip)        # 0x46aa50 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22153,15 +22559,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22184,74 +22590,75 @@
@@@[(13, 19), (24, 28), (70, 75)]@@@
-               	callq	0x42b330 <_mi_warning_message>
-               	cmpq	%r15, %rbx
-               	jne	0x429440 <mi_process_init+0x880>
+               	callq	0x42bb10 <_mi_warning_message>
+               	cmpq	%r14, %rbx
+               	jne	0x429c10 <mi_process_init+0x8b0>
@@@@
-               	movq	232673(%rip), %rax      # 0x461e70 <_mi_stats_main+0x70>
-               	nop
+               	movq	232552(%rip), %rax      # 0x4625b0 <_mi_stats_main+0x70>
+               	nopl	(%rax,%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -22259,20 +22666,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x429530 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	266344(%rip), %rax      # 0x46a308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 266345(%rip)        # 0x46a310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x429d00 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	266213(%rip), %rax      # 0x46aa48 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 266214(%rip)        # 0x46aa50 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22280,15 +22687,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22297,142 +22704,144 @@
@@@[(3, 9), (14, 18), (60, 65), (87, 92), (93, 97), (105, 107), (171, 179), (183, 189)]@@@
-               	jae	0x429430 <mi_process_init+0x870>
-               	cmpq	%r15, %rbx
-               	jne	0x429440 <mi_process_init+0x880>
+               	jae	0x429c00 <mi_process_init+0x8a0>
+               	cmpq	%r14, %rbx
+               	jne	0x429c10 <mi_process_init+0x8b0>
@@@@
-               	movq	232224(%rip), %rax      # 0x461e70 <_mi_stats_main+0x70>
+               	movq	232093(%rip), %rax      # 0x4625b0 <_mi_stats_main+0x70>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx
@@@@
-               	jmp	0x42926a <mi_process_init+0x6aa>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x429a2d <mi_process_init+0x6cd>
+               	nopw	(%rax,%rax)
@@@@
-               	cmpq	%r15, %rbx
-               	je	0x429334 <mi_process_init+0x774>
+               	cmpq	%r14, %rbx
+               	je	0x429af7 <mi_process_init+0x797>
@@@@
-               	movq	%r15, %rdx
+               	movq	%r14, %rdx
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x429548 <mi_process_init+0x988>
-               	jmp	0x42967d <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x429d18 <mi_process_init+0x9b8>
+               	jmp	0x429e4d <mi_process_init+0xaed>
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	je	0x42967d <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	je	0x429e4d <mi_process_init+0xaed>

@@ -22440,13 +22849,13 @@
@@@[(11, 13)]@@@
-               	xchgq	%r14, (%rax)
+               	xchgq	%r15, (%rax)

@@ -22457,15 +22866,15 @@
@@@[(16, 18)]@@@
-               	movq	$-80, %r15
+               	movq	$-80, %r14

@@ -22474,101 +22883,101 @@
@@@[(18, 28), (54, 56), (109, 111)]@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x429548 <mi_process_init+0x988>
-               	jmp	0x42967d <mi_process_init+0xabd>
-               	callq	0x42b680 <_mi_os_numa_node_count_get>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x429d18 <mi_process_init+0x9b8>
+               	jmp	0x429e4d <mi_process_init+0xaed>
+               	callq	0x42be60 <_mi_os_numa_node_count_get>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%r14, %rdx
+               	movq	%r15, %rdx

@@ -22651,46 +23060,39 @@
@@@[(43, 60)]@@@
-               	callq	0x429fb0 <_mi_verbose_message>
-               	addq	$104, %rsp
-               	popq	%rbx
-               	popq	%r12
-               	popq	%r13
-               	popq	%r14
-               	popq	%r15
-               	popq	%rbp
-               	retq
-               	callq	0x42b680 <_mi_os_numa_node_count_get>
-               	jmp	0x428e1b <mi_process_init+0x25b>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x42a790 <_mi_verbose_message>
+               	jmp	0x429377 <mi_process_init+0x17>
+               	callq	0x42be60 <_mi_os_numa_node_count_get>
+               	jmp	0x4295d1 <mi_process_init+0x271>
+               	nop

@@ -22796,48 +23198,51 @@
@@@[(7, 15), (31, 34)]@@@
-               	addq	%rdx, 3016(%rbp)
-               	subq	%rdx, 3016(%r14)
+               	movq	3016(%rbp), %rax
+               	addq	%rdx, %rax
+               	movq	%rax, 3016(%rbp)
+               	movq	3016(%r14), %rax
+               	subq	%rdx, %rax
+               	movq	%rax, 3016(%r14)
@@@@
-               	jmp	0x429bbd <mi_pthread_done+0x20d>
-               	nopl	(%rax)
+               	jmp	0x42a38d <mi_pthread_done+0x21d>

@@ -23029,27 +23434,27 @@
@@@[(26, 34)]@@@
-               	callq	0x42bd80 <mi_heap_collect_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
-               	callq	0x42b890 <mi_stats_merge_from>
+               	callq	0x42c560 <mi_heap_collect_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi
+               	callq	0x42c070 <mi_stats_merge_from>

@@ -23060,9 +23465,9 @@
@@@[(3, 9)]@@@
-               	jmp	0x42b110 <_mi_os_free_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
+               	jmp	0x42b8e0 <_mi_os_free_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi

@@ -23070,8 +23475,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x42b890 <mi_stats_merge_from>
-               	nop
+               	jmp	0x42c070 <mi_stats_merge_from>
+               	nopw	%cs:(%rax,%rax)

@@ -23322,60 +23727,60 @@
@@@[(14, 15), (17, 26)]@@@
-               	movq	64(%rsp), %rdx
@@@@
-               	movl	(%rax,%rcx,4), %ecx
-               	movq	72(%rsp), %rdi
-               	cmpl	(%rax,%rdi,4), %ecx
-               	jne	0x42a462 <mi_option_get+0x192>
+               	movq	72(%rsp), %rdx
+               	movl	(%rax,%rdx,4), %edx
+               	cmpl	%edx, (%rax,%rcx,4)
+               	movq	64(%rsp), %rdx
+               	jne	0x42ac42 <mi_option_get+0x192>

@@ -23387,48 +23792,48 @@
@@@[(33, 35), (38, 40), (43, 45), (48, 50)]@@@
-               	movzbl	(%rcx,%rdi,4), %ecx
+               	movl	(%rcx,%rdi,4), %ecx
@@@@
-               	movzbl	(%rcx,%rdi,4), %ecx
+               	movl	(%rcx,%rdi,4), %ecx
@@@@
-               	movzbl	(%rcx,%rdi,4), %ecx
+               	movl	(%rcx,%rdi,4), %ecx
@@@@
-               	movzbl	(%rcx,%rdi,4), %ecx
+               	movl	(%rcx,%rdi,4), %ecx

@@ -23436,31 +23841,31 @@
@@@[(3, 5)]@@@
-               	movzbl	(%rbp,%rcx,4), %ecx
+               	movl	(%rbp,%rcx,4), %ecx

@@ -23468,44 +23873,44 @@
@@@[(50, 54)]@@@
-               	jmp	0x42a301 <mi_option_get+0x31>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42aae1 <mi_option_get+0x31>
+               	nop

@@ -24295,57 +24700,57 @@
@@@[(74, 76)]@@@
-               	leaq	99624(%rip), %rdi       # 0x4437bf <typeinfo name for kotlin::gc::GCSchedulerData+0x10d6>
+               	leaq	101272(%rip), %rdi      # 0x4445ff <typeinfo name for kotlin::gc::GCSchedulerData+0x10d6>

@@ -24387,17 +24792,21 @@
@@@[(7, 12), (16, 20), (21, 22)]@@@
-               	js	0x42b32c <_mi_stat_decrease+0x7c>
-               	addq	%rsi, 8(%rdi)
+               	js	0x42bb00 <_mi_stat_decrease+0x80>
+               	addq	8(%rdi), %rsi
+               	movq	%rsi, 8(%rdi)
@@@@
-               	subq	%rsi, (%rdi)
+               	movq	(%rdi), %rax
+               	subq	%rsi, %rax
+               	movq	%rax, (%rdi)
@@@@
+               	nopw	(%rax,%rax)

@@ -24453,12 +24862,12 @@
@@@[(11, 13)]@@@
-               	leaq	99226(%rip), %rdi       # 0x4437e9 <typeinfo name for kotlin::gc::GCSchedulerData+0x1100>
+               	leaq	100858(%rip), %rdi      # 0x444629 <typeinfo name for kotlin::gc::GCSchedulerData+0x1100>

@@ -24531,19 +24940,22 @@
@@@[(7, 12), (17, 21), (22, 24)]@@@
-               	jle	0x42b54e <_mi_stat_increase+0x6e>
-               	addq	%rsi, (%rdi)
+               	jle	0x42bd31 <_mi_stat_increase+0x71>
+               	addq	(%rdi), %rsi
+               	movq	%rsi, (%rdi)
@@@@
-               	subq	%rsi, 8(%rdi)
+               	movq	8(%rdi), %rax
+               	subq	%rsi, %rax
+               	movq	%rax, 8(%rdi)
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -24636,20 +25048,20 @@
@@@[(16, 18)]@@@
-               	leaq	99055(%rip), %r14       # 0x4439a9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	100687(%rip), %r14      # 0x4447e9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>

@@ -24661,15 +25073,15 @@
@@@[(9, 13)]@@@
-               	movq	%rbx, 257046(%rip)      # 0x46a318 <_mi_numa_node_count>
-               	leaq	99008(%rip), %rdi       # 0x4439c9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, 256886(%rip)      # 0x46aa58 <_mi_numa_node_count>
+               	leaq	100640(%rip), %rdi      # 0x444809 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>

@@ -24733,22 +25145,23 @@
@@@[(11, 13), (19, 28)]@@@
-               	leaq	99154(%rip), %rdi       # 0x443b9b <typeinfo name for kotlin::gc::GCSchedulerData+0x14b2>
+               	leaq	100786(%rip), %rdi      # 0x4449db <typeinfo name for kotlin::gc::GCSchedulerData+0x14b2>
@@@@
-               	cmpq	$0, 256765(%rip)        # 0x46a360 <mi_error_handler>
-               	je	0x42b877 <_mi_error_message+0x147>
-               	movq	256756(%rip), %rax      # 0x46a360 <mi_error_handler>
-               	movq	256757(%rip), %rsi      # 0x46a368 <mi_error_arg>
+               	movq	256606(%rip), %rax      # 0x46aaa0 <mi_error_handler>
+               	testq	%rax, %rax
+               	je	0x42c059 <_mi_error_message+0x149>
+               	movq	256594(%rip), %rax      # 0x46aaa0 <mi_error_handler>
+               	movq	256595(%rip), %rsi      # 0x46aaa8 <mi_error_arg>

@@ -24758,284 +25171,284 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -25051,66 +25464,67 @@
@@@[(16, 21), (80, 82)]@@@
-               	cmpq	$0, 321223(%rip)        # 0x47a488 <deferred_free>
-               	je	0x42bdcd <mi_heap_collect_ex+0x4d>
+               	movq	321064(%rip), %rax      # 0x47abc8 <deferred_free>
+               	testq	%rax, %rax
+               	je	0x42c5af <mi_heap_collect_ex+0x4f>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -25390,22 +25804,26 @@
@@@[(19, 23), (25, 29)]@@@
-               	addq	$-1, 3016(%r12)
+               	movq	3016(%r12), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 3016(%r12)
@@@@
-               	andb	$-2, 6(%rbx)
+               	movb	6(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 6(%rbx)

@@ -25414,104 +25832,106 @@
@@@[(3, 11), (16, 17), (33, 50), (67, 69)]@@@
-               	jb	0x42c420 <mi_heap_collect_ex+0x6a0>
-               	leaq	220277(%rip), %rdi      # 0x462040 <os_preloading>
-               	cmpq	%rdi, %rcx
-               	jae	0x42c420 <mi_heap_collect_ex+0x6a0>
+               	jb	0x42cc10 <mi_heap_collect_ex+0x6b0>
+               	leaq	220098(%rip), %rax      # 0x462780 <os_preloading>
+               	cmpq	%rax, %rcx
+               	jae	0x42cc10 <mi_heap_collect_ex+0x6b0>
@@@@
-               	nopl	(%rax)
@@@@
-               	movq	248(%rdx), %rbp
-               	leaq	1(%rbp), %rdi
-               	movq	%rdi, 248(%rdx)
-               	cmpq	240(%rdx), %rbp
-               	jl	0x42c442 <mi_heap_collect_ex+0x6c2>
-               	movq	%rdi, 240(%rdx)
-               	addq	$1, (%rcx)
+               	movq	248(%rdx), %rdi
+               	leaq	1(%rdi), %rax
+               	movq	%rax, 248(%rdx)
+               	cmpq	240(%rdx), %rdi
+               	jl	0x42cc32 <mi_heap_collect_ex+0x6d2>
+               	movq	%rax, 240(%rdx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
+               	movq	40(%rbx), %rax
@@@@
-               	nop
+               	nopl	(%rax)

@@ -25520,74 +25940,77 @@
@@@[(7, 13), (31, 33), (52, 56), (78, 79)]@@@
-               	je	0x42c815 <mi_heap_collect_ex+0xa95>
-               	addq	$-1, 120(%r15)
+               	je	0x42d03b <mi_heap_collect_ex+0xadb>
+               	movq	120(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 120(%r15)
@@@@
-               	nop
+               	nopl	(%rax)
@@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
-               	nop

@@ -25595,43 +26018,44 @@
@@@[(21, 25), (49, 52)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	jmp	0x42c794 <mi_heap_collect_ex+0xa14>
-               	nopl	(%rax)
+               	jmp	0x42cfb4 <mi_heap_collect_ex+0xa54>

@@ -25667,40 +26091,42 @@
@@@[(24, 28)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -25709,38 +26135,39 @@
@@@[(18, 21)]@@@
-               	callq	0x42cc70 <_mi_arena_free>
+               	callq	0x42d4a0 <_mi_arena_free>
+               	nopw	%cs:(%rax,%rax)

@@ -25790,25 +26217,27 @@
@@@[(28, 32)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)

@@ -25816,21 +26245,23 @@
@@@[(3, 7), (23, 27)]@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
-               	jmp	0x42c99b <_mi_page_free_collect+0x7b>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42d1cb <_mi_page_free_collect+0x7b>
+               	nopl	(%rax)

@@ -25838,50 +26269,52 @@
@@@[(3, 7)]@@@
-               	andb	$-3, 6(%rdi)
+               	movb	6(%rdi), %al
+               	andb	$-3, %al
+               	movb	%al, 6(%rdi)

@@ -25892,22 +26325,22 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -25973,20 +26406,24 @@
@@@[(13, 20), (22, 27)]@@@
-               	jne	0x42cc20 <_mi_page_free+0x230>
-               	addq	$-1, 3016(%r14)
+               	jne	0x42d450 <_mi_page_free+0x230>
+               	addq	$32, %r8
+               	movq	3016(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 3016(%r14)
@@@@
-               	andb	$-2, 6(%rdi)
-               	addq	$32, %r8
+               	movb	6(%rdi), %al
+               	andb	$-2, %al
+               	movb	%al, 6(%rdi)

@@ -25995,8 +26432,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x42d850 <_mi_segment_page_free>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42e0a0 <_mi_segment_page_free>

@@ -26478,68 +26914,72 @@
@@@[(79, 89)]@@@
-               	jae	0x42d310 <mi_os_commitx+0x1f0>
-               	addq	$1, 216163(%rip)        # 0x461fe8 <_mi_stats_main+0x1e8>
-               	addq	$1, 216147(%rip)        # 0x461fe0 <_mi_stats_main+0x1e0>
+               	jae	0x42db40 <mi_os_commitx+0x1f0>
+               	movq	215924(%rip), %rax      # 0x462728 <_mi_stats_main+0x1e8>
+               	addq	$1, %rax
+               	movq	%rax, 215913(%rip)      # 0x462728 <_mi_stats_main+0x1e8>
+               	movq	215898(%rip), %rax      # 0x462720 <_mi_stats_main+0x1e0>
+               	addq	$1, %rax
+               	movq	%rax, 215887(%rip)      # 0x462720 <_mi_stats_main+0x1e0>

@@ -26570,6 +27010,7 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -26922,67 +27363,68 @@
@@@[(38, 42), (45, 50), (51, 55)]@@@
-               	jmp	0x42d93d <_mi_segment_page_free+0xed>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x42e18d <_mi_segment_page_free+0xed>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42d95a <_mi_segment_page_free+0x10a>
+               	testb	%cl, %cl
+               	jne	0x42e1ac <_mi_segment_page_free+0x10c>

@@ -27031,7 +27473,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -27043,70 +27485,78 @@
@@@[(3, 7), (8, 14), (31, 33), (51, 59), (61, 62), (66, 67), (68, 72), (95, 103)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x42dc0c <mi_segment_page_clear+0x1dc>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x42e48d <mi_segment_page_clear+0x1fd>
@@@@
-               	movl	$160, %edi
-               	addq	112(%r15), %rdi
-               	callq	0x42b2b0 <_mi_stat_decrease>
+               	movq	112(%r15), %rdi
+               	addq	$160, %rdi
+               	callq	0x42ba80 <_mi_stat_decrease>
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	addq	$1, 40(%rcx)
-               	andb	$-10, 1(%rbx)
+               	movq	40(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%rcx)
+               	movb	1(%rbx), %al
+               	andb	$-10, %al
+               	movb	%al, 1(%rbx)
@@@@
-               	movups	%xmm0, 6(%rbx)
@@@@
+               	movups	%xmm0, 38(%rbx)
@@@@
-               	addq	$-1, 56(%r14)
+               	movq	56(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 56(%r14)
@@@@
-               	imull	$1000, (%rsp), %ecx     # imm = 0x3E8
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	8(%rsp)
+               	movq	(%rsp), %rax
+               	imull	$1000, %eax, %ecx       # imm = 0x3E8
+               	movq	8(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -27133,61 +27583,62 @@
@@@[(21, 25), (27, 34), (35, 39), (58, 62)]@@@
-               	jmp	0x42dbdf <mi_segment_page_clear+0x1af>
-               	movb	96(%r14), %cl
+               	jmp	0x42e45f <mi_segment_page_clear+0x1cf>
+               	movq	96(%r14), %rcx
@@@@
-               	movzbl	(%rbx), %ecx
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movb	(%rbx), %cl
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42dbfb <mi_segment_page_clear+0x1cb>
+               	testb	%cl, %cl
+               	jne	0x42e47c <mi_segment_page_clear+0x1ec>
@@@@
-               	jmp	0x42dc2f <mi_segment_page_clear+0x1ff>
-               	movb	96(%rax), %cl
+               	jmp	0x42e4b1 <mi_segment_page_clear+0x221>
+               	movq	96(%rax), %rcx

@@ -27212,229 +27663,230 @@
@@@[(118, 124), (127, 132), (133, 137), (256, 260), (282, 286), (311, 315)]@@@
-               	jne	0x42dd71 <mi_segment_free+0xf1>
-               	jmp	0x42dd55 <mi_segment_free+0xd5>
-               	movzbl	96(%r14), %ecx
+               	jne	0x42e5f1 <mi_segment_free+0xf1>
+               	jmp	0x42e5d5 <mi_segment_free+0xd5>
+               	movq	96(%r14), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42ddf6 <mi_segment_free+0x176>
+               	testb	%cl, %cl
+               	jne	0x42e677 <mi_segment_free+0x177>
@@@@
-               	movl	$160, %edi
-               	addq	112(%r12), %rdi
+               	movq	112(%r12), %rdi
+               	addq	$160, %rdi
@@@@
-               	movl	$160, %edi
-               	addq	112(%r12), %rdi
+               	movq	112(%r12), %rdi
+               	addq	$160, %rdi
@@@@
-               	jmp	0x42e002 <mi_segment_free+0x382>
-               	nopl	(%rax)
+               	jmp	0x42e882 <mi_segment_free+0x382>
+               	nop

@@ -27469,51 +27921,54 @@
@@@[(21, 25), (47, 48)]@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
+               	nop

@@ -27521,41 +27976,43 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)

@@ -27564,7 +28021,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -27592,106 +28048,110 @@
@@@[(24, 28), (61, 63), (100, 104)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)

@@ -27700,7 +28160,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax)

@@ -27749,32 +28208,34 @@
@@@[(12, 16)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -27783,81 +28244,82 @@
@@@[(18, 21), (105, 109)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -27866,7 +28328,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -27897,185 +28359,192 @@
@@@[(38, 42), (45, 50), (51, 55), (136, 138), (157, 161), (180, 181), (218, 222), (240, 245)]@@@
-               	jmp	0x42e71d <mi_segment_abandon+0xdd>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x42efad <mi_segment_abandon+0xdd>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42e739 <mi_segment_abandon+0xf9>
+               	testb	%cl, %cl
+               	jne	0x42efcb <mi_segment_abandon+0xfb>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
+               	nop
@@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	movq	309875(%rip), %rax      # 0x47a3c0 <abandoned>
-               	nopl	(%rax)
+               	movq	309532(%rip), %rax      # 0x47ab00 <abandoned>
+               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -28097,154 +28566,157 @@
@@@[(92, 98), (101, 106), (107, 111), (136, 140), (205, 211)]@@@
-               	jne	0x42ea33 <mi_segment_abandon+0x3f3>
-               	jmp	0x42ea19 <mi_segment_abandon+0x3d9>
-               	movzbl	96(%r15), %ecx
+               	jne	0x42f2d3 <mi_segment_abandon+0x403>
+               	jmp	0x42f2b9 <mi_segment_abandon+0x3e9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42eab3 <mi_segment_abandon+0x473>
+               	testb	%cl, %cl
+               	jne	0x42f354 <mi_segment_abandon+0x484>
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	jne	0x42e7d7 <mi_segment_abandon+0x197>
-               	jmp	0x42e7ba <mi_segment_abandon+0x17a>
-               	nopw	(%rax,%rax)
+               	jne	0x42f069 <mi_segment_abandon+0x199>
+               	jmp	0x42f04c <mi_segment_abandon+0x17c>
+               	nop

@@ -28257,7 +28729,7 @@
@@@[(3, 5)]@@@
-               	movb	96(%r12), %cl
+               	movq	96(%r12), %rcx

@@ -28265,29 +28737,31 @@
@@@[(29, 35)]@@@
-               	addl	$-1, 136(%r12,%rbx)
-               	je	0x42ec48 <_mi_free_delayed_block+0x98>
+               	movl	136(%r12,%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%r12,%rbx)
+               	je	0x42f4f2 <_mi_free_delayed_block+0xa2>

@@ -28300,15 +28774,15 @@
@@@[(11, 15)]@@@
-               	jmp	0x42ed80 <_mi_page_unfull>
-               	nop
+               	jmp	0x42f630 <_mi_page_unfull>
+               	nopl	(%rax,%rax)

@@ -28389,27 +28863,26 @@
@@@[(11, 18)]@@@
-               	cmpq	$9, %rsi
-               	jb	0x42edf3 <_mi_page_unfull+0x73>
-               	movq	%rsi, %rdx
-               	addq	$7, %rdx
+               	cmpl	$9, %esi
+               	jb	0x42f69f <_mi_page_unfull+0x6f>
+               	leaq	7(%rsi), %rdx

@@ -28472,22 +28945,22 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	(%rax,%rax)

@@ -28762,83 +29235,86 @@
@@@[(20, 24), (54, 57), (91, 97)]@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	je	0x42f440 <mi_segment_reclaim+0x1c0>
-               	addq	$-1, 40(%r15)
+               	je	0x42fcf0 <mi_segment_reclaim+0x1c0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -28846,115 +29322,121 @@
@@@[(21, 25), (45, 49), (85, 89), (127, 131), (139, 145)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x42f50a <mi_segment_reclaim+0x28a>
-               	nop
+               	jmp	0x42fdc4 <mi_segment_reclaim+0x294>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 200(%rsi)
+               	movq	200(%rsi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rsi)
@@@@
-               	callq	0x42da30 <mi_segment_page_clear>
-               	nopl	(%rax)
+               	callq	0x42e290 <mi_segment_page_clear>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x42f630 <mi_segment_reclaim+0x3b0>
-               	addq	$-1, 40(%r15)
+               	je	0x42ff00 <mi_segment_reclaim+0x3d0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -28962,70 +29444,74 @@
@@@[(21, 25), (45, 49), (80, 84)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x42f6ea <mi_segment_reclaim+0x46a>
-               	nop
+               	jmp	0x42ffd4 <mi_segment_reclaim+0x4a4>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -29044,28 +29530,27 @@
@@@[(3, 4), (8, 12)]@@@
-               	nopl	(%rax)
@@@@
-               	cmpq	$67108864, %r8          # imm = 0x4000000
-               	jae	0x42fa78 <_mi_page_reclaim+0x298>
+               	cmpl	$67108864, %r8d         # imm = 0x4000000
+               	jae	0x430372 <_mi_page_reclaim+0x2a2>

@@ -29199,49 +29684,52 @@
@@@[(13, 19), (28, 32), (34, 40), (41, 49), (53, 56), (58, 60)]@@@
-               	jne	0x42fa60 <_mi_page_reclaim+0x280>
-               	addq	$1, 3016(%rdi)
+               	jne	0x430350 <_mi_page_reclaim+0x280>
+               	movq	3016(%rdi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%rdi)
@@@@
-               	jmp	0x42fa9a <_mi_page_reclaim+0x2ba>
-               	movb	96(%rax), %cl
+               	jmp	0x430395 <_mi_page_reclaim+0x2c5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rsi), %ecx
-               	testq	%rcx, %rcx
-               	je	0x42faaa <_mi_page_reclaim+0x2ca>
+               	movb	(%rsi), %cl
+               	testb	%cl, %cl
+               	je	0x4303a3 <_mi_page_reclaim+0x2d3>
@@@@
-               	jmp	0x42f7f2 <_mi_page_reclaim+0x12>
-               	movq	80(%rax), %r10
-               	movq	%rdx, %r9
-               	subq	%r10, %r9
+               	jmp	0x4300e2 <_mi_page_reclaim+0x12>
+               	movq	80(%rax), %r9
+               	movq	%rdx, %r10
+               	subq	%r9, %r10
@@@@
-               	je	0x42faef <_mi_page_reclaim+0x30f>
+               	je	0x4303eb <_mi_page_reclaim+0x31b>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax

@@ -29249,41 +29737,43 @@
@@@[(3, 11), (20, 22), (34, 40), (49, 53)]@@@
-               	subq	%rcx, %r9
-               	movq	%r9, %r8
-               	jmp	0x42f7f2 <_mi_page_reclaim+0x12>
-               	nopw	(%rax,%rax)
+               	subq	%rcx, %r10
+               	movq	%r10, %r8
+               	jmp	0x4300e2 <_mi_page_reclaim+0x12>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movb	96(%rdi), %cl
+               	movq	96(%rdi), %rcx
@@@@
-               	addl	$-1, 136(%rdi,%rax)
-               	je	0x42fb66 <mi_free+0x66>
+               	movl	136(%rdi,%rax), %ecx
+               	addl	$-1, %ecx
+               	movl	%ecx, 136(%rdi,%rax)
+               	je	0x430470 <mi_free+0x70>
@@@@
-               	jmp	0x42ec70 <_mi_page_retire>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42f520 <_mi_page_retire>
+               	nopl	(%rax)

@@ -29299,32 +29789,33 @@
@@@[(15, 18), (20, 24)]@@@
-               	movzbl	(%r9), %ebx
+               	movb	(%r9), %cl
+               	movzbl	%cl, %ebx
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x42fc17 <mi_free_generic+0x97>
+               	testb	%bl, %bl
+               	jne	0x430518 <mi_free_generic+0x98>

@@ -29334,30 +29825,32 @@
@@@[(25, 31)]@@@
-               	addl	$-1, 136(%rdi,%r11)
-               	je	0x42fc8d <mi_free_generic+0x10d>
+               	movl	136(%rdi,%r11), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%rdi,%r11)
+               	je	0x430598 <mi_free_generic+0x118>

@@ -29369,49 +29862,49 @@
@@@[(26, 30)]@@@
-               	jmp	0x42fccb <mi_free_generic+0x14b>
-               	movb	96(%rax), %cl
+               	jmp	0x4305d7 <mi_free_generic+0x157>
+               	movq	96(%rax), %rcx

@@ -29421,8 +29914,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x42fc24 <mi_free_generic+0xa4>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x430525 <mi_free_generic+0xa5>

@@ -29433,86 +29925,91 @@
@@@[(18, 26), (49, 52)]@@@
-               	addl	$-1, 16(%r14)
-               	andb	$-2, 7(%r14)
+               	movl	16(%r14), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 16(%r14)
+               	movb	7(%r14), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%r14)
@@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -29521,72 +30018,76 @@
@@@[(20, 24), (52, 56)]@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -30102,21 +30603,21 @@
@@@[(10, 20)]@@@
-               	callq	0x430120 <_mi_fprintf>
-               	movq	(%r14), %rax
-               	cmpq	8(%r14), %rax
-               	leaq	79573(%rip), %rax       # 0x443eca <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
-               	leaq	79584(%rip), %rdx       # 0x443edc <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>
+               	callq	0x430a40 <_mi_fprintf>
+               	movq	8(%r14), %rax
+               	cmpq	%rax, (%r14)
+               	leaq	80885(%rip), %rax       # 0x444d0a <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
+               	leaq	80896(%rip), %rdx       # 0x444d1c <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>

@@ -30853,70 +31354,73 @@
@@@[(14, 19), (32, 34), (88, 96)]@@@
-               	cmpq	$0, 299336(%rip)        # 0x47a488 <deferred_free>
-               	je	0x431365 <_mi_malloc_generic+0x65>
+               	movq	298857(%rip), %rcx      # 0x47abc8 <deferred_free>
+               	testq	%rcx, %rcx
+               	je	0x431c87 <_mi_malloc_generic+0x67>
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	callq	0x42b730 <_mi_error_message>
-               	jmp	0x431419 <_mi_malloc_generic+0x119>
-               	addl	$1, 16(%rax)
+               	callq	0x42bf10 <_mi_error_message>
+               	jmp	0x431d3e <_mi_malloc_generic+0x11e>
+               	movl	16(%rax), %edx
+               	addl	$1, %edx
+               	movl	%edx, 16(%rax)

@@ -30929,7 +31433,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax,%rax)

@@ -30981,37 +31484,43 @@
@@@[(16, 19), (20, 21), (29, 35), (38, 43), (44, 45), (49, 55)]@@@
-               	callq	0x42b730 <_mi_error_message>
-               	movq	8(%rbx), %rcx
+               	callq	0x42bf10 <_mi_error_message>
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x43153d <mi_find_page+0x10d>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x431e66 <mi_find_page+0x116>
@@@@
-               	subl	%eax, 16(%rbx)
-               	movq	8(%rbx), %rcx
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	je	0x43154a <mi_find_page+0x11a>
-               	andb	$1, 7(%rbx)
+               	je	0x431e77 <mi_find_page+0x127>
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -31048,91 +31557,100 @@
@@@[(10, 14), (59, 79), (98, 102), (104, 110), (120, 125)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x4316bb <mi_find_page+0x28b>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x432012 <mi_find_page+0x2c2>
@@@@
-               	jmp	0x431699 <mi_find_page+0x269>
-               	addq	$1, 744(%rax)
-               	addq	$1, 736(%rax)
-               	jmp	0x431699 <mi_find_page+0x269>
-               	addq	$1, 728(%rax)
-               	addq	$1, 720(%rax)
+               	jmp	0x431ff0 <mi_find_page+0x2a0>
+               	movq	744(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 744(%rax)
+               	movq	736(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 736(%rax)
+               	jmp	0x431ff0 <mi_find_page+0x2a0>
+               	movq	728(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 728(%rax)
+               	movq	720(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 720(%rax)
@@@@
-               	jmp	0x4316dd <mi_find_page+0x2ad>
-               	movb	96(%rax), %cl
+               	jmp	0x432035 <mi_find_page+0x2e5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r14), %ebx
-               	testq	%rbx, %rbx
-               	je	0x4316ee <mi_find_page+0x2be>
+               	movb	(%r14), %bl
+               	testb	%bl, %bl
+               	je	0x432044 <mi_find_page+0x2f4>
@@@@
-               	je	0x431731 <mi_find_page+0x301>
-               	imulq	%rbx, %rdx
+               	je	0x43208a <mi_find_page+0x33a>
+               	movzbl	%bl, %edi
+               	imulq	%rdi, %rdx

@@ -31142,8 +31660,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x4315df <mi_find_page+0x1af>
-               	nopl	(%rax)
+               	jmp	0x431f0b <mi_find_page+0x1bb>
+               	nopw	%cs:(%rax,%rax)

@@ -31251,46 +31769,48 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -31301,96 +31821,95 @@
@@@[(3, 8), (40, 44), (47, 52), (53, 57), (77, 83), (84, 86), (87, 99), (102, 111), (112, 114), (118, 123), (124, 125)]@@@
-               	jmp	0x4319b9 <mi_page_fresh_alloc+0x279>
-               	nopl	(%rax)
+               	jmp	0x432329 <mi_page_fresh_alloc+0x289>
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	jmp	0x431a10 <mi_page_fresh_alloc+0x2d0>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x432380 <mi_page_fresh_alloc+0x2e0>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x431a2d <mi_page_fresh_alloc+0x2ed>
+               	testb	%cl, %cl
+               	jne	0x43239f <mi_page_fresh_alloc+0x2ff>
@@@@
-               	je	0x431ef7 <mi_page_fresh_alloc+0x7b7>
-               	movq	%r15, %rdi
-               	andq	$-4194304, %rdi         # imm = 0xFFC00000
+               	je	0x432892 <mi_page_fresh_alloc+0x7f2>
+               	movq	%r15, %rsi
+               	andq	$-4194304, %rsi         # imm = 0xFFC00000
@@@@
-               	movl	112(%rdi), %edx
+               	movl	112(%rsi), %edx
@@@@
-               	jne	0x431a95 <mi_page_fresh_alloc+0x355>
-               	movq	72(%rdi), %rax
-               	movq	16(%rsp), %rbx
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x431af8 <mi_page_fresh_alloc+0x3b8>
-               	jmp	0x431aae <mi_page_fresh_alloc+0x36e>
-               	movb	96(%rdi), %cl
+               	jne	0x4323f9 <mi_page_fresh_alloc+0x359>
+               	movq	72(%rsi), %rax
+               	jmp	0x432405 <mi_page_fresh_alloc+0x365>
+               	movq	96(%rsi), %rcx
@@@@
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x431af8 <mi_page_fresh_alloc+0x3b8>
-               	movq	80(%rdi), %rsi
+               	movb	(%r15), %cl
+               	movzbl	%cl, %edi
+               	testb	%dil, %dil
+               	jne	0x43245f <mi_page_fresh_alloc+0x3bf>
+               	movq	80(%rsi), %rbp
@@@@
-               	subq	%rsi, %rcx
+               	subq	%rbp, %rcx
@@@@
-               	je	0x431af5 <mi_page_fresh_alloc+0x3b5>
-               	imulq	%r9, %rax
-               	addq	%rdi, %rax
+               	je	0x43245c <mi_page_fresh_alloc+0x3bc>
+               	imulq	%rdi, %rax
@@@@
+               	addq	%rbp, %rax

@@ -31407,74 +31926,75 @@
@@@[(7, 10), (12, 29), (30, 51), (52, 74), (75, 85), (87, 91), (105, 109), (113, 119)]@@@
-               	movq	%rax, %r8
-               	jmp	0x431b29 <mi_page_fresh_alloc+0x3e9>
+               	jmp	0x43248a <mi_page_fresh_alloc+0x3ea>
@@@@
-               	movl	%eax, %r8d
-               	movw	%r8w, 4(%r15)
-               	movb	1(%r15), %al
-               	movb	7(%r15), %cl
-               	shrb	$3, %al
-               	andb	$1, %al
-               	andb	$-2, %cl
-               	orb	%al, %cl
-               	movb	%cl, 7(%r15)
+               	movw	%ax, 4(%r15)
+               	movb	1(%r15), %cl
+               	shrb	$3, %cl
+               	andb	$1, %cl
+               	movb	7(%r15), %dl
+               	andb	$-2, %dl
+               	orb	%cl, %dl
+               	movb	%dl, 7(%r15)
@@@@
-               	jne	0x431c62 <mi_page_fresh_alloc+0x522>
-               	movzwl	2(%r15), %r10d
-               	cmpw	%r8w, %r10w
-               	jae	0x431c62 <mi_page_fresh_alloc+0x522>
-               	movl	112(%rdi), %eax
-               	cmpl	$3, %eax
-               	jne	0x431b77 <mi_page_fresh_alloc+0x437>
-               	movq	72(%rdi), %rsi
-               	testb	%r9b, %r9b
-               	je	0x431b87 <mi_page_fresh_alloc+0x447>
+               	jne	0x4325e0 <mi_page_fresh_alloc+0x540>
+               	movzwl	2(%r15), %ecx
+               	cmpw	%ax, %cx
+               	jae	0x4325e0 <mi_page_fresh_alloc+0x540>
+               	movzwl	%cx, %r8d
+               	movl	112(%rsi), %edx
+               	cmpl	$3, %edx
+               	jne	0x4324dc <mi_page_fresh_alloc+0x43c>
+               	movq	72(%rsi), %rax
+               	testb	%dil, %dil
+               	je	0x4324ed <mi_page_fresh_alloc+0x44d>
@@@@
-               	jmp	0x431c11 <mi_page_fresh_alloc+0x4d1>
-               	movb	96(%rdi), %cl
-               	movl	$1, %esi
-               	shlq	%cl, %rsi
-               	testb	%r9b, %r9b
-               	jne	0x431b6f <mi_page_fresh_alloc+0x42f>
-               	movq	80(%rdi), %rdx
-               	movq	%rsi, %rcx
-               	subq	%rdx, %rcx
-               	cmpl	$1, %eax
-               	ja	0x431bbb <mi_page_fresh_alloc+0x47b>
+               	jmp	0x43257d <mi_page_fresh_alloc+0x4dd>
+               	movq	96(%rsi), %rcx
+               	movl	$1, %eax
+               	shlq	%cl, %rax
+               	testb	%dil, %dil
+               	jne	0x4324d4 <mi_page_fresh_alloc+0x434>
+               	movq	80(%rsi), %rbx
+               	movq	%rax, %rcx
+               	subq	%rbx, %rcx
+               	cmpl	$1, %edx
+               	ja	0x432521 <mi_page_fresh_alloc+0x481>
@@@@
-               	je	0x431bbb <mi_page_fresh_alloc+0x47b>
-               	imulq	%r9, %rsi
-               	addq	%rsi, %rdi
-               	addq	%rdx, %rdi
-               	movq	%rdi, %rax
+               	je	0x432521 <mi_page_fresh_alloc+0x481>
+               	imulq	%rdi, %rax
+               	addq	%rax, %rsi
+               	addq	%rbx, %rsi
+               	movq	%rsi, %rax
@@@@
-               	je	0x431bf6 <mi_page_fresh_alloc+0x4b6>
-               	movq	%rdi, %rax
+               	je	0x432562 <mi_page_fresh_alloc+0x4c2>
+               	movq	%rsi, %rax
@@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	ja	0x431917 <mi_page_fresh_alloc+0x1d7>
-               	jmp	0x43191b <mi_page_fresh_alloc+0x1db>
-               	movl	%edi, %eax
+               	ja	0x43227e <mi_page_fresh_alloc+0x1de>
+               	jmp	0x432282 <mi_page_fresh_alloc+0x1e2>
+               	movl	%esi, %eax

@@ -31483,14 +32003,15 @@
@@@[(3, 14)]@@@
-               	movq	%rcx, %rsi
-               	cmpl	$67108864, %ebp         # imm = 0x4000000
-               	cmovbq	%rbp, %rsi
-               	movzwl	%r8w, %r12d
-               	subq	%r10, %r12
+               	movq	%rcx, %rax
+               	movl	20(%r15), %esi
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	cmovaeq	%rax, %rsi
+               	movzwl	4(%r15), %r12d
+               	subq	%r8, %r12

@@ -31499,45 +32020,50 @@
@@@[(3, 9), (11, 17), (34, 35), (56, 60)]@@@
-               	callq	0x432700 <mi_page_free_list_extend>
-               	addw	%r12w, 2(%r15)
+               	callq	0x4330b0 <mi_page_free_list_extend>
+               	movzwl	2(%r15), %eax
+               	addl	%r12d, %eax
+               	movw	%ax, 2(%r15)
@@@@
-               	jne	0x431c62 <mi_page_fresh_alloc+0x522>
-               	andb	$-2, 7(%r15)
+               	jne	0x4325e0 <mi_page_fresh_alloc+0x540>
+               	movb	7(%r15), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%r15)
@@@@
-               	nop
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -31579,21 +32105,22 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -31660,16 +32187,18 @@
@@@[(13, 19)]@@@
-               	jne	0x431ee0 <mi_page_fresh_alloc+0x7a0>
-               	addq	$1, 3016(%r12)
+               	jne	0x432870 <mi_page_fresh_alloc+0x7d0>
+               	movq	3016(%r12), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%r12)

@@ -31679,7 +32208,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -31690,23 +32219,23 @@
@@@[(3, 5), (11, 13), (15, 23)]@@@
-               	movq	%rdi, %r13
+               	movq	%rdi, %r12
@@@@
-               	movq	(%r14), %r12
+               	movq	(%r14), %r13
@@@@
-               	testq	%r12, %r12
-               	je	0x432530 <mi_page_queue_find_free_ex+0x620>
-               	movq	%r12, %rbx
-               	movq	48(%r12), %r12
+               	testq	%r13, %r13
+               	je	0x432ed0 <mi_page_queue_find_free_ex+0x620>
+               	movq	%r13, %rbx
+               	movq	48(%r13), %r13

@@ -31724,81 +32253,85 @@
@@@[(28, 32), (33, 43), (95, 99)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
@@@@
-               	jne	0x4326dc <mi_page_queue_find_free_ex+0x7cc>
-               	movzwl	2(%rbx), %edi
-               	movzwl	4(%rbx), %ebp
-               	cmpw	%bp, %di
-               	jb	0x432616 <mi_page_queue_find_free_ex+0x706>
+               	jne	0x43308a <mi_page_queue_find_free_ex+0x7da>
+               	movzwl	2(%rbx), %eax
+               	movzwl	4(%rbx), %ecx
+               	cmpw	%cx, %ax
+               	jb	0x432fb7 <mi_page_queue_find_free_ex+0x707>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)

@@ -31809,22 +32342,22 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -32054,140 +32587,146 @@
@@@[(28, 34), (37, 41), (42, 56), (57, 61), (62, 64), (78, 79), (83, 85), (94, 98), (117, 125), (127, 131), (133, 135), (140, 150), (152, 164), (165, 172), (174, 176), (181, 185), (186, 190), (192, 194), (195, 205)]@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x431f50 <mi_page_queue_find_free_ex+0x40>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x4328f0 <mi_page_queue_find_free_ex+0x40>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %edx
+               	subl	%eax, %edx
+               	movl	%edx, 16(%rbx)
@@@@
-               	jne	0x4324ed <mi_page_queue_find_free_ex+0x5dd>
-               	jmp	0x431f50 <mi_page_queue_find_free_ex+0x40>
-               	nopl	(%rax)
-               	movq	3024(%r13), %rbp
-               	cmpq	3032(%r13), %rbp
-               	jbe	0x432590 <mi_page_queue_find_free_ex+0x680>
-               	movl	$74, %r12d
+               	jne	0x432e8d <mi_page_queue_find_free_ex+0x5dd>
+               	jmp	0x4328f0 <mi_page_queue_find_free_ex+0x40>
+               	nop
+               	movq	3024(%r12), %rbp
+               	cmpq	3032(%r12), %rbp
+               	jbe	0x432f30 <mi_page_queue_find_free_ex+0x680>
+               	movl	$74, %r13d
@@@@
-               	movq	%r12, 3024(%r13)
-               	movq	%r15, 3032(%r13)
+               	movq	%r13, 3024(%r12)
+               	movq	%r15, 3032(%r12)
@@@@
-               	movq	%r13, %rdi
+               	movq	%r12, %rdi
@@@@
-               	nopl	(%rax)
@@@@
-               	movl	$74, %r12d
+               	movl	$74, %r13d
@@@@
-               	cmpq	3032(%r13), %rbp
-               	ja	0x432549 <mi_page_queue_find_free_ex+0x639>
+               	cmpq	3032(%r12), %rbp
+               	ja	0x432eeb <mi_page_queue_find_free_ex+0x63b>
@@@@
-               	callq	0x42c9f0 <_mi_page_free>
-               	jmp	0x4325c0 <mi_page_queue_find_free_ex+0x6b0>
-               	cmpq	%r12, %rbp
-               	cmovbq	%rbp, %r12
+               	callq	0x42d220 <_mi_page_free>
+               	jmp	0x432f60 <mi_page_queue_find_free_ex+0x6b0>
+               	cmpq	%r13, %rbp
+               	cmovbq	%rbp, %r13
@@@@
-               	jmp	0x4325c0 <mi_page_queue_find_free_ex+0x6b0>
+               	jmp	0x432f60 <mi_page_queue_find_free_ex+0x6b0>
+               	movzwl	%ax, %r8d
+               	movzwl	%cx, %ebp
@@@@
-               	movl	20(%rbx), %r8d
+               	movl	20(%rbx), %edi
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x432694 <mi_page_queue_find_free_ex+0x784>
-               	jmp	0x43264c <mi_page_queue_find_free_ex+0x73c>
-               	movb	96(%rax), %cl
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x433039 <mi_page_queue_find_free_ex+0x789>
+               	jmp	0x432ff0 <mi_page_queue_find_free_ex+0x740>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x432694 <mi_page_queue_find_free_ex+0x784>
-               	movq	80(%rax), %r10
-               	movq	%rsi, %r9
-               	subq	%r10, %r9
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x433039 <mi_page_queue_find_free_ex+0x789>
+               	movq	80(%rax), %r9
+               	movq	%rsi, %r10
+               	subq	%r9, %r10
@@@@
-               	ja	0x432691 <mi_page_queue_find_free_ex+0x781>
-               	testl	%r8d, %r8d
-               	je	0x432691 <mi_page_queue_find_free_ex+0x781>
+               	ja	0x433036 <mi_page_queue_find_free_ex+0x786>
+               	testl	%edi, %edi
+               	je	0x433036 <mi_page_queue_find_free_ex+0x786>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax
@@@@
-               	divq	%r8
-               	jmp	0x43267f <mi_page_queue_find_free_ex+0x76f>
+               	divq	%rdi
+               	jmp	0x433024 <mi_page_queue_find_free_ex+0x774>
@@@@
-               	divl	%r8d
-               	movq	%r8, %rax
+               	divl	%edi
+               	movq	%rdi, %rax
@@@@
-               	cmpq	%r8, %rax
+               	cmpq	%rdi, %rax
@@@@
-               	subq	%rcx, %r9
-               	movq	%r9, %rsi
-               	cmpl	$67108864, %r8d         # imm = 0x4000000
-               	cmovbq	%r8, %rsi
-               	subq	%rdi, %rbp
+               	subq	%rcx, %r10
+               	movq	%r10, %rsi
+               	cmpl	$67108864, %edi         # imm = 0x4000000
+               	cmovbq	%rdi, %rsi
+               	subq	%r8, %rbp

@@ -32196,12 +32735,18 @@
@@@[(3, 9), (10, 20)]@@@
-               	callq	0x432700 <mi_page_free_list_extend>
-               	addw	%bp, 2(%rbx)
+               	callq	0x4330b0 <mi_page_free_list_extend>
+               	movzwl	2(%rbx), %eax
+               	addl	%ebp, %eax
+               	movw	%ax, 2(%rbx)
@@@@
-               	jne	0x4326dc <mi_page_queue_find_free_ex+0x7cc>
-               	andb	$-2, 7(%rbx)
-               	andb	$1, 7(%rbx)
+               	jne	0x43308a <mi_page_queue_find_free_ex+0x7da>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -32214,66 +32759,68 @@
@@@[(3, 5), (7, 49), (50, 54), (55, 61), (62, 66), (67, 83), (85, 111), (112, 116)]@@@
-               	movq	%rdx, %r9
+               	movq	%rdx, %r8
@@@@
-               	movl	20(%rdi), %r10d
-               	movl	112(%rax), %edx
-               	cmpl	$3, %edx
-               	jne	0x43271e <mi_page_free_list_extend+0x1e>
-               	movq	72(%rax), %r8
-               	jmp	0x43272a <mi_page_free_list_extend+0x2a>
-               	movb	96(%rax), %cl
-               	movl	$1, %r8d
-               	shlq	%cl, %r8
-               	movzbl	(%rdi), %ecx
-               	imulq	%rcx, %r8
-               	addq	%rax, %r8
-               	testq	%rcx, %rcx
-               	jne	0x432773 <mi_page_free_list_extend+0x73>
-               	addq	80(%rax), %r8
-               	cmpl	$1, %edx
-               	ja	0x432773 <mi_page_free_list_extend+0x73>
-               	testl	%r10d, %r10d
-               	je	0x432773 <mi_page_free_list_extend+0x73>
-               	movq	%r8, %rax
+               	movl	20(%rdi), %r9d
+               	movl	112(%rax), %r10d
+               	cmpl	$3, %r10d
+               	jne	0x4330d0 <mi_page_free_list_extend+0x20>
+               	movq	72(%rax), %r11
+               	jmp	0x4330dd <mi_page_free_list_extend+0x2d>
+               	movq	96(%rax), %rcx
+               	movl	$1, %r11d
+               	shlq	%cl, %r11
+               	movb	(%rdi), %cl
+               	movzbl	%cl, %edx
+               	movq	%rdx, %rcx
+               	imulq	%r11, %rcx
+               	addq	%rax, %rcx
+               	testb	%dl, %dl
+               	jne	0x43312a <mi_page_free_list_extend+0x7a>
+               	addq	80(%rax), %rcx
+               	cmpl	$1, %r10d
+               	ja	0x43312a <mi_page_free_list_extend+0x7a>
+               	testl	%r9d, %r9d
+               	je	0x43312a <mi_page_free_list_extend+0x7a>
+               	movq	%rcx, %rax
@@@@
-               	je	0x43275a <mi_page_free_list_extend+0x5a>
-               	movq	%r8, %rax
+               	je	0x433112 <mi_page_free_list_extend+0x62>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r10
-               	jmp	0x432762 <mi_page_free_list_extend+0x62>
-               	movl	%r8d, %eax
+               	divq	%r9
+               	jmp	0x433119 <mi_page_free_list_extend+0x69>
+               	movl	%ecx, %eax
@@@@
-               	divl	%r10d
-               	movq	%r10, %rax
+               	divl	%r9d
+               	movq	%r9, %rax
@@@@
-               	leaq	(%r8,%rax), %rcx
-               	cmpq	%r10, %rax
-               	cmovbq	%rcx, %r8
-               	movzwl	2(%rdi), %r11d
-               	movq	%r11, %rdx
-               	imulq	%rsi, %rdx
-               	leaq	(%r8,%rdx), %r10
-               	leaq	(%r9,%r11), %rax
+               	leaq	(%rcx,%rax), %rdx
+               	cmpq	%r9, %rax
+               	cmovbq	%rdx, %rcx
+               	movzwl	2(%rdi), %r10d
+               	movq	%r10, %r11
+               	imulq	%rsi, %r11
+               	leaq	(%rcx,%r11), %r9
+               	leaq	(%r8,%r10), %rax
@@@@
-               	leaq	(%r8,%rax), %rcx
-               	cmpq	%rax, %rdx
-               	jg	0x4327be <mi_page_free_list_extend+0xbe>
-               	addq	$1, %r11
-               	imulq	%rsi, %r11
-               	addq	%r11, %r8
-               	movq	%r10, %rdx
-               	nopw	(%rax,%rax)
-               	movq	%r8, (%rdx)
-               	addq	%rsi, %rdx
-               	addq	%rsi, %r8
-               	cmpq	%rcx, %rdx
-               	jbe	0x4327b0 <mi_page_free_list_extend+0xb0>
+               	leaq	(%rcx,%rax), %rdx
+               	cmpq	%rax, %r11
+               	jg	0x43316e <mi_page_free_list_extend+0xbe>
+               	addq	$1, %r10
+               	imulq	%rsi, %r10
+               	addq	%r10, %rcx
+               	movq	%r9, %rax
+               	nopl	(%rax)
+               	movq	%rcx, (%rax)
+               	addq	%rsi, %rax
+               	addq	%rsi, %rcx
+               	cmpq	%rdx, %rax
+               	jbe	0x433160 <mi_page_free_list_extend+0xb0>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	%r10, 8(%rdi)
+               	movq	%rax, (%rdx)
+               	movq	%r9, 8(%rdi)

@@ -32285,210 +32832,214 @@
@@@[(3, 6), (10, 16), (17, 19), (20, 22), (38, 40), (52, 53), (57, 58), (79, 89), (90, 94), (97, 99), (111, 113), (150, 156), (160, 164), (205, 209), (216, 222), (244, 256), (285, 289), (293, 298)]@@@
-               	movq	%r8, %r14
+               	movq	%r9, %r14
+               	movq	%r8, %rbx
@@@@
-               	je	0x43286e <mi_segment_reclaim_or_alloc+0x9e>
-               	addq	$-1, 88(%r14)
+               	je	0x43322e <mi_segment_reclaim_or_alloc+0xae>
+               	movq	88(%rbx), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 88(%rbx)
@@@@
-               	movq	%rax, 104(%r14)
+               	movq	%rax, 104(%rbx)
@@@@
-               	movq	112(%r14), %rcx
+               	movq	112(%rbx), %rcx
@@@@
-               	nop
+               	nopl	(%rax)
@@@@
+               	movq	%rsi, 24(%rsp)
@@@@
-               	movq	%rsi, 24(%rsp)
@@@@
-               	ja	0x4328f2 <mi_segment_reclaim_or_alloc+0x122>
-               	movq	293797(%rip), %rdx      # 0x47a480 <abandoned_visited_count>
-               	leal	1(%rax), %edi
-               	andl	$4194303, %edi          # imm = 0x3FFFFF
-               	orq	%rcx, %rdi
+               	ja	0x4332b2 <mi_segment_reclaim_or_alloc+0x132>
+               	movq	293157(%rip), %rdx      # 0x47abc0 <abandoned_visited_count>
+               	leal	1(%rax), %esi
+               	andl	$4194303, %esi          # imm = 0x3FFFFF
+               	orq	%rcx, %rsi
@@@@
-               	cmpxchgq	%rdi, 293584(%rip)      # 0x47a3c0 <abandoned>
-               	je	0x43294c <mi_segment_reclaim_or_alloc+0x17c>
+               	cmpxchgq	%rsi, 292944(%rip)      # 0x47ab00 <abandoned>
+               	je	0x43330c <mi_segment_reclaim_or_alloc+0x18c>
@@@@
-               	movq	%rax, %rbx
+               	movq	%rax, %rsi
@@@@
-               	movq	%rbp, 16(%rbx)
+               	movq	%rbp, 16(%rsi)
@@@@
-               	subq	$1, 293451(%rip)        # 0x47a400 <abandoned_count>
-               	addq	$1, 48(%r15)
+               	subq	$1, 292811(%rip)        # 0x47ab40 <abandoned_count>
+               	movq	48(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 48(%r15)
@@@@
-               	movq	%r14, 40(%rsp)
-               	movq	%r9, 48(%rsp)
+               	movq	%rbx, 40(%rsp)
+               	movq	%r14, 48(%rsp)
@@@@
-               	movq	48(%rsp), %r9
-               	movq	40(%rsp), %r14
+               	movq	48(%rsp), %r14
+               	movq	40(%rsp), %rbx
@@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x42f280 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x42fb30 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x42f280 <mi_segment_reclaim>
-               	movq	%rbx, %r9
-               	jmp	0x432a69 <mi_segment_reclaim_or_alloc+0x299>
-               	movq	293252(%rip), %rax      # 0x47a440 <abandoned_visited>
-               	nopl	(%rax)
+               	movq	%rbx, %r8
+               	callq	0x42fb30 <mi_segment_reclaim>
+               	jmp	0x43342a <mi_segment_reclaim_or_alloc+0x2aa>
+               	movq	292617(%rip), %rax      # 0x47ab80 <abandoned_visited>
+               	nopw	(%rax,%rax)
@@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
-               	movq	%r14, %r8
-               	callq	0x432e00 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x4337e0 <mi_segment_init>

@@ -32502,24 +33053,23 @@
@@@[(3, 9), (20, 25), (26, 30)]@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x42f280 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x42fb30 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	callq	0x432e00 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x4337e0 <mi_segment_init>
@@@@
-               	jmp	0x432b32 <mi_segment_reclaim_or_alloc+0x362>
-               	nopw	(%rax,%rax)
+               	jmp	0x433503 <mi_segment_reclaim_or_alloc+0x383>
+               	nopl	(%rax)

@@ -32530,73 +33080,76 @@
@@@[(22, 26), (79, 83), (86, 91), (92, 96)]@@@
-               	addq	$-1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x432c32 <mi_segment_find_free+0xa2>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x433609 <mi_segment_find_free+0xa9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x432c93 <mi_segment_find_free+0x103>
+               	testb	%al, %al
+               	jne	0x43366b <mi_segment_find_free+0x10b>

@@ -32604,95 +33157,98 @@
@@@[(18, 22), (40, 44), (47, 52), (53, 57), (85, 93)]@@@
-               	addq	$1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x432d15 <mi_segment_find_free+0x185>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x4336f3 <mi_segment_find_free+0x193>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x432d31 <mi_segment_find_free+0x1a1>
+               	testb	%al, %al
+               	jne	0x433711 <mi_segment_find_free+0x1b1>
@@@@
-               	jmp	0x432de1 <mi_segment_find_free+0x251>
-               	movq	56(%r15), %rax
-               	cmpq	64(%r15), %rax
-               	jne	0x432de1 <mi_segment_find_free+0x251>
+               	jmp	0x4337c1 <mi_segment_find_free+0x261>
+               	movq	64(%r15), %rax
+               	cmpq	%rax, 56(%r15)
+               	jne	0x4337c1 <mi_segment_find_free+0x261>

@@ -32719,406 +33275,400 @@
@@@[(3, 12), (14, 15), (16, 18), (31, 39), (40, 47), (56, 59), (60, 62), (63, 84), (85, 116), (120, 126), (127, 132), (133, 137), (141, 147), (155, 165), (168, 181), (191, 198), (202, 207), (215, 221), (227, 232), (237, 242), (244, 264), (267, 270), (271, 277), (279, 281), (285, 287), (291, 297), (298, 320), (321, 335), (339, 345), (353, 363), (365, 373), (377, 388), (389, 398), (399, 411), (413, 426), (431, 443), (445, 451), (456, 466), (471, 475), (476, 479), (481, 489), (490, 500), (504, 518), (519, 525), (527, 533), (534, 538), (539, 542), (543, 546), (547, 548), (549, 555), (556, 564), (566, 570), (571, 577), (582, 586), (587, 594), (595, 599), (600, 608), (609, 628), (629, 637), (645, 647), (648, 650), (651, 655)]@@@
-               	movq	%r9, 32(%rsp)
-               	movq	%r8, %rbp
-               	movl	%edx, %r12d
-               	movq	%rdi, %r14
+               	movq	%r9, 56(%rsp)
+               	movq	%r8, %r12
+               	movq	%rcx, %r14
+               	movl	%edx, %r13d
+               	movq	%rdi, %rbp
@@@@
-               	movq	%rcx, 112(%rsp)
@@@@
-               	cmpl	$3, %r12d
+               	cmpl	$3, %r13d
@@@@
-               	cmpl	$1, %r12d
-               	movq	%rbx, 72(%rsp)
-               	ja	0x432e9d <mi_segment_init+0x9d>
-               	movq	56(%rbp), %rbx
+               	cmpl	$1, %r13d
+               	movq	%rbx, 80(%rsp)
+               	ja	0x433875 <mi_segment_init+0x95>
+               	movq	56(%r12), %rbx
@@@@
-               	callq	0x42a2d0 <mi_option_get>
-               	xorl	%r11d, %r11d
-               	movl	$0, %ecx
-               	movl	$0, %r13d
+               	callq	0x42aab0 <mi_option_get>
+               	xorl	%ecx, %ecx
+               	movl	$0, %edx
@@@@
-               	setne	%r13b
-               	movb	$1, %r11b
+               	setne	%dl
@@@@
-               	movb	%r13b, 9(%rsp)
+               	movb	%dl, 9(%rsp)
@@@@
-               	testq	%r14, %r14
-               	je	0x432fe5 <mi_segment_init+0x1e5>
-               	cmpl	$1, %r12d
-               	ja	0x432f0f <mi_segment_init+0x10f>
-               	cmpl	%r12d, 112(%r14)
-               	jne	0x432f0f <mi_segment_init+0x10f>
-               	cmpq	%rbx, 72(%r14)
-               	jne	0x432f0f <mi_segment_init+0x10f>
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
+               	testq	%rbp, %rbp
+               	je	0x4339b6 <mi_segment_init+0x1d6>
+               	movq	%r14, 96(%rsp)
+               	cmpl	$1, %r13d
+               	ja	0x4338dc <mi_segment_init+0xfc>
+               	cmpl	%r13d, 112(%rbp)
+               	jne	0x4338dc <mi_segment_init+0xfc>
+               	cmpq	%rbx, 72(%rbp)
+               	jne	0x4338dc <mi_segment_init+0xfc>
+               	movq	$0, 16(%rbp)
+               	leaq	24(%rbp), %r14
@@@@
-               	movups	%xmm0, 104(%r14)
-               	movups	%xmm0, 88(%r14)
-               	movups	%xmm0, 72(%r14)
-               	movups	%xmm0, 56(%r14)
-               	movups	%xmm0, 40(%r14)
-               	movups	%xmm0, 24(%r14)
-               	movq	64(%rsp), %r13
-               	jmp	0x4330f6 <mi_segment_init+0x2f6>
-               	movl	%r12d, 52(%rsp)
-               	movq	%rbp, %r12
-               	cmpq	$0, 64(%r14)
-               	je	0x433028 <mi_segment_init+0x228>
-               	leaq	121(%r14), %rbx
-               	xorl	%ebp, %ebp
-               	jmp	0x432f65 <mi_segment_init+0x165>
-               	nopl	(%rax)
+               	movups	%xmm0, 104(%rbp)
+               	movups	%xmm0, 88(%rbp)
+               	movups	%xmm0, 72(%rbp)
+               	movups	%xmm0, 56(%rbp)
+               	movups	%xmm0, 40(%rbp)
+               	movups	%xmm0, 24(%rbp)
+               	jmp	0x433acc <mi_segment_init+0x2ec>
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, %r14
+               	cmpq	$0, 64(%rbp)
+               	je	0x433a0d <mi_segment_init+0x22d>
+               	movb	9(%rsp), %r13b
+               	leaq	121(%rbp), %rbx
+               	xorl	%r12d, %r12d
+               	jmp	0x433935 <mi_segment_init+0x155>
@@@@
-               	je	0x432f6f <mi_segment_init+0x16f>
-               	andb	$-3, (%rbx)
+               	je	0x43393f <mi_segment_init+0x15f>
+               	movzbl	(%rbx), %eax
+               	andb	$-3, %al
+               	movb	%al, (%rbx)
@@@@
-               	addq	$1, %rbp
-               	movq	64(%r14), %rax
+               	nopl	(%rax)
+               	addq	$1, %r12
+               	movq	64(%rbp), %rax
@@@@
-               	cmpq	%rax, %rbp
-               	jae	0x43302a <mi_segment_init+0x22a>
+               	cmpq	%rax, %r12
+               	jae	0x433a0f <mi_segment_init+0x22f>
@@@@
-               	je	0x432f30 <mi_segment_init+0x130>
-               	cmpb	$0, 8(%r14)
-               	jne	0x432f50 <mi_segment_init+0x150>
+               	je	0x4338fd <mi_segment_init+0x11d>
+               	cmpb	$0, 8(%rbp)
+               	jne	0x433920 <mi_segment_init+0x140>
@@@@
-               	cmpl	$3, 112(%r14)
-               	jne	0x432f94 <mi_segment_init+0x194>
-               	movq	72(%r14), %rsi
-               	jmp	0x432fa1 <mi_segment_init+0x1a1>
-               	movzbl	96(%r14), %ecx
+               	cmpl	$3, 112(%rbp)
+               	jne	0x433962 <mi_segment_init+0x182>
+               	movq	72(%rbp), %rsi
+               	jmp	0x43396e <mi_segment_init+0x18e>
+               	movq	96(%rbp), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
-               	addq	%r14, %rdi
-               	testq	%rax, %rax
-               	jne	0x432fbe <mi_segment_init+0x1be>
-               	movq	80(%r14), %rax
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
+               	addq	%rbp, %rdi
+               	testb	%al, %al
+               	jne	0x43398d <mi_segment_init+0x1ad>
+               	movq	80(%rbp), %rax
@@@@
-               	je	0x432f50 <mi_segment_init+0x150>
-               	orb	$8, (%rbx)
-               	jmp	0x432f50 <mi_segment_init+0x150>
+               	je	0x433920 <mi_segment_init+0x140>
+               	movzbl	(%rbx), %eax
+               	orb	$8, %al
+               	jmp	0x433911 <mi_segment_init+0x131>
@@@@
-               	je	0x433a4b <mi_segment_init+0xc4b>
-               	movq	%rbp, 104(%rsp)
-               	movq	186376(%rip), %rcx      # 0x460810 <os_page_size>
+               	je	0x434401 <mi_segment_init+0xc21>
+               	movq	185764(%rip), %rcx      # 0x460f78 <os_page_size>
@@@@
-               	jmp	0x433193 <mi_segment_init+0x393>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	jbe	0x433b84 <mi_segment_init+0x3a4>
+               	jmp	0x434297 <mi_segment_init+0xab7>
@@@@
-               	movq	%r14, %rdi
-               	movq	64(%rsp), %r13
-               	movq	%r13, %rsi
+               	movq	%rbp, %rdi
+               	movq	88(%rsp), %rsi
@@@@
-               	movq	%r12, %rbp
-               	je	0x43305f <mi_segment_init+0x25f>
+               	movq	%r14, %r12
+               	movl	24(%rsp), %r13d
+               	je	0x433a46 <mi_segment_init+0x266>
@@@@
-               	jne	0x433070 <mi_segment_init+0x270>
-               	jmp	0x433a4b <mi_segment_init+0xc4b>
-               	movq	%r12, %rbp
-               	movq	64(%rsp), %r13
-               	movq	%rbp, %r12
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
-               	leaq	-24(%r13), %rdx
-               	xorl	%ebp, %ebp
-               	movq	%rbx, %rdi
+               	jne	0x433a57 <mi_segment_init+0x277>
+               	jmp	0x434401 <mi_segment_init+0xc21>
+               	movq	%r14, %r12
+               	movl	24(%rsp), %r13d
+               	movq	$0, 16(%rbp)
+               	leaq	24(%rbp), %r14
+               	movq	88(%rsp), %rax
+               	leaq	-24(%rax), %rdx
+               	xorl	%ebx, %ebx
+               	movq	%r14, %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	shlq	$6, %rbp
-               	movb	%cl, 120(%r14,%rbp)
-               	movzbl	121(%r14,%rbp), %ecx
+               	shlq	$6, %rbx
+               	movb	%cl, 120(%rbp,%rbx)
+               	movzbl	121(%rbp,%rbx), %ecx
@@@@
-               	movb	%dl, 121(%r14,%rbp)
+               	movb	%dl, 121(%rbp,%rbx)
@@@@
-               	movb	%cl, 121(%r14,%rbp)
+               	movb	%cl, 121(%rbp,%rbx)
@@@@
-               	movb	%cl, 121(%r14,%rbp)
-               	movzbl	%al, %ebp
-               	movl	%ebp, %eax
+               	movb	%cl, 121(%rbp,%rbx)
+               	movzbl	%al, %ebx
+               	movl	%ebx, %eax
@@@@
-               	cmpq	%rbp, %r15
-               	ja	0x4330a0 <mi_segment_init+0x2a0>
-               	movl	52(%rsp), %eax
-               	movq	%r12, %rbp
-               	movl	%eax, %r12d
-               	movl	%r12d, 112(%r14)
-               	movq	%r15, 64(%r14)
-               	movq	112(%rsp), %rax
-               	movq	%rax, 96(%r14)
-               	movq	72(%rsp), %rax
-               	movq	%rax, 72(%r14)
-               	movq	%r13, 80(%r14)
+               	cmpq	%rbx, %r15
+               	ja	0x433a80 <mi_segment_init+0x2a0>
+               	movq	80(%rsp), %rbx
+               	movl	%r13d, 112(%rbp)
+               	movq	%r15, 64(%rbp)
+               	movq	96(%rsp), %rax
+               	movq	%rax, 96(%rbp)
+               	movq	%rbx, 72(%rbp)
+               	movq	88(%rsp), %rax
+               	movq	%rax, 80(%rbp)
@@@@
-               	xchgq	%rax, 104(%r14)
-               	movq	185128(%rip), %rax      # 0x460450 <_mi_heap_main+0xb28>
-               	xorq	%r14, %rax
-               	movq	%rax, 88(%r14)
-               	cmpl	$1, %r12d
-               	ja	0x433a4e <mi_segment_init+0xc4e>
-               	movl	112(%r14), %eax
+               	xchgq	%rax, 104(%rbp)
+               	movq	184506(%rip), %rax      # 0x460bb8 <_mi_heap_main+0xb28>
+               	xorq	%rbp, %rax
+               	movq	%rax, 88(%rbp)
+               	cmpl	$1, %r13d
+               	ja	0x434403 <mi_segment_init+0xc23>
+               	movl	112(%rbp), %eax
@@@@
-               	je	0x433164 <mi_segment_init+0x364>
-               	xorl	%ebp, %ebp
-               	jmp	0x433164 <mi_segment_init+0x364>
+               	je	0x433b3a <mi_segment_init+0x35a>
+               	xorl	%r12d, %r12d
+               	jmp	0x433b3a <mi_segment_init+0x35a>
@@@@
-               	jmp	0x433190 <mi_segment_init+0x390>
-               	addq	$16, %rbp
-               	movq	$0, (%rbx)
-               	movq	8(%rbp), %rax
-               	movq	%rax, 32(%r14)
+               	jmp	0x433b68 <mi_segment_init+0x388>
+               	addq	$16, %r12
+               	movq	$0, (%r14)
+               	movq	8(%r12), %rax
+               	movq	%rax, 32(%rbp)
@@@@
-               	cmoveq	%rbp, %rcx
-               	movq	%r14, (%rcx)
-               	movq	%r14, 8(%rbp)
-               	jmp	0x433a4e <mi_segment_init+0xc4e>
+               	cmoveq	%r12, %rcx
+               	movq	%rbp, (%rcx)
+               	movq	%rbp, 8(%r12)
+               	jmp	0x434403 <mi_segment_init+0xc23>
@@@@
-               	leaq	4194303(%rbp), %rax
-               	movq	%rax, 80(%rsp)
-               	cmpq	$71303167, %rax         # imm = 0x43FFFFF
-               	movl	%r12d, 52(%rsp)
-               	ja	0x4338d9 <mi_segment_init+0xad9>
-               	movq	225633(%rip), %rax      # 0x46a318 <_mi_numa_node_count>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	ja	0x434297 <mi_segment_init+0xab7>
+               	movq	224973(%rip), %rax      # 0x46aa58 <_mi_numa_node_count>
@@@@
-               	je	0x4333c7 <mi_segment_init+0x5c7>
-               	movq	80(%rsp), %rsi
-               	shrq	$22, %rsi
+               	movq	%rcx, 32(%rsp)
+               	je	0x434476 <mi_segment_init+0xc96>
+               	movq	%rbp, 104(%rsp)
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, 72(%rsp)
+               	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
@@@@
-               	movq	%rsi, 24(%rsp)
-               	movq	%rbp, 96(%rsp)
-               	jae	0x4331f6 <mi_segment_init+0x3f6>
-               	movq	225680(%rip), %r9       # 0x46a370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x4333fa <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
-               	movq	(%rax), %rbp
-               	jmp	0x4332ce <mi_segment_init+0x4ce>
-               	movq	225563(%rip), %rax      # 0x46a318 <_mi_numa_node_count>
+               	jb	0x433bc8 <mi_segment_init+0x3e8>
+               	movq	224925(%rip), %rax      # 0x46aa58 <_mi_numa_node_count>
@@@@
-               	jne	0x4333d7 <mi_segment_init+0x5d7>
-               	movq	225631(%rip), %r9       # 0x46a370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x4333fa <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
+               	jne	0x434485 <mi_segment_init+0xca5>
+               	shrq	$22, %rcx
+               	movq	%rcx, 40(%rsp)
+               	movb	10(%rsp), %r9b
+               	movq	224979(%rip), %r12      # 0x46aab0 <regions_count>
+               	testq	%r12, %r12
+               	je	0x433d78 <mi_segment_init+0x598>
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	225612(%rip), %r8       # 0x46a380 <regions>
-               	notb	%r11b
-               	movq	%r9, %r14
-               	movl	%r11d, 92(%rsp)
-               	movq	%r9, 56(%rsp)
-               	movl	%r10d, 88(%rsp)
-               	jmp	0x43325e <mi_segment_init+0x45e>
+               	leaq	224960(%rip), %r8       # 0x46aac0 <regions>
+               	movq	%r12, %r13
+               	movq	%r15, 112(%rsp)
+               	movq	%r12, 64(%rsp)
+               	jmp	0x433c1e <mi_segment_init+0x43e>
@@@@
-               	addq	$-1, %r14
-               	je	0x4333fa <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r13
+               	je	0x433d78 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	je	0x433250 <mi_segment_init+0x450>
-               	movl	%eax, %edx
-               	shrl	$8, %edx
-               	andl	$1, %edx
+               	je	0x433c10 <mi_segment_init+0x430>
+               	testb	%r9b, %r9b
+               	sete	%dl
+               	movl	%eax, %esi
+               	shrl	$8, %esi
+               	andl	$1, %esi
@@@@
-               	testb	%dl, %r11b
-               	jne	0x433250 <mi_segment_init+0x450>
+               	testb	%sil, %dl
+               	jne	0x433c10 <mi_segment_init+0x430>
@@@@
-               	je	0x433250 <mi_segment_init+0x450>
+               	je	0x433c10 <mi_segment_init+0x430>
+               	movl	%r10d, %r12d
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r12
-               	callq	0x433bf0 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r14
+               	movl	%r9d, %r15d
+               	callq	0x4345c0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movl	88(%rsp), %r10d
-               	movq	56(%rsp), %r9
-               	movl	92(%rsp), %r11d
-               	movq	%r12, %r8
-               	movq	24(%rsp), %rsi
+               	movl	%r15d, %r9d
+               	movl	%r12d, %r10d
+               	movq	64(%rsp), %r12
+               	movq	112(%rsp), %r15
+               	movq	%r14, %r8
@@@@
-               	jmp	0x4333ba <mi_segment_init+0x5ba>
-               	testb	%r11b, %r11b
-               	movq	%r9, 56(%rsp)
-               	je	0x433345 <mi_segment_init+0x545>
-               	leaq	225437(%rip), %r8       # 0x46a380 <regions>
-               	movq	%r9, %r12
-               	jmp	0x4332fe <mi_segment_init+0x4fe>
-               	nopl	(%rax,%rax)
+               	jmp	0x433d61 <mi_segment_init+0x581>
+               	testb	%r9b, %r9b
+               	je	0x433d01 <mi_segment_init+0x521>
+               	leaq	224789(%rip), %r8       # 0x46aac0 <regions>
+               	movq	%r12, %r14
+               	jmp	0x433cbe <mi_segment_init+0x4de>
@@@@
-               	addq	$-1, %r12
-               	je	0x4333fa <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r14
+               	je	0x433d78 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r14
-               	shlq	$6, %r14
-               	movq	(%r14,%r8), %rax
+               	movq	%rbp, %r13
+               	shlq	$6, %r13
+               	movq	(%r13,%r8), %rax
@@@@
-               	je	0x4332f0 <mi_segment_init+0x4f0>
-               	leaq	(%r14,%r8), %rdi
+               	je	0x433cb0 <mi_segment_init+0x4d0>
+               	leaq	(%r8,%r13), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
@@@@
-               	callq	0x433bf0 <_mi_bitmap_try_find_claim_field>
-               	movq	56(%rsp), %r9
+               	callq	0x4345c0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	24(%rsp), %rsi
@@@@
-               	je	0x4332f0 <mi_segment_init+0x4f0>
-               	addq	%r14, %r8
-               	jmp	0x4333ba <mi_segment_init+0x5ba>
+               	je	0x433cb0 <mi_segment_init+0x4d0>
+               	addq	%r13, %r8
+               	jmp	0x433d61 <mi_segment_init+0x581>
@@@@
-               	leaq	225330(%rip), %r8       # 0x46a380 <regions>
-               	movq	%r9, %rbx
-               	jmp	0x43336e <mi_segment_init+0x56e>
-               	nopw	%cs:(%rax,%rax)
+               	leaq	224694(%rip), %r8       # 0x46aac0 <regions>
+               	movq	%r12, %rbx
+               	jmp	0x433d1a <mi_segment_init+0x53a>
+               	nop
@@@@
-               	je	0x4333fa <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	je	0x433d78 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r12
-               	shlq	$6, %r12
-               	movq	(%r12,%r8), %rax
+               	movq	%rbp, %r14
+               	shlq	$6, %r14
+               	movq	(%r14,%r8), %rax
@@@@
-               	jne	0x433360 <mi_segment_init+0x560>
-               	leaq	(%r12,%r8), %rdi
+               	jne	0x433d10 <mi_segment_init+0x530>
+               	leaq	(%r14,%r8), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r14
-               	callq	0x433bf0 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r13
+               	callq	0x4345c0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	56(%rsp), %r9
-               	movq	%r14, %r8
-               	movq	24(%rsp), %rsi
+               	movq	%r13, %r8
@@@@
-               	je	0x433360 <mi_segment_init+0x560>
-               	addq	%r12, %r8
-               	movq	32(%rsp), %rax
+               	je	0x433d10 <mi_segment_init+0x530>
+               	addq	%r14, %r8
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	movq	56(%rsp), %rax
@@@@
-               	jmp	0x4335a4 <mi_segment_init+0x7a4>
-               	movl	%r11d, %ebx
-               	callq	0x42b680 <_mi_os_numa_node_count_get>
-               	movl	%ebx, %r11d
-               	jmp	0x4331c0 <mi_segment_init+0x3c0>
-               	movl	%r11d, %ebx
-               	callq	0x433ad0 <_mi_os_numa_node_get>
-               	movl	%ebx, %r11d
-               	movq	24(%rsp), %rsi
-               	movl	%eax, %r10d
-               	movq	225151(%rip), %r9       # 0x46a370 <regions_count>
-               	testq	%r9, %r9
-               	jne	0x43321a <mi_segment_init+0x41a>
-               	movb	10(%rsp), %bl
-               	movq	225131(%rip), %rax      # 0x46a370 <regions_count>
+               	jmp	0x433f31 <mi_segment_init+0x751>
+               	movb	9(%rsp), %bl
+               	movb	10(%rsp), %bpl
+               	movq	224552(%rip), %rax      # 0x46aab0 <regions_count>
@@@@
-               	ja	0x4338be <mi_segment_init+0xabe>
-               	testb	%r13b, %r13b
-               	je	0x433428 <mi_segment_init+0x628>
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	ja	0x43427c <mi_segment_init+0xa9c>
+               	testb	%bl, %bl
+               	je	0x433db4 <mi_segment_init+0x5d4>
@@@@
-               	testb	%bl, %bl
+               	testb	%bpl, %bpl
@@@@
+               	testb	%bl, %bl
+               	setne	%dl
@@@@
-               	andb	%cl, %r13b
-               	movb	%r13b, 15(%rsp)
+               	andb	%cl, %dl
+               	movb	%dl, 15(%rsp)

@@ -33128,70 +33678,70 @@
@@@[(19, 23), (32, 37), (38, 41), (42, 44), (45, 49), (50, 54), (55, 62), (63, 69), (70, 80), (81, 82), (89, 99)]@@@
-               	movzbl	12(%rsp), %ecx
+               	xorl	%ecx, %ecx
+               	cmpb	$0, 12(%rsp)
+               	setne	%cl
@@@@
-               	callq	0x42b330 <_mi_warning_message>
-               	movq	24(%rsp), %rsi
-               	jmp	0x43359c <mi_segment_init+0x79c>
+               	callq	0x42bb10 <_mi_warning_message>
+               	jmp	0x433f29 <mi_segment_init+0x749>
@@@@
-               	movq	24(%rsp), %rsi
-               	jmp	0x43359c <mi_segment_init+0x79c>
+               	jmp	0x433f29 <mi_segment_init+0x749>
@@@@
-               	leaq	224925(%rip), %rbx      # 0x46a380 <regions>
+               	leaq	224338(%rip), %rsi      # 0x46aac0 <regions>
@@@@
-               	xchgq	%rcx, 48(%rdx,%rbx)
-               	leaq	(%rdx,%rbx), %rdi
+               	xchgq	%rcx, 48(%rdx,%rsi)
+               	leaq	(%rdx,%rsi), %rdi
@@@@
-               	movq	$0, 16(%rdx,%rbx)
-               	movzbl	14(%rsp), %ecx
+               	movq	$0, 16(%rdx,%rsi)
+               	movsbq	14(%rsp), %rcx
@@@@
-               	movq	%rcx, 24(%rdx,%rbx)
-               	xorl	%ecx, %ecx
-               	subb	12(%rsp), %cl
+               	movq	%rcx, 24(%rdx,%rsi)
+               	movb	12(%rsp), %cl
+               	andb	$1, %cl
+               	negb	%cl
@@@@
-               	movq	%rcx, 32(%rdx,%rbx)
-               	movq	$0, 40(%rdx,%rbx)
-               	movq	$0, 40(%rsp)
+               	movq	%rcx, 32(%rdx,%rsi)
+               	movq	$0, 40(%rdx,%rsi)
+               	movq	$0, 48(%rsp)
@@@@
-               	cmpq	$268435455, 80(%rsp)    # imm = 0xFFFFFFF
-               	movq	24(%rsp), %rsi
-               	ja	0x43355c <mi_segment_init+0x75c>
-               	testq	%rsi, %rsi
-               	je	0x43355a <mi_segment_init+0x75a>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x433ee9 <mi_segment_init+0x709>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x433ee7 <mi_segment_init+0x707>
@@@@
-               	movl	%esi, %ecx
@@@@
-               	leaq	(%rbx,%rdx), %r8
-               	movq	%rax, 8(%rdx,%rbx)
-               	movzbl	15(%rsp), %eax
-               	movzbl	13(%rsp), %ebx
-               	addq	%rbx, %rbx
+               	leaq	(%rsi,%rdx), %r8
+               	movq	%rax, 8(%rdx,%rsi)
+               	movzbl	13(%rsp), %eax
+               	addq	%rax, %rax
+               	movzbl	15(%rsp), %ebx

@@ -33199,35 +33749,33 @@
@@@[(7, 13), (14, 24), (26, 27), (34, 39), (42, 46)]@@@
-               	movq	40(%rsp), %rax
-               	movq	%rax, %rbp
-               	shrq	$6, %rbp
+               	movq	48(%rsp), %rax
+               	movq	%rax, %rsi
+               	shrq	$6, %rsi
@@@@
-               	movq	80(%rsp), %r10
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x4335ec <mi_segment_init+0x7ec>
-               	testq	%rsi, %rsi
-               	je	0x4335ea <mi_segment_init+0x7ea>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x433f79 <mi_segment_init+0x799>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x433f77 <mi_segment_init+0x797>
@@@@
-               	movl	%esi, %ecx
@@@@
-               	movq	24(%r8,%rbp,8), %rax
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	movq	24(%r8,%rsi,8), %rax
+               	nop
@@@@
-               	cmpxchgq	%rcx, 24(%r8,%rbp,8)
-               	jne	0x433600 <mi_segment_init+0x800>
+               	cmpxchgq	%rcx, 24(%r8,%rsi,8)
+               	jne	0x433f80 <mi_segment_init+0x7a0>

@@ -33237,86 +33785,89 @@
@@@[(3, 13), (14, 18), (19, 32), (33, 40), (41, 45), (46, 58), (60, 61), (65, 70), (74, 76), (78, 92), (93, 95), (97, 99), (101, 104), (105, 108), (112, 127), (128, 134), (135, 139)]@@@
-               	movq	40(%rsp), %rbx
-               	movl	%ebx, %r14d
-               	andl	$63, %r14d
-               	shlq	$22, %r14
-               	addq	%r9, %r14
+               	movq	48(%rsp), %rdi
+               	movl	%edi, %ebp
+               	andl	$63, %ebp
+               	shlq	$22, %rbp
+               	addq	%r9, %rbp
@@@@
-               	je	0x433680 <mi_segment_init+0x880>
-               	movq	%rbx, %rdx
+               	je	0x434003 <mi_segment_init+0x823>
+               	movq	%rdi, %rdx
@@@@
-               	movq	$-1, %rdi
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x4336bd <mi_segment_init+0x8bd>
-               	testq	%rsi, %rsi
-               	je	0x4336bb <mi_segment_init+0x8bb>
-               	movl	%ebx, %eax
+               	movq	$-1, %rsi
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x43404d <mi_segment_init+0x86d>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43404b <mi_segment_init+0x86b>
+               	movl	%edi, %eax
@@@@
-               	movq	$-1, %rdi
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	movq	$-1, %rsi
+               	shlq	%cl, %rsi
+               	notq	%rsi
@@@@
-               	shlq	%cl, %rdi
-               	jmp	0x4336bd <mi_segment_init+0x8bd>
+               	shlq	%cl, %rsi
+               	jmp	0x43404d <mi_segment_init+0x86d>
@@@@
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x433785 <mi_segment_init+0x985>
-               	testq	%rsi, %rsi
-               	je	0x433783 <mi_segment_init+0x983>
-               	movl	%ebx, %eax
+               	movq	32(%rsp), %rbx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x434126 <mi_segment_init+0x946>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x434124 <mi_segment_init+0x944>
+               	movl	%edi, %eax
@@@@
-               	movl	%esi, %ecx
@@@@
-               	jmp	0x433785 <mi_segment_init+0x985>
-               	xorl	%edi, %edi
+               	movq	32(%rsp), %rbx
+               	jmp	0x434126 <mi_segment_init+0x946>
+               	xorl	%esi, %esi
@@@@
-               	orq	%rdi, %rcx
+               	orq	%rsi, %rcx
@@@@
-               	jne	0x4336d0 <mi_segment_init+0x8d0>
-               	andq	%rdi, %rax
-               	cmpq	%rdi, %rax
-               	je	0x43379c <mi_segment_init+0x99c>
-               	movq	%r9, 32(%rsp)
-               	movq	%r8, %r13
+               	jne	0x434060 <mi_segment_init+0x880>
+               	andq	%rsi, %rax
+               	cmpq	%rsi, %rax
+               	movq	32(%rsp), %rbx
+               	je	0x43413d <mi_segment_init+0x95d>
+               	movq	%rdi, 64(%rsp)
+               	movq	%r9, 56(%rsp)
+               	movq	%r8, 24(%rsp)
@@@@
-               	movq	%r10, %rsi
+               	movq	%rbx, %rsi
@@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	movq	%r10, %rbp
-               	callq	0x42d120 <mi_os_commitx>
+               	callq	0x42d950 <mi_os_commitx>
@@@@
-               	je	0x43373b <mi_segment_init+0x93b>
-               	movq	%rbp, %r10
+               	je	0x4340d8 <mi_segment_init+0x8f8>
@@@@
-               	movq	24(%rsp), %rsi
-               	movq	%r13, %r8
-               	movq	32(%rsp), %r9
-               	jmp	0x43379c <mi_segment_init+0x99c>
-               	movq	40(%rsp), %rdx
-               	cmpq	$268435455, %rbp        # imm = 0xFFFFFFF
-               	jbe	0x433753 <mi_segment_init+0x953>
+               	movq	32(%rsp), %rbx
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43413d <mi_segment_init+0x95d>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x4340f2 <mi_segment_init+0x912>
@@@@
-               	movq	%r13, %rbp
-               	jmp	0x4338b4 <mi_segment_init+0xab4>
-               	movq	24(%rsp), %rcx
+               	movq	24(%rsp), %rdi
+               	jmp	0x434272 <mi_segment_init+0xa92>
+               	movq	40(%rsp), %rcx
@@@@
-               	movq	%r13, %rbp
-               	je	0x4338ad <mi_segment_init+0xaad>
+               	movq	24(%rsp), %rdi
+               	je	0x43426b <mi_segment_init+0xa8b>

@@ -33325,169 +33876,168 @@
@@@[(6, 8), (13, 33), (34, 41), (42, 81), (82, 90), (91, 93), (94, 101), (102, 104), (105, 111), (115, 122), (123, 136), (146, 148), (156, 162), (174, 178), (181, 186), (188, 193), (195, 199), (213, 215), (218, 226), (244, 246)]@@@
-               	movq	%rbx, %rax
+               	movq	%rdi, %rax
@@@@
-               	leaq	40(%r8), %rdx
-               	movq	40(%rsp), %rbp
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x4337c7 <mi_segment_init+0x9c7>
-               	shrq	$6, %rbp
-               	movq	(%rdx,%rbp,8), %rax
-               	testq	%rax, %rax
-               	je	0x433891 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	xorl	%edi, %edi
-               	jmp	0x433825 <mi_segment_init+0xa25>
-               	movl	%ebp, %eax
+               	movq	48(%rsp), %rdx
+               	movq	$-1, %rsi
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x43417c <mi_segment_init+0x99c>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43417a <mi_segment_init+0x99a>
+               	movl	%edx, %eax
@@@@
-               	movq	$-1, %rdi
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	movq	$-1, %rsi
+               	shlq	%cl, %rsi
+               	notq	%rsi
@@@@
-               	shlq	%cl, %rdi
-               	testq	%rsi, %rsi
-               	cmoveq	%rsi, %rdi
-               	shrq	$6, %rbp
-               	movq	(%rdx,%rbp,8), %rcx
-               	testq	%rdi, %rcx
-               	je	0x433891 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x433809 <mi_segment_init+0xa09>
-               	xorl	%edi, %edi
-               	jmp	0x433825 <mi_segment_init+0xa25>
-               	movq	$-1, %rdi
-               	testq	%rsi, %rsi
-               	je	0x433825 <mi_segment_init+0xa25>
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	shlq	%cl, %rsi
+               	movq	32(%rsp), %rbx
+               	jmp	0x43417c <mi_segment_init+0x99c>
+               	xorl	%esi, %esi
+               	shrq	$6, %rdx
+               	movq	40(%r8,%rdx,8), %rax
+               	testq	%rsi, %rax
+               	je	0x43424f <mi_segment_init+0xa6f>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x4341a0 <mi_segment_init+0x9c0>
+               	xorl	%esi, %esi
+               	jmp	0x4341d2 <mi_segment_init+0x9f2>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4341cb <mi_segment_init+0x9eb>
+               	movl	%edx, %eax
+               	andl	$63, %eax
+               	movq	$-1, %rsi
+               	shlq	%cl, %rsi
+               	notq	%rsi
@@@@
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	shlq	%cl, %rsi
+               	movq	32(%rsp), %rbx
+               	notq	%rsi
+               	jmp	0x4341d2 <mi_segment_init+0x9f2>
+               	movq	$-1, %rsi
+               	shrq	$6, %rdx
@@@@
-               	andq	%rdi, (%rdx)
+               	andq	%rsi, 40(%r8,%rdx,8)
@@@@
-               	je	0x433866 <mi_segment_init+0xa66>
-               	movq	%r9, %r13
-               	movq	%r8, %rbp
+               	movq	%r9, 56(%rsp)
+               	movq	%rdi, 64(%rsp)
+               	je	0x43422b <mi_segment_init+0xa4b>
+               	movq	%r8, 24(%rsp)
@@@@
-               	andq	$-4194304, %r10         # imm = 0xFFC00000
+               	andq	$-4194304, %rbx         # imm = 0xFFC00000
@@@@
-               	movq	%r14, %rdi
-               	movq	%r10, %rsi
-               	callq	0x433e90 <_mi_os_unreset>
+               	movq	%rbp, %rdi
+               	movq	%rbx, %rsi
+               	callq	0x434860 <_mi_os_unreset>
@@@@
-               	movq	%rbp, %r8
-               	movq	%r13, %r9
-               	jmp	0x433891 <mi_segment_init+0xa91>
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43424f <mi_segment_init+0xa6f>
@@@@
-               	movq	%rbx, 32(%rsp)
-               	movq	%r8, %r13
-               	movq	%r9, %rbp
-               	movq	%r10, %rbx
-               	callq	0x42a2d0 <mi_option_get>
-               	movq	%rbx, %r10
-               	movq	%rbp, %r9
-               	movq	%r13, %r8
+               	movq	%r8, %rbx
+               	callq	0x42aab0 <mi_option_get>
+               	movq	64(%rsp), %rdi
+               	movq	56(%rsp), %r9
+               	movq	%rbx, %r8
@@@@
-               	addq	%rbx, %r8
+               	addq	%rdi, %r8
@@@@
-               	andq	%rsi, 16(%rbp,%rdx,8)
-               	leaq	67323(%rip), %rdi       # 0x443fc0 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
-               	movq	96(%rsp), %rbp
+               	andq	%rsi, 16(%rdi,%rdx,8)
+               	leaq	68477(%rip), %rdi       # 0x444e00 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
+               	movq	104(%rsp), %rbp
@@@@
-               	callq	0x433cb0 <_mi_arena_alloc_aligned>
-               	movq	%rax, %r14
+               	callq	0x434680 <_mi_arena_alloc_aligned>
+               	movq	%rax, %rbp
@@@@
-               	testq	%r14, %r14
-               	movq	104(%rsp), %rbp
-               	je	0x433a4b <mi_segment_init+0xc4b>
+               	testq	%rbp, %rbp
+               	je	0x434401 <mi_segment_init+0xc21>
@@@@
-               	movq	64(%rsp), %r13
-               	jne	0x433962 <mi_segment_init+0xb62>
-               	movq	%r8, 32(%rsp)
+               	jne	0x434318 <mi_segment_init+0xb38>
+               	movq	%r8, 24(%rsp)
@@@@
-               	movq	%r14, %rdi
-               	movq	%r13, %rsi
+               	movq	%rbp, %rdi
+               	movq	88(%rsp), %rsi
@@@@
-               	movq	%r8, (%r14)
+               	movq	%r8, (%rbp)
@@@@
-               	movb	%cl, 8(%r14)
-               	movb	%al, 9(%r14)
-               	movq	112(%rbp), %rcx
-               	leaq	189565(%rip), %rax      # 0x461e00 <_mi_stats_main>
+               	movb	%cl, 8(%rbp)
+               	movb	%al, 9(%rbp)
+               	movq	112(%r12), %rcx
+               	leaq	188935(%rip), %rax      # 0x462540 <_mi_stats_main>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -33495,30 +34045,32 @@
@@@[(20, 24), (28, 30), (33, 39)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	callq	0x42d410 <_mi_mem_free>
-               	xorl	%r14d, %r14d
-               	movq	%r14, %rax
+               	callq	0x42dc60 <_mi_mem_free>
+               	xorl	%ebp, %ebp
+               	movq	%rbp, %rax

@@ -33531,28 +34083,36 @@
@@@[(6, 10), (11, 23), (24, 41), (45, 46)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	addq	56(%rbp), %rax
-               	movq	%rax, 56(%rbp)
-               	cmpq	64(%rbp), %rax
-               	jbe	0x433a94 <mi_segment_init+0xc94>
-               	movq	%rax, 64(%rbp)
-               	movq	72(%rbp), %rax
+               	addq	56(%r12), %rax
+               	movq	%rax, 56(%r12)
+               	cmpq	64(%r12), %rax
+               	jbe	0x434454 <mi_segment_init+0xc74>
+               	movq	%rax, 64(%r12)
+               	movq	72(%r12), %rax
@@@@
-               	movq	%rax, 72(%rbp)
-               	cmpq	80(%rbp), %rax
-               	jbe	0x433070 <mi_segment_init+0x270>
-               	movq	%rax, 80(%rbp)
-               	jmp	0x433070 <mi_segment_init+0x270>
+               	movq	%rax, 72(%r12)
+               	cmpq	80(%r12), %rax
+               	jbe	0x433a57 <mi_segment_init+0x277>
+               	movq	%rax, 80(%r12)
+               	jmp	0x433a57 <mi_segment_init+0x277>
+               	callq	0x42be60 <_mi_os_numa_node_count_get>
+               	movq	32(%rsp), %rcx
+               	jmp	0x433b99 <mi_segment_init+0x3b9>
+               	callq	0x4344b0 <_mi_os_numa_node_get>
+               	movq	32(%rsp), %rcx
+               	movl	%eax, %r10d
+               	jmp	0x433bc8 <mi_segment_init+0x3e8>
@@@@
-               	movq	24(%rsp), %rsi

@@ -33560,15 +34120,15 @@
@@@[(3, 15), (17, 19)]@@@
-               	movq	223285(%rip), %r14      # 0x46a318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	je	0x433b5c <_mi_os_numa_node_get+0x8c>
-               	xorl	%ebx, %ebx
-               	cmpq	$2, %r14
-               	jb	0x433b4d <_mi_os_numa_node_get+0x7d>
+               	movq	222613(%rip), %rbx      # 0x46aa58 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	je	0x434537 <_mi_os_numa_node_get+0x87>
+               	xorl	%eax, %eax
+               	cmpq	$2, %rbx
+               	jb	0x43452a <_mi_os_numa_node_get+0x7a>
@@@@
-               	xorl	%ebx, %ebx
+               	xorl	%r14d, %r14d

@@ -33576,108 +34136,105 @@
@@@[(3, 20), (21, 28), (29, 34), (39, 45), (46, 50), (51, 65), (66, 70), (72, 74), (76, 78), (79, 93), (94, 100)]@@@
-               	jne	0x433b26 <_mi_os_numa_node_get+0x56>
-               	movq	16(%rsp), %rbx
-               	cmpq	%r14, %rbx
-               	jb	0x433b4d <_mi_os_numa_node_get+0x7d>
-               	movq	%rbx, %rax
-               	orq	%r14, %rax
-               	shrq	$32, %rax
-               	je	0x433b44 <_mi_os_numa_node_get+0x74>
-               	movq	%rbx, %rax
+               	movq	16(%rsp), %rax
+               	cmovneq	%r14, %rax
+               	cmpq	%rbx, %rax
+               	jb	0x43452a <_mi_os_numa_node_get+0x7a>
+               	movq	%rax, %rcx
+               	orq	%rbx, %rcx
+               	shrq	$32, %rcx
+               	je	0x434524 <_mi_os_numa_node_get+0x74>
@@@@
-               	divq	%r14
-               	movq	%rdx, %rbx
-               	jmp	0x433b4d <_mi_os_numa_node_get+0x7d>
-               	movl	%ebx, %eax
+               	divq	%rbx
+               	movq	%rdx, %rax
+               	jmp	0x43452a <_mi_os_numa_node_get+0x7a>
@@@@
-               	divl	%r14d
-               	movl	%edx, %ebx
-               	movl	%ebx, %eax
+               	divl	%ebx
+               	movl	%edx, %eax
@@@@
-               	movq	223157(%rip), %r14      # 0x46a318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	jne	0x433ae8 <_mi_os_numa_node_get+0x18>
+               	movq	222490(%rip), %rbx      # 0x46aa58 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	jne	0x4344c8 <_mi_os_numa_node_get+0x18>
@@@@
-               	callq	0x42a2d0 <mi_option_get>
-               	movq	%rax, %r14
+               	callq	0x42aab0 <mi_option_get>
+               	movq	%rax, %rbx
@@@@
-               	jg	0x433bcc <_mi_os_numa_node_get+0xfc>
-               	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
-               	leaq	65058(%rip), %r15       # 0x4439a9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
-               	leaq	16(%rsp), %rbx
-               	cmpl	$255, %r14d
-               	je	0x433bc2 <_mi_os_numa_node_get+0xf2>
-               	leal	2(%r14), %ecx
+               	jg	0x4345a1 <_mi_os_numa_node_get+0xf1>
+               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
+               	leaq	66184(%rip), %r14       # 0x4447e9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	16(%rsp), %r15
+               	cmpl	$255, %ebx
+               	je	0x434599 <_mi_os_numa_node_get+0xe9>
+               	leal	2(%rbx), %ecx
@@@@
-               	movq	%rbx, %rdi
-               	movq	%r15, %rdx
+               	movq	%r15, %rdi
+               	movq	%r14, %rdx
@@@@
-               	movq	%rbx, %rdi
+               	movq	%r15, %rdi
@@@@
-               	addl	$1, %r14d
+               	addl	$1, %ebx
@@@@
-               	je	0x433b8c <_mi_os_numa_node_get+0xbc>
-               	jmp	0x433bc8 <_mi_os_numa_node_get+0xf8>
-               	movl	$256, %r14d             # imm = 0x100
-               	addl	$1, %r14d
-               	movq	%r14, 223045(%rip)      # 0x46a318 <_mi_numa_node_count>
-               	leaq	65007(%rip), %rdi       # 0x4439c9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
-               	movq	%r14, %rsi
+               	je	0x434566 <_mi_os_numa_node_get+0xb6>
+               	jmp	0x43459e <_mi_os_numa_node_get+0xee>
+               	movl	$256, %ebx              # imm = 0x100
+               	addl	$1, %ebx
+               	movq	%rbx, 222384(%rip)      # 0x46aa58 <_mi_numa_node_count>
+               	leaq	66138(%rip), %rdi       # 0x444809 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, %rsi
@@@@
-               	callq	0x429fb0 <_mi_verbose_message>
-               	jmp	0x433ae8 <_mi_os_numa_node_get+0x18>
-               	nopl	(%rax)
+               	callq	0x42a790 <_mi_verbose_message>
+               	jmp	0x4344c8 <_mi_os_numa_node_get+0x18>
+               	nop

@@ -33709,9 +34266,9 @@
@@@[(3, 9)]@@@
-               	movq	%r8, %r13
-               	movq	%rcx, %r12
-               	movq	%rdx, %r15
+               	movq	%r8, %r14
+               	movq	%rcx, %r15
+               	movq	%rdx, %r12

@@ -33719,106 +34276,107 @@
@@@[(8, 12), (14, 18), (22, 28), (29, 35), (37, 39), (41, 45), (47, 51), (52, 56), (62, 70), (79, 83), (84, 85), (88, 92), (93, 97), (112, 122), (136, 140), (142, 143), (144, 147), (148, 152), (153, 159)]@@@
-               	je	0x433e16 <_mi_arena_alloc_aligned+0x166>
-               	movq	%r12, 24(%rsp)
+               	je	0x4347eb <_mi_arena_alloc_aligned+0x16b>
+               	movq	%r15, 24(%rsp)
@@@@
-               	movq	222720(%rip), %rax      # 0x46a318 <_mi_numa_node_count>
-               	xorl	%r14d, %r14d
+               	movq	222064(%rip), %rax      # 0x46aa58 <_mi_numa_node_count>
+               	xorl	%r13d, %r13d
@@@@
-               	leaq	189328(%rip), %rbp      # 0x4620c0 <mi_arenas>
-               	xorl	%r12d, %r12d
-               	jmp	0x433d7e <_mi_arena_alloc_aligned+0xce>
+               	leaq	188672(%rip), %rbp      # 0x462800 <mi_arenas>
+               	xorl	%r15d, %r15d
+               	jmp	0x43474f <_mi_arena_alloc_aligned+0xcf>
@@@@
-               	cmpb	$0, (%r15)
-               	je	0x433d95 <_mi_arena_alloc_aligned+0xe5>
-               	movq	%r12, %rsi
+               	cmpb	$0, (%r12)
+               	je	0x434766 <_mi_arena_alloc_aligned+0xe6>
+               	movq	%r15, %rsi
@@@@
-               	movq	%r15, %r8
+               	movq	%r12, %r8
@@@@
-               	pushq	%r13
-               	callq	0x433fb0 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x434980 <mi_arena_alloc_from>
@@@@
-               	jne	0x433e65 <_mi_arena_alloc_aligned+0x1b5>
-               	addq	$1, %r12
+               	jne	0x43483f <_mi_arena_alloc_aligned+0x1bf>
+               	addq	$1, %r15
@@@@
-               	cmpq	$64, %r12
-               	je	0x433d9d <_mi_arena_alloc_aligned+0xed>
+               	cmpq	$64, %r15
+               	je	0x43476e <_mi_arena_alloc_aligned+0xee>
@@@@
-               	js	0x433d40 <_mi_arena_alloc_aligned+0x90>
-               	cmpl	%r14d, %eax
-               	jne	0x433d70 <_mi_arena_alloc_aligned+0xc0>
-               	jmp	0x433d40 <_mi_arena_alloc_aligned+0x90>
+               	js	0x434710 <_mi_arena_alloc_aligned+0x90>
+               	cmpl	%r13d, %eax
+               	jne	0x434741 <_mi_arena_alloc_aligned+0xc1>
+               	jmp	0x434710 <_mi_arena_alloc_aligned+0x90>
@@@@
-               	movq	24(%rsp), %r12
-               	jmp	0x433df4 <_mi_arena_alloc_aligned+0x144>
+               	movq	24(%rsp), %r15
+               	jmp	0x4347c8 <_mi_arena_alloc_aligned+0x148>
@@@@
-               	nop
@@@@
-               	movq	%r15, %r8
-               	movq	%r12, %r9
+               	movq	%r12, %r8
+               	movq	%r15, %r9
@@@@
-               	pushq	%r13
-               	callq	0x433fb0 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x434980 <mi_arena_alloc_from>
@@@@
-               	js	0x433de6 <_mi_arena_alloc_aligned+0x136>
-               	cmpl	%r14d, %eax
-               	je	0x433de6 <_mi_arena_alloc_aligned+0x136>
-               	cmpb	$0, (%r15)
-               	jne	0x433dc0 <_mi_arena_alloc_aligned+0x110>
+               	js	0x4347ba <_mi_arena_alloc_aligned+0x13a>
+               	cmpl	%r13d, %eax
+               	je	0x4347ba <_mi_arena_alloc_aligned+0x13a>
+               	cmpb	$0, (%r12)
+               	jne	0x434790 <_mi_arena_alloc_aligned+0x110>
@@@@
-               	jmp	0x433e65 <_mi_arena_alloc_aligned+0x1b5>
-               	movb	$1, (%r13)
+               	jmp	0x43483f <_mi_arena_alloc_aligned+0x1bf>
+               	movb	$1, (%r14)
@@@@
+               	xorl	%esi, %esi
@@@@
-               	movzbl	(%rax), %esi
+               	cmpb	$0, (%rax)
+               	setne	%sil
@@@@
-               	movq	%r15, %rdx
-               	callq	0x42a6f0 <_mi_os_alloc_aligned>
+               	movq	%r12, %rdx
+               	callq	0x42aec0 <_mi_os_alloc_aligned>
@@@@
-               	je	0x433e30 <_mi_arena_alloc_aligned+0x180>
-               	movb	(%r15), %cl
-               	movb	%cl, (%r12)
+               	je	0x434805 <_mi_arena_alloc_aligned+0x185>
+               	movb	(%r12), %cl
+               	movb	%cl, (%r15)

@@ -33827,10 +34385,10 @@
@@@[(3, 11)]@@@
-               	callq	0x433ad0 <_mi_os_numa_node_get>
-               	movl	%eax, %r14d
-               	jmp	0x433d25 <_mi_arena_alloc_aligned+0x75>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x4344b0 <_mi_os_numa_node_get>
+               	movl	%eax, %r13d
+               	jmp	0x4346f5 <_mi_arena_alloc_aligned+0x75>
+               	nopl	(%rax,%rax)

@@ -34714,60 +35272,62 @@
@@@[(19, 22), (24, 28), (42, 46), (48, 54), (56, 62), (66, 69), (71, 73), (79, 83)]@@@
-               	movzbl	(%r8), %r11d
+               	movb	(%r8), %cl
+               	movzbl	%cl, %r11d
@@@@
-               	testq	%r11, %r11
-               	jne	0x434ba9 <_mi_usable_size+0x109>
+               	testb	%r11b, %r11b
+               	jne	0x43557e <_mi_usable_size+0x10e>
@@@@
-               	jmp	0x434b98 <_mi_usable_size+0xf8>
-               	movb	96(%rax), %cl
+               	jmp	0x43556d <_mi_usable_size+0xfd>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r8), %ecx
-               	testq	%rcx, %rcx
-               	je	0x434b60 <_mi_usable_size+0xc0>
+               	movb	(%r8), %cl
+               	testb	%cl, %cl
+               	je	0x435532 <_mi_usable_size+0xc2>
@@@@
-               	movq	80(%rax), %r9
-               	movq	%rdx, %r8
-               	subq	%r9, %r8
+               	movq	80(%rax), %r8
+               	movq	%rdx, %r9
+               	subq	%r8, %r9
@@@@
-               	je	0x434b8d <_mi_usable_size+0xed>
+               	je	0x435562 <_mi_usable_size+0xf2>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r9, %rax
+               	addq	%r8, %rax
@@@@
-               	jmp	0x434be2 <_mi_usable_size+0x142>
-               	movq	%r8, %rax
+               	jmp	0x4355b7 <_mi_usable_size+0x147>
+               	movq	%r9, %rax

@@ -34804,37 +35364,37 @@
@@@[(3, 7), (14, 18)]@@@
-               	subq	%rcx, %r8
-               	movq	%r8, %rax
+               	subq	%rcx, %r9
+               	movq	%r9, %rax
@@@@
-               	jmp	0x434c1b <_mi_usable_size+0x17b>
-               	movb	96(%r8), %cl
+               	jmp	0x4355f0 <_mi_usable_size+0x180>
+               	movq	96(%r8), %rcx

@@ -34849,26 +35409,26 @@
@@@[(20, 24)]@@@
-               	jmp	0x434cac <_mi_usable_size+0x20c>
-               	movb	96(%r8), %cl
+               	jmp	0x435681 <_mi_usable_size+0x211>
+               	movq	96(%r8), %rcx

@@ -34903,7 +35463,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -34911,34 +35471,36 @@
@@@[(10, 16), (25, 27)]@@@
-               	je	0x434d98 <_mi_heap_malloc_zero+0x88>
-               	addl	$1, 16(%rax)
+               	je	0x43577e <_mi_heap_malloc_zero+0x8e>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)
@@@@
-               	movb	96(%rax), %cl
+               	movq	96(%rax), %rcx

@@ -34949,12 +35511,11 @@
@@@[(7, 12)]@@@
-               	jne	0x434d46 <_mi_heap_malloc_zero+0x36>
-               	jmp	0x434d8d <_mi_heap_malloc_zero+0x7d>
-               	nopw	(%rax,%rax)
+               	jne	0x43572b <_mi_heap_malloc_zero+0x3b>
+               	jmp	0x435773 <_mi_heap_malloc_zero+0x83>

@@ -35154,9 +35715,9 @@
@@@[(3, 6), (7, 8)]@@@
-               	callq	0x435970 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
-               	movq	8(%rsp), %rbx
+               	callq	0x436360 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
@@@@
+               	movq	8(%rsp), %rbx

@@ -35695,21 +36256,24 @@
@@@[(3, 5), (6, 11), (12, 16), (26, 30)]@@@
+               	movq	%rdi, %rax
+               	movq	8(%rdi), %rdi
@@@@
-               	je	0x435960 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x43634a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
+               	movl	16(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x435960 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x43634a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
@@@@
-               	jmp	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	(%rax,%rax)

@@ -35718,78 +36282,222 @@
@@@[(3, 10), (11, 26), (29, 34), (35, 79), (80, 81), (83, 112), (115, 197), (198, 226), (228, 230), (232, 242), (243, 257), (263, 272)]@@@
-               	subq	$56, %rsp
-               	movq	%rdi, %r15
+               	subq	$120, %rsp
+               	movq	%rdi, %r13
+               	movq	$0, 48(%rsp)
+               	movl	$1, 56(%rsp)
+               	movb	$0, 60(%rsp)
@@@@
-               	movq	-64(%rax), %r12
-               	movl	$1, %r14d
-               	testq	%r12, %r12
-               	je	0x4359a9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x39>
-               	xchgl	%r14d, 328(%r12)
-               	jmp	0x4359ac <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c>
-               	xorl	%r12d, %r12d
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x4363b8 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x58>
+               	movl	$1, %ecx
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 48(%rsp)
+               	movl	%ecx, 56(%rsp)
+               	movb	$1, 60(%rsp)
@@@@
-               	leaq	317(%rip), %rdi         # 0x435b00 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
-               	leaq	16(%rsp), %rsi
+               	movq	$0, 32(%rsp)
+               	leaq	920(%rip), %rdi         # 0x436770 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
+               	leaq	32(%rsp), %rsi
@@@@
-               	movq	16(%rsp), %rbx
-               	cmpq	$4, %rbx
-               	jbe	0x435a6c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0xfc>
-               	addq	$-4, %rbx
-               	movq	%rbx, %rax
-               	shrq	$61, %rax
-               	jne	0x435acb <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x15b>
+               	movq	32(%rsp), %r12
+               	cmpq	$4, %r12
+               	jbe	0x43648a <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x12a>
+               	addq	$-4, %r12
+               	movq	8(%rsp), %r15
+               	movq	(%rsp), %rbx
+               	movq	%r15, %rdx
+               	subq	%rbx, %rdx
+               	movq	%rdx, %r14
+               	sarq	$3, %r14
+               	movq	%r12, %rbp
+               	subq	%r14, %rbp
+               	jbe	0x4364b1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x151>
+               	je	0x43669c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	16(%rsp), %rax
+               	subq	%r15, %rax
+               	sarq	$3, %rax
+               	cmpq	%rbp, %rax
+               	jae	0x4364d1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x171>
+               	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
+               	movq	%r14, %rcx
+               	xorq	%rax, %rcx
+               	cmpq	%rbp, %rcx
+               	jb	0x436736 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3d6>
+               	movq	%rdx, 64(%rsp)
+               	movq	%r13, 80(%rsp)
+               	cmpq	%rbp, %r14
+               	movq	%r14, %rcx
+               	cmovbq	%rbp, %rcx
+               	leaq	(%rcx,%r14), %rdi
+               	cmpq	%rax, %rdi
+               	cmovaq	%rax, %rdi
+               	addq	%r14, %rcx
+               	cmovbq	%rax, %rdi
+               	testq	%rdi, %rdi
+               	movq	%rdi, 72(%rsp)
+               	je	0x4364f1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x191>
@@@@
-               	movq	%rbx, %rdi
@@@@
-               	leaq	(,%rbx,8), %rbp
-               	movq	%rax, %rdi
+               	jmp	0x4364f4 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x194>
+               	xorps	%xmm0, %xmm0
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	movq	(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4366f2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x4366f2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	jae	0x43669c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	(%rbx,%r12,8), %rax
+               	cmpq	%r15, %rax
+               	je	0x43669c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	%rax, 8(%rsp)
+               	movq	%rax, %r15
+               	jmp	0x43669c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	8(%rsp), %rbx
+               	leaq	(,%rbp,8), %rdx
+               	movq	%r15, %rdi
+               	xorl	%esi, %esi
+               	callq	0x413710 <memset@plt>
+               	leaq	(%r15,%rbp,8), %rax
+               	jmp	0x436690 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x330>
+               	xorl	%r13d, %r13d
+               	leaq	(,%r14,8), %rdi
+               	addq	%r13, %rdi
+               	shlq	$3, %rbp
@@@@
+               	cmpq	%r15, %rbx
+               	je	0x436655 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
+               	movq	64(%rsp), %rdi
+               	addq	$-8, %rdi
+               	movq	%r13, %rcx
+               	cmpq	$24, %rdi
+               	jb	0x436632 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	shrq	$3, %rdi
+               	addq	$1, %rdi
+               	leaq	(%rbx,%rdi,8), %rax
+               	cmpq	%rax, %r13
+               	jae	0x436554 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x1f4>
+               	leaq	(,%rdi,8), %rax
+               	addq	%r13, %rax
+               	movq	%r13, %rcx
+               	cmpq	%rbx, %rax
+               	ja	0x436632 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	movq	%rdi, %rax
+               	andq	$-4, %rax
+               	leaq	-4(%rax), %rsi
+               	movq	%rsi, %rdx
+               	shrq	$2, %rdx
+               	addq	$1, %rdx
+               	movl	%edx, %ecx
+               	andl	$3, %ecx
+               	cmpq	$12, %rsi
+               	jae	0x436579 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x219>
+               	xorl	%esi, %esi
+               	jmp	0x4365e3 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x283>
+               	andq	$-4, %rdx
+               	negq	%rdx
+               	xorl	%esi, %esi
+               	movups	(%rbx,%rsi,8), %xmm0
+               	movups	16(%rbx,%rsi,8), %xmm1
+               	movups	%xmm0, (%r13,%rsi,8)
+               	movups	%xmm1, 16(%r13,%rsi,8)
+               	movups	32(%rbx,%rsi,8), %xmm0
+               	movups	48(%rbx,%rsi,8), %xmm1
+               	movups	%xmm0, 32(%r13,%rsi,8)
+               	movups	%xmm1, 48(%r13,%rsi,8)
+               	movups	64(%rbx,%rsi,8), %xmm0
+               	movups	80(%rbx,%rsi,8), %xmm1
+               	movups	%xmm0, 64(%r13,%rsi,8)
+               	movups	%xmm1, 80(%r13,%rsi,8)
+               	movups	96(%rbx,%rsi,8), %xmm0
+               	movups	112(%rbx,%rsi,8), %xmm1
+               	movups	%xmm0, 96(%r13,%rsi,8)
+               	movups	%xmm1, 112(%r13,%rsi,8)
+               	addq	$16, %rsi
+               	addq	$4, %rdx
+               	jne	0x436582 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x222>
+               	testq	%rcx, %rcx
+               	je	0x43661e <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2be>
+               	leaq	16(,%rsi,8), %rdx
+               	negq	%rcx
+               	nopw	(%rax,%rax)
+               	movups	-16(%rbx,%rdx), %xmm0
+               	movups	(%rbx,%rdx), %xmm1
+               	movups	%xmm0, -16(%r13,%rdx)
+               	movups	%xmm1, (%r13,%rdx)
+               	addq	$32, %rdx
+               	incq	%rcx
+               	jne	0x436600 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2a0>
+               	cmpq	%rax, %rdi
+               	je	0x436655 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
+               	leaq	(,%rax,8), %rcx
+               	addq	%r13, %rcx
+               	leaq	(%rbx,%rax,8), %rbx
+               	subq	%rbx, %r15
+               	xorl	%eax, %eax
+               	nopw	(%rax,%rax)
+               	movq	(%rbx,%rax), %rdx
+               	movq	%rdx, (%rcx,%rax)
+               	addq	$8, %rax
+               	cmpq	%rax, %r15
+               	jne	0x436640 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2e0>
+               	movq	(%rsp), %rbx
+               	testq	%rbx, %rbx
+               	je	0x436662 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x302>
+               	movq	%rbx, %rdi
+               	callq	0x4136d0 <free@plt>
+               	leaq	16(%rsp), %rbx
@@@@
-               	leaq	(,%rbx,8), %rbx
-               	addq	%r13, %rbx
-               	movq	%rbx, 8(%rsp)
-               	sarq	$3, %rbp
-               	movq	$0, 24(%rsp)
-               	movq	$4, 32(%rsp)
-               	movq	%r13, 40(%rsp)
-               	movq	%rbp, 48(%rsp)
-               	leaq	195(%rip), %rdi         # 0x435b10 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
-               	leaq	24(%rsp), %rsi
+               	leaq	(,%r12,8), %rax
+               	addq	%r13, %rax
+               	movq	%rax, 8(%rsp)
+               	movq	72(%rsp), %rax
+               	leaq	(,%rax,8), %rax
+               	addq	%r13, %rax
+               	movq	80(%rsp), %r13
+               	movq	%rax, (%rbx)
+               	movq	(%rsp), %rbx
+               	movq	8(%rsp), %r15
+               	subq	%rbx, %r15
+               	sarq	$3, %r15
+               	movq	$0, 88(%rsp)
+               	movq	$4, 96(%rsp)
+               	movq	%rbx, 104(%rsp)
+               	movq	%r15, 112(%rsp)
+               	leaq	186(%rip), %rdi         # 0x436780 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
+               	leaq	88(%rsp), %rsi
@@@@
-               	movups	%xmm0, (%r15)
+               	movups	%xmm0, (%r13)
@@@@
-               	movq	%rbx, 16(%r15)
-               	jmp	0x435a89 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	xorps	%xmm0, %xmm0
-               	movups	%xmm0, (%r15)
-               	movq	$0, 16(%r15)
-               	movq	(%rsp), %rdi
+               	movq	16(%rsp), %rax
+               	movq	%rax, 16(%r13)
+               	movq	$0, 16(%rsp)
+               	movq	48(%rsp), %rdi
@@@@
-               	je	0x435a89 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	callq	0x4136f0 <free@plt>
-               	testq	%r12, %r12
-               	je	0x435abc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	movl	%r14d, %eax
-               	xchgl	%eax, 328(%r12)
-               	testl	%r14d, %r14d
-               	jne	0x435abc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
+               	je	0x436727 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	movl	56(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, 328(%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x436727 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
@@@@
-               	je	0x435abc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	addq	$328, %r12              # imm = 0x148
-               	movq	%r12, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$56, %rsp
+               	je	0x436727 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$120, %rsp

@@ -35797,46 +36505,45 @@
@@@[(3, 10), (11, 21), (22, 26), (28, 32), (34, 36), (49, 55), (57, 59), (60, 62)]@@@
-               	leaq	58726(%rip), %rdi       # 0x444038 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
-               	callq	0x4358c0 <std::__throw_length_error(char const*)>
-               	movq	%rax, %rbx
-               	jmp	0x435ae2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x172>
+               	leaq	59195(%rip), %rdi       # 0x444e78 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
+               	callq	0x4362a0 <std::__throw_length_error(char const*)>
+               	jmp	0x436744 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3e4>
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r13, %rdi
-               	callq	0x435b50 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
-               	movq	%r12, %rdi
-               	movl	%r14d, %esi
-               	callq	0x435940 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x4367c0 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
+               	leaq	40(%rsp), %rdi
+               	callq	0x436320 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x422b40 <__clang_call_terminate>
-               	nopl	(%rax)
+               	callq	0x423150 <__clang_call_terminate>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	addq	$1, (%rsi)
+               	movq	(%rsi), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rsi)
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	movq	(%rbx), %rax
-               	cmpq	24(%rbx), %rax
-               	jae	0x435b25 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
+               	movq	24(%rbx), %rax
+               	cmpq	%rax, (%rbx)
+               	jae	0x436795 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
@@@@
+               	leaq	1(%rcx), %rdx
+               	movq	%rdx, (%rbx)
@@@@
-               	leaq	1(%rcx), %rsi
-               	movq	%rsi, (%rbx)

@@ -35844,11 +36551,12 @@
@@@[(3, 4), (10, 12)]@@@
+               	movq	(%rdi), %rdi
@@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -35961,41 +36669,43 @@
@@@[(13, 23)]@@@
-               	jae	0x435d50 <CreateStringFromCString+0x1f0>
-               	addq	$1, (%rsp)
-               	jmp	0x435d80 <CreateStringFromCString+0x220>
-               	nopw	(%rax,%rax)
+               	jae	0x4369c0 <CreateStringFromCString+0x1f0>
+               	movq	(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rsp)
+               	jmp	0x4369f0 <CreateStringFromCString+0x220>
+               	nopl	(%rax)

@@ -36011,12 +36721,13 @@
@@@[(3, 6)]@@@
-               	movzbl	(%r8), %ecx
+               	movb	(%r8), %al
+               	movzbl	%al, %ecx

@@ -36025,45 +36736,47 @@
@@@[(12, 16), (20, 23), (25, 29), (47, 55), (56, 61)]@@@
-               	je	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	jne	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
@@@@
-               	andl	$63, %esi
-               	orl	%esi, %ecx
+               	andl	$63, %eax
+               	orl	%eax, %ecx
@@@@
-               	je	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %r10d
-               	movl	%r10d, %r9d
-               	andb	$-64, %r9b
+               	je	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %r9b
+               	movl	%r9d, %r10d
+               	andb	$-64, %r10b
@@@@
-               	cmpb	$-128, %r9b
-               	jne	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	cmpb	$-128, %r10b
+               	jne	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%r9b, %r10d

@@ -36073,41 +36786,43 @@
@@@[(13, 17), (21, 28), (43, 49), (51, 54)]@@@
-               	je	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %esi
-               	orl	%esi, %r10d
+               	jne	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
+               	andl	$63, %eax
+               	orl	%eax, %r10d
@@@@
-               	je	0x435fd8 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r10d
-               	movl	%r10d, %eax
+               	je	0x436c5b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %r9b
+               	movl	%r9d, %eax
@@@@
-               	jne	0x435fe1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x211>
+               	jne	0x436c64 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x224>
+               	movzbl	%r9b, %r10d

@@ -36115,45 +36830,47 @@
@@@[(14, 20), (28, 36), (37, 49), (50, 54), (60, 62)]@@@
-               	je	0x435fd8 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r11d
-               	movl	%r11d, %eax
+               	je	0x436c5b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %cl
+               	movl	%ecx, %eax
@@@@
-               	je	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %ecx
-               	movl	%ecx, %esi
-               	andb	$-64, %sil
+               	je	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
+               	movl	%esi, %r11d
+               	andb	$-64, %r11b
@@@@
-               	cmpb	$-128, %sil
-               	jne	0x435f7f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %r11d
-               	shll	$6, %r11d
-               	orl	%r10d, %r11d
+               	cmpb	$-128, %r11b
+               	jne	0x436c01 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%cl, %eax
+               	andl	$63, %eax
+               	shll	$6, %eax
+               	orl	%r10d, %eax
+               	movzbl	%sil, %ecx
@@@@
-               	orl	%r11d, %ecx
-               	jmp	0x435de7 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x17>
+               	orl	%eax, %ecx
+               	jmp	0x436a59 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x19>
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -36166,61 +36883,61 @@
@@@[(3, 6), (8, 9), (21, 22), (24, 25), (44, 45), (47, 48), (58, 59), (61, 62)]@@@
-               	ja	0x436027 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
-               	movq	(%rbx), %rax
+               	ja	0x436ca7 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
@@@@
+               	movq	(%rbx), %rax
@@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax
@@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax
@@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36229,25 +36946,25 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36263,19 +36980,19 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36284,41 +37001,41 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36331,21 +37048,21 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rdi), %r14
@@@@
+               	movq	(%rdi), %r14

@@ -36411,9 +37128,9 @@
@@@[(3, 9)]@@@
-               	movl	8(%rsi), %ebp
-               	addl	8(%rdi), %ebp
-               	js	0x436420 <Kotlin_String_plusImpl+0xc0>
+               	movl	8(%rdi), %ebp
+               	addl	8(%rsi), %ebp
+               	js	0x4370a0 <Kotlin_String_plusImpl+0xc0>

@@ -36614,46 +37331,45 @@
@@@[(39, 48), (60, 62)]@@@
-               	jg	0x43678b <Kotlin_String_hashCode+0x11b>
-               	callq	0x436860 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
-               	jmp	0x4367b8 <Kotlin_String_hashCode+0x148>
-               	movq	%r14, %rax
-               	addq	$-1, %rax
+               	jg	0x43740b <Kotlin_String_hashCode+0x11b>
+               	callq	0x4374e0 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
+               	jmp	0x437438 <Kotlin_String_hashCode+0x148>
+               	leaq	-1(%r14), %rax
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -37311,38 +38027,38 @@
@@@[(27, 41)]@@@
-               	je	0x4375bf <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x4af>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x437270 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x160>
-               	movq	%rsi, %rax
+               	je	0x438245 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x4b5>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x437ef0 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x160>

@@ -37387,14 +38103,16 @@
@@@[(3, 7), (10, 13), (15, 16)]@@@
-               	addq	$40, 56(%rbx)
+               	movq	56(%rbx), %rax
+               	addq	$40, %rax
+               	movq	%rax, 56(%rbx)
@@@@
-               	jmp	0x43753b <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x42b>
-               	movq	8(%rbx), %rcx
+               	jmp	0x4381c1 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x431>
@@@@
+               	movq	8(%rbx), %rcx

@@ -37483,10 +38201,10 @@
@@@[(3, 5), (7, 9)]@@@
-               	movq	48(%rsp), %rcx
-               	movq	%rcx, 32(%rax)
@@@@
+               	movq	48(%rsp), %rcx
+               	movq	%rcx, 32(%rax)

@@ -37559,7 +38277,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -37741,53 +38459,53 @@
@@@[(7, 13), (47, 51), (54, 62)]@@@
-               	jne	0x43848e <Kotlin_initRuntimeIfNeeded+0xb6e>
-               	movq	%rax, %r14
-               	movb	273287(%rip), %al       # 0x47a4d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	jne	0x43910e <Kotlin_initRuntimeIfNeeded+0xb6e>
+               	movq	%rax, %r12
+               	movb	271943(%rip), %al       # 0x47ac18 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
@@@@
-               	je	0x438437 <Kotlin_initRuntimeIfNeeded+0xb17>
-               	movq	%rax, %r12
+               	je	0x4390b6 <Kotlin_initRuntimeIfNeeded+0xb16>
+               	movq	%rax, %r14
@@@@
-               	movq	%r14, %rax
-               	cmpq	$0, -48(%r14)
-               	jne	0x4385d7 <Kotlin_initRuntimeIfNeeded+0xcb7>
-               	movq	%r12, -48(%r14)
+               	movq	%r12, %rax
+               	cmpq	$0, -48(%r12)
+               	jne	0x439257 <Kotlin_initRuntimeIfNeeded+0xcb7>
+               	movq	%r14, -48(%r12)

@@ -37843,108 +38561,108 @@
@@@[(82, 88), (101, 111), (113, 114), (115, 122), (123, 125)]@@@
-               	movq	%r14, %rax
-               	movq	%r15, -64(%r14)
-               	movq	%r15, (%r12)
+               	movq	%r12, %rax
+               	movq	%r15, -64(%r12)
+               	movq	%r15, (%r14)
@@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%rbx, 40(%rsp)
-               	movq	(%r12), %rbx
-               	movq	%r14, %rax
-               	movq	-40(%r14), %r13
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%rbx, 48(%rsp)
+               	movq	(%r14), %rbx
+               	movq	%r12, %rax
+               	movq	-40(%r12), %r13
@@@@
-               	movq	%r14, 48(%rsp)
@@@@
-               	jne	0x4381bd <Kotlin_initRuntimeIfNeeded+0x89d>
-               	movq	%rbx, 72(%rsp)
-               	callq	0x437620 <(anonymous namespace)::theState()>
+               	movq	%r14, 40(%rsp)
+               	jne	0x438e46 <Kotlin_initRuntimeIfNeeded+0x8a6>
+               	movq	%rbx, 88(%rsp)
+               	callq	0x4382a0 <(anonymous namespace)::theState()>
@@@@
-               	movq	-64(%r14), %rbx
+               	movq	-64(%r12), %rbx

@@ -37958,16 +38676,20 @@
@@@[(3, 8), (11, 16), (19, 21)]@@@
-               	leaq	24(%rax), %rbp
+               	movq	16(%r13), %rax
+               	leaq	-4(,%rax,4), %rbp
+               	andq	$-8, %rbp
+               	leaq	(%rbx,%rbp), %r14
@@@@
-               	movq	%rax, 24(%rbx)
-               	movq	%rbp, 48(%r13)
+               	movq	%rax, (%rbx,%rbp)
+               	movq	%r14, 48(%r13)
+               	movq	(%rbx,%rbp), %rax
@@@@
-               	movq	%rbp, 80(%r13)
+               	movq	%r14, 80(%r13)

@@ -37978,7 +38700,7 @@
@@@[(3, 5)]@@@
-               	movq	-64(%r14), %rbp
+               	movq	-64(%r12), %rbp

@@ -37989,290 +38711,293 @@
@@@[(20, 40), (43, 55), (81, 85), (88, 91), (93, 107), (111, 137), (145, 150), (152, 155), (156, 161), (168, 178), (179, 180), (181, 184), (187, 189), (193, 211), (213, 215), (219, 242), (244, 247), (249, 251), (252, 275), (276, 291), (298, 304), (306, 310), (316, 336), (337, 348), (349, 352), (353, 357), (358, 376), (378, 379), (387, 390), (399, 411), (414, 418), (419, 424), (429, 433), (435, 436), (437, 438)]@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movl	(%r13), %ebp
-               	movslq	%ebp, %r9
-               	movq	16(%rsp), %r8
-               	movq	152(%r8), %rsi
-               	movq	%r9, %rax
-               	orq	%rsi, %rax
-               	shrq	$32, %rax
-               	je	0x437ef5 <Kotlin_initRuntimeIfNeeded+0x5d5>
-               	movq	%r9, %rax
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	(%r13), %r8d
+               	movslq	%r8d, %rax
+               	movq	16(%rsp), %r9
+               	movq	152(%r9), %rsi
+               	movq	%rax, %rcx
+               	orq	%rsi, %rcx
+               	shrq	$32, %rcx
+               	movq	%rax, 80(%rsp)
+               	je	0x438b57 <Kotlin_initRuntimeIfNeeded+0x5b7>
@@@@
-               	movq	144(%r8), %rax
-               	movq	(%rax,%rbx,8), %rax
-               	testq	%rax, %rax
-               	jne	0x437f0d <Kotlin_initRuntimeIfNeeded+0x5ed>
-               	jmp	0x437f66 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movq	%r15, 167552(%rip)      # 0x460d08 <kotlin::mm::GlobalData::instance_+0x18>
-               	cmpq	$0, 160040(%rip)        # 0x45efb8 <write+0x45efb8>
-               	jne	0x437c60 <Kotlin_initRuntimeIfNeeded+0x340>
-               	jmp	0x437c6c <Kotlin_initRuntimeIfNeeded+0x34c>
-               	movq	-64(%r14), %rbx
+               	jmp	0x438b60 <Kotlin_initRuntimeIfNeeded+0x5c0>
+               	movq	-64(%r12), %rbx
@@@@
-               	jmp	0x4381aa <Kotlin_initRuntimeIfNeeded+0x88a>
-               	movl	%ebp, %eax
+               	jmp	0x438e33 <Kotlin_initRuntimeIfNeeded+0x893>
+               	movl	%r8d, %eax
@@@@
-               	movq	144(%r8), %rax
+               	movq	40(%rsp), %r14
+               	movq	144(%r9), %rax
@@@@
-               	je	0x437f66 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movq	(%rax), %r12
-               	cmpl	8(%r12), %ebp
-               	jne	0x437f31 <Kotlin_initRuntimeIfNeeded+0x611>
-               	testq	%r12, %r12
-               	jne	0x438154 <Kotlin_initRuntimeIfNeeded+0x834>
-               	jmp	0x437f66 <Kotlin_initRuntimeIfNeeded+0x646>
+               	je	0x438bcc <Kotlin_initRuntimeIfNeeded+0x62c>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x438b99 <Kotlin_initRuntimeIfNeeded+0x5f9>
+               	testq	%rbp, %rbp
+               	jne	0x438de9 <Kotlin_initRuntimeIfNeeded+0x849>
+               	jmp	0x438bcc <Kotlin_initRuntimeIfNeeded+0x62c>
@@@@
-               	jne	0x437f66 <Kotlin_initRuntimeIfNeeded+0x646>
-               	cmpl	%ecx, %ebp
-               	je	0x437f5d <Kotlin_initRuntimeIfNeeded+0x63d>
-               	movq	%r12, %rdi
-               	movq	(%r12), %r12
-               	testq	%r12, %r12
-               	je	0x437f66 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movslq	8(%r12), %rcx
-               	movq	%rcx, %rax
-               	orq	%rsi, %rax
-               	shrq	$32, %rax
-               	je	0x437f22 <Kotlin_initRuntimeIfNeeded+0x602>
-               	movq	%rcx, %rax
+               	jne	0x438bcc <Kotlin_initRuntimeIfNeeded+0x62c>
+               	cmpl	%ecx, %r8d
+               	je	0x438bc3 <Kotlin_initRuntimeIfNeeded+0x623>
+               	movq	%rbp, %rdi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x438bcc <Kotlin_initRuntimeIfNeeded+0x62c>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rsi, %rdx
+               	shrq	$32, %rdx
+               	je	0x438b89 <Kotlin_initRuntimeIfNeeded+0x5e9>
@@@@
-               	jne	0x438154 <Kotlin_initRuntimeIfNeeded+0x834>
-               	movq	%rbx, 32(%rsp)
-               	movq	%r9, 64(%rsp)
+               	jne	0x438de9 <Kotlin_initRuntimeIfNeeded+0x849>
+               	movq	%rbx, 72(%rsp)
@@@@
-               	movq	%r8, %rbx
+               	movl	%r8d, %r14d
+               	movq	%r9, %rbx
@@@@
-               	movq	%rax, %r12
-               	movl	%ebp, 8(%rax)
+               	movq	%rax, %rbp
+               	movl	%r14d, 32(%rsp)
+               	movl	%r14d, 8(%rax)
@@@@
-               	jne	0x437fc1 <Kotlin_initRuntimeIfNeeded+0x6a1>
-               	movq	16(%rsp), %r8
-               	movq	144(%r8), %rbp
-               	movq	32(%rsp), %rdi
-               	jmp	0x4380d4 <Kotlin_initRuntimeIfNeeded+0x7b4>
+               	jne	0x438c2b <Kotlin_initRuntimeIfNeeded+0x68b>
+               	movq	16(%rsp), %r9
+               	movq	144(%r9), %r12
+               	movq	72(%rsp), %rbx
+               	jmp	0x438d59 <Kotlin_initRuntimeIfNeeded+0x7b9>
@@@@
-               	movl	%ebp, 32(%rsp)
@@@@
-               	je	0x438577 <Kotlin_initRuntimeIfNeeded+0xc57>
+               	movq	%rbp, 64(%rsp)
+               	je	0x4391f7 <Kotlin_initRuntimeIfNeeded+0xc57>
@@@@
-               	movq	%rax, %rbp
+               	movq	%rax, %r12
@@@@
-               	movq	16(%rsp), %r8
-               	movq	160(%r8), %rbx
-               	movq	$0, 160(%r8)
-               	testq	%rbx, %rbx
-               	je	0x438083 <Kotlin_initRuntimeIfNeeded+0x763>
-               	leaq	160(%r8), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x438043 <Kotlin_initRuntimeIfNeeded+0x723>
+               	movq	16(%rsp), %rax
+               	movq	160(%rax), %rbp
+               	movq	$0, 160(%rax)
+               	testq	%rbp, %rbp
+               	movl	32(%rsp), %r8d
+               	je	0x438cf9 <Kotlin_initRuntimeIfNeeded+0x759>
+               	movq	16(%rsp), %rax
+               	leaq	160(%rax), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x438cb6 <Kotlin_initRuntimeIfNeeded+0x716>
@@@@
-               	movq	(%rbp,%rdx,8), %rax
+               	movq	(%r12,%rdx,8), %rax
@@@@
-               	movq	%rax, (%rcx)
-               	movq	(%rbp,%rdx,8), %rax
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x438083 <Kotlin_initRuntimeIfNeeded+0x763>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rax, (%rsi)
+               	movq	(%r12,%rdx,8), %rax
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x438cf9 <Kotlin_initRuntimeIfNeeded+0x759>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43801b <Kotlin_initRuntimeIfNeeded+0x6fb>
+               	je	0x438c90 <Kotlin_initRuntimeIfNeeded+0x6f0>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%rbp,%rdx,8), %rax
+               	movq	(%r12,%rdx,8), %rax
@@@@
-               	jne	0x43802a <Kotlin_initRuntimeIfNeeded+0x70a>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%rbp,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x43803b <Kotlin_initRuntimeIfNeeded+0x71b>
-               	movq	%rcx, (%rbp,%rdi,8)
-               	jmp	0x43803b <Kotlin_initRuntimeIfNeeded+0x71b>
-               	movq	144(%r8), %rdi
-               	leaq	192(%r8), %rax
+               	jne	0x438c9e <Kotlin_initRuntimeIfNeeded+0x6fe>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x438cae <Kotlin_initRuntimeIfNeeded+0x70e>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x438cae <Kotlin_initRuntimeIfNeeded+0x70e>
+               	movq	16(%rsp), %r9
+               	movq	144(%r9), %rdi
+               	leaq	192(%r9), %rax
@@@@
-               	je	0x4380a0 <Kotlin_initRuntimeIfNeeded+0x780>
-               	callq	0x4136f0 <free@plt>
-               	movq	16(%rsp), %r8
-               	movq	%r14, 152(%r8)
-               	movq	%rbp, 144(%r8)
-               	movq	64(%rsp), %rax
+               	movq	64(%rsp), %rbp
+               	je	0x438d26 <Kotlin_initRuntimeIfNeeded+0x786>
+               	movq	%r9, %rbx
+               	callq	0x4136d0 <free@plt>
+               	movq	%rbx, %r9
+               	movl	32(%rsp), %r8d
+               	movq	%r14, 152(%r9)
+               	movq	%r12, 144(%r9)
+               	movq	80(%rsp), %rax
@@@@
-               	movq	%rdx, %rdi
-               	jmp	0x4380d4 <Kotlin_initRuntimeIfNeeded+0x7b4>
-               	movl	32(%rsp), %eax
+               	movq	%rdx, %rbx
+               	jmp	0x438d59 <Kotlin_initRuntimeIfNeeded+0x7b9>
+               	movl	%r8d, %eax
@@@@
-               	movl	%edx, %edi
-               	movq	(%rbp,%rdi,8), %rax
+               	movl	%edx, %ebx
+               	movq	(%r12,%rbx,8), %rax
@@@@
-               	movq	%rax, (%r12)
-               	movq	(%rbp,%rdi,8), %rax
-               	movq	%r12, (%rax)
-               	jmp	0x43814c <Kotlin_initRuntimeIfNeeded+0x82c>
-               	movq	%r8, %rcx
-               	addq	$160, %rcx
-               	movq	160(%r8), %rax
-               	movq	%rax, (%r12)
-               	movq	%r12, 160(%r8)
-               	movq	(%r12), %rax
+               	movq	%rax, (%rbp)
+               	movq	(%r12,%rbx,8), %rax
+               	movq	%rbp, (%rax)
+               	jmp	0x438dd2 <Kotlin_initRuntimeIfNeeded+0x832>
+               	movq	%r9, %rsi
+               	addq	$160, %rsi
+               	movq	160(%r9), %rax
+               	movq	%rax, (%rbp)
+               	movq	%rbp, 160(%r9)
+               	movq	(%rbp), %rax
@@@@
-               	je	0x438147 <Kotlin_initRuntimeIfNeeded+0x827>
-               	movq	152(%r8), %rsi
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rsi, %rdx
+               	je	0x438dce <Kotlin_initRuntimeIfNeeded+0x82e>
+               	movq	152(%r9), %rdi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
@@@@
-               	je	0x438137 <Kotlin_initRuntimeIfNeeded+0x817>
+               	je	0x438dbf <Kotlin_initRuntimeIfNeeded+0x81f>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rsi
-               	jmp	0x43813b <Kotlin_initRuntimeIfNeeded+0x81b>
+               	divq	%rdi
+               	jmp	0x438dc3 <Kotlin_initRuntimeIfNeeded+0x823>
@@@@
-               	divl	%esi
-               	movq	%r12, (%rbp,%rdx,8)
-               	movq	144(%r8), %rbp
-               	movq	%rcx, (%rbp,%rdi,8)
-               	addq	$1, 168(%r8)
-               	movq	%r13, 16(%r12)
-               	movq	-64(%r14), %rbx
+               	divl	%edi
+               	movq	%rbp, (%r12,%rdx,8)
+               	movq	144(%r9), %r12
+               	movq	%rsi, (%r12,%rbx,8)
+               	movq	168(%r9), %rax
+               	addq	$1, %rax
+               	movq	%rax, 168(%r9)
+               	movq	56(%rsp), %r12
+               	movq	%r13, 16(%rbp)
+               	movq	%r9, %rdi
+               	movq	-64(%r12), %rbx
@@@@
-               	movq	%r8, %rdi
@@@@
-               	movq	56(%rsp), %r12
-               	jne	0x4381aa <Kotlin_initRuntimeIfNeeded+0x88a>
+               	jne	0x438e33 <Kotlin_initRuntimeIfNeeded+0x893>
@@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x4381aa <Kotlin_initRuntimeIfNeeded+0x88a>
-               	movq	56(%rsp), %r12
-               	movq	%r14, %rax
-               	movq	%r13, -40(%r14)
-               	movq	(%r12), %rbp
-               	movq	72(%rsp), %rbx
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r12, %rax
+               	movq	%r13, -40(%r12)
+               	movq	(%r14), %rbp
+               	movq	88(%rsp), %rbx
@@@@
-               	movq	%r13, 8(%r12)
-               	movq	271084(%rip), %rbx      # 0x47a4c8 <(anonymous namespace)::initHeadNode>
+               	movq	%r13, 8(%r14)
+               	movq	269732(%rip), %rbx      # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	je	0x438204 <Kotlin_initRuntimeIfNeeded+0x8e4>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	je	0x438e83 <Kotlin_initRuntimeIfNeeded+0x8e3>
+               	nopl	(%rax)
@@@@
-               	jne	0x4381f0 <Kotlin_initRuntimeIfNeeded+0x8d0>
-               	movq	(%r12), %rbp
+               	jne	0x438e70 <Kotlin_initRuntimeIfNeeded+0x8d0>
+               	movq	(%r14), %rbp
@@@@
-               	movq	72(%rbp), %rax
@@@@
+               	movq	72(%rbp), %rax

@@ -38313,35 +39038,35 @@
@@@[(25, 27)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -38352,65 +39077,64 @@
@@@[(3, 4), (5, 12), (13, 18), (28, 34), (39, 43), (62, 70)]@@@
-               	movq	48(%rsp), %r14
@@@@
-               	movq	40(%rsp), %r13
-               	je	0x4383d4 <Kotlin_initRuntimeIfNeeded+0xab4>
-               	movq	270616(%rip), %rbp      # 0x47a4c8 <(anonymous namespace)::initHeadNode>
+               	movq	40(%rsp), %r14
+               	movq	48(%rsp), %r13
+               	je	0x439054 <Kotlin_initRuntimeIfNeeded+0xab4>
+               	movq	269268(%rip), %rbp      # 0x47ac08 <(anonymous namespace)::initHeadNode>
@@@@
-               	je	0x438404 <Kotlin_initRuntimeIfNeeded+0xae4>
-               	movq	(%r12), %rbx
-               	nopl	(%rax)
+               	je	0x439084 <Kotlin_initRuntimeIfNeeded+0xae4>
+               	movq	(%r14), %rbx
@@@@
-               	je	0x438404 <Kotlin_initRuntimeIfNeeded+0xae4>
-               	movq	(%r12), %rbx
-               	nopl	(%rax,%rax)
+               	je	0x439084 <Kotlin_initRuntimeIfNeeded+0xae4>
+               	movq	(%r14), %rbx
+               	nopw	(%rax,%rax)
@@@@
-               	jne	0x4383f0 <Kotlin_initRuntimeIfNeeded+0xad0>
-               	movl	$1, 16(%r12)
+               	jne	0x439070 <Kotlin_initRuntimeIfNeeded+0xad0>
+               	movl	$1, 16(%r14)
@@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	-48(%r14), %rbp
-               	leaq	270427(%rip), %rdi      # 0x47a4a0 <konan::terminationKeyOnceControl>
-               	leaq	2820(%rip), %rsi        # 0x438f50 <konan::onThreadExitInit()>
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	-48(%r12), %rbp
+               	leaq	269083(%rip), %rdi      # 0x47abe0 <konan::terminationKeyOnceControl>
+               	leaq	2884(%rip), %rsi        # 0x439c10 <konan::onThreadExitInit()>

@@ -38462,95 +39186,95 @@
@@@[(14, 16), (69, 72), (137, 140)]@@@
-               	leaq	192(%rax), %rbp
+               	leaq	192(%rax), %r12
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %r14
+               	movq	-64(%r12), %r14
@@@@
-               	callq	0x422b40 <__clang_call_terminate>
+               	callq	0x423150 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -38565,328 +39289,334 @@
@@@[(30, 34), (35, 39), (40, 44), (45, 47), (49, 53), (70, 84), (87, 89), (99, 101), (110, 117), (119, 133), (136, 143), (146, 156), (168, 175), (177, 180), (183, 198), (200, 203), (224, 226), (227, 229), (231, 235), (238, 246), (251, 253), (254, 258), (259, 263), (264, 268), (269, 271), (280, 288), (289, 291), (292, 296), (297, 298), (299, 307), (310, 334), (336, 342), (351, 357), (361, 363), (364, 372), (385, 396), (402, 410), (414, 416), (417, 429), (435, 441), (467, 471), (473, 477)]@@@
-               	movslq	(%rbx), %rax
-               	movq	%rax, 16(%rsp)
+               	movl	(%rbx), %eax
+               	movl	%eax, 12(%rsp)
@@@@
-               	callq	0x437620 <(anonymous namespace)::theState()>
-               	movq	%rax, %r15
+               	callq	0x4382a0 <(anonymous namespace)::theState()>
+               	movq	%rax, %r13
@@@@
-               	movq	248(%rbx), %r13
-               	leaq	328(%r13), %r14
+               	movq	248(%rbx), %r15
+               	leaq	328(%r15), %r14
@@@@
-               	xchgl	%ebx, 328(%r13)
+               	xchgl	%ebx, 328(%r15)
@@@@
-               	testq	%r13, %r13
-               	je	0x4387a7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe7>
+               	testq	%r15, %r15
+               	je	0x439425 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe5>
@@@@
-               	movslq	(%rax), %rsi
-               	movq	152(%r15), %rcx
-               	movq	%rsi, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x4387e1 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x121>
-               	movq	%rsi, %rax
+               	movl	(%rax), %esi
+               	movslq	%esi, %rax
+               	movq	152(%r13), %rcx
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43945e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x11e>
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	jne	0x43886c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x1ac>
-               	jmp	0x43891f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movq	%rdi, %rbx
+               	jne	0x4394dc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19c>
+               	jmp	0x4395a3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	nopl	(%rax)
+               	movq	%rdi, %rbp
@@@@
-               	je	0x43891f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movslq	8(%rdi), %rbp
-               	movq	%rbp, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x438850 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x190>
-               	movq	%rbp, %rax
+               	je	0x4395a3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	8(%rdi), %ebx
+               	movslq	%ebx, %rax
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x4394c0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x180>
@@@@
-               	je	0x43885f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19f>
-               	jmp	0x43891f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	nopl	(%rax)
-               	movl	%ebp, %eax
+               	je	0x4394cf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x18f>
+               	jmp	0x4395a3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	%ebx, %eax
@@@@
-               	jne	0x43891f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	cmpl	%ebp, %esi
-               	jne	0x438810 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
-               	testq	%rbx, %rbx
-               	je	0x43891f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
+               	jne	0x4395a3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	cmpl	%ebx, %esi
+               	jne	0x439490 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
+               	testq	%rbp, %rbp
+               	je	0x4395a3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
@@@@
-               	je	0x43890c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x439586 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x4388cc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20c>
+               	je	0x439546 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x206>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x4388d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
-               	jmp	0x43890c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x4388f3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x233>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43954f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20f>
+               	jmp	0x439586 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movq	(%rdi), %rbx
+               	testq	%rbx, %rbx
+               	je	0x43956d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x22d>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x4388db <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x21b>
+               	je	0x439555 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
+               	movq	%rbp, %rax
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	%r15, %rax
+               	movq	%r13, %rax
@@@@
-               	jne	0x438904 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x244>
-               	movq	%rbp, (%r10)
+               	jne	0x43957e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x23e>
+               	movq	%rbx, (%r10)
@@@@
-               	callq	0x4136f0 <free@plt>
-               	addq	$-1, 168(%r15)
-               	testq	%r13, %r13
+               	callq	0x4136d0 <free@plt>
+               	movq	168(%r13), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 168(%r13)
+               	testq	%r15, %r15
@@@@
-               	movq	%r15, %rdi
+               	movq	%r13, %rdi
@@@@
-               	jmp	0x43895c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x29c>
-               	movq	-64(%r12), %r13
+               	jmp	0x4395e0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2a0>
+               	movq	-64(%r12), %r15
@@@@
-               	xchgl	%ebx, 328(%r13)
-               	movq	%r15, %rdi
+               	xchgl	%ebx, 328(%r15)
+               	movq	%r13, %rdi
@@@@
-               	testq	%r13, %r13
-               	je	0x438987 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
+               	testq	%r15, %r15
+               	je	0x43960b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
@@@@
-               	xchgl	%eax, 328(%r13)
+               	xchgl	%eax, 328(%r15)
@@@@
-               	je	0x438987 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
-               	addq	$328, %r13              # imm = 0x148
-               	movq	%r13, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43960b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
+               	addq	$328, %r15              # imm = 0x148
+               	movq	%r15, %rdi
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	24(%rax), %rbx
+               	movq	24(%rax), %rbp
@@@@
-               	cmpq	%rbx, %r13
-               	je	0x438a85 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	cmpq	%rbp, %r13
+               	je	0x439705 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	40(%rax), %r14
@@@@
-               	leaq	39057(%rip), %rbp       # 0x442240 <_IO_stdin_used+0x240>
-               	jmp	0x4389e5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	movq	40(%rax), %r14
+               	leaq	39501(%rip), %rbx       # 0x443080 <_IO_stdin_used+0x240>
+               	jmp	0x439665 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x438fd0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	addq	$40, %rbx
-               	cmpq	%r14, %rbx
-               	je	0x438a40 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
-               	cmpq	%rbx, %r13
-               	je	0x438a85 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
-               	movl	(%rbx), %ecx
-               	cmpq	$3, %rcx
-               	ja	0x4389d3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
-               	movq	8(%rbx), %rax
-               	movslq	(%rbp,%rcx,4), %rcx
-               	addq	%rbp, %rcx
+               	callq	0x439c90 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	addq	$40, %rbp
+               	cmpq	%r14, %rbp
+               	je	0x4396c0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
+               	cmpq	%rbp, %r13
+               	je	0x439705 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	movl	(%rbp), %ecx
+               	cmpl	$3, %ecx
+               	ja	0x439653 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
+               	movq	8(%rbp), %rax
+               	movslq	(%rbx,%rcx,4), %rcx
+               	addq	%rbx, %rcx
@@@@
-               	movq	%rbp, %r15
-               	movq	16(%rbx), %rsi
-               	movq	24(%rbx), %rbp
+               	movq	%rbx, %r15
+               	movq	24(%rbp), %rbx
+               	movq	16(%rbp), %rsi
@@@@
-               	movq	%rbp, %rdi
-               	callq	0x438fd0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	movq	%r15, %rbp
+               	movq	%rbx, %rdi
+               	callq	0x439c90 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	movq	%r15, %rbx
@@@@
-               	movq	8(%r12), %rbx
+               	movq	8(%r12), %rbp
@@@@
-               	leaq	480(%rbx), %r14
-               	cmpq	%rbx, %r13
-               	jne	0x4389e5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	jmp	0x438a85 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	leaq	480(%rbp), %r14
+               	cmpq	%rbp, %r13
+               	jne	0x439665 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	jmp	0x439705 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	112(%r14), %rbp
-               	leaq	96(%r14), %rbx
-               	cmpq	%rbx, %rbp
-               	movq	8(%rsp), %r13
-               	jne	0x438c94 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5d4>
+               	movq	112(%r14), %rbx
+               	leaq	96(%r14), %rbp
+               	cmpq	%rbp, %rbx
+               	movl	12(%rsp), %r13d
+               	movq	16(%rsp), %r15
+               	jne	0x439924 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5e4>
@@@@
-               	callq	0x423f90 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
-               	movq	248(%r14), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	callq	0x4245a0 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
+               	movq	248(%r14), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
+               	testq	%rbx, %rbx
@@@@
-               	je	0x438b16 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x438b16 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
+               	je	0x43979a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x43979a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
@@@@
-               	je	0x438b16 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	movq	%rbp, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43979a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	movq	%rbx, %rdi
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	callq	0x4136f0 <free@plt>
-               	movq	(%r13), %rax
+               	callq	0x4136d0 <free@plt>
+               	movq	(%r15), %rax
@@@@
-               	movq	(%r13), %rbx
-               	movl	268576(%rip), %edi      # 0x47a49c <konan::terminationKey>
+               	movq	(%r15), %rbx
+               	movl	267218(%rip), %edi      # 0x47abdc <konan::terminationKey>

@@ -38895,200 +39625,217 @@
@@@[(23, 24), (35, 53), (73, 82), (95, 102), (103, 109), (113, 116), (118, 122), (124, 126), (127, 129), (130, 136), (138, 140), (141, 143), (147, 151), (152, 157), (160, 174), (176, 183), (186, 194), (200, 212), (223, 224), (235, 242), (244, 247), (256, 263), (265, 268), (301, 307)]@@@
+               	movq	16(%rsp), %r15
@@@@
-               	callq	0x4136f0 <free@plt>
-               	jmp	0x438d17 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x657>
-               	nopl	(%rax,%rax)
-               	movq	%rbp, %rdi
-               	callq	0x43b8f1 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
-               	movq	%rax, %rbp
-               	cmpq	%rbx, %rax
-               	je	0x438a9f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3df>
-               	movq	40(%rbp), %rsi
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x4399c3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x683>
+               	nop
+               	movq	%rbx, %rdi
+               	callq	0x43c731 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
+               	movq	%rax, %rbx
+               	cmpq	%rbp, %rax
+               	je	0x439724 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3e4>
+               	movq	40(%rbx), %rsi
@@@@
-               	je	0x438d07 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x647>
+               	je	0x4399b3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x673>
+               	movq	352(%rbx), %rbp
+               	testq	%rbp, %rbp
+               	je	0x439990 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x650>
+               	movq	%rbp, %rdi
+               	callq	0x424000 <void std::allocator_traits<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node> >::_S_destroy<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>(kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>&, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node*, ...)>
+               	movq	%rbp, %rdi
+               	callq	0x4136d0 <free@plt>
@@@@
-               	cmpq	$0, 156313(%rip)        # 0x45efb8 <write+0x45efb8>
-               	je	0x438d2d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x66d>
-               	leaq	163824(%rip), %rdi      # 0x460d18 <kotlin::mm::GlobalData::instance_+0x28>
+               	movslq	%r13d, %rbp
+               	cmpq	$0, 153066(%rip)        # 0x45efb8 <write+0x45efb8>
+               	je	0x4399dc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x69c>
+               	leaq	162441(%rip), %rdi      # 0x461460 <kotlin::mm::GlobalData::instance_+0x28>
@@@@
-               	movq	%r13, %rdi
-               	callq	0x4136f0 <free@plt>
-               	callq	0x437620 <(anonymous namespace)::theState()>
+               	movq	%r15, %rdi
+               	callq	0x4136d0 <free@plt>
+               	callq	0x4382a0 <(anonymous namespace)::theState()>
@@@@
-               	movq	16(%rsp), %rcx
-               	movq	%rcx, %rax
+               	movq	%rbp, %rax
@@@@
-               	je	0x438d7d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6bd>
-               	movq	%rcx, %rax
+               	je	0x439a27 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6e7>
+               	movq	%rbp, %rax
@@@@
-               	movq	%rdx, %r8
+               	movq	%rdx, %rcx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	jne	0x438d9a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6da>
-               	jmp	0x438f02 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movl	%ecx, %eax
+               	jne	0x439a44 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x704>
+               	jmp	0x439bc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %r8d
+               	movl	%edx, %ecx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	cmpl	%ecx, 8(%rbx)
-               	jne	0x438db0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpl	%r13d, 8(%rbx)
+               	jne	0x439a60 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	jne	0x438e0c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x74c>
-               	jmp	0x438f02 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
+               	jne	0x439aad <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x76d>
+               	jmp	0x439bc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	nop
@@@@
-               	je	0x438f02 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x438df0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x730>
-               	movq	%rsi, %rax
+               	je	0x439bc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x439a90 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x750>
@@@@
-               	cmpq	%r8, %rdx
-               	je	0x438dff <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x73f>
-               	jmp	0x438f02 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	nopl	(%rax)
+               	cmpq	%rcx, %rdx
+               	je	0x439a9f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x75f>
+               	jmp	0x439bc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
@@@@
-               	cmpq	%r8, %rdx
-               	jne	0x438f02 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	cmpl	%ecx, %esi
-               	jne	0x438db0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpq	%rcx, %rdx
+               	jne	0x439bc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	cmpl	%r13d, %esi
+               	jne	0x439a60 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	movslq	8(%rbx), %rax
-               	movq	%rax, %rcx
-               	orq	%rdi, %rcx
-               	shrq	$32, %rcx
-               	je	0x438e36 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x776>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x439adc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x79c>
+               	movq	%rcx, %rax
@@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x438eec <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x82c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rcx
+               	je	0x439ba7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x867>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rdx
+               	movq	%rdx, %rcx
@@@@
-               	je	0x438eac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7ec>
+               	je	0x439b67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x827>
+               	movq	%rdx, %rax
@@@@
-               	je	0x438ed3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x813>
-               	movslq	8(%r10), %rax
-               	movq	%rax, %rdx
+               	je	0x439b8e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x84e>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x438ebb <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7fb>
+               	je	0x439b76 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x836>
+               	movq	%rbp, %rax
@@@@
-               	callq	0x4136f0 <free@plt>
-               	addq	$-1, 224(%r14)
+               	callq	0x4136d0 <free@plt>
+               	movq	224(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 224(%r14)

@@ -39100,23 +39847,23 @@
@@@[(13, 17)]@@@
-               	callq	0x422b40 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x423150 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -39205,91 +39952,95 @@
@@@[(20, 30), (33, 37), (38, 42), (51, 57), (59, 61), (62, 64), (65, 67), (68, 76), (78, 80), (81, 85), (86, 88), (89, 93), (94, 100), (101, 103), (112, 117), (118, 121)]@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	callq	0x437620 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%r15)
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	callq	0x4382a0 <(anonymous namespace)::theState()>
+               	movq	%rax, %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%r15)
@@@@
-               	je	0x439160 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x190>
-               	movl	%ebx, %eax
+               	je	0x439e2b <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x19b>
+               	movl	%ebp, %eax
@@@@
-               	testl	%ebx, %ebx
-               	jne	0x43911e <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
+               	testl	%ebp, %ebp
+               	jne	0x439dde <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
@@@@
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r12)
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	264(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 264(%rbx)
@@@@
-               	movq	%r12, %rdi
+               	movq	%rbx, %rdi
@@@@
-               	movq	%r14, %rbx
+               	movq	%r14, %r12
@@@@
-               	xchgl	%eax, (%rbx)
+               	xchgl	%eax, (%r12)
@@@@
-               	je	0x4391a3 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1d3>
-               	jmp	0x4391ba <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	callq	0x437620 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
+               	je	0x439e78 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1e8>
+               	jmp	0x439e8f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
+               	callq	0x4382a0 <(anonymous namespace)::theState()>
+               	movq	%rax, %rbx
@@@@
-               	movq	%r12, %rdi
+               	movq	%rbx, %rdi
@@@@
-               	addl	$1, 264(%r12)
+               	movl	264(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 264(%rbx)
@@@@
-               	movq	-64(%rax), %rbx
+               	movq	-64(%rax), %r12
@@@@
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%r12, %rdi
+               	xchgl	%ebp, 328(%r12)
+               	movq	%rbx, %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4391f6 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x226>
-               	addq	$328, %rbx              # imm = 0x148
+               	testq	%r12, %r12
+               	je	0x439ecb <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x23b>
+               	addq	$328, %r12              # imm = 0x148
@@@@
-               	xchgl	%eax, (%rbx)
+               	xchgl	%eax, (%r12)
@@@@
-               	je	0x4391ba <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	movq	%rbx, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$40, %r12
+               	je	0x439e8f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
@@@@
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -39298,8 +40049,8 @@
@@@[(3, 7)]@@@
-               	addq	$40, %r12
-               	movq	%r12, %rdi
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -39316,24 +40067,24 @@
@@@[(3, 7)]@@@
-               	jmp	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax,%rax)

@@ -39509,101 +40260,107 @@
@@@[(44, 45), (48, 57), (67, 72), (73, 78), (103, 105), (128, 140)]@@@
+               	subq	$32, %rsp
@@@@
-               	cmpxchgl	%ebp, 160897(%rip)      # 0x460a14 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43959a <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1a>
-               	callq	0x439620 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	cmpxchgl	%ebp, 159517(%rip)      # 0x461184 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43a26e <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1e>
+               	callq	0x43a320 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	movq	$0, 16(%rsp)
+               	movl	$1, 24(%rsp)
+               	movb	$0, 28(%rsp)
@@@@
-               	movl	160841(%rip), %edi      # 0x460a10 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 16(%rsp)
+               	movl	%ebp, 24(%rsp)
+               	movb	$1, 28(%rsp)
+               	movl	159425(%rip), %edi      # 0x461180 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x435940 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	leaq	8(%rsp), %rdi
+               	callq	0x436320 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	nopw	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43963b <(anonymous namespace)::TerminateHandler::instance()+0xb>
-               	leaq	-996(%rip), %rdi        # 0x439270 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
-               	callq	0x43b50a <std::set_terminate(void (*)())>
-               	movq	%rax, 265856(%rip)      # 0x47a4e0 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
-               	leaq	265841(%rip), %rdi      # 0x47a4d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
-               	callq	0x43b4c0 <__cxa_guard_release>
+               	je	0x43a33b <(anonymous namespace)::TerminateHandler::instance()+0xb>
+               	leaq	-1044(%rip), %rdi       # 0x439f40 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
+               	callq	0x43c34a <std::set_terminate(void (*)())>
+               	movq	%rax, 264384(%rip)      # 0x47ac20 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
+               	leaq	264369(%rip), %rdi      # 0x47ac18 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	callq	0x43c300 <__cxa_guard_release>

@@ -39612,51 +40369,60 @@
@@@[(3, 5), (8, 18), (28, 33), (34, 39), (68, 75)]@@@
+               	subq	$32, %rsp
+               	movq	%rdi, 24(%rsp)
@@@@
-               	cmpxchgl	%ebp, 160657(%rip)      # 0x460a14 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43968a <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x1a>
-               	callq	0x439710 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	cmpxchgl	%ebp, 159224(%rip)      # 0x461184 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43a398 <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x28>
+               	leaq	24(%rsp), %rdi
+               	callq	0x43a440 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	movq	$0, 8(%rsp)
+               	movl	$1, 16(%rsp)
+               	movb	$0, 20(%rsp)
@@@@
-               	movl	160601(%rip), %edi      # 0x460a10 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 8(%rsp)
+               	movl	%ebp, 16(%rsp)
+               	movb	$1, 20(%rsp)
+               	movl	159127(%rip), %edi      # 0x461180 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x435940 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x436320 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x41a230 <ReportUnhandledException>
-               	callq	0x4350a0 <konan::abort()>
-               	nopl	(%rax,%rax)
+               	movq	(%rdi), %rdi
+               	callq	0x41a3d0 <ReportUnhandledException>
+               	callq	0x435a80 <konan::abort()>
+               	nop

@@ -39818,23 +40584,24 @@
@@@[(6, 7)]@@@
+               	movq	$0, (%rsp)

@@ -39848,34 +40615,35 @@
@@@[(29, 31), (34, 35)]@@@
-               	movl	%ebp, %edi
+               	movl	24(%rcx), %edi
@@@@
+               	nopl	(%rax)

@@ -39928,93 +40696,157 @@
@@@[(3, 5), (10, 16), (18, 60), (62, 123), (126, 141), (150, 173), (177, 179), (180, 183), (189, 191), (200, 206), (207, 213)]@@@
-               	movq	%rdi, %rbx
+               	movq	%rdi, %r14
@@@@
-               	jne	0x439c70 <Kotlin_io_Console_print+0x180>
-               	leaq	24(%rsp), %r15
-               	movq	%r15, 8(%rsp)
+               	jne	0x43aaaf <Kotlin_io_Console_print+0x27f>
+               	leaq	24(%rsp), %r13
+               	movq	%r13, 8(%rsp)
@@@@
-               	movl	8(%rbx), %ebp
-               	cmpq	$16, %rbp
-               	jb	0x439b5e <Kotlin_io_Console_print+0x6e>
-               	cmpl	$30, %ebp
-               	movl	$30, %r14d
-               	cmoval	%ebp, %r14d
-               	leaq	1(%r14), %rdi
+               	movl	8(%r14), %ebp
+               	movq	16(%rsp), %r12
+               	cmpq	%rbp, %r12
+               	cmovaq	%r12, %rbp
+               	movq	8(%rsp), %r15
+               	cmpq	%r13, %r15
+               	movl	$15, %eax
+               	cmovneq	24(%rsp), %rax
+               	cmpq	%rax, %rbp
+               	je	0x43a93a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$15, %rbp
+               	ja	0x43a8cf <Kotlin_io_Console_print+0x9f>
+               	cmpq	%rax, %rbp
+               	ja	0x43a8cf <Kotlin_io_Console_print+0x9f>
+               	cmpq	%r13, %r15
+               	je	0x43a93a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$-1, %r12
+               	je	0x43aa14 <Kotlin_io_Console_print+0x1e4>
+               	testq	%r12, %r12
+               	jne	0x43aa02 <Kotlin_io_Console_print+0x1d2>
+               	movb	(%r15), %al
+               	movb	%al, 24(%rsp)
+               	jmp	0x43aa14 <Kotlin_io_Console_print+0x1e4>
+               	testq	%rbp, %rbp
+               	js	0x43aabe <Kotlin_io_Console_print+0x28e>
+               	movq	%r13, %rbx
+               	cmpq	%rax, %rbp
+               	jbe	0x43a8f9 <Kotlin_io_Console_print+0xc9>
+               	addq	%rax, %rax
+               	cmpq	%rax, %rbp
+               	jae	0x43a8f9 <Kotlin_io_Console_print+0xc9>
+               	movabsq	$9223372036854775807, %rbp # imm = 0x7FFFFFFFFFFFFFFF
+               	cmpq	%rbp, %rax
+               	cmovbq	%rax, %rbp
+               	leaq	1(%rbp), %rdi
@@@@
-               	movq	%rax, 8(%rsp)
-               	movq	%r14, 24(%rsp)
-               	movq	%rbp, %rax
-               	addq	%rbp, %rax
-               	je	0x439bf4 <Kotlin_io_Console_print+0x104>
-               	addq	$16, %rbx
-               	leaq	(%rbx,%rbp,2), %r12
-               	movl	$65533, %r13d           # imm = 0xFFFD
-               	leaq	8(%rsp), %r14
-               	jmp	0x439bbd <Kotlin_io_Console_print+0xcd>
-               	nop
-               	cmpq	%r12, %rbp
-               	je	0x439be5 <Kotlin_io_Console_print+0xf5>
-               	movzwl	2(%rbx), %ecx
-               	shll	$10, %eax
-               	leal	(%rax,%rcx), %edi
-               	addl	$4238353408, %edi       # imm = 0xFCA02400
-               	movl	%ecx, %eax
-               	andl	$64512, %eax            # imm = 0xFC00
-               	addq	$4, %rbx
-               	cmpl	$56320, %eax            # imm = 0xDC00
-               	cmovnel	%r13d, %edi
-               	cmoveq	%rbx, %rbp
-               	movq	%r14, %rsi
-               	callq	0x435ff0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
-               	movq	%rbp, %rbx
-               	cmpq	%r12, %rbp
-               	je	0x439bf4 <Kotlin_io_Console_print+0x104>
-               	leaq	2(%rbx), %rbp
-               	movzwl	(%rbx), %eax
+               	movq	%rax, %r13
+               	cmpq	$-1, %r12
+               	je	0x43a920 <Kotlin_io_Console_print+0xf0>
+               	testq	%r12, %r12
+               	jne	0x43a9e2 <Kotlin_io_Console_print+0x1b2>
+               	movb	(%r15), %al
+               	movb	%al, (%r13)
+               	cmpq	%rbx, %r15
+               	je	0x43a92d <Kotlin_io_Console_print+0xfd>
+               	movq	%r15, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movq	%rbp, 24(%rsp)
+               	movq	%rbx, %r13
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	je	0x43aa31 <Kotlin_io_Console_print+0x201>
+               	addq	$16, %r14
+               	leaq	(%r14,%rax,2), %rbp
+               	leaq	8(%rsp), %r15
+               	jmp	0x43a979 <Kotlin_io_Console_print+0x149>
+               	nopl	(%rax)
+               	movl	$65533, %edi            # imm = 0xFFFD
+               	movq	%r15, %rsi
+               	callq	0x436c70 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	movq	%rbx, %r14
+               	cmpq	%rbp, %rbx
+               	je	0x43aa31 <Kotlin_io_Console_print+0x201>
+               	leaq	2(%r14), %rbx
+               	movzwl	(%r14), %eax
@@@@
-               	je	0x439b80 <Kotlin_io_Console_print+0x90>
+               	jne	0x43a9c0 <Kotlin_io_Console_print+0x190>
+               	cmpq	%rbp, %rbx
+               	je	0x43a9d1 <Kotlin_io_Console_print+0x1a1>
+               	movzwl	2(%r14), %ecx
+               	movl	%ecx, %edx
+               	andl	$64512, %edx            # imm = 0xFC00
+               	cmpl	$56320, %edx            # imm = 0xDC00
+               	jne	0x43a960 <Kotlin_io_Console_print+0x130>
+               	shll	$10, %eax
+               	addq	$4, %r14
+               	leal	(%rax,%rcx), %edi
+               	addl	$4238353408, %edi       # imm = 0xFCA02400
+               	movq	%r14, %rbx
+               	jmp	0x43a965 <Kotlin_io_Console_print+0x135>
@@@@
-               	callq	0x435ff0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	callq	0x436c70 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	jmp	0x43aa31 <Kotlin_io_Console_print+0x201>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x4136f0 <memcpy@plt>
+               	cmpq	%rbx, %r15
+               	jne	0x43a925 <Kotlin_io_Console_print+0xf5>
+               	jmp	0x43a92d <Kotlin_io_Console_print+0xfd>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x4136f0 <memcpy@plt>
+               	movq	%r15, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	jne	0x43a94a <Kotlin_io_Console_print+0x11a>
@@@@
-               	leaq	328(%rbx), %r12
+               	leaq	328(%rbx), %r14
@@@@
-               	movl	16(%rsp), %edx
+               	movq	16(%rsp), %rax
+               	movl	%eax, %edx
@@@@
-               	xchgl	%eax, (%r12)
+               	xchgl	%eax, (%r14)
@@@@
-               	je	0x439c52 <Kotlin_io_Console_print+0x162>
-               	movq	%r12, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43aa91 <Kotlin_io_Console_print+0x261>
+               	movq	%r14, %rdi
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x439c61 <Kotlin_io_Console_print+0x171>
-               	callq	0x4136f0 <free@plt>
+               	cmpq	%r13, %rdi
+               	je	0x43aaa0 <Kotlin_io_Console_print+0x270>
+               	callq	0x4136d0 <free@plt>

@@ -40023,31 +40855,33 @@
@@@[(3, 13), (17, 25), (27, 29), (38, 48)]@@@
-               	leaq	118985(%rip), %rsi      # 0x456d40 <ktypeglobal:kotlin.String#internal>
-               	movq	%rbx, %rdi
-               	callq	0x419d80 <ThrowClassCastException>
-               	movq	%rax, %r14
+               	leaq	117194(%rip), %rsi      # 0x457480 <ktypeglobal:kotlin.String#internal>
+               	movq	%r14, %rdi
+               	callq	0x419f20 <ThrowClassCastException>
+               	leaq	41979(%rip), %rdi       # 0x444ec0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x4362a0 <std::__throw_length_error(char const*)>
+               	movq	%rax, %r15
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x439c96 <Kotlin_io_Console_print+0x1a6>
-               	callq	0x4136f0 <free@plt>
-               	movq	%r14, %rdi
+               	cmpq	%r13, %rdi
+               	je	0x43aae1 <Kotlin_io_Console_print+0x2b1>
+               	callq	0x4136d0 <free@plt>
+               	movq	%r15, %rdi
@@@@
-               	xchgl	%eax, (%r12)
+               	xchgl	%eax, (%r14)
@@@@
-               	je	0x439c87 <Kotlin_io_Console_print+0x197>
-               	movq	%r12, %rdi
-               	callq	0x423e30 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x439c87 <Kotlin_io_Console_print+0x197>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x43aad2 <Kotlin_io_Console_print+0x2a2>
+               	movq	%r14, %rdi
+               	callq	0x424440 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x43aad2 <Kotlin_io_Console_print+0x2a2>
+               	nopl	(%rax,%rax)

@@ -40149,40 +40983,39 @@
@@@[(21, 24), (28, 29), (32, 34), (35, 36)]@@@
-               	movq	288(%rax), %rcx
-               	jmp	0x439f1c <Init_and_run_start+0x18c>
+               	jmp	0x43ad53 <Init_and_run_start+0x183>
@@@@
-               	movq	288(%rax), %rcx
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)
@@@@
+               	movq	288(%rax), %rcx

@@ -40191,33 +41024,34 @@
@@@[(6, 7), (8, 10)]@@@
-               	movaps	%xmm0, 16(%rsp)
@@@@
+               	movaps	%xmm0, 16(%rsp)
+               	movq	288(%rax), %rcx
