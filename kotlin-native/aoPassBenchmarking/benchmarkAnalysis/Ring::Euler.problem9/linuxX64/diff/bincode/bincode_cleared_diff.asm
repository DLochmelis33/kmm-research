--- ../../benchmarkAnalysis/Ring::Euler.problem9/linuxX64/baseline/bincode/bincode.asm	2023-07-19 02:47:27.310650338 +0200
+++ ../../benchmarkAnalysis/Ring::Euler.problem9/linuxX64/unordered/bincode/bincode.asm	2023-07-19 02:59:24.280425652 +0200

@@ -1,496 +1,496 @@
@@@[(1, 3), (62, 66), (69, 73), (76, 80)]@@@
-../../benchmarkAnalysis/Ring::Euler.problem9/linuxX64/baseline/main.kexe:	file format elf64-x86-64
+../../benchmarkAnalysis/Ring::Euler.problem9/linuxX64/unordered/main.kexe:	file format elf64-x86-64
@@@@
-<strlen@plt>:
-               	jmpq	*301394(%rip)           # 0x45d028 <_GLOBAL_OFFSET_TABLE_+0x40>
+<free@plt>:
+               	jmpq	*305490(%rip)           # 0x45e028 <_GLOBAL_OFFSET_TABLE_+0x40>
@@@@
-<memcpy@plt>:
-               	jmpq	*301386(%rip)           # 0x45d030 <_GLOBAL_OFFSET_TABLE_+0x48>
+<strlen@plt>:
+               	jmpq	*305482(%rip)           # 0x45e030 <_GLOBAL_OFFSET_TABLE_+0x48>
@@@@
-<free@plt>:
-               	jmpq	*301378(%rip)           # 0x45d038 <_GLOBAL_OFFSET_TABLE_+0x50>
+<memcpy@plt>:
+               	jmpq	*305474(%rip)           # 0x45e038 <_GLOBAL_OFFSET_TABLE_+0x50>

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
-               	leaq	71193(%rip), %rax       # 0x425500 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
+               	movq	%r14, 128(%rbx)
+               	leaq	73017(%rip), %rax       # 0x425c20 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>

@@ -606,78 +606,76 @@
@@@[(14, 22), (23, 55), (58, 64), (65, 74), (76, 78), (79, 90), (105, 109), (110, 112), (114, 118)]@@@
-               	movq	168(%r13), %r14
-               	movq	%r12, 208(%rsp)
-               	leaq	71229(%rip), %rax       # 0x4255c0 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	168(%r13), %r12
+               	movq	%r14, 216(%rsp)
+               	leaq	73053(%rip), %rax       # 0x425ce0 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	%rax, 240(%rsp)
+               	leaq	73054(%rip), %rax       # 0x425cf0 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
@@@@
-               	leaq	71230(%rip), %rax       # 0x4255d0 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
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
-               	leaq	306300(%rip), %rax      # 0x45ed40 <kotlin::mm::GlobalData::instance_+0x50>
+               	movq	%r12, 8(%rbx)
+               	leaq	312264(%rip), %rax      # 0x460488 <kotlin::mm::GlobalData::instance_+0x50>
@@@@
-               	movq	%r14, 24(%rbx)
+               	movq	%r12, 24(%rbx)
@@@@
-               	movq	%r14, 48(%rbx)
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
+               	movq	%r12, 48(%rbx)
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>

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
-               	leaq	59932(%rip), %r15       # 0x422c70 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
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
+               	leaq	61396(%rip), %rbp       # 0x423280 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
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
-               	leaq	70078(%rip), %rbp       # 0x425600 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
-               	movq	%rbp, 96(%rsp)
+               	leaq	71710(%rip), %rbx       # 0x425d20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
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
-               	movq	%r13, 305311(%rip)      # 0x45edf8 <kotlin::mm::GlobalData::instance_+0x108>
-               	addq	$248, %rsp
+               	movq	%r13, 311076(%rip)      # 0x460540 <kotlin::mm::GlobalData::instance_+0x108>
+               	addq	$264, %rsp              # imm = 0x108

@@ -914,185 +971,187 @@
@@@[(3, 5), (49, 55), (59, 66), (92, 102), (118, 128), (132, 136), (148, 152), (175, 181), (194, 202), (217, 221), (238, 243), (244, 246), (247, 254), (271, 272)]@@@
+               	leaq	198475(%rip), %rdi      # 0x444d80 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x436170 <std::__throw_length_error(char const*)>
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
-               	callq	0x43bcc8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 297267(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x41468f <_GLOBAL__sub_I_GlobalData.cpp+0xa2f>
+               	leaq	40(%rbx), %r15
+               	movq	%r15, %rdi
+               	callq	0x43cb08 <std::condition_variable::notify_all()>
+               	cmpq	$0, 301161(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x414759 <_GLOBAL__sub_I_GlobalData.cpp+0xaf9>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43bcc8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 297193(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	jne	0x414660 <_GLOBAL__sub_I_GlobalData.cpp+0xa00>
-               	jmp	0x4146e9 <_GLOBAL__sub_I_GlobalData.cpp+0xa89>
+               	movq	%r15, %rdi
+               	callq	0x43cb08 <std::condition_variable::notify_all()>
+               	cmpq	$0, 301087(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	jne	0x41472a <_GLOBAL__sub_I_GlobalData.cpp+0xaca>
+               	jmp	0x4147b3 <_GLOBAL__sub_I_GlobalData.cpp+0xb53>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43bcc8 <std::condition_variable::notify_all()>
+               	movq	%r15, %rdi
+               	callq	0x43cb08 <std::condition_variable::notify_all()>
@@@@
-               	callq	0x43bc9a <std::condition_variable::~condition_variable()>
-               	leaq	16(%rbx), %r12
+               	callq	0x43cada <std::condition_variable::~condition_variable()>
+               	leaq	16(%rbx), %r15
@@@@
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%r12, %rdi
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r15, %rdi
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	movq	%r15, %rdi
-               	callq	0x423100 <kotlin::ScopedThread::~ScopedThread()>
-               	movq	240(%rsp), %rdi
-               	callq	0x426860 <GCStateHolder::~GCStateHolder()>
+               	movq	%r12, %rdi
+               	callq	0x423710 <kotlin::ScopedThread::~ScopedThread()>
+               	movq	248(%rsp), %rdi
+               	callq	0x427030 <GCStateHolder::~GCStateHolder()>
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x4230f0 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x423700 <std::thread::~thread()>
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
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testl	%r12d, %r12d
-               	js	0x415474 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x264>
+               	je	0x415372 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x92>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	callq	0x41ec80 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movq	%r12, %rdx
+               	callq	0x41ee50 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
@@@@
-               	movl	%r12d, %esi
+               	movl	%ebp, %esi

@@ -2847,9 +2885,10 @@
@@@[(3, 4)]@@@
+               	movq	32(%rsp), %rax

@@ -2877,20 +2916,19 @@
@@@[(12, 15), (17, 18), (20, 21)]@@@
-               	callq	0x419de0 <ThrowInvalidReceiverTypeException>
-               	nopl	(%rax,%rax)
+               	callq	0x419f80 <ThrowInvalidReceiverTypeException>
@@@@
+               	pushq	%rbp
@@@@
-               	pushq	%r13

@@ -2901,30 +2939,30 @@
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

@@ -2932,16 +2970,16 @@
@@@[(17, 19)]@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)

@@ -2949,118 +2987,119 @@
@@@[(3, 5), (6, 8), (10, 26), (27, 30), (32, 36), (37, 58), (63, 67), (71, 77), (81, 111), (112, 116), (118, 131), (132, 134), (135, 137), (140, 148), (149, 151), (155, 157), (167, 169), (171, 173), (176, 177), (179, 180), (181, 183)]@@@
-               	movq	288(%r12), %rax
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rbx, 288(%r12)
+               	movq	%rbx, 288(%rbp)
@@@@
-               	movslq	16(%r14), %r15
-               	testq	%r15, %r15
-               	jns	0x41685f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	movq	8(%r14), %r13
-               	movq	%r13, 120(%rsp)
-               	movq	%r13, 128(%rsp)
-               	movl	8(%r13), %edx
-               	movl	%edx, %ebx
+               	movl	16(%r14), %r15d
+               	testl	%r15d, %r15d
+               	jns	0x4168bf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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
-               	callq	0x417ba0 <checkRangeIndexes>
-               	movq	(%r13), %rax
+               	callq	0x417ce0 <checkRangeIndexes>
+               	movq	(%r12), %rax
@@@@
-               	jge	0x41685f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	leaq	16(,%r15,2), %r10
-               	addq	%r13, %r10
-               	movl	%r15d, %r9d
-               	notl	%r9d
-               	addl	%ebx, %r9d
-               	cmpl	$15, %r9d
-               	jb	0x41683c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
-               	addq	$1, %r9
-               	movq	%r9, %r8
+               	jge	0x4168bf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	movslq	%r15d, %r9
+               	leaq	(%r12,%r9,2), %r11
+               	addq	$16, %r11
+               	movl	%r15d, %r10d
+               	notl	%r10d
+               	addl	%ebx, %r10d
+               	cmpl	$15, %r10d
+               	jb	0x41689c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
+               	addq	$1, %r10
+               	movq	%r10, %r8
@@@@
-               	movl	%edi, %esi
-               	andl	$7, %esi
+               	movl	%edi, %edx
+               	andl	$7, %edx
@@@@
-               	jmp	0x416801 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
-               	leaq	240(,%r15,2), %rdx
-               	addq	%r13, %rdx
+               	jmp	0x416861 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
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
-               	jne	0x416790 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
-               	testq	%rsi, %rsi
-               	je	0x416830 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
-               	movq	%r15, %rcx
-               	addq	%r15, %rcx
-               	leaq	(%rcx,%rax,2), %rax
-               	addq	%r13, %rax
+               	jne	0x4167f0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
+               	testq	%rdx, %rdx
+               	je	0x416890 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
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
-               	jne	0x416820 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
-               	cmpq	%r8, %r9
-               	je	0x41685f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	incq	%rdx
+               	jne	0x416880 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
+               	cmpq	%r8, %r10
+               	je	0x4168bf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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

@@ -3151,45 +3190,45 @@
@@@[(23, 24), (25, 30)]@@@
-               	movq	16(%r14,%rax,8), %rax
@@@@
-               	cmpq	16(%r15,%rcx,8), %rax
-               	jne	0x416b3e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>
+               	movq	16(%r15,%rcx,8), %rcx
+               	cmpq	%rcx, 16(%r14,%rax,8)
+               	jne	0x416b8e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>

@@ -3446,240 +3485,293 @@
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
-               	je	0x416fe4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc4>
+               	movq	%rcx, 576(%rsp)
+               	movq	24(%rbx), %rcx
+               	movq	%rcx, 8(%rsp)
+               	movl	8(%rcx), %r13d
+               	movq	-64(%rax), %rdx
@@@@
-               	xchgl	%ecx, 328(%rdi)
-               	jmp	0x416fe6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc6>
-               	xorl	%edi, %edi
+               	movl	$1, %esi
+               	xchgl	%esi, 328(%rdx)
+               	movl	%esi, 108(%rsp)
+               	movq	$0, 120(%rsp)
+               	movl	$1, 128(%rsp)
+               	movb	$0, 132(%rsp)
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x417064 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xf4>
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 120(%rsp)
+               	movl	%ecx, 128(%rsp)
+               	movb	$1, 132(%rsp)
+               	movq	%rdx, 144(%rsp)
@@@@
-               	movaps	%xmm0, 48(%rsp)
-               	movq	$0, 64(%rsp)
-               	testl	%ebp, %ebp
-               	je	0x41763a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x71a>
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
+               	jae	0x41717e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x20e>
+               	movq	40(%rsp), %rbx
+               	movq	%rbx, %r12
+               	subq	%r15, %r12
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
+               	movq	%rax, %r14
+               	cmpq	%r15, %rbx
+               	je	0x41714d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	leaq	16(%r14), %rax
+               	leaq	16(%r15), %rcx
+               	jmp	0x417105 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x195>
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
+               	je	0x41711a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1aa>
+               	movq	%rax, -16(%rax)
+               	movq	-16(%rcx), %rdx
+               	cmpq	%rcx, %rdx
+               	jne	0x4170d0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x160>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x4170da <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x16a>
+               	cmpq	%rbx, %r15
+               	je	0x41714d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	%r15, %rbp
+               	jmp	0x417139 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c9>
+               	nopl	(%rax,%rax)
+               	addq	$16, %rbp
+               	cmpq	%rbx, %rbp
+               	je	0x41714d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417130 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x417130 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	sarq	$5, %r12
+               	testq	%r15, %r15
+               	je	0x41715e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1ee>
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
-               	jmp	0x417280 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x360>
-               	movq	%rcx, (%r14)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14)
-               	movq	32(%rsp), %r15
-               	movq	104(%rsp), %rbp
+               	testl	%r13d, %r13d
+               	je	0x417766 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x7f6>
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
+               	jmp	0x4173d4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
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
-               	je	0x41751b <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5fb>
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
+               	je	0x417662 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6f2>
+               	movq	16(%rbx,%r14,8), %rcx
@@@@
-               	jb	0x417273 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x353>
-               	movq	%rax, 16(%rsp)
+               	jb	0x4173c7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x457>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	56(%rsp), %r14
-               	movq	%r14, %r15
-               	movq	%rax, 24(%rsp)
-               	subq	%rax, %r15
-               	movq	%r15, %rbx
-               	sarq	$5, %rbx
-               	leaq	183300(%rip), %rax      # 0x443ebb <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
+               	movq	40(%rsp), %r13
+               	movq	32(%rsp), %rax
+               	movq	%r13, %rbx
+               	movq	%rax, 16(%rsp)
+               	subq	%rax, %rbx
+               	movq	%rbx, %r12
+               	sarq	$5, %r12
+               	leaq	186613(%rip), %rax      # 0x444cfb <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
@@@@
-               	leaq	576(%rsp), %rbp
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rdx
+               	movq	%r15, %rdi
+               	movq	%r12, %rdx
@@@@
-               	callq	0x435130 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
-               	movq	%r13, 72(%rsp)
-               	movq	%rbp, %rdi
-               	callq	0x4136d0 <strlen@plt>
+               	callq	0x435b10 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
+               	movq	%rbp, 64(%rsp)
+               	movq	%r15, %rdi
+               	callq	0x4136e0 <strlen@plt>
+               	movq	%rbp, %rcx
@@@@
-               	cmpq	$16, %rax
-               	jb	0x417314 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x3f4>
+               	movq	%rcx, %rax
+               	cmpq	$16, %rbp
+               	jb	0x41745e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ee>
@@@@
-               	movq	%rax, %r13
-               	movq	%rax, 72(%rsp)
-               	movq	%rbp, 88(%rsp)
+               	movq	%rax, 64(%rsp)
+               	movq	%rbp, 80(%rsp)
@@@@
-               	jne	0x417361 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x441>
-               	movb	576(%rsp), %al
-               	movb	%al, (%r13)
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	je	0x417384 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
-               	leaq	16(%r14), %rax
-               	movq	%rax, (%r14)
-               	movq	72(%rsp), %rcx
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rcx
-               	jne	0x417233 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x313>
-               	movups	(%r13), %xmm0
-               	movups	%xmm0, (%rax)
-               	jmp	0x41723f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x31f>
-               	movq	%r13, %rdi
-               	leaq	576(%rsp), %rsi
+               	jne	0x417474 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x504>
+               	movb	592(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x417487 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x517>
+               	movq	%rax, %rdi
+               	leaq	592(%rsp), %rsi
@@@@
-               	callq	0x4136e0 <memcpy@plt>
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	jne	0x41733a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x41a>
-               	testq	%r15, %r15
-               	movq	%rbx, %rax
+               	callq	0x4136f0 <memcpy@plt>
+               	movq	%rbp, 72(%rsp)
+               	movq	64(%rsp), %rax
+               	movb	$0, (%rax,%rbp)
+               	cmpq	%r13, 48(%rsp)
+               	je	0x4174c3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x553>
+               	leaq	16(%r13), %rax
+               	movq	%rax, (%r13)
+               	movq	64(%rsp), %rcx
+               	leaq	80(%rsp), %rbp
+               	cmpq	%rbp, %rcx
+               	jne	0x417383 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x413>
+               	movups	(%rbp), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x417390 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x420>
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
-               	je	0x4173d5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b5>
+               	cmpq	%rcx, %r15
+               	cmovaq	%rcx, %r15
+               	addq	%r12, %rax
+               	cmovbq	%rcx, %r15
+               	testq	%r15, %r15
+               	leaq	80(%rsp), %rbx
+               	je	0x417507 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x597>
@@@@
-               	movq	%r13, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%rax, %r14
-               	jmp	0x4173d8 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b8>
-               	xorl	%r14d, %r14d
-               	shlq	$5, %rbp
-               	leaq	(%r14,%rbp), %rax
-               	addq	$16, %rax
-               	movq	%rax, (%r14,%rbp)
+               	jmp	0x417509 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
+               	xorl	%eax, %eax
+               	shlq	$5, %r12
+               	leaq	(%rax,%r12), %rdx
+               	addq	$16, %rdx
+               	movq	%rdx, (%rax,%r12)
+               	movq	64(%rsp), %rcx
+               	cmpq	%rbx, %rcx
+               	je	0x417536 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5c6>
+               	leaq	(%rax,%r12), %rdx
+               	movq	%rcx, (%rdx)
+               	movq	80(%rsp), %rcx
+               	movq	%rcx, 16(%rax,%r12)
+               	jmp	0x41753c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5cc>
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rdx)
@@@@
-               	leaq	88(%rsp), %rdx
-               	cmpq	%rdx, %rcx
-               	movq	32(%rsp), %r15
-               	je	0x41740f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ef>
-               	leaq	(%r14,%rbp), %rax
-               	movq	%rcx, (%rax)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14,%rbp)
-               	jmp	0x417415 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4f5>
-               	movups	(%rdx), %xmm0
-               	movups	%xmm0, (%rax)
-               	movq	80(%rsp), %rax
-               	movq	%rax, 8(%r14,%rbp)
-               	movq	%rdx, 72(%rsp)
-               	movq	$0, 80(%rsp)
-               	movb	$0, 88(%rsp)
-               	cmpq	%rbx, %r12
-               	je	0x417510 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5f0>
-               	leaq	16(%r14), %rcx
-               	leaq	16(%rbx), %rax
-               	jmp	0x417486 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x566>
-               	nopl	(%rax,%rax)
+               	movq	%rcx, 8(%rax,%r12)
+               	movq	%rbx, 64(%rsp)
+               	movq	$0, 72(%rsp)
+               	movb	$0, 80(%rsp)
+               	movq	16(%rsp), %r12
+               	cmpq	%r12, %r13
+               	movq	%rax, 152(%rsp)
+               	je	0x41760c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x69c>
+               	leaq	16(%rax), %rcx
+               	leaq	16(%r12), %rax
+               	jmp	0x4175b6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x646>
+               	nopl	(%rax)

@@ -3691,241 +3783,239 @@
@@@[(3, 5), (20, 29), (30, 34), (37, 88), (98, 108), (177, 178), (179, 182), (196, 214), (220, 229), (237, 249), (252, 256), (257, 259), (265, 269), (273, 289), (290, 299), (300, 308), (309, 317), (321, 329), (330, 334), (338, 340), (341, 351)]@@@
-               	cmpq	%r12, %rax
+               	cmpq	%r13, %rax
@@@@
-               	cmpq	%rbx, %r12
-               	jne	0x4174b9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
-               	jmp	0x4174d1 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b1>
-               	nop
+               	cmpq	%r12, %r13
+               	je	0x417610 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
+               	movq	%r12, %rbx
+               	jmp	0x4175f9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x689>
+               	nopl	(%rax,%rax)
@@@@
-               	cmpq	%r12, %rbx
-               	je	0x4174cc <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5ac>
+               	cmpq	%r13, %rbx
+               	je	0x417610 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
@@@@
-               	je	0x4174b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	callq	0x4136f0 <free@plt>
-               	jmp	0x4174b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	movq	24(%rsp), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4174de <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
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
-               	je	0x417506 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5e6>
-               	callq	0x4136f0 <free@plt>
-               	movq	104(%rsp), %rbp
-               	jmp	0x41726e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x34e>
-               	leaq	32(%r14), %rbp
-               	testq	%rbx, %rbx
-               	jne	0x4174d6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b6>
-               	jmp	0x4174de <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	je	0x4175f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x4175f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	leaq	32(%rax), %rbp
+               	testq	%r12, %r12
+               	movq	96(%rsp), %r13
+               	je	0x417622 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6b2>
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
+               	je	0x4173bf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x4173bf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	movq	128(%rsp), %rbx
-               	movl	116(%rsp), %r14d
-               	je	0x417561 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x641>
-               	callq	0x43a715 <operator delete(void*)>
-               	movq	424(%rsp), %rdi
-               	leaq	440(%rsp), %rax
+               	je	0x417696 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x726>
+               	callq	0x43b555 <operator delete(void*)>
+               	movq	440(%rsp), %rdi
+               	leaq	456(%rsp), %rax
@@@@
-               	movl	44(%rsp), %ecx
@@@@
-               	je	0x417666 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x746>
+               	je	0x41779e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x82e>
+               	movl	128(%rsp), %ecx
@@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	je	0x417693 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%r14d, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%r14d, %r14d
-               	jne	0x417693 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	144(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4177d2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	addq	$328, %rdi              # imm = 0x148
+               	movl	108(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, (%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x4177d2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
@@@@
-               	je	0x417693 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	movq	%rbx, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	$0, 600(%rsp)
-               	movq	8(%rsp), %rax
+               	je	0x4177d2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	js	0x4178d3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x9b3>
+               	movq	%rbp, 8(%rsp)
+               	js	0x417a23 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xab3>
@@@@
-               	movq	%r15, %rax
+               	movq	%r14, %rax
@@@@
-               	callq	0x427440 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %rbp
+               	callq	0x427c30 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r15
@@@@
-               	leaq	252611(%rip), %rax      # 0x455210 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%rbp)
-               	movl	%ebx, 24(%rbp)
-               	movq	%rcx, 32(%rsp)
-               	movq	%rcx, 600(%rsp)
-               	cmpq	%r13, %r14
-               	jne	0x417777 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x857>
-               	movq	8(%rsp), %rax
+               	leaq	258244(%rip), %rax      # 0x456950 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r15)
+               	movl	%ebx, 24(%r15)
+               	movq	%rcx, 96(%rsp)
+               	movq	%rcx, 616(%rsp)
+               	cmpq	%r13, %rbp
+               	jne	0x4178b7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x947>
+               	movq	24(%rsp), %rax
@@@@
-               	jmp	0x41782a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x90a>
-               	sarq	$5, %r15
-               	movq	8(%rsp), %rax
+               	jmp	0x417975 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xa05>
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
-               	callq	0x435a30 <CreateStringFromCString>
-               	movq	168(%rsp), %rax
-               	movq	%r15, %rcx
+               	leaq	184(%rsp), %rsi
+               	callq	0x4366a0 <CreateStringFromCString>
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
-               	jne	0x4177b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x890>
-               	movq	32(%rsp), %r15
-               	movq	%r15, 568(%rsp)
-               	movq	584(%rsp), %rcx
+               	addq	$-1, %rbp
+               	jne	0x4178f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x980>
+               	movq	96(%rsp), %r15
+               	movq	%r15, 584(%rsp)
+               	movq	600(%rsp), %rcx

@@ -3933,135 +4023,133 @@
@@@[(3, 13), (17, 22), (86, 99), (181, 189), (199, 219), (223, 227), (228, 230)]@@@
-               	leaq	181874(%rip), %rdi      # 0x443f40 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
-               	callq	0x435790 <std::__throw_length_error(char const*)>
-               	callq	0x419f00 <ThrowIllegalArgumentException>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	leaq	185186(%rip), %rdi      # 0x444d80 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x436170 <std::__throw_length_error(char const*)>
+               	callq	0x41a0a0 <ThrowIllegalArgumentException>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	je	0x4179ef <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	callq	0x43a715 <operator delete(void*)>
-               	leaq	48(%rsp), %rdi
-               	callq	0x4357b0 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
-               	movq	120(%rsp), %rdi
-               	movl	44(%rsp), %esi
-               	callq	0x435810 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	je	0x417b3a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	callq	0x43b555 <operator delete(void*)>
+               	leaq	32(%rsp), %rdi
+               	callq	0x436190 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
+               	leaq	112(%rsp), %rdi
+               	callq	0x4361f0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	jne	0x4179ea <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xaca>
-               	jmp	0x4179ef <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	jne	0x417b35 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbc5>
+               	jmp	0x417b3a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	je	0x417b7c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc5c>
-               	movq	16(%rsp), %rbx
-               	movq	(%rbx), %rdi
-               	addq	$16, %rbx
-               	cmpq	%rbx, %rdi
-               	je	0x417b71 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc51>
-               	callq	0x4136f0 <free@plt>
-               	addq	$16, %rbx
-               	cmpq	24(%rsp), %rbx
-               	jne	0x417b60 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc40>
+               	je	0x417cc4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd54>
+               	movq	16(%rsp), %rbp
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417cb9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd49>
+               	callq	0x4136d0 <free@plt>
+               	addq	$16, %rbp
+               	cmpq	8(%rsp), %rbp
+               	jne	0x417ca7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd37>
@@@@
-               	callq	0x4136f0 <free@plt>
-               	movq	%rbp, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	%rbx, %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -4351,54 +4439,55 @@
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

@@ -4420,23 +4509,24 @@
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

@@ -4493,7 +4583,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -4963,63 +5053,64 @@
@@@[(3, 14), (15, 27), (67, 73), (85, 87)]@@@
-               	movq	8(%rax), %r13
-               	movq	%r13, 72(%rsp)
-               	movq	%r13, 80(%rsp)
-               	movq	%r13, 88(%rsp)
-               	movl	286429(%rip), %eax      # 0x45ead4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	movq	8(%rax), %rax
+               	movq	%rax, 72(%rsp)
+               	movq	%rax, 80(%rsp)
+               	movq	80(%rsp), %rbp
+               	movq	%rbp, 88(%rsp)
+               	movl	292040(%rip), %eax      # 0x460214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
@@@@
-               	je	0x418c0f <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x11f>
-               	leaq	286417(%rip), %rdi      # 0x45ead4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
-               	leaq	470(%rip), %rsi         # 0x418de0 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
-               	callq	0x4395f0 <CallInitGlobalPossiblyLock>
-               	cmpq	%r13, 286346(%rip)      # 0x45eaa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	je	0x418cb1 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c1>
+               	je	0x418d64 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x124>
+               	leaq	292028(%rip), %rdi      # 0x460214 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	leaq	481(%rip), %rsi         # 0x418f40 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
+               	callq	0x43a320 <CallInitGlobalPossiblyLock>
+               	cmpq	291957(%rip), %rbp      # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	je	0x418e06 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c6>
@@@@
-               	callq	0x4397d0 <ThrowException>
-               	movq	8(%rbx), %rbp
-               	movl	286237(%rip), %eax      # 0x45ead8 <state_global$kotlin.native.concurrent.INITIALIZING>
+               	callq	0x43a500 <ThrowException>
+               	movq	8(%rbx), %r13
+               	movl	291848(%rip), %eax      # 0x460218 <state_global$kotlin.native.concurrent.INITIALIZING>
@@@@
-               	movq	%rax, 8(%rbp)
+               	movq	%rax, 8(%r13)

@@ -5044,32 +5135,33 @@
@@@[(36, 39)]@@@
-               	callq	0x4397d0 <ThrowException>
+               	callq	0x43a500 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -5086,41 +5178,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 285742(%rip)      # 0x45eaa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	leaq	285735(%rip), %rdi      # 0x45eaa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	%rcx, 291342(%rip)      # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	leaq	291335(%rip), %rdi      # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	291328(%rip), %rax      # 0x4601e0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
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

@@ -5137,41 +5230,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 285494(%rip)      # 0x45eaa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
-               	leaq	285487(%rip), %rdi      # 0x45eaa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	%rcx, 291094(%rip)      # 0x4601e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	leaq	291087(%rip), %rdi      # 0x4601e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	291080(%rip), %rax      # 0x4601e8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
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

@@ -5180,15 +5274,18 @@
@@@[(12, 21)]@@@
-               	cmpb	$0, -72(%rax)
-               	jne	0x419160 <kfun:kotlin.native.concurrent.Lock#lock(){}+0x180>
-               	movb	$1, -72(%rax)
+               	movl	-72(%rax), %ecx
+               	cmpl	$2, %ecx
+               	je	0x4192ce <kfun:kotlin.native.concurrent.Lock#lock(){}+0x18e>
+               	cmpl	$3, %ecx
+               	je	0x41932c <kfun:kotlin.native.concurrent.Lock#lock(){}+0x1ec>
+               	movl	$2, -72(%rax)

@@ -5256,21 +5353,21 @@
@@@[(3, 7)]@@@
-               	nopl	(%rax,%rax)
-               	movzbl	289737(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movzbl	295329(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>

@@ -5280,25 +5377,26 @@
@@@[(3, 6)]@@@
-               	nopl	(%rax)
+               	callq	0x41a170 <ThrowFileFailedToInitializeException>
+               	nopw	%cs:(%rax,%rax)

@@ -5332,29 +5430,29 @@
@@@[(9, 17), (18, 22)]@@@
-               	testb	$2, 89(%rax)
-               	jne	0x419291 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x81>
-               	jmp	0x4192c0 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	jne	0x419417 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x87>
+               	jmp	0x419446 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
@@@@
-               	testb	$2, 89(%rax)
-               	je	0x4192c0 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	je	0x419446 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>

@@ -5364,7 +5462,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -5459,19 +5557,19 @@
@@@[(17, 23)]@@@
-               	jne	0x419474 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
-               	movq	8(%r14), %rax
-               	cmpq	8(%rbx), %rax
+               	jne	0x419604 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
+               	movq	8(%rbx), %rax
+               	cmpq	%rax, 8(%r14)

@@ -5681,30 +5779,31 @@
@@@[(21, 32), (37, 39)]@@@
-               	movq	%rcx, 283312(%rip)      # 0x45eab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	leaq	283305(%rip), %rdi      # 0x45eab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	movq	$0, 24(%rax)
-               	movq	283290(%rip), %rsi      # 0x45eab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	callq	0x424070 <InitAndRegisterGlobal>
+               	movq	%rcx, 288864(%rip)      # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	leaq	288857(%rip), %rdi      # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	288850(%rip), %rax      # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	$0, 8(%rax)
+               	movq	288835(%rip), %rsi      # 0x4601f0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	callq	0x4246d0 <InitAndRegisterGlobal>
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -6223,116 +6322,118 @@
@@@[(3, 7), (9, 11), (16, 22), (24, 28), (29, 35), (36, 39), (44, 46), (48, 50), (54, 56), (58, 60), (78, 80), (82, 84), (88, 92), (98, 100), (107, 109), (110, 112), (113, 123), (124, 130), (131, 133), (134, 137), (139, 147), (153, 157), (163, 167)]@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
+               	movq	-64(%rax), %r15
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x41a1b9 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x69>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r12), %rdi
+               	je	0x41a357 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x67>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x427440 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	leaq	16(%rax), %rdx
+               	callq	0x427c30 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
@@@@
-               	leaq	247758(%rip), %rcx      # 0x4569b0 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	leaq	253297(%rip), %rdx      # 0x4580f0 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 88(%rsp)
+               	movq	%rcx, 286313(%rip)      # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	movq	286306(%rip), %rax      # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
@@@@
-               	movq	%rcx, 16(%rax)
-               	movq	%rdx, 88(%rsp)
-               	movq	%rdx, 280769(%rip)      # 0x45eab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
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
-               	js	0x41a48f <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33f>
-               	movq	296(%r12), %rdi
+               	js	0x41a62c <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33c>
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
-               	je	0x41a379 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x229>
-               	nopl	(%rax)
-               	movzbl	285193(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%r12d, %ebp
+               	cmpl	%r12d, %ebp
+               	je	0x41a51b <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x22b>
+               	nop
+               	movzbl	290737(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41a350 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x200>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	16(%r13,%r14,8), %rax
+               	je	0x41a4f0 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x200>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	16(%r13,%r12,8), %rax
@@@@
-               	movslq	16(%rax), %rcx
+               	movl	16(%rax), %ecx
@@@@
-               	jbe	0x41a48a <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33a>
+               	jbe	0x41a627 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x337>
+               	movslq	%ecx, %rcx
@@@@
-               	addq	$1, %r14
-               	cmpl	%r14d, %ebp
-               	jne	0x41a340 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x1f0>
-               	movq	(%r15), %rax
+               	addq	$1, %r12
+               	cmpl	%r12d, %ebp
+               	jne	0x41a4e0 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x1f0>
+               	movq	(%r14), %rax
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	%r15, 120(%rsp)
+               	movq	%rax, 288(%r15)
+               	movq	%r14, 120(%rsp)
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	280263(%rip), %rax      # 0x45ea90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
+               	movq	%rax, 288(%r15)
+               	movq	285799(%rip), %rax      # 0x4601d0 <kvar:kotlin.native.MemoryModel.$VALUES#internal>

@@ -6340,31 +6441,31 @@
@@@[(3, 5), (28, 36), (37, 39)]@@@
-               	movq	296(%r12), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	280153(%rip), %rsi      # 0x45eab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
-               	leaq	280146(%rip), %rdi      # 0x45eab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
-               	callq	0x424070 <InitAndRegisterGlobal>
+               	movq	%rax, 288(%r15)
+               	movq	285691(%rip), %rsi      # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	leaq	285684(%rip), %rdi      # 0x4601f8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	callq	0x4246d0 <InitAndRegisterGlobal>
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)

@@ -6373,12 +6474,11 @@
@@@[(3, 14)]@@@
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	callq	0x419f00 <ThrowIllegalArgumentException>
-               	leaq	241013(%rip), %rsi      # 0x455210 <ktypeglobal:kotlin.Array#internal>
-               	movq	%r15, %rdi
-               	callq	0x419bf0 <ThrowClassCastException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	callq	0x41a0a0 <ThrowIllegalArgumentException>
+               	leaq	246552(%rip), %rsi      # 0x456950 <ktypeglobal:kotlin.Array#internal>
+               	movq	%r14, %rdi
+               	callq	0x419d90 <ThrowClassCastException>

@@ -7534,18 +7634,18 @@
@@@[(8, 18)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41b7cb <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x18b>
-               	movzbl	280131(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41b96d <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x19d>
+               	movzbl	285691(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>

@@ -7558,40 +7658,43 @@
@@@[(10, 12), (13, 16), (26, 29), (34, 38), (39, 42)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41b7e9 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41b98b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx
@@@@
-               	jmp	0x41b792 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x152>
+               	jmp	0x41b932 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x162>
+               	nopl	(%rax)
@@@@
-               	je	0x41b831 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1f1>
-               	movslq	20(%rbx), %rcx
+               	je	0x41b9d3 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x203>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41b7e9 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41b98b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx

@@ -7603,23 +7706,23 @@
@@@[(21, 27)]@@@
-               	callq	0x4397d0 <ThrowException>
-               	callq	0x419a50 <ThrowNullPointerException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x43a500 <ThrowException>
+               	callq	0x419bf0 <ThrowNullPointerException>
+               	nopl	(%rax,%rax)

@@ -7650,52 +7753,52 @@
@@@[(45, 55)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41bb54 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x314>
-               	movzbl	279519(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41bd04 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x324>
+               	movzbl	285063(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>

@@ -7714,19 +7817,20 @@
@@@[(10, 12), (13, 16)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41bba1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41bd51 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -7734,14 +7838,14 @@
@@@[(9, 13)]@@@
-               	jmp	0x41baa9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
-               	nopl	(%rax)
+               	jmp	0x41bc49 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
+               	nop

@@ -7752,23 +7856,24 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41bbe9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3a9>
-               	movslq	20(%rbx), %rcx
+               	je	0x41bd99 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3b9>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41bba1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41bd51 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -7776,11 +7881,12 @@
@@@[(9, 12)]@@@
-               	jmp	0x41b93d <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	jmp	0x41badd <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	nopw	%cs:(%rax,%rax)

@@ -7894,13 +8000,13 @@
@@@[(6, 16)]@@@
-               	je	0x41bd34 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	68(%rbx), %eax
-               	cmpl	76(%rbx), %eax
-               	jle	0x41be3c <kfun:kotlin.collections.HashMap.rehash#internal+0x18c>
+               	je	0x41bee4 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	76(%rbx), %eax
+               	cmpl	%eax, 68(%rbx)
+               	jle	0x41c01e <kfun:kotlin.collections.HashMap.rehash#internal+0x1be>

@@ -7917,67 +8023,67 @@
@@@[(10, 19), (58, 64), (81, 82), (83, 85)]@@@
-               	movslq	68(%rbx), %rdx
-               	cmpq	%rdx, %r13
-               	jge	0x41be45 <kfun:kotlin.collections.HashMap.rehash#internal+0x195>
-               	movzbl	278412(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	68(%rbx), %edx
+               	movslq	%edx, %rax
+               	cmpq	%rax, %r13
+               	jge	0x41bfea <kfun:kotlin.collections.HashMap.rehash#internal+0x18a>
+               	movzbl	283942(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	ja	0x41bda0 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	movq	288(%rbp), %rax
-               	jmp	0x41be79 <kfun:kotlin.collections.HashMap.rehash#internal+0x1c9>
+               	ja	0x41bf50 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -7985,15 +8091,16 @@
@@@[(3, 13), (15, 16), (17, 19)]@@@
-               	movl	8(%rax), %ecx
-               	movq	8(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	cmpl	%r14d, %ecx
-               	jne	0x41bf5f <kfun:kotlin.collections.HashMap.rehash#internal+0x2af>
+               	movl	8(%rax), %eax
+               	movq	8(%rsp), %rcx
+               	movq	%rcx, 288(%rbp)
+               	cmpl	%r14d, %eax
+               	jne	0x41c112 <kfun:kotlin.collections.HashMap.rehash#internal+0x2b2>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -8051,14 +8158,13 @@
@@@[(10, 13)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)

@@ -8127,43 +8233,43 @@
@@@[(15, 17)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -8246,65 +8352,65 @@
@@@[(19, 21)]@@@
-               	movb	72(%r12), %cl
+               	movl	72(%r12), %ecx

@@ -8383,7 +8489,7 @@
@@@[(3, 5)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -8477,37 +8583,38 @@
@@@[(3, 7), (9, 18), (23, 25), (27, 29), (32, 34), (38, 42), (43, 49)]@@@
-               	movabsq	$17179869184, %rsi      # imm = 0x400000000
-               	movq	%rsi, 16(%rsp)
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 16(%rsp)
@@@@
-               	movq	8(%rsp), %rcx
-               	cmpl	8(%rdx), %r8d
-               	movq	%rcx, 288(%rbp)
-               	jl	0x41ca84 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5f4>
+               	movl	8(%rdx), %edx
+               	movq	8(%rsp), %rsi
+               	movq	%rsi, 288(%rbp)
+               	cmpl	%edx, %r8d
+               	jl	0x41cc3d <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5fd>
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
-               	jg	0x41c7ea <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	movq	%rcx, %r13
+               	jg	0x41c99c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>
@@@@
-               	subl	%edx, %ecx
-               	testl	%ecx, %ecx
-               	jle	0x41c7ea <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	subl	%edx, %esi
+               	testl	%esi, %esi
+               	jle	0x41c99c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>

@@ -8517,15 +8624,15 @@
@@@[(3, 21)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	leal	3(%rdx), %esi
-               	testl	%edx, %edx
-               	cmovnsl	%edx, %esi
-               	sarl	$2, %esi
-               	cmpl	%esi, %eax
-               	jge	0x41c970 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	leal	3(%rcx), %edx
+               	testl	%ecx, %ecx
+               	cmovnsl	%ecx, %edx
+               	sarl	$2, %edx
+               	cmpl	%edx, %eax
+               	jge	0x41cb20 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>

@@ -8548,13 +8655,14 @@
@@@[(3, 14), (15, 17)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	cmpl	%eax, %edx
-               	jge	0x41ca49 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
-               	movaps	%xmm0, (%rsp)
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	cmpl	%eax, %ecx
+               	jge	0x41cc02 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rcx

@@ -8574,19 +8682,18 @@
@@@[(17, 20)]@@@
-               	jmp	0x41c9b4 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x524>
-               	nopw	(%rax,%rax)
+               	jmp	0x41cb6b <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x52b>

@@ -8603,13 +8710,14 @@
@@@[(7, 10), (11, 15)]@@@
-               	jmp	0x41c538 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
-               	movaps	%xmm0, (%rsp)
+               	jmp	0x41c6e8 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
@@@@
-               	movq	%rcx, 8(%rsp)
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax
+               	movq	%rax, 8(%rsp)

@@ -8653,16 +8761,17 @@
@@@[(3, 4), (5, 6), (7, 10)]@@@
+               	movl	8(%rax), %eax
@@@@
-               	cmpl	8(%rax), %esi
@@@@
-               	jle	0x41ca49 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
+               	cmpl	%eax, %esi
+               	jle	0x41cc02 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>

@@ -8682,43 +8791,45 @@
@@@[(22, 26), (50, 54)]@@@
-               	addl	$1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 76(%rbx)
@@@@
-               	callq	0x4397d0 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43a500 <ThrowException>
+               	nopl	(%rax,%rax)

@@ -8867,46 +8978,46 @@
@@@[(37, 39)]@@@
-               	movzbl	72(%rbx), %ecx
+               	movl	72(%rbx), %ecx

@@ -8968,11 +9079,13 @@
@@@[(8, 12)]@@@
-               	addl	$-1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 76(%rbx)

@@ -8983,8 +9096,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)

@@ -9225,26 +9338,26 @@
@@@[(22, 30)]@@@
-               	movl	$4294967165, %ecx       # imm = 0xFFFFFF7D
-               	addl	92(%rax), %ecx
-               	cmpl	$2, %ecx
-               	jb	0x41d33e <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>
+               	movl	92(%rax), %eax
+               	addl	$4294967165, %eax       # imm = 0xFFFFFF7D
+               	cmpl	$2, %eax
+               	jb	0x41d4fe <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>

@@ -9329,51 +9442,50 @@
@@@[(6, 14), (18, 19), (47, 51), (58, 68)]@@@
-               	je	0x41d50d <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x5d>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	jmp	0x41d529 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x79>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x41d6d9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x41d6d9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
@@@@
+               	movl	16(%rbx), %eax
@@@@
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)
@@@@
-               	je	0x41d593 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
+               	je	0x41d743 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)

@@ -9416,26 +9528,27 @@
@@@[(6, 20), (21, 36)]@@@
-               	je	0x41d65b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %eax
-               	movq	8(%r15), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41d6b4 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc4>
-               	leal	1(%rax), %edx
+               	je	0x41d80b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %ecx
+               	movq	8(%r15), %rax
+               	cmpl	68(%rax), %ecx
+               	jge	0x41d869 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc9>
+               	leal	1(%rcx), %edx
@@@@
-               	movl	%eax, 20(%r15)
-               	movq	8(%rcx), %rcx
-               	movq	%rcx, 32(%rsp)
-               	cmpl	%eax, 8(%rcx)
-               	jbe	0x41d6f8 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x108>
-               	cltq
-               	movq	16(%rcx,%rax,8), %rbx
+               	movl	%ecx, 20(%r15)
+               	movq	8(%rax), %rax
+               	movq	%rax, 32(%rsp)
+               	movl	20(%r15), %ecx
+               	cmpl	%ecx, 8(%rax)
+               	jbe	0x41d8ad <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x10d>
+               	movslq	%ecx, %rcx
+               	movq	16(%rax,%rcx,8), %rbx

@@ -9449,19 +9562,19 @@
@@@[(16, 22)]@@@
-               	callq	0x4397d0 <ThrowException>
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax)
+               	callq	0x43a500 <ThrowException>
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -9485,30 +9598,31 @@
@@@[(6, 25), (36, 40)]@@@
-               	je	0x41d772 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %r13d
-               	movq	8(%r15), %rbp
-               	cmpl	68(%rbp), %r13d
-               	jge	0x41d7f0 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf0>
-               	leal	1(%r13), %eax
-               	movl	%eax, 16(%r15)
-               	movl	%r13d, 20(%r15)
+               	je	0x41d932 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %eax
+               	movq	8(%r15), %r13
+               	cmpl	68(%r13), %eax
+               	jge	0x41d9b2 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf2>
+               	leal	1(%rax), %ecx
+               	movl	%ecx, 16(%r15)
+               	movl	%eax, 20(%r15)
+               	movl	20(%r15), %ebp
@@@@
-               	movq	%rbp, 24(%rax)
-               	movl	%r13d, 32(%rax)
+               	movq	%r13, 24(%rax)
+               	movl	%ebp, 32(%rax)

@@ -9555,16 +9669,17 @@
@@@[(13, 15), (16, 19)]@@@
-               	movslq	16(%r15), %rcx
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41d8d6 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x96>
+               	jbe	0x41da99 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x99>
+               	movslq	%ecx, %rcx

@@ -9574,8 +9689,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -9595,18 +9710,19 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41d97b <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9b>
-               	movslq	16(%r15), %rcx
+               	je	0x41db3e <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9e>
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41d980 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa0>
+               	jbe	0x41db43 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa3>
+               	movslq	%ecx, %rcx

@@ -9616,9 +9732,9 @@
@@@[(3, 9)]@@@
-               	callq	0x419a50 <ThrowNullPointerException>
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419bf0 <ThrowNullPointerException>
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax,%rax)

@@ -10689,26 +10805,27 @@
@@@[(17, 19), (26, 33)]@@@
-               	movslq	16(%rbx), %r14
+               	movl	16(%rbx), %r14d
@@@@
-               	jbe	0x41e8d6 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd6>
-               	movq	(%rbp), %rax
-               	movw	%r15w, 16(%rbp,%r14,2)
+               	jbe	0x41ea99 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd9>
+               	movslq	%r14d, %rax
+               	movq	(%rbp), %rcx
+               	movw	%r15w, 16(%rbp,%rax,2)

@@ -10722,8 +10839,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -10776,17 +10893,17 @@
@@@[(3, 5), (6, 8), (12, 22)]@@@
-               	movl	%ecx, %ebp
+               	movl	%ecx, %ebx
@@@@
-               	movq	%rsi, %rbx
+               	movq	%rsi, %r15
@@@@
-               	je	0x41e98f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	leaq	245047(%rip), %r12      # 0x45a6d0 <__unnamed_8>
-               	cmovneq	%rbx, %r12
+               	je	0x41eb4f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testq	%r15, %r15
+               	leaq	250551(%rip), %rbp      # 0x45be10 <__unnamed_8>
+               	cmovneq	%r15, %rbp

@@ -10800,7 +10917,7 @@
@@@[(3, 5)]@@@
-               	movq	(%r12), %rax
+               	movq	(%rbp), %rax

@@ -10808,49 +10925,51 @@
@@@[(3, 5), (7, 9), (10, 28), (31, 42), (44, 67), (68, 70), (74, 78)]@@@
-               	movq	%r12, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	movl	%ebp, %esi
+               	movl	%ebx, %esi
@@@@
-               	callq	0x41a4b0 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
-               	movl	%ebp, %ebx
-               	subl	%r13d, %ebx
-               	movq	8(%rsp), %r14
-               	movl	16(%r14), %esi
-               	addl	%ebx, %esi
-               	movq	%r14, %rdi
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movq	(%r12), %rax
+               	callq	0x41a640 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
+               	movl	%ebx, %r14d
+               	subl	%r13d, %r14d
+               	movq	8(%rsp), %r15
+               	movl	16(%r15), %esi
+               	addl	%r14d, %esi
+               	movq	%r15, %rdi
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	(%rbp), %rax
@@@@
-               	jne	0x41eabd <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x15d>
-               	movslq	16(%r14), %rbp
-               	movq	8(%r14), %rax
-               	movq	%rax, 56(%rsp)
-               	leaq	(%rax,%rbp,2), %rdi
+               	jne	0x41ec8b <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x16b>
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
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%ebp, 16(%r15)
@@@@
-               	movq	%rbx, (%rdx)
+               	movq	%r15, (%rdx)
@@@@
-               	movq	%rbx, (%rdx)
-               	movq	%rbx, %rax
+               	movq	%r15, (%rdx)
+               	movq	%r15, %rax

@@ -10859,27 +10978,26 @@
@@@[(3, 18), (19, 29), (30, 32), (33, 41)]@@@
-               	cmpl	%r13d, %ebp
-               	cmovll	%r13d, %ebp
-               	movq	%r12, %r14
-               	movl	%ebp, 4(%rsp)
-               	movq	8(%rsp), %rbx
-               	cmpl	%r13d, %ebp
-               	je	0x41ea88 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	nopl	(%rax)
-               	movzbl	266857(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	cmpl	%r13d, %ebx
+               	cmovll	%r13d, %ebx
+               	cmpl	%r13d, %ebx
+               	je	0x41ec56 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	nopl	(%rax,%rax)
+               	movzbl	272369(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41eaf0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	8(%rbx), %rbp
-               	movq	%rbp, 64(%rsp)
-               	movslq	16(%rbx), %r12
+               	je	0x41ecb0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%r15), %r14
+               	movq	%r14, 64(%rsp)
+               	movl	16(%r15), %r12d
@@@@
-               	movq	%rbx, %rdi
+               	movq	8(%rsp), %rdi
@@@@
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%r15d, 16(%rbx)
-               	movq	(%r14), %rax
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	8(%rsp), %rax
+               	movl	%r15d, 16(%rax)
+               	movq	8(%rsp), %r15
+               	movq	(%rbp), %rax

@@ -10887,20 +11005,20 @@
@@@[(3, 5), (7, 12), (13, 28)]@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jbe	0x41eb59 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x1f9>
+               	cmpl	%r12d, 8(%r14)
+               	jbe	0x41ed24 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x204>
+               	movslq	%r12d, %rcx
@@@@
-               	movq	(%rbp), %rcx
-               	movw	%ax, 16(%rbp,%r12,2)
-               	movl	4(%rsp), %ebp
-               	cmpl	%r13d, %ebp
-               	jne	0x41eae0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
-               	jmp	0x41ea88 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	callq	0x419b20 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	movq	(%r14), %rdx
+               	movw	%ax, 16(%r14,%rcx,2)
+               	cmpl	%r13d, %ebx
+               	jne	0x41eca0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
+               	jmp	0x41ec56 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	callq	0x419cc0 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax)

@@ -10912,62 +11030,62 @@
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
-               	je	0x41ebcf <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %esi
+               	je	0x41ed9f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%rbx), %esi
@@@@
-               	movq	%r15, %rdi
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r15), %r13
-               	movq	8(%r15), %r14
+               	movq	%rbx, %rdi
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	16(%rbx), %r15d
+               	movq	8(%rbx), %r14
@@@@
-               	leaq	12(%rsp), %rbx
-               	leaq	152417(%rip), %rdx      # 0x443f58 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	leaq	12(%rsp), %rbp
+               	leaq	155602(%rip), %rdx      # 0x444d98 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
@@@@
-               	movq	%rbx, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	je	0x41ec36 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
-               	leaq	12(%rsp), %rbx
-               	leaq	(%r14,%r13,2), %rcx
+               	je	0x41ee06 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
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
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r15)
+               	subl	%eax, %ebp
+               	addl	%ebp, %r15d
+               	movq	%rbx, %rdi
+               	movl	%r15d, %esi
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%rbx)
@@@@
-               	movq	%r15, (%rax)
+               	movq	%rbx, (%rax)
@@@@
-               	movq	%rax, 288(%rbp)
-               	movq	%r15, %rax
+               	movq	%rax, 288(%r13)
+               	movq	%rbx, %rax

@@ -11000,33 +11118,34 @@
@@@[(14, 18), (19, 32), (34, 38), (39, 43), (44, 50)]@@@
-               	movl	16(%r12), %esi
-               	addl	8(%rbx), %esi
+               	movl	8(%rbx), %esi
+               	addl	16(%r12), %esi
@@@@
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r12), %r15
-               	movq	8(%r12), %rax
-               	movq	%rax, 24(%rsp)
-               	movslq	8(%rbx), %rbp
-               	leaq	(%rax,%r15,2), %rdi
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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
-               	callq	0x41ed70 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r12)
+               	movl	%r15d, %esi
+               	callq	0x41ef40 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%r12)

@@ -11112,29 +11231,28 @@
@@@[(13, 15), (16, 19)]@@@
-               	testq	%rbp, %rbp
-               	je	0x41ef21 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xe1>
@@@@
-               	js	0x41ef88 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x148>
+               	je	0x41f0ee <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xde>
+               	js	0x41f155 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x145>

@@ -11169,8 +11287,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419f00 <ThrowIllegalArgumentException>
-               	nopl	(%rax)
+               	callq	0x41a0a0 <ThrowIllegalArgumentException>
+               	nopw	(%rax,%rax)

@@ -11932,20 +12050,21 @@
@@@[(3, 4), (6, 8), (11, 13)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax
@@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -12018,19 +12137,20 @@
@@@[(3, 4), (6, 8)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax

@@ -12129,20 +12249,22 @@
@@@[(13, 14), (22, 23)]@@@
+               	movq	32(%rsp), %rax
@@@@
+               	movq	32(%rsp), %rax

@@ -12153,7 +12275,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -12259,35 +12381,36 @@
@@@[(26, 34), (43, 46)]@@@
-               	callq	0x41fc80 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
-               	movslq	16(%r15), %rcx
-               	testq	%rcx, %rcx
-               	js	0x41ff39 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa9>
+               	callq	0x41fe60 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
+               	movl	16(%r15), %ecx
+               	testl	%ecx, %ecx
+               	js	0x420128 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa8>
@@@@
-               	jbe	0x41ff6c <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xdc>
+               	jbe	0x42015e <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xde>
+               	movslq	%ecx, %rcx

@@ -12377,112 +12500,113 @@
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
-               	jg	0x420130 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
-               	jmp	0x42031e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	leaq	8(%rsp), %rax
-               	movq	%rax, 104(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movq	%rax, 120(%rsp)
-               	movq	8(%rsp), %rcx
-               	movw	%bp, 24(%rsp)
-               	movq	%rax, 128(%rsp)
-               	cmpl	$1, 16(%rsp)
-               	jne	0x42024c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
+               	jg	0x420320 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
+               	jmp	0x420518 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
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
+               	jne	0x42043c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
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
-               	jne	0x420344 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x304>
-               	movzwl	24(%rsp), %esi
-               	movq	40(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
+               	jne	0x42053e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x30e>
+               	movzwl	16(%r14), %esi
+               	movq	88(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax)

@@ -12497,16 +12621,16 @@
@@@[(3, 4), (5, 12)]@@@
-               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
@@@@
-               	js	0x42031e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	xorl	%r15d, %r15d
-               	movb	260799(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	js	0x42050a <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2da>
+               	xorl	%r13d, %r13d
+               	movq	%rbx, 8(%rsp)
+               	movb	266263(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>

@@ -12519,33 +12643,34 @@
@@@[(3, 18), (19, 33), (37, 40), (41, 45), (46, 53)]@@@
-               	movl	16(%rsp), %r14d
-               	testl	%r14d, %r14d
-               	cmovsl	%r15d, %r14d
-               	xorl	%r15d, %r15d
-               	cmpl	%r15d, %r14d
-               	je	0x420301 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
-               	nopl	(%rax)
-               	movzbl	260713(%rip), %eax      # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	8(%r14), %r15d
+               	testl	%r15d, %r15d
+               	cmovsl	%r13d, %r15d
+               	xorl	%r13d, %r13d
+               	cmpl	%r13d, %r15d
+               	je	0x4204f1 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
+               	movzbl	266177(%rip), %eax      # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4202f0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	cmpw	%bx, 24(%rsp,%r15,2)
-               	je	0x42031c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2dc>
-               	addq	$1, %r15
-               	cmpl	%r15d, %r14d
-               	jne	0x4202e0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
+               	je	0x4204e0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	cmpw	%bx, 16(%r14,%r13,2)
+               	je	0x420511 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e1>
+               	addq	$1, %r13
+               	cmpl	%r13d, %r15d
+               	jne	0x4204d0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
@@@@
+               	movq	8(%rsp), %rbx
+               	movl	$0, %r13d
+               	jg	0x42047b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
@@@@
-               	movl	$0, %r15d
-               	jg	0x42028b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
-               	jmp	0x42031e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
+               	jmp	0x420518 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
-               	addq	$136, %rsp
+               	movq	8(%rsp), %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
+               	addq	$152, %rsp

@@ -12554,37 +12679,37 @@
@@@[(9, 13), (22, 30), (47, 51)]@@@
-               	jne	0x420382 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x342>
-               	movq	296(%r13), %rdi
+               	jne	0x42057c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x34c>
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rbx, 56(%rsp)
-               	leaq	240368(%rip), %rsi      # 0x45ae70 <__unnamed_49>
-               	jmp	0x4203ba <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x37a>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 104(%rsp)
+               	leaq	245814(%rip), %rsi      # 0x45c5b0 <__unnamed_49>
+               	jmp	0x4205b4 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x384>
+               	movq	296(%rbx), %rdi
@@@@
-               	callq	0x4397d0 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43a500 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -12679,2779 +12804,2969 @@
@@@[(2881, 2889), (2890, 2895), (2896, 2899), (2903, 2909), (2913, 2919), (2923, 2929), (2933, 2939), (2943, 2949), (2953, 2959), (2963, 2969), (2973, 2979), (2983, 2989), (2993, 2999), (3003, 3009), (3013, 3019), (3023, 3029), (3033, 3039), (3043, 3049), (3053, 3059), (3063, 3069), (3073, 3079), (3083, 3089), (3093, 3099), (3103, 3109), (3113, 3119), (3123, 3129), (3133, 3139), (3143, 3149), (3153, 3159), (3163, 3169), (3173, 3179), (3183, 3189), (3193, 3199), (3203, 3209), (3213, 3219), (3223, 3229), (3233, 3239), (3243, 3249), (3253, 3259), (3263, 3269), (3273, 3279), (3283, 3289), (3293, 3299), (3303, 3309), (3313, 3319), (3323, 3329), (3333, 3339), (3343, 3349), (3353, 3359), (3363, 3369), (3373, 3379), (3383, 3389), (3393, 3399), (3403, 3409), (3413, 3419), (3423, 3429), (3433, 3439), (3443, 3449), (3453, 3459), (3463, 3469), (3473, 3479), (3483, 3489), (3493, 3499), (3503, 3509), (3513, 3519), (3523, 3529), (3533, 3539), (3543, 3549), (3553, 3559), (3563, 3569), (3573, 3579), (3583, 3589), (3593, 3599), (3603, 3609), (3613, 3619), (3623, 3629), (3633, 3639), (3643, 3649), (3653, 3659), (3663, 3669), (3673, 3679), (3683, 3689), (3693, 3699), (3703, 3709), (3713, 3719), (3723, 3729), (3733, 3739), (3743, 3749), (3753, 3759), (3763, 3769), (3773, 3779), (3783, 3789), (3793, 3799), (3803, 3809), (3813, 3819), (3823, 3829), (3833, 3839), (3843, 3849), (3853, 3864), (3868, 3871), (3875, 3877)]@@@
-               	cmpb	$0, 248897(%rip)        # 0x45eae8 <_Konan_init_stdlib_guard>
-               	je	0x421eb7 <_Konan_constructors+0x17>
-               	cmpb	$0, 248889(%rip)        # 0x45eae9 <_Konan_init_main_guard>
-               	je	0x4229bd <_Konan_constructors+0xb1d>
+               	cmpl	$0, 254337(%rip)        # 0x460228 <state_global$kotlin.ranges.IntRange+0x4>
+               	je	0x4220b7 <_Konan_constructors+0x17>
+               	cmpl	$0, 254332(%rip)        # 0x46022c <state_global$kotlin.ranges.IntRange+0x8>
+               	je	0x422fd5 <_Konan_constructors+0xf35>
@@@@
-               	movb	$1, 248874(%rip)        # 0x45eae8 <_Konan_init_stdlib_guard>
-               	leaq	353795(%rip), %rax      # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	movq	353820(%rip), %rcx      # 0x4784e8 <(anonymous namespace)::initTailNode>
+               	movl	$1, 254311(%rip)        # 0x460228 <state_global$kotlin.ranges.IntRange+0x4>
+               	movq	359264(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
@@@@
-               	cmpq	$0, 353776(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
+               	cmpq	$0, 359220(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
+               	leaq	359213(%rip), %rax      # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353754(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242731(%rip), %rcx      # 0x45d320 <init_node+0x8>
+               	movq	%rdx, 359224(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	359217(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359173(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353725(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242718(%rip), %rcx      # 0x45d330 <init_node.16+0x8>
+               	movq	%rdx, 359184(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	359177(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359133(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353696(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242705(%rip), %rcx      # 0x45d340 <init_node.17+0x8>
+               	movq	%rdx, 359144(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	359137(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359093(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353667(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242692(%rip), %rcx      # 0x45d350 <init_node.18+0x8>
+               	movq	%rdx, 359104(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	359097(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359053(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353638(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242679(%rip), %rcx      # 0x45d360 <init_node.19+0x8>
+               	movq	%rdx, 359064(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	359057(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 359013(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353609(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242666(%rip), %rcx      # 0x45d370 <init_node.20+0x8>
+               	movq	%rdx, 359024(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	359017(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358973(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353580(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242653(%rip), %rcx      # 0x45d380 <init_node.21+0x8>
+               	movq	%rdx, 358984(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358977(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358933(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353551(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242640(%rip), %rcx      # 0x45d390 <init_node.22+0x8>
+               	movq	%rdx, 358944(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358937(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358893(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353522(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242627(%rip), %rcx      # 0x45d3a0 <init_node.23+0x8>
+               	movq	%rdx, 358904(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358897(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358853(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353493(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242614(%rip), %rcx      # 0x45d3b0 <init_node.24+0x8>
+               	movq	%rdx, 358864(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358857(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358813(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353464(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242601(%rip), %rcx      # 0x45d3c0 <init_node.25+0x8>
+               	movq	%rdx, 358824(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358817(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358773(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353435(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242588(%rip), %rcx      # 0x45d3d0 <init_node.26+0x8>
+               	movq	%rdx, 358784(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358777(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358733(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353406(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242575(%rip), %rcx      # 0x45d3e0 <init_node.27+0x8>
+               	movq	%rdx, 358744(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358737(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358693(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353377(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242562(%rip), %rcx      # 0x45d3f0 <init_node.28+0x8>
+               	movq	%rdx, 358704(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358697(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358653(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353348(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242549(%rip), %rcx      # 0x45d400 <init_node.29+0x8>
+               	movq	%rdx, 358664(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358657(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358613(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353319(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242536(%rip), %rcx      # 0x45d410 <init_node.30+0x8>
+               	movq	%rdx, 358624(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358617(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358573(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353290(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242523(%rip), %rcx      # 0x45d420 <init_node.31+0x8>
+               	movq	%rdx, 358584(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358577(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358533(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353261(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242510(%rip), %rcx      # 0x45d430 <init_node.32+0x8>
+               	movq	%rdx, 358544(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358537(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358493(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353232(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242497(%rip), %rcx      # 0x45d440 <init_node.33+0x8>
+               	movq	%rdx, 358504(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358497(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358453(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353203(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242484(%rip), %rcx      # 0x45d450 <init_node.34+0x8>
+               	movq	%rdx, 358464(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358457(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358413(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353174(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242471(%rip), %rcx      # 0x45d460 <init_node.35+0x8>
+               	movq	%rdx, 358424(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358417(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358373(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353145(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242458(%rip), %rcx      # 0x45d470 <init_node.36+0x8>
+               	movq	%rdx, 358384(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358377(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358333(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353116(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242445(%rip), %rcx      # 0x45d480 <init_node.37+0x8>
+               	movq	%rdx, 358344(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358337(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358293(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353087(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242432(%rip), %rcx      # 0x45d490 <init_node.38+0x8>
+               	movq	%rdx, 358304(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358297(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358253(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353058(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242419(%rip), %rcx      # 0x45d4a0 <init_node.39+0x8>
+               	movq	%rdx, 358264(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358257(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358213(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353029(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242406(%rip), %rcx      # 0x45d4b0 <init_node.40+0x8>
+               	movq	%rdx, 358224(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358217(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358173(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 353000(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242393(%rip), %rcx      # 0x45d4c0 <init_node.41+0x8>
+               	movq	%rdx, 358184(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358177(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358133(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352971(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242380(%rip), %rcx      # 0x45d4d0 <init_node.42+0x8>
+               	movq	%rdx, 358144(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358137(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358093(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352942(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242367(%rip), %rcx      # 0x45d4e0 <init_node.43+0x8>
+               	movq	%rdx, 358104(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358097(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358053(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352913(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242354(%rip), %rcx      # 0x45d4f0 <init_node.44+0x8>
+               	movq	%rdx, 358064(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358057(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 358013(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352884(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242341(%rip), %rcx      # 0x45d500 <init_node.45+0x8>
+               	movq	%rdx, 358024(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	358017(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357973(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352855(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242328(%rip), %rcx      # 0x45d510 <init_node.46+0x8>
+               	movq	%rdx, 357984(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357977(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357933(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352826(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242315(%rip), %rcx      # 0x45d520 <init_node.47+0x8>
+               	movq	%rdx, 357944(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357937(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357893(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352797(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242302(%rip), %rcx      # 0x45d530 <init_node.48+0x8>
+               	movq	%rdx, 357904(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357897(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357853(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352768(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242289(%rip), %rcx      # 0x45d540 <init_node.49+0x8>
+               	movq	%rdx, 357864(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357857(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357813(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352739(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242276(%rip), %rcx      # 0x45d550 <init_node.50+0x8>
+               	movq	%rdx, 357824(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357817(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357773(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352710(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242263(%rip), %rcx      # 0x45d560 <init_node.51+0x8>
+               	movq	%rdx, 357784(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357777(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357733(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352681(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242250(%rip), %rcx      # 0x45d570 <init_node.52+0x8>
+               	movq	%rdx, 357744(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357737(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357693(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352652(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242237(%rip), %rcx      # 0x45d580 <init_node.53+0x8>
+               	movq	%rdx, 357704(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357697(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357653(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352623(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242224(%rip), %rcx      # 0x45d590 <init_node.54+0x8>
+               	movq	%rdx, 357664(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357657(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357613(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352594(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242211(%rip), %rcx      # 0x45d5a0 <init_node.55+0x8>
+               	movq	%rdx, 357624(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357617(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357573(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352565(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242198(%rip), %rcx      # 0x45d5b0 <init_node.56+0x8>
+               	movq	%rdx, 357584(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357577(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357533(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352536(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242185(%rip), %rcx      # 0x45d5c0 <init_node.57+0x8>
+               	movq	%rdx, 357544(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357537(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357493(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352507(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242172(%rip), %rcx      # 0x45d5d0 <init_node.58+0x8>
+               	movq	%rdx, 357504(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357497(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357453(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352478(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242159(%rip), %rcx      # 0x45d5e0 <init_node.59+0x8>
+               	movq	%rdx, 357464(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357457(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357413(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352449(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242146(%rip), %rcx      # 0x45d5f0 <init_node.60+0x8>
+               	movq	%rdx, 357424(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357417(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357373(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352420(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242133(%rip), %rcx      # 0x45d600 <init_node.61+0x8>
+               	movq	%rdx, 357384(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357377(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357333(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352391(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242120(%rip), %rcx      # 0x45d610 <init_node.62+0x8>
+               	movq	%rdx, 357344(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357337(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357293(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352362(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242107(%rip), %rcx      # 0x45d620 <init_node.63+0x8>
+               	movq	%rdx, 357304(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357297(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357253(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352333(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242094(%rip), %rcx      # 0x45d630 <init_node.64+0x8>
+               	movq	%rdx, 357264(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357257(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357213(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352304(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242081(%rip), %rcx      # 0x45d640 <init_node.65+0x8>
+               	movq	%rdx, 357224(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357217(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357173(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352275(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242068(%rip), %rcx      # 0x45d650 <init_node.66+0x8>
+               	movq	%rdx, 357184(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357177(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357133(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352246(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242055(%rip), %rcx      # 0x45d660 <init_node.67+0x8>
+               	movq	%rdx, 357144(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357137(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357093(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352217(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242042(%rip), %rcx      # 0x45d670 <init_node.68+0x8>
+               	movq	%rdx, 357104(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357097(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357053(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352188(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242029(%rip), %rcx      # 0x45d680 <init_node.69+0x8>
+               	movq	%rdx, 357064(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357057(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 357013(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352159(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242016(%rip), %rcx      # 0x45d690 <init_node.70+0x8>
+               	movq	%rdx, 357024(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	357017(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356973(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352130(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	242003(%rip), %rcx      # 0x45d6a0 <init_node.71+0x8>
+               	movq	%rdx, 356984(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356977(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356933(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352101(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241990(%rip), %rcx      # 0x45d6b0 <init_node.72+0x8>
+               	movq	%rdx, 356944(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356937(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356893(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352072(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241977(%rip), %rcx      # 0x45d6c0 <init_node.73+0x8>
+               	movq	%rdx, 356904(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356897(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356853(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352043(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241964(%rip), %rcx      # 0x45d6d0 <init_node.74+0x8>
+               	movq	%rdx, 356864(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356857(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356813(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 352014(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241951(%rip), %rcx      # 0x45d6e0 <init_node.75+0x8>
+               	movq	%rdx, 356824(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356817(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356773(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351985(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241938(%rip), %rcx      # 0x45d6f0 <init_node.76+0x8>
+               	movq	%rdx, 356784(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356777(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356733(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351956(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241925(%rip), %rcx      # 0x45d700 <init_node.77+0x8>
+               	movq	%rdx, 356744(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356737(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356693(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351927(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241912(%rip), %rcx      # 0x45d710 <init_node.78+0x8>
+               	movq	%rdx, 356704(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356697(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356653(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351898(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241899(%rip), %rcx      # 0x45d720 <init_node.79+0x8>
+               	movq	%rdx, 356664(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356657(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356613(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351869(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241886(%rip), %rcx      # 0x45d730 <init_node.80+0x8>
+               	movq	%rdx, 356624(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356617(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356573(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351840(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241873(%rip), %rcx      # 0x45d740 <init_node.81+0x8>
+               	movq	%rdx, 356584(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356577(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356533(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351811(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241860(%rip), %rcx      # 0x45d750 <init_node.82+0x8>
+               	movq	%rdx, 356544(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356537(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356493(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351782(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241847(%rip), %rcx      # 0x45d760 <init_node.83+0x8>
+               	movq	%rdx, 356504(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356497(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356453(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351753(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241834(%rip), %rcx      # 0x45d770 <init_node.84+0x8>
+               	movq	%rdx, 356464(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356457(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356413(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351724(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241821(%rip), %rcx      # 0x45d780 <init_node.85+0x8>
+               	movq	%rdx, 356424(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356417(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356373(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351695(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241808(%rip), %rcx      # 0x45d790 <init_node.86+0x8>
+               	movq	%rdx, 356384(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356377(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356333(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351666(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241795(%rip), %rcx      # 0x45d7a0 <init_node.87+0x8>
+               	movq	%rdx, 356344(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356337(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356293(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351637(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241782(%rip), %rcx      # 0x45d7b0 <init_node.88+0x8>
+               	movq	%rdx, 356304(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356297(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356253(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351608(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241769(%rip), %rcx      # 0x45d7c0 <init_node.89+0x8>
+               	movq	%rdx, 356264(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356257(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356213(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351579(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241756(%rip), %rcx      # 0x45d7d0 <init_node.90+0x8>
+               	movq	%rdx, 356224(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356217(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356173(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351550(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241743(%rip), %rcx      # 0x45d7e0 <init_node.91+0x8>
+               	movq	%rdx, 356184(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356177(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356133(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351521(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241730(%rip), %rcx      # 0x45d7f0 <init_node.92+0x8>
+               	movq	%rdx, 356144(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356137(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356093(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351492(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241717(%rip), %rcx      # 0x45d800 <init_node.93+0x8>
+               	movq	%rdx, 356104(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356097(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356053(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351463(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241704(%rip), %rcx      # 0x45d810 <init_node.94+0x8>
+               	movq	%rdx, 356064(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356057(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 356013(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351434(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241691(%rip), %rcx      # 0x45d820 <init_node.95+0x8>
+               	movq	%rdx, 356024(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	356017(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355973(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351405(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241678(%rip), %rcx      # 0x45d830 <init_node.96+0x8>
+               	movq	%rdx, 355984(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355977(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355933(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351376(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241665(%rip), %rcx      # 0x45d840 <init_node.97+0x8>
+               	movq	%rdx, 355944(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355937(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355893(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351347(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241652(%rip), %rcx      # 0x45d850 <init_node.98+0x8>
+               	movq	%rdx, 355904(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355897(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355853(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351318(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241639(%rip), %rcx      # 0x45d860 <init_node.99+0x8>
+               	movq	%rdx, 355864(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355857(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355813(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351289(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241626(%rip), %rcx      # 0x45d870 <init_node.100+0x8>
+               	movq	%rdx, 355824(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355817(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355773(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351260(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241613(%rip), %rcx      # 0x45d880 <init_node.101+0x8>
+               	movq	%rdx, 355784(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355777(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355733(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351231(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241600(%rip), %rcx      # 0x45d890 <init_node.102+0x8>
+               	movq	%rdx, 355744(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355737(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355693(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351202(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241587(%rip), %rcx      # 0x45d8a0 <init_node.103+0x8>
+               	movq	%rdx, 355704(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355697(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355653(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351173(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241574(%rip), %rcx      # 0x45d8b0 <init_node.104+0x8>
+               	movq	%rdx, 355664(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355657(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355613(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351144(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241561(%rip), %rcx      # 0x45d8c0 <init_node.105+0x8>
+               	movq	%rdx, 355624(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355617(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355573(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351115(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241548(%rip), %rcx      # 0x45d8d0 <init_node.106+0x8>
+               	movq	%rdx, 355584(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355577(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355533(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351086(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241535(%rip), %rcx      # 0x45d8e0 <init_node.107+0x8>
+               	movq	%rdx, 355544(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355537(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355493(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351057(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241522(%rip), %rcx      # 0x45d8f0 <init_node.108+0x8>
+               	movq	%rdx, 355504(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355497(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355453(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 351028(%rip)        # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	leaq	241509(%rip), %rcx      # 0x45d900 <init_node.109+0x8>
+               	movq	%rdx, 355464(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	movq	355457(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 355413(%rip)        # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	movq	%rax, 351032(%rip)      # 0x4784e8 <(anonymous namespace)::initTailNode>
-               	cmpb	$0, 246066(%rip)        # 0x45eae9 <_Konan_init_main_guard>
-               	jne	0x421eb6 <_Konan_constructors+0x16>
-               	leaq	350980(%rip), %rax      # 0x4784c8 <(anonymous namespace)::initHeadNode>
-               	movq	351005(%rip), %rcx      # 0x4784e8 <(anonymous namespace)::initTailNode>
+               	movq	%rax, 355424(%rip)      # 0x479c28 <(anonymous namespace)::initTailNode>
+               	cmpl	$0, 250461(%rip)        # 0x46022c <state_global$kotlin.ranges.IntRange+0x8>
+               	jne	0x4220b6 <_Konan_constructors+0x16>
+               	movl	$1, 250445(%rip)        # 0x46022c <state_global$kotlin.ranges.IntRange+0x8>
+               	leaq	355362(%rip), %rax      # 0x479c08 <(anonymous namespace)::initHeadNode>
+               	movq	355387(%rip), %rcx      # 0x479c28 <(anonymous namespace)::initTailNode>
@@@@
-               	movb	$1, 246023(%rip)        # 0x45eae9 <_Konan_init_main_guard>
-               	leaq	241455(%rip), %rax      # 0x45d918 <init_node.111>
+               	leaq	243988(%rip), %rax      # 0x45e918 <init_node.111>
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -15622,17 +15937,17 @@
@@@[(10, 11), (12, 15)]@@@
-               	movq	(%r15), %rdi
@@@@
-               	addq	8(%rbx), %rdi
+               	movq	8(%rbx), %rdi
+               	addq	(%r15), %rdi

@@ -15894,84 +16209,85 @@
@@@[(54, 58), (75, 78), (79, 87), (108, 112)]@@@
-               	movq	(%rbx), %rdi
-               	callq	0x4230f0 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x423700 <std::thread::~thread()>
@@@@
-               	testq	%rdi, %rdi
-               	jne	0x4230f6 <std::thread::~thread()+0x6>
-               	retq
@@@@
-               	callq	0x43b3f3 <std::terminate()>
-               	nopl	(%rax)
+               	cmpq	$0, (%rdi)
+               	jne	0x423709 <std::thread::~thread()+0x9>
+               	popq	%rax
+               	retq
+               	callq	0x43c233 <std::terminate()>
+               	nop
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x4230f0 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x423700 <std::thread::~thread()>

@@ -16630,42 +16946,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -16674,7 +16992,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -16686,42 +17004,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -16730,7 +17050,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -16742,42 +17062,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -16786,7 +17108,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -16897,31 +17219,35 @@
@@@[(3, 9), (14, 18), (25, 29), (33, 37), (38, 42)]@@@
-               	callq	0x43b6a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 216(%rbx)
+               	callq	0x43c4e4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
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
-               	jmp	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	jmp	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -16961,8 +17287,10 @@
@@@[(3, 9)]@@@
-               	callq	0x43b6a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x43c4e4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -16973,14 +17301,14 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -16996,30 +17324,34 @@
@@@[(3, 9), (14, 18), (25, 29)]@@@
-               	callq	0x43b6a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 224(%r14)
+               	callq	0x43c4e4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
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

@@ -17041,12 +17373,14 @@
@@@[(3, 9)]@@@
-               	callq	0x43b6a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 40(%rbx)
+               	callq	0x43c4e4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	40(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%rbx)

@@ -17054,7 +17388,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -17088,97 +17422,96 @@
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
-               	je	0x42432a <AddTLSRecord+0x24a>
-               	nopl	(%rax)
+               	je	0x42499a <AddTLSRecord+0x24a>
+               	nopw	(%rax,%rax)

@@ -17202,98 +17535,102 @@
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

@@ -17303,83 +17640,81 @@
@@@[(30, 43), (53, 57), (99, 106)]@@@
-               	jne	0x4244c2 <LookupTLS+0x82>
-               	jmp	0x42451d <LookupTLS+0xdd>
-               	movslq	168(%r9), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
-               	popq	%rcx
-               	retq
-               	leaq	239131(%rip), %rax      # 0x45eac8 <__KonanTlsKey>
+               	jne	0x424b3d <LookupTLS+0x7d>
+               	jmp	0x424b9d <LookupTLS+0xdd>
+               	movq	168(%r9), %rax
+               	jmp	0x424bb9 <LookupTLS+0xf9>
+               	leaq	243424(%rip), %rax      # 0x460208 <__KonanTlsKey>
@@@@
-               	je	0x424518 <LookupTLS+0xd8>
-               	nop
+               	je	0x424b98 <LookupTLS+0xd8>
+               	nopw	(%rax,%rax)
@@@@
-               	movslq	16(%rcx), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
+               	movq	16(%rcx), %rax
+               	movq	72(%r9), %rcx
+               	cltq
+               	leaq	(%rcx,%rax,8), %rax

@@ -17390,92 +17725,93 @@
@@@[(39, 45), (46, 53), (70, 76)]@@@
-               	movslq	8(%rsi), %rdx
-               	testq	%rdx, %rdx
-               	je	0x424666 <Kotlin_processArrayInMark+0xb6>
+               	movl	8(%rsi), %eax
+               	testl	%eax, %eax
+               	je	0x424ce6 <Kotlin_processArrayInMark+0xb6>
@@@@
-               	leaq	-8(,%rdx,8), %r8
-               	testb	$8, %r8b
-               	jne	0x4245f6 <Kotlin_processArrayInMark+0x46>
+               	movslq	%eax, %r8
+               	leaq	-8(,%r8,8), %rdx
+               	testb	$8, %dl
+               	jne	0x424c76 <Kotlin_processArrayInMark+0x46>
@@@@
-               	testq	%r8, %r8
-               	je	0x424666 <Kotlin_processArrayInMark+0xb6>
-               	leaq	(%rsi,%rdx,8), %r8
+               	testq	%rdx, %rdx
+               	je	0x424ce6 <Kotlin_processArrayInMark+0xb6>
+               	leaq	(%rsi,%r8,8), %r8

@@ -17597,215 +17933,221 @@
@@@[(105, 109), (133, 147), (148, 152)]@@@
-               	addq	$-1, 238588(%rip)       # 0x45ed98 <kotlin::mm::GlobalData::instance_+0xa8>
+               	movq	242885(%rip), %rax      # 0x4604e0 <kotlin::mm::GlobalData::instance_+0xa8>
+               	addq	$-1, %rax
+               	movq	%rax, 242874(%rip)      # 0x4604e0 <kotlin::mm::GlobalData::instance_+0xa8>
@@@@
-               	callq	0x43b65e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 24(%rsp)
-               	addq	$-1, 238536(%rip)       # 0x45edb0 <kotlin::mm::GlobalData::instance_+0xc0>
-               	jmp	0x4249ac <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x17c>
-               	movq	238511(%rip), %rdi      # 0x45eda0 <kotlin::mm::GlobalData::instance_+0xb0>
+               	callq	0x43c49e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	242815(%rip), %rax      # 0x4604f8 <kotlin::mm::GlobalData::instance_+0xc0>
+               	addq	$-1, %rax
+               	movq	%rax, 242804(%rip)      # 0x4604f8 <kotlin::mm::GlobalData::instance_+0xc0>
+               	jmp	0x425036 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x186>
+               	movq	242779(%rip), %rdi      # 0x4604e8 <kotlin::mm::GlobalData::instance_+0xb0>
@@@@
-               	je	0x424a10 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x1e0>
-               	nopw	(%rax,%rax)
+               	je	0x4250b0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x200>
+               	nopw	%cs:(%rax,%rax)

@@ -17928,213 +18270,226 @@
@@@[(3, 22), (23, 25), (26, 38), (39, 53), (54, 61), (62, 72), (73, 79), (81, 94), (101, 107), (108, 126), (127, 129), (133, 138), (142, 146), (151, 163), (178, 188), (189, 200), (204, 208), (212, 240), (241, 244), (245, 247), (248, 259), (260, 261), (262, 267), (268, 269), (270, 274), (281, 285), (286, 289), (290, 296), (297, 304), (308, 315), (319, 333), (335, 353), (355, 363)]@@@
-               	movq	280(%r12), %rdx
-               	xorl	%ecx, %ecx
-               	testq	%rdx, %rdx
-               	je	0x424e27 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xc7>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %rsi
-               	leaq	(,%rax,8), %rdi
-               	movslq	20(%rdx), %rbp
-               	leaq	(%rsi,%rbp,8), %rbx
+               	movq	280(%r12), %r13
+               	movq	%r13, 8(%rsp)
+               	testq	%r13, %r13
+               	je	0x4254f4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf4>
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
-               	je	0x424e35 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
+               	movq	%rbp, 16(%rsp)
+               	movq	%rbx, 24(%rsp)
+               	testq	%r13, %r13
+               	je	0x42551c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	cmpq	%rbx, %rbp
+               	jb	0x42551c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
@@@@
-               	cmpq	%rbx, %r13
-               	jb	0x424e35 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
-               	movq	8(%rdx), %rdx
-               	testq	%rdx, %rdx
-               	je	0x424e2e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xce>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %r13
-               	addq	$24, %r13
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x425502 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x102>
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
-               	jae	0x424df5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x95>
-               	jmp	0x424e35 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x4254b0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xb0>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x42551c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	pxor	%xmm0, %xmm0
+               	movdqa	%xmm0, 16(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	jmp	0x424e35 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	jmp	0x42551a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11a>
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
-               	jne	0x424e50 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf0>
-               	testq	%rbp, %rbp
-               	jne	0x424e8d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	movl	$1, %ecx
-               	movq	%rsi, %rdx
+               	jne	0x425530 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x130>
@@@@
-               	je	0x424e3f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
-               	jmp	0x424e8d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	nopl	(%rax)
-               	movl	$2, %ecx
-               	movq	%rbp, %rdx
-               	cmpq	%rbp, %rdi
-               	je	0x424e3f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
+               	jne	0x42556a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	testq	%rbp, %rbp
+               	jne	0x42556a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	movq	%rdx, 8(%rsp)
+               	movl	$1, %esi
+               	movq	%rdx, %r13
+               	jmp	0x425528 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
+               	nop
+               	movl	$2, %esi
+               	cmpq	%r13, %rcx
+               	je	0x425528 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
@@@@
-               	movdqa	%xmm0, (%rsp)
+               	movdqa	%xmm0, 32(%rsp)
@@@@
-               	jne	0x4250d1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x371>
-               	movq	(%rbp), %rsi
+               	jne	0x4257e3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3e3>
+               	movq	8(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x424ed8 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x178>
-               	movdqa	(%rsp), %xmm1
+               	je	0x4255bc <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1bc>
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
-               	je	0x424f00 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1a0>
-               	jmp	0x42501b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2bb>
-               	testq	%rbp, %rbp
-               	jne	0x424e96 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	%rcx, %rdi
-               	movq	%rcx, %rsi
+               	cmpq	%rcx, %r13
+               	je	0x4255e0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1e0>
+               	jmp	0x42571e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x31e>
@@@@
-               	je	0x424eec <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x18c>
-               	jmp	0x424e96 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	(%r13), %rsi
+               	jne	0x425574 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	testq	%rbp, %rbp
+               	jne	0x425574 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
+               	movq	%rdx, %r13
+               	jmp	0x4255cf <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1cf>
+               	movq	16(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x424f68 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x208>
-               	movdqa	(%rsp), %xmm1
+               	je	0x425651 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x251>
+               	movdqa	32(%rsp), %xmm1
@@@@
-               	movapd	%xmm1, (%rsp)
-               	addq	$8, %r13
-               	testq	%rbp, %rbp
-               	je	0x424fc1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	cmpq	%rbx, %r13
-               	jb	0x424fc1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	movq	8(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x424fba <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x25a>
-               	movslq	16(%rbp), %rax
-               	leaq	24(,%rax,8), %r13
-               	addq	%rbp, %r13
+               	movapd	%xmm1, 32(%rsp)
+               	addq	$8, %rbp
+               	movq	%rbp, 16(%rsp)
+               	testq	%r13, %r13
+               	je	0x4256ce <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	cmpq	%rbx, %rbp
+               	jb	0x4256ce <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	nopl	(%rax)
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x4256b4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2b4>
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
-               	jae	0x424f85 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x225>
-               	jmp	0x424fc1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x425670 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x4256ce <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
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
-               	jne	0x424fe0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x280>
+               	jne	0x4256e0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2e0>
+               	testq	%r13, %r13
+               	jne	0x425574 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	jne	0x424e96 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	jne	0x425574 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
@@@@
-               	movq	%rcx, %rdi
-               	testq	%r13, %r13
-               	je	0x424fd0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x424e96 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	movq	%rdx, %r13
+               	jmp	0x4256da <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
@@@@
-               	movq	%rbp, %rdi
-               	cmpq	%rbp, %rdx
-               	je	0x424fd0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x424e96 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	cmpq	%r13, %rcx
+               	je	0x4256da <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
+               	jmp	0x425574 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	movdqa	%xmm0, (%rsp)
-               	jmp	0x425035 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d5>
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movdqa	%xmm0, 32(%rsp)
+               	jmp	0x425745 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x345>
+               	nopw	(%rax,%rax)
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x425030 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d0>
-               	cmpb	$0, 236208(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	je	0x425073 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	cmpq	%r14, 236191(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	jne	0x425073 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	leaq	236182(%rip), %rcx      # 0x45eaf0 <(anonymous namespace)::current>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	jne	0x425740 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x340>
+               	cmpb	$0, 240360(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x425784 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	cmpq	%r14, 240343(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	jne	0x425784 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	leaq	240334(%rip), %rcx      # 0x460238 <(anonymous namespace)::current>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	je	0x42509f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x33f>
-               	movdqu	(%rax), %xmm1
-               	jmp	0x4250b3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x353>
-               	cmpb	$0, 236414(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x4250bb <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	cmpq	%r14, 236397(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x4250bb <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	leaq	236388(%rip), %rcx      # 0x45ebf0 <(anonymous namespace)::last>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	je	0x4257b1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3b1>
+               	movupd	(%rax), %xmm1
+               	jmp	0x4257c5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3c5>
+               	cmpb	$0, 240565(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x4257cd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	cmpq	%r14, 240548(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x4257cd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	leaq	240539(%rip), %rcx      # 0x460338 <(anonymous namespace)::last>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	jne	0x42506d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x30d>
-               	pxor	%xmm1, %xmm1
-               	movdqu	%xmm1, 16(%rax)
-               	movdqu	%xmm1, (%rax)
+               	jne	0x42577e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x37e>
+               	xorpd	%xmm1, %xmm1
+               	movupd	%xmm1, 16(%rax)
+               	movupd	%xmm1, (%rax)

@@ -18185,41 +18540,41 @@
@@@[(36, 44), (46, 48), (49, 51)]@@@
-               	callq	0x42f9d0 <mi_free>
-               	movq	(%r15), %rax
-               	movq	32(%r15), %rcx
-               	movq	%rcx, 8(%rax)
+               	callq	0x4302d0 <mi_free>
+               	movq	32(%r15), %rax
+               	movq	(%r15), %rcx
+               	movq	%rax, 8(%rcx)
@@@@
-               	movdqu	16(%rax), %xmm1
+               	movdqu	16(%rcx), %xmm1
@@@@
-               	movdqu	%xmm1, 16(%rax)
+               	movdqu	%xmm1, 16(%rcx)

@@ -18258,12 +18613,12 @@
@@@[(9, 13)]@@@
-               	jmp	0x425283 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
-               	movl	%ebx, %ebx
+               	jmp	0x425993 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
+               	movl	%eax, %ebx

@@ -18282,26 +18637,28 @@
@@@[(14, 18), (19, 23), (24, 27), (28, 35)]@@@
-               	movslq	20(%rcx), %rbp
-               	testq	%rbp, %rbp
+               	movl	20(%rcx), %ecx
+               	testl	%ecx, %ecx
@@@@
-               	js	0x4252c0 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
-               	movl	%ebp, %ebp
+               	js	0x4259d0 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
+               	movl	%ecx, %ebp
@@@@
-               	jmp	0x4252d2 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc2>
+               	jmp	0x4259e5 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc5>
+               	nop
@@@@
-               	movl	24(%rax), %eax
-               	negq	%rbp
-               	imulq	%rax, %rbp
+               	movslq	%ecx, %rcx
+               	movl	24(%rax), %ebp
+               	negq	%rcx
+               	imulq	%rcx, %rbp

@@ -18323,68 +18680,69 @@
@@@[(24, 35), (44, 50)]@@@
-               	movslq	20(%rax), %rbx
-               	testq	%rbx, %rbx
-               	jns	0x42523b <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
-               	movl	8(%rsi), %eax
-               	negq	%rbx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	jns	0x42594b <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
+               	cltq
+               	movl	8(%rsi), %ebx
+               	negq	%rax
@@@@
-               	je	0x4253b1 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
-               	nopw	(%rax,%rax)
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x425ac1 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
+               	nopl	(%rax)
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>

@@ -18404,23 +18762,23 @@
@@@[(10, 13), (14, 15)]@@@
-               	jne	0x4254c8 <GCStateHolder::schedule()+0x68>
-               	movq	40(%rbx), %rax
+               	jne	0x425bd8 <GCStateHolder::schedule()+0x68>
@@@@
+               	movq	40(%rbx), %rax

@@ -18429,35 +18787,38 @@
@@@[(8, 10), (11, 16), (17, 21), (31, 35)]@@@
+               	movq	%rdi, %rax
+               	movq	(%rdi), %rdi
@@@@
-               	je	0x4254f0 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x425c09 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
+               	movl	8(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x4254f0 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x425c09 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
@@@@
-               	jmp	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -18470,54 +18831,52 @@
@@@[(3, 8), (15, 21), (60, 65)]@@@
-               	movl	$248, %eax
-               	addq	(%rdi), %rax
-               	movq	%rax, %rdi
+               	movq	(%rdi), %rdi
+               	addq	$248, %rdi
@@@@
-               	je	0x425571 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
-               	nopw	(%rax,%rax)
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x425c91 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movq	(%rdi), %rdi
-               	jmp	0x4271e0 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
-               	nopl	(%rax,%rax)
+               	jmp	0x4279d0 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
+               	nopw	%cs:(%rax,%rax)

@@ -18560,96 +18919,99 @@
@@@[(6, 9), (15, 18), (19, 25), (35, 39), (43, 49), (67, 111), (113, 121), (133, 157), (159, 164)]@@@
-               	movq	%rcx, 208(%rsp)
+               	movq	%rcx, 192(%rsp)
+               	leaq	104(%rsp), %r13
@@@@
-               	jmp	0x4256e5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe5>
+               	jmp	0x425e13 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf3>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	104(%rsp), %rdi
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	je	0x425659 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
-               	movq	(%rax), %r13
+               	je	0x425d79 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
+               	movq	(%rax), %rbp
@@@@
-               	je	0x425711 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x111>
-               	nopl	(%rax,%rax)
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x425e41 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x121>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movups	%xmm0, 234416(%rip)     # 0x45eaf0 <(anonymous namespace)::current>
-               	movups	%xmm0, 234425(%rip)     # 0x45eb00 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 234434(%rip)     # 0x45eb10 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 234443(%rip)     # 0x45eb20 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 234452(%rip)     # 0x45eb30 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 234461(%rip)     # 0x45eb40 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 234470(%rip)     # 0x45eb50 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 234479(%rip)     # 0x45eb60 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 234488(%rip)     # 0x45eb70 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 234497(%rip)     # 0x45eb80 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 234506(%rip)     # 0x45eb90 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 234515(%rip)     # 0x45eba0 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 234524(%rip)     # 0x45ebb0 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 234533(%rip)     # 0x45ebc0 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 234542(%rip)     # 0x45ebd0 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 234551(%rip)     # 0x45ebe0 <(anonymous namespace)::current+0xf0>
-               	movq	%r13, 234304(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	movb	$1, 234305(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 234301(%rip)      # 0x45eb00 <(anonymous namespace)::current+0x10>
-               	movb	$1, 234302(%rip)        # 0x45eb08 <(anonymous namespace)::current+0x18>
-               	movb	$0, 234265(%rip)        # 0x45eaea <(anonymous namespace)::lock>
+               	movups	%xmm0, 238536(%rip)     # 0x460238 <(anonymous namespace)::current>
+               	movups	%xmm0, 238545(%rip)     # 0x460248 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 238554(%rip)     # 0x460258 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 238563(%rip)     # 0x460268 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 238572(%rip)     # 0x460278 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 238581(%rip)     # 0x460288 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 238590(%rip)     # 0x460298 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 238599(%rip)     # 0x4602a8 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 238608(%rip)     # 0x4602b8 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 238617(%rip)     # 0x4602c8 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 238626(%rip)     # 0x4602d8 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 238635(%rip)     # 0x4602e8 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 238644(%rip)     # 0x4602f8 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 238653(%rip)     # 0x460308 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 238662(%rip)     # 0x460318 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 238671(%rip)     # 0x460328 <(anonymous namespace)::current+0xf0>
+               	movq	%rbp, 238424(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	movb	$1, 238425(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 238421(%rip)      # 0x460248 <(anonymous namespace)::current+0x10>
+               	movb	$1, 238422(%rip)        # 0x460250 <(anonymous namespace)::current+0x18>
+               	movb	$0, 238383(%rip)        # 0x460230 <(anonymous namespace)::lock>
@@@@
-               	xchgb	%al, 239055(%rip)       # 0x45fdb0 <(anonymous namespace)::markingRequested (.0.0)>
-               	movq	%r13, %rax
-               	xchgq	%rax, 239061(%rip)      # 0x45fdc0 <(anonymous namespace)::markingEpoch (.0)>
-               	callq	0x423e00 <kotlin::mm::RequestThreadsSuspension()>
+               	xchgb	%al, 243175(%rip)       # 0x4614f8 <(anonymous namespace)::markingRequested (.0.0)>
+               	movq	%rbp, %rax
+               	xchgq	%rax, 243181(%rip)      # 0x461508 <(anonymous namespace)::markingEpoch (.0)>
+               	callq	0x424410 <kotlin::mm::RequestThreadsSuspension()>
@@@@
-               	jne	0x425800 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x200>
-               	cmpb	$0, 234208(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	je	0x42582a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x22a>
-               	leaq	234191(%rip), %rbx      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 234184(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425843 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x243>
-               	cmpb	$0, 234439(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425850 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	leaq	234422(%rip), %rbx      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 234415(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425850 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x425f30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x210>
+               	cmpb	$0, 238328(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x425f5a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x23a>
+               	leaq	238311(%rip), %rbx      # 0x460238 <(anonymous namespace)::current>
+               	cmpq	%rbp, 238304(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x425f73 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x253>
+               	cmpb	$0, 238559(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x425f80 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	leaq	238542(%rip), %rbx      # 0x460338 <(anonymous namespace)::last>
+               	cmpq	%rbp, 238535(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x425f80 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	movb	$0, 234131(%rip)        # 0x45eaea <(anonymous namespace)::lock>
-               	nopw	(%rax,%rax)
+               	movq	%rbp, (%rsp)
+               	movb	$0, 238245(%rip)        # 0x460230 <(anonymous namespace)::lock>
+               	nopl	(%rax,%rax)

@@ -18657,281 +19019,291 @@
@@@[(64, 84), (95, 102), (103, 116), (172, 193), (194, 199), (203, 206), (225, 230), (231, 236), (244, 248), (272, 284), (312, 315), (316, 321), (339, 346), (350, 372)]@@@
-               	je	0x42593f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x33f>
-               	leaq	233914(%rip), %rax      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 233907(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425958 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x358>
-               	cmpb	$0, 234162(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425963 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
-               	leaq	234145(%rip), %rax      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 234138(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425963 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
+               	je	0x426073 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x353>
+               	leaq	238034(%rip), %rax      # 0x460238 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 238023(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x426090 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x370>
+               	cmpb	$0, 238278(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x42609b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
+               	leaq	238261(%rip), %rax      # 0x460338 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 238250(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x42609b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
@@@@
-               	movq	216(%rsp), %rdi
-               	movq	%r13, %rsi
-               	callq	0x426a80 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movq	200(%rsp), %rdi
+               	movq	(%rsp), %rbp
+               	movq	%rbp, %rsi
+               	callq	0x427250 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
-               	movq	%r13, %rsi
-               	callq	0x424830 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
-               	movq	%r13, %rdi
-               	movq	208(%rsp), %rsi
-               	callq	0x425210 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	movq	%rbp, %rsi
+               	callq	0x424eb0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
+               	movq	%rbp, %rdi
+               	movq	192(%rsp), %rsi
+               	callq	0x425920 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
+               	nop
@@@@
-               	jne	0x425a40 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x440>
-               	cmpb	$0, 233632(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	leaq	234361(%rip), %r14      # 0x45edd8 <kotlin::mm::GlobalData::instance_+0xe8>
-               	je	0x425a71 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x471>
-               	leaq	233608(%rip), %rax      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 233601(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425a8f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x48f>
-               	cmpb	$0, 233856(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425ab0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b0>
-               	leaq	233839(%rip), %rax      # 0x45ebf0 <(anonymous namespace)::last>
+               	jne	0x426170 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x450>
+               	cmpb	$0, 237752(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	leaq	238481(%rip), %r14      # 0x460520 <kotlin::mm::GlobalData::instance_+0xe8>
+               	je	0x4261a5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x485>
+               	leaq	237728(%rip), %rax      # 0x460238 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 237717(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x4261c7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4a7>
+               	cmpb	$0, 237972(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x4261e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c0>
+               	leaq	237955(%rip), %rax      # 0x460338 <(anonymous namespace)::last>
@@@@
-               	cmpq	%r13, 233827(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425ab2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 237939(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x4261e2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jmp	0x425ab2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
-               	nopl	(%rax,%rax)
+               	jmp	0x4261e2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jne	0x425ad0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4d0>
-               	leaq	16(%rsp), %r15
-               	movq	%r15, 24(%rsp)
+               	jne	0x426200 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4e0>
+               	leaq	8(%rsp), %r15
@@@@
-               	movq	$0, 32(%rsp)
-               	movq	234200(%rip), %rbp      # 0x45edd8 <kotlin::mm::GlobalData::instance_+0xe8>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	movq	238320(%rip), %rbp      # 0x460520 <kotlin::mm::GlobalData::instance_+0xe8>
@@@@
-               	addq	$-1, 234164(%rip)       # 0x45edd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	238285(%rip), %rax      # 0x460518 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 238274(%rip)      # 0x460518 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	callq	0x43b65e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 32(%rsp)
-               	addq	$-1, 234112(%rip)       # 0x45ede8 <kotlin::mm::GlobalData::instance_+0xf8>
-               	jmp	0x425b2c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x52c>
+               	callq	0x43c49e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	238211(%rip), %rax      # 0x460530 <kotlin::mm::GlobalData::instance_+0xf8>
+               	addq	$-1, %rax
+               	movq	%rax, 238200(%rip)      # 0x460530 <kotlin::mm::GlobalData::instance_+0xf8>
+               	jmp	0x426266 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x546>
@@@@
-               	movq	32(%rsp), %rax
-               	movq	%r15, 24(%rsp)
+               	movq	24(%rsp), %rax
@@@@
-               	movq	$0, 32(%rsp)
-               	jmp	0x425bf0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x5f0>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	jmp	0x426340 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
@@@@
-               	je	0x425c31 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x631>
-               	nopw	(%rax,%rax)
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movq	(%rsp), %r14
+               	je	0x426381 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x661>
+               	nop
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x425c20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
-               	cmpb	$0, 233152(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	je	0x425c4a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x64a>
-               	leaq	233135(%rip), %rax      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 233128(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425c63 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x663>
-               	cmpb	$0, 233383(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425c8d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
-               	leaq	233366(%rip), %rax      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 233359(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425c8d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
+               	jne	0x426370 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x650>
+               	cmpb	$0, 237240(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x42639a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x67a>
+               	leaq	237223(%rip), %rax      # 0x460238 <(anonymous namespace)::current>
+               	cmpq	%r14, 237216(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x4263b3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x693>
+               	cmpb	$0, 237471(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x4263dd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>
+               	leaq	237454(%rip), %rax      # 0x460338 <(anonymous namespace)::last>
+               	cmpq	%r14, 237447(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x4263dd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>

@@ -18956,186 +19328,197 @@
@@@[(10, 14), (21, 29), (42, 64), (131, 155), (160, 169), (175, 181), (189, 211), (214, 222), (223, 226), (231, 234), (254, 259), (262, 270), (271, 275), (278, 286), (287, 294)]@@@
-               	addq	$-1, 233546(%rip)       # 0x45edd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	237635(%rip), %rax      # 0x460518 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 237624(%rip)      # 0x460518 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jmp	0x425cb8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6b8>
-               	nop
-               	movb	$0, 233545(%rip)        # 0x45edf0 <kotlin::mm::GlobalData::instance_+0x100>
-               	movq	233506(%rip), %rbx      # 0x45edd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	jmp	0x426408 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6e8>
+               	nopl	(%rax,%rax)
+               	movb	$0, 237617(%rip)        # 0x460538 <kotlin::mm::GlobalData::instance_+0x100>
+               	movq	237578(%rip), %rbx      # 0x460518 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jne	0x425dc0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7c0>
-               	cmpb	$0, 232736(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	je	0x425dea <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7ea>
-               	leaq	232719(%rip), %rax      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 232712(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425e03 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x803>
-               	cmpb	$0, 232967(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425e2d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
-               	leaq	232950(%rip), %rax      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 232943(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425e2d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
+               	jne	0x426520 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x800>
+               	cmpb	$0, 236808(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x42654a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82a>
+               	leaq	236791(%rip), %rax      # 0x460238 <(anonymous namespace)::current>
+               	cmpq	%r14, 236784(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x426563 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x843>
+               	cmpb	$0, 237039(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x42658d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
+               	leaq	237022(%rip), %rax      # 0x460338 <(anonymous namespace)::last>
+               	cmpq	%r14, 237015(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x42658d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
@@@@
-               	jne	0x425ed0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8d0>
-               	cmpb	$0, 232464(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	je	0x425efa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8fa>
-               	leaq	232447(%rip), %rbx      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 232440(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425f13 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x913>
-               	cmpb	$0, 232695(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425f20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	leaq	232678(%rip), %rbx      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 232671(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425f20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x426630 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x910>
+               	cmpb	$0, 236536(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x42665a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x93a>
+               	leaq	236519(%rip), %rbx      # 0x460238 <(anonymous namespace)::current>
+               	cmpq	%r14, 236512(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x426673 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x953>
+               	cmpb	$0, 236767(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x426680 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	leaq	236750(%rip), %rbx      # 0x460338 <(anonymous namespace)::last>
+               	cmpq	%r14, 236743(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x426680 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	leaq	104(%rsp), %rax
-               	movups	%xmm0, (%rax)
-               	movq	$0, 16(%rax)
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
-               	movq	233138(%rip), %rax      # 0x45edf8 <kotlin::mm::GlobalData::instance_+0x108>
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>
+               	movq	237213(%rip), %rax      # 0x460540 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	je	0x425f71 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x971>
-               	nop
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x4266d1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9b1>
+               	nopl	(%rax,%rax)
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	cmpb	$0, 232308(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	je	0x425f96 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x996>
-               	leaq	232291(%rip), %rax      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%r13, 232284(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x425faf <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9af>
-               	cmpb	$0, 232539(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x425fcd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
-               	leaq	232522(%rip), %rax      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 232515(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x425fcd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	cmpb	$0, 236380(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x4266fa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9da>
+               	leaq	236363(%rip), %rax      # 0x460238 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 236352(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x426717 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9f7>
+               	cmpb	$0, 236607(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x42672e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
+               	leaq	236590(%rip), %rax      # 0x460338 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 236579(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x42672e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
@@@@
-               	jne	0x425fcd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	je	0x426750 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa30>
+               	movb	$0, 236283(%rip)        # 0x460230 <(anonymous namespace)::lock>
+               	movq	(%r14), %rbx
+               	testq	%rbx, %rbx
+               	jne	0x42676a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa4a>
+               	jmp	0x426910 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movq	%r13, 136(%rsp)
-               	movb	$0, 232206(%rip)        # 0x45eaea <(anonymous namespace)::lock>
+               	movb	$0, 236242(%rip)        # 0x460230 <(anonymous namespace)::lock>
@@@@
-               	jmp	0x426007 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
+               	jmp	0x426787 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	nop
@@@@
-               	testb	$64, 88(%rax)
-               	jne	0x426060 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa60>
+               	movl	88(%rax), %eax
+               	testb	$64, %al
+               	jne	0x4267e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xac0>
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x426136 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb36>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x4268c6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba6>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x426144 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb44>
-               	nopw	(%rax,%rax)
+               	jmp	0x4268d6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbb6>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x42607c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa7c>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x4267fa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xada>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x42608a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa8a>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jmp	0x42680a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaea>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -19144,38 +19527,42 @@
@@@[(3, 13), (14, 17), (37, 47), (51, 60)]@@@
-               	callq	0x427140 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
-               	movq	16(%rsp), %r15
-               	movq	24(%rsp), %rbx
-               	movq	$0, 16(%rsp)
-               	movq	%r15, 160(%rsp)
+               	callq	0x427920 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
+               	movq	16(%rsp), %rbx
+               	movq	8(%rsp), %rax
+               	movq	$0, 8(%rsp)
+               	movq	%rax, 144(%rsp)
@@@@
-               	je	0x4260f5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaf5>
+               	movq	144(%rsp), %r15
+               	je	0x42687d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb5d>
@@@@
-               	addq	$1, 120(%rsp)
-               	leaq	160(%rsp), %rdi
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	16(%rsp), %r15
+               	movq	120(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 120(%rsp)
+               	leaq	144(%rsp), %rdi
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	leaq	8(%rsp), %r15
@@@@
-               	jne	0x426007 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
-               	jmp	0x426180 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb80>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jne	0x426787 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	jmp	0x426910 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -19184,422 +19571,441 @@
@@@[(14, 17), (32, 56), (62, 69), (73, 74), (75, 81), (85, 102), (110, 162), (236, 238), (251, 266), (269, 276), (277, 290), (296, 299), (300, 306), (307, 354), (358, 363), (364, 370), (387, 391), (408, 414), (420, 465), (528, 541), (542, 545), (557, 567), (611, 615)]@@@
-               	nop
-               	movq	232561(%rip), %rax      # 0x45edf8 <kotlin::mm::GlobalData::instance_+0x108>
+               	movq	236585(%rip), %rax      # 0x460540 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	jne	0x4261a0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba0>
-               	cmpb	$0, 231744(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %rsi
-               	je	0x4261d2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbd2>
-               	leaq	231719(%rip), %rax      # 0x45eaf0 <(anonymous namespace)::current>
-               	cmpq	%rsi, 231712(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	je	0x4261eb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbeb>
-               	cmpb	$0, 231967(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x426209 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
-               	leaq	231950(%rip), %rax      # 0x45ebf0 <(anonymous namespace)::last>
-               	cmpq	%rsi, 231943(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x426209 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
+               	jne	0x426930 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc10>
+               	cmpb	$0, 235768(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	movq	(%rsp), %r14
+               	je	0x42695e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc3e>
+               	leaq	235747(%rip), %rax      # 0x460238 <(anonymous namespace)::current>
+               	cmpq	%r14, 235740(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	je	0x426977 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc57>
+               	cmpb	$0, 235995(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x426995 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
+               	leaq	235978(%rip), %rax      # 0x460338 <(anonymous namespace)::last>
+               	cmpq	%r14, 235971(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x426995 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
@@@@
-               	movb	$0, 231642(%rip)        # 0x45eaea <(anonymous namespace)::lock>
-               	movq	200(%rsp), %rdi
-               	callq	0x426a80 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movb	$0, 235668(%rip)        # 0x460230 <(anonymous namespace)::lock>
+               	movq	184(%rsp), %rdi
+               	movq	%r14, %rsi
+               	callq	0x427250 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
+               	leaq	104(%rsp), %r13
@@@@
-               	je	0x426241 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc41>
-               	nop
-               	callq	0x422a00 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x4269e1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcc1>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x423010 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x426230 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc30>
-               	cmpb	$0, 231600(%rip)        # 0x45eaf8 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %r13
-               	je	0x426310 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	cmpq	%r13, 231571(%rip)      # 0x45eaf0 <(anonymous namespace)::current>
-               	jne	0x426310 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 231585(%rip)      # 0x45eb10 <(anonymous namespace)::current+0x20>
-               	movb	$1, 231586(%rip)        # 0x45eb18 <(anonymous namespace)::current+0x28>
+               	jne	0x4269d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcb0>
+               	cmpb	$0, 235608(%rip)        # 0x460240 <(anonymous namespace)::current+0x8>
+               	je	0x426aa0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	cmpq	%r14, 235587(%rip)      # 0x460238 <(anonymous namespace)::current>
+               	jne	0x426aa0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 235601(%rip)      # 0x460258 <(anonymous namespace)::current+0x20>
+               	movb	$1, 235602(%rip)        # 0x460260 <(anonymous namespace)::current+0x28>
@@@@
-               	movups	%xmm0, 231512(%rip)     # 0x45eaf0 <(anonymous namespace)::current>
-               	movups	%xmm0, 231521(%rip)     # 0x45eb00 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 231530(%rip)     # 0x45eb10 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 231539(%rip)     # 0x45eb20 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 231548(%rip)     # 0x45eb30 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 231557(%rip)     # 0x45eb40 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 231566(%rip)     # 0x45eb50 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 231575(%rip)     # 0x45eb60 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 231584(%rip)     # 0x45eb70 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 231593(%rip)     # 0x45eb80 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 231602(%rip)     # 0x45eb90 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 231611(%rip)     # 0x45eba0 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 231620(%rip)     # 0x45ebb0 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 231629(%rip)     # 0x45ebc0 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 231638(%rip)     # 0x45ebd0 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 231647(%rip)     # 0x45ebe0 <(anonymous namespace)::current+0xf0>
-               	jmp	0x426335 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	nopw	%cs:(%rax,%rax)
-               	cmpb	$0, 231649(%rip)        # 0x45ebf8 <(anonymous namespace)::last+0x8>
-               	je	0x426335 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	cmpq	%r13, 231632(%rip)      # 0x45ebf0 <(anonymous namespace)::last>
-               	jne	0x426335 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	callq	0x43c050 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 231650(%rip)      # 0x45ec10 <(anonymous namespace)::last+0x20>
-               	movb	$1, 231651(%rip)        # 0x45ec18 <(anonymous namespace)::last+0x28>
-               	movb	$0, 231342(%rip)        # 0x45eaea <(anonymous namespace)::lock>
+               	movups	%xmm0, 235528(%rip)     # 0x460238 <(anonymous namespace)::current>
+               	movups	%xmm0, 235537(%rip)     # 0x460248 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 235546(%rip)     # 0x460258 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 235555(%rip)     # 0x460268 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 235564(%rip)     # 0x460278 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 235573(%rip)     # 0x460288 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 235582(%rip)     # 0x460298 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 235591(%rip)     # 0x4602a8 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 235600(%rip)     # 0x4602b8 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 235609(%rip)     # 0x4602c8 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 235618(%rip)     # 0x4602d8 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 235627(%rip)     # 0x4602e8 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 235636(%rip)     # 0x4602f8 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 235645(%rip)     # 0x460308 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 235654(%rip)     # 0x460318 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 235663(%rip)     # 0x460328 <(anonymous namespace)::current+0xf0>
+               	jmp	0x426ac5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	nop
+               	cmpb	$0, 235673(%rip)        # 0x460340 <(anonymous namespace)::last+0x8>
+               	je	0x426ac5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	cmpq	%r14, 235656(%rip)      # 0x460338 <(anonymous namespace)::last>
+               	jne	0x426ac5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	callq	0x43ce90 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 235674(%rip)      # 0x460358 <(anonymous namespace)::last+0x20>
+               	movb	$1, 235675(%rip)        # 0x460360 <(anonymous namespace)::last+0x28>
+               	movb	$0, 235364(%rip)        # 0x460230 <(anonymous namespace)::lock>
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
-               	movups	119025(%rip), %xmm0     # 0x4435bb <typeinfo name for kotlin::gc::GCSchedulerData+0x1012>
-               	movups	%xmm0, (%rax)
-               	movq	%r13, 14(%rax)
+               	movq	%rax, 16(%rsp)
@@@@
-               	movb	$1, 56(%rsp)
-               	leaq	1530(%rip), %r13        # 0x426ae0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
-               	movq	%r13, 64(%rsp)
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rax)
+               	movq	14(%rbx), %rcx
+               	movq	%rcx, 14(%rax)
+               	movq	$22, 24(%rsp)
+               	movq	16(%rsp), %rbx
+               	movb	$0, 22(%rbx)
+               	movb	$1, 48(%rsp)
+               	leaq	1576(%rip), %rax        # 0x4272b0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
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
+               	je	0x426dc0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a0>
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
-               	movq	223852(%rip), %rdx      # 0x45cfc0 <write+0x45cfc0>
-               	callq	0x43e27e <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
-               	movq	8(%rsp), %rdi
-               	testq	%rdi, %rdi
-               	movq	136(%rsp), %r13
-               	movq	152(%rsp), %rbx
-               	je	0x426579 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf79>
-               	movq	(%rdi), %rax
-               	callq	*8(%rax)
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x42659d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	movq	24(%rsp), %rdi
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x42659d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	callq	0x4136f0 <free@plt>
-               	cmpq	$0, (%rbp)
-               	jne	0x4266ef <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10ef>
-               	movq	144(%rsp), %rax
-               	movq	%rax, (%rbp)
-               	movq	$0, 144(%rsp)
-               	cmpb	$0, 192(%rsp)
-               	je	0x4263d7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	movq	160(%rsp), %rdi
-               	leaq	176(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x4263d7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	callq	0x4136f0 <free@plt>
-               	jmp	0x4263d7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	movq	32(%rsp), %rcx
+               	movq	%rcx, 32(%rax)
+               	jmp	0x426dc6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a6>
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
-               	callq	0x42f9d0 <mi_free>
-               	jmp	0x426670 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1070>
-               	movq	%r13, 16(%rsp)
+               	callq	0x4302d0 <mi_free>
+               	jmp	0x426d60 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1040>
+               	movq	%r14, 8(%rsp)
@@@@
-               	jmp	0x42663d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x103d>
+               	jmp	0x426d21 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1001>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rcx)
+               	movq	%r13, %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 24(%rax)
+               	movq	%rdx, 16(%rsp)
+               	movq	$0, 24(%rsp)
+               	movb	$0, 32(%rsp)
+               	movb	$1, 48(%rax)
+               	leaq	1216(%rip), %rcx        # 0x4272b0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
+               	movq	%rcx, 56(%rax)
+               	movq	%rax, 64(%rsp)
+               	leaq	136(%rsp), %rdi
+               	leaq	64(%rsp), %rsi
+               	movq	225715(%rip), %rdx      # 0x45dfc0 <write+0x45dfc0>
+               	callq	0x43f0be <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
+               	movq	64(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x426e22 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1102>
+               	movq	(%rdi), %rax
+               	callq	*8(%rax)
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	leaq	104(%rsp), %r13
+               	je	0x426e4b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	movq	16(%rsp), %rdi
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x426e4b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	callq	0x4136d0 <free@plt>
+               	cmpq	$0, (%rbp)
+               	jne	0x426ebe <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x119e>
+               	movq	136(%rsp), %rax
+               	movq	%rax, (%rbp)
+               	movq	$0, 136(%rsp)
+               	cmpb	$0, 176(%rsp)
+               	je	0x426b67 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	movq	144(%rsp), %rdi
+               	leaq	160(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x426b67 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x426b67 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
@@@@
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x426794 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
-               	movq	24(%rsp), %rbx
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rbx
-               	jne	0x42678c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x118c>
-               	jmp	0x426794 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	je	0x426f63 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
+               	movq	16(%rsp), %rbx
+               	jmp	0x426f51 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1231>
@@@@
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rbx
+               	je	0x426f63 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
@@@@
-               	je	0x4267b8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x11b8>
-               	callq	0x4136f0 <free@plt>
-               	cmpq	$0, 223224(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x42684f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x124f>
-               	movq	152(%rsp), %rdi
+               	je	0x426f87 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1267>
+               	callq	0x4136d0 <free@plt>
+               	cmpq	$0, 225321(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x427019 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x12f9>
+               	movq	%r13, %rdi
@@@@
-               	callq	0x422a10 <__clang_call_terminate>
-               	nopw	(%rax,%rax)
+               	callq	0x423020 <__clang_call_terminate>
+               	nopw	%cs:(%rax,%rax)

@@ -19660,37 +20066,36 @@
@@@[(3, 7), (8, 13), (18, 24), (26, 27), (32, 40), (41, 54)]@@@
-               	movq	8(%rdi), %r15
-               	movq	%r15, 8(%rsp)
+               	movq	8(%rdi), %rdi
+               	movq	%rdi, 8(%rsp)
@@@@
-               	cmpq	$0, 222657(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x426a05 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x35>
-               	movq	%r15, %rdi
+               	cmpq	$0, 224753(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x4271d2 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x32>
@@@@
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jg	0x426a4d <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x7d>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jg	0x427218 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x78>
@@@@
+               	nopl	(%rax)
@@@@
-               	callq	0x43bca0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jle	0x426a20 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
+               	callq	0x43cae0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jle	0x4271f0 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
@@@@
-               	je	0x426a69 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	movq	8(%rsp), %r15
-               	testq	%r15, %r15
-               	je	0x426a69 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	cmpq	$0, 222558(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x426a64 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x94>
-               	movq	%r15, %rdi
+               	je	0x427236 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x427236 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	cmpq	$0, 224654(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x427231 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x91>

@@ -19701,8 +20106,8 @@
@@@[(3, 7)]@@@
-               	callq	0x43bf8a <std::__throw_system_error(int)>
-               	nop
+               	callq	0x43cdca <std::__throw_system_error(int)>
+               	nopl	(%rax)

@@ -19748,140 +20153,140 @@
@@@[(39, 41), (42, 58), (71, 79), (80, 85), (89, 107), (108, 121), (122, 128), (138, 143), (169, 175), (182, 188), (196, 201)]@@@
-               	movq	%rax, 128(%rsp)
-               	leaq	128(%r13), %rax
@@@@
-               	xorl	%eax, %eax
-               	movq	%rax, 40(%rsp)
-               	leaq	8(%rsp), %rbp
-               	movq	%r14, 112(%rsp)
-               	movq	%r15, 104(%rsp)
-               	jmp	0x426bb5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	leaq	128(%r13), %rax
+               	movq	%rax, 112(%rsp)
+               	xorl	%ebp, %ebp
+               	leaq	8(%rsp), %rbx
+               	movq	%r14, 104(%rsp)
+               	movq	%r15, 96(%rsp)
+               	jmp	0x427375 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>
+               	nopl	(%rax)
@@@@
-               	movq	32(%r13), %rbx
-               	movb	$1, %al
-               	testq	%rbx, %rbx
-               	jne	0x426c28 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x148>
+               	movq	32(%r13), %rax
+               	movb	$1, %cl
+               	testq	%rax, %rax
+               	jne	0x4273e3 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x133>
@@@@
-               	movq	40(%rsp), %rax
-               	cmpq	%rax, 160(%r13)
-               	jne	0x426c22 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x142>
+               	cmpq	%rbp, 160(%r13)
+               	jne	0x4273dd <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12d>
@@@@
-               	movq	%rbp, %rsi
-               	callq	0x43bca0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	32(%r13), %rbx
-               	testq	%rbx, %rbx
-               	je	0x426bf0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x110>
-               	jmp	0x426c24 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x144>
-               	xorl	%ebx, %ebx
-               	movb	16(%rsp), %al
-               	movq	16(%r13), %rcx
+               	movq	%rbx, %rsi
+               	callq	0x43cae0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	32(%r13), %rax
+               	testq	%rax, %rax
+               	je	0x4273b0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x100>
+               	jmp	0x4273df <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12f>
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
-               	je	0x426f61 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x481>
+               	movups	%xmm0, (%rax)
+               	testb	%cl, %cl
+               	je	0x427744 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x494>
@@@@
-               	testq	%rbx, %rbx
-               	je	0x426e10 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
+               	cmpq	$0, 80(%rsp)
+               	je	0x4275f0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movq	%rbx, 144(%rsp)
@@@@
-               	jne	0x426d24 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	jmp	0x426dd0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
-               	nop
+               	jne	0x4274ee <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	jmp	0x4275a0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
+               	nopl	(%rax)
@@@@
-               	callq	0x43b6a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 280(%r14)
+               	callq	0x43c4e4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	280(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 280(%r14)
@@@@
-               	testb	$64, 88(%rsi)
-               	je	0x426d41 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x261>
+               	movl	88(%rsi), %eax
+               	testb	$64, %al
+               	je	0x42750c <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x25c>

@@ -19900,99 +20305,103 @@
@@@[(6, 10), (18, 35), (51, 54), (55, 60), (67, 69), (97, 102)]@@@
-               	addq	$-1, 256(%r14)
+               	movq	256(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 256(%r14)
@@@@
-               	jne	0x426d24 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	nopl	(%rax)
-               	cmpq	$0, 136(%rsp)
-               	movq	112(%rsp), %r14
-               	movq	104(%rsp), %r15
-               	movq	144(%rsp), %rdi
-               	je	0x426e10 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
-               	movl	60(%rsp), %ecx
+               	jne	0x4274ee <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	nop
+               	cmpq	$0, 128(%rsp)
+               	movq	104(%rsp), %r14
+               	movq	96(%rsp), %r15
+               	movq	144(%rsp), %rbx
+               	movq	136(%rsp), %rdi
+               	je	0x4275f0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movl	52(%rsp), %ecx
@@@@
-               	movq	40(%rsp), %rax
-               	movq	%rax, 24(%rsp)
+               	movq	%rbx, 24(%rsp)
@@@@
-               	je	0x426f6b <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x48b>
-               	movq	120(%rsp), %rdi
+               	je	0x42774e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x49e>
+               	movq	%rbx, %r12
+               	movq	112(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	leaq	8(%rsp), %rbp
-               	je	0x426bb5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
+               	leaq	8(%rsp), %rbx
+               	movq	%r12, %rbp
+               	je	0x427375 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>

@@ -20138,7 +20547,7 @@
@@@[(3, 5)]@@@
-               	movq	%rsi, %r13
+               	movq	%rsi, %rbx

@@ -20148,27 +20557,31 @@
@@@[(3, 5), (6, 18), (20, 30), (31, 33)]@@@
-               	movq	(%rbp), %rbx
+               	movq	(%rbp), %r13
@@@@
-               	testq	%rbx, %rbx
-               	je	0x42719c <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
-               	movq	%rbx, %rdi
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x42f9d0 <mi_free>
+               	testq	%r13, %r13
+               	je	0x42797c <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
+               	movq	%r13, %rdi
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x4302d0 <mi_free>
@@@@
-               	jne	0x4271a9 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x69>
-               	movq	%r12, 8(%r13)
+               	jne	0x427985 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x65>
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

@@ -20177,7 +20590,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -20185,29 +20598,29 @@
@@@[(3, 5)]@@@
-               	movq	%rdi, %rbx
+               	movq	(%rdi), %rbx

@@ -20372,127 +20785,129 @@
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
-               	jb	0x4274b2 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x72>
-               	cmpq	$0, 24(%rbp)
-               	je	0x427658 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x218>
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
+               	jb	0x427ca0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x70>
+               	cmpq	$0, 24(%rbx)
+               	je	0x427e58 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x228>
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
-               	movb	231576(%rip), %al       # 0x45fd50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 64(%rbx)
+               	movb	235506(%rip), %al       # 0x461498 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4274c1 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x81>
-               	callq	0x423ed0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x4276d0 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x427caf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x7f>
+               	callq	0x424500 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x427ec0 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
+               	movq	%rax, 24(%rsp)
+               	movb	$0, 36(%rsp)
@@@@
-               	movq	%rax, 32(%rsp)
@@@@
-               	callq	0x425460 <GCStateHolder::schedule()>
-               	movq	%rax, %rbp
-               	movq	(%rbx), %r15
-               	movq	128(%r15), %r13
-               	movq	%r13, 16(%rsp)
-               	movb	$0, 24(%rsp)
-               	cmpq	$0, 219789(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x42753d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfd>
-               	movq	%r13, %rdi
+               	callq	0x425b70 <GCStateHolder::schedule()>
+               	movq	%rax, %r12
+               	movq	(%rbx), %rbp
+               	movq	128(%rbp), %rdi
+               	movq	%rdi, 8(%rsp)
+               	movb	$0, 16(%rsp)
+               	cmpq	$0, 221853(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x427d2a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfa>
@@@@
-               	jne	0x427673 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x233>
-               	movb	$1, 24(%rsp)
-               	cmpq	%rbp, 120(%r15)
-               	jge	0x427587 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x147>
-               	leaq	136(%r15), %rbx
-               	leaq	16(%rsp), %r13
-               	nopl	(%rax,%rax)
-               	cmpb	$0, 312(%r15)
-               	jne	0x42757b <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13b>
+               	jne	0x427e73 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x243>
+               	movb	$1, 16(%rsp)
+               	cmpq	%r12, 120(%rbp)
+               	jge	0x427d71 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x141>
+               	leaq	136(%rbp), %rbx
+               	leaq	8(%rsp), %r13
+               	nopw	%cs:(%rax,%rax)
+               	nop
+               	cmpb	$0, 312(%rbp)
+               	jne	0x427d6a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13a>
@@@@
-               	callq	0x43bca0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	cmpq	%rbp, 120(%r15)
-               	jl	0x427560 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
-               	cmpb	$0, 24(%rsp)
-               	je	0x4275a3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	movq	16(%rsp), %r13
-               	testq	%r13, %r13
-               	je	0x4275a3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	cmpq	$0, 219684(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x42759e <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15e>
-               	movq	%r13, %rdi
+               	callq	0x43cae0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	cmpq	%r12, 120(%rbp)
+               	jl	0x427d50 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
+               	cmpb	$0, 16(%rsp)
+               	je	0x427d8f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x427d8f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	cmpq	$0, 221749(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x427d8a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15a>
@@@@
-               	je	0x4275d4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	addq	$328, %rdi              # imm = 0x148
-               	movl	12(%rsp), %ecx
+               	je	0x427dc4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	movl	32(%rsp), %ecx
@@@@
-               	xchgl	%eax, (%rdi)
+               	xchgl	%eax, 328(%rdi)
@@@@
-               	je	0x4275d4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x4276d0 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x427dc4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x427ec0 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
-               	je	0x42765d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x21d>
-               	movq	$0, (%rbp)
-               	movq	%rbp, 16(%rsp)
+               	je	0x427e5d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x22d>
+               	movq	$0, (%rax)
+               	movq	%rax, 8(%rsp)
+               	movq	8(%rsp), %rbx
@@@@
-               	movq	$0, 16(%rsp)
-               	movq	(%rax), %rbx
-               	movq	%rbp, (%rax)
-               	testq	%rbx, %rbx
-               	je	0x42762f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	%rbx, %rdi
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x42f9d0 <mi_free>
-               	jmp	0x42762f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	$0, 16(%rsp)
-               	movq	%rbp, 24(%r14)
-               	movq	%rbp, 32(%r14)
-               	addq	$1, 40(%r14)
-               	addq	%r12, 48(%r14)
-               	leaq	16(%rsp), %rdi
-               	callq	0x4251e0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbp, %rax
+               	movq	$0, 8(%rsp)
+               	movq	(%rax), %r12
+               	movq	%rbx, (%rax)
+               	testq	%r12, %r12
+               	je	0x427e24 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	%r12, %rdi
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r12, %rdi
+               	callq	0x4302d0 <mi_free>
+               	jmp	0x427e24 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	$0, 8(%rsp)
+               	movq	%rbx, 24(%r14)
+               	movq	%rbx, 32(%r14)
+               	movq	40(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%r14)
+               	addq	48(%r14), %r15
+               	movq	%r15, 48(%r14)
+               	leaq	8(%rsp), %rdi
+               	callq	0x4258f0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%rbx, %rax

@@ -20501,65 +20916,66 @@
@@@[(3, 9), (21, 26), (30, 34), (64, 70)]@@@
-               	callq	0x43c0a2 <std::__throw_bad_function_call()>
-               	leaq	114542(%rip), %rdi      # 0x4435d2 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
-               	movq	%r12, %rsi
+               	callq	0x43cee2 <std::__throw_bad_function_call()>
+               	leaq	116142(%rip), %rdi      # 0x444412 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
+               	movq	%r15, %rsi
@@@@
-               	movq	32(%rsp), %rdi
-               	movl	12(%rsp), %esi
-               	callq	0x4254d0 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
+               	leaq	24(%rsp), %rdi
+               	callq	0x425be0 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
@@@@
-               	callq	0x422a10 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x423020 <__clang_call_terminate>
+               	nop
@@@@
-               	jne	0x42774f <kotlin::allocateInObjectPool(unsigned long)+0x7f>
-               	addl	$1, 16(%rax)
+               	jne	0x427f44 <kotlin::allocateInObjectPool(unsigned long)+0x84>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)

@@ -20569,31 +20985,33 @@
@@@[(30, 32), (34, 38)]@@@
-               	movb	96(%rdx), %cl
+               	movq	96(%rdx), %rcx
@@@@
-               	orb	$2, 126(%rdx,%rax)
+               	movb	126(%rdx,%rax), %cl
+               	orb	$2, %cl
+               	movb	%cl, 126(%rdx,%rax)

@@ -20605,214 +21023,214 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -20915,71 +21333,55 @@
@@@[(3, 14), (15, 24), (25, 71)]@@@
-               	jne	0x427dc6 <_mi_random_init+0xe6>
-               	movb	(%rsp), %r8b
-               	movb	1(%rsp), %r15b
-               	movb	2(%rsp), %dil
-               	movb	3(%rsp), %al
-               	movl	%eax, 44(%rsp)
+               	jne	0x428577 <_mi_random_init+0xa7>
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
-               	jmp	0x428107 <_mi_random_init+0x427>
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
+               	jmp	0x428874 <_mi_random_init+0x3a4>

@@ -21040,261 +21442,249 @@
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
-               	movaps	105964(%rip), %xmm1     # 0x441f40 <_IO_stdin_used+0x80>
+               	movdqu	%xmm0, 108(%r14)
+               	movdqu	%xmm0, 92(%r14)
+               	movdqu	%xmm0, 76(%r14)
+               	movdqu	%xmm0, 60(%r14)
+               	movdqu	%xmm0, 44(%r14)
+               	movq	$0, 124(%r14)
+               	movaps	107709(%rip), %xmm1     # 0x442d80 <_IO_stdin_used+0x80>
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

@@ -21302,7 +21692,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -21329,25 +21719,27 @@
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

@@ -21357,42 +21749,42 @@
@@@[(3, 13), (33, 39)]@@@
-               	cmpb	$1, 227940(%rip)        # 0x45fdcc <_mi_process_is_initialized>
-               	jne	0x428a6b <mi_process_done+0x71b>
-               	cmpb	$0, 327971(%rip)        # 0x478498 <mi_process_done.process_done>
-               	jne	0x428a6b <mi_process_done+0x71b>
-               	movb	$1, 327958(%rip)        # 0x478498 <mi_process_done.process_done>
+               	cmpb	$0, 231948(%rip)        # 0x461514 <_mi_process_is_initialized>
+               	je	0x429210 <mi_process_done+0x720>
+               	cmpb	$0, 331971(%rip)        # 0x479bd8 <mi_process_done.process_done>
+               	jne	0x429210 <mi_process_done+0x720>
+               	movb	$1, 331958(%rip)        # 0x479bd8 <mi_process_done.process_done>
@@@@
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	callq	0x42b760 <mi_stats_merge_from>
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	callq	0x42bf40 <mi_stats_merge_from>

@@ -21499,63 +21891,64 @@
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

@@ -21765,10 +22158,10 @@
@@@[(6, 10)]@@@
-               	jmp	0x42864b <mi_process_done+0x2fb>
-               	nopw	(%rax,%rax)
+               	jmp	0x428ded <mi_process_done+0x2fd>
+               	nop

@@ -21778,78 +22171,87 @@
@@@[(3, 27), (88, 104), (126, 131)]@@@
-               	cmpb	$0, 226087(%rip)        # 0x45fdcc <_mi_process_is_initialized>
-               	jne	0x42985c <mi_process_init+0xdcc>
-               	movb	$1, 226074(%rip)        # 0x45fdcc <_mi_process_is_initialized>
-               	cmpb	$0, 226696(%rip)        # 0x460041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	jne	0x428afe <mi_process_init+0x6e>
-               	movb	$1, 226687(%rip)        # 0x460041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	leaq	220479(%rip), %rdi      # 0x45e808 <_mi_heap_default_key>
-               	leaq	3504(%rip), %rsi        # 0x429880 <mi_pthread_done>
+               	cmpb	$0, 230095(%rip)        # 0x461514 <_mi_process_is_initialized>
+               	je	0x429256 <mi_process_init+0x26>
+               	addq	$104, %rsp
+               	popq	%rbx
+               	popq	%r12
+               	popq	%r13
+               	popq	%r14
+               	popq	%r15
+               	popq	%rbp
+               	retq
+               	movb	$1, 230071(%rip)        # 0x461514 <_mi_process_is_initialized>
+               	cmpb	$0, 230685(%rip)        # 0x461781 <mi_process_setup_auto_thread_done.tls_initialized>
+               	jne	0x4292a9 <mi_process_init+0x79>
+               	movb	$1, 230676(%rip)        # 0x461781 <mi_process_setup_auto_thread_done.tls_initialized>
+               	leaq	224508(%rip), %rdi      # 0x45ff70 <_mi_heap_default_key>
+               	leaq	3525(%rip), %rsi        # 0x42a040 <mi_pthread_done>
@@@@
-               	callq	0x429e80 <_mi_verbose_message>
-               	callq	0x429fa0 <mi_thread_init>
-               	callq	0x429fa0 <mi_thread_init>
-               	movq	$-80, %r15
-               	movq	%fs:(%r15), %rax
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	leaq	225852(%rip), %rax      # 0x45fe00 <_mi_stats_main>
+               	callq	0x42a660 <_mi_verbose_message>
+               	callq	0x42a780 <mi_thread_init>
+               	callq	0x42a780 <mi_thread_init>
+               	movq	$-80, %r14
+               	movq	%fs:(%r14), %rax
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	leaq	229839(%rip), %rax      # 0x461540 <_mi_stats_main>
@@@@
-               	movabsq	$-4835703278458516699, %rax # imm = 0xBCE4217D2849CB25
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$-4835703278458516699, %rcx # imm = 0xBCE4217D2849CB25
+               	imulq	%rcx

@@ -21859,8 +22261,9 @@
@@@[(3, 8)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -21870,31 +22273,32 @@
@@@[(9, 14)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -21939,61 +22343,61 @@
@@@[(3, 6), (43, 45), (50, 54), (55, 75), (76, 80), (81, 86)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
@@@@
-               	leaq	(%r14,%rbp), %rcx
+               	leaq	(%r15,%rbp), %rcx
@@@@
-               	je	0x428e40 <mi_process_init+0x3b0>
-               	movq	%rbx, %r14
+               	je	0x4295f0 <mi_process_init+0x3c0>
+               	movq	%rbx, %r15
@@@@
-               	jne	0x428e00 <mi_process_init+0x370>
-               	movq	%fs:(%r15), %rdi
-               	callq	0x4282a0 <_mi_heap_random_next>
-               	movq	%rax, %r14
-               	andl	$536739840, %r14d       # imm = 0x1FFE0000
-               	shlq	$13, %r14
-               	orq	%r13, %r14
-               	jmp	0x428e00 <mi_process_init+0x370>
-               	cmpq	$0, 259328(%rip)        # 0x468348 <mi_clock_diff>
-               	jne	0x428ec1 <mi_process_init+0x431>
+               	jne	0x4295b0 <mi_process_init+0x380>
+               	movq	%fs:(%r14), %rdi
+               	callq	0x428a30 <_mi_heap_random_next>
+               	movq	%rax, %r15
+               	andl	$536739840, %r15d       # imm = 0x1FFE0000
+               	shlq	$13, %r15
+               	orq	%r13, %r15
+               	jmp	0x4295b0 <mi_process_init+0x380>
+               	cmpq	$0, 263312(%rip)        # 0x469a88 <mi_clock_diff>
+               	jne	0x429677 <mi_process_init+0x447>
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

@@ -22001,26 +22405,28 @@
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

@@ -22042,20 +22448,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x429400 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	258996(%rip), %rax      # 0x468308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 258997(%rip)        # 0x468310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x429bd0 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	262971(%rip), %rax      # 0x469a48 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 262972(%rip)        # 0x469a50 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22063,15 +22469,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22094,74 +22500,75 @@
@@@[(13, 19), (24, 28), (70, 75)]@@@
-               	callq	0x42b200 <_mi_warning_message>
-               	cmpq	%r15, %rbx
-               	jne	0x429310 <mi_process_init+0x880>
+               	callq	0x42b9e0 <_mi_warning_message>
+               	cmpq	%r14, %rbx
+               	jne	0x429ae0 <mi_process_init+0x8b0>
@@@@
-               	movq	224785(%rip), %rax      # 0x45fe70 <_mi_stats_main+0x70>
-               	nop
+               	movq	228760(%rip), %rax      # 0x4615b0 <_mi_stats_main+0x70>
+               	nopl	(%rax,%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -22169,20 +22576,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x429400 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	258456(%rip), %rax      # 0x468308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 258457(%rip)        # 0x468310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x429bd0 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	262421(%rip), %rax      # 0x469a48 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 262422(%rip)        # 0x469a50 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22190,15 +22597,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -22207,142 +22614,144 @@
@@@[(3, 9), (14, 18), (60, 65), (87, 92), (93, 97), (105, 107), (171, 179), (183, 189)]@@@
-               	jae	0x429300 <mi_process_init+0x870>
-               	cmpq	%r15, %rbx
-               	jne	0x429310 <mi_process_init+0x880>
+               	jae	0x429ad0 <mi_process_init+0x8a0>
+               	cmpq	%r14, %rbx
+               	jne	0x429ae0 <mi_process_init+0x8b0>
@@@@
-               	movq	224336(%rip), %rax      # 0x45fe70 <_mi_stats_main+0x70>
+               	movq	228301(%rip), %rax      # 0x4615b0 <_mi_stats_main+0x70>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx
@@@@
-               	jmp	0x42913a <mi_process_init+0x6aa>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x4298fd <mi_process_init+0x6cd>
+               	nopw	(%rax,%rax)
@@@@
-               	cmpq	%r15, %rbx
-               	je	0x429204 <mi_process_init+0x774>
+               	cmpq	%r14, %rbx
+               	je	0x4299c7 <mi_process_init+0x797>
@@@@
-               	movq	%r15, %rdx
+               	movq	%r14, %rdx
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x429418 <mi_process_init+0x988>
-               	jmp	0x42954d <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x429be8 <mi_process_init+0x9b8>
+               	jmp	0x429d1d <mi_process_init+0xaed>
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	je	0x42954d <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	je	0x429d1d <mi_process_init+0xaed>

@@ -22350,13 +22759,13 @@
@@@[(11, 13)]@@@
-               	xchgq	%r14, (%rax)
+               	xchgq	%r15, (%rax)

@@ -22367,15 +22776,15 @@
@@@[(16, 18)]@@@
-               	movq	$-80, %r15
+               	movq	$-80, %r14

@@ -22384,101 +22793,101 @@
@@@[(18, 28), (54, 56), (109, 111)]@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x429418 <mi_process_init+0x988>
-               	jmp	0x42954d <mi_process_init+0xabd>
-               	callq	0x42b550 <_mi_os_numa_node_count_get>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x429be8 <mi_process_init+0x9b8>
+               	jmp	0x429d1d <mi_process_init+0xaed>
+               	callq	0x42bd30 <_mi_os_numa_node_count_get>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%r14, %rdx
+               	movq	%r15, %rdx

@@ -22561,46 +22970,39 @@
@@@[(43, 60)]@@@
-               	callq	0x429e80 <_mi_verbose_message>
-               	addq	$104, %rsp
-               	popq	%rbx
-               	popq	%r12
-               	popq	%r13
-               	popq	%r14
-               	popq	%r15
-               	popq	%rbp
-               	retq
-               	callq	0x42b550 <_mi_os_numa_node_count_get>
-               	jmp	0x428ceb <mi_process_init+0x25b>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x42a660 <_mi_verbose_message>
+               	jmp	0x429247 <mi_process_init+0x17>
+               	callq	0x42bd30 <_mi_os_numa_node_count_get>
+               	jmp	0x4294a1 <mi_process_init+0x271>
+               	nop

@@ -22706,48 +23108,51 @@
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
-               	jmp	0x429a8d <mi_pthread_done+0x20d>
-               	nopl	(%rax)
+               	jmp	0x42a25d <mi_pthread_done+0x21d>

@@ -22939,27 +23344,27 @@
@@@[(26, 34)]@@@
-               	callq	0x42bc50 <mi_heap_collect_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
-               	callq	0x42b760 <mi_stats_merge_from>
+               	callq	0x42c430 <mi_heap_collect_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi
+               	callq	0x42bf40 <mi_stats_merge_from>

@@ -22970,9 +23375,9 @@
@@@[(3, 9)]@@@
-               	jmp	0x42afe0 <_mi_os_free_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
+               	jmp	0x42b7b0 <_mi_os_free_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi

@@ -22980,8 +23385,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x42b760 <mi_stats_merge_from>
-               	nop
+               	jmp	0x42bf40 <mi_stats_merge_from>
+               	nopw	%cs:(%rax,%rax)

@@ -23232,60 +23637,60 @@
@@@[(14, 15), (17, 26)]@@@
-               	movq	64(%rsp), %rdx
@@@@
-               	movl	(%rax,%rcx,4), %ecx
-               	movq	72(%rsp), %rdi
-               	cmpl	(%rax,%rdi,4), %ecx
-               	jne	0x42a332 <mi_option_get+0x192>
+               	movq	72(%rsp), %rdx
+               	movl	(%rax,%rdx,4), %edx
+               	cmpl	%edx, (%rax,%rcx,4)
+               	movq	64(%rsp), %rdx
+               	jne	0x42ab12 <mi_option_get+0x192>

@@ -23297,48 +23702,48 @@
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

@@ -23346,31 +23751,31 @@
@@@[(3, 5)]@@@
-               	movzbl	(%rbp,%rcx,4), %ecx
+               	movl	(%rbp,%rcx,4), %ecx

@@ -23378,44 +23783,44 @@
@@@[(50, 54)]@@@
-               	jmp	0x42a1d1 <mi_option_get+0x31>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42a9b1 <mi_option_get+0x31>
+               	nop

@@ -24205,57 +24610,57 @@
@@@[(74, 76)]@@@
-               	leaq	99608(%rip), %rdi       # 0x44367f <typeinfo name for kotlin::gc::GCSchedulerData+0x10d6>
+               	leaq	101256(%rip), %rdi      # 0x4444bf <typeinfo name for kotlin::gc::GCSchedulerData+0x10d6>

@@ -24297,17 +24702,21 @@
@@@[(7, 12), (16, 20), (21, 22)]@@@
-               	js	0x42b1fc <_mi_stat_decrease+0x7c>
-               	addq	%rsi, 8(%rdi)
+               	js	0x42b9d0 <_mi_stat_decrease+0x80>
+               	addq	8(%rdi), %rsi
+               	movq	%rsi, 8(%rdi)
@@@@
-               	subq	%rsi, (%rdi)
+               	movq	(%rdi), %rax
+               	subq	%rsi, %rax
+               	movq	%rax, (%rdi)
@@@@
+               	nopw	(%rax,%rax)

@@ -24363,12 +24772,12 @@
@@@[(11, 13)]@@@
-               	leaq	99210(%rip), %rdi       # 0x4436a9 <typeinfo name for kotlin::gc::GCSchedulerData+0x1100>
+               	leaq	100842(%rip), %rdi      # 0x4444e9 <typeinfo name for kotlin::gc::GCSchedulerData+0x1100>

@@ -24441,19 +24850,22 @@
@@@[(7, 12), (17, 21), (22, 24)]@@@
-               	jle	0x42b41e <_mi_stat_increase+0x6e>
-               	addq	%rsi, (%rdi)
+               	jle	0x42bc01 <_mi_stat_increase+0x71>
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

@@ -24546,20 +24958,20 @@
@@@[(16, 18)]@@@
-               	leaq	99039(%rip), %r14       # 0x443869 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	100671(%rip), %r14      # 0x4446a9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>

@@ -24571,15 +24983,15 @@
@@@[(9, 13)]@@@
-               	movq	%rbx, 249158(%rip)      # 0x468318 <_mi_numa_node_count>
-               	leaq	98992(%rip), %rdi       # 0x443889 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, 253094(%rip)      # 0x469a58 <_mi_numa_node_count>
+               	leaq	100624(%rip), %rdi      # 0x4446c9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>

@@ -24643,22 +25055,23 @@
@@@[(11, 13), (19, 28)]@@@
-               	leaq	99138(%rip), %rdi       # 0x443a5b <typeinfo name for kotlin::gc::GCSchedulerData+0x14b2>
+               	leaq	100770(%rip), %rdi      # 0x44489b <typeinfo name for kotlin::gc::GCSchedulerData+0x14b2>
@@@@
-               	cmpq	$0, 248877(%rip)        # 0x468360 <mi_error_handler>
-               	je	0x42b747 <_mi_error_message+0x147>
-               	movq	248868(%rip), %rax      # 0x468360 <mi_error_handler>
-               	movq	248869(%rip), %rsi      # 0x468368 <mi_error_arg>
+               	movq	252814(%rip), %rax      # 0x469aa0 <mi_error_handler>
+               	testq	%rax, %rax
+               	je	0x42bf29 <_mi_error_message+0x149>
+               	movq	252802(%rip), %rax      # 0x469aa0 <mi_error_handler>
+               	movq	252803(%rip), %rsi      # 0x469aa8 <mi_error_arg>

@@ -24668,284 +25081,284 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -24961,66 +25374,67 @@
@@@[(16, 21), (80, 82)]@@@
-               	cmpq	$0, 313335(%rip)        # 0x478488 <deferred_free>
-               	je	0x42bc9d <mi_heap_collect_ex+0x4d>
+               	movq	317272(%rip), %rax      # 0x479bc8 <deferred_free>
+               	testq	%rax, %rax
+               	je	0x42c47f <mi_heap_collect_ex+0x4f>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -25300,22 +25714,26 @@
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

@@ -25324,104 +25742,106 @@
@@@[(3, 11), (16, 17), (33, 50), (67, 69)]@@@
-               	jb	0x42c2f0 <mi_heap_collect_ex+0x6a0>
-               	leaq	212389(%rip), %rdi      # 0x460040 <os_preloading>
-               	cmpq	%rdi, %rcx
-               	jae	0x42c2f0 <mi_heap_collect_ex+0x6a0>
+               	jb	0x42cae0 <mi_heap_collect_ex+0x6b0>
+               	leaq	216306(%rip), %rax      # 0x461780 <os_preloading>
+               	cmpq	%rax, %rcx
+               	jae	0x42cae0 <mi_heap_collect_ex+0x6b0>
@@@@
-               	nopl	(%rax)
@@@@
-               	movq	248(%rdx), %rbp
-               	leaq	1(%rbp), %rdi
-               	movq	%rdi, 248(%rdx)
-               	cmpq	240(%rdx), %rbp
-               	jl	0x42c312 <mi_heap_collect_ex+0x6c2>
-               	movq	%rdi, 240(%rdx)
-               	addq	$1, (%rcx)
+               	movq	248(%rdx), %rdi
+               	leaq	1(%rdi), %rax
+               	movq	%rax, 248(%rdx)
+               	cmpq	240(%rdx), %rdi
+               	jl	0x42cb02 <mi_heap_collect_ex+0x6d2>
+               	movq	%rax, 240(%rdx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
+               	movq	40(%rbx), %rax
@@@@
-               	nop
+               	nopl	(%rax)

@@ -25430,74 +25850,77 @@
@@@[(7, 13), (31, 33), (52, 56), (78, 79)]@@@
-               	je	0x42c6e5 <mi_heap_collect_ex+0xa95>
-               	addq	$-1, 120(%r15)
+               	je	0x42cf0b <mi_heap_collect_ex+0xadb>
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

@@ -25505,43 +25928,44 @@
@@@[(21, 25), (49, 52)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	jmp	0x42c664 <mi_heap_collect_ex+0xa14>
-               	nopl	(%rax)
+               	jmp	0x42ce84 <mi_heap_collect_ex+0xa54>

@@ -25577,40 +26001,42 @@
@@@[(24, 28)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -25619,38 +26045,39 @@
@@@[(18, 21)]@@@
-               	callq	0x42cb40 <_mi_arena_free>
+               	callq	0x42d370 <_mi_arena_free>
+               	nopw	%cs:(%rax,%rax)

@@ -25700,25 +26127,27 @@
@@@[(28, 32)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)

@@ -25726,21 +26155,23 @@
@@@[(3, 7), (23, 27)]@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
-               	jmp	0x42c86b <_mi_page_free_collect+0x7b>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42d09b <_mi_page_free_collect+0x7b>
+               	nopl	(%rax)

@@ -25748,50 +26179,52 @@
@@@[(3, 7)]@@@
-               	andb	$-3, 6(%rdi)
+               	movb	6(%rdi), %al
+               	andb	$-3, %al
+               	movb	%al, 6(%rdi)

@@ -25802,22 +26235,22 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -25883,20 +26316,24 @@
@@@[(13, 20), (22, 27)]@@@
-               	jne	0x42caf0 <_mi_page_free+0x230>
-               	addq	$-1, 3016(%r14)
+               	jne	0x42d320 <_mi_page_free+0x230>
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

@@ -25905,8 +26342,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x42d720 <_mi_segment_page_free>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42df70 <_mi_segment_page_free>

@@ -26388,68 +26824,72 @@
@@@[(79, 89)]@@@
-               	jae	0x42d1e0 <mi_os_commitx+0x1f0>
-               	addq	$1, 208275(%rip)        # 0x45ffe8 <_mi_stats_main+0x1e8>
-               	addq	$1, 208259(%rip)        # 0x45ffe0 <_mi_stats_main+0x1e0>
+               	jae	0x42da10 <mi_os_commitx+0x1f0>
+               	movq	212132(%rip), %rax      # 0x461728 <_mi_stats_main+0x1e8>
+               	addq	$1, %rax
+               	movq	%rax, 212121(%rip)      # 0x461728 <_mi_stats_main+0x1e8>
+               	movq	212106(%rip), %rax      # 0x461720 <_mi_stats_main+0x1e0>
+               	addq	$1, %rax
+               	movq	%rax, 212095(%rip)      # 0x461720 <_mi_stats_main+0x1e0>

@@ -26480,6 +26920,7 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -26832,67 +27273,68 @@
@@@[(38, 42), (45, 50), (51, 55)]@@@
-               	jmp	0x42d80d <_mi_segment_page_free+0xed>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x42e05d <_mi_segment_page_free+0xed>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42d82a <_mi_segment_page_free+0x10a>
+               	testb	%cl, %cl
+               	jne	0x42e07c <_mi_segment_page_free+0x10c>

@@ -26941,7 +27383,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -26953,70 +27395,78 @@
@@@[(3, 7), (8, 14), (31, 33), (51, 59), (61, 62), (66, 67), (68, 72), (95, 103)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x42dadc <mi_segment_page_clear+0x1dc>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x42e35d <mi_segment_page_clear+0x1fd>
@@@@
-               	movl	$160, %edi
-               	addq	112(%r15), %rdi
-               	callq	0x42b180 <_mi_stat_decrease>
+               	movq	112(%r15), %rdi
+               	addq	$160, %rdi
+               	callq	0x42b950 <_mi_stat_decrease>
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

@@ -27043,61 +27493,62 @@
@@@[(21, 25), (27, 34), (35, 39), (58, 62)]@@@
-               	jmp	0x42daaf <mi_segment_page_clear+0x1af>
-               	movb	96(%r14), %cl
+               	jmp	0x42e32f <mi_segment_page_clear+0x1cf>
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
-               	jne	0x42dacb <mi_segment_page_clear+0x1cb>
+               	testb	%cl, %cl
+               	jne	0x42e34c <mi_segment_page_clear+0x1ec>
@@@@
-               	jmp	0x42daff <mi_segment_page_clear+0x1ff>
-               	movb	96(%rax), %cl
+               	jmp	0x42e381 <mi_segment_page_clear+0x221>
+               	movq	96(%rax), %rcx

@@ -27122,229 +27573,230 @@
@@@[(118, 124), (127, 132), (133, 137), (256, 260), (282, 286), (311, 315)]@@@
-               	jne	0x42dc41 <mi_segment_free+0xf1>
-               	jmp	0x42dc25 <mi_segment_free+0xd5>
-               	movzbl	96(%r14), %ecx
+               	jne	0x42e4c1 <mi_segment_free+0xf1>
+               	jmp	0x42e4a5 <mi_segment_free+0xd5>
+               	movq	96(%r14), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42dcc6 <mi_segment_free+0x176>
+               	testb	%cl, %cl
+               	jne	0x42e547 <mi_segment_free+0x177>
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
-               	jmp	0x42ded2 <mi_segment_free+0x382>
-               	nopl	(%rax)
+               	jmp	0x42e752 <mi_segment_free+0x382>
+               	nop

@@ -27379,51 +27831,54 @@
@@@[(21, 25), (47, 48)]@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
+               	nop

@@ -27431,41 +27886,43 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)

@@ -27474,7 +27931,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -27502,106 +27958,110 @@
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

@@ -27610,7 +28070,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax)

@@ -27659,32 +28118,34 @@
@@@[(12, 16)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -27693,81 +28154,82 @@
@@@[(18, 21), (105, 109)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -27776,7 +28238,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -27807,185 +28269,192 @@
@@@[(38, 42), (45, 50), (51, 55), (136, 138), (157, 161), (180, 181), (218, 222), (240, 245)]@@@
-               	jmp	0x42e5ed <mi_segment_abandon+0xdd>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x42ee7d <mi_segment_abandon+0xdd>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42e609 <mi_segment_abandon+0xf9>
+               	testb	%cl, %cl
+               	jne	0x42ee9b <mi_segment_abandon+0xfb>
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
-               	movq	301987(%rip), %rax      # 0x4783c0 <abandoned>
-               	nopl	(%rax)
+               	movq	305740(%rip), %rax      # 0x479b00 <abandoned>
+               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -28007,154 +28476,157 @@
@@@[(92, 98), (101, 106), (107, 111), (136, 140), (205, 211)]@@@
-               	jne	0x42e903 <mi_segment_abandon+0x3f3>
-               	jmp	0x42e8e9 <mi_segment_abandon+0x3d9>
-               	movzbl	96(%r15), %ecx
+               	jne	0x42f1a3 <mi_segment_abandon+0x403>
+               	jmp	0x42f189 <mi_segment_abandon+0x3e9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42e983 <mi_segment_abandon+0x473>
+               	testb	%cl, %cl
+               	jne	0x42f224 <mi_segment_abandon+0x484>
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	jne	0x42e6a7 <mi_segment_abandon+0x197>
-               	jmp	0x42e68a <mi_segment_abandon+0x17a>
-               	nopw	(%rax,%rax)
+               	jne	0x42ef39 <mi_segment_abandon+0x199>
+               	jmp	0x42ef1c <mi_segment_abandon+0x17c>
+               	nop

@@ -28167,7 +28639,7 @@
@@@[(3, 5)]@@@
-               	movb	96(%r12), %cl
+               	movq	96(%r12), %rcx

@@ -28175,29 +28647,31 @@
@@@[(29, 35)]@@@
-               	addl	$-1, 136(%r12,%rbx)
-               	je	0x42eb18 <_mi_free_delayed_block+0x98>
+               	movl	136(%r12,%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%r12,%rbx)
+               	je	0x42f3c2 <_mi_free_delayed_block+0xa2>

@@ -28210,15 +28684,15 @@
@@@[(11, 15)]@@@
-               	jmp	0x42ec50 <_mi_page_unfull>
-               	nop
+               	jmp	0x42f500 <_mi_page_unfull>
+               	nopl	(%rax,%rax)

@@ -28299,27 +28773,26 @@
@@@[(11, 18)]@@@
-               	cmpq	$9, %rsi
-               	jb	0x42ecc3 <_mi_page_unfull+0x73>
-               	movq	%rsi, %rdx
-               	addq	$7, %rdx
+               	cmpl	$9, %esi
+               	jb	0x42f56f <_mi_page_unfull+0x6f>
+               	leaq	7(%rsi), %rdx

@@ -28382,22 +28855,22 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	(%rax,%rax)

@@ -28672,83 +29145,86 @@
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
-               	je	0x42f310 <mi_segment_reclaim+0x1c0>
-               	addq	$-1, 40(%r15)
+               	je	0x42fbc0 <mi_segment_reclaim+0x1c0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -28756,115 +29232,121 @@
@@@[(21, 25), (45, 49), (85, 89), (127, 131), (139, 145)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x42f3da <mi_segment_reclaim+0x28a>
-               	nop
+               	jmp	0x42fc94 <mi_segment_reclaim+0x294>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 200(%rsi)
+               	movq	200(%rsi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rsi)
@@@@
-               	callq	0x42d900 <mi_segment_page_clear>
-               	nopl	(%rax)
+               	callq	0x42e160 <mi_segment_page_clear>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x42f500 <mi_segment_reclaim+0x3b0>
-               	addq	$-1, 40(%r15)
+               	je	0x42fdd0 <mi_segment_reclaim+0x3d0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -28872,70 +29354,74 @@
@@@[(21, 25), (45, 49), (80, 84)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x42f5ba <mi_segment_reclaim+0x46a>
-               	nop
+               	jmp	0x42fea4 <mi_segment_reclaim+0x4a4>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -28954,28 +29440,27 @@
@@@[(3, 4), (8, 12)]@@@
-               	nopl	(%rax)
@@@@
-               	cmpq	$67108864, %r8          # imm = 0x4000000
-               	jae	0x42f948 <_mi_page_reclaim+0x298>
+               	cmpl	$67108864, %r8d         # imm = 0x4000000
+               	jae	0x430242 <_mi_page_reclaim+0x2a2>

@@ -29109,49 +29594,52 @@
@@@[(13, 19), (28, 32), (34, 40), (41, 49), (53, 56), (58, 60)]@@@
-               	jne	0x42f930 <_mi_page_reclaim+0x280>
-               	addq	$1, 3016(%rdi)
+               	jne	0x430220 <_mi_page_reclaim+0x280>
+               	movq	3016(%rdi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%rdi)
@@@@
-               	jmp	0x42f96a <_mi_page_reclaim+0x2ba>
-               	movb	96(%rax), %cl
+               	jmp	0x430265 <_mi_page_reclaim+0x2c5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rsi), %ecx
-               	testq	%rcx, %rcx
-               	je	0x42f97a <_mi_page_reclaim+0x2ca>
+               	movb	(%rsi), %cl
+               	testb	%cl, %cl
+               	je	0x430273 <_mi_page_reclaim+0x2d3>
@@@@
-               	jmp	0x42f6c2 <_mi_page_reclaim+0x12>
-               	movq	80(%rax), %r10
-               	movq	%rdx, %r9
-               	subq	%r10, %r9
+               	jmp	0x42ffb2 <_mi_page_reclaim+0x12>
+               	movq	80(%rax), %r9
+               	movq	%rdx, %r10
+               	subq	%r9, %r10
@@@@
-               	je	0x42f9bf <_mi_page_reclaim+0x30f>
+               	je	0x4302bb <_mi_page_reclaim+0x31b>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax

@@ -29159,41 +29647,43 @@
@@@[(3, 11), (20, 22), (34, 40), (49, 53)]@@@
-               	subq	%rcx, %r9
-               	movq	%r9, %r8
-               	jmp	0x42f6c2 <_mi_page_reclaim+0x12>
-               	nopw	(%rax,%rax)
+               	subq	%rcx, %r10
+               	movq	%r10, %r8
+               	jmp	0x42ffb2 <_mi_page_reclaim+0x12>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movb	96(%rdi), %cl
+               	movq	96(%rdi), %rcx
@@@@
-               	addl	$-1, 136(%rdi,%rax)
-               	je	0x42fa36 <mi_free+0x66>
+               	movl	136(%rdi,%rax), %ecx
+               	addl	$-1, %ecx
+               	movl	%ecx, 136(%rdi,%rax)
+               	je	0x430340 <mi_free+0x70>
@@@@
-               	jmp	0x42eb40 <_mi_page_retire>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42f3f0 <_mi_page_retire>
+               	nopl	(%rax)

@@ -29209,32 +29699,33 @@
@@@[(15, 18), (20, 24)]@@@
-               	movzbl	(%r9), %ebx
+               	movb	(%r9), %cl
+               	movzbl	%cl, %ebx
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x42fae7 <mi_free_generic+0x97>
+               	testb	%bl, %bl
+               	jne	0x4303e8 <mi_free_generic+0x98>

@@ -29244,30 +29735,32 @@
@@@[(25, 31)]@@@
-               	addl	$-1, 136(%rdi,%r11)
-               	je	0x42fb5d <mi_free_generic+0x10d>
+               	movl	136(%rdi,%r11), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%rdi,%r11)
+               	je	0x430468 <mi_free_generic+0x118>

@@ -29279,49 +29772,49 @@
@@@[(26, 30)]@@@
-               	jmp	0x42fb9b <mi_free_generic+0x14b>
-               	movb	96(%rax), %cl
+               	jmp	0x4304a7 <mi_free_generic+0x157>
+               	movq	96(%rax), %rcx

@@ -29331,8 +29824,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x42faf4 <mi_free_generic+0xa4>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x4303f5 <mi_free_generic+0xa5>

@@ -29343,86 +29835,91 @@
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

@@ -29431,72 +29928,76 @@
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

@@ -30012,21 +30513,21 @@
@@@[(10, 20)]@@@
-               	callq	0x42fff0 <_mi_fprintf>
-               	movq	(%r14), %rax
-               	cmpq	8(%r14), %rax
-               	leaq	79557(%rip), %rax       # 0x443d8a <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
-               	leaq	79568(%rip), %rdx       # 0x443d9c <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>
+               	callq	0x430910 <_mi_fprintf>
+               	movq	8(%r14), %rax
+               	cmpq	%rax, (%r14)
+               	leaq	80869(%rip), %rax       # 0x444bca <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
+               	leaq	80880(%rip), %rdx       # 0x444bdc <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>

@@ -30763,70 +31264,73 @@
@@@[(14, 19), (32, 34), (88, 96)]@@@
-               	cmpq	$0, 291448(%rip)        # 0x478488 <deferred_free>
-               	je	0x431235 <_mi_malloc_generic+0x65>
+               	movq	295065(%rip), %rcx      # 0x479bc8 <deferred_free>
+               	testq	%rcx, %rcx
+               	je	0x431b57 <_mi_malloc_generic+0x67>
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	callq	0x42b600 <_mi_error_message>
-               	jmp	0x4312e9 <_mi_malloc_generic+0x119>
-               	addl	$1, 16(%rax)
+               	callq	0x42bde0 <_mi_error_message>
+               	jmp	0x431c0e <_mi_malloc_generic+0x11e>
+               	movl	16(%rax), %edx
+               	addl	$1, %edx
+               	movl	%edx, 16(%rax)

@@ -30839,7 +31343,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax,%rax)

@@ -30891,37 +31394,43 @@
@@@[(16, 19), (20, 21), (29, 35), (38, 43), (44, 45), (49, 55)]@@@
-               	callq	0x42b600 <_mi_error_message>
-               	movq	8(%rbx), %rcx
+               	callq	0x42bde0 <_mi_error_message>
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x43140d <mi_find_page+0x10d>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x431d36 <mi_find_page+0x116>
@@@@
-               	subl	%eax, 16(%rbx)
-               	movq	8(%rbx), %rcx
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	je	0x43141a <mi_find_page+0x11a>
-               	andb	$1, 7(%rbx)
+               	je	0x431d47 <mi_find_page+0x127>
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -30958,91 +31467,100 @@
@@@[(10, 14), (59, 79), (98, 102), (104, 110), (120, 125)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x43158b <mi_find_page+0x28b>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x431ee2 <mi_find_page+0x2c2>
@@@@
-               	jmp	0x431569 <mi_find_page+0x269>
-               	addq	$1, 744(%rax)
-               	addq	$1, 736(%rax)
-               	jmp	0x431569 <mi_find_page+0x269>
-               	addq	$1, 728(%rax)
-               	addq	$1, 720(%rax)
+               	jmp	0x431ec0 <mi_find_page+0x2a0>
+               	movq	744(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 744(%rax)
+               	movq	736(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 736(%rax)
+               	jmp	0x431ec0 <mi_find_page+0x2a0>
+               	movq	728(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 728(%rax)
+               	movq	720(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 720(%rax)
@@@@
-               	jmp	0x4315ad <mi_find_page+0x2ad>
-               	movb	96(%rax), %cl
+               	jmp	0x431f05 <mi_find_page+0x2e5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r14), %ebx
-               	testq	%rbx, %rbx
-               	je	0x4315be <mi_find_page+0x2be>
+               	movb	(%r14), %bl
+               	testb	%bl, %bl
+               	je	0x431f14 <mi_find_page+0x2f4>
@@@@
-               	je	0x431601 <mi_find_page+0x301>
-               	imulq	%rbx, %rdx
+               	je	0x431f5a <mi_find_page+0x33a>
+               	movzbl	%bl, %edi
+               	imulq	%rdi, %rdx

@@ -31052,8 +31570,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x4314af <mi_find_page+0x1af>
-               	nopl	(%rax)
+               	jmp	0x431ddb <mi_find_page+0x1bb>
+               	nopw	%cs:(%rax,%rax)

@@ -31161,46 +31679,48 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -31211,96 +31731,95 @@
@@@[(3, 8), (40, 44), (47, 52), (53, 57), (77, 83), (84, 86), (87, 99), (102, 111), (112, 114), (118, 123), (124, 125)]@@@
-               	jmp	0x431889 <mi_page_fresh_alloc+0x279>
-               	nopl	(%rax)
+               	jmp	0x4321f9 <mi_page_fresh_alloc+0x289>
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	jmp	0x4318e0 <mi_page_fresh_alloc+0x2d0>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x432250 <mi_page_fresh_alloc+0x2e0>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x4318fd <mi_page_fresh_alloc+0x2ed>
+               	testb	%cl, %cl
+               	jne	0x43226f <mi_page_fresh_alloc+0x2ff>
@@@@
-               	je	0x431dc7 <mi_page_fresh_alloc+0x7b7>
-               	movq	%r15, %rdi
-               	andq	$-4194304, %rdi         # imm = 0xFFC00000
+               	je	0x432762 <mi_page_fresh_alloc+0x7f2>
+               	movq	%r15, %rsi
+               	andq	$-4194304, %rsi         # imm = 0xFFC00000
@@@@
-               	movl	112(%rdi), %edx
+               	movl	112(%rsi), %edx
@@@@
-               	jne	0x431965 <mi_page_fresh_alloc+0x355>
-               	movq	72(%rdi), %rax
-               	movq	16(%rsp), %rbx
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x4319c8 <mi_page_fresh_alloc+0x3b8>
-               	jmp	0x43197e <mi_page_fresh_alloc+0x36e>
-               	movb	96(%rdi), %cl
+               	jne	0x4322c9 <mi_page_fresh_alloc+0x359>
+               	movq	72(%rsi), %rax
+               	jmp	0x4322d5 <mi_page_fresh_alloc+0x365>
+               	movq	96(%rsi), %rcx
@@@@
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x4319c8 <mi_page_fresh_alloc+0x3b8>
-               	movq	80(%rdi), %rsi
+               	movb	(%r15), %cl
+               	movzbl	%cl, %edi
+               	testb	%dil, %dil
+               	jne	0x43232f <mi_page_fresh_alloc+0x3bf>
+               	movq	80(%rsi), %rbp
@@@@
-               	subq	%rsi, %rcx
+               	subq	%rbp, %rcx
@@@@
-               	je	0x4319c5 <mi_page_fresh_alloc+0x3b5>
-               	imulq	%r9, %rax
-               	addq	%rdi, %rax
+               	je	0x43232c <mi_page_fresh_alloc+0x3bc>
+               	imulq	%rdi, %rax
@@@@
+               	addq	%rbp, %rax

@@ -31317,74 +31836,75 @@
@@@[(7, 10), (12, 29), (30, 51), (52, 74), (75, 85), (87, 91), (105, 109), (113, 119)]@@@
-               	movq	%rax, %r8
-               	jmp	0x4319f9 <mi_page_fresh_alloc+0x3e9>
+               	jmp	0x43235a <mi_page_fresh_alloc+0x3ea>
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
-               	jne	0x431b32 <mi_page_fresh_alloc+0x522>
-               	movzwl	2(%r15), %r10d
-               	cmpw	%r8w, %r10w
-               	jae	0x431b32 <mi_page_fresh_alloc+0x522>
-               	movl	112(%rdi), %eax
-               	cmpl	$3, %eax
-               	jne	0x431a47 <mi_page_fresh_alloc+0x437>
-               	movq	72(%rdi), %rsi
-               	testb	%r9b, %r9b
-               	je	0x431a57 <mi_page_fresh_alloc+0x447>
+               	jne	0x4324b0 <mi_page_fresh_alloc+0x540>
+               	movzwl	2(%r15), %ecx
+               	cmpw	%ax, %cx
+               	jae	0x4324b0 <mi_page_fresh_alloc+0x540>
+               	movzwl	%cx, %r8d
+               	movl	112(%rsi), %edx
+               	cmpl	$3, %edx
+               	jne	0x4323ac <mi_page_fresh_alloc+0x43c>
+               	movq	72(%rsi), %rax
+               	testb	%dil, %dil
+               	je	0x4323bd <mi_page_fresh_alloc+0x44d>
@@@@
-               	jmp	0x431ae1 <mi_page_fresh_alloc+0x4d1>
-               	movb	96(%rdi), %cl
-               	movl	$1, %esi
-               	shlq	%cl, %rsi
-               	testb	%r9b, %r9b
-               	jne	0x431a3f <mi_page_fresh_alloc+0x42f>
-               	movq	80(%rdi), %rdx
-               	movq	%rsi, %rcx
-               	subq	%rdx, %rcx
-               	cmpl	$1, %eax
-               	ja	0x431a8b <mi_page_fresh_alloc+0x47b>
+               	jmp	0x43244d <mi_page_fresh_alloc+0x4dd>
+               	movq	96(%rsi), %rcx
+               	movl	$1, %eax
+               	shlq	%cl, %rax
+               	testb	%dil, %dil
+               	jne	0x4323a4 <mi_page_fresh_alloc+0x434>
+               	movq	80(%rsi), %rbx
+               	movq	%rax, %rcx
+               	subq	%rbx, %rcx
+               	cmpl	$1, %edx
+               	ja	0x4323f1 <mi_page_fresh_alloc+0x481>
@@@@
-               	je	0x431a8b <mi_page_fresh_alloc+0x47b>
-               	imulq	%r9, %rsi
-               	addq	%rsi, %rdi
-               	addq	%rdx, %rdi
-               	movq	%rdi, %rax
+               	je	0x4323f1 <mi_page_fresh_alloc+0x481>
+               	imulq	%rdi, %rax
+               	addq	%rax, %rsi
+               	addq	%rbx, %rsi
+               	movq	%rsi, %rax
@@@@
-               	je	0x431ac6 <mi_page_fresh_alloc+0x4b6>
-               	movq	%rdi, %rax
+               	je	0x432432 <mi_page_fresh_alloc+0x4c2>
+               	movq	%rsi, %rax
@@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	ja	0x4317e7 <mi_page_fresh_alloc+0x1d7>
-               	jmp	0x4317eb <mi_page_fresh_alloc+0x1db>
-               	movl	%edi, %eax
+               	ja	0x43214e <mi_page_fresh_alloc+0x1de>
+               	jmp	0x432152 <mi_page_fresh_alloc+0x1e2>
+               	movl	%esi, %eax

@@ -31393,14 +31913,15 @@
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

@@ -31409,45 +31930,50 @@
@@@[(3, 9), (11, 17), (34, 35), (56, 60)]@@@
-               	callq	0x4325d0 <mi_page_free_list_extend>
-               	addw	%r12w, 2(%r15)
+               	callq	0x432f80 <mi_page_free_list_extend>
+               	movzwl	2(%r15), %eax
+               	addl	%r12d, %eax
+               	movw	%ax, 2(%r15)
@@@@
-               	jne	0x431b32 <mi_page_fresh_alloc+0x522>
-               	andb	$-2, 7(%r15)
+               	jne	0x4324b0 <mi_page_fresh_alloc+0x540>
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

@@ -31489,21 +32015,22 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -31570,16 +32097,18 @@
@@@[(13, 19)]@@@
-               	jne	0x431db0 <mi_page_fresh_alloc+0x7a0>
-               	addq	$1, 3016(%r12)
+               	jne	0x432740 <mi_page_fresh_alloc+0x7d0>
+               	movq	3016(%r12), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%r12)

@@ -31589,7 +32118,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -31600,23 +32129,23 @@
@@@[(3, 5), (11, 13), (15, 23)]@@@
-               	movq	%rdi, %r13
+               	movq	%rdi, %r12
@@@@
-               	movq	(%r14), %r12
+               	movq	(%r14), %r13
@@@@
-               	testq	%r12, %r12
-               	je	0x432400 <mi_page_queue_find_free_ex+0x620>
-               	movq	%r12, %rbx
-               	movq	48(%r12), %r12
+               	testq	%r13, %r13
+               	je	0x432da0 <mi_page_queue_find_free_ex+0x620>
+               	movq	%r13, %rbx
+               	movq	48(%r13), %r13

@@ -31634,81 +32163,85 @@
@@@[(28, 32), (33, 43), (95, 99)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
@@@@
-               	jne	0x4325ac <mi_page_queue_find_free_ex+0x7cc>
-               	movzwl	2(%rbx), %edi
-               	movzwl	4(%rbx), %ebp
-               	cmpw	%bp, %di
-               	jb	0x4324e6 <mi_page_queue_find_free_ex+0x706>
+               	jne	0x432f5a <mi_page_queue_find_free_ex+0x7da>
+               	movzwl	2(%rbx), %eax
+               	movzwl	4(%rbx), %ecx
+               	cmpw	%cx, %ax
+               	jb	0x432e87 <mi_page_queue_find_free_ex+0x707>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)

@@ -31719,22 +32252,22 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -31964,140 +32497,146 @@
@@@[(28, 34), (37, 41), (42, 56), (57, 61), (62, 64), (78, 79), (83, 85), (94, 98), (117, 125), (127, 131), (133, 135), (140, 150), (152, 164), (165, 172), (174, 176), (181, 185), (186, 190), (192, 194), (195, 205)]@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x431e20 <mi_page_queue_find_free_ex+0x40>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x4327c0 <mi_page_queue_find_free_ex+0x40>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %edx
+               	subl	%eax, %edx
+               	movl	%edx, 16(%rbx)
@@@@
-               	jne	0x4323bd <mi_page_queue_find_free_ex+0x5dd>
-               	jmp	0x431e20 <mi_page_queue_find_free_ex+0x40>
-               	nopl	(%rax)
-               	movq	3024(%r13), %rbp
-               	cmpq	3032(%r13), %rbp
-               	jbe	0x432460 <mi_page_queue_find_free_ex+0x680>
-               	movl	$74, %r12d
+               	jne	0x432d5d <mi_page_queue_find_free_ex+0x5dd>
+               	jmp	0x4327c0 <mi_page_queue_find_free_ex+0x40>
+               	nop
+               	movq	3024(%r12), %rbp
+               	cmpq	3032(%r12), %rbp
+               	jbe	0x432e00 <mi_page_queue_find_free_ex+0x680>
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
-               	ja	0x432419 <mi_page_queue_find_free_ex+0x639>
+               	cmpq	3032(%r12), %rbp
+               	ja	0x432dbb <mi_page_queue_find_free_ex+0x63b>
@@@@
-               	callq	0x42c8c0 <_mi_page_free>
-               	jmp	0x432490 <mi_page_queue_find_free_ex+0x6b0>
-               	cmpq	%r12, %rbp
-               	cmovbq	%rbp, %r12
+               	callq	0x42d0f0 <_mi_page_free>
+               	jmp	0x432e30 <mi_page_queue_find_free_ex+0x6b0>
+               	cmpq	%r13, %rbp
+               	cmovbq	%rbp, %r13
@@@@
-               	jmp	0x432490 <mi_page_queue_find_free_ex+0x6b0>
+               	jmp	0x432e30 <mi_page_queue_find_free_ex+0x6b0>
+               	movzwl	%ax, %r8d
+               	movzwl	%cx, %ebp
@@@@
-               	movl	20(%rbx), %r8d
+               	movl	20(%rbx), %edi
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x432564 <mi_page_queue_find_free_ex+0x784>
-               	jmp	0x43251c <mi_page_queue_find_free_ex+0x73c>
-               	movb	96(%rax), %cl
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x432f09 <mi_page_queue_find_free_ex+0x789>
+               	jmp	0x432ec0 <mi_page_queue_find_free_ex+0x740>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x432564 <mi_page_queue_find_free_ex+0x784>
-               	movq	80(%rax), %r10
-               	movq	%rsi, %r9
-               	subq	%r10, %r9
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x432f09 <mi_page_queue_find_free_ex+0x789>
+               	movq	80(%rax), %r9
+               	movq	%rsi, %r10
+               	subq	%r9, %r10
@@@@
-               	ja	0x432561 <mi_page_queue_find_free_ex+0x781>
-               	testl	%r8d, %r8d
-               	je	0x432561 <mi_page_queue_find_free_ex+0x781>
+               	ja	0x432f06 <mi_page_queue_find_free_ex+0x786>
+               	testl	%edi, %edi
+               	je	0x432f06 <mi_page_queue_find_free_ex+0x786>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax
@@@@
-               	divq	%r8
-               	jmp	0x43254f <mi_page_queue_find_free_ex+0x76f>
+               	divq	%rdi
+               	jmp	0x432ef4 <mi_page_queue_find_free_ex+0x774>
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

@@ -32106,12 +32645,18 @@
@@@[(3, 9), (10, 20)]@@@
-               	callq	0x4325d0 <mi_page_free_list_extend>
-               	addw	%bp, 2(%rbx)
+               	callq	0x432f80 <mi_page_free_list_extend>
+               	movzwl	2(%rbx), %eax
+               	addl	%ebp, %eax
+               	movw	%ax, 2(%rbx)
@@@@
-               	jne	0x4325ac <mi_page_queue_find_free_ex+0x7cc>
-               	andb	$-2, 7(%rbx)
-               	andb	$1, 7(%rbx)
+               	jne	0x432f5a <mi_page_queue_find_free_ex+0x7da>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -32124,66 +32669,68 @@
@@@[(3, 5), (7, 49), (50, 54), (55, 61), (62, 66), (67, 83), (85, 111), (112, 116)]@@@
-               	movq	%rdx, %r9
+               	movq	%rdx, %r8
@@@@
-               	movl	20(%rdi), %r10d
-               	movl	112(%rax), %edx
-               	cmpl	$3, %edx
-               	jne	0x4325ee <mi_page_free_list_extend+0x1e>
-               	movq	72(%rax), %r8
-               	jmp	0x4325fa <mi_page_free_list_extend+0x2a>
-               	movb	96(%rax), %cl
-               	movl	$1, %r8d
-               	shlq	%cl, %r8
-               	movzbl	(%rdi), %ecx
-               	imulq	%rcx, %r8
-               	addq	%rax, %r8
-               	testq	%rcx, %rcx
-               	jne	0x432643 <mi_page_free_list_extend+0x73>
-               	addq	80(%rax), %r8
-               	cmpl	$1, %edx
-               	ja	0x432643 <mi_page_free_list_extend+0x73>
-               	testl	%r10d, %r10d
-               	je	0x432643 <mi_page_free_list_extend+0x73>
-               	movq	%r8, %rax
+               	movl	20(%rdi), %r9d
+               	movl	112(%rax), %r10d
+               	cmpl	$3, %r10d
+               	jne	0x432fa0 <mi_page_free_list_extend+0x20>
+               	movq	72(%rax), %r11
+               	jmp	0x432fad <mi_page_free_list_extend+0x2d>
+               	movq	96(%rax), %rcx
+               	movl	$1, %r11d
+               	shlq	%cl, %r11
+               	movb	(%rdi), %cl
+               	movzbl	%cl, %edx
+               	movq	%rdx, %rcx
+               	imulq	%r11, %rcx
+               	addq	%rax, %rcx
+               	testb	%dl, %dl
+               	jne	0x432ffa <mi_page_free_list_extend+0x7a>
+               	addq	80(%rax), %rcx
+               	cmpl	$1, %r10d
+               	ja	0x432ffa <mi_page_free_list_extend+0x7a>
+               	testl	%r9d, %r9d
+               	je	0x432ffa <mi_page_free_list_extend+0x7a>
+               	movq	%rcx, %rax
@@@@
-               	je	0x43262a <mi_page_free_list_extend+0x5a>
-               	movq	%r8, %rax
+               	je	0x432fe2 <mi_page_free_list_extend+0x62>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r10
-               	jmp	0x432632 <mi_page_free_list_extend+0x62>
-               	movl	%r8d, %eax
+               	divq	%r9
+               	jmp	0x432fe9 <mi_page_free_list_extend+0x69>
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
-               	jg	0x43268e <mi_page_free_list_extend+0xbe>
-               	addq	$1, %r11
-               	imulq	%rsi, %r11
-               	addq	%r11, %r8
-               	movq	%r10, %rdx
-               	nopw	(%rax,%rax)
-               	movq	%r8, (%rdx)
-               	addq	%rsi, %rdx
-               	addq	%rsi, %r8
-               	cmpq	%rcx, %rdx
-               	jbe	0x432680 <mi_page_free_list_extend+0xb0>
+               	leaq	(%rcx,%rax), %rdx
+               	cmpq	%rax, %r11
+               	jg	0x43303e <mi_page_free_list_extend+0xbe>
+               	addq	$1, %r10
+               	imulq	%rsi, %r10
+               	addq	%r10, %rcx
+               	movq	%r9, %rax
+               	nopl	(%rax)
+               	movq	%rcx, (%rax)
+               	addq	%rsi, %rax
+               	addq	%rsi, %rcx
+               	cmpq	%rdx, %rax
+               	jbe	0x433030 <mi_page_free_list_extend+0xb0>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	%r10, 8(%rdi)
+               	movq	%rax, (%rdx)
+               	movq	%r9, 8(%rdi)

@@ -32195,210 +32742,214 @@
@@@[(3, 6), (10, 16), (17, 19), (20, 22), (38, 40), (52, 53), (57, 58), (79, 89), (90, 94), (97, 99), (111, 113), (150, 156), (160, 164), (205, 209), (216, 222), (244, 256), (285, 289), (293, 298)]@@@
-               	movq	%r8, %r14
+               	movq	%r9, %r14
+               	movq	%r8, %rbx
@@@@
-               	je	0x43273e <mi_segment_reclaim_or_alloc+0x9e>
-               	addq	$-1, 88(%r14)
+               	je	0x4330fe <mi_segment_reclaim_or_alloc+0xae>
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
-               	ja	0x4327c2 <mi_segment_reclaim_or_alloc+0x122>
-               	movq	285909(%rip), %rdx      # 0x478480 <abandoned_visited_count>
-               	leal	1(%rax), %edi
-               	andl	$4194303, %edi          # imm = 0x3FFFFF
-               	orq	%rcx, %rdi
+               	ja	0x433182 <mi_segment_reclaim_or_alloc+0x132>
+               	movq	289365(%rip), %rdx      # 0x479bc0 <abandoned_visited_count>
+               	leal	1(%rax), %esi
+               	andl	$4194303, %esi          # imm = 0x3FFFFF
+               	orq	%rcx, %rsi
@@@@
-               	cmpxchgq	%rdi, 285696(%rip)      # 0x4783c0 <abandoned>
-               	je	0x43281c <mi_segment_reclaim_or_alloc+0x17c>
+               	cmpxchgq	%rsi, 289152(%rip)      # 0x479b00 <abandoned>
+               	je	0x4331dc <mi_segment_reclaim_or_alloc+0x18c>
@@@@
-               	movq	%rax, %rbx
+               	movq	%rax, %rsi
@@@@
-               	movq	%rbp, 16(%rbx)
+               	movq	%rbp, 16(%rsi)
@@@@
-               	subq	$1, 285563(%rip)        # 0x478400 <abandoned_count>
-               	addq	$1, 48(%r15)
+               	subq	$1, 289019(%rip)        # 0x479b40 <abandoned_count>
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
-               	callq	0x42f150 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x42fa00 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x42f150 <mi_segment_reclaim>
-               	movq	%rbx, %r9
-               	jmp	0x432939 <mi_segment_reclaim_or_alloc+0x299>
-               	movq	285364(%rip), %rax      # 0x478440 <abandoned_visited>
-               	nopl	(%rax)
+               	movq	%rbx, %r8
+               	callq	0x42fa00 <mi_segment_reclaim>
+               	jmp	0x4332fa <mi_segment_reclaim_or_alloc+0x2aa>
+               	movq	288825(%rip), %rax      # 0x479b80 <abandoned_visited>
+               	nopw	(%rax,%rax)
@@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
-               	movq	%r14, %r8
-               	callq	0x432cd0 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x4336b0 <mi_segment_init>

@@ -32412,24 +32963,23 @@
@@@[(3, 9), (20, 25), (26, 30)]@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x42f150 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x42fa00 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	callq	0x432cd0 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x4336b0 <mi_segment_init>
@@@@
-               	jmp	0x432a02 <mi_segment_reclaim_or_alloc+0x362>
-               	nopw	(%rax,%rax)
+               	jmp	0x4333d3 <mi_segment_reclaim_or_alloc+0x383>
+               	nopl	(%rax)

@@ -32440,73 +32990,76 @@
@@@[(22, 26), (79, 83), (86, 91), (92, 96)]@@@
-               	addq	$-1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x432b02 <mi_segment_find_free+0xa2>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x4334d9 <mi_segment_find_free+0xa9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x432b63 <mi_segment_find_free+0x103>
+               	testb	%al, %al
+               	jne	0x43353b <mi_segment_find_free+0x10b>

@@ -32514,95 +33067,98 @@
@@@[(18, 22), (40, 44), (47, 52), (53, 57), (85, 93)]@@@
-               	addq	$1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x432be5 <mi_segment_find_free+0x185>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x4335c3 <mi_segment_find_free+0x193>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x432c01 <mi_segment_find_free+0x1a1>
+               	testb	%al, %al
+               	jne	0x4335e1 <mi_segment_find_free+0x1b1>
@@@@
-               	jmp	0x432cb1 <mi_segment_find_free+0x251>
-               	movq	56(%r15), %rax
-               	cmpq	64(%r15), %rax
-               	jne	0x432cb1 <mi_segment_find_free+0x251>
+               	jmp	0x433691 <mi_segment_find_free+0x261>
+               	movq	64(%r15), %rax
+               	cmpq	%rax, 56(%r15)
+               	jne	0x433691 <mi_segment_find_free+0x261>

@@ -32629,406 +33185,400 @@
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
-               	ja	0x432d6d <mi_segment_init+0x9d>
-               	movq	56(%rbp), %rbx
+               	cmpl	$1, %r13d
+               	movq	%rbx, 80(%rsp)
+               	ja	0x433745 <mi_segment_init+0x95>
+               	movq	56(%r12), %rbx
@@@@
-               	callq	0x42a1a0 <mi_option_get>
-               	xorl	%r11d, %r11d
-               	movl	$0, %ecx
-               	movl	$0, %r13d
+               	callq	0x42a980 <mi_option_get>
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
-               	je	0x432eb5 <mi_segment_init+0x1e5>
-               	cmpl	$1, %r12d
-               	ja	0x432ddf <mi_segment_init+0x10f>
-               	cmpl	%r12d, 112(%r14)
-               	jne	0x432ddf <mi_segment_init+0x10f>
-               	cmpq	%rbx, 72(%r14)
-               	jne	0x432ddf <mi_segment_init+0x10f>
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
+               	testq	%rbp, %rbp
+               	je	0x433886 <mi_segment_init+0x1d6>
+               	movq	%r14, 96(%rsp)
+               	cmpl	$1, %r13d
+               	ja	0x4337ac <mi_segment_init+0xfc>
+               	cmpl	%r13d, 112(%rbp)
+               	jne	0x4337ac <mi_segment_init+0xfc>
+               	cmpq	%rbx, 72(%rbp)
+               	jne	0x4337ac <mi_segment_init+0xfc>
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
-               	jmp	0x432fc6 <mi_segment_init+0x2f6>
-               	movl	%r12d, 52(%rsp)
-               	movq	%rbp, %r12
-               	cmpq	$0, 64(%r14)
-               	je	0x432ef8 <mi_segment_init+0x228>
-               	leaq	121(%r14), %rbx
-               	xorl	%ebp, %ebp
-               	jmp	0x432e35 <mi_segment_init+0x165>
-               	nopl	(%rax)
+               	movups	%xmm0, 104(%rbp)
+               	movups	%xmm0, 88(%rbp)
+               	movups	%xmm0, 72(%rbp)
+               	movups	%xmm0, 56(%rbp)
+               	movups	%xmm0, 40(%rbp)
+               	movups	%xmm0, 24(%rbp)
+               	jmp	0x43399c <mi_segment_init+0x2ec>
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, %r14
+               	cmpq	$0, 64(%rbp)
+               	je	0x4338dd <mi_segment_init+0x22d>
+               	movb	9(%rsp), %r13b
+               	leaq	121(%rbp), %rbx
+               	xorl	%r12d, %r12d
+               	jmp	0x433805 <mi_segment_init+0x155>
@@@@
-               	je	0x432e3f <mi_segment_init+0x16f>
-               	andb	$-3, (%rbx)
+               	je	0x43380f <mi_segment_init+0x15f>
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
-               	jae	0x432efa <mi_segment_init+0x22a>
+               	cmpq	%rax, %r12
+               	jae	0x4338df <mi_segment_init+0x22f>
@@@@
-               	je	0x432e00 <mi_segment_init+0x130>
-               	cmpb	$0, 8(%r14)
-               	jne	0x432e20 <mi_segment_init+0x150>
+               	je	0x4337cd <mi_segment_init+0x11d>
+               	cmpb	$0, 8(%rbp)
+               	jne	0x4337f0 <mi_segment_init+0x140>
@@@@
-               	cmpl	$3, 112(%r14)
-               	jne	0x432e64 <mi_segment_init+0x194>
-               	movq	72(%r14), %rsi
-               	jmp	0x432e71 <mi_segment_init+0x1a1>
-               	movzbl	96(%r14), %ecx
+               	cmpl	$3, 112(%rbp)
+               	jne	0x433832 <mi_segment_init+0x182>
+               	movq	72(%rbp), %rsi
+               	jmp	0x43383e <mi_segment_init+0x18e>
+               	movq	96(%rbp), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
-               	addq	%r14, %rdi
-               	testq	%rax, %rax
-               	jne	0x432e8e <mi_segment_init+0x1be>
-               	movq	80(%r14), %rax
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
+               	addq	%rbp, %rdi
+               	testb	%al, %al
+               	jne	0x43385d <mi_segment_init+0x1ad>
+               	movq	80(%rbp), %rax
@@@@
-               	je	0x432e20 <mi_segment_init+0x150>
-               	orb	$8, (%rbx)
-               	jmp	0x432e20 <mi_segment_init+0x150>
+               	je	0x4337f0 <mi_segment_init+0x140>
+               	movzbl	(%rbx), %eax
+               	orb	$8, %al
+               	jmp	0x4337e1 <mi_segment_init+0x131>
@@@@
-               	je	0x43391b <mi_segment_init+0xc4b>
-               	movq	%rbp, 104(%rsp)
-               	movq	178488(%rip), %rcx      # 0x45e810 <os_page_size>
+               	je	0x4342d1 <mi_segment_init+0xc21>
+               	movq	181972(%rip), %rcx      # 0x45ff78 <os_page_size>
@@@@
-               	jmp	0x433063 <mi_segment_init+0x393>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	jbe	0x433a54 <mi_segment_init+0x3a4>
+               	jmp	0x434167 <mi_segment_init+0xab7>
@@@@
-               	movq	%r14, %rdi
-               	movq	64(%rsp), %r13
-               	movq	%r13, %rsi
+               	movq	%rbp, %rdi
+               	movq	88(%rsp), %rsi
@@@@
-               	movq	%r12, %rbp
-               	je	0x432f2f <mi_segment_init+0x25f>
+               	movq	%r14, %r12
+               	movl	24(%rsp), %r13d
+               	je	0x433916 <mi_segment_init+0x266>
@@@@
-               	jne	0x432f40 <mi_segment_init+0x270>
-               	jmp	0x43391b <mi_segment_init+0xc4b>
-               	movq	%r12, %rbp
-               	movq	64(%rsp), %r13
-               	movq	%rbp, %r12
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
-               	leaq	-24(%r13), %rdx
-               	xorl	%ebp, %ebp
-               	movq	%rbx, %rdi
+               	jne	0x433927 <mi_segment_init+0x277>
+               	jmp	0x4342d1 <mi_segment_init+0xc21>
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
-               	ja	0x432f70 <mi_segment_init+0x2a0>
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
+               	ja	0x433950 <mi_segment_init+0x2a0>
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
-               	movq	177240(%rip), %rax      # 0x45e450 <_mi_heap_main+0xb28>
-               	xorq	%r14, %rax
-               	movq	%rax, 88(%r14)
-               	cmpl	$1, %r12d
-               	ja	0x43391e <mi_segment_init+0xc4e>
-               	movl	112(%r14), %eax
+               	xchgq	%rax, 104(%rbp)
+               	movq	180714(%rip), %rax      # 0x45fbb8 <_mi_heap_main+0xb28>
+               	xorq	%rbp, %rax
+               	movq	%rax, 88(%rbp)
+               	cmpl	$1, %r13d
+               	ja	0x4342d3 <mi_segment_init+0xc23>
+               	movl	112(%rbp), %eax
@@@@
-               	je	0x433034 <mi_segment_init+0x364>
-               	xorl	%ebp, %ebp
-               	jmp	0x433034 <mi_segment_init+0x364>
+               	je	0x433a0a <mi_segment_init+0x35a>
+               	xorl	%r12d, %r12d
+               	jmp	0x433a0a <mi_segment_init+0x35a>
@@@@
-               	jmp	0x433060 <mi_segment_init+0x390>
-               	addq	$16, %rbp
-               	movq	$0, (%rbx)
-               	movq	8(%rbp), %rax
-               	movq	%rax, 32(%r14)
+               	jmp	0x433a38 <mi_segment_init+0x388>
+               	addq	$16, %r12
+               	movq	$0, (%r14)
+               	movq	8(%r12), %rax
+               	movq	%rax, 32(%rbp)
@@@@
-               	cmoveq	%rbp, %rcx
-               	movq	%r14, (%rcx)
-               	movq	%r14, 8(%rbp)
-               	jmp	0x43391e <mi_segment_init+0xc4e>
+               	cmoveq	%r12, %rcx
+               	movq	%rbp, (%rcx)
+               	movq	%rbp, 8(%r12)
+               	jmp	0x4342d3 <mi_segment_init+0xc23>
@@@@
-               	leaq	4194303(%rbp), %rax
-               	movq	%rax, 80(%rsp)
-               	cmpq	$71303167, %rax         # imm = 0x43FFFFF
-               	movl	%r12d, 52(%rsp)
-               	ja	0x4337a9 <mi_segment_init+0xad9>
-               	movq	217745(%rip), %rax      # 0x468318 <_mi_numa_node_count>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	ja	0x434167 <mi_segment_init+0xab7>
+               	movq	221181(%rip), %rax      # 0x469a58 <_mi_numa_node_count>
@@@@
-               	je	0x433297 <mi_segment_init+0x5c7>
-               	movq	80(%rsp), %rsi
-               	shrq	$22, %rsi
+               	movq	%rcx, 32(%rsp)
+               	je	0x434346 <mi_segment_init+0xc96>
+               	movq	%rbp, 104(%rsp)
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, 72(%rsp)
+               	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
@@@@
-               	movq	%rsi, 24(%rsp)
-               	movq	%rbp, 96(%rsp)
-               	jae	0x4330c6 <mi_segment_init+0x3f6>
-               	movq	217792(%rip), %r9       # 0x468370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x4332ca <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
-               	movq	(%rax), %rbp
-               	jmp	0x43319e <mi_segment_init+0x4ce>
-               	movq	217675(%rip), %rax      # 0x468318 <_mi_numa_node_count>
+               	jb	0x433a98 <mi_segment_init+0x3e8>
+               	movq	221133(%rip), %rax      # 0x469a58 <_mi_numa_node_count>
@@@@
-               	jne	0x4332a7 <mi_segment_init+0x5d7>
-               	movq	217743(%rip), %r9       # 0x468370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x4332ca <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
+               	jne	0x434355 <mi_segment_init+0xca5>
+               	shrq	$22, %rcx
+               	movq	%rcx, 40(%rsp)
+               	movb	10(%rsp), %r9b
+               	movq	221187(%rip), %r12      # 0x469ab0 <regions_count>
+               	testq	%r12, %r12
+               	je	0x433c48 <mi_segment_init+0x598>
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	217724(%rip), %r8       # 0x468380 <regions>
-               	notb	%r11b
-               	movq	%r9, %r14
-               	movl	%r11d, 92(%rsp)
-               	movq	%r9, 56(%rsp)
-               	movl	%r10d, 88(%rsp)
-               	jmp	0x43312e <mi_segment_init+0x45e>
+               	leaq	221168(%rip), %r8       # 0x469ac0 <regions>
+               	movq	%r12, %r13
+               	movq	%r15, 112(%rsp)
+               	movq	%r12, 64(%rsp)
+               	jmp	0x433aee <mi_segment_init+0x43e>
@@@@
-               	addq	$-1, %r14
-               	je	0x4332ca <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r13
+               	je	0x433c48 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	je	0x433120 <mi_segment_init+0x450>
-               	movl	%eax, %edx
-               	shrl	$8, %edx
-               	andl	$1, %edx
+               	je	0x433ae0 <mi_segment_init+0x430>
+               	testb	%r9b, %r9b
+               	sete	%dl
+               	movl	%eax, %esi
+               	shrl	$8, %esi
+               	andl	$1, %esi
@@@@
-               	testb	%dl, %r11b
-               	jne	0x433120 <mi_segment_init+0x450>
+               	testb	%sil, %dl
+               	jne	0x433ae0 <mi_segment_init+0x430>
@@@@
-               	je	0x433120 <mi_segment_init+0x450>
+               	je	0x433ae0 <mi_segment_init+0x430>
+               	movl	%r10d, %r12d
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r12
-               	callq	0x433ac0 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r14
+               	movl	%r9d, %r15d
+               	callq	0x434490 <_mi_bitmap_try_find_claim_field>
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
-               	jmp	0x43328a <mi_segment_init+0x5ba>
-               	testb	%r11b, %r11b
-               	movq	%r9, 56(%rsp)
-               	je	0x433215 <mi_segment_init+0x545>
-               	leaq	217549(%rip), %r8       # 0x468380 <regions>
-               	movq	%r9, %r12
-               	jmp	0x4331ce <mi_segment_init+0x4fe>
-               	nopl	(%rax,%rax)
+               	jmp	0x433c31 <mi_segment_init+0x581>
+               	testb	%r9b, %r9b
+               	je	0x433bd1 <mi_segment_init+0x521>
+               	leaq	220997(%rip), %r8       # 0x469ac0 <regions>
+               	movq	%r12, %r14
+               	jmp	0x433b8e <mi_segment_init+0x4de>
@@@@
-               	addq	$-1, %r12
-               	je	0x4332ca <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r14
+               	je	0x433c48 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r14
-               	shlq	$6, %r14
-               	movq	(%r14,%r8), %rax
+               	movq	%rbp, %r13
+               	shlq	$6, %r13
+               	movq	(%r13,%r8), %rax
@@@@
-               	je	0x4331c0 <mi_segment_init+0x4f0>
-               	leaq	(%r14,%r8), %rdi
+               	je	0x433b80 <mi_segment_init+0x4d0>
+               	leaq	(%r8,%r13), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
@@@@
-               	callq	0x433ac0 <_mi_bitmap_try_find_claim_field>
-               	movq	56(%rsp), %r9
+               	callq	0x434490 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	24(%rsp), %rsi
@@@@
-               	je	0x4331c0 <mi_segment_init+0x4f0>
-               	addq	%r14, %r8
-               	jmp	0x43328a <mi_segment_init+0x5ba>
+               	je	0x433b80 <mi_segment_init+0x4d0>
+               	addq	%r13, %r8
+               	jmp	0x433c31 <mi_segment_init+0x581>
@@@@
-               	leaq	217442(%rip), %r8       # 0x468380 <regions>
-               	movq	%r9, %rbx
-               	jmp	0x43323e <mi_segment_init+0x56e>
-               	nopw	%cs:(%rax,%rax)
+               	leaq	220902(%rip), %r8       # 0x469ac0 <regions>
+               	movq	%r12, %rbx
+               	jmp	0x433bea <mi_segment_init+0x53a>
+               	nop
@@@@
-               	je	0x4332ca <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	je	0x433c48 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r12
-               	shlq	$6, %r12
-               	movq	(%r12,%r8), %rax
+               	movq	%rbp, %r14
+               	shlq	$6, %r14
+               	movq	(%r14,%r8), %rax
@@@@
-               	jne	0x433230 <mi_segment_init+0x560>
-               	leaq	(%r12,%r8), %rdi
+               	jne	0x433be0 <mi_segment_init+0x530>
+               	leaq	(%r14,%r8), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r14
-               	callq	0x433ac0 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r13
+               	callq	0x434490 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	56(%rsp), %r9
-               	movq	%r14, %r8
-               	movq	24(%rsp), %rsi
+               	movq	%r13, %r8
@@@@
-               	je	0x433230 <mi_segment_init+0x560>
-               	addq	%r12, %r8
-               	movq	32(%rsp), %rax
+               	je	0x433be0 <mi_segment_init+0x530>
+               	addq	%r14, %r8
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	movq	56(%rsp), %rax
@@@@
-               	jmp	0x433474 <mi_segment_init+0x7a4>
-               	movl	%r11d, %ebx
-               	callq	0x42b550 <_mi_os_numa_node_count_get>
-               	movl	%ebx, %r11d
-               	jmp	0x433090 <mi_segment_init+0x3c0>
-               	movl	%r11d, %ebx
-               	callq	0x4339a0 <_mi_os_numa_node_get>
-               	movl	%ebx, %r11d
-               	movq	24(%rsp), %rsi
-               	movl	%eax, %r10d
-               	movq	217263(%rip), %r9       # 0x468370 <regions_count>
-               	testq	%r9, %r9
-               	jne	0x4330ea <mi_segment_init+0x41a>
-               	movb	10(%rsp), %bl
-               	movq	217243(%rip), %rax      # 0x468370 <regions_count>
+               	jmp	0x433e01 <mi_segment_init+0x751>
+               	movb	9(%rsp), %bl
+               	movb	10(%rsp), %bpl
+               	movq	220760(%rip), %rax      # 0x469ab0 <regions_count>
@@@@
-               	ja	0x43378e <mi_segment_init+0xabe>
-               	testb	%r13b, %r13b
-               	je	0x4332f8 <mi_segment_init+0x628>
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	ja	0x43414c <mi_segment_init+0xa9c>
+               	testb	%bl, %bl
+               	je	0x433c84 <mi_segment_init+0x5d4>
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

@@ -33038,70 +33588,70 @@
@@@[(19, 23), (32, 37), (38, 41), (42, 44), (45, 49), (50, 54), (55, 62), (63, 69), (70, 80), (81, 82), (89, 99)]@@@
-               	movzbl	12(%rsp), %ecx
+               	xorl	%ecx, %ecx
+               	cmpb	$0, 12(%rsp)
+               	setne	%cl
@@@@
-               	callq	0x42b200 <_mi_warning_message>
-               	movq	24(%rsp), %rsi
-               	jmp	0x43346c <mi_segment_init+0x79c>
+               	callq	0x42b9e0 <_mi_warning_message>
+               	jmp	0x433df9 <mi_segment_init+0x749>
@@@@
-               	movq	24(%rsp), %rsi
-               	jmp	0x43346c <mi_segment_init+0x79c>
+               	jmp	0x433df9 <mi_segment_init+0x749>
@@@@
-               	leaq	217037(%rip), %rbx      # 0x468380 <regions>
+               	leaq	220546(%rip), %rsi      # 0x469ac0 <regions>
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
-               	ja	0x43342c <mi_segment_init+0x75c>
-               	testq	%rsi, %rsi
-               	je	0x43342a <mi_segment_init+0x75a>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x433db9 <mi_segment_init+0x709>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x433db7 <mi_segment_init+0x707>
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

@@ -33109,35 +33659,33 @@
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
-               	ja	0x4334bc <mi_segment_init+0x7ec>
-               	testq	%rsi, %rsi
-               	je	0x4334ba <mi_segment_init+0x7ea>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x433e49 <mi_segment_init+0x799>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x433e47 <mi_segment_init+0x797>
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
-               	jne	0x4334d0 <mi_segment_init+0x800>
+               	cmpxchgq	%rcx, 24(%r8,%rsi,8)
+               	jne	0x433e50 <mi_segment_init+0x7a0>

@@ -33147,86 +33695,89 @@
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
-               	je	0x433550 <mi_segment_init+0x880>
-               	movq	%rbx, %rdx
+               	je	0x433ed3 <mi_segment_init+0x823>
+               	movq	%rdi, %rdx
@@@@
-               	movq	$-1, %rdi
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x43358d <mi_segment_init+0x8bd>
-               	testq	%rsi, %rsi
-               	je	0x43358b <mi_segment_init+0x8bb>
-               	movl	%ebx, %eax
+               	movq	$-1, %rsi
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x433f1d <mi_segment_init+0x86d>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x433f1b <mi_segment_init+0x86b>
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
-               	jmp	0x43358d <mi_segment_init+0x8bd>
+               	shlq	%cl, %rsi
+               	jmp	0x433f1d <mi_segment_init+0x86d>
@@@@
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x433655 <mi_segment_init+0x985>
-               	testq	%rsi, %rsi
-               	je	0x433653 <mi_segment_init+0x983>
-               	movl	%ebx, %eax
+               	movq	32(%rsp), %rbx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x433ff6 <mi_segment_init+0x946>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x433ff4 <mi_segment_init+0x944>
+               	movl	%edi, %eax
@@@@
-               	movl	%esi, %ecx
@@@@
-               	jmp	0x433655 <mi_segment_init+0x985>
-               	xorl	%edi, %edi
+               	movq	32(%rsp), %rbx
+               	jmp	0x433ff6 <mi_segment_init+0x946>
+               	xorl	%esi, %esi
@@@@
-               	orq	%rdi, %rcx
+               	orq	%rsi, %rcx
@@@@
-               	jne	0x4335a0 <mi_segment_init+0x8d0>
-               	andq	%rdi, %rax
-               	cmpq	%rdi, %rax
-               	je	0x43366c <mi_segment_init+0x99c>
-               	movq	%r9, 32(%rsp)
-               	movq	%r8, %r13
+               	jne	0x433f30 <mi_segment_init+0x880>
+               	andq	%rsi, %rax
+               	cmpq	%rsi, %rax
+               	movq	32(%rsp), %rbx
+               	je	0x43400d <mi_segment_init+0x95d>
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
-               	callq	0x42cff0 <mi_os_commitx>
+               	callq	0x42d820 <mi_os_commitx>
@@@@
-               	je	0x43360b <mi_segment_init+0x93b>
-               	movq	%rbp, %r10
+               	je	0x433fa8 <mi_segment_init+0x8f8>
@@@@
-               	movq	24(%rsp), %rsi
-               	movq	%r13, %r8
-               	movq	32(%rsp), %r9
-               	jmp	0x43366c <mi_segment_init+0x99c>
-               	movq	40(%rsp), %rdx
-               	cmpq	$268435455, %rbp        # imm = 0xFFFFFFF
-               	jbe	0x433623 <mi_segment_init+0x953>
+               	movq	32(%rsp), %rbx
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43400d <mi_segment_init+0x95d>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x433fc2 <mi_segment_init+0x912>
@@@@
-               	movq	%r13, %rbp
-               	jmp	0x433784 <mi_segment_init+0xab4>
-               	movq	24(%rsp), %rcx
+               	movq	24(%rsp), %rdi
+               	jmp	0x434142 <mi_segment_init+0xa92>
+               	movq	40(%rsp), %rcx
@@@@
-               	movq	%r13, %rbp
-               	je	0x43377d <mi_segment_init+0xaad>
+               	movq	24(%rsp), %rdi
+               	je	0x43413b <mi_segment_init+0xa8b>

@@ -33235,169 +33786,168 @@
@@@[(6, 8), (13, 33), (34, 41), (42, 81), (82, 90), (91, 93), (94, 101), (102, 104), (105, 111), (115, 122), (123, 136), (146, 148), (156, 162), (174, 178), (181, 186), (188, 193), (195, 199), (213, 215), (218, 226), (244, 246)]@@@
-               	movq	%rbx, %rax
+               	movq	%rdi, %rax
@@@@
-               	leaq	40(%r8), %rdx
-               	movq	40(%rsp), %rbp
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x433697 <mi_segment_init+0x9c7>
-               	shrq	$6, %rbp
-               	movq	(%rdx,%rbp,8), %rax
-               	testq	%rax, %rax
-               	je	0x433761 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	xorl	%edi, %edi
-               	jmp	0x4336f5 <mi_segment_init+0xa25>
-               	movl	%ebp, %eax
+               	movq	48(%rsp), %rdx
+               	movq	$-1, %rsi
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x43404c <mi_segment_init+0x99c>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43404a <mi_segment_init+0x99a>
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
-               	je	0x433761 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x4336d9 <mi_segment_init+0xa09>
-               	xorl	%edi, %edi
-               	jmp	0x4336f5 <mi_segment_init+0xa25>
-               	movq	$-1, %rdi
-               	testq	%rsi, %rsi
-               	je	0x4336f5 <mi_segment_init+0xa25>
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	shlq	%cl, %rsi
+               	movq	32(%rsp), %rbx
+               	jmp	0x43404c <mi_segment_init+0x99c>
+               	xorl	%esi, %esi
+               	shrq	$6, %rdx
+               	movq	40(%r8,%rdx,8), %rax
+               	testq	%rsi, %rax
+               	je	0x43411f <mi_segment_init+0xa6f>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x434070 <mi_segment_init+0x9c0>
+               	xorl	%esi, %esi
+               	jmp	0x4340a2 <mi_segment_init+0x9f2>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43409b <mi_segment_init+0x9eb>
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
+               	jmp	0x4340a2 <mi_segment_init+0x9f2>
+               	movq	$-1, %rsi
+               	shrq	$6, %rdx
@@@@
-               	andq	%rdi, (%rdx)
+               	andq	%rsi, 40(%r8,%rdx,8)
@@@@
-               	je	0x433736 <mi_segment_init+0xa66>
-               	movq	%r9, %r13
-               	movq	%r8, %rbp
+               	movq	%r9, 56(%rsp)
+               	movq	%rdi, 64(%rsp)
+               	je	0x4340fb <mi_segment_init+0xa4b>
+               	movq	%r8, 24(%rsp)
@@@@
-               	andq	$-4194304, %r10         # imm = 0xFFC00000
+               	andq	$-4194304, %rbx         # imm = 0xFFC00000
@@@@
-               	movq	%r14, %rdi
-               	movq	%r10, %rsi
-               	callq	0x433d60 <_mi_os_unreset>
+               	movq	%rbp, %rdi
+               	movq	%rbx, %rsi
+               	callq	0x434730 <_mi_os_unreset>
@@@@
-               	movq	%rbp, %r8
-               	movq	%r13, %r9
-               	jmp	0x433761 <mi_segment_init+0xa91>
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43411f <mi_segment_init+0xa6f>
@@@@
-               	movq	%rbx, 32(%rsp)
-               	movq	%r8, %r13
-               	movq	%r9, %rbp
-               	movq	%r10, %rbx
-               	callq	0x42a1a0 <mi_option_get>
-               	movq	%rbx, %r10
-               	movq	%rbp, %r9
-               	movq	%r13, %r8
+               	movq	%r8, %rbx
+               	callq	0x42a980 <mi_option_get>
+               	movq	64(%rsp), %rdi
+               	movq	56(%rsp), %r9
+               	movq	%rbx, %r8
@@@@
-               	addq	%rbx, %r8
+               	addq	%rdi, %r8
@@@@
-               	andq	%rsi, 16(%rbp,%rdx,8)
-               	leaq	67307(%rip), %rdi       # 0x443e80 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
-               	movq	96(%rsp), %rbp
+               	andq	%rsi, 16(%rdi,%rdx,8)
+               	leaq	68461(%rip), %rdi       # 0x444cc0 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
+               	movq	104(%rsp), %rbp
@@@@
-               	callq	0x433b80 <_mi_arena_alloc_aligned>
-               	movq	%rax, %r14
+               	callq	0x434550 <_mi_arena_alloc_aligned>
+               	movq	%rax, %rbp
@@@@
-               	testq	%r14, %r14
-               	movq	104(%rsp), %rbp
-               	je	0x43391b <mi_segment_init+0xc4b>
+               	testq	%rbp, %rbp
+               	je	0x4342d1 <mi_segment_init+0xc21>
@@@@
-               	movq	64(%rsp), %r13
-               	jne	0x433832 <mi_segment_init+0xb62>
-               	movq	%r8, 32(%rsp)
+               	jne	0x4341e8 <mi_segment_init+0xb38>
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
-               	leaq	181677(%rip), %rax      # 0x45fe00 <_mi_stats_main>
+               	movb	%cl, 8(%rbp)
+               	movb	%al, 9(%rbp)
+               	movq	112(%r12), %rcx
+               	leaq	185143(%rip), %rax      # 0x461540 <_mi_stats_main>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -33405,30 +33955,32 @@
@@@[(20, 24), (28, 30), (33, 39)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	callq	0x42d2e0 <_mi_mem_free>
-               	xorl	%r14d, %r14d
-               	movq	%r14, %rax
+               	callq	0x42db30 <_mi_mem_free>
+               	xorl	%ebp, %ebp
+               	movq	%rbp, %rax

@@ -33441,28 +33993,36 @@
@@@[(6, 10), (11, 23), (24, 41), (45, 46)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	addq	56(%rbp), %rax
-               	movq	%rax, 56(%rbp)
-               	cmpq	64(%rbp), %rax
-               	jbe	0x433964 <mi_segment_init+0xc94>
-               	movq	%rax, 64(%rbp)
-               	movq	72(%rbp), %rax
+               	addq	56(%r12), %rax
+               	movq	%rax, 56(%r12)
+               	cmpq	64(%r12), %rax
+               	jbe	0x434324 <mi_segment_init+0xc74>
+               	movq	%rax, 64(%r12)
+               	movq	72(%r12), %rax
@@@@
-               	movq	%rax, 72(%rbp)
-               	cmpq	80(%rbp), %rax
-               	jbe	0x432f40 <mi_segment_init+0x270>
-               	movq	%rax, 80(%rbp)
-               	jmp	0x432f40 <mi_segment_init+0x270>
+               	movq	%rax, 72(%r12)
+               	cmpq	80(%r12), %rax
+               	jbe	0x433927 <mi_segment_init+0x277>
+               	movq	%rax, 80(%r12)
+               	jmp	0x433927 <mi_segment_init+0x277>
+               	callq	0x42bd30 <_mi_os_numa_node_count_get>
+               	movq	32(%rsp), %rcx
+               	jmp	0x433a69 <mi_segment_init+0x3b9>
+               	callq	0x434380 <_mi_os_numa_node_get>
+               	movq	32(%rsp), %rcx
+               	movl	%eax, %r10d
+               	jmp	0x433a98 <mi_segment_init+0x3e8>
@@@@
-               	movq	24(%rsp), %rsi

@@ -33470,15 +34030,15 @@
@@@[(3, 15), (17, 19)]@@@
-               	movq	215397(%rip), %r14      # 0x468318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	je	0x433a2c <_mi_os_numa_node_get+0x8c>
-               	xorl	%ebx, %ebx
-               	cmpq	$2, %r14
-               	jb	0x433a1d <_mi_os_numa_node_get+0x7d>
+               	movq	218821(%rip), %rbx      # 0x469a58 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	je	0x434407 <_mi_os_numa_node_get+0x87>
+               	xorl	%eax, %eax
+               	cmpq	$2, %rbx
+               	jb	0x4343fa <_mi_os_numa_node_get+0x7a>
@@@@
-               	xorl	%ebx, %ebx
+               	xorl	%r14d, %r14d

@@ -33486,108 +34046,105 @@
@@@[(3, 20), (21, 28), (29, 34), (39, 45), (46, 50), (51, 65), (66, 70), (72, 74), (76, 78), (79, 93), (94, 100)]@@@
-               	jne	0x4339f6 <_mi_os_numa_node_get+0x56>
-               	movq	16(%rsp), %rbx
-               	cmpq	%r14, %rbx
-               	jb	0x433a1d <_mi_os_numa_node_get+0x7d>
-               	movq	%rbx, %rax
-               	orq	%r14, %rax
-               	shrq	$32, %rax
-               	je	0x433a14 <_mi_os_numa_node_get+0x74>
-               	movq	%rbx, %rax
+               	movq	16(%rsp), %rax
+               	cmovneq	%r14, %rax
+               	cmpq	%rbx, %rax
+               	jb	0x4343fa <_mi_os_numa_node_get+0x7a>
+               	movq	%rax, %rcx
+               	orq	%rbx, %rcx
+               	shrq	$32, %rcx
+               	je	0x4343f4 <_mi_os_numa_node_get+0x74>
@@@@
-               	divq	%r14
-               	movq	%rdx, %rbx
-               	jmp	0x433a1d <_mi_os_numa_node_get+0x7d>
-               	movl	%ebx, %eax
+               	divq	%rbx
+               	movq	%rdx, %rax
+               	jmp	0x4343fa <_mi_os_numa_node_get+0x7a>
@@@@
-               	divl	%r14d
-               	movl	%edx, %ebx
-               	movl	%ebx, %eax
+               	divl	%ebx
+               	movl	%edx, %eax
@@@@
-               	movq	215269(%rip), %r14      # 0x468318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	jne	0x4339b8 <_mi_os_numa_node_get+0x18>
+               	movq	218698(%rip), %rbx      # 0x469a58 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	jne	0x434398 <_mi_os_numa_node_get+0x18>
@@@@
-               	callq	0x42a1a0 <mi_option_get>
-               	movq	%rax, %r14
+               	callq	0x42a980 <mi_option_get>
+               	movq	%rax, %rbx
@@@@
-               	jg	0x433a9c <_mi_os_numa_node_get+0xfc>
-               	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
-               	leaq	65042(%rip), %r15       # 0x443869 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
-               	leaq	16(%rsp), %rbx
-               	cmpl	$255, %r14d
-               	je	0x433a92 <_mi_os_numa_node_get+0xf2>
-               	leal	2(%r14), %ecx
+               	jg	0x434471 <_mi_os_numa_node_get+0xf1>
+               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
+               	leaq	66168(%rip), %r14       # 0x4446a9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	16(%rsp), %r15
+               	cmpl	$255, %ebx
+               	je	0x434469 <_mi_os_numa_node_get+0xe9>
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
-               	je	0x433a5c <_mi_os_numa_node_get+0xbc>
-               	jmp	0x433a98 <_mi_os_numa_node_get+0xf8>
-               	movl	$256, %r14d             # imm = 0x100
-               	addl	$1, %r14d
-               	movq	%r14, 215157(%rip)      # 0x468318 <_mi_numa_node_count>
-               	leaq	64991(%rip), %rdi       # 0x443889 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
-               	movq	%r14, %rsi
+               	je	0x434436 <_mi_os_numa_node_get+0xb6>
+               	jmp	0x43446e <_mi_os_numa_node_get+0xee>
+               	movl	$256, %ebx              # imm = 0x100
+               	addl	$1, %ebx
+               	movq	%rbx, 218592(%rip)      # 0x469a58 <_mi_numa_node_count>
+               	leaq	66122(%rip), %rdi       # 0x4446c9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, %rsi
@@@@
-               	callq	0x429e80 <_mi_verbose_message>
-               	jmp	0x4339b8 <_mi_os_numa_node_get+0x18>
-               	nopl	(%rax)
+               	callq	0x42a660 <_mi_verbose_message>
+               	jmp	0x434398 <_mi_os_numa_node_get+0x18>
+               	nop

@@ -33619,9 +34176,9 @@
@@@[(3, 9)]@@@
-               	movq	%r8, %r13
-               	movq	%rcx, %r12
-               	movq	%rdx, %r15
+               	movq	%r8, %r14
+               	movq	%rcx, %r15
+               	movq	%rdx, %r12

@@ -33629,106 +34186,107 @@
@@@[(8, 12), (14, 18), (22, 28), (29, 35), (37, 39), (41, 45), (47, 51), (52, 56), (62, 70), (79, 83), (84, 85), (88, 92), (93, 97), (112, 122), (136, 140), (142, 143), (144, 147), (148, 152), (153, 159)]@@@
-               	je	0x433ce6 <_mi_arena_alloc_aligned+0x166>
-               	movq	%r12, 24(%rsp)
+               	je	0x4346bb <_mi_arena_alloc_aligned+0x16b>
+               	movq	%r15, 24(%rsp)
@@@@
-               	movq	214832(%rip), %rax      # 0x468318 <_mi_numa_node_count>
-               	xorl	%r14d, %r14d
+               	movq	218272(%rip), %rax      # 0x469a58 <_mi_numa_node_count>
+               	xorl	%r13d, %r13d
@@@@
-               	leaq	181440(%rip), %rbp      # 0x4600c0 <mi_arenas>
-               	xorl	%r12d, %r12d
-               	jmp	0x433c4e <_mi_arena_alloc_aligned+0xce>
+               	leaq	184880(%rip), %rbp      # 0x461800 <mi_arenas>
+               	xorl	%r15d, %r15d
+               	jmp	0x43461f <_mi_arena_alloc_aligned+0xcf>
@@@@
-               	cmpb	$0, (%r15)
-               	je	0x433c65 <_mi_arena_alloc_aligned+0xe5>
-               	movq	%r12, %rsi
+               	cmpb	$0, (%r12)
+               	je	0x434636 <_mi_arena_alloc_aligned+0xe6>
+               	movq	%r15, %rsi
@@@@
-               	movq	%r15, %r8
+               	movq	%r12, %r8
@@@@
-               	pushq	%r13
-               	callq	0x433e80 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x434850 <mi_arena_alloc_from>
@@@@
-               	jne	0x433d35 <_mi_arena_alloc_aligned+0x1b5>
-               	addq	$1, %r12
+               	jne	0x43470f <_mi_arena_alloc_aligned+0x1bf>
+               	addq	$1, %r15
@@@@
-               	cmpq	$64, %r12
-               	je	0x433c6d <_mi_arena_alloc_aligned+0xed>
+               	cmpq	$64, %r15
+               	je	0x43463e <_mi_arena_alloc_aligned+0xee>
@@@@
-               	js	0x433c10 <_mi_arena_alloc_aligned+0x90>
-               	cmpl	%r14d, %eax
-               	jne	0x433c40 <_mi_arena_alloc_aligned+0xc0>
-               	jmp	0x433c10 <_mi_arena_alloc_aligned+0x90>
+               	js	0x4345e0 <_mi_arena_alloc_aligned+0x90>
+               	cmpl	%r13d, %eax
+               	jne	0x434611 <_mi_arena_alloc_aligned+0xc1>
+               	jmp	0x4345e0 <_mi_arena_alloc_aligned+0x90>
@@@@
-               	movq	24(%rsp), %r12
-               	jmp	0x433cc4 <_mi_arena_alloc_aligned+0x144>
+               	movq	24(%rsp), %r15
+               	jmp	0x434698 <_mi_arena_alloc_aligned+0x148>
@@@@
-               	nop
@@@@
-               	movq	%r15, %r8
-               	movq	%r12, %r9
+               	movq	%r12, %r8
+               	movq	%r15, %r9
@@@@
-               	pushq	%r13
-               	callq	0x433e80 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x434850 <mi_arena_alloc_from>
@@@@
-               	js	0x433cb6 <_mi_arena_alloc_aligned+0x136>
-               	cmpl	%r14d, %eax
-               	je	0x433cb6 <_mi_arena_alloc_aligned+0x136>
-               	cmpb	$0, (%r15)
-               	jne	0x433c90 <_mi_arena_alloc_aligned+0x110>
+               	js	0x43468a <_mi_arena_alloc_aligned+0x13a>
+               	cmpl	%r13d, %eax
+               	je	0x43468a <_mi_arena_alloc_aligned+0x13a>
+               	cmpb	$0, (%r12)
+               	jne	0x434660 <_mi_arena_alloc_aligned+0x110>
@@@@
-               	jmp	0x433d35 <_mi_arena_alloc_aligned+0x1b5>
-               	movb	$1, (%r13)
+               	jmp	0x43470f <_mi_arena_alloc_aligned+0x1bf>
+               	movb	$1, (%r14)
@@@@
+               	xorl	%esi, %esi
@@@@
-               	movzbl	(%rax), %esi
+               	cmpb	$0, (%rax)
+               	setne	%sil
@@@@
-               	movq	%r15, %rdx
-               	callq	0x42a5c0 <_mi_os_alloc_aligned>
+               	movq	%r12, %rdx
+               	callq	0x42ad90 <_mi_os_alloc_aligned>
@@@@
-               	je	0x433d00 <_mi_arena_alloc_aligned+0x180>
-               	movb	(%r15), %cl
-               	movb	%cl, (%r12)
+               	je	0x4346d5 <_mi_arena_alloc_aligned+0x185>
+               	movb	(%r12), %cl
+               	movb	%cl, (%r15)

@@ -33737,10 +34295,10 @@
@@@[(3, 11)]@@@
-               	callq	0x4339a0 <_mi_os_numa_node_get>
-               	movl	%eax, %r14d
-               	jmp	0x433bf5 <_mi_arena_alloc_aligned+0x75>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x434380 <_mi_os_numa_node_get>
+               	movl	%eax, %r13d
+               	jmp	0x4345c5 <_mi_arena_alloc_aligned+0x75>
+               	nopl	(%rax,%rax)

@@ -34624,60 +35182,62 @@
@@@[(19, 22), (24, 28), (42, 46), (48, 54), (56, 62), (66, 69), (71, 73), (79, 83)]@@@
-               	movzbl	(%r8), %r11d
+               	movb	(%r8), %cl
+               	movzbl	%cl, %r11d
@@@@
-               	testq	%r11, %r11
-               	jne	0x434a79 <_mi_usable_size+0x109>
+               	testb	%r11b, %r11b
+               	jne	0x43544e <_mi_usable_size+0x10e>
@@@@
-               	jmp	0x434a68 <_mi_usable_size+0xf8>
-               	movb	96(%rax), %cl
+               	jmp	0x43543d <_mi_usable_size+0xfd>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r8), %ecx
-               	testq	%rcx, %rcx
-               	je	0x434a30 <_mi_usable_size+0xc0>
+               	movb	(%r8), %cl
+               	testb	%cl, %cl
+               	je	0x435402 <_mi_usable_size+0xc2>
@@@@
-               	movq	80(%rax), %r9
-               	movq	%rdx, %r8
-               	subq	%r9, %r8
+               	movq	80(%rax), %r8
+               	movq	%rdx, %r9
+               	subq	%r8, %r9
@@@@
-               	je	0x434a5d <_mi_usable_size+0xed>
+               	je	0x435432 <_mi_usable_size+0xf2>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r9, %rax
+               	addq	%r8, %rax
@@@@
-               	jmp	0x434ab2 <_mi_usable_size+0x142>
-               	movq	%r8, %rax
+               	jmp	0x435487 <_mi_usable_size+0x147>
+               	movq	%r9, %rax

@@ -34714,37 +35274,37 @@
@@@[(3, 7), (14, 18)]@@@
-               	subq	%rcx, %r8
-               	movq	%r8, %rax
+               	subq	%rcx, %r9
+               	movq	%r9, %rax
@@@@
-               	jmp	0x434aeb <_mi_usable_size+0x17b>
-               	movb	96(%r8), %cl
+               	jmp	0x4354c0 <_mi_usable_size+0x180>
+               	movq	96(%r8), %rcx

@@ -34759,26 +35319,26 @@
@@@[(20, 24)]@@@
-               	jmp	0x434b7c <_mi_usable_size+0x20c>
-               	movb	96(%r8), %cl
+               	jmp	0x435551 <_mi_usable_size+0x211>
+               	movq	96(%r8), %rcx

@@ -34813,7 +35373,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -34821,34 +35381,36 @@
@@@[(10, 16), (25, 27)]@@@
-               	je	0x434c68 <_mi_heap_malloc_zero+0x88>
-               	addl	$1, 16(%rax)
+               	je	0x43564e <_mi_heap_malloc_zero+0x8e>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)
@@@@
-               	movb	96(%rax), %cl
+               	movq	96(%rax), %rcx

@@ -34859,12 +35421,11 @@
@@@[(7, 12)]@@@
-               	jne	0x434c16 <_mi_heap_malloc_zero+0x36>
-               	jmp	0x434c5d <_mi_heap_malloc_zero+0x7d>
-               	nopw	(%rax,%rax)
+               	jne	0x4355fb <_mi_heap_malloc_zero+0x3b>
+               	jmp	0x435643 <_mi_heap_malloc_zero+0x83>

@@ -35064,9 +35625,9 @@
@@@[(3, 6), (7, 8)]@@@
-               	callq	0x435840 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
-               	movq	8(%rsp), %rbx
+               	callq	0x436230 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
@@@@
+               	movq	8(%rsp), %rbx

@@ -35605,21 +36166,24 @@
@@@[(3, 5), (6, 11), (12, 16), (26, 30)]@@@
+               	movq	%rdi, %rax
+               	movq	8(%rdi), %rdi
@@@@
-               	je	0x435830 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x43621a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
+               	movl	16(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x435830 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x43621a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
@@@@
-               	jmp	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	(%rax,%rax)

@@ -35628,78 +36192,222 @@
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
-               	je	0x435879 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x39>
-               	xchgl	%r14d, 328(%r12)
-               	jmp	0x43587c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c>
-               	xorl	%r12d, %r12d
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x436288 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x58>
+               	movl	$1, %ecx
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 48(%rsp)
+               	movl	%ecx, 56(%rsp)
+               	movb	$1, 60(%rsp)
@@@@
-               	leaq	317(%rip), %rdi         # 0x4359d0 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
-               	leaq	16(%rsp), %rsi
+               	movq	$0, 32(%rsp)
+               	leaq	920(%rip), %rdi         # 0x436640 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
+               	leaq	32(%rsp), %rsi
@@@@
-               	movq	16(%rsp), %rbx
-               	cmpq	$4, %rbx
-               	jbe	0x43593c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0xfc>
-               	addq	$-4, %rbx
-               	movq	%rbx, %rax
-               	shrq	$61, %rax
-               	jne	0x43599b <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x15b>
+               	movq	32(%rsp), %r12
+               	cmpq	$4, %r12
+               	jbe	0x43635a <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x12a>
+               	addq	$-4, %r12
+               	movq	8(%rsp), %r15
+               	movq	(%rsp), %rbx
+               	movq	%r15, %rdx
+               	subq	%rbx, %rdx
+               	movq	%rdx, %r14
+               	sarq	$3, %r14
+               	movq	%r12, %rbp
+               	subq	%r14, %rbp
+               	jbe	0x436381 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x151>
+               	je	0x43656c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	16(%rsp), %rax
+               	subq	%r15, %rax
+               	sarq	$3, %rax
+               	cmpq	%rbp, %rax
+               	jae	0x4363a1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x171>
+               	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
+               	movq	%r14, %rcx
+               	xorq	%rax, %rcx
+               	cmpq	%rbp, %rcx
+               	jb	0x436606 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3d6>
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
+               	je	0x4363c1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x191>
@@@@
-               	movq	%rbx, %rdi
@@@@
-               	leaq	(,%rbx,8), %rbp
-               	movq	%rax, %rdi
+               	jmp	0x4363c4 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x194>
+               	xorps	%xmm0, %xmm0
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	movq	(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4365c2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x4365c2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	jae	0x43656c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	(%rbx,%r12,8), %rax
+               	cmpq	%r15, %rax
+               	je	0x43656c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	%rax, 8(%rsp)
+               	movq	%rax, %r15
+               	jmp	0x43656c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	8(%rsp), %rbx
+               	leaq	(,%rbp,8), %rdx
+               	movq	%r15, %rdi
+               	xorl	%esi, %esi
+               	callq	0x413710 <memset@plt>
+               	leaq	(%r15,%rbp,8), %rax
+               	jmp	0x436560 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x330>
+               	xorl	%r13d, %r13d
+               	leaq	(,%r14,8), %rdi
+               	addq	%r13, %rdi
+               	shlq	$3, %rbp
@@@@
+               	cmpq	%r15, %rbx
+               	je	0x436525 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
+               	movq	64(%rsp), %rdi
+               	addq	$-8, %rdi
+               	movq	%r13, %rcx
+               	cmpq	$24, %rdi
+               	jb	0x436502 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	shrq	$3, %rdi
+               	addq	$1, %rdi
+               	leaq	(%rbx,%rdi,8), %rax
+               	cmpq	%rax, %r13
+               	jae	0x436424 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x1f4>
+               	leaq	(,%rdi,8), %rax
+               	addq	%r13, %rax
+               	movq	%r13, %rcx
+               	cmpq	%rbx, %rax
+               	ja	0x436502 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	movq	%rdi, %rax
+               	andq	$-4, %rax
+               	leaq	-4(%rax), %rsi
+               	movq	%rsi, %rdx
+               	shrq	$2, %rdx
+               	addq	$1, %rdx
+               	movl	%edx, %ecx
+               	andl	$3, %ecx
+               	cmpq	$12, %rsi
+               	jae	0x436449 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x219>
+               	xorl	%esi, %esi
+               	jmp	0x4364b3 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x283>
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
+               	jne	0x436452 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x222>
+               	testq	%rcx, %rcx
+               	je	0x4364ee <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2be>
+               	leaq	16(,%rsi,8), %rdx
+               	negq	%rcx
+               	nopw	(%rax,%rax)
+               	movups	-16(%rbx,%rdx), %xmm0
+               	movups	(%rbx,%rdx), %xmm1
+               	movups	%xmm0, -16(%r13,%rdx)
+               	movups	%xmm1, (%r13,%rdx)
+               	addq	$32, %rdx
+               	incq	%rcx
+               	jne	0x4364d0 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2a0>
+               	cmpq	%rax, %rdi
+               	je	0x436525 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
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
+               	jne	0x436510 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2e0>
+               	movq	(%rsp), %rbx
+               	testq	%rbx, %rbx
+               	je	0x436532 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x302>
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
-               	leaq	195(%rip), %rdi         # 0x4359e0 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
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
+               	leaq	186(%rip), %rdi         # 0x436650 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
+               	leaq	88(%rsp), %rsi
@@@@
-               	movups	%xmm0, (%r15)
+               	movups	%xmm0, (%r13)
@@@@
-               	movq	%rbx, 16(%r15)
-               	jmp	0x435959 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	xorps	%xmm0, %xmm0
-               	movups	%xmm0, (%r15)
-               	movq	$0, 16(%r15)
-               	movq	(%rsp), %rdi
+               	movq	16(%rsp), %rax
+               	movq	%rax, 16(%r13)
+               	movq	$0, 16(%rsp)
+               	movq	48(%rsp), %rdi
@@@@
-               	je	0x435959 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	callq	0x4136f0 <free@plt>
-               	testq	%r12, %r12
-               	je	0x43598c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	movl	%r14d, %eax
-               	xchgl	%eax, 328(%r12)
-               	testl	%r14d, %r14d
-               	jne	0x43598c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
+               	je	0x4365f7 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	movl	56(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, 328(%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x4365f7 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
@@@@
-               	je	0x43598c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	addq	$328, %r12              # imm = 0x148
-               	movq	%r12, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$56, %rsp
+               	je	0x4365f7 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$120, %rsp

@@ -35707,46 +36415,45 @@
@@@[(3, 10), (11, 21), (22, 26), (28, 32), (34, 36), (49, 55), (57, 59), (60, 62)]@@@
-               	leaq	58710(%rip), %rdi       # 0x443ef8 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
-               	callq	0x435790 <std::__throw_length_error(char const*)>
-               	movq	%rax, %rbx
-               	jmp	0x4359b2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x172>
+               	leaq	59179(%rip), %rdi       # 0x444d38 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
+               	callq	0x436170 <std::__throw_length_error(char const*)>
+               	jmp	0x436614 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3e4>
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r13, %rdi
-               	callq	0x435a20 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
-               	movq	%r12, %rdi
-               	movl	%r14d, %esi
-               	callq	0x435810 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x436690 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
+               	leaq	40(%rsp), %rdi
+               	callq	0x4361f0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x422a10 <__clang_call_terminate>
-               	nopl	(%rax)
+               	callq	0x423020 <__clang_call_terminate>
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
-               	jae	0x4359f5 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
+               	movq	24(%rbx), %rax
+               	cmpq	%rax, (%rbx)
+               	jae	0x436665 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
@@@@
+               	leaq	1(%rcx), %rdx
+               	movq	%rdx, (%rbx)
@@@@
-               	leaq	1(%rcx), %rsi
-               	movq	%rsi, (%rbx)

@@ -35754,11 +36461,12 @@
@@@[(3, 4), (10, 12)]@@@
+               	movq	(%rdi), %rdi
@@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -35871,41 +36579,43 @@
@@@[(13, 23)]@@@
-               	jae	0x435c20 <CreateStringFromCString+0x1f0>
-               	addq	$1, (%rsp)
-               	jmp	0x435c50 <CreateStringFromCString+0x220>
-               	nopw	(%rax,%rax)
+               	jae	0x436890 <CreateStringFromCString+0x1f0>
+               	movq	(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rsp)
+               	jmp	0x4368c0 <CreateStringFromCString+0x220>
+               	nopl	(%rax)

@@ -35921,12 +36631,13 @@
@@@[(3, 6)]@@@
-               	movzbl	(%r8), %ecx
+               	movb	(%r8), %al
+               	movzbl	%al, %ecx

@@ -35935,45 +36646,47 @@
@@@[(12, 16), (20, 23), (25, 29), (47, 55), (56, 61)]@@@
-               	je	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	jne	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
@@@@
-               	andl	$63, %esi
-               	orl	%esi, %ecx
+               	andl	$63, %eax
+               	orl	%eax, %ecx
@@@@
-               	je	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %r10d
-               	movl	%r10d, %r9d
-               	andb	$-64, %r9b
+               	je	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %r9b
+               	movl	%r9d, %r10d
+               	andb	$-64, %r10b
@@@@
-               	cmpb	$-128, %r9b
-               	jne	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	cmpb	$-128, %r10b
+               	jne	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%r9b, %r10d

@@ -35983,41 +36696,43 @@
@@@[(13, 17), (21, 28), (43, 49), (51, 54)]@@@
-               	je	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %esi
-               	orl	%esi, %r10d
+               	jne	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
+               	andl	$63, %eax
+               	orl	%eax, %r10d
@@@@
-               	je	0x435ea8 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r10d
-               	movl	%r10d, %eax
+               	je	0x436b2b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %r9b
+               	movl	%r9d, %eax
@@@@
-               	jne	0x435eb1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x211>
+               	jne	0x436b34 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x224>
+               	movzbl	%r9b, %r10d

@@ -36025,45 +36740,47 @@
@@@[(14, 20), (28, 36), (37, 49), (50, 54), (60, 62)]@@@
-               	je	0x435ea8 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r11d
-               	movl	%r11d, %eax
+               	je	0x436b2b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %cl
+               	movl	%ecx, %eax
@@@@
-               	je	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %ecx
-               	movl	%ecx, %esi
-               	andb	$-64, %sil
+               	je	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
+               	movl	%esi, %r11d
+               	andb	$-64, %r11b
@@@@
-               	cmpb	$-128, %sil
-               	jne	0x435e4f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %r11d
-               	shll	$6, %r11d
-               	orl	%r10d, %r11d
+               	cmpb	$-128, %r11b
+               	jne	0x436ad1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%cl, %eax
+               	andl	$63, %eax
+               	shll	$6, %eax
+               	orl	%r10d, %eax
+               	movzbl	%sil, %ecx
@@@@
-               	orl	%r11d, %ecx
-               	jmp	0x435cb7 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x17>
+               	orl	%eax, %ecx
+               	jmp	0x436929 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x19>
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -36076,61 +36793,61 @@
@@@[(3, 6), (8, 9), (21, 22), (24, 25), (44, 45), (47, 48), (58, 59), (61, 62)]@@@
-               	ja	0x435ef7 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
-               	movq	(%rbx), %rax
+               	ja	0x436b77 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
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

@@ -36139,25 +36856,25 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36173,19 +36890,19 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36194,41 +36911,41 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -36241,21 +36958,21 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rdi), %r14
@@@@
+               	movq	(%rdi), %r14

@@ -36321,9 +37038,9 @@
@@@[(3, 9)]@@@
-               	movl	8(%rsi), %ebp
-               	addl	8(%rdi), %ebp
-               	js	0x4362f0 <Kotlin_String_plusImpl+0xc0>
+               	movl	8(%rdi), %ebp
+               	addl	8(%rsi), %ebp
+               	js	0x436f70 <Kotlin_String_plusImpl+0xc0>

@@ -36524,46 +37241,45 @@
@@@[(39, 48), (60, 62)]@@@
-               	jg	0x43665b <Kotlin_String_hashCode+0x11b>
-               	callq	0x436730 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
-               	jmp	0x436688 <Kotlin_String_hashCode+0x148>
-               	movq	%r14, %rax
-               	addq	$-1, %rax
+               	jg	0x4372db <Kotlin_String_hashCode+0x11b>
+               	callq	0x4373b0 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
+               	jmp	0x437308 <Kotlin_String_hashCode+0x148>
+               	leaq	-1(%r14), %rax
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -37221,38 +37937,38 @@
@@@[(27, 41)]@@@
-               	je	0x43748f <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x4af>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x437140 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x160>
-               	movq	%rsi, %rax
+               	je	0x438115 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x4b5>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x437dc0 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x160>

@@ -37297,14 +38013,16 @@
@@@[(3, 7), (10, 13), (15, 16)]@@@
-               	addq	$40, 56(%rbx)
+               	movq	56(%rbx), %rax
+               	addq	$40, %rax
+               	movq	%rax, 56(%rbx)
@@@@
-               	jmp	0x43740b <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x42b>
-               	movq	8(%rbx), %rcx
+               	jmp	0x438091 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x431>
@@@@
+               	movq	8(%rbx), %rcx

@@ -37393,10 +38111,10 @@
@@@[(3, 5), (7, 9)]@@@
-               	movq	48(%rsp), %rcx
-               	movq	%rcx, 32(%rax)
@@@@
+               	movq	48(%rsp), %rcx
+               	movq	%rcx, 32(%rax)

@@ -37469,7 +38187,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -37651,53 +38369,53 @@
@@@[(7, 13), (47, 51), (54, 62)]@@@
-               	jne	0x43835e <Kotlin_initRuntimeIfNeeded+0xb6e>
-               	movq	%rax, %r14
-               	movb	265399(%rip), %al       # 0x4784d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	jne	0x438fde <Kotlin_initRuntimeIfNeeded+0xb6e>
+               	movq	%rax, %r12
+               	movb	268151(%rip), %al       # 0x479c18 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
@@@@
-               	je	0x438307 <Kotlin_initRuntimeIfNeeded+0xb17>
-               	movq	%rax, %r12
+               	je	0x438f86 <Kotlin_initRuntimeIfNeeded+0xb16>
+               	movq	%rax, %r14
@@@@
-               	movq	%r14, %rax
-               	cmpq	$0, -48(%r14)
-               	jne	0x4384a7 <Kotlin_initRuntimeIfNeeded+0xcb7>
-               	movq	%r12, -48(%r14)
+               	movq	%r12, %rax
+               	cmpq	$0, -48(%r12)
+               	jne	0x439127 <Kotlin_initRuntimeIfNeeded+0xcb7>
+               	movq	%r14, -48(%r12)

@@ -37753,108 +38471,108 @@
@@@[(82, 88), (101, 111), (113, 114), (115, 122), (123, 125)]@@@
-               	movq	%r14, %rax
-               	movq	%r15, -64(%r14)
-               	movq	%r15, (%r12)
+               	movq	%r12, %rax
+               	movq	%r15, -64(%r12)
+               	movq	%r15, (%r14)
@@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%rbx, 40(%rsp)
-               	movq	(%r12), %rbx
-               	movq	%r14, %rax
-               	movq	-40(%r14), %r13
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%rbx, 48(%rsp)
+               	movq	(%r14), %rbx
+               	movq	%r12, %rax
+               	movq	-40(%r12), %r13
@@@@
-               	movq	%r14, 48(%rsp)
@@@@
-               	jne	0x43808d <Kotlin_initRuntimeIfNeeded+0x89d>
-               	movq	%rbx, 72(%rsp)
-               	callq	0x4374f0 <(anonymous namespace)::theState()>
+               	movq	%r14, 40(%rsp)
+               	jne	0x438d16 <Kotlin_initRuntimeIfNeeded+0x8a6>
+               	movq	%rbx, 88(%rsp)
+               	callq	0x438170 <(anonymous namespace)::theState()>
@@@@
-               	movq	-64(%r14), %rbx
+               	movq	-64(%r12), %rbx

@@ -37868,16 +38586,20 @@
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

@@ -37888,7 +38610,7 @@
@@@[(3, 5)]@@@
-               	movq	-64(%r14), %rbp
+               	movq	-64(%r12), %rbp

@@ -37899,290 +38621,293 @@
@@@[(20, 40), (43, 55), (81, 85), (88, 91), (93, 107), (111, 137), (145, 150), (152, 155), (156, 161), (168, 178), (179, 180), (181, 184), (187, 189), (193, 211), (213, 215), (219, 242), (244, 247), (249, 251), (252, 275), (276, 291), (298, 304), (306, 310), (316, 336), (337, 348), (349, 352), (353, 357), (358, 376), (378, 379), (387, 390), (399, 411), (414, 418), (419, 424), (429, 433), (435, 436), (437, 438)]@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movl	(%r13), %ebp
-               	movslq	%ebp, %r9
-               	movq	16(%rsp), %r8
-               	movq	152(%r8), %rsi
-               	movq	%r9, %rax
-               	orq	%rsi, %rax
-               	shrq	$32, %rax
-               	je	0x437dc5 <Kotlin_initRuntimeIfNeeded+0x5d5>
-               	movq	%r9, %rax
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	(%r13), %r8d
+               	movslq	%r8d, %rax
+               	movq	16(%rsp), %r9
+               	movq	152(%r9), %rsi
+               	movq	%rax, %rcx
+               	orq	%rsi, %rcx
+               	shrq	$32, %rcx
+               	movq	%rax, 80(%rsp)
+               	je	0x438a27 <Kotlin_initRuntimeIfNeeded+0x5b7>
@@@@
-               	movq	144(%r8), %rax
-               	movq	(%rax,%rbx,8), %rax
-               	testq	%rax, %rax
-               	jne	0x437ddd <Kotlin_initRuntimeIfNeeded+0x5ed>
-               	jmp	0x437e36 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movq	%r15, 159664(%rip)      # 0x45ed08 <kotlin::mm::GlobalData::instance_+0x18>
-               	cmpq	$0, 152152(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	jne	0x437b30 <Kotlin_initRuntimeIfNeeded+0x340>
-               	jmp	0x437b3c <Kotlin_initRuntimeIfNeeded+0x34c>
-               	movq	-64(%r14), %rbx
+               	jmp	0x438a30 <Kotlin_initRuntimeIfNeeded+0x5c0>
+               	movq	-64(%r12), %rbx
@@@@
-               	jmp	0x43807a <Kotlin_initRuntimeIfNeeded+0x88a>
-               	movl	%ebp, %eax
+               	jmp	0x438d03 <Kotlin_initRuntimeIfNeeded+0x893>
+               	movl	%r8d, %eax
@@@@
-               	movq	144(%r8), %rax
+               	movq	40(%rsp), %r14
+               	movq	144(%r9), %rax
@@@@
-               	je	0x437e36 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movq	(%rax), %r12
-               	cmpl	8(%r12), %ebp
-               	jne	0x437e01 <Kotlin_initRuntimeIfNeeded+0x611>
-               	testq	%r12, %r12
-               	jne	0x438024 <Kotlin_initRuntimeIfNeeded+0x834>
-               	jmp	0x437e36 <Kotlin_initRuntimeIfNeeded+0x646>
+               	je	0x438a9c <Kotlin_initRuntimeIfNeeded+0x62c>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x438a69 <Kotlin_initRuntimeIfNeeded+0x5f9>
+               	testq	%rbp, %rbp
+               	jne	0x438cb9 <Kotlin_initRuntimeIfNeeded+0x849>
+               	jmp	0x438a9c <Kotlin_initRuntimeIfNeeded+0x62c>
@@@@
-               	jne	0x437e36 <Kotlin_initRuntimeIfNeeded+0x646>
-               	cmpl	%ecx, %ebp
-               	je	0x437e2d <Kotlin_initRuntimeIfNeeded+0x63d>
-               	movq	%r12, %rdi
-               	movq	(%r12), %r12
-               	testq	%r12, %r12
-               	je	0x437e36 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movslq	8(%r12), %rcx
-               	movq	%rcx, %rax
-               	orq	%rsi, %rax
-               	shrq	$32, %rax
-               	je	0x437df2 <Kotlin_initRuntimeIfNeeded+0x602>
-               	movq	%rcx, %rax
+               	jne	0x438a9c <Kotlin_initRuntimeIfNeeded+0x62c>
+               	cmpl	%ecx, %r8d
+               	je	0x438a93 <Kotlin_initRuntimeIfNeeded+0x623>
+               	movq	%rbp, %rdi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x438a9c <Kotlin_initRuntimeIfNeeded+0x62c>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rsi, %rdx
+               	shrq	$32, %rdx
+               	je	0x438a59 <Kotlin_initRuntimeIfNeeded+0x5e9>
@@@@
-               	jne	0x438024 <Kotlin_initRuntimeIfNeeded+0x834>
-               	movq	%rbx, 32(%rsp)
-               	movq	%r9, 64(%rsp)
+               	jne	0x438cb9 <Kotlin_initRuntimeIfNeeded+0x849>
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
-               	jne	0x437e91 <Kotlin_initRuntimeIfNeeded+0x6a1>
-               	movq	16(%rsp), %r8
-               	movq	144(%r8), %rbp
-               	movq	32(%rsp), %rdi
-               	jmp	0x437fa4 <Kotlin_initRuntimeIfNeeded+0x7b4>
+               	jne	0x438afb <Kotlin_initRuntimeIfNeeded+0x68b>
+               	movq	16(%rsp), %r9
+               	movq	144(%r9), %r12
+               	movq	72(%rsp), %rbx
+               	jmp	0x438c29 <Kotlin_initRuntimeIfNeeded+0x7b9>
@@@@
-               	movl	%ebp, 32(%rsp)
@@@@
-               	je	0x438447 <Kotlin_initRuntimeIfNeeded+0xc57>
+               	movq	%rbp, 64(%rsp)
+               	je	0x4390c7 <Kotlin_initRuntimeIfNeeded+0xc57>
@@@@
-               	movq	%rax, %rbp
+               	movq	%rax, %r12
@@@@
-               	movq	16(%rsp), %r8
-               	movq	160(%r8), %rbx
-               	movq	$0, 160(%r8)
-               	testq	%rbx, %rbx
-               	je	0x437f53 <Kotlin_initRuntimeIfNeeded+0x763>
-               	leaq	160(%r8), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x437f13 <Kotlin_initRuntimeIfNeeded+0x723>
+               	movq	16(%rsp), %rax
+               	movq	160(%rax), %rbp
+               	movq	$0, 160(%rax)
+               	testq	%rbp, %rbp
+               	movl	32(%rsp), %r8d
+               	je	0x438bc9 <Kotlin_initRuntimeIfNeeded+0x759>
+               	movq	16(%rsp), %rax
+               	leaq	160(%rax), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x438b86 <Kotlin_initRuntimeIfNeeded+0x716>
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
-               	je	0x437f53 <Kotlin_initRuntimeIfNeeded+0x763>
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
+               	je	0x438bc9 <Kotlin_initRuntimeIfNeeded+0x759>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x437eeb <Kotlin_initRuntimeIfNeeded+0x6fb>
+               	je	0x438b60 <Kotlin_initRuntimeIfNeeded+0x6f0>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%rbp,%rdx,8), %rax
+               	movq	(%r12,%rdx,8), %rax
@@@@
-               	jne	0x437efa <Kotlin_initRuntimeIfNeeded+0x70a>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%rbp,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x437f0b <Kotlin_initRuntimeIfNeeded+0x71b>
-               	movq	%rcx, (%rbp,%rdi,8)
-               	jmp	0x437f0b <Kotlin_initRuntimeIfNeeded+0x71b>
-               	movq	144(%r8), %rdi
-               	leaq	192(%r8), %rax
+               	jne	0x438b6e <Kotlin_initRuntimeIfNeeded+0x6fe>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x438b7e <Kotlin_initRuntimeIfNeeded+0x70e>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x438b7e <Kotlin_initRuntimeIfNeeded+0x70e>
+               	movq	16(%rsp), %r9
+               	movq	144(%r9), %rdi
+               	leaq	192(%r9), %rax
@@@@
-               	je	0x437f70 <Kotlin_initRuntimeIfNeeded+0x780>
-               	callq	0x4136f0 <free@plt>
-               	movq	16(%rsp), %r8
-               	movq	%r14, 152(%r8)
-               	movq	%rbp, 144(%r8)
-               	movq	64(%rsp), %rax
+               	movq	64(%rsp), %rbp
+               	je	0x438bf6 <Kotlin_initRuntimeIfNeeded+0x786>
+               	movq	%r9, %rbx
+               	callq	0x4136d0 <free@plt>
+               	movq	%rbx, %r9
+               	movl	32(%rsp), %r8d
+               	movq	%r14, 152(%r9)
+               	movq	%r12, 144(%r9)
+               	movq	80(%rsp), %rax
@@@@
-               	movq	%rdx, %rdi
-               	jmp	0x437fa4 <Kotlin_initRuntimeIfNeeded+0x7b4>
-               	movl	32(%rsp), %eax
+               	movq	%rdx, %rbx
+               	jmp	0x438c29 <Kotlin_initRuntimeIfNeeded+0x7b9>
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
-               	jmp	0x43801c <Kotlin_initRuntimeIfNeeded+0x82c>
-               	movq	%r8, %rcx
-               	addq	$160, %rcx
-               	movq	160(%r8), %rax
-               	movq	%rax, (%r12)
-               	movq	%r12, 160(%r8)
-               	movq	(%r12), %rax
+               	movq	%rax, (%rbp)
+               	movq	(%r12,%rbx,8), %rax
+               	movq	%rbp, (%rax)
+               	jmp	0x438ca2 <Kotlin_initRuntimeIfNeeded+0x832>
+               	movq	%r9, %rsi
+               	addq	$160, %rsi
+               	movq	160(%r9), %rax
+               	movq	%rax, (%rbp)
+               	movq	%rbp, 160(%r9)
+               	movq	(%rbp), %rax
@@@@
-               	je	0x438017 <Kotlin_initRuntimeIfNeeded+0x827>
-               	movq	152(%r8), %rsi
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rsi, %rdx
+               	je	0x438c9e <Kotlin_initRuntimeIfNeeded+0x82e>
+               	movq	152(%r9), %rdi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
@@@@
-               	je	0x438007 <Kotlin_initRuntimeIfNeeded+0x817>
+               	je	0x438c8f <Kotlin_initRuntimeIfNeeded+0x81f>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rsi
-               	jmp	0x43800b <Kotlin_initRuntimeIfNeeded+0x81b>
+               	divq	%rdi
+               	jmp	0x438c93 <Kotlin_initRuntimeIfNeeded+0x823>
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
-               	jne	0x43807a <Kotlin_initRuntimeIfNeeded+0x88a>
+               	jne	0x438d03 <Kotlin_initRuntimeIfNeeded+0x893>
@@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x43807a <Kotlin_initRuntimeIfNeeded+0x88a>
-               	movq	56(%rsp), %r12
-               	movq	%r14, %rax
-               	movq	%r13, -40(%r14)
-               	movq	(%r12), %rbp
-               	movq	72(%rsp), %rbx
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r12, %rax
+               	movq	%r13, -40(%r12)
+               	movq	(%r14), %rbp
+               	movq	88(%rsp), %rbx
@@@@
-               	movq	%r13, 8(%r12)
-               	movq	263196(%rip), %rbx      # 0x4784c8 <(anonymous namespace)::initHeadNode>
+               	movq	%r13, 8(%r14)
+               	movq	265940(%rip), %rbx      # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	je	0x4380d4 <Kotlin_initRuntimeIfNeeded+0x8e4>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	je	0x438d53 <Kotlin_initRuntimeIfNeeded+0x8e3>
+               	nopl	(%rax)
@@@@
-               	jne	0x4380c0 <Kotlin_initRuntimeIfNeeded+0x8d0>
-               	movq	(%r12), %rbp
+               	jne	0x438d40 <Kotlin_initRuntimeIfNeeded+0x8d0>
+               	movq	(%r14), %rbp
@@@@
-               	movq	72(%rbp), %rax
@@@@
+               	movq	72(%rbp), %rax

@@ -38223,35 +38948,35 @@
@@@[(25, 27)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -38262,65 +38987,64 @@
@@@[(3, 4), (5, 12), (13, 18), (28, 34), (39, 43), (62, 70)]@@@
-               	movq	48(%rsp), %r14
@@@@
-               	movq	40(%rsp), %r13
-               	je	0x4382a4 <Kotlin_initRuntimeIfNeeded+0xab4>
-               	movq	262728(%rip), %rbp      # 0x4784c8 <(anonymous namespace)::initHeadNode>
+               	movq	40(%rsp), %r14
+               	movq	48(%rsp), %r13
+               	je	0x438f24 <Kotlin_initRuntimeIfNeeded+0xab4>
+               	movq	265476(%rip), %rbp      # 0x479c08 <(anonymous namespace)::initHeadNode>
@@@@
-               	je	0x4382d4 <Kotlin_initRuntimeIfNeeded+0xae4>
-               	movq	(%r12), %rbx
-               	nopl	(%rax)
+               	je	0x438f54 <Kotlin_initRuntimeIfNeeded+0xae4>
+               	movq	(%r14), %rbx
@@@@
-               	je	0x4382d4 <Kotlin_initRuntimeIfNeeded+0xae4>
-               	movq	(%r12), %rbx
-               	nopl	(%rax,%rax)
+               	je	0x438f54 <Kotlin_initRuntimeIfNeeded+0xae4>
+               	movq	(%r14), %rbx
+               	nopw	(%rax,%rax)
@@@@
-               	jne	0x4382c0 <Kotlin_initRuntimeIfNeeded+0xad0>
-               	movl	$1, 16(%r12)
+               	jne	0x438f40 <Kotlin_initRuntimeIfNeeded+0xad0>
+               	movl	$1, 16(%r14)
@@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	-48(%r14), %rbp
-               	leaq	262539(%rip), %rdi      # 0x4784a0 <konan::terminationKeyOnceControl>
-               	leaq	2820(%rip), %rsi        # 0x438e20 <konan::onThreadExitInit()>
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	-48(%r12), %rbp
+               	leaq	265291(%rip), %rdi      # 0x479be0 <konan::terminationKeyOnceControl>
+               	leaq	2884(%rip), %rsi        # 0x439ae0 <konan::onThreadExitInit()>

@@ -38372,95 +39096,95 @@
@@@[(14, 16), (69, 72), (137, 140)]@@@
-               	leaq	192(%rax), %rbp
+               	leaq	192(%rax), %r12
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %r14
+               	movq	-64(%r12), %r14
@@@@
-               	callq	0x422a10 <__clang_call_terminate>
+               	callq	0x423020 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -38475,328 +39199,334 @@
@@@[(30, 34), (35, 39), (40, 44), (45, 47), (49, 53), (70, 84), (87, 89), (99, 101), (110, 117), (119, 133), (136, 143), (146, 156), (168, 175), (177, 180), (183, 198), (200, 203), (224, 226), (227, 229), (231, 235), (238, 246), (251, 253), (254, 258), (259, 263), (264, 268), (269, 271), (280, 288), (289, 291), (292, 296), (297, 298), (299, 307), (310, 334), (336, 342), (351, 357), (361, 363), (364, 372), (385, 396), (402, 410), (414, 416), (417, 429), (435, 441), (467, 471), (473, 477)]@@@
-               	movslq	(%rbx), %rax
-               	movq	%rax, 16(%rsp)
+               	movl	(%rbx), %eax
+               	movl	%eax, 12(%rsp)
@@@@
-               	callq	0x4374f0 <(anonymous namespace)::theState()>
-               	movq	%rax, %r15
+               	callq	0x438170 <(anonymous namespace)::theState()>
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
-               	je	0x438677 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe7>
+               	testq	%r15, %r15
+               	je	0x4392f5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe5>
@@@@
-               	movslq	(%rax), %rsi
-               	movq	152(%r15), %rcx
-               	movq	%rsi, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x4386b1 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x121>
-               	movq	%rsi, %rax
+               	movl	(%rax), %esi
+               	movslq	%esi, %rax
+               	movq	152(%r13), %rcx
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43932e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x11e>
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	jne	0x43873c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x1ac>
-               	jmp	0x4387ef <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movq	%rdi, %rbx
+               	jne	0x4393ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19c>
+               	jmp	0x439473 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	nopl	(%rax)
+               	movq	%rdi, %rbp
@@@@
-               	je	0x4387ef <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movslq	8(%rdi), %rbp
-               	movq	%rbp, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x438720 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x190>
-               	movq	%rbp, %rax
+               	je	0x439473 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	8(%rdi), %ebx
+               	movslq	%ebx, %rax
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x439390 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x180>
@@@@
-               	je	0x43872f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19f>
-               	jmp	0x4387ef <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	nopl	(%rax)
-               	movl	%ebp, %eax
+               	je	0x43939f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x18f>
+               	jmp	0x439473 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	%ebx, %eax
@@@@
-               	jne	0x4387ef <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	cmpl	%ebp, %esi
-               	jne	0x4386e0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
-               	testq	%rbx, %rbx
-               	je	0x4387ef <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
+               	jne	0x439473 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	cmpl	%ebx, %esi
+               	jne	0x439360 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
+               	testq	%rbp, %rbp
+               	je	0x439473 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
@@@@
-               	je	0x4387dc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x439456 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43879c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20c>
+               	je	0x439416 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x206>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x4387a5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
-               	jmp	0x4387dc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x4387c3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x233>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43941f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20f>
+               	jmp	0x439456 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movq	(%rdi), %rbx
+               	testq	%rbx, %rbx
+               	je	0x43943d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x22d>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x4387ab <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x21b>
+               	je	0x439425 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
+               	movq	%rbp, %rax
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	%r15, %rax
+               	movq	%r13, %rax
@@@@
-               	jne	0x4387d4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x244>
-               	movq	%rbp, (%r10)
+               	jne	0x43944e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x23e>
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
-               	jmp	0x43882c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x29c>
-               	movq	-64(%r12), %r13
+               	jmp	0x4394b0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2a0>
+               	movq	-64(%r12), %r15
@@@@
-               	xchgl	%ebx, 328(%r13)
-               	movq	%r15, %rdi
+               	xchgl	%ebx, 328(%r15)
+               	movq	%r13, %rdi
@@@@
-               	testq	%r13, %r13
-               	je	0x438857 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
+               	testq	%r15, %r15
+               	je	0x4394db <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
@@@@
-               	xchgl	%eax, 328(%r13)
+               	xchgl	%eax, 328(%r15)
@@@@
-               	je	0x438857 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
-               	addq	$328, %r13              # imm = 0x148
-               	movq	%r13, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x4394db <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
+               	addq	$328, %r15              # imm = 0x148
+               	movq	%r15, %rdi
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	24(%rax), %rbx
+               	movq	24(%rax), %rbp
@@@@
-               	cmpq	%rbx, %r13
-               	je	0x438955 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	cmpq	%rbp, %r13
+               	je	0x4395d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	40(%rax), %r14
@@@@
-               	leaq	39041(%rip), %rbp       # 0x442100 <_IO_stdin_used+0x240>
-               	jmp	0x4388b5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	movq	40(%rax), %r14
+               	leaq	39485(%rip), %rbx       # 0x442f40 <_IO_stdin_used+0x240>
+               	jmp	0x439535 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x438ea0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	addq	$40, %rbx
-               	cmpq	%r14, %rbx
-               	je	0x438910 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
-               	cmpq	%rbx, %r13
-               	je	0x438955 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
-               	movl	(%rbx), %ecx
-               	cmpq	$3, %rcx
-               	ja	0x4388a3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
-               	movq	8(%rbx), %rax
-               	movslq	(%rbp,%rcx,4), %rcx
-               	addq	%rbp, %rcx
+               	callq	0x439b60 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	addq	$40, %rbp
+               	cmpq	%r14, %rbp
+               	je	0x439590 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
+               	cmpq	%rbp, %r13
+               	je	0x4395d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	movl	(%rbp), %ecx
+               	cmpl	$3, %ecx
+               	ja	0x439523 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
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
-               	callq	0x438ea0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	movq	%r15, %rbp
+               	movq	%rbx, %rdi
+               	callq	0x439b60 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	movq	%r15, %rbx
@@@@
-               	movq	8(%r12), %rbx
+               	movq	8(%r12), %rbp
@@@@
-               	leaq	480(%rbx), %r14
-               	cmpq	%rbx, %r13
-               	jne	0x4388b5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	jmp	0x438955 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	leaq	480(%rbp), %r14
+               	cmpq	%rbp, %r13
+               	jne	0x439535 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	jmp	0x4395d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	112(%r14), %rbp
-               	leaq	96(%r14), %rbx
-               	cmpq	%rbx, %rbp
-               	movq	8(%rsp), %r13
-               	jne	0x438b64 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5d4>
+               	movq	112(%r14), %rbx
+               	leaq	96(%r14), %rbp
+               	cmpq	%rbp, %rbx
+               	movl	12(%rsp), %r13d
+               	movq	16(%rsp), %r15
+               	jne	0x4397f4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5e4>
@@@@
-               	callq	0x423e60 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
-               	movq	248(%r14), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	callq	0x424470 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
+               	movq	248(%r14), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
+               	testq	%rbx, %rbx
@@@@
-               	je	0x4389e6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x4389e6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
+               	je	0x43966a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x43966a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
@@@@
-               	je	0x4389e6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	movq	%rbp, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43966a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	movq	%rbx, %rdi
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	callq	0x4136f0 <free@plt>
-               	movq	(%r13), %rax
+               	callq	0x4136d0 <free@plt>
+               	movq	(%r15), %rax
@@@@
-               	movq	(%r13), %rbx
-               	movl	260688(%rip), %edi      # 0x47849c <konan::terminationKey>
+               	movq	(%r15), %rbx
+               	movl	263426(%rip), %edi      # 0x479bdc <konan::terminationKey>

@@ -38805,200 +39535,217 @@
@@@[(23, 24), (35, 53), (73, 82), (95, 102), (103, 109), (113, 116), (118, 122), (124, 126), (127, 129), (130, 136), (138, 140), (141, 143), (147, 151), (152, 157), (160, 174), (176, 183), (186, 194), (200, 212), (223, 224), (235, 242), (244, 247), (256, 263), (265, 268), (301, 307)]@@@
+               	movq	16(%rsp), %r15
@@@@
-               	callq	0x4136f0 <free@plt>
-               	jmp	0x438be7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x657>
-               	nopl	(%rax,%rax)
-               	movq	%rbp, %rdi
-               	callq	0x43b7c1 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
-               	movq	%rax, %rbp
-               	cmpq	%rbx, %rax
-               	je	0x43896f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3df>
-               	movq	40(%rbp), %rsi
+               	callq	0x4136d0 <free@plt>
+               	jmp	0x439893 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x683>
+               	nop
+               	movq	%rbx, %rdi
+               	callq	0x43c601 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
+               	movq	%rax, %rbx
+               	cmpq	%rbp, %rax
+               	je	0x4395f4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3e4>
+               	movq	40(%rbx), %rsi
@@@@
-               	je	0x438bd7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x647>
+               	je	0x439883 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x673>
+               	movq	352(%rbx), %rbp
+               	testq	%rbp, %rbp
+               	je	0x439860 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x650>
+               	movq	%rbp, %rdi
+               	callq	0x423ed0 <void std::allocator_traits<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node> >::_S_destroy<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>(kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>&, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node*, ...)>
+               	movq	%rbp, %rdi
+               	callq	0x4136d0 <free@plt>
@@@@
-               	cmpq	$0, 148425(%rip)        # 0x45cfb8 <write+0x45cfb8>
-               	je	0x438bfd <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x66d>
-               	leaq	155936(%rip), %rdi      # 0x45ed18 <kotlin::mm::GlobalData::instance_+0x28>
+               	movslq	%r13d, %rbp
+               	cmpq	$0, 149274(%rip)        # 0x45dfb8 <write+0x45dfb8>
+               	je	0x4398ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x69c>
+               	leaq	158649(%rip), %rdi      # 0x460460 <kotlin::mm::GlobalData::instance_+0x28>
@@@@
-               	movq	%r13, %rdi
-               	callq	0x4136f0 <free@plt>
-               	callq	0x4374f0 <(anonymous namespace)::theState()>
+               	movq	%r15, %rdi
+               	callq	0x4136d0 <free@plt>
+               	callq	0x438170 <(anonymous namespace)::theState()>
@@@@
-               	movq	16(%rsp), %rcx
-               	movq	%rcx, %rax
+               	movq	%rbp, %rax
@@@@
-               	je	0x438c4d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6bd>
-               	movq	%rcx, %rax
+               	je	0x4398f7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6e7>
+               	movq	%rbp, %rax
@@@@
-               	movq	%rdx, %r8
+               	movq	%rdx, %rcx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	jne	0x438c6a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6da>
-               	jmp	0x438dd2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movl	%ecx, %eax
+               	jne	0x439914 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x704>
+               	jmp	0x439a97 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %r8d
+               	movl	%edx, %ecx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	cmpl	%ecx, 8(%rbx)
-               	jne	0x438c80 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpl	%r13d, 8(%rbx)
+               	jne	0x439930 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	jne	0x438cdc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x74c>
-               	jmp	0x438dd2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
+               	jne	0x43997d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x76d>
+               	jmp	0x439a97 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	nop
@@@@
-               	je	0x438dd2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x438cc0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x730>
-               	movq	%rsi, %rax
+               	je	0x439a97 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x439960 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x750>
@@@@
-               	cmpq	%r8, %rdx
-               	je	0x438ccf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x73f>
-               	jmp	0x438dd2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	nopl	(%rax)
+               	cmpq	%rcx, %rdx
+               	je	0x43996f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x75f>
+               	jmp	0x439a97 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
@@@@
-               	cmpq	%r8, %rdx
-               	jne	0x438dd2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	cmpl	%ecx, %esi
-               	jne	0x438c80 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpq	%rcx, %rdx
+               	jne	0x439a97 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	cmpl	%r13d, %esi
+               	jne	0x439930 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	movslq	8(%rbx), %rax
-               	movq	%rax, %rcx
-               	orq	%rdi, %rcx
-               	shrq	$32, %rcx
-               	je	0x438d06 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x776>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4399ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x79c>
+               	movq	%rcx, %rax
@@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x438dbc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x82c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rcx
+               	je	0x439a77 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x867>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rdx
+               	movq	%rdx, %rcx
@@@@
-               	je	0x438d7c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7ec>
+               	je	0x439a37 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x827>
+               	movq	%rdx, %rax
@@@@
-               	je	0x438da3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x813>
-               	movslq	8(%r10), %rax
-               	movq	%rax, %rdx
+               	je	0x439a5e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x84e>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x438d8b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7fb>
+               	je	0x439a46 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x836>
+               	movq	%rbp, %rax
@@@@
-               	callq	0x4136f0 <free@plt>
-               	addq	$-1, 224(%r14)
+               	callq	0x4136d0 <free@plt>
+               	movq	224(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 224(%r14)

@@ -39010,23 +39757,23 @@
@@@[(13, 17)]@@@
-               	callq	0x422a10 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x423020 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -39115,91 +39862,95 @@
@@@[(20, 30), (33, 37), (38, 42), (51, 57), (59, 61), (62, 64), (65, 67), (68, 76), (78, 80), (81, 85), (86, 88), (89, 93), (94, 100), (101, 103), (112, 117), (118, 121)]@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	callq	0x4374f0 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%r15)
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	callq	0x438170 <(anonymous namespace)::theState()>
+               	movq	%rax, %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%r15)
@@@@
-               	je	0x439030 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x190>
-               	movl	%ebx, %eax
+               	je	0x439cfb <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x19b>
+               	movl	%ebp, %eax
@@@@
-               	testl	%ebx, %ebx
-               	jne	0x438fee <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
+               	testl	%ebp, %ebp
+               	jne	0x439cae <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
@@@@
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r12)
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x439073 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1d3>
-               	jmp	0x43908a <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	callq	0x4374f0 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
+               	je	0x439d48 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1e8>
+               	jmp	0x439d5f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
+               	callq	0x438170 <(anonymous namespace)::theState()>
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
-               	je	0x4390c6 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x226>
-               	addq	$328, %rbx              # imm = 0x148
+               	testq	%r12, %r12
+               	je	0x439d9b <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x23b>
+               	addq	$328, %r12              # imm = 0x148
@@@@
-               	xchgl	%eax, (%rbx)
+               	xchgl	%eax, (%r12)
@@@@
-               	je	0x43908a <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	movq	%rbx, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$40, %r12
+               	je	0x439d5f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
@@@@
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -39208,8 +39959,8 @@
@@@[(3, 7)]@@@
-               	addq	$40, %r12
-               	movq	%r12, %rdi
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -39226,24 +39977,24 @@
@@@[(3, 7)]@@@
-               	jmp	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax,%rax)

@@ -39419,101 +40170,107 @@
@@@[(44, 45), (48, 57), (67, 72), (73, 78), (103, 105), (128, 140)]@@@
+               	subq	$32, %rsp
@@@@
-               	cmpxchgl	%ebp, 153009(%rip)      # 0x45ea14 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43946a <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1a>
-               	callq	0x4394f0 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	cmpxchgl	%ebp, 155725(%rip)      # 0x460184 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43a13e <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1e>
+               	callq	0x43a1f0 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	movq	$0, 16(%rsp)
+               	movl	$1, 24(%rsp)
+               	movb	$0, 28(%rsp)
@@@@
-               	movl	152953(%rip), %edi      # 0x45ea10 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 16(%rsp)
+               	movl	%ebp, 24(%rsp)
+               	movb	$1, 28(%rsp)
+               	movl	155633(%rip), %edi      # 0x460180 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x435810 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	leaq	8(%rsp), %rdi
+               	callq	0x4361f0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	nopw	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43950b <(anonymous namespace)::TerminateHandler::instance()+0xb>
-               	leaq	-996(%rip), %rdi        # 0x439140 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
-               	callq	0x43b3da <std::set_terminate(void (*)())>
-               	movq	%rax, 257968(%rip)      # 0x4784e0 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
-               	leaq	257953(%rip), %rdi      # 0x4784d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
-               	callq	0x43b390 <__cxa_guard_release>
+               	je	0x43a20b <(anonymous namespace)::TerminateHandler::instance()+0xb>
+               	leaq	-1044(%rip), %rdi       # 0x439e10 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
+               	callq	0x43c21a <std::set_terminate(void (*)())>
+               	movq	%rax, 260592(%rip)      # 0x479c20 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
+               	leaq	260577(%rip), %rdi      # 0x479c18 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	callq	0x43c1d0 <__cxa_guard_release>

@@ -39522,51 +40279,60 @@
@@@[(3, 5), (8, 18), (28, 33), (34, 39), (68, 75)]@@@
+               	subq	$32, %rsp
+               	movq	%rdi, 24(%rsp)
@@@@
-               	cmpxchgl	%ebp, 152769(%rip)      # 0x45ea14 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43955a <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x1a>
-               	callq	0x4395e0 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	cmpxchgl	%ebp, 155432(%rip)      # 0x460184 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43a268 <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x28>
+               	leaq	24(%rsp), %rdi
+               	callq	0x43a310 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	movq	$0, 8(%rsp)
+               	movl	$1, 16(%rsp)
+               	movb	$0, 20(%rsp)
@@@@
-               	movl	152713(%rip), %edi      # 0x45ea10 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 8(%rsp)
+               	movl	%ebp, 16(%rsp)
+               	movb	$1, 20(%rsp)
+               	movl	155335(%rip), %edi      # 0x460180 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x435810 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x4361f0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x41a0a0 <ReportUnhandledException>
-               	callq	0x434f70 <konan::abort()>
-               	nopl	(%rax,%rax)
+               	movq	(%rdi), %rdi
+               	callq	0x41a240 <ReportUnhandledException>
+               	callq	0x435950 <konan::abort()>
+               	nop

@@ -39728,23 +40494,24 @@
@@@[(6, 7)]@@@
+               	movq	$0, (%rsp)

@@ -39758,34 +40525,35 @@
@@@[(29, 31), (34, 35)]@@@
-               	movl	%ebp, %edi
+               	movl	24(%rcx), %edi
@@@@
+               	nopl	(%rax)

@@ -39838,93 +40606,157 @@
@@@[(3, 5), (10, 16), (18, 60), (62, 123), (126, 141), (150, 173), (177, 179), (180, 183), (189, 191), (200, 206), (207, 213)]@@@
-               	movq	%rdi, %rbx
+               	movq	%rdi, %r14
@@@@
-               	jne	0x439b40 <Kotlin_io_Console_print+0x180>
-               	leaq	24(%rsp), %r15
-               	movq	%r15, 8(%rsp)
+               	jne	0x43a97f <Kotlin_io_Console_print+0x27f>
+               	leaq	24(%rsp), %r13
+               	movq	%r13, 8(%rsp)
@@@@
-               	movl	8(%rbx), %ebp
-               	cmpq	$16, %rbp
-               	jb	0x439a2e <Kotlin_io_Console_print+0x6e>
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
+               	je	0x43a80a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$15, %rbp
+               	ja	0x43a79f <Kotlin_io_Console_print+0x9f>
+               	cmpq	%rax, %rbp
+               	ja	0x43a79f <Kotlin_io_Console_print+0x9f>
+               	cmpq	%r13, %r15
+               	je	0x43a80a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$-1, %r12
+               	je	0x43a8e4 <Kotlin_io_Console_print+0x1e4>
+               	testq	%r12, %r12
+               	jne	0x43a8d2 <Kotlin_io_Console_print+0x1d2>
+               	movb	(%r15), %al
+               	movb	%al, 24(%rsp)
+               	jmp	0x43a8e4 <Kotlin_io_Console_print+0x1e4>
+               	testq	%rbp, %rbp
+               	js	0x43a98e <Kotlin_io_Console_print+0x28e>
+               	movq	%r13, %rbx
+               	cmpq	%rax, %rbp
+               	jbe	0x43a7c9 <Kotlin_io_Console_print+0xc9>
+               	addq	%rax, %rax
+               	cmpq	%rax, %rbp
+               	jae	0x43a7c9 <Kotlin_io_Console_print+0xc9>
+               	movabsq	$9223372036854775807, %rbp # imm = 0x7FFFFFFFFFFFFFFF
+               	cmpq	%rbp, %rax
+               	cmovbq	%rax, %rbp
+               	leaq	1(%rbp), %rdi
@@@@
-               	movq	%rax, 8(%rsp)
-               	movq	%r14, 24(%rsp)
-               	movq	%rbp, %rax
-               	addq	%rbp, %rax
-               	je	0x439ac4 <Kotlin_io_Console_print+0x104>
-               	addq	$16, %rbx
-               	leaq	(%rbx,%rbp,2), %r12
-               	movl	$65533, %r13d           # imm = 0xFFFD
-               	leaq	8(%rsp), %r14
-               	jmp	0x439a8d <Kotlin_io_Console_print+0xcd>
-               	nop
-               	cmpq	%r12, %rbp
-               	je	0x439ab5 <Kotlin_io_Console_print+0xf5>
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
-               	callq	0x435ec0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
-               	movq	%rbp, %rbx
-               	cmpq	%r12, %rbp
-               	je	0x439ac4 <Kotlin_io_Console_print+0x104>
-               	leaq	2(%rbx), %rbp
-               	movzwl	(%rbx), %eax
+               	movq	%rax, %r13
+               	cmpq	$-1, %r12
+               	je	0x43a7f0 <Kotlin_io_Console_print+0xf0>
+               	testq	%r12, %r12
+               	jne	0x43a8b2 <Kotlin_io_Console_print+0x1b2>
+               	movb	(%r15), %al
+               	movb	%al, (%r13)
+               	cmpq	%rbx, %r15
+               	je	0x43a7fd <Kotlin_io_Console_print+0xfd>
+               	movq	%r15, %rdi
+               	callq	0x4136d0 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movq	%rbp, 24(%rsp)
+               	movq	%rbx, %r13
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	je	0x43a901 <Kotlin_io_Console_print+0x201>
+               	addq	$16, %r14
+               	leaq	(%r14,%rax,2), %rbp
+               	leaq	8(%rsp), %r15
+               	jmp	0x43a849 <Kotlin_io_Console_print+0x149>
+               	nopl	(%rax)
+               	movl	$65533, %edi            # imm = 0xFFFD
+               	movq	%r15, %rsi
+               	callq	0x436b40 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	movq	%rbx, %r14
+               	cmpq	%rbp, %rbx
+               	je	0x43a901 <Kotlin_io_Console_print+0x201>
+               	leaq	2(%r14), %rbx
+               	movzwl	(%r14), %eax
@@@@
-               	je	0x439a50 <Kotlin_io_Console_print+0x90>
+               	jne	0x43a890 <Kotlin_io_Console_print+0x190>
+               	cmpq	%rbp, %rbx
+               	je	0x43a8a1 <Kotlin_io_Console_print+0x1a1>
+               	movzwl	2(%r14), %ecx
+               	movl	%ecx, %edx
+               	andl	$64512, %edx            # imm = 0xFC00
+               	cmpl	$56320, %edx            # imm = 0xDC00
+               	jne	0x43a830 <Kotlin_io_Console_print+0x130>
+               	shll	$10, %eax
+               	addq	$4, %r14
+               	leal	(%rax,%rcx), %edi
+               	addl	$4238353408, %edi       # imm = 0xFCA02400
+               	movq	%r14, %rbx
+               	jmp	0x43a835 <Kotlin_io_Console_print+0x135>
@@@@
-               	callq	0x435ec0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	callq	0x436b40 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	jmp	0x43a901 <Kotlin_io_Console_print+0x201>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x4136f0 <memcpy@plt>
+               	cmpq	%rbx, %r15
+               	jne	0x43a7f5 <Kotlin_io_Console_print+0xf5>
+               	jmp	0x43a7fd <Kotlin_io_Console_print+0xfd>
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
+               	jne	0x43a81a <Kotlin_io_Console_print+0x11a>
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
-               	je	0x439b22 <Kotlin_io_Console_print+0x162>
-               	movq	%r12, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43a961 <Kotlin_io_Console_print+0x261>
+               	movq	%r14, %rdi
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x439b31 <Kotlin_io_Console_print+0x171>
-               	callq	0x4136f0 <free@plt>
+               	cmpq	%r13, %rdi
+               	je	0x43a970 <Kotlin_io_Console_print+0x270>
+               	callq	0x4136d0 <free@plt>

@@ -39933,31 +40765,33 @@
@@@[(3, 13), (17, 25), (27, 29), (38, 48)]@@@
-               	leaq	115273(%rip), %rsi      # 0x455d90 <ktypeglobal:kotlin.String#internal>
-               	movq	%rbx, %rdi
-               	callq	0x419bf0 <ThrowClassCastException>
-               	movq	%rax, %r14
+               	leaq	117578(%rip), %rsi      # 0x4574d0 <ktypeglobal:kotlin.String#internal>
+               	movq	%r14, %rdi
+               	callq	0x419d90 <ThrowClassCastException>
+               	leaq	41963(%rip), %rdi       # 0x444d80 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x436170 <std::__throw_length_error(char const*)>
+               	movq	%rax, %r15
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x439b66 <Kotlin_io_Console_print+0x1a6>
-               	callq	0x4136f0 <free@plt>
-               	movq	%r14, %rdi
+               	cmpq	%r13, %rdi
+               	je	0x43a9b1 <Kotlin_io_Console_print+0x2b1>
+               	callq	0x4136d0 <free@plt>
+               	movq	%r15, %rdi
@@@@
-               	xchgl	%eax, (%r12)
+               	xchgl	%eax, (%r14)
@@@@
-               	je	0x439b57 <Kotlin_io_Console_print+0x197>
-               	movq	%r12, %rdi
-               	callq	0x423d00 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x439b57 <Kotlin_io_Console_print+0x197>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x43a9a2 <Kotlin_io_Console_print+0x2a2>
+               	movq	%r14, %rdi
+               	callq	0x424310 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x43a9a2 <Kotlin_io_Console_print+0x2a2>
+               	nopl	(%rax,%rax)

@@ -40059,40 +40893,39 @@
@@@[(21, 24), (28, 29), (32, 34), (35, 36)]@@@
-               	movq	288(%rax), %rcx
-               	jmp	0x439dec <Init_and_run_start+0x18c>
+               	jmp	0x43ac23 <Init_and_run_start+0x183>
@@@@
-               	movq	288(%rax), %rcx
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)
@@@@
+               	movq	288(%rax), %rcx

@@ -40101,33 +40934,34 @@
@@@[(6, 7), (8, 10)]@@@
-               	movaps	%xmm0, 16(%rsp)
@@@@
+               	movaps	%xmm0, 16(%rsp)
+               	movq	288(%rax), %rcx
