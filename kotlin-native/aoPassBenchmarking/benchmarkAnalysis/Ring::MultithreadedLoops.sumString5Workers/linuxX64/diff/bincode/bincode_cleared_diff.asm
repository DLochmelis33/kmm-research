--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString5Workers/linuxX64/baseline/bincode/bincode.asm	2023-07-19 02:48:19.510634065 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString5Workers/linuxX64/unordered/bincode/bincode.asm	2023-07-19 03:00:08.570412407 +0200

@@ -1,5 +1,5 @@
@@@[(1, 3)]@@@
-../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString5Workers/linuxX64/baseline/main.kexe:	file format elf64-x86-64
+../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString5Workers/linuxX64/unordered/main.kexe:	file format elf64-x86-64

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

@@ -508,41 +508,41 @@
@@@[(3, 5)]@@@
-               	subq	$248, %rsp
+               	subq	$264, %rsp              # imm = 0x108

@@ -556,13 +556,13 @@
@@@[(11, 13)]@@@
-               	leaq	160(%r13), %r12
+               	leaq	160(%r13), %r14

@@ -595,15 +595,15 @@
@@@[(9, 13)]@@@
-               	movq	%r12, 128(%rbx)
-               	leaq	81641(%rip), %rax       # 0x427e20 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
+               	movq	%r14, 128(%rbx)
+               	leaq	83481(%rip), %rax       # 0x428550 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>

@@ -611,78 +611,76 @@
@@@[(14, 22), (23, 55), (58, 64), (65, 74), (76, 78), (79, 90), (105, 109), (110, 112), (114, 118)]@@@
-               	movq	168(%r13), %r14
-               	movq	%r12, 208(%rsp)
-               	leaq	81677(%rip), %rax       # 0x427ee0 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	168(%r13), %r12
+               	movq	%r14, 216(%rsp)
+               	leaq	83517(%rip), %rax       # 0x428610 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	%rax, 240(%rsp)
+               	leaq	83518(%rip), %rax       # 0x428620 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
@@@@
-               	leaq	81678(%rip), %rax       # 0x427ef0 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
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
-               	je	0x414093 <_GLOBAL__sub_I_GlobalData.cpp+0x3e3>
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
+               	je	0x41405b <_GLOBAL__sub_I_GlobalData.cpp+0x3ab>
@@@@
-               	callq	*%rcx
-               	movq	88(%r14), %rcx
-               	movq	$0, 192(%rsp)
+               	callq	*%rax
+               	movq	$0, 200(%rsp)
+               	movq	88(%r12), %rcx
@@@@
-               	movq	%rbp, 240(%rsp)
-               	je	0x4140b1 <_GLOBAL__sub_I_GlobalData.cpp+0x401>
-               	leaq	72(%r14), %rsi
-               	leaq	176(%rsp), %rdi
+               	movq	%rbp, 248(%rsp)
+               	movq	%r14, 256(%rsp)
+               	je	0x4140ad <_GLOBAL__sub_I_GlobalData.cpp+0x3fd>
+               	leaq	72(%r12), %rsi
+               	leaq	184(%rsp), %rdi
@@@@
-               	movups	88(%r14), %xmm0
+               	movups	88(%r12), %xmm0
@@@@
-               	movups	%xmm0, 192(%rsp)
-               	jmp	0x4140c1 <_GLOBAL__sub_I_GlobalData.cpp+0x411>
-               	movq	%xmm0, %rcx
-               	movq	$0, 192(%rsp)
-               	testq	%rcx, %rcx
-               	movq	%rbp, 240(%rsp)
-               	jne	0x414069 <_GLOBAL__sub_I_GlobalData.cpp+0x3b9>
-               	movups	192(%rsp), %xmm0
+               	movups	%xmm0, 200(%rsp)
+               	jmp	0x4140bd <_GLOBAL__sub_I_GlobalData.cpp+0x40d>
+               	movups	200(%rsp), %xmm0
@@@@
-               	movq	%r14, 8(%rbx)
-               	leaq	334932(%rip), %rax      # 0x465d68 <kotlin::mm::GlobalData::instance_+0x50>
+               	movq	%r12, 8(%rbx)
+               	leaq	336864(%rip), %rax      # 0x4664f0 <kotlin::mm::GlobalData::instance_+0x50>
@@@@
-               	movq	%r14, 24(%rbx)
+               	movq	%r12, 24(%rbx)
@@@@
-               	movq	%r14, 48(%rbx)
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
+               	movq	%r12, 48(%rbx)
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>

@@ -702,22 +700,22 @@
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

@@ -733,185 +731,244 @@
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
-               	leaq	70252(%rip), %r15       # 0x425510 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
-               	movq	%r15, 120(%rsp)
+               	movb	$0, 112(%rsp)
+               	cmpb	$0, 32(%rsp)
+               	je	0x4142c5 <_GLOBAL__sub_I_GlobalData.cpp+0x615>
+               	leaq	96(%rsp), %rax
+               	movq	%rax, 80(%rsp)
+               	movq	8(%rsp), %r15
+               	cmpq	$15, %r15
+               	jbe	0x4142b3 <_GLOBAL__sub_I_GlobalData.cpp+0x603>
+               	testq	%r15, %r15
+               	js	0x41467e <_GLOBAL__sub_I_GlobalData.cpp+0x9ce>
+               	leaq	1(%r15), %rdi
+               	movl	$1, %esi
+               	callq	0x413700 <calloc@plt>
+               	movq	%rax, 80(%rsp)
+               	movq	%r15, 96(%rsp)
+               	testq	%r15, %r15
+               	je	0x4142db <_GLOBAL__sub_I_GlobalData.cpp+0x62b>
+               	cmpq	$1, %r15
+               	jne	0x4142cd <_GLOBAL__sub_I_GlobalData.cpp+0x61d>
+               	movb	(%rbp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x4142db <_GLOBAL__sub_I_GlobalData.cpp+0x62b>
+               	movb	$1, %r14b
+               	xorl	%r15d, %r15d
+               	jmp	0x4142f5 <_GLOBAL__sub_I_GlobalData.cpp+0x645>
+               	movq	%rax, %rdi
+               	movq	%rbp, %rsi
+               	movq	%r15, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	movq	%r15, 88(%rsp)
+               	movq	80(%rsp), %rax
+               	movb	$0, (%rax,%r15)
+               	movb	$1, 112(%rsp)
+               	movb	$1, %r15b
+               	xorl	%r14d, %r14d
+               	leaq	71716(%rip), %rbp       # 0x425b20 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
+               	movq	%rbp, 120(%rsp)
@@@@
-               	movq	%rax, %rcx
-               	addq	$56, %rcx
-               	movq	%rcx, 40(%rax)
-               	movq	80(%rsp), %rdx
-               	cmpq	%rbp, %rdx
-               	je	0x414300 <_GLOBAL__sub_I_GlobalData.cpp+0x650>
+               	testb	%r14b, %r14b
+               	leaq	16(%rsp), %r14
+               	jne	0x41438f <_GLOBAL__sub_I_GlobalData.cpp+0x6df>
+               	movq	%rax, %rdx
+               	addq	$56, %rdx
@@@@
-               	movq	96(%rsp), %rcx
-               	movq	%rcx, 56(%rax)
-               	jmp	0x414309 <_GLOBAL__sub_I_GlobalData.cpp+0x659>
-               	movdqu	(%rbp), %xmm0
-               	movdqu	%xmm0, (%rcx)
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 48(%rax)
-               	movq	%rbp, 80(%rsp)
+               	movq	80(%rsp), %rsi
+               	leaq	96(%rsp), %rcx
+               	cmpq	%rcx, %rsi
+               	je	0x414367 <_GLOBAL__sub_I_GlobalData.cpp+0x6b7>
+               	movq	%rsi, 40(%rax)
+               	movq	96(%rsp), %rdx
+               	movq	%rdx, 56(%rax)
+               	jmp	0x41436f <_GLOBAL__sub_I_GlobalData.cpp+0x6bf>
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
-               	je	0x414372 <_GLOBAL__sub_I_GlobalData.cpp+0x6c2>
-               	callq	0x413730 <free@plt>
+               	leaq	96(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x4143dd <_GLOBAL__sub_I_GlobalData.cpp+0x72d>
+               	callq	0x413710 <free@plt>
@@@@
-               	leaq	16(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x41438c <_GLOBAL__sub_I_GlobalData.cpp+0x6dc>
-               	callq	0x413730 <free@plt>
+               	cmpq	%r14, %rdi
+               	je	0x4143f2 <_GLOBAL__sub_I_GlobalData.cpp+0x742>
+               	callq	0x413710 <free@plt>
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
+               	jbe	0x41450a <_GLOBAL__sub_I_GlobalData.cpp+0x85a>
+               	testq	%rbx, %rbx
+               	js	0x41467e <_GLOBAL__sub_I_GlobalData.cpp+0x9ce>
+               	leaq	1(%rbx), %rdi
+               	movl	$1, %esi
+               	callq	0x413700 <calloc@plt>
+               	movq	%rax, 56(%rsp)
+               	movq	%rbx, 72(%rsp)
+               	testq	%rbx, %rbx
+               	jne	0x414512 <_GLOBAL__sub_I_GlobalData.cpp+0x862>
+               	jmp	0x41452e <_GLOBAL__sub_I_GlobalData.cpp+0x87e>
+               	movq	%rbp, %rax
+               	testq	%rbx, %rbx
+               	je	0x41452e <_GLOBAL__sub_I_GlobalData.cpp+0x87e>
+               	cmpq	$1, %rbx
+               	jne	0x414520 <_GLOBAL__sub_I_GlobalData.cpp+0x870>
+               	movb	16(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x41452e <_GLOBAL__sub_I_GlobalData.cpp+0x87e>
+               	movq	%rax, %rdi
+               	movq	%r14, %rsi
+               	movq	%rbx, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	movq	%r13, %r12
+               	addq	$480, %r12              # imm = 0x1E0
+               	movq	%rbx, 64(%rsp)
+               	movq	56(%rsp), %rax
+               	movb	$0, (%rax,%rbx)
@@@@
-               	leaq	80526(%rip), %rbp       # 0x427f20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
-               	movq	%rbp, 96(%rsp)
+               	leaq	82174(%rip), %rbx       # 0x428650 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
+               	movq	%rbx, 96(%rsp)
@@@@
-               	movq	%r12, 8(%rax)
+               	movq	48(%rsp), %rcx
+               	movq	%rcx, 8(%rax)
@@@@
-               	cmpq	%rbx, %rdx
-               	je	0x4144d7 <_GLOBAL__sub_I_GlobalData.cpp+0x827>
+               	cmpq	%rbp, %rdx
+               	je	0x41459c <_GLOBAL__sub_I_GlobalData.cpp+0x8ec>
@@@@
-               	jmp	0x4144df <_GLOBAL__sub_I_GlobalData.cpp+0x82f>
-               	movdqu	(%rbx), %xmm0
+               	jmp	0x4145a5 <_GLOBAL__sub_I_GlobalData.cpp+0x8f5>
+               	movdqu	(%rbp), %xmm0
@@@@
-               	movq	%rbx, 56(%rsp)
+               	movq	%rbp, 56(%rsp)
@@@@
-               	movq	%rbp, 56(%rax)
+               	movq	%rbx, 56(%rax)
@@@@
-               	cmpq	%rbx, %rdi
-               	je	0x41455c <_GLOBAL__sub_I_GlobalData.cpp+0x8ac>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, (%r15)
-               	jne	0x41480f <_GLOBAL__sub_I_GlobalData.cpp+0xb5f>
-               	movq	176(%rsp), %rax
-               	movq	%rax, (%r15)
-               	movq	$0, 176(%rsp)
+               	cmpq	%rbp, %rdi
+               	je	0x414622 <_GLOBAL__sub_I_GlobalData.cpp+0x972>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, (%r12)
+               	jne	0x4148d9 <_GLOBAL__sub_I_GlobalData.cpp+0xc29>
+               	movq	184(%rsp), %rax
+               	movq	%rax, (%r12)
+               	movq	$0, 184(%rsp)
@@@@
-               	leaq	16(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x414597 <_GLOBAL__sub_I_GlobalData.cpp+0x8e7>
-               	callq	0x413730 <free@plt>
+               	cmpq	%r14, %rdi
+               	je	0x41465a <_GLOBAL__sub_I_GlobalData.cpp+0x9aa>
+               	callq	0x413710 <free@plt>
@@@@
-               	movq	%r13, 333943(%rip)      # 0x465e20 <kotlin::mm::GlobalData::instance_+0x108>
-               	addq	$248, %rsp
+               	movq	%r13, 335676(%rip)      # 0x4665a8 <kotlin::mm::GlobalData::instance_+0x108>
+               	addq	$264, %rsp              # imm = 0x108

@@ -919,185 +976,187 @@
@@@[(3, 5), (49, 55), (59, 66), (92, 102), (118, 128), (132, 136), (148, 152), (175, 181), (194, 202), (217, 221), (238, 243), (244, 246), (247, 254), (271, 272)]@@@
+               	leaq	215643(%rip), %rdi      # 0x4490e0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x438aa0 <std::__throw_length_error(char const*)>
@@@@
-               	cmpq	%rbx, %rdi
-               	je	0x414654 <_GLOBAL__sub_I_GlobalData.cpp+0x9a4>
-               	callq	0x413730 <free@plt>
+               	cmpq	%rbp, %rdi
+               	je	0x414723 <_GLOBAL__sub_I_GlobalData.cpp+0xa73>
+               	callq	0x413710 <free@plt>
@@@@
-               	leaq	16(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x41466e <_GLOBAL__sub_I_GlobalData.cpp+0x9be>
-               	callq	0x413730 <free@plt>
+               	cmpq	%r14, %rdi
+               	je	0x414738 <_GLOBAL__sub_I_GlobalData.cpp+0xa88>
+               	callq	0x413710 <free@plt>
@@@@
-               	leaq	40(%rbx), %r12
-               	movq	%r12, %rdi
-               	callq	0x43fec8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 325859(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x4146df <_GLOBAL__sub_I_GlobalData.cpp+0xa2f>
+               	leaq	40(%rbx), %r15
+               	movq	%r15, %rdi
+               	callq	0x440d98 <std::condition_variable::notify_all()>
+               	cmpq	$0, 325657(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x4147a9 <_GLOBAL__sub_I_GlobalData.cpp+0xaf9>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43fec8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 325785(%rip)        # 0x463fb8 <write+0x463fb8>
-               	jne	0x4146b0 <_GLOBAL__sub_I_GlobalData.cpp+0xa00>
-               	jmp	0x414739 <_GLOBAL__sub_I_GlobalData.cpp+0xa89>
+               	movq	%r15, %rdi
+               	callq	0x440d98 <std::condition_variable::notify_all()>
+               	cmpq	$0, 325583(%rip)        # 0x463fb8 <write+0x463fb8>
+               	jne	0x41477a <_GLOBAL__sub_I_GlobalData.cpp+0xaca>
+               	jmp	0x414803 <_GLOBAL__sub_I_GlobalData.cpp+0xb53>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43fec8 <std::condition_variable::notify_all()>
+               	movq	%r15, %rdi
+               	callq	0x440d98 <std::condition_variable::notify_all()>
@@@@
-               	callq	0x43fe9a <std::condition_variable::~condition_variable()>
-               	leaq	16(%rbx), %r12
+               	callq	0x440d6a <std::condition_variable::~condition_variable()>
+               	leaq	16(%rbx), %r15
@@@@
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%r12, %rdi
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r15, %rdi
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	movq	%r15, %rdi
-               	callq	0x4259a0 <kotlin::ScopedThread::~ScopedThread()>
-               	movq	240(%rsp), %rdi
-               	callq	0x429180 <GCStateHolder::~GCStateHolder()>
+               	movq	%r12, %rdi
+               	callq	0x425fb0 <kotlin::ScopedThread::~ScopedThread()>
+               	movq	248(%rsp), %rdi
+               	callq	0x429960 <GCStateHolder::~GCStateHolder()>
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x425990 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x425fa0 <std::thread::~thread()>
@@@@
-               	cmpb	$0, 112(%rsp)
-               	jne	0x414876 <_GLOBAL__sub_I_GlobalData.cpp+0xbc6>
-               	jmp	0x414885 <_GLOBAL__sub_I_GlobalData.cpp+0xbd5>
+               	movb	112(%rsp), %r15b
+               	jmp	0x41493e <_GLOBAL__sub_I_GlobalData.cpp+0xc8e>
@@@@
+               	testb	%r15b, %r15b
+               	je	0x414957 <_GLOBAL__sub_I_GlobalData.cpp+0xca7>
@@@@
-               	cmpq	%rbp, %rdi
-               	je	0x414885 <_GLOBAL__sub_I_GlobalData.cpp+0xbd5>
-               	callq	0x413730 <free@plt>
+               	leaq	96(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x414957 <_GLOBAL__sub_I_GlobalData.cpp+0xca7>
+               	callq	0x413710 <free@plt>
@@@@
-               	nop

@@ -1734,7 +1793,7 @@
@@@[(3, 5)]@@@
-               	movl	%esi, %r12d
+               	movl	%esi, %ebp

@@ -1755,111 +1814,90 @@
@@@[(6, 14), (15, 17), (30, 32), (34, 38), (48, 62), (63, 170)]@@@
-               	je	0x4152f3 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x93>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testl	%r12d, %r12d
-               	js	0x4154c4 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x264>
+               	je	0x4153c2 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x92>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	%ebp, %ebp
+               	js	0x415529 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f9>
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
-               	jne	0x41557a <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x31a>
-               	testl	%r12d, %r12d
-               	js	0x4154bf <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x25f>
-               	cmpl	%r12d, 8(%rbx)
-               	jb	0x4154bf <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x25f>
-               	cmpl	%r12d, 24(%rcx)
-               	jb	0x4154bf <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x25f>
+               	jne	0x4155de <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x2ae>
+               	testl	%ebp, %ebp
+               	js	0x415524 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f4>
+               	cmpl	%ebp, 8(%rbx)
+               	jb	0x415524 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f4>
+               	cmpl	%ebp, 24(%rcx)
+               	jb	0x415524 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1f4>
@@@@
-               	testl	%r12d, %r12d
-               	jle	0x41549c <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x23c>
-               	leaq	32(%rcx), %r10
-               	leaq	16(%rbx), %rbp
-               	movl	%r12d, %r9d
-               	cmpl	$1, %r12d
-               	je	0x4153d3 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x173>
-               	leaq	(%rbx,%r9,8), %rdx
-               	addq	$16, %rdx
-               	cmpq	%rdx, %r10
-               	jae	0x41546b <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x20b>
-               	leaq	(%rcx,%r9,8), %rdx
-               	addq	$32, %rdx
-               	cmpq	%rdx, %rbp
-               	jae	0x41546b <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x20b>
-               	xorl	%esi, %esi
-               	movl	%r9d, %edx
-               	subl	%esi, %edx
-               	movq	%rsi, %r8
-               	notq	%r8
-               	addq	%r9, %r8
-               	andq	$7, %rdx
-               	je	0x415403 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1a3>
-               	nopl	(%rax)
-               	movq	(%rbp,%rsi,8), %rdi
-               	movq	%rdi, (%r10,%rsi,8)
-               	addq	$1, %rsi
-               	addq	$-1, %rdx
-               	jne	0x4153f0 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x190>
-               	cmpq	$7, %r8
-               	jb	0x41549c <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x23c>
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
-               	jne	0x415410 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1b0>
-               	jmp	0x41549c <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x23c>
-               	movl	%r9d, %esi
-               	andl	$-2, %esi
-               	xorl	%edx, %edx
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
-               	movups	(%rbp,%rdx,8), %xmm0
-               	movups	%xmm0, (%r10,%rdx,8)
-               	addq	$2, %rdx
-               	cmpq	%rdx, %rsi
-               	jne	0x415480 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x220>
-               	cmpq	%r9, %rsi
-               	jne	0x4153d5 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x175>
+               	testl	%ebp, %ebp
+               	jle	0x415501 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1d1>
+               	movl	%ebp, %esi
+               	leaq	-1(%rsi), %rdi
+               	movl	%esi, %edx
+               	andl	$7, %edx
+               	cmpq	$7, %rdi
+               	jae	0x41547b <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x14b>
+               	xorl	%edi, %edi
+               	jmp	0x4154d9 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1a9>
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
+               	jne	0x415480 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x150>
+               	testq	%rdx, %rdx
+               	je	0x415501 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1d1>
+               	leaq	(%rbx,%rdi,8), %rsi
+               	addq	$16, %rsi
+               	leaq	(%rcx,%rdi,8), %rcx
+               	addq	$32, %rcx
+               	xorl	%edi, %edi
+               	movq	(%rsi,%rdi,8), %rbp
+               	movq	%rbp, (%rcx,%rdi,8)
+               	addq	$1, %rdi
+               	cmpq	%rdi, %rdx
+               	jne	0x4154f0 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x1c0>

@@ -1872,51 +1910,51 @@
@@@[(6, 8), (23, 27), (28, 30)]@@@
-               	leaq	40(%rsp), %rbp
+               	leaq	40(%rsp), %r12
@@@@
-               	movq	%rbp, %rdx
-               	callq	0x420030 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movq	%r12, %rdx
+               	callq	0x420210 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
@@@@
-               	movl	%r12d, %esi
+               	movl	%ebp, %esi

@@ -2925,9 +2963,10 @@
@@@[(3, 4)]@@@
+               	movq	32(%rsp), %rax

@@ -2955,20 +2994,19 @@
@@@[(12, 15), (17, 18), (20, 21)]@@@
-               	callq	0x41ad90 <ThrowInvalidReceiverTypeException>
-               	nopl	(%rax,%rax)
+               	callq	0x41af30 <ThrowInvalidReceiverTypeException>
@@@@
+               	pushq	%rbp
@@@@
-               	pushq	%r13

@@ -2979,30 +3017,30 @@
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

@@ -3010,16 +3048,16 @@
@@@[(17, 19)]@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)

@@ -3027,118 +3065,119 @@
@@@[(3, 5), (6, 8), (10, 26), (27, 30), (32, 36), (37, 58), (63, 67), (71, 77), (81, 111), (112, 116), (118, 131), (132, 134), (135, 137), (140, 148), (149, 151), (155, 157), (167, 169), (171, 173), (176, 177), (179, 180), (181, 183)]@@@
-               	movq	288(%r12), %rax
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rbx, 288(%r12)
+               	movq	%rbx, 288(%rbp)
@@@@
-               	movslq	16(%r14), %r15
-               	testq	%r15, %r15
-               	jns	0x41697f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	movq	8(%r14), %r13
-               	movq	%r13, 120(%rsp)
-               	movq	%r13, 128(%rsp)
-               	movl	8(%r13), %edx
-               	movl	%edx, %ebx
+               	movl	16(%r14), %r15d
+               	testl	%r15d, %r15d
+               	jns	0x4169df <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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
-               	callq	0x417cc0 <checkRangeIndexes>
-               	movq	(%r13), %rax
+               	callq	0x417e00 <checkRangeIndexes>
+               	movq	(%r12), %rax
@@@@
-               	jge	0x41697f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	leaq	16(,%r15,2), %r10
-               	addq	%r13, %r10
-               	movl	%r15d, %r9d
-               	notl	%r9d
-               	addl	%ebx, %r9d
-               	cmpl	$15, %r9d
-               	jb	0x41695c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
-               	addq	$1, %r9
-               	movq	%r9, %r8
+               	jge	0x4169df <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	movslq	%r15d, %r9
+               	leaq	(%r12,%r9,2), %r11
+               	addq	$16, %r11
+               	movl	%r15d, %r10d
+               	notl	%r10d
+               	addl	%ebx, %r10d
+               	cmpl	$15, %r10d
+               	jb	0x4169bc <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
+               	addq	$1, %r10
+               	movq	%r10, %r8
@@@@
-               	movl	%edi, %esi
-               	andl	$7, %esi
+               	movl	%edi, %edx
+               	andl	$7, %edx
@@@@
-               	jmp	0x416921 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
-               	leaq	240(,%r15,2), %rdx
-               	addq	%r13, %rdx
+               	jmp	0x416981 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
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
-               	jne	0x4168b0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
-               	testq	%rsi, %rsi
-               	je	0x416950 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
-               	movq	%r15, %rcx
-               	addq	%r15, %rcx
-               	leaq	(%rcx,%rax,2), %rax
-               	addq	%r13, %rax
+               	jne	0x416910 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
+               	testq	%rdx, %rdx
+               	je	0x4169b0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
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
-               	jne	0x416940 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
-               	cmpq	%r8, %r9
-               	je	0x41697f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	incq	%rdx
+               	jne	0x4169a0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
+               	cmpq	%r8, %r10
+               	je	0x4169df <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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

@@ -3229,45 +3268,45 @@
@@@[(23, 24), (25, 30)]@@@
-               	movq	16(%r14,%rax,8), %rax
@@@@
-               	cmpq	16(%r15,%rcx,8), %rax
-               	jne	0x416c5e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>
+               	movq	16(%r15,%rcx,8), %rcx
+               	cmpq	%rcx, 16(%r14,%rax,8)
+               	jne	0x416cae <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>

@@ -3524,240 +3563,293 @@
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
-               	je	0x417104 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc4>
+               	movq	%rcx, 576(%rsp)
+               	movq	24(%rbx), %rcx
+               	movq	%rcx, 8(%rsp)
+               	movl	8(%rcx), %r13d
+               	movq	-64(%rax), %rdx
@@@@
-               	xchgl	%ecx, 328(%rdi)
-               	jmp	0x417106 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc6>
-               	xorl	%edi, %edi
+               	movl	$1, %esi
+               	xchgl	%esi, 328(%rdx)
+               	movl	%esi, 108(%rsp)
+               	movq	$0, 120(%rsp)
+               	movl	$1, 128(%rsp)
+               	movb	$0, 132(%rsp)
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x417184 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xf4>
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 120(%rsp)
+               	movl	%ecx, 128(%rsp)
+               	movb	$1, 132(%rsp)
+               	movq	%rdx, 144(%rsp)
@@@@
-               	movaps	%xmm0, 48(%rsp)
-               	movq	$0, 64(%rsp)
-               	testl	%ebp, %ebp
-               	je	0x41775a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x71a>
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
+               	jae	0x41729e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x20e>
+               	movq	40(%rsp), %rbx
+               	movq	%rbx, %r12
+               	subq	%r15, %r12
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
+               	movq	%rax, %r14
+               	cmpq	%r15, %rbx
+               	je	0x41726d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	leaq	16(%r14), %rax
+               	leaq	16(%r15), %rcx
+               	jmp	0x417225 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x195>
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
+               	je	0x41723a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1aa>
+               	movq	%rax, -16(%rax)
+               	movq	-16(%rcx), %rdx
+               	cmpq	%rcx, %rdx
+               	jne	0x4171f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x160>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x4171fa <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x16a>
+               	cmpq	%rbx, %r15
+               	je	0x41726d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	%r15, %rbp
+               	jmp	0x417259 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c9>
+               	nopl	(%rax,%rax)
+               	addq	$16, %rbp
+               	cmpq	%rbx, %rbp
+               	je	0x41726d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417250 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	callq	0x413710 <free@plt>
+               	jmp	0x417250 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	sarq	$5, %r12
+               	testq	%r15, %r15
+               	je	0x41727e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1ee>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
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
-               	jmp	0x4173a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x360>
-               	movq	%rcx, (%r14)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14)
-               	movq	32(%rsp), %r15
-               	movq	104(%rsp), %rbp
+               	testl	%r13d, %r13d
+               	je	0x417886 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x7f6>
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
+               	jmp	0x4174f4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
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
-               	je	0x41763b <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5fb>
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
+               	je	0x417782 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6f2>
+               	movq	16(%rbx,%r14,8), %rcx
@@@@
-               	jb	0x417393 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x353>
-               	movq	%rax, 16(%rsp)
+               	jb	0x4174e7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x457>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	56(%rsp), %r14
-               	movq	%r14, %r15
-               	movq	%rax, 24(%rsp)
-               	subq	%rax, %r15
-               	movq	%r15, %rbx
-               	sarq	$5, %rbx
-               	leaq	200068(%rip), %rax      # 0x44815b <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
+               	movq	40(%rsp), %r13
+               	movq	32(%rsp), %rax
+               	movq	%r13, %rbx
+               	movq	%rax, 16(%rsp)
+               	subq	%rax, %rbx
+               	movq	%rbx, %r12
+               	sarq	$5, %r12
+               	leaq	203573(%rip), %rax      # 0x44905b <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
@@@@
-               	leaq	576(%rsp), %rbp
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rdx
+               	movq	%r15, %rdi
+               	movq	%r12, %rdx
@@@@
-               	callq	0x437a50 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
-               	movq	%r13, 72(%rsp)
-               	movq	%rbp, %rdi
-               	callq	0x413710 <strlen@plt>
+               	callq	0x438440 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
+               	movq	%rbp, 64(%rsp)
+               	movq	%r15, %rdi
+               	callq	0x413720 <strlen@plt>
+               	movq	%rbp, %rcx
@@@@
-               	cmpq	$16, %rax
-               	jb	0x417434 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x3f4>
+               	movq	%rcx, %rax
+               	cmpq	$16, %rbp
+               	jb	0x41757e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ee>
@@@@
-               	movq	%rax, %r13
-               	movq	%rax, 72(%rsp)
-               	movq	%rbp, 88(%rsp)
+               	movq	%rax, 64(%rsp)
+               	movq	%rbp, 80(%rsp)
@@@@
-               	jne	0x417481 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x441>
-               	movb	576(%rsp), %al
-               	movb	%al, (%r13)
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	je	0x4174a4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
-               	leaq	16(%r14), %rax
-               	movq	%rax, (%r14)
-               	movq	72(%rsp), %rcx
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rcx
-               	jne	0x417353 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x313>
-               	movups	(%r13), %xmm0
-               	movups	%xmm0, (%rax)
-               	jmp	0x41735f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x31f>
-               	movq	%r13, %rdi
-               	leaq	576(%rsp), %rsi
+               	jne	0x417594 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x504>
+               	movb	592(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x4175a7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x517>
+               	movq	%rax, %rdi
+               	leaq	592(%rsp), %rsi
@@@@
-               	callq	0x413720 <memcpy@plt>
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	jne	0x41745a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x41a>
-               	testq	%r15, %r15
-               	movq	%rbx, %rax
+               	callq	0x413730 <memcpy@plt>
+               	movq	%rbp, 72(%rsp)
+               	movq	64(%rsp), %rax
+               	movb	$0, (%rax,%rbp)
+               	cmpq	%r13, 48(%rsp)
+               	je	0x4175e3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x553>
+               	leaq	16(%r13), %rax
+               	movq	%rax, (%r13)
+               	movq	64(%rsp), %rcx
+               	leaq	80(%rsp), %rbp
+               	cmpq	%rbp, %rcx
+               	jne	0x4174a3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x413>
+               	movups	(%rbp), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x4174b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x420>
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
-               	je	0x4174f5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b5>
+               	cmpq	%rcx, %r15
+               	cmovaq	%rcx, %r15
+               	addq	%r12, %rax
+               	cmovbq	%rcx, %r15
+               	testq	%r15, %r15
+               	leaq	80(%rsp), %rbx
+               	je	0x417627 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x597>
@@@@
-               	movq	%r13, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%rax, %r14
-               	jmp	0x4174f8 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b8>
-               	xorl	%r14d, %r14d
-               	shlq	$5, %rbp
-               	leaq	(%r14,%rbp), %rax
-               	addq	$16, %rax
-               	movq	%rax, (%r14,%rbp)
+               	jmp	0x417629 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
+               	xorl	%eax, %eax
+               	shlq	$5, %r12
+               	leaq	(%rax,%r12), %rdx
+               	addq	$16, %rdx
+               	movq	%rdx, (%rax,%r12)
+               	movq	64(%rsp), %rcx
+               	cmpq	%rbx, %rcx
+               	je	0x417656 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5c6>
+               	leaq	(%rax,%r12), %rdx
+               	movq	%rcx, (%rdx)
+               	movq	80(%rsp), %rcx
+               	movq	%rcx, 16(%rax,%r12)
+               	jmp	0x41765c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5cc>
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rdx)
@@@@
-               	leaq	88(%rsp), %rdx
-               	cmpq	%rdx, %rcx
-               	movq	32(%rsp), %r15
-               	je	0x41752f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ef>
-               	leaq	(%r14,%rbp), %rax
-               	movq	%rcx, (%rax)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14,%rbp)
-               	jmp	0x417535 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4f5>
-               	movups	(%rdx), %xmm0
-               	movups	%xmm0, (%rax)
-               	movq	80(%rsp), %rax
-               	movq	%rax, 8(%r14,%rbp)
-               	movq	%rdx, 72(%rsp)
-               	movq	$0, 80(%rsp)
-               	movb	$0, 88(%rsp)
-               	cmpq	%rbx, %r12
-               	je	0x417630 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5f0>
-               	leaq	16(%r14), %rcx
-               	leaq	16(%rbx), %rax
-               	jmp	0x4175a6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x566>
-               	nopl	(%rax,%rax)
+               	movq	%rcx, 8(%rax,%r12)
+               	movq	%rbx, 64(%rsp)
+               	movq	$0, 72(%rsp)
+               	movb	$0, 80(%rsp)
+               	movq	16(%rsp), %r12
+               	cmpq	%r12, %r13
+               	movq	%rax, 152(%rsp)
+               	je	0x41772c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x69c>
+               	leaq	16(%rax), %rcx
+               	leaq	16(%r12), %rax
+               	jmp	0x4176d6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x646>
+               	nopl	(%rax)

@@ -3769,241 +3861,239 @@
@@@[(3, 5), (20, 29), (30, 34), (37, 88), (98, 108), (177, 178), (179, 182), (196, 214), (220, 229), (237, 249), (252, 256), (257, 259), (265, 269), (273, 289), (290, 299), (300, 308), (309, 317), (321, 329), (330, 334), (338, 340), (341, 351)]@@@
-               	cmpq	%r12, %rax
+               	cmpq	%r13, %rax
@@@@
-               	cmpq	%rbx, %r12
-               	jne	0x4175d9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
-               	jmp	0x4175f1 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b1>
-               	nop
+               	cmpq	%r12, %r13
+               	je	0x417730 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
+               	movq	%r12, %rbx
+               	jmp	0x417719 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x689>
+               	nopl	(%rax,%rax)
@@@@
-               	cmpq	%r12, %rbx
-               	je	0x4175ec <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5ac>
+               	cmpq	%r13, %rbx
+               	je	0x417730 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
@@@@
-               	je	0x4175d0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	callq	0x413730 <free@plt>
-               	jmp	0x4175d0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	movq	24(%rsp), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4175fe <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%rbx, %rdi
-               	callq	0x413730 <free@plt>
-               	movq	%r14, 48(%rsp)
-               	movq	%rbp, 56(%rsp)
-               	shlq	$5, %r13
-               	movq	%r13, %r12
-               	addq	%r14, %r12
-               	movq	72(%rsp), %rdi
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rdi
-               	je	0x417626 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5e6>
-               	callq	0x413730 <free@plt>
-               	movq	104(%rsp), %rbp
-               	jmp	0x41738e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x34e>
-               	leaq	32(%r14), %rbp
-               	testq	%rbx, %rbx
-               	jne	0x4175f6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b6>
-               	jmp	0x4175fe <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	je	0x417710 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	callq	0x413710 <free@plt>
+               	jmp	0x417710 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	leaq	32(%rax), %rbp
+               	testq	%r12, %r12
+               	movq	96(%rsp), %r13
+               	je	0x417742 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6b2>
+               	movq	%r12, %rdi
+               	callq	0x413710 <free@plt>
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
+               	je	0x4174df <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	callq	0x413710 <free@plt>
+               	jmp	0x4174df <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	movq	128(%rsp), %rbx
-               	movl	116(%rsp), %r14d
-               	je	0x417681 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x641>
-               	callq	0x43e915 <operator delete(void*)>
-               	movq	424(%rsp), %rdi
-               	leaq	440(%rsp), %rax
+               	je	0x4177b6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x726>
+               	callq	0x43f7e5 <operator delete(void*)>
+               	movq	440(%rsp), %rdi
+               	leaq	456(%rsp), %rax
@@@@
-               	movl	44(%rsp), %ecx
@@@@
-               	je	0x417786 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x746>
+               	je	0x4178be <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x82e>
+               	movl	128(%rsp), %ecx
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	je	0x4177b3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%r14d, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%r14d, %r14d
-               	jne	0x4177b3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	144(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4178f2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	addq	$328, %rdi              # imm = 0x148
+               	movl	108(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, (%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x4178f2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
@@@@
-               	je	0x4177b3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	$0, 600(%rsp)
-               	movq	8(%rsp), %rax
+               	je	0x4178f2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	js	0x4179f3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x9b3>
+               	movq	%rbp, 8(%rsp)
+               	js	0x417b43 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xab3>
@@@@
-               	movq	%r15, %rax
+               	movq	%r14, %rax
@@@@
-               	callq	0x429d60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %rbp
+               	callq	0x42a560 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r15
@@@@
-               	leaq	274211(%rip), %rax      # 0x45a790 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%rbp)
-               	movl	%ebx, 24(%rbp)
-               	movq	%rcx, 32(%rsp)
-               	movq	%rcx, 600(%rsp)
-               	cmpq	%r13, %r14
-               	jne	0x417897 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x857>
-               	movq	8(%rsp), %rax
+               	leaq	275748(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r15)
+               	movl	%ebx, 24(%r15)
+               	movq	%rcx, 96(%rsp)
+               	movq	%rcx, 616(%rsp)
+               	cmpq	%r13, %rbp
+               	jne	0x4179d7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x947>
+               	movq	24(%rsp), %rax
@@@@
-               	jmp	0x41794a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x90a>
-               	sarq	$5, %r15
-               	movq	8(%rsp), %rax
+               	jmp	0x417a95 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xa05>
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
-               	callq	0x438350 <CreateStringFromCString>
-               	movq	168(%rsp), %rax
-               	movq	%r15, %rcx
+               	leaq	184(%rsp), %rsi
+               	callq	0x438fd0 <CreateStringFromCString>
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
-               	jne	0x4178d0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x890>
-               	movq	32(%rsp), %r15
-               	movq	%r15, 568(%rsp)
-               	movq	584(%rsp), %rcx
+               	addq	$-1, %rbp
+               	jne	0x417a10 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x980>
+               	movq	96(%rsp), %r15
+               	movq	%r15, 584(%rsp)
+               	movq	600(%rsp), %rcx

@@ -4011,135 +4101,133 @@
@@@[(3, 13), (17, 22), (86, 99), (181, 189), (199, 219), (223, 227), (228, 230)]@@@
-               	leaq	198642(%rip), %rdi      # 0x4481e0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
-               	callq	0x4380b0 <std::__throw_length_error(char const*)>
-               	callq	0x41aeb0 <ThrowIllegalArgumentException>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	leaq	202146(%rip), %rdi      # 0x4490e0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x438aa0 <std::__throw_length_error(char const*)>
+               	callq	0x41b050 <ThrowIllegalArgumentException>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	je	0x417b0f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	callq	0x43e915 <operator delete(void*)>
-               	leaq	48(%rsp), %rdi
-               	callq	0x4380d0 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
-               	movq	120(%rsp), %rdi
-               	movl	44(%rsp), %esi
-               	callq	0x438130 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	je	0x417c5a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	callq	0x43f7e5 <operator delete(void*)>
+               	leaq	32(%rsp), %rdi
+               	callq	0x438ac0 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
+               	leaq	112(%rsp), %rdi
+               	callq	0x438b20 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	jne	0x417b0a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xaca>
-               	jmp	0x417b0f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	jne	0x417c55 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbc5>
+               	jmp	0x417c5a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	je	0x417c9c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc5c>
-               	movq	16(%rsp), %rbx
-               	movq	(%rbx), %rdi
-               	addq	$16, %rbx
-               	cmpq	%rbx, %rdi
-               	je	0x417c91 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc51>
-               	callq	0x413730 <free@plt>
-               	addq	$16, %rbx
-               	cmpq	24(%rsp), %rbx
-               	jne	0x417c80 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc40>
+               	je	0x417de4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd54>
+               	movq	16(%rsp), %rbp
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417dd9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd49>
+               	callq	0x413710 <free@plt>
+               	addq	$16, %rbp
+               	cmpq	8(%rsp), %rbp
+               	jne	0x417dc7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd37>
@@@@
-               	callq	0x413730 <free@plt>
-               	movq	%rbp, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%rbx, %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -4430,54 +4518,55 @@
@@@[(15, 18), (20, 34), (35, 47)]@@@
-               	movq	%rcx, 96(%rsp)
+               	movq	88(%rsp), %rax
+               	movq	%rax, 96(%rsp)
@@@@
-               	movq	16(%rax), %rdx
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	88(%rsp), %rax
+               	movq	%rax, 112(%rsp)
+               	movq	56(%rsp), %rcx
+               	movq	%rcx, 120(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)
+               	movq	88(%rsp), %rax
+               	movq	%rax, 128(%rsp)
+               	movq	72(%rsp), %rcx
+               	movq	%rcx, 136(%rsp)
+               	movq	(%rax), %rdx
@@@@
-               	movq	56(%rsp), %rax
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 112(%rsp)
-               	movq	%rax, 120(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
-               	movq	72(%rsp), %rax
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 128(%rsp)
-               	movq	%rax, 136(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 32(%rcx)

@@ -4499,30 +4588,31 @@
@@@[(3, 6), (8, 22), (23, 35)]@@@
-               	movq	%rcx, 240(%rsp)
+               	movq	232(%rsp), %rax
+               	movq	%rax, 240(%rsp)
@@@@
-               	movq	16(%rax), %rdx
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	232(%rsp), %rax
+               	movq	%rax, 256(%rsp)
+               	movq	200(%rsp), %rcx
+               	movq	%rcx, 264(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)
+               	movq	232(%rsp), %rax
+               	movq	%rax, 272(%rsp)
+               	movq	216(%rsp), %rcx
+               	movq	%rcx, 280(%rsp)
+               	movq	(%rax), %rdx
@@@@
-               	movq	200(%rsp), %rax
-               	movq	232(%rsp), %rcx
-               	movq	%rcx, 256(%rsp)
-               	movq	%rax, 264(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
-               	movq	216(%rsp), %rax
-               	movq	232(%rsp), %rcx
-               	movq	%rcx, 272(%rsp)
-               	movq	%rax, 280(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 32(%rcx)

@@ -4530,7 +4620,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -4930,80 +5019,81 @@
@@@[(15, 18), (20, 34), (35, 71)]@@@
-               	movq	%rcx, 128(%rsp)
+               	movq	120(%rsp), %rax
+               	movq	%rax, 128(%rsp)
@@@@
-               	movq	16(%rax), %rdx
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	120(%rsp), %rax
+               	movq	%rax, 144(%rsp)
+               	movq	56(%rsp), %rcx
+               	movq	%rcx, 152(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)
+               	movq	120(%rsp), %rax
+               	movq	%rax, 160(%rsp)
+               	movq	72(%rsp), %rcx
+               	movq	%rcx, 168(%rsp)
+               	movq	(%rax), %rdx
@@@@
-               	movq	56(%rsp), %rax
-               	movq	120(%rsp), %rcx
-               	movq	%rcx, 144(%rsp)
-               	movq	%rax, 152(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
-               	movq	72(%rsp), %rax
-               	movq	120(%rsp), %rcx
-               	movq	%rcx, 160(%rsp)
-               	movq	%rax, 168(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 32(%rcx)
-               	movq	88(%rsp), %rax
-               	movq	120(%rsp), %rcx
-               	movq	%rcx, 176(%rsp)
-               	movq	%rax, 184(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 40(%rcx)
-               	movq	104(%rsp), %rax
-               	movq	120(%rsp), %rcx
-               	movq	%rcx, 192(%rsp)
-               	movq	%rax, 200(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 48(%rcx)
+               	movq	120(%rsp), %rax
+               	movq	%rax, 176(%rsp)
+               	movq	88(%rsp), %rcx
+               	movq	%rcx, 184(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 40(%rax)
+               	movq	120(%rsp), %rax
+               	movq	%rax, 192(%rsp)
+               	movq	104(%rsp), %rcx
+               	movq	%rcx, 200(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 48(%rax)

@@ -5031,42 +5121,43 @@
@@@[(3, 6), (8, 22), (23, 59)]@@@
-               	movq	%rcx, 352(%rsp)
+               	movq	344(%rsp), %rax
+               	movq	%rax, 352(%rsp)
@@@@
-               	movq	16(%rax), %rdx
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	344(%rsp), %rax
+               	movq	%rax, 368(%rsp)
+               	movq	280(%rsp), %rcx
+               	movq	%rcx, 376(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)
+               	movq	344(%rsp), %rax
+               	movq	%rax, 384(%rsp)
+               	movq	296(%rsp), %rcx
+               	movq	%rcx, 392(%rsp)
+               	movq	(%rax), %rdx
@@@@
-               	movq	280(%rsp), %rax
-               	movq	344(%rsp), %rcx
-               	movq	%rcx, 368(%rsp)
-               	movq	%rax, 376(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
-               	movq	296(%rsp), %rax
-               	movq	344(%rsp), %rcx
-               	movq	%rcx, 384(%rsp)
-               	movq	%rax, 392(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 32(%rcx)
-               	movq	312(%rsp), %rax
-               	movq	344(%rsp), %rcx
-               	movq	%rcx, 400(%rsp)
-               	movq	%rax, 408(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 40(%rcx)
-               	movq	328(%rsp), %rax
-               	movq	344(%rsp), %rcx
-               	movq	%rcx, 416(%rsp)
-               	movq	%rax, 424(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 48(%rcx)
+               	movq	344(%rsp), %rax
+               	movq	%rax, 400(%rsp)
+               	movq	312(%rsp), %rcx
+               	movq	%rcx, 408(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 40(%rax)
+               	movq	344(%rsp), %rax
+               	movq	%rax, 416(%rsp)
+               	movq	328(%rsp), %rcx
+               	movq	%rcx, 424(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 48(%rax)

@@ -5074,6 +5165,7 @@
@@@[(3, 4)]@@@
+               	nopl	(%rax,%rax)

@@ -5454,63 +5546,64 @@
@@@[(3, 14), (15, 27), (67, 73), (85, 87)]@@@
-               	movq	8(%rax), %r13
-               	movq	%r13, 72(%rsp)
-               	movq	%r13, 80(%rsp)
-               	movq	%r13, 88(%rsp)
-               	movl	312913(%rip), %eax      # 0x465af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	movq	8(%rax), %rax
+               	movq	%rax, 72(%rsp)
+               	movq	%rax, 80(%rsp)
+               	movq	80(%rsp), %rbp
+               	movq	%rbp, 88(%rsp)
+               	movl	314492(%rip), %eax      # 0x466278 <state_global$kotlin.native.concurrent.UNINITIALIZED>
@@@@
-               	je	0x4194bf <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x11f>
-               	leaq	312901(%rip), %rdi      # 0x465af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
-               	leaq	470(%rip), %rsi         # 0x419690 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
-               	callq	0x43bf40 <CallInitGlobalPossiblyLock>
-               	cmpq	%r13, 312810(%rip)      # 0x465ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	je	0x419561 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c1>
+               	je	0x419614 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x124>
+               	leaq	314480(%rip), %rdi      # 0x466278 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	leaq	481(%rip), %rsi         # 0x4197f0 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
+               	callq	0x43cc80 <CallInitGlobalPossiblyLock>
+               	cmpq	314389(%rip), %rbp      # 0x466230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	je	0x4196b6 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c6>
@@@@
-               	callq	0x43c120 <ThrowException>
-               	movq	8(%rbx), %rbp
-               	movl	312721(%rip), %eax      # 0x465afc <state_global$kotlin.native.concurrent.INITIALIZING>
+               	callq	0x43ce60 <ThrowException>
+               	movq	8(%rbx), %r13
+               	movl	314300(%rip), %eax      # 0x46627c <state_global$kotlin.native.concurrent.INITIALIZING>
@@@@
-               	movq	%rax, 8(%rbp)
+               	movq	%rax, 8(%r13)

@@ -5535,32 +5628,33 @@
@@@[(36, 39)]@@@
-               	callq	0x43c120 <ThrowException>
+               	callq	0x43ce60 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -5577,41 +5671,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 312206(%rip)      # 0x465ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	leaq	312199(%rip), %rdi      # 0x465ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	%rcx, 313774(%rip)      # 0x466230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	leaq	313767(%rip), %rdi      # 0x466230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	313760(%rip), %rax      # 0x466230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
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

@@ -5628,41 +5723,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 311958(%rip)      # 0x465ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
-               	leaq	311951(%rip), %rdi      # 0x465ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	%rcx, 313526(%rip)      # 0x466238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	leaq	313519(%rip), %rdi      # 0x466238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	313512(%rip), %rax      # 0x466238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
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

@@ -5671,15 +5767,18 @@
@@@[(12, 21)]@@@
-               	cmpb	$0, -72(%rax)
-               	jne	0x419a10 <kfun:kotlin.native.concurrent.Lock#lock(){}+0x180>
-               	movb	$1, -72(%rax)
+               	movl	-72(%rax), %ecx
+               	cmpl	$2, %ecx
+               	je	0x419b7e <kfun:kotlin.native.concurrent.Lock#lock(){}+0x18e>
+               	cmpl	$3, %ecx
+               	je	0x419bdc <kfun:kotlin.native.concurrent.Lock#lock(){}+0x1ec>
+               	movl	$2, -72(%rax)

@@ -5747,21 +5846,21 @@
@@@[(3, 7)]@@@
-               	nopl	(%rax,%rax)
-               	movzbl	316225(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movzbl	317785(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>

@@ -5771,25 +5870,26 @@
@@@[(3, 6)]@@@
-               	nopl	(%rax)
+               	callq	0x41b1f0 <ThrowFileFailedToInitializeException>
+               	nopw	%cs:(%rax,%rax)

@@ -5859,44 +5959,45 @@
@@@[(15, 18), (20, 36)]@@@
-               	movq	%rcx, 72(%rsp)
+               	movq	64(%rsp), %rax
+               	movq	%rax, 72(%rsp)
@@@@
-               	movq	16(%rax), %rdx
-               	movq	%rcx, 32(%rax)
-               	movq	48(%rsp), %rax
-               	movq	64(%rsp), %rcx
-               	movq	%rcx, 88(%rsp)
-               	movq	%rax, 96(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	64(%rsp), %rax
+               	movq	%rax, 88(%rsp)
+               	movq	48(%rsp), %rcx
+               	movq	%rcx, 96(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)

@@ -5915,24 +6016,25 @@
@@@[(3, 6), (8, 24)]@@@
-               	movq	%rcx, 176(%rsp)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 176(%rsp)
@@@@
-               	movq	16(%rax), %rdx
-               	movq	%rcx, 32(%rax)
-               	movq	152(%rsp), %rax
-               	movq	168(%rsp), %rcx
-               	movq	%rcx, 192(%rsp)
-               	movq	%rax, 200(%rsp)
-               	movq	(%rcx), %rdx
-               	movq	%rax, 24(%rcx)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 16(%rax)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 192(%rsp)
+               	movq	152(%rsp), %rcx
+               	movq	%rcx, 200(%rsp)
+               	movq	(%rax), %rdx
+               	movq	%rcx, 24(%rax)

@@ -5940,7 +6042,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -5949,14 +6051,15 @@
@@@[(3, 7), (11, 18)]@@@
-               	subq	$104, %rsp
-               	movq	%rsi, %r14
+               	subq	$120, %rsp
+               	movq	%rsi, 72(%rsp)
@@@@
-               	je	0x419dd3 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x23>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movslq	8(%rbx), %r13
+               	je	0x419f55 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x25>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	8(%rbx), %r14d
+               	movslq	%r14d, %r13

@@ -5971,17 +6074,17 @@
@@@[(3, 4), (5, 8)]@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
-               	movq	$0, 96(%rsp)
+               	movq	$0, 112(%rsp)

@@ -6020,54 +6123,53 @@
@@@[(3, 9), (15, 51), (54, 59), (63, 75)]@@@
-               	jne	0x419f2c <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x17c>
-               	jmp	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movl	%r13d, %eax
+               	jne	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x181>
+               	jmp	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movl	%r14d, %eax
@@@@
-               	je	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movq	(%rax), %rbp
-               	cmpl	%r13d, 8(%rbp)
-               	jne	0x419f40 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x190>
-               	testq	%rbp, %rbp
-               	jne	0x419f9d <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1ed>
-               	jmp	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	nop
-               	movq	%rbp, %rbx
-               	movq	(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x419f80 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1d0>
-               	movq	%rsi, %rax
+               	je	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movq	(%rax), %rbx
+               	cmpl	%r14d, 8(%rbx)
+               	jne	0x41a0d0 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1a0>
+               	testq	%rbx, %rbx
+               	jne	0x41a11d <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1ed>
+               	jmp	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	nopl	(%rax)
+               	movq	%rbx, %rbp
+               	movq	(%rbx), %rbx
+               	testq	%rbx, %rbx
+               	je	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x41a100 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1d0>
@@@@
-               	je	0x419f8f <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1df>
-               	jmp	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	nopw	(%rax,%rax)
+               	je	0x41a10f <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1df>
+               	jmp	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
@@@@
-               	jne	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	cmpl	%r13d, %esi
-               	jne	0x419f40 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x190>
-               	testq	%rbx, %rbx
-               	je	0x41a0c1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movq	16(%rbp), %rax
+               	jne	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	cmpl	%r14d, %esi
+               	jne	0x41a0d0 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1a0>
+               	testq	%rbp, %rbp
+               	je	0x41a246 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movq	16(%rbx), %rax

@@ -6076,60 +6178,61 @@
@@@[(20, 23), (28, 29), (34, 40), (41, 45), (46, 56), (67, 74), (75, 77), (80, 82)]@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	8(%rsp), %rcx
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
+               	movq	8(%rsp), %rcx
@@@@
-               	leaq	96(%rsp), %rbx
-               	leaq	188868(%rip), %rdx      # 0x4481f8 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
-               	movq	%rsp, %rbp
+               	leaq	112(%rsp), %r13
+               	leaq	192324(%rip), %rdx      # 0x4490f8 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	movq	%rsp, %rbx
@@@@
-               	movq	%rbp, %rdi
-               	movl	%r13d, %ecx
+               	movq	%rbx, %rdi
+               	movl	%r14d, %ecx
@@@@
-               	callq	0x438d80 <konan::snprintf(char*, unsigned long, char const*, ...)>
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rsi
-               	callq	0x438350 <CreateStringFromCString>
-               	leaq	293589(%rip), %rdi      # 0x461b30 <__unnamed_36>
+               	callq	0x439a10 <konan::snprintf(char*, unsigned long, char const*, ...)>
+               	movq	%rbx, %rdi
+               	movq	%r13, %rsi
+               	callq	0x438fd0 <CreateStringFromCString>
+               	leaq	295061(%rip), %rdi      # 0x462270 <__unnamed_36>
@@@@
-               	leaq	293573(%rip), %rdi      # 0x461b50 <__unnamed_37>
-               	movq	%r14, %rdx
-               	callq	0x438b50 <Kotlin_String_plusImpl>
+               	leaq	295045(%rip), %rdi      # 0x462290 <__unnamed_37>
+               	movq	72(%rsp), %rbx
+               	movq	%rbx, %rdx
+               	callq	0x4397e0 <Kotlin_String_plusImpl>
@@@@
-               	movq	%rax, (%r14)
+               	movq	%rax, (%rbx)
@@@@
-               	movq	%rcx, (%r14)
+               	movq	%rcx, (%rbx)

@@ -6137,41 +6240,41 @@
@@@[(6, 12), (14, 28), (34, 40), (45, 47)]@@@
-               	movq	-64(%r15), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	-64(%r15), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x41a10e <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x35e>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x41a10e <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x35e>
+               	testq	%rbp, %rbp
+               	je	0x41a294 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x364>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x41a294 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x364>
@@@@
-               	je	0x41a10e <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x35e>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x41a294 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x364>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -6235,29 +6338,29 @@
@@@[(9, 17), (18, 22)]@@@
-               	testb	$2, 89(%rax)
-               	jne	0x41a241 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x81>
-               	jmp	0x41a270 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	jne	0x41a3c7 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x87>
+               	jmp	0x41a3f6 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
@@@@
-               	testb	$2, 89(%rax)
-               	je	0x41a270 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	je	0x41a3f6 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>

@@ -6267,7 +6370,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -6362,19 +6465,19 @@
@@@[(17, 23)]@@@
-               	jne	0x41a424 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
-               	movq	8(%r14), %rax
-               	cmpq	8(%rbx), %rax
+               	jne	0x41a5b4 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
+               	movq	8(%rbx), %rax
+               	cmpq	%rax, 8(%r14)

@@ -6584,30 +6687,31 @@
@@@[(21, 32), (37, 39)]@@@
-               	movq	%rcx, 308000(%rip)      # 0x465ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	leaq	307993(%rip), %rdi      # 0x465ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	movq	$0, 24(%rax)
-               	movq	307978(%rip), %rsi      # 0x465ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	callq	0x426910 <InitAndRegisterGlobal>
+               	movq	%rcx, 309520(%rip)      # 0x466250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	leaq	309513(%rip), %rdi      # 0x466250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	309506(%rip), %rax      # 0x466250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	$0, 8(%rax)
+               	movq	309491(%rip), %rsi      # 0x466250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	callq	0x426f70 <InitAndRegisterGlobal>
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -7173,21 +7277,21 @@
@@@[(13, 29)]@@@
-               	callq	0x429d60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
-               	addq	$16, %rax
-               	movq	$0, 8(%r15)
-               	leaq	266610(%rip), %rcx      # 0x45c3d0 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
-               	movq	%rcx, 16(%r15)
-               	movq	%rax, 56(%rsp)
-               	movq	%rax, 305258(%rip)      # 0x465ad8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	callq	0x42a560 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
+               	movq	$0, 8(%rax)
+               	leaq	268053(%rip), %rdx      # 0x45cb10 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 56(%rsp)
+               	movq	%rcx, 306765(%rip)      # 0x466258 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	movq	306758(%rip), %r15      # 0x466258 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>

@@ -7346,27 +7450,28 @@
@@@[(15, 17), (18, 21)]@@@
-               	movslq	16(%rax), %rcx
+               	movl	16(%rax), %ecx
@@@@
-               	jbe	0x41b5cb <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>+0x14b>
+               	jbe	0x41b76d <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>+0x14d>
+               	movslq	%ecx, %rcx

@@ -8685,18 +8790,18 @@
@@@[(8, 18)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41cb7b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x18b>
-               	movzbl	303803(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41cd2d <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x19d>
+               	movzbl	305315(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>

@@ -8709,40 +8814,43 @@
@@@[(10, 12), (13, 16), (26, 29), (34, 38), (39, 42)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cb99 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41cd4b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx
@@@@
-               	jmp	0x41cb42 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x152>
+               	jmp	0x41ccf2 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x162>
+               	nopl	(%rax)
@@@@
-               	je	0x41cbe1 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1f1>
-               	movslq	20(%rbx), %rcx
+               	je	0x41cd93 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x203>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cb99 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41cd4b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx

@@ -8754,23 +8862,23 @@
@@@[(21, 27)]@@@
-               	callq	0x43c120 <ThrowException>
-               	callq	0x41aa00 <ThrowNullPointerException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x43ce60 <ThrowException>
+               	callq	0x41aba0 <ThrowNullPointerException>
+               	nopl	(%rax,%rax)

@@ -8801,52 +8909,52 @@
@@@[(45, 55)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41cf04 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x314>
-               	movzbl	303191(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41d0c4 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x324>
+               	movzbl	304687(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>

@@ -8865,19 +8973,20 @@
@@@[(10, 12), (13, 16)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cf51 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41d111 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -8885,14 +8994,14 @@
@@@[(9, 13)]@@@
-               	jmp	0x41ce59 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
-               	nopl	(%rax)
+               	jmp	0x41d009 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
+               	nop

@@ -8903,23 +9012,24 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41cf99 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3a9>
-               	movslq	20(%rbx), %rcx
+               	je	0x41d159 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3b9>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cf51 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41d111 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -8927,11 +9037,12 @@
@@@[(9, 12)]@@@
-               	jmp	0x41cced <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	jmp	0x41ce9d <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	nopw	%cs:(%rax,%rax)

@@ -9045,13 +9156,13 @@
@@@[(6, 16)]@@@
-               	je	0x41d0e4 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	68(%rbx), %eax
-               	cmpl	76(%rbx), %eax
-               	jle	0x41d1ec <kfun:kotlin.collections.HashMap.rehash#internal+0x18c>
+               	je	0x41d2a4 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	76(%rbx), %eax
+               	cmpl	%eax, 68(%rbx)
+               	jle	0x41d3de <kfun:kotlin.collections.HashMap.rehash#internal+0x1be>

@@ -9068,67 +9179,67 @@
@@@[(10, 19), (58, 64), (81, 82), (83, 85)]@@@
-               	movslq	68(%rbx), %rdx
-               	cmpq	%rdx, %r13
-               	jge	0x41d1f5 <kfun:kotlin.collections.HashMap.rehash#internal+0x195>
-               	movzbl	302084(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	68(%rbx), %edx
+               	movslq	%edx, %rax
+               	cmpq	%rax, %r13
+               	jge	0x41d3aa <kfun:kotlin.collections.HashMap.rehash#internal+0x18a>
+               	movzbl	303566(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	ja	0x41d150 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	movq	288(%rbp), %rax
-               	jmp	0x41d229 <kfun:kotlin.collections.HashMap.rehash#internal+0x1c9>
+               	ja	0x41d310 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -9136,15 +9247,16 @@
@@@[(3, 13), (15, 16), (17, 19)]@@@
-               	movl	8(%rax), %ecx
-               	movq	8(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	cmpl	%r14d, %ecx
-               	jne	0x41d30f <kfun:kotlin.collections.HashMap.rehash#internal+0x2af>
+               	movl	8(%rax), %eax
+               	movq	8(%rsp), %rcx
+               	movq	%rcx, 288(%rbp)
+               	cmpl	%r14d, %eax
+               	jne	0x41d4d2 <kfun:kotlin.collections.HashMap.rehash#internal+0x2b2>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -9202,14 +9314,13 @@
@@@[(10, 13)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)

@@ -9278,43 +9389,43 @@
@@@[(15, 17)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -9397,65 +9508,65 @@
@@@[(19, 21)]@@@
-               	movb	72(%r12), %cl
+               	movl	72(%r12), %ecx

@@ -9534,7 +9645,7 @@
@@@[(3, 5)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -9628,37 +9739,38 @@
@@@[(3, 7), (9, 18), (23, 25), (27, 29), (32, 34), (38, 42), (43, 49)]@@@
-               	movabsq	$17179869184, %rsi      # imm = 0x400000000
-               	movq	%rsi, 16(%rsp)
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 16(%rsp)
@@@@
-               	movq	8(%rsp), %rcx
-               	cmpl	8(%rdx), %r8d
-               	movq	%rcx, 288(%rbp)
-               	jl	0x41de34 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5f4>
+               	movl	8(%rdx), %edx
+               	movq	8(%rsp), %rsi
+               	movq	%rsi, 288(%rbp)
+               	cmpl	%edx, %r8d
+               	jl	0x41dffd <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5fd>
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
-               	jg	0x41db9a <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	movq	%rcx, %r13
+               	jg	0x41dd5c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>
@@@@
-               	subl	%edx, %ecx
-               	testl	%ecx, %ecx
-               	jle	0x41db9a <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	subl	%edx, %esi
+               	testl	%esi, %esi
+               	jle	0x41dd5c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>

@@ -9668,15 +9780,15 @@
@@@[(3, 21)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	leal	3(%rdx), %esi
-               	testl	%edx, %edx
-               	cmovnsl	%edx, %esi
-               	sarl	$2, %esi
-               	cmpl	%esi, %eax
-               	jge	0x41dd20 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	leal	3(%rcx), %edx
+               	testl	%ecx, %ecx
+               	cmovnsl	%ecx, %edx
+               	sarl	$2, %edx
+               	cmpl	%edx, %eax
+               	jge	0x41dee0 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>

@@ -9699,13 +9811,14 @@
@@@[(3, 14), (15, 17)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	cmpl	%eax, %edx
-               	jge	0x41ddf9 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
-               	movaps	%xmm0, (%rsp)
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	cmpl	%eax, %ecx
+               	jge	0x41dfc2 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rcx

@@ -9725,19 +9838,18 @@
@@@[(17, 20)]@@@
-               	jmp	0x41dd64 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x524>
-               	nopw	(%rax,%rax)
+               	jmp	0x41df2b <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x52b>

@@ -9754,13 +9866,14 @@
@@@[(7, 10), (11, 15)]@@@
-               	jmp	0x41d8e8 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
-               	movaps	%xmm0, (%rsp)
+               	jmp	0x41daa8 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
@@@@
-               	movq	%rcx, 8(%rsp)
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax
+               	movq	%rax, 8(%rsp)

@@ -9804,16 +9917,17 @@
@@@[(3, 4), (5, 6), (7, 10)]@@@
+               	movl	8(%rax), %eax
@@@@
-               	cmpl	8(%rax), %esi
@@@@
-               	jle	0x41ddf9 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
+               	cmpl	%eax, %esi
+               	jle	0x41dfc2 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>

@@ -9833,43 +9947,45 @@
@@@[(22, 26), (50, 54)]@@@
-               	addl	$1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 76(%rbx)
@@@@
-               	callq	0x43c120 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43ce60 <ThrowException>
+               	nopl	(%rax,%rax)

@@ -10018,46 +10134,46 @@
@@@[(37, 39)]@@@
-               	movzbl	72(%rbx), %ecx
+               	movl	72(%rbx), %ecx

@@ -10119,11 +10235,13 @@
@@@[(8, 12)]@@@
-               	addl	$-1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 76(%rbx)

@@ -10134,8 +10252,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)

@@ -10376,26 +10494,26 @@
@@@[(22, 30)]@@@
-               	movl	$4294967165, %ecx       # imm = 0xFFFFFF7D
-               	addl	92(%rax), %ecx
-               	cmpl	$2, %ecx
-               	jb	0x41e6ee <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>
+               	movl	92(%rax), %eax
+               	addl	$4294967165, %eax       # imm = 0xFFFFFF7D
+               	cmpl	$2, %eax
+               	jb	0x41e8be <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>

@@ -10480,51 +10598,50 @@
@@@[(6, 14), (18, 19), (47, 51), (58, 68)]@@@
-               	je	0x41e8bd <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x5d>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	jmp	0x41e8d9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x79>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x41ea99 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x41ea99 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
@@@@
+               	movl	16(%rbx), %eax
@@@@
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)
@@@@
-               	je	0x41e943 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
+               	je	0x41eb03 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)

@@ -10567,26 +10684,27 @@
@@@[(6, 20), (21, 36)]@@@
-               	je	0x41ea0b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %eax
-               	movq	8(%r15), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41ea64 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc4>
-               	leal	1(%rax), %edx
+               	je	0x41ebcb <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %ecx
+               	movq	8(%r15), %rax
+               	cmpl	68(%rax), %ecx
+               	jge	0x41ec29 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc9>
+               	leal	1(%rcx), %edx
@@@@
-               	movl	%eax, 20(%r15)
-               	movq	8(%rcx), %rcx
-               	movq	%rcx, 32(%rsp)
-               	cmpl	%eax, 8(%rcx)
-               	jbe	0x41eaa8 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x108>
-               	cltq
-               	movq	16(%rcx,%rax,8), %rbx
+               	movl	%ecx, 20(%r15)
+               	movq	8(%rax), %rax
+               	movq	%rax, 32(%rsp)
+               	movl	20(%r15), %ecx
+               	cmpl	%ecx, 8(%rax)
+               	jbe	0x41ec6d <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x10d>
+               	movslq	%ecx, %rcx
+               	movq	16(%rax,%rcx,8), %rbx

@@ -10600,19 +10718,19 @@
@@@[(16, 22)]@@@
-               	callq	0x43c120 <ThrowException>
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax)
+               	callq	0x43ce60 <ThrowException>
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -10636,30 +10754,31 @@
@@@[(6, 25), (36, 40)]@@@
-               	je	0x41eb22 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %r13d
-               	movq	8(%r15), %rbp
-               	cmpl	68(%rbp), %r13d
-               	jge	0x41eba0 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf0>
-               	leal	1(%r13), %eax
-               	movl	%eax, 16(%r15)
-               	movl	%r13d, 20(%r15)
+               	je	0x41ecf2 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %eax
+               	movq	8(%r15), %r13
+               	cmpl	68(%r13), %eax
+               	jge	0x41ed72 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf2>
+               	leal	1(%rax), %ecx
+               	movl	%ecx, 16(%r15)
+               	movl	%eax, 20(%r15)
+               	movl	20(%r15), %ebp
@@@@
-               	movq	%rbp, 24(%rax)
-               	movl	%r13d, 32(%rax)
+               	movq	%r13, 24(%rax)
+               	movl	%ebp, 32(%rax)

@@ -10706,16 +10825,17 @@
@@@[(13, 15), (16, 19)]@@@
-               	movslq	16(%r15), %rcx
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41ec86 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x96>
+               	jbe	0x41ee59 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x99>
+               	movslq	%ecx, %rcx

@@ -10725,8 +10845,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -10746,18 +10866,19 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41ed2b <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9b>
-               	movslq	16(%r15), %rcx
+               	je	0x41eefe <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9e>
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41ed30 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa0>
+               	jbe	0x41ef03 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa3>
+               	movslq	%ecx, %rcx

@@ -10767,9 +10888,9 @@
@@@[(3, 9)]@@@
-               	callq	0x41aa00 <ThrowNullPointerException>
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41aba0 <ThrowNullPointerException>
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax,%rax)

@@ -11840,26 +11961,27 @@
@@@[(17, 19), (26, 33)]@@@
-               	movslq	16(%rbx), %r14
+               	movl	16(%rbx), %r14d
@@@@
-               	jbe	0x41fc86 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd6>
-               	movq	(%rbp), %rax
-               	movw	%r15w, 16(%rbp,%r14,2)
+               	jbe	0x41fe59 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd9>
+               	movslq	%r14d, %rax
+               	movq	(%rbp), %rcx
+               	movw	%r15w, 16(%rbp,%rax,2)

@@ -11873,8 +11995,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -11927,17 +12049,17 @@
@@@[(3, 5), (6, 8), (12, 22)]@@@
-               	movl	%ecx, %ebp
+               	movl	%ecx, %ebx
@@@@
-               	movq	%rsi, %rbx
+               	movq	%rsi, %r15
@@@@
-               	je	0x41fd3f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	leaq	268023(%rip), %r12      # 0x461440 <__unnamed_8>
-               	cmovneq	%rbx, %r12
+               	je	0x41ff0f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testq	%r15, %r15
+               	leaq	269415(%rip), %rbp      # 0x461b80 <__unnamed_8>
+               	cmovneq	%r15, %rbp

@@ -11951,7 +12073,7 @@
@@@[(3, 5)]@@@
-               	movq	(%r12), %rax
+               	movq	(%rbp), %rax

@@ -11959,49 +12081,51 @@
@@@[(3, 5), (7, 9), (10, 28), (31, 42), (44, 67), (68, 70), (74, 78)]@@@
-               	movq	%r12, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	movl	%ebp, %esi
+               	movl	%ebx, %esi
@@@@
-               	callq	0x41b5f0 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
-               	movl	%ebp, %ebx
-               	subl	%r13d, %ebx
-               	movq	8(%rsp), %r14
-               	movl	16(%r14), %esi
-               	addl	%ebx, %esi
-               	movq	%r14, %rdi
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movq	(%r12), %rax
+               	callq	0x41b790 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
+               	movl	%ebx, %r14d
+               	subl	%r13d, %r14d
+               	movq	8(%rsp), %r15
+               	movl	16(%r15), %esi
+               	addl	%r14d, %esi
+               	movq	%r15, %rdi
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	(%rbp), %rax
@@@@
-               	jne	0x41fe6d <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x15d>
-               	movslq	16(%r14), %rbp
-               	movq	8(%r14), %rax
-               	movq	%rax, 56(%rsp)
-               	leaq	(%rax,%rbp,2), %rdi
+               	jne	0x42004b <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x16b>
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
-               	callq	0x413720 <memcpy@plt>
-               	addl	%ebp, %ebx
-               	movq	%r14, %rdi
-               	movl	%ebx, %esi
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r14)
-               	movq	%r14, %rbx
+               	leaq	16(,%rax,2), %rsi
+               	addq	%rbp, %rsi
+               	movslq	%r14d, %rbp
+               	movq	%rbp, %rdx
+               	addq	%rbp, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	addl	%r15d, %ebp
+               	movq	8(%rsp), %r15
+               	movq	%r15, %rdi
+               	movl	%ebp, %esi
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%ebp, 16(%r15)
@@@@
-               	movq	%rbx, (%rdx)
+               	movq	%r15, (%rdx)
@@@@
-               	movq	%rbx, (%rdx)
-               	movq	%rbx, %rax
+               	movq	%r15, (%rdx)
+               	movq	%r15, %rax

@@ -12010,27 +12134,26 @@
@@@[(3, 18), (19, 29), (30, 32), (33, 41)]@@@
-               	cmpl	%r13d, %ebp
-               	cmovll	%r13d, %ebp
-               	movq	%r12, %r14
-               	movl	%ebp, 4(%rsp)
-               	movq	8(%rsp), %rbx
-               	cmpl	%r13d, %ebp
-               	je	0x41fe38 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	nopl	(%rax)
-               	movzbl	290529(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmpl	%r13d, %ebx
+               	cmovll	%r13d, %ebx
+               	cmpl	%r13d, %ebx
+               	je	0x420016 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	nopl	(%rax,%rax)
+               	movzbl	291993(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41fea0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	8(%rbx), %rbp
-               	movq	%rbp, 64(%rsp)
-               	movslq	16(%rbx), %r12
+               	je	0x420070 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%r15), %r14
+               	movq	%r14, 64(%rsp)
+               	movl	16(%r15), %r12d
@@@@
-               	movq	%rbx, %rdi
+               	movq	8(%rsp), %rdi
@@@@
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%r15d, 16(%rbx)
-               	movq	(%r14), %rax
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	8(%rsp), %rax
+               	movl	%r15d, 16(%rax)
+               	movq	8(%rsp), %r15
+               	movq	(%rbp), %rax

@@ -12038,20 +12161,20 @@
@@@[(3, 5), (7, 12), (13, 28)]@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jbe	0x41ff09 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x1f9>
+               	cmpl	%r12d, 8(%r14)
+               	jbe	0x4200e4 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x204>
+               	movslq	%r12d, %rcx
@@@@
-               	movq	(%rbp), %rcx
-               	movw	%ax, 16(%rbp,%r12,2)
-               	movl	4(%rsp), %ebp
-               	cmpl	%r13d, %ebp
-               	jne	0x41fe90 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
-               	jmp	0x41fe38 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	movq	(%r14), %rdx
+               	movw	%ax, 16(%r14,%rcx,2)
+               	cmpl	%r13d, %ebx
+               	jne	0x420060 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
+               	jmp	0x420016 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax)

@@ -12063,62 +12186,62 @@
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
-               	je	0x41ff7f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %esi
+               	je	0x42015f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%rbx), %esi
@@@@
-               	movq	%r15, %rdi
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r15), %r13
-               	movq	8(%r15), %r14
+               	movq	%rbx, %rdi
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	16(%rbx), %r15d
+               	movq	8(%rbx), %r14
@@@@
-               	leaq	12(%rsp), %rbx
-               	leaq	164433(%rip), %rdx      # 0x4481f8 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	leaq	12(%rsp), %rbp
+               	leaq	167794(%rip), %rdx      # 0x4490f8 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
@@@@
-               	movq	%rbx, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	je	0x41ffe6 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
-               	leaq	12(%rsp), %rbx
-               	leaq	(%r14,%r13,2), %rcx
+               	je	0x4201c6 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
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
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r15)
+               	subl	%eax, %ebp
+               	addl	%ebp, %r15d
+               	movq	%rbx, %rdi
+               	movl	%r15d, %esi
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%rbx)
@@@@
-               	movq	%r15, (%rax)
+               	movq	%rbx, (%rax)
@@@@
-               	movq	%rax, 288(%rbp)
-               	movq	%r15, %rax
+               	movq	%rax, 288(%r13)
+               	movq	%rbx, %rax

@@ -12151,33 +12274,34 @@
@@@[(14, 18), (19, 32), (34, 38), (39, 43), (44, 50)]@@@
-               	movl	16(%r12), %esi
-               	addl	8(%rbx), %esi
+               	movl	8(%rbx), %esi
+               	addl	16(%r12), %esi
@@@@
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r12), %r15
-               	movq	8(%r12), %rax
-               	movq	%rax, 24(%rsp)
-               	movslq	8(%rbx), %rbp
-               	leaq	(%rax,%r15,2), %rdi
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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
-               	callq	0x413720 <memcpy@plt>
-               	leal	(%r15,%rbp), %ebx
+               	callq	0x413730 <memcpy@plt>
+               	addl	%ebp, %r15d
@@@@
-               	movl	%ebx, %esi
-               	callq	0x420120 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r12)
+               	movl	%r15d, %esi
+               	callq	0x420300 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%r12)

@@ -12263,29 +12387,28 @@
@@@[(13, 15), (16, 19)]@@@
-               	testq	%rbp, %rbp
-               	je	0x4202d1 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xe1>
@@@@
-               	js	0x420338 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x148>
+               	je	0x4204ae <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xde>
+               	js	0x420515 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x145>

@@ -12320,8 +12443,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aeb0 <ThrowIllegalArgumentException>
-               	nopl	(%rax)
+               	callq	0x41b050 <ThrowIllegalArgumentException>
+               	nopw	(%rax,%rax)

@@ -13083,20 +13206,21 @@
@@@[(3, 4), (6, 8), (11, 13)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax
@@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -13169,19 +13293,20 @@
@@@[(3, 4), (6, 8)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax

@@ -13280,20 +13405,22 @@
@@@[(13, 14), (22, 23)]@@@
+               	movq	32(%rsp), %rax
@@@@
+               	movq	32(%rsp), %rax

@@ -13304,7 +13431,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -13410,35 +13537,36 @@
@@@[(26, 34), (43, 46)]@@@
-               	callq	0x421030 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
-               	movslq	16(%r15), %rcx
-               	testq	%rcx, %rcx
-               	js	0x4212e9 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa9>
+               	callq	0x421220 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
+               	movl	16(%r15), %ecx
+               	testl	%ecx, %ecx
+               	js	0x4214e8 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa8>
@@@@
-               	jbe	0x42131c <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xdc>
+               	jbe	0x42151e <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xde>
+               	movslq	%ecx, %rcx

@@ -13598,112 +13726,113 @@
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
-               	jg	0x421630 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
-               	jmp	0x42181e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	leaq	8(%rsp), %rax
-               	movq	%rax, 104(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movq	%rax, 120(%rsp)
-               	movq	8(%rsp), %rcx
-               	movw	%bp, 24(%rsp)
-               	movq	%rax, 128(%rsp)
-               	cmpl	$1, 16(%rsp)
-               	jne	0x42174c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
+               	jg	0x421830 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
+               	jmp	0x421a28 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
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
+               	jne	0x42194c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
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
-               	jne	0x421844 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x304>
-               	movzwl	24(%rsp), %esi
-               	movq	40(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
+               	jne	0x421a4e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x30e>
+               	movzwl	16(%r14), %esi
+               	movq	88(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax)

@@ -13718,16 +13847,16 @@
@@@[(3, 4), (5, 12)]@@@
-               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
@@@@
-               	js	0x42181e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	xorl	%r15d, %r15d
-               	movb	284135(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	js	0x421a1a <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2da>
+               	xorl	%r13d, %r13d
+               	movq	%rbx, 8(%rsp)
+               	movb	285551(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>

@@ -13740,33 +13869,34 @@
@@@[(3, 18), (19, 33), (37, 40), (41, 45), (46, 53)]@@@
-               	movl	16(%rsp), %r14d
-               	testl	%r14d, %r14d
-               	cmovsl	%r15d, %r14d
-               	xorl	%r15d, %r15d
-               	cmpl	%r15d, %r14d
-               	je	0x421801 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
-               	nopl	(%rax)
-               	movzbl	284049(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	8(%r14), %r15d
+               	testl	%r15d, %r15d
+               	cmovsl	%r13d, %r15d
+               	xorl	%r13d, %r13d
+               	cmpl	%r13d, %r15d
+               	je	0x421a01 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
+               	movzbl	285465(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4217f0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	cmpw	%bx, 24(%rsp,%r15,2)
-               	je	0x42181c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2dc>
-               	addq	$1, %r15
-               	cmpl	%r15d, %r14d
-               	jne	0x4217e0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
+               	je	0x4219f0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	cmpw	%bx, 16(%r14,%r13,2)
+               	je	0x421a21 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e1>
+               	addq	$1, %r13
+               	cmpl	%r13d, %r15d
+               	jne	0x4219e0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
@@@@
+               	movq	8(%rsp), %rbx
+               	movl	$0, %r13d
+               	jg	0x42198b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
@@@@
-               	movl	$0, %r15d
-               	jg	0x42178b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
-               	jmp	0x42181e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
+               	jmp	0x421a28 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
-               	addq	$136, %rsp
+               	movq	8(%rsp), %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
+               	addq	$152, %rsp

@@ -13775,37 +13905,37 @@
@@@[(9, 13), (22, 30), (47, 51)]@@@
-               	jne	0x421882 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x342>
-               	movq	296(%r13), %rdi
+               	jne	0x421a8c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x34c>
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rbx, 56(%rsp)
-               	leaq	263680(%rip), %rsi      # 0x461e80 <__unnamed_61>
-               	jmp	0x4218ba <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x37a>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 104(%rsp)
+               	leaq	265014(%rip), %rsi      # 0x4625c0 <__unnamed_61>
+               	jmp	0x421ac4 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x384>
+               	movq	296(%rbx), %rdi
@@@@
-               	callq	0x43c120 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43ce60 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -13894,23 +14024,24 @@
@@@[(6, 23), (28, 32)]@@@
-               	je	0x421a39 <kfun:MultithreadedLoopsBenchmark.$runSumStringWorkers$lambda$0$FUNCTION_REFERENCE$0.invoke#internal+0x19>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	8(%rbx), %rcx
-               	movslq	16(%rbx), %rax
-               	movq	16(%rcx), %rcx
-               	cmpl	%eax, 8(%rcx)
-               	jbe	0x421a5a <kfun:MultithreadedLoopsBenchmark.$runSumStringWorkers$lambda$0$FUNCTION_REFERENCE$0.invoke#internal+0x3a>
-               	movq	16(%rcx,%rax,8), %rax
+               	je	0x421c49 <kfun:MultithreadedLoopsBenchmark.$runSumStringWorkers$lambda$0$FUNCTION_REFERENCE$0.invoke#internal+0x19>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	16(%rbx), %ecx
+               	movq	16(%rax), %rax
+               	cmpl	%ecx, 8(%rax)
+               	jbe	0x421c6c <kfun:MultithreadedLoopsBenchmark.$runSumStringWorkers$lambda$0$FUNCTION_REFERENCE$0.invoke#internal+0x3c>
+               	movslq	%ecx, %rcx
+               	movq	16(%rax,%rcx,8), %rax
@@@@
-               	callq	0x41aad0 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	callq	0x41ac70 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -13919,264 +14050,263 @@
@@@[(6, 7), (8, 9), (10, 22), (28, 34), (48, 49), (55, 64), (65, 68), (69, 78), (79, 84), (88, 98), (99, 106), (110, 117), (122, 124), (127, 143), (149, 153), (154, 164), (165, 171), (172, 185), (186, 191), (192, 195), (210, 211), (212, 215), (219, 226), (231, 239), (247, 263), (276, 289), (344, 349), (353, 356), (358, 360), (362, 364), (378, 380), (381, 385), (386, 403)]@@@
+               	movaps	%xmm0, 384(%rsp)
@@@@
-               	movaps	%xmm0, 352(%rsp)
@@@@
-               	movq	%rax, 48(%rsp)
-               	movq	-64(%rax), %rbx
-               	movq	288(%rbx), %rax
-               	movq	%rax, 360(%rsp)
-               	leaq	352(%rsp), %rax
-               	movq	%rax, 288(%rbx)
+               	movq	%rax, 56(%rsp)
+               	movq	-64(%rax), %r14
+               	movq	288(%r14), %rax
+               	movq	%rax, 376(%rsp)
+               	leaq	368(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	je	0x421adb <kfun:#main(){}+0x7b>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%rbx), %rdi
+               	je	0x421cfb <kfun:#main(){}+0x7b>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r14), %rdi
@@@@
+               	movaps	%xmm0, 256(%rsp)
@@@@
-               	movaps	%xmm0, 144(%rsp)
-               	movq	288(%rbx), %rcx
-               	movq	%rcx, 152(%rsp)
-               	leaq	144(%rsp), %rcx
-               	movq	%rcx, 288(%rbx)
+               	movq	288(%r14), %rcx
+               	movq	%rcx, 168(%rsp)
+               	leaq	160(%rsp), %rcx
+               	movq	%rcx, 288(%r14)
@@@@
-               	movq	%rcx, 160(%rsp)
-               	movq	%rax, 56(%rsp)
+               	movq	%rcx, 176(%rsp)
@@@@
-               	movq	%rbx, 40(%rsp)
-               	movq	296(%rbx), %rdi
+               	movq	%rax, 120(%rsp)
+               	movl	48(%rax), %r15d
+               	testl	%r15d, %r15d
+               	js	0x422e27 <kfun:#main(){}+0x11a7>
+               	movq	296(%r14), %rdi
+               	leaq	31(,%r15,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$64, %esi
-               	callq	0x429d60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42a560 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r13
@@@@
-               	leaq	232395(%rip), %rax      # 0x45a790 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r12)
-               	movl	$5, 24(%r12)
-               	movq	%rcx, 72(%rsp)
-               	movq	%rcx, 176(%rsp)
+               	leaq	233692(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r13)
+               	movl	%r15d, 24(%r13)
+               	movq	%rcx, 48(%rsp)
+               	movq	%rcx, 192(%rsp)
@@@@
-               	leaq	232503(%rip), %r13      # 0x45a820 <ktypeglobal:kotlin.CharArray#internal>
-               	cmpq	$5, %rbp
-               	je	0x421cb9 <kfun:#main(){}+0x259>
-               	nopw	%cs:(%rax,%rax)
+               	movq	%r14, 64(%rsp)
+               	cmpq	%r15, %rbp
+               	je	0x421edb <kfun:#main(){}+0x25b>
@@@@
-               	je	0x421c0f <kfun:#main(){}+0x1af>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	je	0x421e2f <kfun:#main(){}+0x1af>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r14), %rdi
@@@@
-               	leaq	16(%rax), %r15
+               	leaq	16(%rax), %r14
@@@@
-               	movq	%r13, 16(%rax)
-               	movl	$10000, 24(%rax)        # imm = 0x2710
-               	movq	%r15, 184(%rsp)
-               	xorl	%r14d, %r14d
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	je	0x421c93 <kfun:#main(){}+0x233>
-               	nop
-               	movzbl	282897(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	leaq	233727(%rip), %rax      # 0x45af60 <ktypeglobal:kotlin.CharArray#internal>
+               	movq	%rax, 16(%rbx)
+               	movl	$10000, 24(%rbx)        # imm = 0x2710
+               	movq	%r14, 200(%rsp)
+               	xorl	%r12d, %r12d
+               	cmpq	$10000, %r12            # imm = 0x2710
+               	je	0x421eb3 <kfun:#main(){}+0x233>
+               	movzbl	284281(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	cmpq	%rax, %r14
-               	jae	0x422adc <kfun:#main(){}+0x107c>
+               	cmpq	%rax, %r12
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movw	%r14w, 32(%rbx,%r14,2)
-               	addq	$1, %r14
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	jne	0x421c60 <kfun:#main(){}+0x200>
-               	movl	24(%r12), %eax
+               	movw	%r12w, 32(%rbx,%r12,2)
+               	addq	$1, %r12
+               	cmpq	$10000, %r12            # imm = 0x2710
+               	jne	0x421e80 <kfun:#main(){}+0x200>
+               	movl	24(%r13), %eax
@@@@
-               	jae	0x422adc <kfun:#main(){}+0x107c>
-               	movq	16(%r12), %rax
-               	movq	%r15, 32(%r12,%rbp,8)
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
+               	movq	16(%r13), %rax
+               	movq	%r14, 32(%r13,%rbp,8)
@@@@
-               	cmpq	$5, %rbp
-               	jne	0x421c00 <kfun:#main(){}+0x1a0>
-               	movq	56(%rsp), %rax
-               	movq	72(%rsp), %rcx
-               	movq	%rcx, 24(%rax)
-               	movl	48(%rax), %r12d
+               	movq	64(%rsp), %r14
+               	cmpq	%r15, %rbp
+               	jne	0x421e20 <kfun:#main(){}+0x1a0>
+               	movq	120(%rsp), %r13
+               	movq	48(%rsp), %rax
+               	movq	%rax, 24(%r13)
+               	movl	48(%r13), %r12d
@@@@
-               	js	0x422c11 <kfun:#main(){}+0x11b1>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	js	0x422e5d <kfun:#main(){}+0x11dd>
+               	movq	296(%r14), %rdi
@@@@
-               	andq	$-8, %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	leaq	216(%rsp), %r14
@@@@
-               	je	0x421da0 <kfun:#main(){}+0x340>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x421fb0 <kfun:#main(){}+0x330>
@@@@
-               	je	0x421d50 <kfun:#main(){}+0x2f0>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	56(%rsp), %rax
-               	movq	24(%rax), %rax
+               	je	0x421f60 <kfun:#main(){}+0x2e0>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	24(%r13), %rax
@@@@
-               	movq	%rdi, 208(%rsp)
-               	movq	%r14, %rsi
-               	callq	0x41b880 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
-               	movq	%rax, 216(%rsp)
+               	movq	%rdi, 224(%rsp)
+               	leaq	232(%rsp), %rsi
+               	callq	0x41ba20 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
+               	movq	%rax, 232(%rsp)
@@@@
-               	jne	0x421d40 <kfun:#main(){}+0x2e0>
-               	movq	56(%rsp), %rax
-               	movq	%r15, 32(%rax)
-               	movl	48(%rax), %r13d
-               	testl	%r13d, %r13d
-               	js	0x422c4c <kfun:#main(){}+0x11ec>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
-               	leaq	31(,%r13,8), %rsi
+               	jne	0x421f50 <kfun:#main(){}+0x2d0>
+               	movq	%r15, 32(%r13)
+               	movl	48(%r13), %r12d
+               	testl	%r12d, %r12d
+               	js	0x422e93 <kfun:#main(){}+0x1213>
+               	movq	296(%r14), %rdi
+               	leaq	31(,%r12,8), %rsi
@@@@
-               	movl	%r13d, 24(%r15)
-               	movq	%rcx, 72(%rsp)
-               	movq	%rcx, 232(%rsp)
-               	xorl	%r12d, %r12d
-               	cmpq	%r12, %r13
-               	je	0x421f79 <kfun:#main(){}+0x519>
+               	movl	%r12d, 24(%r15)
+               	movq	%rcx, 48(%rsp)
+               	movq	%rcx, 248(%rsp)
+               	xorl	%r13d, %r13d
+               	cmpq	%r13, %r12
+               	je	0x422184 <kfun:#main(){}+0x504>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	jmp	0x421ed5 <kfun:#main(){}+0x475>
-               	nopl	(%rax,%rax)
+               	movq	64(%rsp), %r14
+               	jmp	0x4220e5 <kfun:#main(){}+0x465>
+               	nopl	(%rax)
@@@@
-               	movq	40(%rsp), %rbp
-               	movq	288(%rbp), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%rbp), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r14)
@@@@
-               	cmpq	%rax, %r12
-               	jae	0x422adc <kfun:#main(){}+0x107c>
+               	cmpq	%rax, %r13
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movq	%rcx, 32(%r15,%r12,8)
-               	addq	$1, %r12
-               	cmpq	%r12, %r13
-               	jne	0x421e20 <kfun:#main(){}+0x3c0>
-               	movq	56(%rsp), %rcx
-               	movq	72(%rsp), %rax
-               	movq	%rax, 40(%rcx)
-               	movq	152(%rsp), %rax
+               	movq	%rcx, 32(%r15,%r13,8)
+               	addq	$1, %r13
+               	cmpq	%r13, %r12
+               	jne	0x422030 <kfun:#main(){}+0x3b0>
+               	movq	120(%rsp), %r13
+               	movq	48(%rsp), %rax
+               	movq	%rax, 40(%r13)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 288(%r14)

@@ -14184,286 +14314,281 @@
@@@[(3, 13), (14, 18), (19, 23), (38, 55), (56, 63), (64, 76), (88, 92), (106, 109), (110, 122), (123, 140), (141, 149), (151, 165), (171, 177), (188, 197), (200, 201), (207, 211), (212, 217), (221, 227), (230, 244), (261, 265), (268, 274), (277, 279), (281, 283), (304, 318), (329, 331), (332, 334), (342, 344), (345, 347), (348, 362), (366, 370), (371, 393), (395, 401), (402, 412), (414, 415), (431, 434)]@@@
-               	movq	$0, 272(%rsp)
-               	movq	%rax, 152(%rsp)
-               	movq	40(%rsp), %r13
-               	leaq	144(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	movq	$0, 288(%rsp)
+               	movq	288(%r14), %rax
+               	movq	%rax, 168(%rsp)
+               	leaq	160(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	%rax, 160(%rsp)
-               	movl	48(%rcx), %ebp
+               	movq	%rax, 176(%rsp)
+               	movl	48(%r13), %ebp
@@@@
-               	js	0x422c87 <kfun:#main(){}+0x1227>
-               	movq	296(%r13), %rdi
+               	js	0x422e27 <kfun:#main(){}+0x11a7>
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rax, 176(%rsp)
-               	xorl	%r15d, %r15d
-               	movq	%rbx, 72(%rsp)
-               	movq	%rbp, 336(%rsp)
-               	cmpq	%rbp, %r15
-               	je	0x422798 <kfun:#main(){}+0xd38>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
-               	movb	281826(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 192(%rsp)
+               	xorl	%r12d, %r12d
+               	movq	%rbx, 152(%rsp)
+               	movq	%rbp, 352(%rsp)
+               	cmpq	%rbp, %r12
+               	je	0x4229a8 <kfun:#main(){}+0xd28>
+               	nopl	(%rax)
+               	movb	283226(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42209f <kfun:#main(){}+0x63f>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	56(%rsp), %rax
-               	movq	40(%rax), %rax
+               	je	0x4222af <kfun:#main(){}+0x62f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	40(%r13), %rax
@@@@
-               	cmpq	%rcx, %r15
-               	jae	0x422adc <kfun:#main(){}+0x107c>
-               	movq	16(%rax,%r15,8), %rax
-               	movq	%rax, 184(%rsp)
-               	movslq	8(%rax), %r12
-               	movl	277045(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	cmpq	%rcx, %r12
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
+               	movq	16(%rax,%r12,8), %rax
+               	movq	%rax, 200(%rsp)
+               	movl	8(%rax), %r15d
+               	movl	278442(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	%rbx, 192(%rsp)
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 208(%rsp)
+               	movq	296(%r14), %rdi
@@@@
-               	movl	%r15d, 32(%rax)
+               	movq	%r12, 48(%rsp)
+               	movl	%r12d, 32(%rax)
@@@@
-               	movl	%eax, 64(%rsp)
-               	movq	$0, 304(%rsp)
-               	movq	288(%r13), %rax
-               	movq	%rax, 288(%rsp)
-               	leaq	280(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	movl	%eax, 144(%rsp)
+               	movq	$0, 328(%rsp)
+               	movq	288(%r14), %rax
+               	movq	%rax, 312(%rsp)
+               	leaq	304(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	%rax, 296(%rsp)
-               	leaq	304(%rsp), %rsi
-               	callq	0x418f90 <WorkerLaunchpad>
-               	movq	304(%rsp), %rdi
-               	callq	0x426df0 <CreateStablePointer>
-               	movq	%rax, 128(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x439b40 <(anonymous namespace)::theState()>
+               	movq	%rax, 320(%rsp)
+               	leaq	328(%rsp), %rsi
+               	callq	0x4190e0 <WorkerLaunchpad>
+               	movslq	%r15d, %r12
+               	movq	328(%rsp), %rdi
+               	callq	0x427470 <CreateStablePointer>
+               	movq	%rax, 136(%rsp)
+               	movq	$0, 328(%rsp)
+               	callq	0x43a7d0 <(anonymous namespace)::theState()>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
-               	je	0x422200 <kfun:#main(){}+0x7a0>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x422200 <kfun:#main(){}+0x7a0>
+               	testq	%rbx, %rbx
+               	je	0x422420 <kfun:#main(){}+0x7a0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x422420 <kfun:#main(){}+0x7a0>
@@@@
-               	je	0x422200 <kfun:#main(){}+0x7a0>
-               	movq	%rbp, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x422420 <kfun:#main(){}+0x7a0>
+               	movq	%rbx, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	144(%r14), %rax
-               	movq	(%rax,%rcx,8), %rax
-               	testq	%rax, %rax
-               	jne	0x42225d <kfun:#main(){}+0x7fd>
-               	jmp	0x422370 <kfun:#main(){}+0x910>
-               	nopl	(%rax,%rax)
-               	movl	%r12d, %eax
+               	jmp	0x422449 <kfun:#main(){}+0x7c9>
+               	movl	%r15d, %eax
@@@@
+               	movq	48(%rsp), %r12
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jne	0x422284 <kfun:#main(){}+0x824>
+               	cmpl	%r15d, 8(%rbp)
+               	jne	0x422494 <kfun:#main(){}+0x814>
@@@@
-               	jne	0x4222bf <kfun:#main(){}+0x85f>
-               	jmp	0x422370 <kfun:#main(){}+0x910>
+               	jne	0x4224ce <kfun:#main(){}+0x84e>
+               	jmp	0x422570 <kfun:#main(){}+0x8f0>
+               	nopl	(%rax)
@@@@
-               	jne	0x422370 <kfun:#main(){}+0x910>
-               	cmpl	%r12d, %esi
-               	je	0x4222b6 <kfun:#main(){}+0x856>
+               	jne	0x422570 <kfun:#main(){}+0x8f0>
+               	cmpl	%r15d, %esi
+               	je	0x4224c5 <kfun:#main(){}+0x845>
@@@@
-               	je	0x422370 <kfun:#main(){}+0x910>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422270 <kfun:#main(){}+0x810>
-               	movq	%rsi, %rax
+               	je	0x422570 <kfun:#main(){}+0x8f0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422480 <kfun:#main(){}+0x800>
@@@@
-               	je	0x422378 <kfun:#main(){}+0x918>
-               	movq	%rax, %r12
+               	je	0x422578 <kfun:#main(){}+0x8f8>
+               	movq	%rax, %r15
@@@@
-               	movl	$1, (%r12)
-               	movl	%eax, 4(%r12)
-               	movq	48(%rsp), %rax
+               	movl	$1, (%r15)
+               	movl	%eax, 4(%r15)
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	16(%r12), %rdi
+               	leaq	16(%r15), %rdi
@@@@
-               	movq	%r12, %rdi
+               	movq	%r15, %rdi
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x42237b <kfun:#main(){}+0x91b>
-               	nopl	(%rax)
-               	xorl	%r12d, %r12d
-               	jmp	0x422685 <kfun:#main(){}+0xc25>
-               	xorl	%r12d, %r12d
-               	movl	4(%r12), %r8d
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x42257b <kfun:#main(){}+0x8fb>
+               	nop
+               	xorl	%r15d, %r15d
+               	jmp	0x422873 <kfun:#main(){}+0xbf3>
+               	xorl	%r15d, %r15d
+               	movl	4(%r15), %r8d
@@@@
-               	movq	%rdx, %rbp
+               	movq	%rdx, %rbx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	movl	%edx, %ebp
+               	movl	%edx, %ebx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	je	0x42242c <kfun:#main(){}+0x9cc>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x4223f0 <kfun:#main(){}+0x990>
-               	testq	%rbx, %rbx
-               	jne	0x42241f <kfun:#main(){}+0x9bf>
-               	jmp	0x42242c <kfun:#main(){}+0x9cc>
+               	je	0x422628 <kfun:#main(){}+0x9a8>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x4225f0 <kfun:#main(){}+0x970>
+               	testq	%rbp, %rbp
+               	jne	0x42261f <kfun:#main(){}+0x99f>
+               	jmp	0x422628 <kfun:#main(){}+0x9a8>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x42242c <kfun:#main(){}+0x9cc>
+               	cmpq	%rbx, %rdx
+               	jne	0x422628 <kfun:#main(){}+0x9a8>
@@@@
-               	je	0x42241a <kfun:#main(){}+0x9ba>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x42242c <kfun:#main(){}+0x9cc>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4223e0 <kfun:#main(){}+0x980>
-               	movq	%rcx, %rax
+               	je	0x42261a <kfun:#main(){}+0x99a>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x422628 <kfun:#main(){}+0x9a8>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4225e0 <kfun:#main(){}+0x960>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x4223eb <kfun:#main(){}+0x98b>
-               	jmp	0x42242c <kfun:#main(){}+0x9cc>
+               	cmpq	%rbx, %rdx
+               	je	0x4225eb <kfun:#main(){}+0x96b>
+               	jmp	0x422628 <kfun:#main(){}+0x9a8>
@@@@
-               	je	0x42242c <kfun:#main(){}+0x9cc>
-               	addq	$8, %rbx
-               	movl	64(%rsp), %edi
-               	jmp	0x42262d <kfun:#main(){}+0xbcd>
-               	movl	%r8d, %ebx
-               	movq	%r12, 320(%rsp)
+               	je	0x422628 <kfun:#main(){}+0x9a8>
+               	addq	$8, %rbp
+               	jmp	0x422814 <kfun:#main(){}+0xb94>
+               	movq	%rbx, %rbp
@@@@
+               	movl	%r8d, %ebx
@@@@
-               	movl	64(%rsp), %edi
-               	movq	120(%rsp), %rdx
+               	movq	128(%rsp), %rbx

@@ -14472,255 +14597,262 @@
@@@[(3, 6), (7, 18), (25, 27), (28, 47), (49, 52), (56, 80), (83, 88), (100, 104), (107, 114), (121, 123), (124, 132), (133, 138), (139, 150), (151, 154), (155, 159), (160, 165), (166, 176), (183, 188), (223, 238), (241, 243), (245, 247), (249, 251), (265, 269), (270, 276), (277, 289), (290, 292), (293, 306), (307, 318), (321, 323), (325, 327), (332, 343), (344, 348), (352, 360), (362, 376), (382, 390), (391, 393), (395, 400), (403, 408)]@@@
-               	movq	104(%r14), %rbx
+               	movl	76(%rsp), %r8d
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	je	0x42255f <kfun:#main(){}+0xaff>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x4224f8 <kfun:#main(){}+0xa98>
+               	testq	%rbp, %rbp
+               	je	0x42273e <kfun:#main(){}+0xabe>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x4226f8 <kfun:#main(){}+0xa78>
+               	nop
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x42255f <kfun:#main(){}+0xaff>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x42273e <kfun:#main(){}+0xabe>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x4224d0 <kfun:#main(){}+0xa70>
+               	je	0x4226d0 <kfun:#main(){}+0xa50>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x4224df <kfun:#main(){}+0xa7f>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r13,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x4224f0 <kfun:#main(){}+0xa90>
-               	movq	%rcx, (%r13,%rdi,8)
-               	jmp	0x4224f0 <kfun:#main(){}+0xa90>
-               	leaq	136(%r14), %r13
-               	movq	$0, 136(%r14)
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	jne	0x4224c8 <kfun:#main(){}+0xa68>
+               	jne	0x4226df <kfun:#main(){}+0xa5f>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r13,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x4226f0 <kfun:#main(){}+0xa70>
+               	movq	%rsi, (%r13,%rbx,8)
+               	jmp	0x4226f0 <kfun:#main(){}+0xa70>
@@@@
-               	je	0x422574 <kfun:#main(){}+0xb14>
-               	callq	0x413730 <free@plt>
+               	je	0x422758 <kfun:#main(){}+0xad8>
+               	callq	0x413710 <free@plt>
+               	movl	76(%rsp), %r8d
@@@@
-               	jmp	0x4225a8 <kfun:#main(){}+0xb48>
-               	movl	140(%rsp), %eax
+               	jmp	0x422788 <kfun:#main(){}+0xb08>
+               	movl	%r8d, %eax
@@@@
-               	movl	64(%rsp), %edi
-               	movq	120(%rsp), %rdx
-               	movq	%rdx, %rbx
-               	addq	$8, %rbx
+               	movq	128(%rsp), %rbx
+               	movq	%rbx, %rbp
+               	addq	$8, %rbp
@@@@
-               	movq	%rax, (%rdx)
+               	movq	%rax, (%rbx)
@@@@
-               	movq	%rdx, (%rax)
-               	jmp	0x422623 <kfun:#main(){}+0xbc3>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rbx, (%rax)
+               	jmp	0x422803 <kfun:#main(){}+0xb83>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdx)
-               	movq	%rdx, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r14)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x42261e <kfun:#main(){}+0xbbe>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x4227fe <kfun:#main(){}+0xb7e>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x42260c <kfun:#main(){}+0xbac>
+               	je	0x4227f0 <kfun:#main(){}+0xb70>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x422610 <kfun:#main(){}+0xbb0>
+               	divq	%r8
+               	jmp	0x4227f5 <kfun:#main(){}+0xb75>
@@@@
-               	divl	%ebp
-               	movq	120(%rsp), %rax
-               	movq	%rax, (%r13,%rdx,8)
+               	divl	%r8d
+               	movq	%rbx, (%r13,%rdx,8)
@@@@
-               	movq	%rcx, (%r13,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	40(%rsp), %r13
-               	movq	%r12, 8(%rbx)
+               	movq	%rdi, (%r13,%rsi,8)
+               	movq	112(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r14)
+               	movq	120(%rsp), %r13
+               	movq	%r15, 8(%rbp)
@@@@
-               	movq	%r12, 104(%rsp)
-               	movl	%edi, 112(%rsp)
+               	movq	%r15, 104(%rsp)
+               	movl	144(%rsp), %eax
+               	movl	%eax, 112(%rsp)
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	testq	%r12, %r12
-               	je	0x422c0c <kfun:#main(){}+0x11ac>
-               	movl	4(%r12), %ebx
-               	movq	288(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax)
+               	testq	%r15, %r15
+               	movq	64(%rsp), %r14
+               	je	0x422e22 <kfun:#main(){}+0x11a2>
+               	movl	4(%r15), %ebx
+               	movq	312(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	288(%r13), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r13)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%r13), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rax, 288(%r13)
-               	movq	72(%rsp), %rbx
+               	movq	%rax, 288(%r14)
+               	movq	152(%rsp), %rbx
@@@@
-               	cmpq	%rax, %r15
-               	movq	336(%rsp), %rbp
-               	jae	0x422adc <kfun:#main(){}+0x107c>
+               	cmpq	%rax, %r12
+               	movq	352(%rsp), %rbp
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movq	%rcx, 32(%rbx,%r15,8)
-               	addq	$1, %r15
-               	cmpq	%rbp, %r15
-               	jne	0x422090 <kfun:#main(){}+0x630>
+               	movq	%rcx, 32(%rbx,%r12,8)
+               	addq	$1, %r12
+               	cmpq	%rbp, %r12
+               	jne	0x4222a0 <kfun:#main(){}+0x620>
+               	jmp	0x4229a8 <kfun:#main(){}+0xd28>
+               	leaq	136(%r14), %r13
+               	movq	$0, 136(%r14)
+               	jmp	0x4226a9 <kfun:#main(){}+0xa29>
@@@@
-               	xorl	%r12d, %r12d
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r12d, %eax
-               	movq	%rax, 64(%rsp)
-               	cmpq	64(%rsp), %r12
-               	je	0x422abb <kfun:#main(){}+0x105b>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	movb	279986(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 144(%rsp)
+               	cmpq	144(%rsp), %rbp
+               	je	0x422cd1 <kfun:#main(){}+0x1051>
+               	nopl	(%rax,%rax)
+               	movb	281386(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4227cf <kfun:#main(){}+0xd6f>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%rbx,%r12,8), %rax
-               	movq	%rax, 216(%rsp)
-               	movslq	8(%rax), %r15
+               	je	0x4229df <kfun:#main(){}+0xd5f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 48(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
+               	movq	%rax, 232(%rsp)
+               	movl	8(%rax), %r13d
@@@@
-               	movq	288(%r13), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r13)
+               	movq	%rax, 288(%r14)
@@@@
-               	je	0x422832 <kfun:#main(){}+0xdd2>
-               	leaq	275150(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-40701(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43bf40 <CallInitGlobalPossiblyLock>
-               	movq	275047(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	je	0x422a47 <kfun:#main(){}+0xdc7>
+               	leaq	276537(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-40914(%rip), %rsi      # 0x418a70 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43cc80 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r12
+               	movq	276431(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
@@@@
-               	callq	0x41b480 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
+               	callq	0x41b620 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, %r15
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4228a0 <kfun:#main(){}+0xe40>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4228a0 <kfun:#main(){}+0xe40>
+               	testq	%rbp, %rbp
+               	je	0x422ac0 <kfun:#main(){}+0xe40>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422ac0 <kfun:#main(){}+0xe40>
@@@@
-               	je	0x4228a0 <kfun:#main(){}+0xe40>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422ac0 <kfun:#main(){}+0xe40>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	movq	%r12, 56(%rsp)
-               	je	0x4228d0 <kfun:#main(){}+0xe70>
-               	movq	%r15, %rax
+               	je	0x422ae0 <kfun:#main(){}+0xe60>
+               	movq	%r12, %rax
@@@@
-               	jmp	0x4228d9 <kfun:#main(){}+0xe79>
-               	nopl	(%rax)
-               	movl	%r15d, %eax
+               	jmp	0x422ae9 <kfun:#main(){}+0xe69>
+               	movl	%r13d, %eax

@@ -14728,126 +14860,125 @@
@@@[(3, 17), (21, 47), (50, 60), (61, 71), (72, 86), (92, 98), (100, 110), (111, 125), (131, 140), (166, 171), (172, 176), (177, 180), (183, 207)]@@@
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movq	(%rax), %rbx
-               	cmpl	%r15d, 8(%rbx)
-               	jne	0x422914 <kfun:#main(){}+0xeb4>
-               	testq	%rbx, %rbx
-               	jne	0x42294e <kfun:#main(){}+0xeee>
-               	jmp	0x422a10 <kfun:#main(){}+0xfb0>
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x422b24 <kfun:#main(){}+0xea4>
+               	testq	%rbp, %rbp
+               	jne	0x422b5e <kfun:#main(){}+0xede>
+               	jmp	0x422c20 <kfun:#main(){}+0xfa0>
@@@@
-               	jne	0x422a10 <kfun:#main(){}+0xfb0>
-               	cmpl	%r15d, %esi
-               	je	0x422945 <kfun:#main(){}+0xee5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422900 <kfun:#main(){}+0xea0>
-               	movq	%rsi, %rax
+               	jne	0x422c20 <kfun:#main(){}+0xfa0>
+               	cmpl	%r13d, %esi
+               	je	0x422b55 <kfun:#main(){}+0xed5>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422b10 <kfun:#main(){}+0xe90>
@@@@
-               	je	0x42290f <kfun:#main(){}+0xeaf>
-               	jmp	0x422a10 <kfun:#main(){}+0xfb0>
-               	testq	%rbp, %rbp
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movq	16(%rbx), %r12
+               	je	0x422b1f <kfun:#main(){}+0xe9f>
+               	jmp	0x422c20 <kfun:#main(){}+0xfa0>
+               	testq	%rbx, %rbx
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movq	16(%rbp), %r12
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%rdi, 128(%rsp)
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	%rdi, 136(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4229b0 <kfun:#main(){}+0xf50>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4229b0 <kfun:#main(){}+0xf50>
+               	testq	%rbp, %rbp
+               	je	0x422bc0 <kfun:#main(){}+0xf40>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422bc0 <kfun:#main(){}+0xf40>
@@@@
-               	je	0x4229b0 <kfun:#main(){}+0xf50>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x422bc0 <kfun:#main(){}+0xf40>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	128(%rsp), %rdi
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	136(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422a10 <kfun:#main(){}+0xfb0>
+               	testq	%rbp, %rbp
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422c20 <kfun:#main(){}+0xfa0>
@@@@
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	movq	48(%rsp), %rax
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	56(%rsp), %rax
@@@@
-               	cmpl	%r12d, 8(%r13)
-               	jbe	0x422adc <kfun:#main(){}+0x107c>
+               	cmpl	%r12d, 8(%r15)
+               	movq	64(%rsp), %r14
+               	jbe	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movq	16(%r13,%rax,8), %rax
-               	movq	%rax, 224(%rsp)
+               	movq	16(%r15,%rax,8), %rax
+               	movq	%rax, 240(%rsp)
@@@@
-               	movq	40(%rsp), %r13
-               	movq	%rcx, 288(%r13)
+               	movq	%rcx, 288(%r14)
@@@@
-               	movq	72(%rsp), %rbx
-               	jae	0x422ae1 <kfun:#main(){}+0x1081>
-               	movq	56(%rsp), %r12
-               	addq	$1, %r12
-               	movl	%r15d, %edi
-               	leaq	232(%rsp), %rsi
-               	callq	0x43d350 <Kotlin_Worker_consumeFuture>
-               	cmpq	64(%rsp), %r12
-               	jne	0x4227c0 <kfun:#main(){}+0xd60>
-               	movq	360(%rsp), %rax
-               	movq	%rax, 288(%r13)
-               	addq	$392, %rsp              # imm = 0x188
+               	jae	0x422cf7 <kfun:#main(){}+0x1077>
+               	movq	48(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
+               	leaq	248(%rsp), %rsi
+               	callq	0x43e110 <Kotlin_Worker_consumeFuture>
+               	movq	152(%rsp), %rbx
+               	cmpq	144(%rsp), %rbp
+               	jne	0x4229d0 <kfun:#main(){}+0xd50>
+               	movq	376(%rsp), %rax
+               	movq	%rax, 288(%r14)
+               	addq	$408, %rsp              # imm = 0x198

@@ -14855,2926 +14986,3113 @@
@@@[(12, 22), (62, 72), (90, 99), (108, 115), (124, 130), (189, 190), (3099, 3107), (3108, 3113), (3114, 3117), (3121, 3127), (3131, 3137), (3141, 3147), (3151, 3157), (3161, 3167), (3171, 3177), (3181, 3187), (3191, 3197), (3201, 3207), (3211, 3217), (3221, 3227), (3231, 3237), (3241, 3247), (3251, 3257), (3261, 3267), (3271, 3277), (3281, 3287), (3291, 3297), (3301, 3307), (3311, 3317), (3321, 3327), (3331, 3337), (3341, 3347), (3351, 3357), (3361, 3367), (3371, 3377), (3381, 3387), (3391, 3397), (3401, 3407), (3411, 3417), (3421, 3427), (3431, 3437), (3441, 3447), (3451, 3457), (3461, 3467), (3471, 3477), (3481, 3487), (3491, 3497), (3501, 3507), (3511, 3517), (3521, 3527), (3531, 3537), (3541, 3547), (3551, 3557), (3561, 3567), (3571, 3577), (3581, 3587), (3591, 3597), (3601, 3607), (3611, 3617), (3621, 3627), (3631, 3637), (3641, 3647), (3651, 3657), (3661, 3667), (3671, 3677), (3681, 3687), (3691, 3697), (3701, 3707), (3711, 3717), (3721, 3727), (3731, 3737), (3741, 3747), (3751, 3757), (3761, 3767), (3771, 3777), (3781, 3787), (3791, 3797), (3801, 3807), (3811, 3817), (3821, 3827), (3831, 3837), (3841, 3847), (3851, 3857), (3861, 3867), (3871, 3877), (3881, 3887), (3891, 3897), (3901, 3907), (3911, 3917), (3921, 3927), (3931, 3937), (3941, 3947), (3951, 3957), (3961, 3967), (3971, 3977), (3981, 3987), (3991, 3997), (4001, 4007), (4011, 4017), (4021, 4027), (4031, 4037), (4041, 4047), (4051, 4057), (4061, 4067), (4071, 4082), (4086, 4089), (4093, 4095)]@@@
-               	jne	0x422c07 <kfun:#main(){}+0x11a7>
-               	leaq	264(%rsp), %rsi
-               	movl	%r15d, %edi
-               	callq	0x43d350 <Kotlin_Worker_consumeFuture>
-               	movq	40(%rsp), %rax
+               	jne	0x422e1d <kfun:#main(){}+0x119d>
+               	leaq	280(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43e110 <Kotlin_Worker_consumeFuture>
+               	movq	64(%rsp), %rax
@@@@
-               	callq	0x43c120 <ThrowException>
-               	leaq	248(%rsp), %rsi
-               	movl	%r15d, %edi
-               	callq	0x43d350 <Kotlin_Worker_consumeFuture>
-               	movq	40(%rsp), %rax
+               	callq	0x43ce60 <ThrowException>
+               	leaq	264(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43e110 <Kotlin_Worker_consumeFuture>
+               	movq	64(%rsp), %rax
@@@@
-               	callq	0x43c120 <ThrowException>
-               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	callq	0x43ce60 <ThrowException>
+               	callq	0x41b580 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418f40 <ThrowWorkerAlreadyTerminated>
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rbx, 192(%rsp)
-               	jmp	0x422cbb <kfun:#main(){}+0x125b>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	movq	%rbx, 184(%rsp)
+               	jmp	0x422ec7 <kfun:#main(){}+0x1247>
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rbx, 224(%rsp)
-               	jmp	0x422cbb <kfun:#main(){}+0x125b>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 208(%rsp)
+               	jmp	0x422ec7 <kfun:#main(){}+0x1247>
+               	movq	296(%r14), %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
@@@@
-               	cmpb	$0, 267209(%rip)        # 0x465b10 <_Konan_init_stdlib_guard>
-               	je	0x424757 <_Konan_constructors+0x17>
-               	cmpb	$0, 267201(%rip)        # 0x465b11 <_Konan_init_main_guard>
-               	je	0x42525d <_Konan_constructors+0xb1d>
+               	cmpl	$0, 268617(%rip)        # 0x466290 <state_global$kotlin.ranges.IntRange+0x4>
+               	je	0x424957 <_Konan_constructors+0x17>
+               	cmpl	$0, 268612(%rip)        # 0x466294 <state_global$kotlin.ranges.IntRange+0x8>
+               	je	0x425875 <_Konan_constructors+0xf35>
@@@@
-               	movb	$1, 267186(%rip)        # 0x465b10 <_Konan_init_stdlib_guard>
-               	leaq	372067(%rip), %rax      # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	movq	372092(%rip), %rcx      # 0x47f4e8 <(anonymous namespace)::initTailNode>
+               	movl	$1, 268591(%rip)        # 0x466290 <state_global$kotlin.ranges.IntRange+0x4>
+               	movq	373504(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
@@@@
-               	cmpq	$0, 372048(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
+               	cmpq	$0, 373460(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
+               	leaq	373453(%rip), %rax      # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 372026(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	261027(%rip), %rcx      # 0x464338 <init_node+0x8>
+               	movq	%rdx, 373464(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373457(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373413(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371997(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	261014(%rip), %rcx      # 0x464348 <init_node.16+0x8>
+               	movq	%rdx, 373424(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373417(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373373(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371968(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	261001(%rip), %rcx      # 0x464358 <init_node.17+0x8>
+               	movq	%rdx, 373384(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373377(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373333(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371939(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260988(%rip), %rcx      # 0x464368 <init_node.18+0x8>
+               	movq	%rdx, 373344(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373337(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373293(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371910(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260975(%rip), %rcx      # 0x464378 <init_node.19+0x8>
+               	movq	%rdx, 373304(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373297(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373253(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371881(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260962(%rip), %rcx      # 0x464388 <init_node.20+0x8>
+               	movq	%rdx, 373264(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373257(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373213(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371852(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260949(%rip), %rcx      # 0x464398 <init_node.21+0x8>
+               	movq	%rdx, 373224(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373217(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373173(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371823(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260936(%rip), %rcx      # 0x4643a8 <init_node.22+0x8>
+               	movq	%rdx, 373184(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373177(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373133(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371794(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260923(%rip), %rcx      # 0x4643b8 <init_node.23+0x8>
+               	movq	%rdx, 373144(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373137(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373093(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371765(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260910(%rip), %rcx      # 0x4643c8 <init_node.24+0x8>
+               	movq	%rdx, 373104(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373097(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373053(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371736(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260897(%rip), %rcx      # 0x4643d8 <init_node.25+0x8>
+               	movq	%rdx, 373064(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373057(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 373013(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371707(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260884(%rip), %rcx      # 0x4643e8 <init_node.26+0x8>
+               	movq	%rdx, 373024(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	373017(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372973(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371678(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260871(%rip), %rcx      # 0x4643f8 <init_node.27+0x8>
+               	movq	%rdx, 372984(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372977(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372933(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371649(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260858(%rip), %rcx      # 0x464408 <init_node.28+0x8>
+               	movq	%rdx, 372944(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372937(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372893(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371620(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260845(%rip), %rcx      # 0x464418 <init_node.29+0x8>
+               	movq	%rdx, 372904(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372897(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372853(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371591(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260832(%rip), %rcx      # 0x464428 <init_node.30+0x8>
+               	movq	%rdx, 372864(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372857(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372813(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371562(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260819(%rip), %rcx      # 0x464438 <init_node.31+0x8>
+               	movq	%rdx, 372824(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372817(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372773(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371533(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260806(%rip), %rcx      # 0x464448 <init_node.32+0x8>
+               	movq	%rdx, 372784(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372777(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372733(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371504(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260793(%rip), %rcx      # 0x464458 <init_node.33+0x8>
+               	movq	%rdx, 372744(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372737(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372693(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371475(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260780(%rip), %rcx      # 0x464468 <init_node.34+0x8>
+               	movq	%rdx, 372704(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372697(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372653(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371446(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260767(%rip), %rcx      # 0x464478 <init_node.35+0x8>
+               	movq	%rdx, 372664(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372657(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372613(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371417(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260754(%rip), %rcx      # 0x464488 <init_node.36+0x8>
+               	movq	%rdx, 372624(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372617(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372573(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371388(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260741(%rip), %rcx      # 0x464498 <init_node.37+0x8>
+               	movq	%rdx, 372584(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372577(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372533(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371359(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260728(%rip), %rcx      # 0x4644a8 <init_node.38+0x8>
+               	movq	%rdx, 372544(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372537(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372493(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371330(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260715(%rip), %rcx      # 0x4644b8 <init_node.39+0x8>
+               	movq	%rdx, 372504(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372497(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372453(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371301(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260702(%rip), %rcx      # 0x4644c8 <init_node.40+0x8>
+               	movq	%rdx, 372464(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372457(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372413(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371272(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260689(%rip), %rcx      # 0x4644d8 <init_node.41+0x8>
+               	movq	%rdx, 372424(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372417(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372373(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371243(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260676(%rip), %rcx      # 0x4644e8 <init_node.42+0x8>
+               	movq	%rdx, 372384(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372377(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372333(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371214(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260663(%rip), %rcx      # 0x4644f8 <init_node.43+0x8>
+               	movq	%rdx, 372344(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372337(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372293(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371185(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260650(%rip), %rcx      # 0x464508 <init_node.44+0x8>
+               	movq	%rdx, 372304(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372297(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372253(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371156(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260637(%rip), %rcx      # 0x464518 <init_node.45+0x8>
+               	movq	%rdx, 372264(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372257(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372213(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371127(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260624(%rip), %rcx      # 0x464528 <init_node.46+0x8>
+               	movq	%rdx, 372224(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372217(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372173(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371098(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260611(%rip), %rcx      # 0x464538 <init_node.47+0x8>
+               	movq	%rdx, 372184(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372177(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372133(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371069(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260598(%rip), %rcx      # 0x464548 <init_node.48+0x8>
+               	movq	%rdx, 372144(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372137(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372093(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371040(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260585(%rip), %rcx      # 0x464558 <init_node.49+0x8>
+               	movq	%rdx, 372104(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372097(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372053(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 371011(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260572(%rip), %rcx      # 0x464568 <init_node.50+0x8>
+               	movq	%rdx, 372064(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372057(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 372013(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370982(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260559(%rip), %rcx      # 0x464578 <init_node.51+0x8>
+               	movq	%rdx, 372024(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	372017(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371973(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370953(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260546(%rip), %rcx      # 0x464588 <init_node.52+0x8>
+               	movq	%rdx, 371984(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371977(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371933(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370924(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260533(%rip), %rcx      # 0x464598 <init_node.53+0x8>
+               	movq	%rdx, 371944(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371937(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371893(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370895(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260520(%rip), %rcx      # 0x4645a8 <init_node.54+0x8>
+               	movq	%rdx, 371904(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371897(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371853(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370866(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260507(%rip), %rcx      # 0x4645b8 <init_node.55+0x8>
+               	movq	%rdx, 371864(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371857(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371813(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370837(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260494(%rip), %rcx      # 0x4645c8 <init_node.56+0x8>
+               	movq	%rdx, 371824(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371817(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371773(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370808(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260481(%rip), %rcx      # 0x4645d8 <init_node.57+0x8>
+               	movq	%rdx, 371784(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371777(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371733(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370779(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260468(%rip), %rcx      # 0x4645e8 <init_node.58+0x8>
+               	movq	%rdx, 371744(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371737(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371693(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370750(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260455(%rip), %rcx      # 0x4645f8 <init_node.59+0x8>
+               	movq	%rdx, 371704(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371697(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371653(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370721(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260442(%rip), %rcx      # 0x464608 <init_node.60+0x8>
+               	movq	%rdx, 371664(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371657(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371613(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370692(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260429(%rip), %rcx      # 0x464618 <init_node.61+0x8>
+               	movq	%rdx, 371624(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371617(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371573(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370663(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260416(%rip), %rcx      # 0x464628 <init_node.62+0x8>
+               	movq	%rdx, 371584(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371577(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371533(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370634(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260403(%rip), %rcx      # 0x464638 <init_node.63+0x8>
+               	movq	%rdx, 371544(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371537(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371493(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370605(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260390(%rip), %rcx      # 0x464648 <init_node.64+0x8>
+               	movq	%rdx, 371504(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371497(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371453(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370576(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260377(%rip), %rcx      # 0x464658 <init_node.65+0x8>
+               	movq	%rdx, 371464(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371457(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371413(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370547(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260364(%rip), %rcx      # 0x464668 <init_node.66+0x8>
+               	movq	%rdx, 371424(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371417(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371373(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370518(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260351(%rip), %rcx      # 0x464678 <init_node.67+0x8>
+               	movq	%rdx, 371384(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371377(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371333(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370489(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260338(%rip), %rcx      # 0x464688 <init_node.68+0x8>
+               	movq	%rdx, 371344(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371337(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371293(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370460(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260325(%rip), %rcx      # 0x464698 <init_node.69+0x8>
+               	movq	%rdx, 371304(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371297(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371253(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370431(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260312(%rip), %rcx      # 0x4646a8 <init_node.70+0x8>
+               	movq	%rdx, 371264(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371257(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371213(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370402(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260299(%rip), %rcx      # 0x4646b8 <init_node.71+0x8>
+               	movq	%rdx, 371224(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371217(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371173(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370373(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260286(%rip), %rcx      # 0x4646c8 <init_node.72+0x8>
+               	movq	%rdx, 371184(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371177(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371133(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370344(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260273(%rip), %rcx      # 0x4646d8 <init_node.73+0x8>
+               	movq	%rdx, 371144(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371137(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371093(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370315(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260260(%rip), %rcx      # 0x4646e8 <init_node.74+0x8>
+               	movq	%rdx, 371104(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371097(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371053(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370286(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260247(%rip), %rcx      # 0x4646f8 <init_node.75+0x8>
+               	movq	%rdx, 371064(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371057(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 371013(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370257(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260234(%rip), %rcx      # 0x464708 <init_node.76+0x8>
+               	movq	%rdx, 371024(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	371017(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370973(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370228(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260221(%rip), %rcx      # 0x464718 <init_node.77+0x8>
+               	movq	%rdx, 370984(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370977(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370933(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370199(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260208(%rip), %rcx      # 0x464728 <init_node.78+0x8>
+               	movq	%rdx, 370944(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370937(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370893(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370170(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260195(%rip), %rcx      # 0x464738 <init_node.79+0x8>
+               	movq	%rdx, 370904(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370897(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370853(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370141(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260182(%rip), %rcx      # 0x464748 <init_node.80+0x8>
+               	movq	%rdx, 370864(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370857(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370813(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370112(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260169(%rip), %rcx      # 0x464758 <init_node.81+0x8>
+               	movq	%rdx, 370824(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370817(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370773(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370083(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260156(%rip), %rcx      # 0x464768 <init_node.82+0x8>
+               	movq	%rdx, 370784(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370777(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370733(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370054(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260143(%rip), %rcx      # 0x464778 <init_node.83+0x8>
+               	movq	%rdx, 370744(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370737(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370693(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 370025(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260130(%rip), %rcx      # 0x464788 <init_node.84+0x8>
+               	movq	%rdx, 370704(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370697(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370653(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369996(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260117(%rip), %rcx      # 0x464798 <init_node.85+0x8>
+               	movq	%rdx, 370664(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370657(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370613(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369967(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260104(%rip), %rcx      # 0x4647a8 <init_node.86+0x8>
+               	movq	%rdx, 370624(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370617(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370573(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369938(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260091(%rip), %rcx      # 0x4647b8 <init_node.87+0x8>
+               	movq	%rdx, 370584(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370577(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370533(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369909(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260078(%rip), %rcx      # 0x4647c8 <init_node.88+0x8>
+               	movq	%rdx, 370544(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370537(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370493(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369880(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260065(%rip), %rcx      # 0x4647d8 <init_node.89+0x8>
+               	movq	%rdx, 370504(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370497(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370453(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369851(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260052(%rip), %rcx      # 0x4647e8 <init_node.90+0x8>
+               	movq	%rdx, 370464(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370457(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370413(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369822(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260039(%rip), %rcx      # 0x4647f8 <init_node.91+0x8>
+               	movq	%rdx, 370424(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370417(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370373(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369793(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260026(%rip), %rcx      # 0x464808 <init_node.92+0x8>
+               	movq	%rdx, 370384(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370377(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370333(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369764(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260013(%rip), %rcx      # 0x464818 <init_node.93+0x8>
+               	movq	%rdx, 370344(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370337(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370293(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369735(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	260000(%rip), %rcx      # 0x464828 <init_node.94+0x8>
+               	movq	%rdx, 370304(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370297(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370253(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369706(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259987(%rip), %rcx      # 0x464838 <init_node.95+0x8>
+               	movq	%rdx, 370264(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370257(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370213(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369677(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259974(%rip), %rcx      # 0x464848 <init_node.96+0x8>
+               	movq	%rdx, 370224(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370217(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370173(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369648(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259961(%rip), %rcx      # 0x464858 <init_node.97+0x8>
+               	movq	%rdx, 370184(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370177(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370133(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369619(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259948(%rip), %rcx      # 0x464868 <init_node.98+0x8>
+               	movq	%rdx, 370144(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370137(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370093(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369590(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259935(%rip), %rcx      # 0x464878 <init_node.99+0x8>
+               	movq	%rdx, 370104(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370097(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370053(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369561(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259922(%rip), %rcx      # 0x464888 <init_node.100+0x8>
+               	movq	%rdx, 370064(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370057(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 370013(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369532(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259909(%rip), %rcx      # 0x464898 <init_node.101+0x8>
+               	movq	%rdx, 370024(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	370017(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369973(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369503(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259896(%rip), %rcx      # 0x4648a8 <init_node.102+0x8>
+               	movq	%rdx, 369984(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369977(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369933(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369474(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259883(%rip), %rcx      # 0x4648b8 <init_node.103+0x8>
+               	movq	%rdx, 369944(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369937(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369893(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369445(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259870(%rip), %rcx      # 0x4648c8 <init_node.104+0x8>
+               	movq	%rdx, 369904(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369897(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369853(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369416(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259857(%rip), %rcx      # 0x4648d8 <init_node.105+0x8>
+               	movq	%rdx, 369864(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369857(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369813(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369387(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259844(%rip), %rcx      # 0x4648e8 <init_node.106+0x8>
+               	movq	%rdx, 369824(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369817(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369773(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369358(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259831(%rip), %rcx      # 0x4648f8 <init_node.107+0x8>
+               	movq	%rdx, 369784(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369777(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369733(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369329(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259818(%rip), %rcx      # 0x464908 <init_node.108+0x8>
+               	movq	%rdx, 369744(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369737(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369693(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 369300(%rip)        # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	259805(%rip), %rcx      # 0x464918 <init_node.109+0x8>
+               	movq	%rdx, 369704(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	movq	369697(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 369653(%rip)        # 0x47fc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	movq	%rax, 369304(%rip)      # 0x47f4e8 <(anonymous namespace)::initTailNode>
-               	cmpb	$0, 264378(%rip)        # 0x465b11 <_Konan_init_main_guard>
-               	jne	0x424756 <_Konan_constructors+0x16>
-               	leaq	369252(%rip), %rax      # 0x47f4c8 <(anonymous namespace)::initHeadNode>
-               	movq	369277(%rip), %rcx      # 0x47f4e8 <(anonymous namespace)::initTailNode>
+               	movq	%rax, 369664(%rip)      # 0x47fc68 <(anonymous namespace)::initTailNode>
+               	cmpl	$0, 264741(%rip)        # 0x466294 <state_global$kotlin.ranges.IntRange+0x8>
+               	jne	0x424956 <_Konan_constructors+0x16>
+               	movl	$1, 264725(%rip)        # 0x466294 <state_global$kotlin.ranges.IntRange+0x8>
+               	leaq	369602(%rip), %rax      # 0x47fc48 <(anonymous namespace)::initHeadNode>
+               	movq	369627(%rip), %rcx      # 0x47fc68 <(anonymous namespace)::initTailNode>
@@@@
-               	movb	$1, 264335(%rip)        # 0x465b11 <_Konan_init_main_guard>
-               	leaq	259751(%rip), %rax      # 0x464930 <init_node.111>
+               	leaq	258188(%rip), %rax      # 0x464930 <init_node.111>
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -17945,17 +18263,17 @@
@@@[(10, 11), (12, 15)]@@@
-               	movq	(%r15), %rdi
@@@@
-               	addq	8(%rbx), %rdi
+               	movq	8(%rbx), %rdi
+               	addq	(%r15), %rdi

@@ -18217,84 +18535,85 @@
@@@[(54, 58), (75, 78), (79, 87), (108, 112)]@@@
-               	movq	(%rbx), %rdi
-               	callq	0x425990 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x425fa0 <std::thread::~thread()>
@@@@
-               	testq	%rdi, %rdi
-               	jne	0x425996 <std::thread::~thread()+0x6>
-               	retq
@@@@
-               	callq	0x43f5f3 <std::terminate()>
-               	nopl	(%rax)
+               	cmpq	$0, (%rdi)
+               	jne	0x425fa9 <std::thread::~thread()+0x9>
+               	popq	%rax
+               	retq
+               	callq	0x4404c3 <std::terminate()>
+               	nop
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x425990 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x425fa0 <std::thread::~thread()>

@@ -18953,42 +19272,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -18997,7 +19318,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -19009,42 +19330,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -19053,7 +19376,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -19065,42 +19388,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -19109,7 +19434,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -19220,31 +19545,35 @@
@@@[(3, 9), (14, 18), (25, 29), (33, 37), (38, 42)]@@@
-               	callq	0x43f8a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 216(%rbx)
+               	callq	0x440774 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	216(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 216(%rbx)
@@@@
-               	addq	$-1, 192(%rbx)
+               	movq	192(%rbx), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 192(%rbx)
@@@@
-               	jmp	0x413730 <free@plt>
-               	nop
+               	jmp	0x413710 <free@plt>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movl	$328, %edi              # imm = 0x148
-               	addq	-64(%rax), %rdi
+               	movq	-64(%rax), %rdi
+               	addq	$328, %rdi              # imm = 0x148
@@@@
-               	jmp	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	jmp	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -19284,8 +19613,10 @@
@@@[(3, 9)]@@@
-               	callq	0x43f8a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x440774 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -19296,14 +19627,14 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -19319,30 +19650,34 @@
@@@[(3, 9), (14, 18), (25, 29)]@@@
-               	callq	0x43f8a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 224(%r14)
+               	callq	0x440774 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	224(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 224(%r14)
@@@@
-               	addq	$-1, 200(%r14)
+               	movq	200(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 200(%r14)
@@@@
-               	jmp	0x413730 <free@plt>
-               	nopl	(%rax)
+               	jmp	0x413710 <free@plt>
+               	nopw	%cs:(%rax,%rax)

@@ -19364,12 +19699,14 @@
@@@[(3, 9)]@@@
-               	callq	0x43f8a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 40(%rbx)
+               	callq	0x440774 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	40(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%rbx)

@@ -19377,7 +19714,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -19411,97 +19748,96 @@
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
-               	je	0x426bca <AddTLSRecord+0x24a>
-               	nopl	(%rax)
+               	je	0x42723a <AddTLSRecord+0x24a>
+               	nopw	(%rax,%rax)

@@ -19525,98 +19861,102 @@
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

@@ -19626,90 +19966,88 @@
@@@[(30, 43), (53, 57), (99, 106)]@@@
-               	jne	0x426d62 <LookupTLS+0x82>
-               	jmp	0x426dbd <LookupTLS+0xdd>
-               	movslq	168(%r9), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
-               	popq	%rcx
-               	retq
-               	leaq	257435(%rip), %rax      # 0x465ae8 <__KonanTlsKey>
+               	jne	0x4273dd <LookupTLS+0x7d>
+               	jmp	0x42743d <LookupTLS+0xdd>
+               	movq	168(%r9), %rax
+               	jmp	0x427459 <LookupTLS+0xf9>
+               	leaq	257696(%rip), %rax      # 0x466268 <__KonanTlsKey>
@@@@
-               	je	0x426db8 <LookupTLS+0xd8>
-               	nop
+               	je	0x427438 <LookupTLS+0xd8>
+               	nopw	(%rax,%rax)
@@@@
-               	movslq	16(%rcx), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
+               	movq	16(%rcx), %rax
+               	movq	72(%r9), %rcx
+               	cltq
+               	leaq	(%rcx,%rax,8), %rax

@@ -19727,8 +20065,10 @@
@@@[(3, 9)]@@@
-               	callq	0x43f8a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x440774 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -19740,7 +20080,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -19748,92 +20088,93 @@
@@@[(39, 45), (46, 53), (70, 76)]@@@
-               	movslq	8(%rsi), %rdx
-               	testq	%rdx, %rdx
-               	je	0x426f86 <Kotlin_processArrayInMark+0xb6>
+               	movl	8(%rsi), %eax
+               	testl	%eax, %eax
+               	je	0x427616 <Kotlin_processArrayInMark+0xb6>
@@@@
-               	leaq	-8(,%rdx,8), %r8
-               	testb	$8, %r8b
-               	jne	0x426f16 <Kotlin_processArrayInMark+0x46>
+               	movslq	%eax, %r8
+               	leaq	-8(,%r8,8), %rdx
+               	testb	$8, %dl
+               	jne	0x4275a6 <Kotlin_processArrayInMark+0x46>
@@@@
-               	testq	%r8, %r8
-               	je	0x426f86 <Kotlin_processArrayInMark+0xb6>
-               	leaq	(%rsi,%rdx,8), %r8
+               	testq	%rdx, %rdx
+               	je	0x427616 <Kotlin_processArrayInMark+0xb6>
+               	leaq	(%rsi,%r8,8), %r8

@@ -19955,215 +20296,221 @@
@@@[(105, 109), (133, 147), (148, 152)]@@@
-               	addq	$-1, 256772(%rip)       # 0x465dc0 <kotlin::mm::GlobalData::instance_+0xa8>
+               	movq	257021(%rip), %rax      # 0x466548 <kotlin::mm::GlobalData::instance_+0xa8>
+               	addq	$-1, %rax
+               	movq	%rax, 257010(%rip)      # 0x466548 <kotlin::mm::GlobalData::instance_+0xa8>
@@@@
-               	callq	0x43f85e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 24(%rsp)
-               	addq	$-1, 256720(%rip)       # 0x465dd8 <kotlin::mm::GlobalData::instance_+0xc0>
-               	jmp	0x4272cc <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x17c>
-               	movq	256695(%rip), %rdi      # 0x465dc8 <kotlin::mm::GlobalData::instance_+0xb0>
+               	callq	0x44072e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	256951(%rip), %rax      # 0x466560 <kotlin::mm::GlobalData::instance_+0xc0>
+               	addq	$-1, %rax
+               	movq	%rax, 256940(%rip)      # 0x466560 <kotlin::mm::GlobalData::instance_+0xc0>
+               	jmp	0x427966 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x186>
+               	movq	256915(%rip), %rdi      # 0x466550 <kotlin::mm::GlobalData::instance_+0xb0>
@@@@
-               	je	0x427330 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x1e0>
-               	nopw	(%rax,%rax)
+               	je	0x4279e0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x200>
+               	nopw	%cs:(%rax,%rax)

@@ -20286,213 +20633,226 @@
@@@[(3, 22), (23, 25), (26, 38), (39, 53), (54, 61), (62, 72), (73, 79), (81, 94), (101, 107), (108, 126), (127, 129), (133, 138), (142, 146), (151, 163), (178, 188), (189, 200), (204, 208), (212, 240), (241, 244), (245, 247), (248, 259), (260, 261), (262, 267), (268, 269), (270, 274), (281, 285), (286, 289), (290, 296), (297, 304), (308, 315), (319, 333), (335, 353), (355, 363)]@@@
-               	movq	280(%r12), %rdx
-               	xorl	%ecx, %ecx
-               	testq	%rdx, %rdx
-               	je	0x427747 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xc7>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %rsi
-               	leaq	(,%rax,8), %rdi
-               	movslq	20(%rdx), %rbp
-               	leaq	(%rsi,%rbp,8), %rbx
+               	movq	280(%r12), %r13
+               	movq	%r13, 8(%rsp)
+               	testq	%r13, %r13
+               	je	0x427e24 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf4>
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
-               	je	0x427755 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
+               	movq	%rbp, 16(%rsp)
+               	movq	%rbx, 24(%rsp)
+               	testq	%r13, %r13
+               	je	0x427e4c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	cmpq	%rbx, %rbp
+               	jb	0x427e4c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
@@@@
-               	cmpq	%rbx, %r13
-               	jb	0x427755 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
-               	movq	8(%rdx), %rdx
-               	testq	%rdx, %rdx
-               	je	0x42774e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xce>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %r13
-               	addq	$24, %r13
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x427e32 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x102>
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
-               	jae	0x427715 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x95>
-               	jmp	0x427755 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x427de0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xb0>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x427e4c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	pxor	%xmm0, %xmm0
+               	movdqa	%xmm0, 16(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	jmp	0x427755 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	jmp	0x427e4a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11a>
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
-               	jne	0x427770 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf0>
-               	testq	%rbp, %rbp
-               	jne	0x4277ad <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	movl	$1, %ecx
-               	movq	%rsi, %rdx
+               	jne	0x427e60 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x130>
@@@@
-               	je	0x42775f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
-               	jmp	0x4277ad <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	nopl	(%rax)
-               	movl	$2, %ecx
-               	movq	%rbp, %rdx
-               	cmpq	%rbp, %rdi
-               	je	0x42775f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
+               	jne	0x427e9a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	testq	%rbp, %rbp
+               	jne	0x427e9a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	movq	%rdx, 8(%rsp)
+               	movl	$1, %esi
+               	movq	%rdx, %r13
+               	jmp	0x427e58 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
+               	nop
+               	movl	$2, %esi
+               	cmpq	%r13, %rcx
+               	je	0x427e58 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
@@@@
-               	movdqa	%xmm0, (%rsp)
+               	movdqa	%xmm0, 32(%rsp)
@@@@
-               	jne	0x4279f1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x371>
-               	movq	(%rbp), %rsi
+               	jne	0x428113 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3e3>
+               	movq	8(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x4277f8 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x178>
-               	movdqa	(%rsp), %xmm1
+               	je	0x427eec <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1bc>
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
-               	je	0x427820 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1a0>
-               	jmp	0x42793b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2bb>
-               	testq	%rbp, %rbp
-               	jne	0x4277b6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	%rcx, %rdi
-               	movq	%rcx, %rsi
+               	cmpq	%rcx, %r13
+               	je	0x427f10 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1e0>
+               	jmp	0x42804e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x31e>
@@@@
-               	je	0x42780c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x18c>
-               	jmp	0x4277b6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	(%r13), %rsi
+               	jne	0x427ea4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	testq	%rbp, %rbp
+               	jne	0x427ea4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
+               	movq	%rdx, %r13
+               	jmp	0x427eff <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1cf>
+               	movq	16(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x427888 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x208>
-               	movdqa	(%rsp), %xmm1
+               	je	0x427f81 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x251>
+               	movdqa	32(%rsp), %xmm1
@@@@
-               	movapd	%xmm1, (%rsp)
-               	addq	$8, %r13
-               	testq	%rbp, %rbp
-               	je	0x4278e1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	cmpq	%rbx, %r13
-               	jb	0x4278e1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	movq	8(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x4278da <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x25a>
-               	movslq	16(%rbp), %rax
-               	leaq	24(,%rax,8), %r13
-               	addq	%rbp, %r13
+               	movapd	%xmm1, 32(%rsp)
+               	addq	$8, %rbp
+               	movq	%rbp, 16(%rsp)
+               	testq	%r13, %r13
+               	je	0x427ffe <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	cmpq	%rbx, %rbp
+               	jb	0x427ffe <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	nopl	(%rax)
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x427fe4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2b4>
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
-               	jae	0x4278a5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x225>
-               	jmp	0x4278e1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x427fa0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x427ffe <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
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
-               	jne	0x427900 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x280>
+               	jne	0x428010 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2e0>
+               	testq	%r13, %r13
+               	jne	0x427ea4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	jne	0x4277b6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	jne	0x427ea4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
@@@@
-               	movq	%rcx, %rdi
-               	testq	%r13, %r13
-               	je	0x4278f0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x4277b6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	movq	%rdx, %r13
+               	jmp	0x42800a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
@@@@
-               	movq	%rbp, %rdi
-               	cmpq	%rbp, %rdx
-               	je	0x4278f0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x4277b6 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	cmpq	%r13, %rcx
+               	je	0x42800a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
+               	jmp	0x427ea4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	movdqa	%xmm0, (%rsp)
-               	jmp	0x427955 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d5>
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movdqa	%xmm0, 32(%rsp)
+               	jmp	0x428075 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x345>
+               	nopw	(%rax,%rax)
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x427950 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d0>
-               	cmpb	$0, 254392(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	je	0x427993 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	cmpq	%r14, 254375(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	jne	0x427993 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	leaq	254366(%rip), %rcx      # 0x465b18 <(anonymous namespace)::current>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	jne	0x428070 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x340>
+               	cmpb	$0, 254496(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x4280b4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	cmpq	%r14, 254479(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	jne	0x4280b4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	leaq	254470(%rip), %rcx      # 0x4662a0 <(anonymous namespace)::current>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	je	0x4279bf <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x33f>
-               	movdqu	(%rax), %xmm1
-               	jmp	0x4279d3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x353>
-               	cmpb	$0, 254598(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x4279db <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	cmpq	%r14, 254581(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x4279db <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	leaq	254572(%rip), %rcx      # 0x465c18 <(anonymous namespace)::last>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	je	0x4280e1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3b1>
+               	movupd	(%rax), %xmm1
+               	jmp	0x4280f5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3c5>
+               	cmpb	$0, 254701(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x4280fd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	cmpq	%r14, 254684(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x4280fd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	leaq	254675(%rip), %rcx      # 0x4663a0 <(anonymous namespace)::last>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	jne	0x42798d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x30d>
-               	pxor	%xmm1, %xmm1
-               	movdqu	%xmm1, 16(%rax)
-               	movdqu	%xmm1, (%rax)
+               	jne	0x4280ae <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x37e>
+               	xorpd	%xmm1, %xmm1
+               	movupd	%xmm1, 16(%rax)
+               	movupd	%xmm1, (%rax)

@@ -20543,41 +20903,41 @@
@@@[(36, 44), (46, 48), (49, 51)]@@@
-               	callq	0x4322f0 <mi_free>
-               	movq	(%r15), %rax
-               	movq	32(%r15), %rcx
-               	movq	%rcx, 8(%rax)
+               	callq	0x432c00 <mi_free>
+               	movq	32(%r15), %rax
+               	movq	(%r15), %rcx
+               	movq	%rax, 8(%rcx)
@@@@
-               	movdqu	16(%rax), %xmm1
+               	movdqu	16(%rcx), %xmm1
@@@@
-               	movdqu	%xmm1, 16(%rax)
+               	movdqu	%xmm1, 16(%rcx)

@@ -20616,12 +20976,12 @@
@@@[(9, 13)]@@@
-               	jmp	0x427ba3 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
-               	movl	%ebx, %ebx
+               	jmp	0x4282c3 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
+               	movl	%eax, %ebx

@@ -20640,26 +21000,28 @@
@@@[(14, 18), (19, 23), (24, 27), (28, 35)]@@@
-               	movslq	20(%rcx), %rbp
-               	testq	%rbp, %rbp
+               	movl	20(%rcx), %ecx
+               	testl	%ecx, %ecx
@@@@
-               	js	0x427be0 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
-               	movl	%ebp, %ebp
+               	js	0x428300 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
+               	movl	%ecx, %ebp
@@@@
-               	jmp	0x427bf2 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc2>
+               	jmp	0x428315 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc5>
+               	nop
@@@@
-               	movl	24(%rax), %eax
-               	negq	%rbp
-               	imulq	%rax, %rbp
+               	movslq	%ecx, %rcx
+               	movl	24(%rax), %ebp
+               	negq	%rcx
+               	imulq	%rcx, %rbp

@@ -20681,68 +21043,69 @@
@@@[(24, 35), (44, 50)]@@@
-               	movslq	20(%rax), %rbx
-               	testq	%rbx, %rbx
-               	jns	0x427b5b <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
-               	movl	8(%rsi), %eax
-               	negq	%rbx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	jns	0x42827b <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
+               	cltq
+               	movl	8(%rsi), %ebx
+               	negq	%rax
@@@@
-               	je	0x427cd1 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
-               	nopw	(%rax,%rax)
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x4283f1 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
+               	nopl	(%rax)
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>

@@ -20762,23 +21125,23 @@
@@@[(10, 13), (14, 15)]@@@
-               	jne	0x427de8 <GCStateHolder::schedule()+0x68>
-               	movq	40(%rbx), %rax
+               	jne	0x428508 <GCStateHolder::schedule()+0x68>
@@@@
+               	movq	40(%rbx), %rax

@@ -20787,35 +21150,38 @@
@@@[(8, 10), (11, 16), (17, 21), (31, 35)]@@@
+               	movq	%rdi, %rax
+               	movq	(%rdi), %rdi
@@@@
-               	je	0x427e10 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x428539 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
+               	movl	8(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x427e10 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x428539 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
@@@@
-               	jmp	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -20828,54 +21194,52 @@
@@@[(3, 8), (15, 21), (60, 65)]@@@
-               	movl	$248, %eax
-               	addq	(%rdi), %rax
-               	movq	%rax, %rdi
+               	movq	(%rdi), %rdi
+               	addq	$248, %rdi
@@@@
-               	je	0x427e91 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
-               	nopw	(%rax,%rax)
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x4285c1 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movq	(%rdi), %rdi
-               	jmp	0x429b00 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
-               	nopl	(%rax,%rax)
+               	jmp	0x42a300 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
+               	nopw	%cs:(%rax,%rax)

@@ -20918,96 +21282,99 @@
@@@[(6, 9), (15, 18), (19, 25), (35, 39), (43, 49), (67, 111), (113, 121), (133, 157), (159, 164)]@@@
-               	movq	%rcx, 208(%rsp)
+               	movq	%rcx, 192(%rsp)
+               	leaq	104(%rsp), %r13
@@@@
-               	jmp	0x428005 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe5>
+               	jmp	0x428743 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf3>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	104(%rsp), %rdi
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	je	0x427f79 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
-               	movq	(%rax), %r13
+               	je	0x4286a9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
+               	movq	(%rax), %rbp
@@@@
-               	je	0x428031 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x111>
-               	nopl	(%rax,%rax)
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x428771 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x121>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movups	%xmm0, 252600(%rip)     # 0x465b18 <(anonymous namespace)::current>
-               	movups	%xmm0, 252609(%rip)     # 0x465b28 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 252618(%rip)     # 0x465b38 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 252627(%rip)     # 0x465b48 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 252636(%rip)     # 0x465b58 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 252645(%rip)     # 0x465b68 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 252654(%rip)     # 0x465b78 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 252663(%rip)     # 0x465b88 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 252672(%rip)     # 0x465b98 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 252681(%rip)     # 0x465ba8 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 252690(%rip)     # 0x465bb8 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 252699(%rip)     # 0x465bc8 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 252708(%rip)     # 0x465bd8 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 252717(%rip)     # 0x465be8 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 252726(%rip)     # 0x465bf8 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 252735(%rip)     # 0x465c08 <(anonymous namespace)::current+0xf0>
-               	movq	%r13, 252488(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	movb	$1, 252489(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 252485(%rip)      # 0x465b28 <(anonymous namespace)::current+0x10>
-               	movb	$1, 252486(%rip)        # 0x465b30 <(anonymous namespace)::current+0x18>
-               	movb	$0, 252449(%rip)        # 0x465b12 <(anonymous namespace)::lock>
+               	movups	%xmm0, 252672(%rip)     # 0x4662a0 <(anonymous namespace)::current>
+               	movups	%xmm0, 252681(%rip)     # 0x4662b0 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 252690(%rip)     # 0x4662c0 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 252699(%rip)     # 0x4662d0 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 252708(%rip)     # 0x4662e0 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 252717(%rip)     # 0x4662f0 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 252726(%rip)     # 0x466300 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 252735(%rip)     # 0x466310 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 252744(%rip)     # 0x466320 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 252753(%rip)     # 0x466330 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 252762(%rip)     # 0x466340 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 252771(%rip)     # 0x466350 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 252780(%rip)     # 0x466360 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 252789(%rip)     # 0x466370 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 252798(%rip)     # 0x466380 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 252807(%rip)     # 0x466390 <(anonymous namespace)::current+0xf0>
+               	movq	%rbp, 252560(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	movb	$1, 252561(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 252557(%rip)      # 0x4662b0 <(anonymous namespace)::current+0x10>
+               	movb	$1, 252558(%rip)        # 0x4662b8 <(anonymous namespace)::current+0x18>
+               	movb	$0, 252519(%rip)        # 0x466298 <(anonymous namespace)::lock>
@@@@
-               	xchgb	%al, 257239(%rip)       # 0x466dd8 <(anonymous namespace)::markingRequested (.0.0)>
-               	movq	%r13, %rax
-               	xchgq	%rax, 257245(%rip)      # 0x466de8 <(anonymous namespace)::markingEpoch (.0)>
-               	callq	0x4266a0 <kotlin::mm::RequestThreadsSuspension()>
+               	xchgb	%al, 257311(%rip)       # 0x467560 <(anonymous namespace)::markingRequested (.0.0)>
+               	movq	%rbp, %rax
+               	xchgq	%rax, 257317(%rip)      # 0x467570 <(anonymous namespace)::markingEpoch (.0)>
+               	callq	0x426cb0 <kotlin::mm::RequestThreadsSuspension()>
@@@@
-               	jne	0x428120 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x200>
-               	cmpb	$0, 252392(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	je	0x42814a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x22a>
-               	leaq	252375(%rip), %rbx      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 252368(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x428163 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x243>
-               	cmpb	$0, 252623(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x428170 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	leaq	252606(%rip), %rbx      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 252599(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x428170 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x428860 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x210>
+               	cmpb	$0, 252464(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x42888a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x23a>
+               	leaq	252447(%rip), %rbx      # 0x4662a0 <(anonymous namespace)::current>
+               	cmpq	%rbp, 252440(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x4288a3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x253>
+               	cmpb	$0, 252695(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x4288b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	leaq	252678(%rip), %rbx      # 0x4663a0 <(anonymous namespace)::last>
+               	cmpq	%rbp, 252671(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x4288b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	movb	$0, 252315(%rip)        # 0x465b12 <(anonymous namespace)::lock>
-               	nopw	(%rax,%rax)
+               	movq	%rbp, (%rsp)
+               	movb	$0, 252381(%rip)        # 0x466298 <(anonymous namespace)::lock>
+               	nopl	(%rax,%rax)

@@ -21015,281 +21382,291 @@
@@@[(64, 84), (95, 102), (103, 116), (172, 193), (194, 199), (203, 206), (225, 230), (231, 236), (244, 248), (272, 284), (312, 315), (316, 321), (339, 346), (350, 372)]@@@
-               	je	0x42825f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x33f>
-               	leaq	252098(%rip), %rax      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 252091(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x428278 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x358>
-               	cmpb	$0, 252346(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x428283 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
-               	leaq	252329(%rip), %rax      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 252322(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x428283 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
+               	je	0x4289a3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x353>
+               	leaq	252170(%rip), %rax      # 0x4662a0 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 252159(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x4289c0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x370>
+               	cmpb	$0, 252414(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x4289cb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
+               	leaq	252397(%rip), %rax      # 0x4663a0 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 252386(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x4289cb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
@@@@
-               	movq	216(%rsp), %rdi
-               	movq	%r13, %rsi
-               	callq	0x4293a0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movq	200(%rsp), %rdi
+               	movq	(%rsp), %rbp
+               	movq	%rbp, %rsi
+               	callq	0x429b80 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
-               	movq	%r13, %rsi
-               	callq	0x427150 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
-               	movq	%r13, %rdi
-               	movq	208(%rsp), %rsi
-               	callq	0x427b30 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	movq	%rbp, %rsi
+               	callq	0x4277e0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
+               	movq	%rbp, %rdi
+               	movq	192(%rsp), %rsi
+               	callq	0x428250 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
+               	nop
@@@@
-               	jne	0x428360 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x440>
-               	cmpb	$0, 251816(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	leaq	252545(%rip), %r14      # 0x465e00 <kotlin::mm::GlobalData::instance_+0xe8>
-               	je	0x428391 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x471>
-               	leaq	251792(%rip), %rax      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 251785(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x4283af <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x48f>
-               	cmpb	$0, 252040(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x4283d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b0>
-               	leaq	252023(%rip), %rax      # 0x465c18 <(anonymous namespace)::last>
+               	jne	0x428aa0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x450>
+               	cmpb	$0, 251888(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	leaq	252617(%rip), %r14      # 0x466588 <kotlin::mm::GlobalData::instance_+0xe8>
+               	je	0x428ad5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x485>
+               	leaq	251864(%rip), %rax      # 0x4662a0 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 251853(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x428af7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4a7>
+               	cmpb	$0, 252108(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x428b10 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c0>
+               	leaq	252091(%rip), %rax      # 0x4663a0 <(anonymous namespace)::last>
@@@@
-               	cmpq	%r13, 252011(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x4283d2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 252075(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x428b12 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jmp	0x4283d2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
-               	nopl	(%rax,%rax)
+               	jmp	0x428b12 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jne	0x4283f0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4d0>
-               	leaq	16(%rsp), %r15
-               	movq	%r15, 24(%rsp)
+               	jne	0x428b30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4e0>
+               	leaq	8(%rsp), %r15
@@@@
-               	movq	$0, 32(%rsp)
-               	movq	252384(%rip), %rbp      # 0x465e00 <kotlin::mm::GlobalData::instance_+0xe8>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	movq	252456(%rip), %rbp      # 0x466588 <kotlin::mm::GlobalData::instance_+0xe8>
@@@@
-               	addq	$-1, 252348(%rip)       # 0x465df8 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	252421(%rip), %rax      # 0x466580 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 252410(%rip)      # 0x466580 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	callq	0x43f85e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 32(%rsp)
-               	addq	$-1, 252296(%rip)       # 0x465e10 <kotlin::mm::GlobalData::instance_+0xf8>
-               	jmp	0x42844c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x52c>
+               	callq	0x44072e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	252347(%rip), %rax      # 0x466598 <kotlin::mm::GlobalData::instance_+0xf8>
+               	addq	$-1, %rax
+               	movq	%rax, 252336(%rip)      # 0x466598 <kotlin::mm::GlobalData::instance_+0xf8>
+               	jmp	0x428b96 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x546>
@@@@
-               	movq	32(%rsp), %rax
-               	movq	%r15, 24(%rsp)
+               	movq	24(%rsp), %rax
@@@@
-               	movq	$0, 32(%rsp)
-               	jmp	0x428510 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x5f0>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	jmp	0x428c70 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
@@@@
-               	je	0x428551 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x631>
-               	nopw	(%rax,%rax)
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movq	(%rsp), %r14
+               	je	0x428cb1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x661>
+               	nop
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x428540 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
-               	cmpb	$0, 251336(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	je	0x42856a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x64a>
-               	leaq	251319(%rip), %rax      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 251312(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x428583 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x663>
-               	cmpb	$0, 251567(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x4285ad <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
-               	leaq	251550(%rip), %rax      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 251543(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x4285ad <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
+               	jne	0x428ca0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x650>
+               	cmpb	$0, 251376(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x428cca <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x67a>
+               	leaq	251359(%rip), %rax      # 0x4662a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 251352(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x428ce3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x693>
+               	cmpb	$0, 251607(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x428d0d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>
+               	leaq	251590(%rip), %rax      # 0x4663a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 251583(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x428d0d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>

@@ -21314,186 +21691,197 @@
@@@[(10, 14), (21, 29), (42, 64), (131, 155), (160, 169), (175, 181), (189, 211), (214, 222), (223, 226), (231, 234), (254, 259), (262, 270), (271, 275), (278, 286), (287, 294)]@@@
-               	addq	$-1, 251730(%rip)       # 0x465df8 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	251771(%rip), %rax      # 0x466580 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 251760(%rip)      # 0x466580 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jmp	0x4285d8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6b8>
-               	nop
-               	movb	$0, 251729(%rip)        # 0x465e18 <kotlin::mm::GlobalData::instance_+0x100>
-               	movq	251690(%rip), %rbx      # 0x465df8 <kotlin::mm::GlobalData::instance_+0xe0>
+               	jmp	0x428d38 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6e8>
+               	nopl	(%rax,%rax)
+               	movb	$0, 251753(%rip)        # 0x4665a0 <kotlin::mm::GlobalData::instance_+0x100>
+               	movq	251714(%rip), %rbx      # 0x466580 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jne	0x4286e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7c0>
-               	cmpb	$0, 250920(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	je	0x42870a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7ea>
-               	leaq	250903(%rip), %rax      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 250896(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x428723 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x803>
-               	cmpb	$0, 251151(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x42874d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
-               	leaq	251134(%rip), %rax      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 251127(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x42874d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
+               	jne	0x428e50 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x800>
+               	cmpb	$0, 250944(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x428e7a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82a>
+               	leaq	250927(%rip), %rax      # 0x4662a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 250920(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x428e93 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x843>
+               	cmpb	$0, 251175(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x428ebd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
+               	leaq	251158(%rip), %rax      # 0x4663a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 251151(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x428ebd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
@@@@
-               	jne	0x4287f0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8d0>
-               	cmpb	$0, 250648(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	je	0x42881a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8fa>
-               	leaq	250631(%rip), %rbx      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 250624(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x428833 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x913>
-               	cmpb	$0, 250879(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x428840 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	leaq	250862(%rip), %rbx      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 250855(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x428840 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x428f60 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x910>
+               	cmpb	$0, 250672(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x428f8a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x93a>
+               	leaq	250655(%rip), %rbx      # 0x4662a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 250648(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x428fa3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x953>
+               	cmpb	$0, 250903(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x428fb0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	leaq	250886(%rip), %rbx      # 0x4663a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 250879(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x428fb0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	leaq	104(%rsp), %rax
-               	movups	%xmm0, (%rax)
-               	movq	$0, 16(%rax)
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
-               	movq	251322(%rip), %rax      # 0x465e20 <kotlin::mm::GlobalData::instance_+0x108>
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>
+               	movq	251349(%rip), %rax      # 0x4665a8 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	je	0x428891 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x971>
-               	nop
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x429001 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9b1>
+               	nopl	(%rax,%rax)
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	cmpb	$0, 250492(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	je	0x4288b6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x996>
-               	leaq	250475(%rip), %rax      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 250468(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x4288cf <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9af>
-               	cmpb	$0, 250723(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x4288ed <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
-               	leaq	250706(%rip), %rax      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 250699(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x4288ed <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	cmpb	$0, 250516(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x42902a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9da>
+               	leaq	250499(%rip), %rax      # 0x4662a0 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 250488(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x429047 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9f7>
+               	cmpb	$0, 250743(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x42905e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
+               	leaq	250726(%rip), %rax      # 0x4663a0 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 250715(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x42905e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
@@@@
-               	jne	0x4288ed <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	je	0x429080 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa30>
+               	movb	$0, 250419(%rip)        # 0x466298 <(anonymous namespace)::lock>
+               	movq	(%r14), %rbx
+               	testq	%rbx, %rbx
+               	jne	0x42909a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa4a>
+               	jmp	0x429240 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movq	%r13, 136(%rsp)
-               	movb	$0, 250390(%rip)        # 0x465b12 <(anonymous namespace)::lock>
+               	movb	$0, 250378(%rip)        # 0x466298 <(anonymous namespace)::lock>
@@@@
-               	jmp	0x428927 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
+               	jmp	0x4290b7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	nop
@@@@
-               	testb	$64, 88(%rax)
-               	jne	0x428980 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa60>
+               	movl	88(%rax), %eax
+               	testb	$64, %al
+               	jne	0x429110 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xac0>
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x428a56 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb36>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x4291f6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba6>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x428a64 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb44>
-               	nopw	(%rax,%rax)
+               	jmp	0x429206 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbb6>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x42899c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa7c>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x42912a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xada>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x4289aa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa8a>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jmp	0x42913a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaea>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -21502,38 +21890,42 @@
@@@[(3, 13), (14, 17), (37, 47), (51, 60)]@@@
-               	callq	0x429a60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
-               	movq	16(%rsp), %r15
-               	movq	24(%rsp), %rbx
-               	movq	$0, 16(%rsp)
-               	movq	%r15, 160(%rsp)
+               	callq	0x42a250 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
+               	movq	16(%rsp), %rbx
+               	movq	8(%rsp), %rax
+               	movq	$0, 8(%rsp)
+               	movq	%rax, 144(%rsp)
@@@@
-               	je	0x428a15 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaf5>
+               	movq	144(%rsp), %r15
+               	je	0x4291ad <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb5d>
@@@@
-               	addq	$1, 120(%rsp)
-               	leaq	160(%rsp), %rdi
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	16(%rsp), %r15
+               	movq	120(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 120(%rsp)
+               	leaq	144(%rsp), %rdi
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	leaq	8(%rsp), %r15
@@@@
-               	jne	0x428927 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
-               	jmp	0x428aa0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb80>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jne	0x4290b7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	jmp	0x429240 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -21542,422 +21934,441 @@
@@@[(14, 17), (32, 56), (62, 69), (73, 74), (75, 81), (85, 102), (110, 162), (236, 238), (251, 266), (269, 276), (277, 290), (296, 299), (300, 306), (307, 354), (358, 363), (364, 370), (387, 391), (408, 414), (420, 465), (528, 541), (542, 545), (557, 567), (611, 615)]@@@
-               	nop
-               	movq	250745(%rip), %rax      # 0x465e20 <kotlin::mm::GlobalData::instance_+0x108>
+               	movq	250721(%rip), %rax      # 0x4665a8 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	jne	0x428ac0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba0>
-               	cmpb	$0, 249928(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %rsi
-               	je	0x428af2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbd2>
-               	leaq	249903(%rip), %rax      # 0x465b18 <(anonymous namespace)::current>
-               	cmpq	%rsi, 249896(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	je	0x428b0b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbeb>
-               	cmpb	$0, 250151(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x428b29 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
-               	leaq	250134(%rip), %rax      # 0x465c18 <(anonymous namespace)::last>
-               	cmpq	%rsi, 250127(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x428b29 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
+               	jne	0x429260 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc10>
+               	cmpb	$0, 249904(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	movq	(%rsp), %r14
+               	je	0x42928e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc3e>
+               	leaq	249883(%rip), %rax      # 0x4662a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 249876(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	je	0x4292a7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc57>
+               	cmpb	$0, 250131(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x4292c5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
+               	leaq	250114(%rip), %rax      # 0x4663a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 250107(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x4292c5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
@@@@
-               	movb	$0, 249826(%rip)        # 0x465b12 <(anonymous namespace)::lock>
-               	movq	200(%rsp), %rdi
-               	callq	0x4293a0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movb	$0, 249804(%rip)        # 0x466298 <(anonymous namespace)::lock>
+               	movq	184(%rsp), %rdi
+               	movq	%r14, %rsi
+               	callq	0x429b80 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
+               	leaq	104(%rsp), %r13
@@@@
-               	je	0x428b61 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc41>
-               	nop
-               	callq	0x4252a0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x429311 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcc1>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x4258b0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x428b50 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc30>
-               	cmpb	$0, 249784(%rip)        # 0x465b20 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %r13
-               	je	0x428c30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	cmpq	%r13, 249755(%rip)      # 0x465b18 <(anonymous namespace)::current>
-               	jne	0x428c30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 249769(%rip)      # 0x465b38 <(anonymous namespace)::current+0x20>
-               	movb	$1, 249770(%rip)        # 0x465b40 <(anonymous namespace)::current+0x28>
+               	jne	0x429300 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcb0>
+               	cmpb	$0, 249744(%rip)        # 0x4662a8 <(anonymous namespace)::current+0x8>
+               	je	0x4293d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	cmpq	%r14, 249723(%rip)      # 0x4662a0 <(anonymous namespace)::current>
+               	jne	0x4293d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 249737(%rip)      # 0x4662c0 <(anonymous namespace)::current+0x20>
+               	movb	$1, 249738(%rip)        # 0x4662c8 <(anonymous namespace)::current+0x28>
@@@@
-               	movups	%xmm0, 249696(%rip)     # 0x465b18 <(anonymous namespace)::current>
-               	movups	%xmm0, 249705(%rip)     # 0x465b28 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 249714(%rip)     # 0x465b38 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 249723(%rip)     # 0x465b48 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 249732(%rip)     # 0x465b58 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 249741(%rip)     # 0x465b68 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 249750(%rip)     # 0x465b78 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 249759(%rip)     # 0x465b88 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 249768(%rip)     # 0x465b98 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 249777(%rip)     # 0x465ba8 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 249786(%rip)     # 0x465bb8 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 249795(%rip)     # 0x465bc8 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 249804(%rip)     # 0x465bd8 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 249813(%rip)     # 0x465be8 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 249822(%rip)     # 0x465bf8 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 249831(%rip)     # 0x465c08 <(anonymous namespace)::current+0xf0>
-               	jmp	0x428c55 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	nopw	%cs:(%rax,%rax)
-               	cmpb	$0, 249833(%rip)        # 0x465c20 <(anonymous namespace)::last+0x8>
-               	je	0x428c55 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	cmpq	%r13, 249816(%rip)      # 0x465c18 <(anonymous namespace)::last>
-               	jne	0x428c55 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	callq	0x440250 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 249834(%rip)      # 0x465c38 <(anonymous namespace)::last+0x20>
-               	movb	$1, 249835(%rip)        # 0x465c40 <(anonymous namespace)::last+0x28>
-               	movb	$0, 249526(%rip)        # 0x465b12 <(anonymous namespace)::lock>
+               	movups	%xmm0, 249664(%rip)     # 0x4662a0 <(anonymous namespace)::current>
+               	movups	%xmm0, 249673(%rip)     # 0x4662b0 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 249682(%rip)     # 0x4662c0 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 249691(%rip)     # 0x4662d0 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 249700(%rip)     # 0x4662e0 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 249709(%rip)     # 0x4662f0 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 249718(%rip)     # 0x466300 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 249727(%rip)     # 0x466310 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 249736(%rip)     # 0x466320 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 249745(%rip)     # 0x466330 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 249754(%rip)     # 0x466340 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 249763(%rip)     # 0x466350 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 249772(%rip)     # 0x466360 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 249781(%rip)     # 0x466370 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 249790(%rip)     # 0x466380 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 249799(%rip)     # 0x466390 <(anonymous namespace)::current+0xf0>
+               	jmp	0x4293f5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	nop
+               	cmpb	$0, 249809(%rip)        # 0x4663a8 <(anonymous namespace)::last+0x8>
+               	je	0x4293f5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	cmpq	%r14, 249792(%rip)      # 0x4663a0 <(anonymous namespace)::last>
+               	jne	0x4293f5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	callq	0x441120 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 249810(%rip)      # 0x4663c0 <(anonymous namespace)::last+0x20>
+               	movb	$1, 249811(%rip)        # 0x4663c8 <(anonymous namespace)::last+0x28>
+               	movb	$0, 249500(%rip)        # 0x466298 <(anonymous namespace)::lock>
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
-               	movups	125553(%rip), %xmm0     # 0x44785b <typeinfo name for kotlin::gc::GCSchedulerData+0x1012>
-               	movups	%xmm0, (%rax)
-               	movq	%r13, 14(%rax)
+               	movq	%rax, 16(%rsp)
@@@@
-               	movb	$1, 56(%rsp)
-               	leaq	1530(%rip), %r13        # 0x429400 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
-               	movq	%r13, 64(%rsp)
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rax)
+               	movq	14(%rbx), %rcx
+               	movq	%rcx, 14(%rax)
+               	movq	$22, 24(%rsp)
+               	movq	16(%rsp), %rbx
+               	movb	$0, 22(%rbx)
+               	movb	$1, 48(%rsp)
+               	leaq	1576(%rip), %rax        # 0x429be0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
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
+               	je	0x4296f0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a0>
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
-               	movq	241996(%rip), %rdx      # 0x463fc0 <write+0x463fc0>
-               	callq	0x44247e <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
-               	movq	8(%rsp), %rdi
-               	testq	%rdi, %rdi
-               	movq	136(%rsp), %r13
-               	movq	152(%rsp), %rbx
-               	je	0x428e99 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf79>
-               	movq	(%rdi), %rax
-               	callq	*8(%rax)
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x428ebd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	movq	24(%rsp), %rdi
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x428ebd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, (%rbp)
-               	jne	0x42900f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10ef>
-               	movq	144(%rsp), %rax
-               	movq	%rax, (%rbp)
-               	movq	$0, 144(%rsp)
-               	cmpb	$0, 192(%rsp)
-               	je	0x428cf7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	movq	160(%rsp), %rdi
-               	leaq	176(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x428cf7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	callq	0x413730 <free@plt>
-               	jmp	0x428cf7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	movq	32(%rsp), %rcx
+               	movq	%rcx, 32(%rax)
+               	jmp	0x4296f6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a6>
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
-               	callq	0x4322f0 <mi_free>
-               	jmp	0x428f90 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1070>
-               	movq	%r13, 16(%rsp)
+               	callq	0x432c00 <mi_free>
+               	jmp	0x429690 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1040>
+               	movq	%r14, 8(%rsp)
@@@@
-               	jmp	0x428f5d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x103d>
+               	jmp	0x429651 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1001>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rcx)
+               	movq	%r13, %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 24(%rax)
+               	movq	%rdx, 16(%rsp)
+               	movq	$0, 24(%rsp)
+               	movb	$0, 32(%rsp)
+               	movb	$1, 48(%rax)
+               	leaq	1216(%rip), %rcx        # 0x429be0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
+               	movq	%rcx, 56(%rax)
+               	movq	%rax, 64(%rsp)
+               	leaq	136(%rsp), %rdi
+               	leaq	64(%rsp), %rsi
+               	movq	239747(%rip), %rdx      # 0x463fc0 <write+0x463fc0>
+               	callq	0x44334e <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
+               	movq	64(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x429752 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1102>
+               	movq	(%rdi), %rax
+               	callq	*8(%rax)
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	leaq	104(%rsp), %r13
+               	je	0x42977b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	movq	16(%rsp), %rdi
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x42977b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, (%rbp)
+               	jne	0x4297ee <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x119e>
+               	movq	136(%rsp), %rax
+               	movq	%rax, (%rbp)
+               	movq	$0, 136(%rsp)
+               	cmpb	$0, 176(%rsp)
+               	je	0x429497 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	movq	144(%rsp), %rdi
+               	leaq	160(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x429497 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	callq	0x413710 <free@plt>
+               	jmp	0x429497 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
@@@@
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x4290b4 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
-               	movq	24(%rsp), %rbx
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rbx
-               	jne	0x4290ac <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x118c>
-               	jmp	0x4290b4 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	je	0x429893 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
+               	movq	16(%rsp), %rbx
+               	jmp	0x429881 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1231>
@@@@
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rbx
+               	je	0x429893 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
@@@@
-               	je	0x4290d8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x11b8>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, 241368(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x42916f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x124f>
-               	movq	152(%rsp), %rdi
+               	je	0x4298b7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1267>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, 239353(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x429949 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x12f9>
+               	movq	%r13, %rdi
@@@@
-               	callq	0x4252b0 <__clang_call_terminate>
-               	nopw	(%rax,%rax)
+               	callq	0x4258c0 <__clang_call_terminate>
+               	nopw	%cs:(%rax,%rax)

@@ -22018,37 +22429,36 @@
@@@[(3, 7), (8, 13), (18, 24), (26, 27), (32, 40), (41, 54)]@@@
-               	movq	8(%rdi), %r15
-               	movq	%r15, 8(%rsp)
+               	movq	8(%rdi), %rdi
+               	movq	%rdi, 8(%rsp)
@@@@
-               	cmpq	$0, 240801(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x429325 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x35>
-               	movq	%r15, %rdi
+               	cmpq	$0, 238785(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x429b02 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x32>
@@@@
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jg	0x42936d <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x7d>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jg	0x429b48 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x78>
@@@@
+               	nopl	(%rax)
@@@@
-               	callq	0x43fea0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jle	0x429340 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
+               	callq	0x440d70 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jle	0x429b20 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
@@@@
-               	je	0x429389 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	movq	8(%rsp), %r15
-               	testq	%r15, %r15
-               	je	0x429389 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	cmpq	$0, 240702(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x429384 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x94>
-               	movq	%r15, %rdi
+               	je	0x429b66 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x429b66 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	cmpq	$0, 238686(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x429b61 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x91>

@@ -22059,8 +22469,8 @@
@@@[(3, 7)]@@@
-               	callq	0x44018a <std::__throw_system_error(int)>
-               	nop
+               	callq	0x44105a <std::__throw_system_error(int)>
+               	nopl	(%rax)

@@ -22106,140 +22516,140 @@
@@@[(39, 41), (42, 58), (71, 79), (80, 85), (89, 107), (108, 121), (122, 128), (138, 143), (169, 175), (182, 188), (196, 201)]@@@
-               	movq	%rax, 128(%rsp)
-               	leaq	128(%r13), %rax
@@@@
-               	xorl	%eax, %eax
-               	movq	%rax, 40(%rsp)
-               	leaq	8(%rsp), %rbp
-               	movq	%r14, 112(%rsp)
-               	movq	%r15, 104(%rsp)
-               	jmp	0x4294d5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	leaq	128(%r13), %rax
+               	movq	%rax, 112(%rsp)
+               	xorl	%ebp, %ebp
+               	leaq	8(%rsp), %rbx
+               	movq	%r14, 104(%rsp)
+               	movq	%r15, 96(%rsp)
+               	jmp	0x429ca5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>
+               	nopl	(%rax)
@@@@
-               	movq	32(%r13), %rbx
-               	movb	$1, %al
-               	testq	%rbx, %rbx
-               	jne	0x429548 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x148>
+               	movq	32(%r13), %rax
+               	movb	$1, %cl
+               	testq	%rax, %rax
+               	jne	0x429d13 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x133>
@@@@
-               	movq	40(%rsp), %rax
-               	cmpq	%rax, 160(%r13)
-               	jne	0x429542 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x142>
+               	cmpq	%rbp, 160(%r13)
+               	jne	0x429d0d <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12d>
@@@@
-               	movq	%rbp, %rsi
-               	callq	0x43fea0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	32(%r13), %rbx
-               	testq	%rbx, %rbx
-               	je	0x429510 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x110>
-               	jmp	0x429544 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x144>
-               	xorl	%ebx, %ebx
-               	movb	16(%rsp), %al
-               	movq	16(%r13), %rcx
+               	movq	%rbx, %rsi
+               	callq	0x440d70 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	32(%r13), %rax
+               	testq	%rax, %rax
+               	je	0x429ce0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x100>
+               	jmp	0x429d0f <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12f>
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
-               	je	0x429881 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x481>
+               	movups	%xmm0, (%rax)
+               	testb	%cl, %cl
+               	je	0x42a074 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x494>
@@@@
-               	testq	%rbx, %rbx
-               	je	0x429730 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
+               	cmpq	$0, 80(%rsp)
+               	je	0x429f20 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movq	%rbx, 144(%rsp)
@@@@
-               	jne	0x429644 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	jmp	0x4296f0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
-               	nop
+               	jne	0x429e1e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	jmp	0x429ed0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
+               	nopl	(%rax)
@@@@
-               	callq	0x43f8a4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 280(%r14)
+               	callq	0x440774 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	280(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 280(%r14)
@@@@
-               	testb	$64, 88(%rsi)
-               	je	0x429661 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x261>
+               	movl	88(%rsi), %eax
+               	testb	$64, %al
+               	je	0x429e3c <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x25c>

@@ -22258,99 +22668,103 @@
@@@[(6, 10), (18, 35), (51, 54), (55, 60), (67, 69), (97, 102)]@@@
-               	addq	$-1, 256(%r14)
+               	movq	256(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 256(%r14)
@@@@
-               	jne	0x429644 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	nopl	(%rax)
-               	cmpq	$0, 136(%rsp)
-               	movq	112(%rsp), %r14
-               	movq	104(%rsp), %r15
-               	movq	144(%rsp), %rdi
-               	je	0x429730 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
-               	movl	60(%rsp), %ecx
+               	jne	0x429e1e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	nop
+               	cmpq	$0, 128(%rsp)
+               	movq	104(%rsp), %r14
+               	movq	96(%rsp), %r15
+               	movq	144(%rsp), %rbx
+               	movq	136(%rsp), %rdi
+               	je	0x429f20 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movl	52(%rsp), %ecx
@@@@
-               	movq	40(%rsp), %rax
-               	movq	%rax, 24(%rsp)
+               	movq	%rbx, 24(%rsp)
@@@@
-               	je	0x42988b <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x48b>
-               	movq	120(%rsp), %rdi
+               	je	0x42a07e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x49e>
+               	movq	%rbx, %r12
+               	movq	112(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	leaq	8(%rsp), %rbp
-               	je	0x4294d5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
+               	leaq	8(%rsp), %rbx
+               	movq	%r12, %rbp
+               	je	0x429ca5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>

@@ -22496,7 +22910,7 @@
@@@[(3, 5)]@@@
-               	movq	%rsi, %r13
+               	movq	%rsi, %rbx

@@ -22506,27 +22920,31 @@
@@@[(3, 5), (6, 18), (20, 30), (31, 33)]@@@
-               	movq	(%rbp), %rbx
+               	movq	(%rbp), %r13
@@@@
-               	testq	%rbx, %rbx
-               	je	0x429abc <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
-               	movq	%rbx, %rdi
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x4322f0 <mi_free>
+               	testq	%r13, %r13
+               	je	0x42a2ac <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
+               	movq	%r13, %rdi
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x432c00 <mi_free>
@@@@
-               	jne	0x429ac9 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x69>
-               	movq	%r12, 8(%r13)
+               	jne	0x42a2b5 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x65>
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

@@ -22535,7 +22953,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -22543,29 +22961,29 @@
@@@[(3, 5)]@@@
-               	movq	%rdi, %rbx
+               	movq	(%rdi), %rbx

@@ -22730,127 +23148,129 @@
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
-               	jb	0x429dd2 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x72>
-               	cmpq	$0, 24(%rbp)
-               	je	0x429f78 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x218>
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
+               	jb	0x42a5d0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x70>
+               	cmpq	$0, 24(%rbx)
+               	je	0x42a788 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x228>
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
-               	movb	249760(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 64(%rbx)
+               	movb	249642(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x429de1 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x81>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x429ff0 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x42a5df <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x7f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x42a7f0 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
+               	movq	%rax, 24(%rsp)
+               	movb	$0, 36(%rsp)
@@@@
-               	movq	%rax, 32(%rsp)
@@@@
-               	callq	0x427d80 <GCStateHolder::schedule()>
-               	movq	%rax, %rbp
-               	movq	(%rbx), %r15
-               	movq	128(%r15), %r13
-               	movq	%r13, 16(%rsp)
-               	movb	$0, 24(%rsp)
-               	cmpq	$0, 237933(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x429e5d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfd>
-               	movq	%r13, %rdi
+               	callq	0x4284a0 <GCStateHolder::schedule()>
+               	movq	%rax, %r12
+               	movq	(%rbx), %rbp
+               	movq	128(%rbp), %rdi
+               	movq	%rdi, 8(%rsp)
+               	movb	$0, 16(%rsp)
+               	cmpq	$0, 235885(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x42a65a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfa>
@@@@
-               	jne	0x429f93 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x233>
-               	movb	$1, 24(%rsp)
-               	cmpq	%rbp, 120(%r15)
-               	jge	0x429ea7 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x147>
-               	leaq	136(%r15), %rbx
-               	leaq	16(%rsp), %r13
-               	nopl	(%rax,%rax)
-               	cmpb	$0, 312(%r15)
-               	jne	0x429e9b <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13b>
+               	jne	0x42a7a3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x243>
+               	movb	$1, 16(%rsp)
+               	cmpq	%r12, 120(%rbp)
+               	jge	0x42a6a1 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x141>
+               	leaq	136(%rbp), %rbx
+               	leaq	8(%rsp), %r13
+               	nopw	%cs:(%rax,%rax)
+               	nop
+               	cmpb	$0, 312(%rbp)
+               	jne	0x42a69a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13a>
@@@@
-               	callq	0x43fea0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	cmpq	%rbp, 120(%r15)
-               	jl	0x429e80 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
-               	cmpb	$0, 24(%rsp)
-               	je	0x429ec3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	movq	16(%rsp), %r13
-               	testq	%r13, %r13
-               	je	0x429ec3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	cmpq	$0, 237828(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x429ebe <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15e>
-               	movq	%r13, %rdi
+               	callq	0x440d70 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	cmpq	%r12, 120(%rbp)
+               	jl	0x42a680 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
+               	cmpb	$0, 16(%rsp)
+               	je	0x42a6bf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x42a6bf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	cmpq	$0, 235781(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x42a6ba <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15a>
@@@@
-               	je	0x429ef4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	addq	$328, %rdi              # imm = 0x148
-               	movl	12(%rsp), %ecx
+               	je	0x42a6f4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	movl	32(%rsp), %ecx
@@@@
-               	xchgl	%eax, (%rdi)
+               	xchgl	%eax, 328(%rdi)
@@@@
-               	je	0x429ef4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x429ff0 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x42a6f4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x42a7f0 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
-               	je	0x429f7d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x21d>
-               	movq	$0, (%rbp)
-               	movq	%rbp, 16(%rsp)
+               	je	0x42a78d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x22d>
+               	movq	$0, (%rax)
+               	movq	%rax, 8(%rsp)
+               	movq	8(%rsp), %rbx
@@@@
-               	movq	$0, 16(%rsp)
-               	movq	(%rax), %rbx
-               	movq	%rbp, (%rax)
-               	testq	%rbx, %rbx
-               	je	0x429f4f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	%rbx, %rdi
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x4322f0 <mi_free>
-               	jmp	0x429f4f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	$0, 16(%rsp)
-               	movq	%rbp, 24(%r14)
-               	movq	%rbp, 32(%r14)
-               	addq	$1, 40(%r14)
-               	addq	%r12, 48(%r14)
-               	leaq	16(%rsp), %rdi
-               	callq	0x427b00 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbp, %rax
+               	movq	$0, 8(%rsp)
+               	movq	(%rax), %r12
+               	movq	%rbx, (%rax)
+               	testq	%r12, %r12
+               	je	0x42a754 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	%r12, %rdi
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r12, %rdi
+               	callq	0x432c00 <mi_free>
+               	jmp	0x42a754 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	$0, 8(%rsp)
+               	movq	%rbx, 24(%r14)
+               	movq	%rbx, 32(%r14)
+               	movq	40(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%r14)
+               	addq	48(%r14), %r15
+               	movq	%r15, 48(%r14)
+               	leaq	8(%rsp), %rdi
+               	callq	0x428220 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%rbx, %rax

@@ -22859,65 +23279,66 @@
@@@[(3, 9), (21, 26), (30, 34), (64, 70)]@@@
-               	callq	0x4402a2 <std::__throw_bad_function_call()>
-               	leaq	121070(%rip), %rdi      # 0x447872 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
-               	movq	%r12, %rsi
+               	callq	0x441172 <std::__throw_bad_function_call()>
+               	leaq	122846(%rip), %rdi      # 0x448772 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
+               	movq	%r15, %rsi
@@@@
-               	movq	32(%rsp), %rdi
-               	movl	12(%rsp), %esi
-               	callq	0x427df0 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
+               	leaq	24(%rsp), %rdi
+               	callq	0x428510 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
@@@@
-               	callq	0x4252b0 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x4258c0 <__clang_call_terminate>
+               	nop
@@@@
-               	jne	0x42a06f <kotlin::allocateInObjectPool(unsigned long)+0x7f>
-               	addl	$1, 16(%rax)
+               	jne	0x42a874 <kotlin::allocateInObjectPool(unsigned long)+0x84>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)

@@ -22927,31 +23348,33 @@
@@@[(30, 32), (34, 38)]@@@
-               	movb	96(%rdx), %cl
+               	movq	96(%rdx), %rcx
@@@@
-               	orb	$2, 126(%rdx,%rax)
+               	movb	126(%rdx,%rax), %cl
+               	orb	$2, %cl
+               	movb	%cl, 126(%rdx,%rax)

@@ -22963,214 +23386,214 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -23273,71 +23696,55 @@
@@@[(3, 14), (15, 24), (25, 71)]@@@
-               	jne	0x42a6e6 <_mi_random_init+0xe6>
-               	movb	(%rsp), %r8b
-               	movb	1(%rsp), %r15b
-               	movb	2(%rsp), %dil
-               	movb	3(%rsp), %al
-               	movl	%eax, 44(%rsp)
+               	jne	0x42aea7 <_mi_random_init+0xa7>
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
-               	jmp	0x42aa27 <_mi_random_init+0x427>
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
+               	jmp	0x42b1a4 <_mi_random_init+0x3a4>

@@ -23398,261 +23805,249 @@
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
-               	movaps	112332(%rip), %xmm1     # 0x446140 <_IO_stdin_used+0x80>
+               	movdqu	%xmm0, 108(%r14)
+               	movdqu	%xmm0, 92(%r14)
+               	movdqu	%xmm0, 76(%r14)
+               	movdqu	%xmm0, 60(%r14)
+               	movdqu	%xmm0, 44(%r14)
+               	movq	$0, 124(%r14)
+               	movaps	114253(%rip), %xmm1     # 0x447040 <_IO_stdin_used+0x80>
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

@@ -23660,7 +24055,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -23687,25 +24082,27 @@
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

@@ -23715,42 +24112,42 @@
@@@[(3, 13), (33, 39)]@@@
-               	cmpb	$1, 246124(%rip)        # 0x466df4 <_mi_process_is_initialized>
-               	jne	0x42b38b <mi_process_done+0x71b>
-               	cmpb	$0, 346115(%rip)        # 0x47f498 <mi_process_done.process_done>
-               	jne	0x42b38b <mi_process_done+0x71b>
-               	movb	$1, 346102(%rip)        # 0x47f498 <mi_process_done.process_done>
+               	cmpb	$0, 246084(%rip)        # 0x46757c <_mi_process_is_initialized>
+               	je	0x42bb40 <mi_process_done+0x720>
+               	cmpb	$0, 346067(%rip)        # 0x47fc18 <mi_process_done.process_done>
+               	jne	0x42bb40 <mi_process_done+0x720>
+               	movb	$1, 346054(%rip)        # 0x47fc18 <mi_process_done.process_done>
@@@@
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	callq	0x42e080 <mi_stats_merge_from>
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	callq	0x42e870 <mi_stats_merge_from>

@@ -23857,63 +24254,64 @@
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

@@ -24123,10 +24521,10 @@
@@@[(6, 10)]@@@
-               	jmp	0x42af6b <mi_process_done+0x2fb>
-               	nopw	(%rax,%rax)
+               	jmp	0x42b71d <mi_process_done+0x2fd>
+               	nop

@@ -24136,78 +24534,87 @@
@@@[(3, 27), (88, 104), (126, 131)]@@@
-               	cmpb	$0, 244271(%rip)        # 0x466df4 <_mi_process_is_initialized>
-               	jne	0x42c17c <mi_process_init+0xdcc>
-               	movb	$1, 244258(%rip)        # 0x466df4 <_mi_process_is_initialized>
-               	cmpb	$0, 244840(%rip)        # 0x467041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	jne	0x42b41e <mi_process_init+0x6e>
-               	movb	$1, 244831(%rip)        # 0x467041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	leaq	238647(%rip), %rdi      # 0x465820 <_mi_heap_default_key>
-               	leaq	3504(%rip), %rsi        # 0x42c1a0 <mi_pthread_done>
+               	cmpb	$0, 244231(%rip)        # 0x46757c <_mi_process_is_initialized>
+               	je	0x42bb86 <mi_process_init+0x26>
+               	addq	$104, %rsp
+               	popq	%rbx
+               	popq	%r12
+               	popq	%r13
+               	popq	%r14
+               	popq	%r15
+               	popq	%rbp
+               	retq
+               	movb	$1, 244207(%rip)        # 0x46757c <_mi_process_is_initialized>
+               	cmpb	$0, 244781(%rip)        # 0x4677c1 <mi_process_setup_auto_thread_done.tls_initialized>
+               	jne	0x42bbd9 <mi_process_init+0x79>
+               	movb	$1, 244772(%rip)        # 0x4677c1 <mi_process_setup_auto_thread_done.tls_initialized>
+               	leaq	238556(%rip), %rdi      # 0x465f80 <_mi_heap_default_key>
+               	leaq	3525(%rip), %rsi        # 0x42c970 <mi_pthread_done>
@@@@
-               	callq	0x42c7a0 <_mi_verbose_message>
-               	callq	0x42c8c0 <mi_thread_init>
-               	callq	0x42c8c0 <mi_thread_init>
-               	movq	$-80, %r15
-               	movq	%fs:(%r15), %rax
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	leaq	243996(%rip), %rax      # 0x466e00 <_mi_stats_main>
+               	callq	0x42cf90 <_mi_verbose_message>
+               	callq	0x42d0b0 <mi_thread_init>
+               	callq	0x42d0b0 <mi_thread_init>
+               	movq	$-80, %r14
+               	movq	%fs:(%r14), %rax
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	leaq	243935(%rip), %rax      # 0x467580 <_mi_stats_main>
@@@@
-               	movabsq	$-4835703278458516699, %rax # imm = 0xBCE4217D2849CB25
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$-4835703278458516699, %rcx # imm = 0xBCE4217D2849CB25
+               	imulq	%rcx

@@ -24217,8 +24624,9 @@
@@@[(3, 8)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -24228,31 +24636,32 @@
@@@[(9, 14)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -24297,61 +24706,61 @@
@@@[(3, 6), (43, 45), (50, 54), (55, 75), (76, 80), (81, 86)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
@@@@
-               	leaq	(%r14,%rbp), %rcx
+               	leaq	(%r15,%rbp), %rcx
@@@@
-               	je	0x42b760 <mi_process_init+0x3b0>
-               	movq	%rbx, %r14
+               	je	0x42bf20 <mi_process_init+0x3c0>
+               	movq	%rbx, %r15
@@@@
-               	jne	0x42b720 <mi_process_init+0x370>
-               	movq	%fs:(%r15), %rdi
-               	callq	0x42abc0 <_mi_heap_random_next>
-               	movq	%rax, %r14
-               	andl	$536739840, %r14d       # imm = 0x1FFE0000
-               	shlq	$13, %r14
-               	orq	%r13, %r14
-               	jmp	0x42b720 <mi_process_init+0x370>
-               	cmpq	$0, 277472(%rip)        # 0x46f348 <mi_clock_diff>
-               	jne	0x42b7e1 <mi_process_init+0x431>
+               	jne	0x42bee0 <mi_process_init+0x380>
+               	movq	%fs:(%r14), %rdi
+               	callq	0x42b360 <_mi_heap_random_next>
+               	movq	%rax, %r15
+               	andl	$536739840, %r15d       # imm = 0x1FFE0000
+               	shlq	$13, %r15
+               	orq	%r13, %r15
+               	jmp	0x42bee0 <mi_process_init+0x380>
+               	cmpq	$0, 277408(%rip)        # 0x46fac8 <mi_clock_diff>
+               	jne	0x42bfa7 <mi_process_init+0x447>
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

@@ -24359,26 +24768,28 @@
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

@@ -24400,20 +24811,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x42bd20 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	277140(%rip), %rax      # 0x46f308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 277141(%rip)        # 0x46f310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x42c500 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	277067(%rip), %rax      # 0x46fa88 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 277068(%rip)        # 0x46fa90 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -24421,15 +24832,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -24452,74 +24863,75 @@
@@@[(13, 19), (24, 28), (70, 75)]@@@
-               	callq	0x42db20 <_mi_warning_message>
-               	cmpq	%r15, %rbx
-               	jne	0x42bc30 <mi_process_init+0x880>
+               	callq	0x42e310 <_mi_warning_message>
+               	cmpq	%r14, %rbx
+               	jne	0x42c410 <mi_process_init+0x8b0>
@@@@
-               	movq	242929(%rip), %rax      # 0x466e70 <_mi_stats_main+0x70>
-               	nop
+               	movq	242856(%rip), %rax      # 0x4675f0 <_mi_stats_main+0x70>
+               	nopl	(%rax,%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -24527,20 +24939,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x42bd20 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	276600(%rip), %rax      # 0x46f308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 276601(%rip)        # 0x46f310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x42c500 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	276517(%rip), %rax      # 0x46fa88 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 276518(%rip)        # 0x46fa90 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -24548,15 +24960,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -24565,142 +24977,144 @@
@@@[(3, 9), (14, 18), (60, 65), (87, 92), (93, 97), (105, 107), (171, 179), (183, 189)]@@@
-               	jae	0x42bc20 <mi_process_init+0x870>
-               	cmpq	%r15, %rbx
-               	jne	0x42bc30 <mi_process_init+0x880>
+               	jae	0x42c400 <mi_process_init+0x8a0>
+               	cmpq	%r14, %rbx
+               	jne	0x42c410 <mi_process_init+0x8b0>
@@@@
-               	movq	242480(%rip), %rax      # 0x466e70 <_mi_stats_main+0x70>
+               	movq	242397(%rip), %rax      # 0x4675f0 <_mi_stats_main+0x70>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx
@@@@
-               	jmp	0x42ba5a <mi_process_init+0x6aa>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x42c22d <mi_process_init+0x6cd>
+               	nopw	(%rax,%rax)
@@@@
-               	cmpq	%r15, %rbx
-               	je	0x42bb24 <mi_process_init+0x774>
+               	cmpq	%r14, %rbx
+               	je	0x42c2f7 <mi_process_init+0x797>
@@@@
-               	movq	%r15, %rdx
+               	movq	%r14, %rdx
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x42bd38 <mi_process_init+0x988>
-               	jmp	0x42be6d <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x42c518 <mi_process_init+0x9b8>
+               	jmp	0x42c64d <mi_process_init+0xaed>
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	je	0x42be6d <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	je	0x42c64d <mi_process_init+0xaed>

@@ -24708,13 +25122,13 @@
@@@[(11, 13)]@@@
-               	xchgq	%r14, (%rax)
+               	xchgq	%r15, (%rax)

@@ -24725,15 +25139,15 @@
@@@[(16, 18)]@@@
-               	movq	$-80, %r15
+               	movq	$-80, %r14

@@ -24742,101 +25156,101 @@
@@@[(18, 28), (54, 56), (109, 111)]@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x42bd38 <mi_process_init+0x988>
-               	jmp	0x42be6d <mi_process_init+0xabd>
-               	callq	0x42de70 <_mi_os_numa_node_count_get>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x42c518 <mi_process_init+0x9b8>
+               	jmp	0x42c64d <mi_process_init+0xaed>
+               	callq	0x42e660 <_mi_os_numa_node_count_get>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%r14, %rdx
+               	movq	%r15, %rdx

@@ -24919,46 +25333,39 @@
@@@[(43, 60)]@@@
-               	callq	0x42c7a0 <_mi_verbose_message>
-               	addq	$104, %rsp
-               	popq	%rbx
-               	popq	%r12
-               	popq	%r13
-               	popq	%r14
-               	popq	%r15
-               	popq	%rbp
-               	retq
-               	callq	0x42de70 <_mi_os_numa_node_count_get>
-               	jmp	0x42b60b <mi_process_init+0x25b>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x42cf90 <_mi_verbose_message>
+               	jmp	0x42bb77 <mi_process_init+0x17>
+               	callq	0x42e660 <_mi_os_numa_node_count_get>
+               	jmp	0x42bdd1 <mi_process_init+0x271>
+               	nop

@@ -25064,48 +25471,51 @@
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
-               	jmp	0x42c3ad <mi_pthread_done+0x20d>
-               	nopl	(%rax)
+               	jmp	0x42cb8d <mi_pthread_done+0x21d>

@@ -25297,27 +25707,27 @@
@@@[(26, 34)]@@@
-               	callq	0x42e570 <mi_heap_collect_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
-               	callq	0x42e080 <mi_stats_merge_from>
+               	callq	0x42ed60 <mi_heap_collect_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi
+               	callq	0x42e870 <mi_stats_merge_from>

@@ -25328,9 +25738,9 @@
@@@[(3, 9)]@@@
-               	jmp	0x42d900 <_mi_os_free_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
+               	jmp	0x42e0e0 <_mi_os_free_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi

@@ -25338,8 +25748,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x42e080 <mi_stats_merge_from>
-               	nop
+               	jmp	0x42e870 <mi_stats_merge_from>
+               	nopw	%cs:(%rax,%rax)

@@ -25590,60 +26000,60 @@
@@@[(14, 15), (17, 26)]@@@
-               	movq	64(%rsp), %rdx
@@@@
-               	movl	(%rax,%rcx,4), %ecx
-               	movq	72(%rsp), %rdi
-               	cmpl	(%rax,%rdi,4), %ecx
-               	jne	0x42cc52 <mi_option_get+0x192>
+               	movq	72(%rsp), %rdx
+               	movl	(%rax,%rdx,4), %edx
+               	cmpl	%edx, (%rax,%rcx,4)
+               	movq	64(%rsp), %rdx
+               	jne	0x42d442 <mi_option_get+0x192>

@@ -25655,48 +26065,48 @@
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

@@ -25704,31 +26114,31 @@
@@@[(3, 5)]@@@
-               	movzbl	(%rbp,%rcx,4), %ecx
+               	movl	(%rbp,%rcx,4), %ecx

@@ -25736,44 +26146,44 @@
@@@[(50, 54)]@@@
-               	jmp	0x42caf1 <mi_option_get+0x31>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42d2e1 <mi_option_get+0x31>
+               	nop

@@ -26655,17 +27065,21 @@
@@@[(7, 12), (16, 20), (21, 22)]@@@
-               	js	0x42db1c <_mi_stat_decrease+0x7c>
-               	addq	%rsi, 8(%rdi)
+               	js	0x42e300 <_mi_stat_decrease+0x80>
+               	addq	8(%rdi), %rsi
+               	movq	%rsi, 8(%rdi)
@@@@
-               	subq	%rsi, (%rdi)
+               	movq	(%rdi), %rax
+               	subq	%rsi, %rax
+               	movq	%rax, (%rdi)
@@@@
+               	nopw	(%rax,%rax)

@@ -26799,19 +27213,22 @@
@@@[(7, 12), (17, 21), (22, 24)]@@@
-               	jle	0x42dd3e <_mi_stat_increase+0x6e>
-               	addq	%rsi, (%rdi)
+               	jle	0x42e531 <_mi_stat_increase+0x71>
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

@@ -27001,22 +27418,23 @@
@@@[(19, 28)]@@@
-               	cmpq	$0, 267021(%rip)        # 0x46f360 <mi_error_handler>
-               	je	0x42e067 <_mi_error_message+0x147>
-               	movq	267012(%rip), %rax      # 0x46f360 <mi_error_handler>
-               	movq	267013(%rip), %rsi      # 0x46f368 <mi_error_arg>
+               	movq	266910(%rip), %rax      # 0x46fae0 <mi_error_handler>
+               	testq	%rax, %rax
+               	je	0x42e859 <_mi_error_message+0x149>
+               	movq	266898(%rip), %rax      # 0x46fae0 <mi_error_handler>
+               	movq	266899(%rip), %rsi      # 0x46fae8 <mi_error_arg>

@@ -27026,284 +27444,284 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -27319,66 +27737,67 @@
@@@[(16, 21), (80, 82)]@@@
-               	cmpq	$0, 331479(%rip)        # 0x47f488 <deferred_free>
-               	je	0x42e5bd <mi_heap_collect_ex+0x4d>
+               	movq	331368(%rip), %rax      # 0x47fc08 <deferred_free>
+               	testq	%rax, %rax
+               	je	0x42edaf <mi_heap_collect_ex+0x4f>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -27658,22 +28077,26 @@
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

@@ -27682,104 +28105,106 @@
@@@[(3, 11), (16, 17), (33, 50), (67, 69)]@@@
-               	jb	0x42ec10 <mi_heap_collect_ex+0x6a0>
-               	leaq	230533(%rip), %rdi      # 0x467040 <os_preloading>
-               	cmpq	%rdi, %rcx
-               	jae	0x42ec10 <mi_heap_collect_ex+0x6a0>
+               	jb	0x42f410 <mi_heap_collect_ex+0x6b0>
+               	leaq	230402(%rip), %rax      # 0x4677c0 <os_preloading>
+               	cmpq	%rax, %rcx
+               	jae	0x42f410 <mi_heap_collect_ex+0x6b0>
@@@@
-               	nopl	(%rax)
@@@@
-               	movq	248(%rdx), %rbp
-               	leaq	1(%rbp), %rdi
-               	movq	%rdi, 248(%rdx)
-               	cmpq	240(%rdx), %rbp
-               	jl	0x42ec32 <mi_heap_collect_ex+0x6c2>
-               	movq	%rdi, 240(%rdx)
-               	addq	$1, (%rcx)
+               	movq	248(%rdx), %rdi
+               	leaq	1(%rdi), %rax
+               	movq	%rax, 248(%rdx)
+               	cmpq	240(%rdx), %rdi
+               	jl	0x42f432 <mi_heap_collect_ex+0x6d2>
+               	movq	%rax, 240(%rdx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
+               	movq	40(%rbx), %rax
@@@@
-               	nop
+               	nopl	(%rax)

@@ -27788,74 +28213,77 @@
@@@[(7, 13), (31, 33), (52, 56), (78, 79)]@@@
-               	je	0x42f005 <mi_heap_collect_ex+0xa95>
-               	addq	$-1, 120(%r15)
+               	je	0x42f83b <mi_heap_collect_ex+0xadb>
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

@@ -27863,43 +28291,44 @@
@@@[(21, 25), (49, 52)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	jmp	0x42ef84 <mi_heap_collect_ex+0xa14>
-               	nopl	(%rax)
+               	jmp	0x42f7b4 <mi_heap_collect_ex+0xa54>

@@ -27935,40 +28364,42 @@
@@@[(24, 28)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -27977,38 +28408,39 @@
@@@[(18, 21)]@@@
-               	callq	0x42f460 <_mi_arena_free>
+               	callq	0x42fca0 <_mi_arena_free>
+               	nopw	%cs:(%rax,%rax)

@@ -28058,25 +28490,27 @@
@@@[(28, 32)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)

@@ -28084,21 +28518,23 @@
@@@[(3, 7), (23, 27)]@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
-               	jmp	0x42f18b <_mi_page_free_collect+0x7b>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42f9cb <_mi_page_free_collect+0x7b>
+               	nopl	(%rax)

@@ -28106,50 +28542,52 @@
@@@[(3, 7)]@@@
-               	andb	$-3, 6(%rdi)
+               	movb	6(%rdi), %al
+               	andb	$-3, %al
+               	movb	%al, 6(%rdi)

@@ -28160,22 +28598,22 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -28241,20 +28679,24 @@
@@@[(13, 20), (22, 27)]@@@
-               	jne	0x42f410 <_mi_page_free+0x230>
-               	addq	$-1, 3016(%r14)
+               	jne	0x42fc50 <_mi_page_free+0x230>
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

@@ -28263,8 +28705,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x430040 <_mi_segment_page_free>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x4308a0 <_mi_segment_page_free>

@@ -28746,68 +29187,72 @@
@@@[(79, 89)]@@@
-               	jae	0x42fb00 <mi_os_commitx+0x1f0>
-               	addq	$1, 226419(%rip)        # 0x466fe8 <_mi_stats_main+0x1e8>
-               	addq	$1, 226403(%rip)        # 0x466fe0 <_mi_stats_main+0x1e0>
+               	jae	0x430340 <mi_os_commitx+0x1f0>
+               	movq	226228(%rip), %rax      # 0x467768 <_mi_stats_main+0x1e8>
+               	addq	$1, %rax
+               	movq	%rax, 226217(%rip)      # 0x467768 <_mi_stats_main+0x1e8>
+               	movq	226202(%rip), %rax      # 0x467760 <_mi_stats_main+0x1e0>
+               	addq	$1, %rax
+               	movq	%rax, 226191(%rip)      # 0x467760 <_mi_stats_main+0x1e0>

@@ -28816,21 +29261,21 @@
@@@[(8, 14), (16, 18)]@@@
-               	je	0x42fbf4 <mi_os_commitx+0x2e4>
-               	leaq	98828(%rip), %rax       # 0x447ddb <typeinfo name for kotlin::gc::GCSchedulerData+0x1592>
-               	leaq	98828(%rip), %rsi       # 0x447de2 <typeinfo name for kotlin::gc::GCSchedulerData+0x1599>
+               	je	0x430448 <mi_os_commitx+0x2f8>
+               	leaq	100536(%rip), %rax      # 0x448cdb <typeinfo name for kotlin::gc::GCSchedulerData+0x1592>
+               	leaq	100536(%rip), %rsi      # 0x448ce2 <typeinfo name for kotlin::gc::GCSchedulerData+0x1599>
@@@@
-               	leaq	98823(%rip), %rdi       # 0x447deb <typeinfo name for kotlin::gc::GCSchedulerData+0x15a2>
+               	leaq	100531(%rip), %rdi      # 0x448ceb <typeinfo name for kotlin::gc::GCSchedulerData+0x15a2>

@@ -28838,6 +29283,7 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -29190,67 +29636,68 @@
@@@[(38, 42), (45, 50), (51, 55)]@@@
-               	jmp	0x43012d <_mi_segment_page_free+0xed>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x43098d <_mi_segment_page_free+0xed>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x43014a <_mi_segment_page_free+0x10a>
+               	testb	%cl, %cl
+               	jne	0x4309ac <_mi_segment_page_free+0x10c>

@@ -29299,7 +29746,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -29311,70 +29758,78 @@
@@@[(3, 7), (8, 14), (31, 33), (51, 59), (61, 62), (66, 67), (68, 72), (95, 103)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x4303fc <mi_segment_page_clear+0x1dc>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x430c8d <mi_segment_page_clear+0x1fd>
@@@@
-               	movl	$160, %edi
-               	addq	112(%r15), %rdi
-               	callq	0x42daa0 <_mi_stat_decrease>
+               	movq	112(%r15), %rdi
+               	addq	$160, %rdi
+               	callq	0x42e280 <_mi_stat_decrease>
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

@@ -29401,61 +29856,62 @@
@@@[(21, 25), (27, 34), (35, 39), (58, 62)]@@@
-               	jmp	0x4303cf <mi_segment_page_clear+0x1af>
-               	movb	96(%r14), %cl
+               	jmp	0x430c5f <mi_segment_page_clear+0x1cf>
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
-               	jne	0x4303eb <mi_segment_page_clear+0x1cb>
+               	testb	%cl, %cl
+               	jne	0x430c7c <mi_segment_page_clear+0x1ec>
@@@@
-               	jmp	0x43041f <mi_segment_page_clear+0x1ff>
-               	movb	96(%rax), %cl
+               	jmp	0x430cb1 <mi_segment_page_clear+0x221>
+               	movq	96(%rax), %rcx

@@ -29480,229 +29936,230 @@
@@@[(118, 124), (127, 132), (133, 137), (256, 260), (282, 286), (311, 315)]@@@
-               	jne	0x430561 <mi_segment_free+0xf1>
-               	jmp	0x430545 <mi_segment_free+0xd5>
-               	movzbl	96(%r14), %ecx
+               	jne	0x430df1 <mi_segment_free+0xf1>
+               	jmp	0x430dd5 <mi_segment_free+0xd5>
+               	movq	96(%r14), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x4305e6 <mi_segment_free+0x176>
+               	testb	%cl, %cl
+               	jne	0x430e77 <mi_segment_free+0x177>
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
-               	jmp	0x4307f2 <mi_segment_free+0x382>
-               	nopl	(%rax)
+               	jmp	0x431082 <mi_segment_free+0x382>
+               	nop

@@ -29737,51 +30194,54 @@
@@@[(21, 25), (47, 48)]@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
+               	nop

@@ -29789,41 +30249,43 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)

@@ -29832,7 +30294,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -29860,106 +30321,110 @@
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

@@ -29968,7 +30433,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax)

@@ -30017,32 +30481,34 @@
@@@[(12, 16)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -30051,81 +30517,82 @@
@@@[(18, 21), (105, 109)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -30134,7 +30601,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -30165,185 +30632,192 @@
@@@[(38, 42), (45, 50), (51, 55), (136, 138), (157, 161), (180, 181), (218, 222), (240, 245)]@@@
-               	jmp	0x430f0d <mi_segment_abandon+0xdd>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x4317ad <mi_segment_abandon+0xdd>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x430f29 <mi_segment_abandon+0xf9>
+               	testb	%cl, %cl
+               	jne	0x4317cb <mi_segment_abandon+0xfb>
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
-               	movq	320131(%rip), %rax      # 0x47f3c0 <abandoned>
-               	nopl	(%rax)
+               	movq	319836(%rip), %rax      # 0x47fb40 <abandoned>
+               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -30365,154 +30839,157 @@
@@@[(92, 98), (101, 106), (107, 111), (136, 140), (205, 211)]@@@
-               	jne	0x431223 <mi_segment_abandon+0x3f3>
-               	jmp	0x431209 <mi_segment_abandon+0x3d9>
-               	movzbl	96(%r15), %ecx
+               	jne	0x431ad3 <mi_segment_abandon+0x403>
+               	jmp	0x431ab9 <mi_segment_abandon+0x3e9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x4312a3 <mi_segment_abandon+0x473>
+               	testb	%cl, %cl
+               	jne	0x431b54 <mi_segment_abandon+0x484>
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	jne	0x430fc7 <mi_segment_abandon+0x197>
-               	jmp	0x430faa <mi_segment_abandon+0x17a>
-               	nopw	(%rax,%rax)
+               	jne	0x431869 <mi_segment_abandon+0x199>
+               	jmp	0x43184c <mi_segment_abandon+0x17c>
+               	nop

@@ -30525,7 +31002,7 @@
@@@[(3, 5)]@@@
-               	movb	96(%r12), %cl
+               	movq	96(%r12), %rcx

@@ -30533,29 +31010,31 @@
@@@[(29, 35)]@@@
-               	addl	$-1, 136(%r12,%rbx)
-               	je	0x431438 <_mi_free_delayed_block+0x98>
+               	movl	136(%r12,%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%r12,%rbx)
+               	je	0x431cf2 <_mi_free_delayed_block+0xa2>

@@ -30568,15 +31047,15 @@
@@@[(11, 15)]@@@
-               	jmp	0x431570 <_mi_page_unfull>
-               	nop
+               	jmp	0x431e30 <_mi_page_unfull>
+               	nopl	(%rax,%rax)

@@ -30657,27 +31136,26 @@
@@@[(11, 18)]@@@
-               	cmpq	$9, %rsi
-               	jb	0x4315e3 <_mi_page_unfull+0x73>
-               	movq	%rsi, %rdx
-               	addq	$7, %rdx
+               	cmpl	$9, %esi
+               	jb	0x431e9f <_mi_page_unfull+0x6f>
+               	leaq	7(%rsi), %rdx

@@ -30740,22 +31218,22 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	(%rax,%rax)

@@ -31030,83 +31508,86 @@
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
-               	je	0x431c30 <mi_segment_reclaim+0x1c0>
-               	addq	$-1, 40(%r15)
+               	je	0x4324f0 <mi_segment_reclaim+0x1c0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -31114,115 +31595,121 @@
@@@[(21, 25), (45, 49), (85, 89), (127, 131), (139, 145)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x431cfa <mi_segment_reclaim+0x28a>
-               	nop
+               	jmp	0x4325c4 <mi_segment_reclaim+0x294>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 200(%rsi)
+               	movq	200(%rsi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rsi)
@@@@
-               	callq	0x430220 <mi_segment_page_clear>
-               	nopl	(%rax)
+               	callq	0x430a90 <mi_segment_page_clear>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x431e20 <mi_segment_reclaim+0x3b0>
-               	addq	$-1, 40(%r15)
+               	je	0x432700 <mi_segment_reclaim+0x3d0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -31230,70 +31717,74 @@
@@@[(21, 25), (45, 49), (80, 84)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x431eda <mi_segment_reclaim+0x46a>
-               	nop
+               	jmp	0x4327d4 <mi_segment_reclaim+0x4a4>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -31312,28 +31803,27 @@
@@@[(3, 4), (8, 12)]@@@
-               	nopl	(%rax)
@@@@
-               	cmpq	$67108864, %r8          # imm = 0x4000000
-               	jae	0x432268 <_mi_page_reclaim+0x298>
+               	cmpl	$67108864, %r8d         # imm = 0x4000000
+               	jae	0x432b72 <_mi_page_reclaim+0x2a2>

@@ -31467,49 +31957,52 @@
@@@[(13, 19), (28, 32), (34, 40), (41, 49), (53, 56), (58, 60)]@@@
-               	jne	0x432250 <_mi_page_reclaim+0x280>
-               	addq	$1, 3016(%rdi)
+               	jne	0x432b50 <_mi_page_reclaim+0x280>
+               	movq	3016(%rdi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%rdi)
@@@@
-               	jmp	0x43228a <_mi_page_reclaim+0x2ba>
-               	movb	96(%rax), %cl
+               	jmp	0x432b95 <_mi_page_reclaim+0x2c5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rsi), %ecx
-               	testq	%rcx, %rcx
-               	je	0x43229a <_mi_page_reclaim+0x2ca>
+               	movb	(%rsi), %cl
+               	testb	%cl, %cl
+               	je	0x432ba3 <_mi_page_reclaim+0x2d3>
@@@@
-               	jmp	0x431fe2 <_mi_page_reclaim+0x12>
-               	movq	80(%rax), %r10
-               	movq	%rdx, %r9
-               	subq	%r10, %r9
+               	jmp	0x4328e2 <_mi_page_reclaim+0x12>
+               	movq	80(%rax), %r9
+               	movq	%rdx, %r10
+               	subq	%r9, %r10
@@@@
-               	je	0x4322df <_mi_page_reclaim+0x30f>
+               	je	0x432beb <_mi_page_reclaim+0x31b>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax

@@ -31517,41 +32010,43 @@
@@@[(3, 11), (20, 22), (34, 40), (49, 53)]@@@
-               	subq	%rcx, %r9
-               	movq	%r9, %r8
-               	jmp	0x431fe2 <_mi_page_reclaim+0x12>
-               	nopw	(%rax,%rax)
+               	subq	%rcx, %r10
+               	movq	%r10, %r8
+               	jmp	0x4328e2 <_mi_page_reclaim+0x12>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movb	96(%rdi), %cl
+               	movq	96(%rdi), %rcx
@@@@
-               	addl	$-1, 136(%rdi,%rax)
-               	je	0x432356 <mi_free+0x66>
+               	movl	136(%rdi,%rax), %ecx
+               	addl	$-1, %ecx
+               	movl	%ecx, 136(%rdi,%rax)
+               	je	0x432c70 <mi_free+0x70>
@@@@
-               	jmp	0x431460 <_mi_page_retire>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x431d20 <_mi_page_retire>
+               	nopl	(%rax)

@@ -31567,32 +32062,33 @@
@@@[(15, 18), (20, 24)]@@@
-               	movzbl	(%r9), %ebx
+               	movb	(%r9), %cl
+               	movzbl	%cl, %ebx
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x432407 <mi_free_generic+0x97>
+               	testb	%bl, %bl
+               	jne	0x432d18 <mi_free_generic+0x98>

@@ -31602,30 +32098,32 @@
@@@[(25, 31)]@@@
-               	addl	$-1, 136(%rdi,%r11)
-               	je	0x43247d <mi_free_generic+0x10d>
+               	movl	136(%rdi,%r11), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%rdi,%r11)
+               	je	0x432d98 <mi_free_generic+0x118>

@@ -31637,49 +32135,49 @@
@@@[(26, 30)]@@@
-               	jmp	0x4324bb <mi_free_generic+0x14b>
-               	movb	96(%rax), %cl
+               	jmp	0x432dd7 <mi_free_generic+0x157>
+               	movq	96(%rax), %rcx

@@ -31689,8 +32187,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x432414 <mi_free_generic+0xa4>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x432d25 <mi_free_generic+0xa5>

@@ -31701,86 +32198,91 @@
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

@@ -31789,72 +32291,76 @@
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

@@ -32370,21 +32876,21 @@
@@@[(10, 20)]@@@
-               	callq	0x432910 <_mi_fprintf>
-               	movq	(%r14), %rax
-               	cmpq	8(%r14), %rax
-               	leaq	86085(%rip), %rax       # 0x44802a <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
-               	leaq	86096(%rip), %rdx       # 0x44803c <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>
+               	callq	0x433240 <_mi_fprintf>
+               	movq	8(%r14), %rax
+               	cmpq	%rax, (%r14)
+               	leaq	87573(%rip), %rax       # 0x448f2a <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
+               	leaq	87584(%rip), %rdx       # 0x448f3c <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>

@@ -33121,70 +33627,73 @@
@@@[(14, 19), (32, 34), (88, 96)]@@@
-               	cmpq	$0, 309592(%rip)        # 0x47f488 <deferred_free>
-               	je	0x433b55 <_mi_malloc_generic+0x65>
+               	movq	309161(%rip), %rcx      # 0x47fc08 <deferred_free>
+               	testq	%rcx, %rcx
+               	je	0x434487 <_mi_malloc_generic+0x67>
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	callq	0x42df20 <_mi_error_message>
-               	jmp	0x433c09 <_mi_malloc_generic+0x119>
-               	addl	$1, 16(%rax)
+               	callq	0x42e710 <_mi_error_message>
+               	jmp	0x43453e <_mi_malloc_generic+0x11e>
+               	movl	16(%rax), %edx
+               	addl	$1, %edx
+               	movl	%edx, 16(%rax)

@@ -33197,7 +33706,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax,%rax)

@@ -33249,37 +33757,43 @@
@@@[(16, 19), (20, 21), (29, 35), (38, 43), (44, 45), (49, 55)]@@@
-               	callq	0x42df20 <_mi_error_message>
-               	movq	8(%rbx), %rcx
+               	callq	0x42e710 <_mi_error_message>
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x433d2d <mi_find_page+0x10d>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x434666 <mi_find_page+0x116>
@@@@
-               	subl	%eax, 16(%rbx)
-               	movq	8(%rbx), %rcx
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	je	0x433d3a <mi_find_page+0x11a>
-               	andb	$1, 7(%rbx)
+               	je	0x434677 <mi_find_page+0x127>
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -33316,91 +33830,100 @@
@@@[(10, 14), (59, 79), (98, 102), (104, 110), (120, 125)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x433eab <mi_find_page+0x28b>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x434812 <mi_find_page+0x2c2>
@@@@
-               	jmp	0x433e89 <mi_find_page+0x269>
-               	addq	$1, 744(%rax)
-               	addq	$1, 736(%rax)
-               	jmp	0x433e89 <mi_find_page+0x269>
-               	addq	$1, 728(%rax)
-               	addq	$1, 720(%rax)
+               	jmp	0x4347f0 <mi_find_page+0x2a0>
+               	movq	744(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 744(%rax)
+               	movq	736(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 736(%rax)
+               	jmp	0x4347f0 <mi_find_page+0x2a0>
+               	movq	728(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 728(%rax)
+               	movq	720(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 720(%rax)
@@@@
-               	jmp	0x433ecd <mi_find_page+0x2ad>
-               	movb	96(%rax), %cl
+               	jmp	0x434835 <mi_find_page+0x2e5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r14), %ebx
-               	testq	%rbx, %rbx
-               	je	0x433ede <mi_find_page+0x2be>
+               	movb	(%r14), %bl
+               	testb	%bl, %bl
+               	je	0x434844 <mi_find_page+0x2f4>
@@@@
-               	je	0x433f21 <mi_find_page+0x301>
-               	imulq	%rbx, %rdx
+               	je	0x43488a <mi_find_page+0x33a>
+               	movzbl	%bl, %edi
+               	imulq	%rdi, %rdx

@@ -33410,8 +33933,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x433dcf <mi_find_page+0x1af>
-               	nopl	(%rax)
+               	jmp	0x43470b <mi_find_page+0x1bb>
+               	nopw	%cs:(%rax,%rax)

@@ -33519,46 +34042,48 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -33569,96 +34094,95 @@
@@@[(3, 8), (40, 44), (47, 52), (53, 57), (77, 83), (84, 86), (87, 99), (102, 111), (112, 114), (118, 123), (124, 125)]@@@
-               	jmp	0x4341a9 <mi_page_fresh_alloc+0x279>
-               	nopl	(%rax)
+               	jmp	0x434b29 <mi_page_fresh_alloc+0x289>
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	jmp	0x434200 <mi_page_fresh_alloc+0x2d0>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x434b80 <mi_page_fresh_alloc+0x2e0>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x43421d <mi_page_fresh_alloc+0x2ed>
+               	testb	%cl, %cl
+               	jne	0x434b9f <mi_page_fresh_alloc+0x2ff>
@@@@
-               	je	0x4346e7 <mi_page_fresh_alloc+0x7b7>
-               	movq	%r15, %rdi
-               	andq	$-4194304, %rdi         # imm = 0xFFC00000
+               	je	0x435092 <mi_page_fresh_alloc+0x7f2>
+               	movq	%r15, %rsi
+               	andq	$-4194304, %rsi         # imm = 0xFFC00000
@@@@
-               	movl	112(%rdi), %edx
+               	movl	112(%rsi), %edx
@@@@
-               	jne	0x434285 <mi_page_fresh_alloc+0x355>
-               	movq	72(%rdi), %rax
-               	movq	16(%rsp), %rbx
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x4342e8 <mi_page_fresh_alloc+0x3b8>
-               	jmp	0x43429e <mi_page_fresh_alloc+0x36e>
-               	movb	96(%rdi), %cl
+               	jne	0x434bf9 <mi_page_fresh_alloc+0x359>
+               	movq	72(%rsi), %rax
+               	jmp	0x434c05 <mi_page_fresh_alloc+0x365>
+               	movq	96(%rsi), %rcx
@@@@
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x4342e8 <mi_page_fresh_alloc+0x3b8>
-               	movq	80(%rdi), %rsi
+               	movb	(%r15), %cl
+               	movzbl	%cl, %edi
+               	testb	%dil, %dil
+               	jne	0x434c5f <mi_page_fresh_alloc+0x3bf>
+               	movq	80(%rsi), %rbp
@@@@
-               	subq	%rsi, %rcx
+               	subq	%rbp, %rcx
@@@@
-               	je	0x4342e5 <mi_page_fresh_alloc+0x3b5>
-               	imulq	%r9, %rax
-               	addq	%rdi, %rax
+               	je	0x434c5c <mi_page_fresh_alloc+0x3bc>
+               	imulq	%rdi, %rax
@@@@
+               	addq	%rbp, %rax

@@ -33675,74 +34199,75 @@
@@@[(7, 10), (12, 29), (30, 51), (52, 74), (75, 85), (87, 91), (105, 109), (113, 119)]@@@
-               	movq	%rax, %r8
-               	jmp	0x434319 <mi_page_fresh_alloc+0x3e9>
+               	jmp	0x434c8a <mi_page_fresh_alloc+0x3ea>
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
-               	jne	0x434452 <mi_page_fresh_alloc+0x522>
-               	movzwl	2(%r15), %r10d
-               	cmpw	%r8w, %r10w
-               	jae	0x434452 <mi_page_fresh_alloc+0x522>
-               	movl	112(%rdi), %eax
-               	cmpl	$3, %eax
-               	jne	0x434367 <mi_page_fresh_alloc+0x437>
-               	movq	72(%rdi), %rsi
-               	testb	%r9b, %r9b
-               	je	0x434377 <mi_page_fresh_alloc+0x447>
+               	jne	0x434de0 <mi_page_fresh_alloc+0x540>
+               	movzwl	2(%r15), %ecx
+               	cmpw	%ax, %cx
+               	jae	0x434de0 <mi_page_fresh_alloc+0x540>
+               	movzwl	%cx, %r8d
+               	movl	112(%rsi), %edx
+               	cmpl	$3, %edx
+               	jne	0x434cdc <mi_page_fresh_alloc+0x43c>
+               	movq	72(%rsi), %rax
+               	testb	%dil, %dil
+               	je	0x434ced <mi_page_fresh_alloc+0x44d>
@@@@
-               	jmp	0x434401 <mi_page_fresh_alloc+0x4d1>
-               	movb	96(%rdi), %cl
-               	movl	$1, %esi
-               	shlq	%cl, %rsi
-               	testb	%r9b, %r9b
-               	jne	0x43435f <mi_page_fresh_alloc+0x42f>
-               	movq	80(%rdi), %rdx
-               	movq	%rsi, %rcx
-               	subq	%rdx, %rcx
-               	cmpl	$1, %eax
-               	ja	0x4343ab <mi_page_fresh_alloc+0x47b>
+               	jmp	0x434d7d <mi_page_fresh_alloc+0x4dd>
+               	movq	96(%rsi), %rcx
+               	movl	$1, %eax
+               	shlq	%cl, %rax
+               	testb	%dil, %dil
+               	jne	0x434cd4 <mi_page_fresh_alloc+0x434>
+               	movq	80(%rsi), %rbx
+               	movq	%rax, %rcx
+               	subq	%rbx, %rcx
+               	cmpl	$1, %edx
+               	ja	0x434d21 <mi_page_fresh_alloc+0x481>
@@@@
-               	je	0x4343ab <mi_page_fresh_alloc+0x47b>
-               	imulq	%r9, %rsi
-               	addq	%rsi, %rdi
-               	addq	%rdx, %rdi
-               	movq	%rdi, %rax
+               	je	0x434d21 <mi_page_fresh_alloc+0x481>
+               	imulq	%rdi, %rax
+               	addq	%rax, %rsi
+               	addq	%rbx, %rsi
+               	movq	%rsi, %rax
@@@@
-               	je	0x4343e6 <mi_page_fresh_alloc+0x4b6>
-               	movq	%rdi, %rax
+               	je	0x434d62 <mi_page_fresh_alloc+0x4c2>
+               	movq	%rsi, %rax
@@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	ja	0x434107 <mi_page_fresh_alloc+0x1d7>
-               	jmp	0x43410b <mi_page_fresh_alloc+0x1db>
-               	movl	%edi, %eax
+               	ja	0x434a7e <mi_page_fresh_alloc+0x1de>
+               	jmp	0x434a82 <mi_page_fresh_alloc+0x1e2>
+               	movl	%esi, %eax

@@ -33751,14 +34276,15 @@
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

@@ -33767,45 +34293,50 @@
@@@[(3, 9), (11, 17), (34, 35), (56, 60)]@@@
-               	callq	0x434ef0 <mi_page_free_list_extend>
-               	addw	%r12w, 2(%r15)
+               	callq	0x4358b0 <mi_page_free_list_extend>
+               	movzwl	2(%r15), %eax
+               	addl	%r12d, %eax
+               	movw	%ax, 2(%r15)
@@@@
-               	jne	0x434452 <mi_page_fresh_alloc+0x522>
-               	andb	$-2, 7(%r15)
+               	jne	0x434de0 <mi_page_fresh_alloc+0x540>
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

@@ -33847,21 +34378,22 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -33928,16 +34460,18 @@
@@@[(13, 19)]@@@
-               	jne	0x4346d0 <mi_page_fresh_alloc+0x7a0>
-               	addq	$1, 3016(%r12)
+               	jne	0x435070 <mi_page_fresh_alloc+0x7d0>
+               	movq	3016(%r12), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%r12)

@@ -33947,7 +34481,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -33958,23 +34492,23 @@
@@@[(3, 5), (11, 13), (15, 23)]@@@
-               	movq	%rdi, %r13
+               	movq	%rdi, %r12
@@@@
-               	movq	(%r14), %r12
+               	movq	(%r14), %r13
@@@@
-               	testq	%r12, %r12
-               	je	0x434d20 <mi_page_queue_find_free_ex+0x620>
-               	movq	%r12, %rbx
-               	movq	48(%r12), %r12
+               	testq	%r13, %r13
+               	je	0x4356d0 <mi_page_queue_find_free_ex+0x620>
+               	movq	%r13, %rbx
+               	movq	48(%r13), %r13

@@ -33992,81 +34526,85 @@
@@@[(28, 32), (33, 43), (95, 99)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
@@@@
-               	jne	0x434ecc <mi_page_queue_find_free_ex+0x7cc>
-               	movzwl	2(%rbx), %edi
-               	movzwl	4(%rbx), %ebp
-               	cmpw	%bp, %di
-               	jb	0x434e06 <mi_page_queue_find_free_ex+0x706>
+               	jne	0x43588a <mi_page_queue_find_free_ex+0x7da>
+               	movzwl	2(%rbx), %eax
+               	movzwl	4(%rbx), %ecx
+               	cmpw	%cx, %ax
+               	jb	0x4357b7 <mi_page_queue_find_free_ex+0x707>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)

@@ -34077,22 +34615,22 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -34322,140 +34860,146 @@
@@@[(28, 34), (37, 41), (42, 56), (57, 61), (62, 64), (78, 79), (83, 85), (94, 98), (117, 125), (127, 131), (133, 135), (140, 150), (152, 164), (165, 172), (174, 176), (181, 185), (186, 190), (192, 194), (195, 205)]@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x434740 <mi_page_queue_find_free_ex+0x40>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x4350f0 <mi_page_queue_find_free_ex+0x40>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %edx
+               	subl	%eax, %edx
+               	movl	%edx, 16(%rbx)
@@@@
-               	jne	0x434cdd <mi_page_queue_find_free_ex+0x5dd>
-               	jmp	0x434740 <mi_page_queue_find_free_ex+0x40>
-               	nopl	(%rax)
-               	movq	3024(%r13), %rbp
-               	cmpq	3032(%r13), %rbp
-               	jbe	0x434d80 <mi_page_queue_find_free_ex+0x680>
-               	movl	$74, %r12d
+               	jne	0x43568d <mi_page_queue_find_free_ex+0x5dd>
+               	jmp	0x4350f0 <mi_page_queue_find_free_ex+0x40>
+               	nop
+               	movq	3024(%r12), %rbp
+               	cmpq	3032(%r12), %rbp
+               	jbe	0x435730 <mi_page_queue_find_free_ex+0x680>
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
-               	ja	0x434d39 <mi_page_queue_find_free_ex+0x639>
+               	cmpq	3032(%r12), %rbp
+               	ja	0x4356eb <mi_page_queue_find_free_ex+0x63b>
@@@@
-               	callq	0x42f1e0 <_mi_page_free>
-               	jmp	0x434db0 <mi_page_queue_find_free_ex+0x6b0>
-               	cmpq	%r12, %rbp
-               	cmovbq	%rbp, %r12
+               	callq	0x42fa20 <_mi_page_free>
+               	jmp	0x435760 <mi_page_queue_find_free_ex+0x6b0>
+               	cmpq	%r13, %rbp
+               	cmovbq	%rbp, %r13
@@@@
-               	jmp	0x434db0 <mi_page_queue_find_free_ex+0x6b0>
+               	jmp	0x435760 <mi_page_queue_find_free_ex+0x6b0>
+               	movzwl	%ax, %r8d
+               	movzwl	%cx, %ebp
@@@@
-               	movl	20(%rbx), %r8d
+               	movl	20(%rbx), %edi
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x434e84 <mi_page_queue_find_free_ex+0x784>
-               	jmp	0x434e3c <mi_page_queue_find_free_ex+0x73c>
-               	movb	96(%rax), %cl
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x435839 <mi_page_queue_find_free_ex+0x789>
+               	jmp	0x4357f0 <mi_page_queue_find_free_ex+0x740>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x434e84 <mi_page_queue_find_free_ex+0x784>
-               	movq	80(%rax), %r10
-               	movq	%rsi, %r9
-               	subq	%r10, %r9
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x435839 <mi_page_queue_find_free_ex+0x789>
+               	movq	80(%rax), %r9
+               	movq	%rsi, %r10
+               	subq	%r9, %r10
@@@@
-               	ja	0x434e81 <mi_page_queue_find_free_ex+0x781>
-               	testl	%r8d, %r8d
-               	je	0x434e81 <mi_page_queue_find_free_ex+0x781>
+               	ja	0x435836 <mi_page_queue_find_free_ex+0x786>
+               	testl	%edi, %edi
+               	je	0x435836 <mi_page_queue_find_free_ex+0x786>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax
@@@@
-               	divq	%r8
-               	jmp	0x434e6f <mi_page_queue_find_free_ex+0x76f>
+               	divq	%rdi
+               	jmp	0x435824 <mi_page_queue_find_free_ex+0x774>
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

@@ -34464,12 +35008,18 @@
@@@[(3, 9), (10, 20)]@@@
-               	callq	0x434ef0 <mi_page_free_list_extend>
-               	addw	%bp, 2(%rbx)
+               	callq	0x4358b0 <mi_page_free_list_extend>
+               	movzwl	2(%rbx), %eax
+               	addl	%ebp, %eax
+               	movw	%ax, 2(%rbx)
@@@@
-               	jne	0x434ecc <mi_page_queue_find_free_ex+0x7cc>
-               	andb	$-2, 7(%rbx)
-               	andb	$1, 7(%rbx)
+               	jne	0x43588a <mi_page_queue_find_free_ex+0x7da>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -34482,66 +35032,68 @@
@@@[(3, 5), (7, 49), (50, 54), (55, 61), (62, 66), (67, 83), (85, 111), (112, 116)]@@@
-               	movq	%rdx, %r9
+               	movq	%rdx, %r8
@@@@
-               	movl	20(%rdi), %r10d
-               	movl	112(%rax), %edx
-               	cmpl	$3, %edx
-               	jne	0x434f0e <mi_page_free_list_extend+0x1e>
-               	movq	72(%rax), %r8
-               	jmp	0x434f1a <mi_page_free_list_extend+0x2a>
-               	movb	96(%rax), %cl
-               	movl	$1, %r8d
-               	shlq	%cl, %r8
-               	movzbl	(%rdi), %ecx
-               	imulq	%rcx, %r8
-               	addq	%rax, %r8
-               	testq	%rcx, %rcx
-               	jne	0x434f63 <mi_page_free_list_extend+0x73>
-               	addq	80(%rax), %r8
-               	cmpl	$1, %edx
-               	ja	0x434f63 <mi_page_free_list_extend+0x73>
-               	testl	%r10d, %r10d
-               	je	0x434f63 <mi_page_free_list_extend+0x73>
-               	movq	%r8, %rax
+               	movl	20(%rdi), %r9d
+               	movl	112(%rax), %r10d
+               	cmpl	$3, %r10d
+               	jne	0x4358d0 <mi_page_free_list_extend+0x20>
+               	movq	72(%rax), %r11
+               	jmp	0x4358dd <mi_page_free_list_extend+0x2d>
+               	movq	96(%rax), %rcx
+               	movl	$1, %r11d
+               	shlq	%cl, %r11
+               	movb	(%rdi), %cl
+               	movzbl	%cl, %edx
+               	movq	%rdx, %rcx
+               	imulq	%r11, %rcx
+               	addq	%rax, %rcx
+               	testb	%dl, %dl
+               	jne	0x43592a <mi_page_free_list_extend+0x7a>
+               	addq	80(%rax), %rcx
+               	cmpl	$1, %r10d
+               	ja	0x43592a <mi_page_free_list_extend+0x7a>
+               	testl	%r9d, %r9d
+               	je	0x43592a <mi_page_free_list_extend+0x7a>
+               	movq	%rcx, %rax
@@@@
-               	je	0x434f4a <mi_page_free_list_extend+0x5a>
-               	movq	%r8, %rax
+               	je	0x435912 <mi_page_free_list_extend+0x62>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r10
-               	jmp	0x434f52 <mi_page_free_list_extend+0x62>
-               	movl	%r8d, %eax
+               	divq	%r9
+               	jmp	0x435919 <mi_page_free_list_extend+0x69>
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
-               	jg	0x434fae <mi_page_free_list_extend+0xbe>
-               	addq	$1, %r11
-               	imulq	%rsi, %r11
-               	addq	%r11, %r8
-               	movq	%r10, %rdx
-               	nopw	(%rax,%rax)
-               	movq	%r8, (%rdx)
-               	addq	%rsi, %rdx
-               	addq	%rsi, %r8
-               	cmpq	%rcx, %rdx
-               	jbe	0x434fa0 <mi_page_free_list_extend+0xb0>
+               	leaq	(%rcx,%rax), %rdx
+               	cmpq	%rax, %r11
+               	jg	0x43596e <mi_page_free_list_extend+0xbe>
+               	addq	$1, %r10
+               	imulq	%rsi, %r10
+               	addq	%r10, %rcx
+               	movq	%r9, %rax
+               	nopl	(%rax)
+               	movq	%rcx, (%rax)
+               	addq	%rsi, %rax
+               	addq	%rsi, %rcx
+               	cmpq	%rdx, %rax
+               	jbe	0x435960 <mi_page_free_list_extend+0xb0>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	%r10, 8(%rdi)
+               	movq	%rax, (%rdx)
+               	movq	%r9, 8(%rdi)

@@ -34553,210 +35105,214 @@
@@@[(3, 6), (10, 16), (17, 19), (20, 22), (38, 40), (52, 53), (57, 58), (79, 89), (90, 94), (97, 99), (111, 113), (150, 156), (160, 164), (205, 209), (216, 222), (244, 256), (285, 289), (293, 298)]@@@
-               	movq	%r8, %r14
+               	movq	%r9, %r14
+               	movq	%r8, %rbx
@@@@
-               	je	0x43505e <mi_segment_reclaim_or_alloc+0x9e>
-               	addq	$-1, 88(%r14)
+               	je	0x435a2e <mi_segment_reclaim_or_alloc+0xae>
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
-               	ja	0x4350e2 <mi_segment_reclaim_or_alloc+0x122>
-               	movq	304053(%rip), %rdx      # 0x47f480 <abandoned_visited_count>
-               	leal	1(%rax), %edi
-               	andl	$4194303, %edi          # imm = 0x3FFFFF
-               	orq	%rcx, %rdi
+               	ja	0x435ab2 <mi_segment_reclaim_or_alloc+0x132>
+               	movq	303461(%rip), %rdx      # 0x47fc00 <abandoned_visited_count>
+               	leal	1(%rax), %esi
+               	andl	$4194303, %esi          # imm = 0x3FFFFF
+               	orq	%rcx, %rsi
@@@@
-               	cmpxchgq	%rdi, 303840(%rip)      # 0x47f3c0 <abandoned>
-               	je	0x43513c <mi_segment_reclaim_or_alloc+0x17c>
+               	cmpxchgq	%rsi, 303248(%rip)      # 0x47fb40 <abandoned>
+               	je	0x435b0c <mi_segment_reclaim_or_alloc+0x18c>
@@@@
-               	movq	%rax, %rbx
+               	movq	%rax, %rsi
@@@@
-               	movq	%rbp, 16(%rbx)
+               	movq	%rbp, 16(%rsi)
@@@@
-               	subq	$1, 303707(%rip)        # 0x47f400 <abandoned_count>
-               	addq	$1, 48(%r15)
+               	subq	$1, 303115(%rip)        # 0x47fb80 <abandoned_count>
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
-               	callq	0x431a70 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x432330 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x431a70 <mi_segment_reclaim>
-               	movq	%rbx, %r9
-               	jmp	0x435259 <mi_segment_reclaim_or_alloc+0x299>
-               	movq	303508(%rip), %rax      # 0x47f440 <abandoned_visited>
-               	nopl	(%rax)
+               	movq	%rbx, %r8
+               	callq	0x432330 <mi_segment_reclaim>
+               	jmp	0x435c2a <mi_segment_reclaim_or_alloc+0x2aa>
+               	movq	302921(%rip), %rax      # 0x47fbc0 <abandoned_visited>
+               	nopw	(%rax,%rax)
@@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
-               	movq	%r14, %r8
-               	callq	0x4355f0 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x435fe0 <mi_segment_init>

@@ -34770,24 +35326,23 @@
@@@[(3, 9), (20, 25), (26, 30)]@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x431a70 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x432330 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	callq	0x4355f0 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x435fe0 <mi_segment_init>
@@@@
-               	jmp	0x435322 <mi_segment_reclaim_or_alloc+0x362>
-               	nopw	(%rax,%rax)
+               	jmp	0x435d03 <mi_segment_reclaim_or_alloc+0x383>
+               	nopl	(%rax)

@@ -34798,73 +35353,76 @@
@@@[(22, 26), (79, 83), (86, 91), (92, 96)]@@@
-               	addq	$-1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x435422 <mi_segment_find_free+0xa2>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x435e09 <mi_segment_find_free+0xa9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x435483 <mi_segment_find_free+0x103>
+               	testb	%al, %al
+               	jne	0x435e6b <mi_segment_find_free+0x10b>

@@ -34872,95 +35430,98 @@
@@@[(18, 22), (40, 44), (47, 52), (53, 57), (85, 93)]@@@
-               	addq	$1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x435505 <mi_segment_find_free+0x185>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x435ef3 <mi_segment_find_free+0x193>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x435521 <mi_segment_find_free+0x1a1>
+               	testb	%al, %al
+               	jne	0x435f11 <mi_segment_find_free+0x1b1>
@@@@
-               	jmp	0x4355d1 <mi_segment_find_free+0x251>
-               	movq	56(%r15), %rax
-               	cmpq	64(%r15), %rax
-               	jne	0x4355d1 <mi_segment_find_free+0x251>
+               	jmp	0x435fc1 <mi_segment_find_free+0x261>
+               	movq	64(%r15), %rax
+               	cmpq	%rax, 56(%r15)
+               	jne	0x435fc1 <mi_segment_find_free+0x261>

@@ -34987,406 +35548,400 @@
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
-               	ja	0x43568d <mi_segment_init+0x9d>
-               	movq	56(%rbp), %rbx
+               	cmpl	$1, %r13d
+               	movq	%rbx, 80(%rsp)
+               	ja	0x436075 <mi_segment_init+0x95>
+               	movq	56(%r12), %rbx
@@@@
-               	callq	0x42cac0 <mi_option_get>
-               	xorl	%r11d, %r11d
-               	movl	$0, %ecx
-               	movl	$0, %r13d
+               	callq	0x42d2b0 <mi_option_get>
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
-               	je	0x4357d5 <mi_segment_init+0x1e5>
-               	cmpl	$1, %r12d
-               	ja	0x4356ff <mi_segment_init+0x10f>
-               	cmpl	%r12d, 112(%r14)
-               	jne	0x4356ff <mi_segment_init+0x10f>
-               	cmpq	%rbx, 72(%r14)
-               	jne	0x4356ff <mi_segment_init+0x10f>
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
+               	testq	%rbp, %rbp
+               	je	0x4361b6 <mi_segment_init+0x1d6>
+               	movq	%r14, 96(%rsp)
+               	cmpl	$1, %r13d
+               	ja	0x4360dc <mi_segment_init+0xfc>
+               	cmpl	%r13d, 112(%rbp)
+               	jne	0x4360dc <mi_segment_init+0xfc>
+               	cmpq	%rbx, 72(%rbp)
+               	jne	0x4360dc <mi_segment_init+0xfc>
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
-               	jmp	0x4358e6 <mi_segment_init+0x2f6>
-               	movl	%r12d, 52(%rsp)
-               	movq	%rbp, %r12
-               	cmpq	$0, 64(%r14)
-               	je	0x435818 <mi_segment_init+0x228>
-               	leaq	121(%r14), %rbx
-               	xorl	%ebp, %ebp
-               	jmp	0x435755 <mi_segment_init+0x165>
-               	nopl	(%rax)
+               	movups	%xmm0, 104(%rbp)
+               	movups	%xmm0, 88(%rbp)
+               	movups	%xmm0, 72(%rbp)
+               	movups	%xmm0, 56(%rbp)
+               	movups	%xmm0, 40(%rbp)
+               	movups	%xmm0, 24(%rbp)
+               	jmp	0x4362cc <mi_segment_init+0x2ec>
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, %r14
+               	cmpq	$0, 64(%rbp)
+               	je	0x43620d <mi_segment_init+0x22d>
+               	movb	9(%rsp), %r13b
+               	leaq	121(%rbp), %rbx
+               	xorl	%r12d, %r12d
+               	jmp	0x436135 <mi_segment_init+0x155>
@@@@
-               	je	0x43575f <mi_segment_init+0x16f>
-               	andb	$-3, (%rbx)
+               	je	0x43613f <mi_segment_init+0x15f>
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
-               	jae	0x43581a <mi_segment_init+0x22a>
+               	cmpq	%rax, %r12
+               	jae	0x43620f <mi_segment_init+0x22f>
@@@@
-               	je	0x435720 <mi_segment_init+0x130>
-               	cmpb	$0, 8(%r14)
-               	jne	0x435740 <mi_segment_init+0x150>
+               	je	0x4360fd <mi_segment_init+0x11d>
+               	cmpb	$0, 8(%rbp)
+               	jne	0x436120 <mi_segment_init+0x140>
@@@@
-               	cmpl	$3, 112(%r14)
-               	jne	0x435784 <mi_segment_init+0x194>
-               	movq	72(%r14), %rsi
-               	jmp	0x435791 <mi_segment_init+0x1a1>
-               	movzbl	96(%r14), %ecx
+               	cmpl	$3, 112(%rbp)
+               	jne	0x436162 <mi_segment_init+0x182>
+               	movq	72(%rbp), %rsi
+               	jmp	0x43616e <mi_segment_init+0x18e>
+               	movq	96(%rbp), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
-               	addq	%r14, %rdi
-               	testq	%rax, %rax
-               	jne	0x4357ae <mi_segment_init+0x1be>
-               	movq	80(%r14), %rax
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
+               	addq	%rbp, %rdi
+               	testb	%al, %al
+               	jne	0x43618d <mi_segment_init+0x1ad>
+               	movq	80(%rbp), %rax
@@@@
-               	je	0x435740 <mi_segment_init+0x150>
-               	orb	$8, (%rbx)
-               	jmp	0x435740 <mi_segment_init+0x150>
+               	je	0x436120 <mi_segment_init+0x140>
+               	movzbl	(%rbx), %eax
+               	orb	$8, %al
+               	jmp	0x436111 <mi_segment_init+0x131>
@@@@
-               	je	0x43623b <mi_segment_init+0xc4b>
-               	movq	%rbp, 104(%rsp)
-               	movq	196656(%rip), %rcx      # 0x465828 <os_page_size>
+               	je	0x436c01 <mi_segment_init+0xc21>
+               	movq	196020(%rip), %rcx      # 0x465f88 <os_page_size>
@@@@
-               	jmp	0x435983 <mi_segment_init+0x393>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	jbe	0x436384 <mi_segment_init+0x3a4>
+               	jmp	0x436a97 <mi_segment_init+0xab7>
@@@@
-               	movq	%r14, %rdi
-               	movq	64(%rsp), %r13
-               	movq	%r13, %rsi
+               	movq	%rbp, %rdi
+               	movq	88(%rsp), %rsi
@@@@
-               	movq	%r12, %rbp
-               	je	0x43584f <mi_segment_init+0x25f>
+               	movq	%r14, %r12
+               	movl	24(%rsp), %r13d
+               	je	0x436246 <mi_segment_init+0x266>
@@@@
-               	jne	0x435860 <mi_segment_init+0x270>
-               	jmp	0x43623b <mi_segment_init+0xc4b>
-               	movq	%r12, %rbp
-               	movq	64(%rsp), %r13
-               	movq	%rbp, %r12
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
-               	leaq	-24(%r13), %rdx
-               	xorl	%ebp, %ebp
-               	movq	%rbx, %rdi
+               	jne	0x436257 <mi_segment_init+0x277>
+               	jmp	0x436c01 <mi_segment_init+0xc21>
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
-               	ja	0x435890 <mi_segment_init+0x2a0>
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
+               	ja	0x436280 <mi_segment_init+0x2a0>
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
-               	movq	195408(%rip), %rax      # 0x465468 <_mi_heap_main+0xb28>
-               	xorq	%r14, %rax
-               	movq	%rax, 88(%r14)
-               	cmpl	$1, %r12d
-               	ja	0x43623e <mi_segment_init+0xc4e>
-               	movl	112(%r14), %eax
+               	xchgq	%rax, 104(%rbp)
+               	movq	194762(%rip), %rax      # 0x465bc8 <_mi_heap_main+0xb28>
+               	xorq	%rbp, %rax
+               	movq	%rax, 88(%rbp)
+               	cmpl	$1, %r13d
+               	ja	0x436c03 <mi_segment_init+0xc23>
+               	movl	112(%rbp), %eax
@@@@
-               	je	0x435954 <mi_segment_init+0x364>
-               	xorl	%ebp, %ebp
-               	jmp	0x435954 <mi_segment_init+0x364>
+               	je	0x43633a <mi_segment_init+0x35a>
+               	xorl	%r12d, %r12d
+               	jmp	0x43633a <mi_segment_init+0x35a>
@@@@
-               	jmp	0x435980 <mi_segment_init+0x390>
-               	addq	$16, %rbp
-               	movq	$0, (%rbx)
-               	movq	8(%rbp), %rax
-               	movq	%rax, 32(%r14)
+               	jmp	0x436368 <mi_segment_init+0x388>
+               	addq	$16, %r12
+               	movq	$0, (%r14)
+               	movq	8(%r12), %rax
+               	movq	%rax, 32(%rbp)
@@@@
-               	cmoveq	%rbp, %rcx
-               	movq	%r14, (%rcx)
-               	movq	%r14, 8(%rbp)
-               	jmp	0x43623e <mi_segment_init+0xc4e>
+               	cmoveq	%r12, %rcx
+               	movq	%rbp, (%rcx)
+               	movq	%rbp, 8(%r12)
+               	jmp	0x436c03 <mi_segment_init+0xc23>
@@@@
-               	leaq	4194303(%rbp), %rax
-               	movq	%rax, 80(%rsp)
-               	cmpq	$71303167, %rax         # imm = 0x43FFFFF
-               	movl	%r12d, 52(%rsp)
-               	ja	0x4360c9 <mi_segment_init+0xad9>
-               	movq	235889(%rip), %rax      # 0x46f318 <_mi_numa_node_count>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	ja	0x436a97 <mi_segment_init+0xab7>
+               	movq	235277(%rip), %rax      # 0x46fa98 <_mi_numa_node_count>
@@@@
-               	je	0x435bb7 <mi_segment_init+0x5c7>
-               	movq	80(%rsp), %rsi
-               	shrq	$22, %rsi
+               	movq	%rcx, 32(%rsp)
+               	je	0x436c76 <mi_segment_init+0xc96>
+               	movq	%rbp, 104(%rsp)
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, 72(%rsp)
+               	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
@@@@
-               	movq	%rsi, 24(%rsp)
-               	movq	%rbp, 96(%rsp)
-               	jae	0x4359e6 <mi_segment_init+0x3f6>
-               	movq	235936(%rip), %r9       # 0x46f370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x435bea <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
-               	movq	(%rax), %rbp
-               	jmp	0x435abe <mi_segment_init+0x4ce>
-               	movq	235819(%rip), %rax      # 0x46f318 <_mi_numa_node_count>
+               	jb	0x4363c8 <mi_segment_init+0x3e8>
+               	movq	235229(%rip), %rax      # 0x46fa98 <_mi_numa_node_count>
@@@@
-               	jne	0x435bc7 <mi_segment_init+0x5d7>
-               	movq	235887(%rip), %r9       # 0x46f370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x435bea <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
+               	jne	0x436c85 <mi_segment_init+0xca5>
+               	shrq	$22, %rcx
+               	movq	%rcx, 40(%rsp)
+               	movb	10(%rsp), %r9b
+               	movq	235283(%rip), %r12      # 0x46faf0 <regions_count>
+               	testq	%r12, %r12
+               	je	0x436578 <mi_segment_init+0x598>
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	235868(%rip), %r8       # 0x46f380 <regions>
-               	notb	%r11b
-               	movq	%r9, %r14
-               	movl	%r11d, 92(%rsp)
-               	movq	%r9, 56(%rsp)
-               	movl	%r10d, 88(%rsp)
-               	jmp	0x435a4e <mi_segment_init+0x45e>
+               	leaq	235264(%rip), %r8       # 0x46fb00 <regions>
+               	movq	%r12, %r13
+               	movq	%r15, 112(%rsp)
+               	movq	%r12, 64(%rsp)
+               	jmp	0x43641e <mi_segment_init+0x43e>
@@@@
-               	addq	$-1, %r14
-               	je	0x435bea <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r13
+               	je	0x436578 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	je	0x435a40 <mi_segment_init+0x450>
-               	movl	%eax, %edx
-               	shrl	$8, %edx
-               	andl	$1, %edx
+               	je	0x436410 <mi_segment_init+0x430>
+               	testb	%r9b, %r9b
+               	sete	%dl
+               	movl	%eax, %esi
+               	shrl	$8, %esi
+               	andl	$1, %esi
@@@@
-               	testb	%dl, %r11b
-               	jne	0x435a40 <mi_segment_init+0x450>
+               	testb	%sil, %dl
+               	jne	0x436410 <mi_segment_init+0x430>
@@@@
-               	je	0x435a40 <mi_segment_init+0x450>
+               	je	0x436410 <mi_segment_init+0x430>
+               	movl	%r10d, %r12d
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r12
-               	callq	0x4363e0 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r14
+               	movl	%r9d, %r15d
+               	callq	0x436dc0 <_mi_bitmap_try_find_claim_field>
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
-               	jmp	0x435baa <mi_segment_init+0x5ba>
-               	testb	%r11b, %r11b
-               	movq	%r9, 56(%rsp)
-               	je	0x435b35 <mi_segment_init+0x545>
-               	leaq	235693(%rip), %r8       # 0x46f380 <regions>
-               	movq	%r9, %r12
-               	jmp	0x435aee <mi_segment_init+0x4fe>
-               	nopl	(%rax,%rax)
+               	jmp	0x436561 <mi_segment_init+0x581>
+               	testb	%r9b, %r9b
+               	je	0x436501 <mi_segment_init+0x521>
+               	leaq	235093(%rip), %r8       # 0x46fb00 <regions>
+               	movq	%r12, %r14
+               	jmp	0x4364be <mi_segment_init+0x4de>
@@@@
-               	addq	$-1, %r12
-               	je	0x435bea <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r14
+               	je	0x436578 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r14
-               	shlq	$6, %r14
-               	movq	(%r14,%r8), %rax
+               	movq	%rbp, %r13
+               	shlq	$6, %r13
+               	movq	(%r13,%r8), %rax
@@@@
-               	je	0x435ae0 <mi_segment_init+0x4f0>
-               	leaq	(%r14,%r8), %rdi
+               	je	0x4364b0 <mi_segment_init+0x4d0>
+               	leaq	(%r8,%r13), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
@@@@
-               	callq	0x4363e0 <_mi_bitmap_try_find_claim_field>
-               	movq	56(%rsp), %r9
+               	callq	0x436dc0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	24(%rsp), %rsi
@@@@
-               	je	0x435ae0 <mi_segment_init+0x4f0>
-               	addq	%r14, %r8
-               	jmp	0x435baa <mi_segment_init+0x5ba>
+               	je	0x4364b0 <mi_segment_init+0x4d0>
+               	addq	%r13, %r8
+               	jmp	0x436561 <mi_segment_init+0x581>
@@@@
-               	leaq	235586(%rip), %r8       # 0x46f380 <regions>
-               	movq	%r9, %rbx
-               	jmp	0x435b5e <mi_segment_init+0x56e>
-               	nopw	%cs:(%rax,%rax)
+               	leaq	234998(%rip), %r8       # 0x46fb00 <regions>
+               	movq	%r12, %rbx
+               	jmp	0x43651a <mi_segment_init+0x53a>
+               	nop
@@@@
-               	je	0x435bea <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	je	0x436578 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r12
-               	shlq	$6, %r12
-               	movq	(%r12,%r8), %rax
+               	movq	%rbp, %r14
+               	shlq	$6, %r14
+               	movq	(%r14,%r8), %rax
@@@@
-               	jne	0x435b50 <mi_segment_init+0x560>
-               	leaq	(%r12,%r8), %rdi
+               	jne	0x436510 <mi_segment_init+0x530>
+               	leaq	(%r14,%r8), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r14
-               	callq	0x4363e0 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r13
+               	callq	0x436dc0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	56(%rsp), %r9
-               	movq	%r14, %r8
-               	movq	24(%rsp), %rsi
+               	movq	%r13, %r8
@@@@
-               	je	0x435b50 <mi_segment_init+0x560>
-               	addq	%r12, %r8
-               	movq	32(%rsp), %rax
+               	je	0x436510 <mi_segment_init+0x530>
+               	addq	%r14, %r8
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	movq	56(%rsp), %rax
@@@@
-               	jmp	0x435d94 <mi_segment_init+0x7a4>
-               	movl	%r11d, %ebx
-               	callq	0x42de70 <_mi_os_numa_node_count_get>
-               	movl	%ebx, %r11d
-               	jmp	0x4359b0 <mi_segment_init+0x3c0>
-               	movl	%r11d, %ebx
-               	callq	0x4362c0 <_mi_os_numa_node_get>
-               	movl	%ebx, %r11d
-               	movq	24(%rsp), %rsi
-               	movl	%eax, %r10d
-               	movq	235407(%rip), %r9       # 0x46f370 <regions_count>
-               	testq	%r9, %r9
-               	jne	0x435a0a <mi_segment_init+0x41a>
-               	movb	10(%rsp), %bl
-               	movq	235387(%rip), %rax      # 0x46f370 <regions_count>
+               	jmp	0x436731 <mi_segment_init+0x751>
+               	movb	9(%rsp), %bl
+               	movb	10(%rsp), %bpl
+               	movq	234856(%rip), %rax      # 0x46faf0 <regions_count>
@@@@
-               	ja	0x4360ae <mi_segment_init+0xabe>
-               	testb	%r13b, %r13b
-               	je	0x435c18 <mi_segment_init+0x628>
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	ja	0x436a7c <mi_segment_init+0xa9c>
+               	testb	%bl, %bl
+               	je	0x4365b4 <mi_segment_init+0x5d4>
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

@@ -35396,70 +35951,70 @@
@@@[(19, 23), (32, 37), (38, 41), (42, 44), (45, 49), (50, 54), (55, 62), (63, 69), (70, 80), (81, 82), (89, 99)]@@@
-               	movzbl	12(%rsp), %ecx
+               	xorl	%ecx, %ecx
+               	cmpb	$0, 12(%rsp)
+               	setne	%cl
@@@@
-               	callq	0x42db20 <_mi_warning_message>
-               	movq	24(%rsp), %rsi
-               	jmp	0x435d8c <mi_segment_init+0x79c>
+               	callq	0x42e310 <_mi_warning_message>
+               	jmp	0x436729 <mi_segment_init+0x749>
@@@@
-               	movq	24(%rsp), %rsi
-               	jmp	0x435d8c <mi_segment_init+0x79c>
+               	jmp	0x436729 <mi_segment_init+0x749>
@@@@
-               	leaq	235181(%rip), %rbx      # 0x46f380 <regions>
+               	leaq	234642(%rip), %rsi      # 0x46fb00 <regions>
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
-               	ja	0x435d4c <mi_segment_init+0x75c>
-               	testq	%rsi, %rsi
-               	je	0x435d4a <mi_segment_init+0x75a>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x4366e9 <mi_segment_init+0x709>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4366e7 <mi_segment_init+0x707>
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

@@ -35467,35 +36022,33 @@
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
-               	ja	0x435ddc <mi_segment_init+0x7ec>
-               	testq	%rsi, %rsi
-               	je	0x435dda <mi_segment_init+0x7ea>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x436779 <mi_segment_init+0x799>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x436777 <mi_segment_init+0x797>
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
-               	jne	0x435df0 <mi_segment_init+0x800>
+               	cmpxchgq	%rcx, 24(%r8,%rsi,8)
+               	jne	0x436780 <mi_segment_init+0x7a0>

@@ -35505,86 +36058,89 @@
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
-               	je	0x435e70 <mi_segment_init+0x880>
-               	movq	%rbx, %rdx
+               	je	0x436803 <mi_segment_init+0x823>
+               	movq	%rdi, %rdx
@@@@
-               	movq	$-1, %rdi
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x435ead <mi_segment_init+0x8bd>
-               	testq	%rsi, %rsi
-               	je	0x435eab <mi_segment_init+0x8bb>
-               	movl	%ebx, %eax
+               	movq	$-1, %rsi
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x43684d <mi_segment_init+0x86d>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43684b <mi_segment_init+0x86b>
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
-               	jmp	0x435ead <mi_segment_init+0x8bd>
+               	shlq	%cl, %rsi
+               	jmp	0x43684d <mi_segment_init+0x86d>
@@@@
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x435f75 <mi_segment_init+0x985>
-               	testq	%rsi, %rsi
-               	je	0x435f73 <mi_segment_init+0x983>
-               	movl	%ebx, %eax
+               	movq	32(%rsp), %rbx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x436926 <mi_segment_init+0x946>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x436924 <mi_segment_init+0x944>
+               	movl	%edi, %eax
@@@@
-               	movl	%esi, %ecx
@@@@
-               	jmp	0x435f75 <mi_segment_init+0x985>
-               	xorl	%edi, %edi
+               	movq	32(%rsp), %rbx
+               	jmp	0x436926 <mi_segment_init+0x946>
+               	xorl	%esi, %esi
@@@@
-               	orq	%rdi, %rcx
+               	orq	%rsi, %rcx
@@@@
-               	jne	0x435ec0 <mi_segment_init+0x8d0>
-               	andq	%rdi, %rax
-               	cmpq	%rdi, %rax
-               	je	0x435f8c <mi_segment_init+0x99c>
-               	movq	%r9, 32(%rsp)
-               	movq	%r8, %r13
+               	jne	0x436860 <mi_segment_init+0x880>
+               	andq	%rsi, %rax
+               	cmpq	%rsi, %rax
+               	movq	32(%rsp), %rbx
+               	je	0x43693d <mi_segment_init+0x95d>
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
-               	callq	0x42f910 <mi_os_commitx>
+               	callq	0x430150 <mi_os_commitx>
@@@@
-               	je	0x435f2b <mi_segment_init+0x93b>
-               	movq	%rbp, %r10
+               	je	0x4368d8 <mi_segment_init+0x8f8>
@@@@
-               	movq	24(%rsp), %rsi
-               	movq	%r13, %r8
-               	movq	32(%rsp), %r9
-               	jmp	0x435f8c <mi_segment_init+0x99c>
-               	movq	40(%rsp), %rdx
-               	cmpq	$268435455, %rbp        # imm = 0xFFFFFFF
-               	jbe	0x435f43 <mi_segment_init+0x953>
+               	movq	32(%rsp), %rbx
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43693d <mi_segment_init+0x95d>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x4368f2 <mi_segment_init+0x912>
@@@@
-               	movq	%r13, %rbp
-               	jmp	0x4360a4 <mi_segment_init+0xab4>
-               	movq	24(%rsp), %rcx
+               	movq	24(%rsp), %rdi
+               	jmp	0x436a72 <mi_segment_init+0xa92>
+               	movq	40(%rsp), %rcx
@@@@
-               	movq	%r13, %rbp
-               	je	0x43609d <mi_segment_init+0xaad>
+               	movq	24(%rsp), %rdi
+               	je	0x436a6b <mi_segment_init+0xa8b>

@@ -35593,169 +36149,168 @@
@@@[(6, 8), (13, 33), (34, 41), (42, 81), (82, 90), (91, 93), (94, 101), (102, 104), (105, 111), (115, 122), (123, 136), (146, 148), (156, 162), (174, 178), (181, 186), (188, 193), (195, 199), (213, 215), (218, 226), (244, 246)]@@@
-               	movq	%rbx, %rax
+               	movq	%rdi, %rax
@@@@
-               	leaq	40(%r8), %rdx
-               	movq	40(%rsp), %rbp
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x435fb7 <mi_segment_init+0x9c7>
-               	shrq	$6, %rbp
-               	movq	(%rdx,%rbp,8), %rax
-               	testq	%rax, %rax
-               	je	0x436081 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	xorl	%edi, %edi
-               	jmp	0x436015 <mi_segment_init+0xa25>
-               	movl	%ebp, %eax
+               	movq	48(%rsp), %rdx
+               	movq	$-1, %rsi
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x43697c <mi_segment_init+0x99c>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43697a <mi_segment_init+0x99a>
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
-               	je	0x436081 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x435ff9 <mi_segment_init+0xa09>
-               	xorl	%edi, %edi
-               	jmp	0x436015 <mi_segment_init+0xa25>
-               	movq	$-1, %rdi
-               	testq	%rsi, %rsi
-               	je	0x436015 <mi_segment_init+0xa25>
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	shlq	%cl, %rsi
+               	movq	32(%rsp), %rbx
+               	jmp	0x43697c <mi_segment_init+0x99c>
+               	xorl	%esi, %esi
+               	shrq	$6, %rdx
+               	movq	40(%r8,%rdx,8), %rax
+               	testq	%rsi, %rax
+               	je	0x436a4f <mi_segment_init+0xa6f>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x4369a0 <mi_segment_init+0x9c0>
+               	xorl	%esi, %esi
+               	jmp	0x4369d2 <mi_segment_init+0x9f2>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4369cb <mi_segment_init+0x9eb>
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
+               	jmp	0x4369d2 <mi_segment_init+0x9f2>
+               	movq	$-1, %rsi
+               	shrq	$6, %rdx
@@@@
-               	andq	%rdi, (%rdx)
+               	andq	%rsi, 40(%r8,%rdx,8)
@@@@
-               	je	0x436056 <mi_segment_init+0xa66>
-               	movq	%r9, %r13
-               	movq	%r8, %rbp
+               	movq	%r9, 56(%rsp)
+               	movq	%rdi, 64(%rsp)
+               	je	0x436a2b <mi_segment_init+0xa4b>
+               	movq	%r8, 24(%rsp)
@@@@
-               	andq	$-4194304, %r10         # imm = 0xFFC00000
+               	andq	$-4194304, %rbx         # imm = 0xFFC00000
@@@@
-               	movq	%r14, %rdi
-               	movq	%r10, %rsi
-               	callq	0x436680 <_mi_os_unreset>
+               	movq	%rbp, %rdi
+               	movq	%rbx, %rsi
+               	callq	0x437060 <_mi_os_unreset>
@@@@
-               	movq	%rbp, %r8
-               	movq	%r13, %r9
-               	jmp	0x436081 <mi_segment_init+0xa91>
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x436a4f <mi_segment_init+0xa6f>
@@@@
-               	movq	%rbx, 32(%rsp)
-               	movq	%r8, %r13
-               	movq	%r9, %rbp
-               	movq	%r10, %rbx
-               	callq	0x42cac0 <mi_option_get>
-               	movq	%rbx, %r10
-               	movq	%rbp, %r9
-               	movq	%r13, %r8
+               	movq	%r8, %rbx
+               	callq	0x42d2b0 <mi_option_get>
+               	movq	64(%rsp), %rdi
+               	movq	56(%rsp), %r9
+               	movq	%rbx, %r8
@@@@
-               	addq	%rbx, %r8
+               	addq	%rdi, %r8
@@@@
-               	andq	%rsi, 16(%rbp,%rdx,8)
-               	leaq	73835(%rip), %rdi       # 0x448120 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
-               	movq	96(%rsp), %rbp
+               	andq	%rsi, 16(%rdi,%rdx,8)
+               	leaq	75165(%rip), %rdi       # 0x449020 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
+               	movq	104(%rsp), %rbp
@@@@
-               	callq	0x4364a0 <_mi_arena_alloc_aligned>
-               	movq	%rax, %r14
+               	callq	0x436e80 <_mi_arena_alloc_aligned>
+               	movq	%rax, %rbp
@@@@
-               	testq	%r14, %r14
-               	movq	104(%rsp), %rbp
-               	je	0x43623b <mi_segment_init+0xc4b>
+               	testq	%rbp, %rbp
+               	je	0x436c01 <mi_segment_init+0xc21>
@@@@
-               	movq	64(%rsp), %r13
-               	jne	0x436152 <mi_segment_init+0xb62>
-               	movq	%r8, 32(%rsp)
+               	jne	0x436b18 <mi_segment_init+0xb38>
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
-               	leaq	199821(%rip), %rax      # 0x466e00 <_mi_stats_main>
+               	movb	%cl, 8(%rbp)
+               	movb	%al, 9(%rbp)
+               	movq	112(%r12), %rcx
+               	leaq	199239(%rip), %rax      # 0x467580 <_mi_stats_main>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -35763,30 +36318,32 @@
@@@[(20, 24), (28, 30), (33, 39)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	callq	0x42fc00 <_mi_mem_free>
-               	xorl	%r14d, %r14d
-               	movq	%r14, %rax
+               	callq	0x430460 <_mi_mem_free>
+               	xorl	%ebp, %ebp
+               	movq	%rbp, %rax

@@ -35799,28 +36356,36 @@
@@@[(6, 10), (11, 23), (24, 41), (45, 46)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	addq	56(%rbp), %rax
-               	movq	%rax, 56(%rbp)
-               	cmpq	64(%rbp), %rax
-               	jbe	0x436284 <mi_segment_init+0xc94>
-               	movq	%rax, 64(%rbp)
-               	movq	72(%rbp), %rax
+               	addq	56(%r12), %rax
+               	movq	%rax, 56(%r12)
+               	cmpq	64(%r12), %rax
+               	jbe	0x436c54 <mi_segment_init+0xc74>
+               	movq	%rax, 64(%r12)
+               	movq	72(%r12), %rax
@@@@
-               	movq	%rax, 72(%rbp)
-               	cmpq	80(%rbp), %rax
-               	jbe	0x435860 <mi_segment_init+0x270>
-               	movq	%rax, 80(%rbp)
-               	jmp	0x435860 <mi_segment_init+0x270>
+               	movq	%rax, 72(%r12)
+               	cmpq	80(%r12), %rax
+               	jbe	0x436257 <mi_segment_init+0x277>
+               	movq	%rax, 80(%r12)
+               	jmp	0x436257 <mi_segment_init+0x277>
+               	callq	0x42e660 <_mi_os_numa_node_count_get>
+               	movq	32(%rsp), %rcx
+               	jmp	0x436399 <mi_segment_init+0x3b9>
+               	callq	0x436cb0 <_mi_os_numa_node_get>
+               	movq	32(%rsp), %rcx
+               	movl	%eax, %r10d
+               	jmp	0x4363c8 <mi_segment_init+0x3e8>
@@@@
-               	movq	24(%rsp), %rsi

@@ -35828,15 +36393,15 @@
@@@[(3, 15), (17, 19)]@@@
-               	movq	233541(%rip), %r14      # 0x46f318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	je	0x43634c <_mi_os_numa_node_get+0x8c>
-               	xorl	%ebx, %ebx
-               	cmpq	$2, %r14
-               	jb	0x43633d <_mi_os_numa_node_get+0x7d>
+               	movq	232917(%rip), %rbx      # 0x46fa98 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	je	0x436d37 <_mi_os_numa_node_get+0x87>
+               	xorl	%eax, %eax
+               	cmpq	$2, %rbx
+               	jb	0x436d2a <_mi_os_numa_node_get+0x7a>
@@@@
-               	xorl	%ebx, %ebx
+               	xorl	%r14d, %r14d

@@ -35844,108 +36409,105 @@
@@@[(3, 20), (21, 28), (29, 34), (39, 45), (46, 50), (51, 65), (66, 70), (72, 74), (76, 78), (79, 93), (94, 100)]@@@
-               	jne	0x436316 <_mi_os_numa_node_get+0x56>
-               	movq	16(%rsp), %rbx
-               	cmpq	%r14, %rbx
-               	jb	0x43633d <_mi_os_numa_node_get+0x7d>
-               	movq	%rbx, %rax
-               	orq	%r14, %rax
-               	shrq	$32, %rax
-               	je	0x436334 <_mi_os_numa_node_get+0x74>
-               	movq	%rbx, %rax
+               	movq	16(%rsp), %rax
+               	cmovneq	%r14, %rax
+               	cmpq	%rbx, %rax
+               	jb	0x436d2a <_mi_os_numa_node_get+0x7a>
+               	movq	%rax, %rcx
+               	orq	%rbx, %rcx
+               	shrq	$32, %rcx
+               	je	0x436d24 <_mi_os_numa_node_get+0x74>
@@@@
-               	divq	%r14
-               	movq	%rdx, %rbx
-               	jmp	0x43633d <_mi_os_numa_node_get+0x7d>
-               	movl	%ebx, %eax
+               	divq	%rbx
+               	movq	%rdx, %rax
+               	jmp	0x436d2a <_mi_os_numa_node_get+0x7a>
@@@@
-               	divl	%r14d
-               	movl	%edx, %ebx
-               	movl	%ebx, %eax
+               	divl	%ebx
+               	movl	%edx, %eax
@@@@
-               	movq	233413(%rip), %r14      # 0x46f318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	jne	0x4362d8 <_mi_os_numa_node_get+0x18>
+               	movq	232794(%rip), %rbx      # 0x46fa98 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	jne	0x436cc8 <_mi_os_numa_node_get+0x18>
@@@@
-               	callq	0x42cac0 <mi_option_get>
-               	movq	%rax, %r14
+               	callq	0x42d2b0 <mi_option_get>
+               	movq	%rax, %rbx
@@@@
-               	jg	0x4363bc <_mi_os_numa_node_get+0xfc>
-               	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
-               	leaq	71570(%rip), %r15       # 0x447b09 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
-               	leaq	16(%rsp), %rbx
-               	cmpl	$255, %r14d
-               	je	0x4363b2 <_mi_os_numa_node_get+0xf2>
-               	leal	2(%r14), %ecx
+               	jg	0x436da1 <_mi_os_numa_node_get+0xf1>
+               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
+               	leaq	72872(%rip), %r14       # 0x448a09 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	16(%rsp), %r15
+               	cmpl	$255, %ebx
+               	je	0x436d99 <_mi_os_numa_node_get+0xe9>
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
-               	je	0x43637c <_mi_os_numa_node_get+0xbc>
-               	jmp	0x4363b8 <_mi_os_numa_node_get+0xf8>
-               	movl	$256, %r14d             # imm = 0x100
-               	addl	$1, %r14d
-               	movq	%r14, 233301(%rip)      # 0x46f318 <_mi_numa_node_count>
-               	leaq	71519(%rip), %rdi       # 0x447b29 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
-               	movq	%r14, %rsi
+               	je	0x436d66 <_mi_os_numa_node_get+0xb6>
+               	jmp	0x436d9e <_mi_os_numa_node_get+0xee>
+               	movl	$256, %ebx              # imm = 0x100
+               	addl	$1, %ebx
+               	movq	%rbx, 232688(%rip)      # 0x46fa98 <_mi_numa_node_count>
+               	leaq	72826(%rip), %rdi       # 0x448a29 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, %rsi
@@@@
-               	callq	0x42c7a0 <_mi_verbose_message>
-               	jmp	0x4362d8 <_mi_os_numa_node_get+0x18>
-               	nopl	(%rax)
+               	callq	0x42cf90 <_mi_verbose_message>
+               	jmp	0x436cc8 <_mi_os_numa_node_get+0x18>
+               	nop

@@ -35977,9 +36539,9 @@
@@@[(3, 9)]@@@
-               	movq	%r8, %r13
-               	movq	%rcx, %r12
-               	movq	%rdx, %r15
+               	movq	%r8, %r14
+               	movq	%rcx, %r15
+               	movq	%rdx, %r12

@@ -35987,106 +36549,107 @@
@@@[(8, 12), (14, 18), (22, 28), (29, 35), (37, 39), (41, 45), (47, 51), (52, 56), (62, 70), (79, 83), (84, 85), (88, 92), (93, 97), (112, 122), (136, 140), (142, 143), (144, 147), (148, 152), (153, 159)]@@@
-               	je	0x436606 <_mi_arena_alloc_aligned+0x166>
-               	movq	%r12, 24(%rsp)
+               	je	0x436feb <_mi_arena_alloc_aligned+0x16b>
+               	movq	%r15, 24(%rsp)
@@@@
-               	movq	232976(%rip), %rax      # 0x46f318 <_mi_numa_node_count>
-               	xorl	%r14d, %r14d
+               	movq	232368(%rip), %rax      # 0x46fa98 <_mi_numa_node_count>
+               	xorl	%r13d, %r13d
@@@@
-               	leaq	199584(%rip), %rbp      # 0x4670c0 <mi_arenas>
-               	xorl	%r12d, %r12d
-               	jmp	0x43656e <_mi_arena_alloc_aligned+0xce>
+               	leaq	198976(%rip), %rbp      # 0x467840 <mi_arenas>
+               	xorl	%r15d, %r15d
+               	jmp	0x436f4f <_mi_arena_alloc_aligned+0xcf>
@@@@
-               	cmpb	$0, (%r15)
-               	je	0x436585 <_mi_arena_alloc_aligned+0xe5>
-               	movq	%r12, %rsi
+               	cmpb	$0, (%r12)
+               	je	0x436f66 <_mi_arena_alloc_aligned+0xe6>
+               	movq	%r15, %rsi
@@@@
-               	movq	%r15, %r8
+               	movq	%r12, %r8
@@@@
-               	pushq	%r13
-               	callq	0x4367a0 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x437180 <mi_arena_alloc_from>
@@@@
-               	jne	0x436655 <_mi_arena_alloc_aligned+0x1b5>
-               	addq	$1, %r12
+               	jne	0x43703f <_mi_arena_alloc_aligned+0x1bf>
+               	addq	$1, %r15
@@@@
-               	cmpq	$64, %r12
-               	je	0x43658d <_mi_arena_alloc_aligned+0xed>
+               	cmpq	$64, %r15
+               	je	0x436f6e <_mi_arena_alloc_aligned+0xee>
@@@@
-               	js	0x436530 <_mi_arena_alloc_aligned+0x90>
-               	cmpl	%r14d, %eax
-               	jne	0x436560 <_mi_arena_alloc_aligned+0xc0>
-               	jmp	0x436530 <_mi_arena_alloc_aligned+0x90>
+               	js	0x436f10 <_mi_arena_alloc_aligned+0x90>
+               	cmpl	%r13d, %eax
+               	jne	0x436f41 <_mi_arena_alloc_aligned+0xc1>
+               	jmp	0x436f10 <_mi_arena_alloc_aligned+0x90>
@@@@
-               	movq	24(%rsp), %r12
-               	jmp	0x4365e4 <_mi_arena_alloc_aligned+0x144>
+               	movq	24(%rsp), %r15
+               	jmp	0x436fc8 <_mi_arena_alloc_aligned+0x148>
@@@@
-               	nop
@@@@
-               	movq	%r15, %r8
-               	movq	%r12, %r9
+               	movq	%r12, %r8
+               	movq	%r15, %r9
@@@@
-               	pushq	%r13
-               	callq	0x4367a0 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x437180 <mi_arena_alloc_from>
@@@@
-               	js	0x4365d6 <_mi_arena_alloc_aligned+0x136>
-               	cmpl	%r14d, %eax
-               	je	0x4365d6 <_mi_arena_alloc_aligned+0x136>
-               	cmpb	$0, (%r15)
-               	jne	0x4365b0 <_mi_arena_alloc_aligned+0x110>
+               	js	0x436fba <_mi_arena_alloc_aligned+0x13a>
+               	cmpl	%r13d, %eax
+               	je	0x436fba <_mi_arena_alloc_aligned+0x13a>
+               	cmpb	$0, (%r12)
+               	jne	0x436f90 <_mi_arena_alloc_aligned+0x110>
@@@@
-               	jmp	0x436655 <_mi_arena_alloc_aligned+0x1b5>
-               	movb	$1, (%r13)
+               	jmp	0x43703f <_mi_arena_alloc_aligned+0x1bf>
+               	movb	$1, (%r14)
@@@@
+               	xorl	%esi, %esi
@@@@
-               	movzbl	(%rax), %esi
+               	cmpb	$0, (%rax)
+               	setne	%sil
@@@@
-               	movq	%r15, %rdx
-               	callq	0x42cee0 <_mi_os_alloc_aligned>
+               	movq	%r12, %rdx
+               	callq	0x42d6c0 <_mi_os_alloc_aligned>
@@@@
-               	je	0x436620 <_mi_arena_alloc_aligned+0x180>
-               	movb	(%r15), %cl
-               	movb	%cl, (%r12)
+               	je	0x437005 <_mi_arena_alloc_aligned+0x185>
+               	movb	(%r12), %cl
+               	movb	%cl, (%r15)

@@ -36095,10 +36658,10 @@
@@@[(3, 11)]@@@
-               	callq	0x4362c0 <_mi_os_numa_node_get>
-               	movl	%eax, %r14d
-               	jmp	0x436515 <_mi_arena_alloc_aligned+0x75>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x436cb0 <_mi_os_numa_node_get>
+               	movl	%eax, %r13d
+               	jmp	0x436ef5 <_mi_arena_alloc_aligned+0x75>
+               	nopl	(%rax,%rax)

@@ -36982,60 +37545,62 @@
@@@[(19, 22), (24, 28), (42, 46), (48, 54), (56, 62), (66, 69), (71, 73), (79, 83)]@@@
-               	movzbl	(%r8), %r11d
+               	movb	(%r8), %cl
+               	movzbl	%cl, %r11d
@@@@
-               	testq	%r11, %r11
-               	jne	0x437399 <_mi_usable_size+0x109>
+               	testb	%r11b, %r11b
+               	jne	0x437d7e <_mi_usable_size+0x10e>
@@@@
-               	jmp	0x437388 <_mi_usable_size+0xf8>
-               	movb	96(%rax), %cl
+               	jmp	0x437d6d <_mi_usable_size+0xfd>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r8), %ecx
-               	testq	%rcx, %rcx
-               	je	0x437350 <_mi_usable_size+0xc0>
+               	movb	(%r8), %cl
+               	testb	%cl, %cl
+               	je	0x437d32 <_mi_usable_size+0xc2>
@@@@
-               	movq	80(%rax), %r9
-               	movq	%rdx, %r8
-               	subq	%r9, %r8
+               	movq	80(%rax), %r8
+               	movq	%rdx, %r9
+               	subq	%r8, %r9
@@@@
-               	je	0x43737d <_mi_usable_size+0xed>
+               	je	0x437d62 <_mi_usable_size+0xf2>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r9, %rax
+               	addq	%r8, %rax
@@@@
-               	jmp	0x4373d2 <_mi_usable_size+0x142>
-               	movq	%r8, %rax
+               	jmp	0x437db7 <_mi_usable_size+0x147>
+               	movq	%r9, %rax

@@ -37072,37 +37637,37 @@
@@@[(3, 7), (14, 18)]@@@
-               	subq	%rcx, %r8
-               	movq	%r8, %rax
+               	subq	%rcx, %r9
+               	movq	%r9, %rax
@@@@
-               	jmp	0x43740b <_mi_usable_size+0x17b>
-               	movb	96(%r8), %cl
+               	jmp	0x437df0 <_mi_usable_size+0x180>
+               	movq	96(%r8), %rcx

@@ -37117,26 +37682,26 @@
@@@[(20, 24)]@@@
-               	jmp	0x43749c <_mi_usable_size+0x20c>
-               	movb	96(%r8), %cl
+               	jmp	0x437e81 <_mi_usable_size+0x211>
+               	movq	96(%r8), %rcx

@@ -37171,7 +37736,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -37179,34 +37744,36 @@
@@@[(10, 16), (25, 27)]@@@
-               	je	0x437588 <_mi_heap_malloc_zero+0x88>
-               	addl	$1, 16(%rax)
+               	je	0x437f7e <_mi_heap_malloc_zero+0x8e>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)
@@@@
-               	movb	96(%rax), %cl
+               	movq	96(%rax), %rcx

@@ -37217,12 +37784,11 @@
@@@[(7, 12)]@@@
-               	jne	0x437536 <_mi_heap_malloc_zero+0x36>
-               	jmp	0x43757d <_mi_heap_malloc_zero+0x7d>
-               	nopw	(%rax,%rax)
+               	jne	0x437f2b <_mi_heap_malloc_zero+0x3b>
+               	jmp	0x437f73 <_mi_heap_malloc_zero+0x83>

@@ -37422,9 +37988,9 @@
@@@[(3, 6), (7, 8)]@@@
-               	callq	0x438160 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
-               	movq	8(%rsp), %rbx
+               	callq	0x438b60 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
@@@@
+               	movq	8(%rsp), %rbx

@@ -37963,21 +38529,24 @@
@@@[(3, 5), (6, 11), (12, 16), (26, 30)]@@@
+               	movq	%rdi, %rax
+               	movq	8(%rdi), %rdi
@@@@
-               	je	0x438150 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x438b4a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
+               	movl	16(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x438150 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x438b4a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
@@@@
-               	jmp	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	(%rax,%rax)

@@ -37986,78 +38555,222 @@
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
-               	je	0x438199 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x39>
-               	xchgl	%r14d, 328(%r12)
-               	jmp	0x43819c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c>
-               	xorl	%r12d, %r12d
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x438bb8 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x58>
+               	movl	$1, %ecx
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 48(%rsp)
+               	movl	%ecx, 56(%rsp)
+               	movb	$1, 60(%rsp)
@@@@
-               	leaq	317(%rip), %rdi         # 0x4382f0 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
-               	leaq	16(%rsp), %rsi
+               	movq	$0, 32(%rsp)
+               	leaq	920(%rip), %rdi         # 0x438f70 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
+               	leaq	32(%rsp), %rsi
@@@@
-               	movq	16(%rsp), %rbx
-               	cmpq	$4, %rbx
-               	jbe	0x43825c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0xfc>
-               	addq	$-4, %rbx
-               	movq	%rbx, %rax
-               	shrq	$61, %rax
-               	jne	0x4382bb <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x15b>
+               	movq	32(%rsp), %r12
+               	cmpq	$4, %r12
+               	jbe	0x438c8a <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x12a>
+               	addq	$-4, %r12
+               	movq	8(%rsp), %r15
+               	movq	(%rsp), %rbx
+               	movq	%r15, %rdx
+               	subq	%rbx, %rdx
+               	movq	%rdx, %r14
+               	sarq	$3, %r14
+               	movq	%r12, %rbp
+               	subq	%r14, %rbp
+               	jbe	0x438cb1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x151>
+               	je	0x438e9c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	16(%rsp), %rax
+               	subq	%r15, %rax
+               	sarq	$3, %rax
+               	cmpq	%rbp, %rax
+               	jae	0x438cd1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x171>
+               	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
+               	movq	%r14, %rcx
+               	xorq	%rax, %rcx
+               	cmpq	%rbp, %rcx
+               	jb	0x438f36 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3d6>
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
+               	je	0x438cf1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x191>
@@@@
-               	movq	%rbx, %rdi
@@@@
-               	leaq	(,%rbx,8), %rbp
-               	movq	%rax, %rdi
+               	jmp	0x438cf4 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x194>
+               	xorps	%xmm0, %xmm0
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	movq	(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x438ef2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	callq	0x413710 <free@plt>
+               	jmp	0x438ef2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	jae	0x438e9c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	(%rbx,%r12,8), %rax
+               	cmpq	%r15, %rax
+               	je	0x438e9c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	%rax, 8(%rsp)
+               	movq	%rax, %r15
+               	jmp	0x438e9c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	8(%rsp), %rbx
+               	leaq	(,%rbp,8), %rdx
+               	movq	%r15, %rdi
+               	xorl	%esi, %esi
+               	callq	0x413750 <memset@plt>
+               	leaq	(%r15,%rbp,8), %rax
+               	jmp	0x438e90 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x330>
+               	xorl	%r13d, %r13d
+               	leaq	(,%r14,8), %rdi
+               	addq	%r13, %rdi
+               	shlq	$3, %rbp
@@@@
+               	cmpq	%r15, %rbx
+               	je	0x438e55 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
+               	movq	64(%rsp), %rdi
+               	addq	$-8, %rdi
+               	movq	%r13, %rcx
+               	cmpq	$24, %rdi
+               	jb	0x438e32 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	shrq	$3, %rdi
+               	addq	$1, %rdi
+               	leaq	(%rbx,%rdi,8), %rax
+               	cmpq	%rax, %r13
+               	jae	0x438d54 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x1f4>
+               	leaq	(,%rdi,8), %rax
+               	addq	%r13, %rax
+               	movq	%r13, %rcx
+               	cmpq	%rbx, %rax
+               	ja	0x438e32 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	movq	%rdi, %rax
+               	andq	$-4, %rax
+               	leaq	-4(%rax), %rsi
+               	movq	%rsi, %rdx
+               	shrq	$2, %rdx
+               	addq	$1, %rdx
+               	movl	%edx, %ecx
+               	andl	$3, %ecx
+               	cmpq	$12, %rsi
+               	jae	0x438d79 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x219>
+               	xorl	%esi, %esi
+               	jmp	0x438de3 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x283>
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
+               	jne	0x438d82 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x222>
+               	testq	%rcx, %rcx
+               	je	0x438e1e <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2be>
+               	leaq	16(,%rsi,8), %rdx
+               	negq	%rcx
+               	nopw	(%rax,%rax)
+               	movups	-16(%rbx,%rdx), %xmm0
+               	movups	(%rbx,%rdx), %xmm1
+               	movups	%xmm0, -16(%r13,%rdx)
+               	movups	%xmm1, (%r13,%rdx)
+               	addq	$32, %rdx
+               	incq	%rcx
+               	jne	0x438e00 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2a0>
+               	cmpq	%rax, %rdi
+               	je	0x438e55 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
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
+               	jne	0x438e40 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2e0>
+               	movq	(%rsp), %rbx
+               	testq	%rbx, %rbx
+               	je	0x438e62 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x302>
+               	movq	%rbx, %rdi
+               	callq	0x413710 <free@plt>
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
-               	leaq	195(%rip), %rdi         # 0x438300 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
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
+               	leaq	186(%rip), %rdi         # 0x438f80 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
+               	leaq	88(%rsp), %rsi
@@@@
-               	movups	%xmm0, (%r15)
+               	movups	%xmm0, (%r13)
@@@@
-               	movq	%rbx, 16(%r15)
-               	jmp	0x438279 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	xorps	%xmm0, %xmm0
-               	movups	%xmm0, (%r15)
-               	movq	$0, 16(%r15)
-               	movq	(%rsp), %rdi
+               	movq	16(%rsp), %rax
+               	movq	%rax, 16(%r13)
+               	movq	$0, 16(%rsp)
+               	movq	48(%rsp), %rdi
@@@@
-               	je	0x438279 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	callq	0x413730 <free@plt>
-               	testq	%r12, %r12
-               	je	0x4382ac <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	movl	%r14d, %eax
-               	xchgl	%eax, 328(%r12)
-               	testl	%r14d, %r14d
-               	jne	0x4382ac <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
+               	je	0x438f27 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	movl	56(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, 328(%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x438f27 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
@@@@
-               	je	0x4382ac <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	addq	$328, %r12              # imm = 0x148
-               	movq	%r12, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$56, %rsp
+               	je	0x438f27 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$120, %rsp

@@ -38065,46 +38778,45 @@
@@@[(3, 10), (11, 21), (22, 26), (28, 32), (34, 36), (49, 55), (57, 59), (60, 62)]@@@
-               	leaq	65238(%rip), %rdi       # 0x448198 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
-               	callq	0x4380b0 <std::__throw_length_error(char const*)>
-               	movq	%rax, %rbx
-               	jmp	0x4382d2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x172>
+               	leaq	65883(%rip), %rdi       # 0x449098 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
+               	callq	0x438aa0 <std::__throw_length_error(char const*)>
+               	jmp	0x438f44 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3e4>
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r13, %rdi
-               	callq	0x438340 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
-               	movq	%r12, %rdi
-               	movl	%r14d, %esi
-               	callq	0x438130 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x438fc0 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
+               	leaq	40(%rsp), %rdi
+               	callq	0x438b20 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x4252b0 <__clang_call_terminate>
-               	nopl	(%rax)
+               	callq	0x4258c0 <__clang_call_terminate>
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
-               	jae	0x438315 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
+               	movq	24(%rbx), %rax
+               	cmpq	%rax, (%rbx)
+               	jae	0x438f95 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
@@@@
+               	leaq	1(%rcx), %rdx
+               	movq	%rdx, (%rbx)
@@@@
-               	leaq	1(%rcx), %rsi
-               	movq	%rsi, (%rbx)

@@ -38112,11 +38824,12 @@
@@@[(3, 4), (10, 12)]@@@
+               	movq	(%rdi), %rdi
@@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -38229,41 +38942,43 @@
@@@[(13, 23)]@@@
-               	jae	0x438540 <CreateStringFromCString+0x1f0>
-               	addq	$1, (%rsp)
-               	jmp	0x438570 <CreateStringFromCString+0x220>
-               	nopw	(%rax,%rax)
+               	jae	0x4391c0 <CreateStringFromCString+0x1f0>
+               	movq	(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rsp)
+               	jmp	0x4391f0 <CreateStringFromCString+0x220>
+               	nopl	(%rax)

@@ -38279,12 +38994,13 @@
@@@[(3, 6)]@@@
-               	movzbl	(%r8), %ecx
+               	movb	(%r8), %al
+               	movzbl	%al, %ecx

@@ -38293,45 +39009,47 @@
@@@[(12, 16), (20, 23), (25, 29), (47, 55), (56, 61)]@@@
-               	je	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	jne	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
@@@@
-               	andl	$63, %esi
-               	orl	%esi, %ecx
+               	andl	$63, %eax
+               	orl	%eax, %ecx
@@@@
-               	je	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %r10d
-               	movl	%r10d, %r9d
-               	andb	$-64, %r9b
+               	je	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %r9b
+               	movl	%r9d, %r10d
+               	andb	$-64, %r10b
@@@@
-               	cmpb	$-128, %r9b
-               	jne	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	cmpb	$-128, %r10b
+               	jne	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%r9b, %r10d

@@ -38341,41 +39059,43 @@
@@@[(13, 17), (21, 28), (43, 49), (51, 54)]@@@
-               	je	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %esi
-               	orl	%esi, %r10d
+               	jne	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
+               	andl	$63, %eax
+               	orl	%eax, %r10d
@@@@
-               	je	0x4387c8 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r10d
-               	movl	%r10d, %eax
+               	je	0x43945b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %r9b
+               	movl	%r9d, %eax
@@@@
-               	jne	0x4387d1 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x211>
+               	jne	0x439464 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x224>
+               	movzbl	%r9b, %r10d

@@ -38383,45 +39103,47 @@
@@@[(14, 20), (28, 36), (37, 49), (50, 54), (60, 62)]@@@
-               	je	0x4387c8 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r11d
-               	movl	%r11d, %eax
+               	je	0x43945b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %cl
+               	movl	%ecx, %eax
@@@@
-               	je	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %ecx
-               	movl	%ecx, %esi
-               	andb	$-64, %sil
+               	je	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
+               	movl	%esi, %r11d
+               	andb	$-64, %r11b
@@@@
-               	cmpb	$-128, %sil
-               	jne	0x43876f <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %r11d
-               	shll	$6, %r11d
-               	orl	%r10d, %r11d
+               	cmpb	$-128, %r11b
+               	jne	0x439401 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%cl, %eax
+               	andl	$63, %eax
+               	shll	$6, %eax
+               	orl	%r10d, %eax
+               	movzbl	%sil, %ecx
@@@@
-               	orl	%r11d, %ecx
-               	jmp	0x4385d7 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x17>
+               	orl	%eax, %ecx
+               	jmp	0x439259 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x19>
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -38434,61 +39156,61 @@
@@@[(3, 6), (8, 9), (21, 22), (24, 25), (44, 45), (47, 48), (58, 59), (61, 62)]@@@
-               	ja	0x438817 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
-               	movq	(%rbx), %rax
+               	ja	0x4394a7 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
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

@@ -38497,25 +39219,25 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -38531,19 +39253,19 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -38552,41 +39274,41 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -38599,21 +39321,21 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rdi), %r14
@@@@
+               	movq	(%rdi), %r14

@@ -38679,9 +39401,9 @@
@@@[(3, 9)]@@@
-               	movl	8(%rsi), %ebp
-               	addl	8(%rdi), %ebp
-               	js	0x438c10 <Kotlin_String_plusImpl+0xc0>
+               	movl	8(%rdi), %ebp
+               	addl	8(%rsi), %ebp
+               	js	0x4398a0 <Kotlin_String_plusImpl+0xc0>

@@ -38882,46 +39604,45 @@
@@@[(39, 48), (60, 62)]@@@
-               	jg	0x438f7b <Kotlin_String_hashCode+0x11b>
-               	callq	0x439050 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
-               	jmp	0x438fa8 <Kotlin_String_hashCode+0x148>
-               	movq	%r14, %rax
-               	addq	$-1, %rax
+               	jg	0x439c0b <Kotlin_String_hashCode+0x11b>
+               	callq	0x439ce0 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
+               	jmp	0x439c38 <Kotlin_String_hashCode+0x148>
+               	leaq	-1(%r14), %rax
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -39579,39 +40300,38 @@
@@@[(18, 32), (35, 40)]@@@
-               	je	0x439add <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x439a90 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x190>
-               	movq	%rsi, %rax
+               	je	0x43a76d <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43a720 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x190>
@@@@
-               	je	0x439a9b <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x19b>
-               	jmp	0x439add <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>
-               	nopl	(%rax)
+               	je	0x43a72b <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x19b>
+               	jmp	0x43a76d <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>

@@ -39846,54 +40566,55 @@
@@@[(35, 40), (57, 59), (61, 62), (63, 66)]@@@
-               	addq	$40, 56(%r13)
-               	jmp	0x439f6b <Worker::putJob((anonymous namespace)::Job, bool)+0x12b>
+               	movq	56(%r13), %rax
+               	addq	$40, %rax
+               	jmp	0x43abfa <Worker::putJob((anonymous namespace)::Job, bool)+0x12a>
@@@@
+               	movq	32(%rbx), %rcx
+               	movq	%rcx, 32(%rax)
@@@@
-               	movups	%xmm0, (%rax)
@@@@
-               	movq	32(%rbx), %rcx
-               	movq	%rcx, 32(%rax)
+               	movups	%xmm0, (%rax)

@@ -39952,8 +40673,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax,%rax)
+               	jmp	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop

@@ -39963,72 +40684,73 @@
@@@[(3, 5), (6, 11), (13, 32), (33, 37), (38, 53), (58, 61), (62, 65), (66, 72), (74, 85), (89, 91), (92, 93), (95, 101), (102, 112), (113, 115)]@@@
-               	movq	%rdi, %r14
+               	movq	%rdi, %rbx
@@@@
-               	movq	8(%rdi), %rbx
-               	movq	40(%rdi), %rsi
-               	subq	%rsi, %r15
+               	movq	40(%rdi), %r12
+               	subq	%r12, %r15
@@@@
-               	leaq	2(%rbp), %r12
-               	leaq	4(,%rbp), %rax
-               	addq	%rbp, %rax
-               	cmpq	%rax, %rbx
-               	jbe	0x43a069 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0x59>
-               	subq	%r12, %rbx
-               	shlq	$2, %rbx
-               	andq	$-8, %rbx
-               	addq	(%r14), %rbx
+               	leaq	2(%rbp), %r14
+               	movq	8(%rdi), %rax
+               	leaq	4(,%rbp), %rcx
+               	addq	%rbp, %rcx
+               	cmpq	%rcx, %rax
+               	jbe	0x43acf9 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0x59>
+               	movq	(%rbx), %rcx
+               	subq	%r14, %rax
+               	andq	$-2, %rax
+               	leaq	(%rcx,%rax,4), %r14
@@@@
-               	cmpq	%rsi, %rbx
-               	jae	0x43a0c5 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xb5>
+               	cmpq	%r12, %r14
+               	jae	0x43ad55 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xb5>
@@@@
-               	je	0x43a0dd <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xcd>
-               	movq	%rbx, %rdi
-               	jmp	0x43a0d5 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xc5>
-               	movq	%rsi, (%rsp)
-               	testq	%rbx, %rbx
-               	movl	$1, %eax
-               	cmovneq	%rbx, %rax
-               	leaq	(%rbx,%rax), %r13
+               	je	0x43ad70 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xd0>
+               	movq	%r14, %rdi
+               	jmp	0x43ad65 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xc5>
+               	testq	%rax, %rax
+               	movl	$1, %ecx
+               	cmovneq	%rax, %rcx
+               	leaq	(%rax,%rcx), %r13
@@@@
-               	subq	%r12, %rcx
-               	movq	%rax, %r12
+               	subq	%r14, %rcx
@@@@
-               	leaq	(%rax,%rcx,4), %rbx
+               	movq	%rax, (%rsp)
+               	leaq	(%rax,%rcx,4), %r14
@@@@
-               	je	0x43a0b4 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xa4>
-               	movq	%rbx, %rdi
-               	movq	(%rsp), %rsi
+               	je	0x43ad40 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xa0>
+               	movq	%r14, %rdi
+               	movq	%r12, %rsi
@@@@
-               	movq	(%r14), %rdi
-               	callq	0x413730 <free@plt>
-               	movq	%r12, (%r14)
-               	movq	%r13, 8(%r14)
-               	jmp	0x43a0dd <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xcd>
+               	movq	(%rbx), %rdi
+               	callq	0x413710 <free@plt>
+               	movq	(%rsp), %rax
+               	movq	%rax, (%rbx)
+               	movq	%r13, 8(%rbx)
+               	jmp	0x43ad70 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xd0>
@@@@
-               	leaq	(%rbx,%rax,8), %rdi
+               	leaq	(%r14,%rax,8), %rdi
@@@@
+               	movq	%r12, %rsi
@@@@
-               	movq	%rbx, 40(%r14)
-               	movq	(%rbx), %rax
-               	movq	%rax, 24(%r14)
+               	movq	%r14, 40(%rbx)
+               	movq	(%r14), %rax
+               	movq	%rax, 24(%rbx)
@@@@
-               	movq	%rax, 32(%r14)
-               	leaq	(%rbx,%rbp,8), %rax
-               	movq	%rax, 72(%r14)
-               	movq	(%rbx,%rbp,8), %rax
-               	movq	%rax, 56(%r14)
+               	movq	%rax, 32(%rbx)
+               	leaq	(%r14,%rbp,8), %rax
+               	movq	%rax, 72(%rbx)
+               	movq	(%r14,%rbp,8), %rax
+               	movq	%rax, 56(%rbx)
@@@@
-               	movq	%rax, 64(%r14)
+               	movq	%rax, 64(%rbx)

@@ -40037,7 +40759,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -40233,40 +40955,40 @@
@@@[(7, 11), (21, 22), (23, 24)]@@@
-               	je	0x43a534 <Kotlin_initRuntimeIfNeeded+0x414>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x43b1b4 <Kotlin_initRuntimeIfNeeded+0x404>
+               	nop
@@@@
-               	movq	72(%rbx), %rax
@@@@
+               	movq	72(%rbx), %rax

@@ -40278,28 +41000,24 @@
@@@[(17, 23)]@@@
-               	jmp	0x43a6c1 <Kotlin_initRuntimeIfNeeded+0x5a1>
-               	movq	%r13, 177989(%rip)      # 0x465d30 <kotlin::mm::GlobalData::instance_+0x18>
-               	cmpq	$0, 170437(%rip)        # 0x463fb8 <write+0x463fb8>
-               	jne	0x43a462 <Kotlin_initRuntimeIfNeeded+0x342>
-               	jmp	0x43a46e <Kotlin_initRuntimeIfNeeded+0x34e>
+               	jmp	0x43b321 <Kotlin_initRuntimeIfNeeded+0x571>

@@ -40309,34 +41027,34 @@
@@@[(24, 26)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -40533,328 +41251,334 @@
@@@[(30, 34), (35, 39), (40, 44), (45, 47), (49, 53), (70, 84), (87, 89), (99, 101), (110, 117), (119, 133), (136, 143), (146, 156), (168, 175), (177, 180), (183, 198), (200, 203), (224, 226), (227, 229), (231, 235), (238, 246), (251, 253), (254, 258), (259, 263), (264, 268), (269, 271), (280, 288), (289, 291), (292, 296), (297, 298), (299, 307), (310, 334), (336, 342), (351, 357), (361, 363), (364, 372), (385, 396), (402, 410), (414, 416), (417, 429), (435, 441), (467, 471), (473, 477)]@@@
-               	movslq	(%rbx), %rax
-               	movq	%rax, 16(%rsp)
+               	movl	(%rbx), %eax
+               	movl	%eax, 12(%rsp)
@@@@
-               	callq	0x439b40 <(anonymous namespace)::theState()>
-               	movq	%rax, %r15
+               	callq	0x43a7d0 <(anonymous namespace)::theState()>
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
-               	je	0x43aa67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe7>
+               	testq	%r15, %r15
+               	je	0x43b6c5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe5>
@@@@
-               	movslq	(%rax), %rsi
-               	movq	152(%r15), %rcx
-               	movq	%rsi, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x43aaa1 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x121>
-               	movq	%rsi, %rax
+               	movl	(%rax), %esi
+               	movslq	%esi, %rax
+               	movq	152(%r13), %rcx
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43b6fe <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x11e>
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	jne	0x43ab2c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x1ac>
-               	jmp	0x43abdf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movq	%rdi, %rbx
+               	jne	0x43b77c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19c>
+               	jmp	0x43b843 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	nopl	(%rax)
+               	movq	%rdi, %rbp
@@@@
-               	je	0x43abdf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movslq	8(%rdi), %rbp
-               	movq	%rbp, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x43ab10 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x190>
-               	movq	%rbp, %rax
+               	je	0x43b843 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	8(%rdi), %ebx
+               	movslq	%ebx, %rax
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43b760 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x180>
@@@@
-               	je	0x43ab1f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19f>
-               	jmp	0x43abdf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	nopl	(%rax)
-               	movl	%ebp, %eax
+               	je	0x43b76f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x18f>
+               	jmp	0x43b843 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	%ebx, %eax
@@@@
-               	jne	0x43abdf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	cmpl	%ebp, %esi
-               	jne	0x43aad0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
-               	testq	%rbx, %rbx
-               	je	0x43abdf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
+               	jne	0x43b843 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	cmpl	%ebx, %esi
+               	jne	0x43b730 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
+               	testq	%rbp, %rbp
+               	je	0x43b843 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
@@@@
-               	je	0x43abcc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43b826 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43ab8c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20c>
+               	je	0x43b7e6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x206>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43ab95 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
-               	jmp	0x43abcc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x43abb3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x233>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43b7ef <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20f>
+               	jmp	0x43b826 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movq	(%rdi), %rbx
+               	testq	%rbx, %rbx
+               	je	0x43b80d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x22d>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43ab9b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x21b>
+               	je	0x43b7f5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
+               	movq	%rbp, %rax
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	%r15, %rax
+               	movq	%r13, %rax
@@@@
-               	jne	0x43abc4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x244>
-               	movq	%rbp, (%r10)
+               	jne	0x43b81e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x23e>
+               	movq	%rbx, (%r10)
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 168(%r15)
-               	testq	%r13, %r13
+               	callq	0x413710 <free@plt>
+               	movq	168(%r13), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 168(%r13)
+               	testq	%r15, %r15
@@@@
-               	movq	%r15, %rdi
+               	movq	%r13, %rdi
@@@@
-               	jmp	0x43ac1c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x29c>
-               	movq	-64(%r12), %r13
+               	jmp	0x43b880 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2a0>
+               	movq	-64(%r12), %r15
@@@@
-               	xchgl	%ebx, 328(%r13)
-               	movq	%r15, %rdi
+               	xchgl	%ebx, 328(%r15)
+               	movq	%r13, %rdi
@@@@
-               	testq	%r13, %r13
-               	je	0x43ac47 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
+               	testq	%r15, %r15
+               	je	0x43b8ab <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
@@@@
-               	xchgl	%eax, 328(%r13)
+               	xchgl	%eax, 328(%r15)
@@@@
-               	je	0x43ac47 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
-               	addq	$328, %r13              # imm = 0x148
-               	movq	%r13, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43b8ab <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
+               	addq	$328, %r15              # imm = 0x148
+               	movq	%r15, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	24(%rax), %rbx
+               	movq	24(%rax), %rbp
@@@@
-               	cmpq	%rbx, %r13
-               	je	0x43ad45 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	cmpq	%rbp, %r13
+               	je	0x43b9a5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	40(%rax), %r14
@@@@
-               	leaq	46737(%rip), %rbp       # 0x446300 <_IO_stdin_used+0x240>
-               	jmp	0x43aca5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	movq	40(%rax), %r14
+               	leaq	47405(%rip), %rbx       # 0x447200 <_IO_stdin_used+0x240>
+               	jmp	0x43b905 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x43b290 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	addq	$40, %rbx
-               	cmpq	%r14, %rbx
-               	je	0x43ad00 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
-               	cmpq	%rbx, %r13
-               	je	0x43ad45 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
-               	movl	(%rbx), %ecx
-               	cmpq	$3, %rcx
-               	ja	0x43ac93 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
-               	movq	8(%rbx), %rax
-               	movslq	(%rbp,%rcx,4), %rcx
-               	addq	%rbp, %rcx
+               	callq	0x43bf30 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	addq	$40, %rbp
+               	cmpq	%r14, %rbp
+               	je	0x43b960 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
+               	cmpq	%rbp, %r13
+               	je	0x43b9a5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	movl	(%rbp), %ecx
+               	cmpl	$3, %ecx
+               	ja	0x43b8f3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
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
-               	callq	0x43b290 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	movq	%r15, %rbp
+               	movq	%rbx, %rdi
+               	callq	0x43bf30 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	movq	%r15, %rbx
@@@@
-               	movq	8(%r12), %rbx
+               	movq	8(%r12), %rbp
@@@@
-               	leaq	480(%rbx), %r14
-               	cmpq	%rbx, %r13
-               	jne	0x43aca5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	jmp	0x43ad45 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	leaq	480(%rbp), %r14
+               	cmpq	%rbp, %r13
+               	jne	0x43b905 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	jmp	0x43b9a5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	112(%r14), %rbp
-               	leaq	96(%r14), %rbx
-               	cmpq	%rbx, %rbp
-               	movq	8(%rsp), %r13
-               	jne	0x43af54 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5d4>
+               	movq	112(%r14), %rbx
+               	leaq	96(%r14), %rbp
+               	cmpq	%rbp, %rbx
+               	movl	12(%rsp), %r13d
+               	movq	16(%rsp), %r15
+               	jne	0x43bbc4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5e4>
@@@@
-               	callq	0x426700 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
-               	movq	248(%r14), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	callq	0x426d10 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
+               	movq	248(%r14), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
+               	testq	%rbx, %rbx
@@@@
-               	je	0x43add6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x43add6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
+               	je	0x43ba3a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x43ba3a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
@@@@
-               	je	0x43add6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	movq	%rbp, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43ba3a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	movq	%rbx, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	callq	0x413730 <free@plt>
-               	movq	(%r13), %rax
+               	callq	0x413710 <free@plt>
+               	movq	(%r15), %rax
@@@@
-               	movq	(%r13), %rbx
-               	movl	280160(%rip), %edi      # 0x47f49c <konan::terminationKey>
+               	movq	(%r15), %rbx
+               	movl	278898(%rip), %edi      # 0x47fc1c <konan::terminationKey>

@@ -40863,200 +41587,217 @@
@@@[(23, 24), (35, 53), (73, 82), (95, 102), (103, 109), (113, 116), (118, 122), (124, 126), (127, 129), (130, 136), (138, 140), (141, 143), (147, 151), (152, 157), (160, 174), (176, 183), (186, 194), (200, 212), (223, 224), (235, 242), (244, 247), (256, 263), (265, 268), (301, 307)]@@@
+               	movq	16(%rsp), %r15
@@@@
-               	callq	0x413730 <free@plt>
-               	jmp	0x43afd7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x657>
-               	nopl	(%rax,%rax)
-               	movq	%rbp, %rdi
-               	callq	0x43f9c1 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
-               	movq	%rax, %rbp
-               	cmpq	%rbx, %rax
-               	je	0x43ad5f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3df>
-               	movq	40(%rbp), %rsi
+               	callq	0x413710 <free@plt>
+               	jmp	0x43bc63 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x683>
+               	nop
+               	movq	%rbx, %rdi
+               	callq	0x440891 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
+               	movq	%rax, %rbx
+               	cmpq	%rbp, %rax
+               	je	0x43b9c4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3e4>
+               	movq	40(%rbx), %rsi
@@@@
-               	je	0x43afc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x647>
+               	je	0x43bc53 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x673>
+               	movq	352(%rbx), %rbp
+               	testq	%rbp, %rbp
+               	je	0x43bc30 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x650>
+               	movq	%rbp, %rdi
+               	callq	0x426770 <void std::allocator_traits<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node> >::_S_destroy<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>(kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>&, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node*, ...)>
+               	movq	%rbp, %rdi
+               	callq	0x413710 <free@plt>
@@@@
-               	cmpq	$0, 167897(%rip)        # 0x463fb8 <write+0x463fb8>
-               	je	0x43afed <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x66d>
-               	leaq	175448(%rip), %rdi      # 0x465d40 <kotlin::mm::GlobalData::instance_+0x28>
+               	movslq	%r13d, %rbp
+               	cmpq	$0, 164682(%rip)        # 0x463fb8 <write+0x463fb8>
+               	je	0x43bc7c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x69c>
+               	leaq	174161(%rip), %rdi      # 0x4664c8 <kotlin::mm::GlobalData::instance_+0x28>
@@@@
-               	movq	%r13, %rdi
-               	callq	0x413730 <free@plt>
-               	callq	0x439b40 <(anonymous namespace)::theState()>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	callq	0x43a7d0 <(anonymous namespace)::theState()>
@@@@
-               	movq	16(%rsp), %rcx
-               	movq	%rcx, %rax
+               	movq	%rbp, %rax
@@@@
-               	je	0x43b03d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6bd>
-               	movq	%rcx, %rax
+               	je	0x43bcc7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6e7>
+               	movq	%rbp, %rax
@@@@
-               	movq	%rdx, %r8
+               	movq	%rdx, %rcx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	jne	0x43b05a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6da>
-               	jmp	0x43b1c2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movl	%ecx, %eax
+               	jne	0x43bce4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x704>
+               	jmp	0x43be67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %r8d
+               	movl	%edx, %ecx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	cmpl	%ecx, 8(%rbx)
-               	jne	0x43b070 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpl	%r13d, 8(%rbx)
+               	jne	0x43bd00 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	jne	0x43b0cc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x74c>
-               	jmp	0x43b1c2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
+               	jne	0x43bd4d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x76d>
+               	jmp	0x43be67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	nop
@@@@
-               	je	0x43b1c2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43b0b0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x730>
-               	movq	%rsi, %rax
+               	je	0x43be67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43bd30 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x750>
@@@@
-               	cmpq	%r8, %rdx
-               	je	0x43b0bf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x73f>
-               	jmp	0x43b1c2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	nopl	(%rax)
+               	cmpq	%rcx, %rdx
+               	je	0x43bd3f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x75f>
+               	jmp	0x43be67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
@@@@
-               	cmpq	%r8, %rdx
-               	jne	0x43b1c2 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	cmpl	%ecx, %esi
-               	jne	0x43b070 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpq	%rcx, %rdx
+               	jne	0x43be67 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	cmpl	%r13d, %esi
+               	jne	0x43bd00 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	movslq	8(%rbx), %rax
-               	movq	%rax, %rcx
-               	orq	%rdi, %rcx
-               	shrq	$32, %rcx
-               	je	0x43b0f6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x776>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43bd7c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x79c>
+               	movq	%rcx, %rax
@@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43b1ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x82c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rcx
+               	je	0x43be47 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x867>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rdx
+               	movq	%rdx, %rcx
@@@@
-               	je	0x43b16c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7ec>
+               	je	0x43be07 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x827>
+               	movq	%rdx, %rax
@@@@
-               	je	0x43b193 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x813>
-               	movslq	8(%r10), %rax
-               	movq	%rax, %rdx
+               	je	0x43be2e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x84e>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43b17b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7fb>
+               	je	0x43be16 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x836>
+               	movq	%rbp, %rax
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 224(%r14)
+               	callq	0x413710 <free@plt>
+               	movq	224(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 224(%r14)

@@ -41068,23 +41809,23 @@
@@@[(13, 17)]@@@
-               	callq	0x4252b0 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x4258c0 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -41173,91 +41914,95 @@
@@@[(20, 30), (33, 37), (38, 42), (51, 57), (59, 61), (62, 64), (65, 67), (68, 76), (78, 80), (81, 85), (86, 88), (89, 93), (94, 100), (101, 103), (112, 117), (118, 121)]@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	callq	0x439b40 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%r15)
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	callq	0x43a7d0 <(anonymous namespace)::theState()>
+               	movq	%rax, %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%r15)
@@@@
-               	je	0x43b420 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x190>
-               	movl	%ebx, %eax
+               	je	0x43c0cb <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x19b>
+               	movl	%ebp, %eax
@@@@
-               	testl	%ebx, %ebx
-               	jne	0x43b3de <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
+               	testl	%ebp, %ebp
+               	jne	0x43c07e <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r12)
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x43b463 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1d3>
-               	jmp	0x43b47a <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	callq	0x439b40 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
+               	je	0x43c118 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1e8>
+               	jmp	0x43c12f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
+               	callq	0x43a7d0 <(anonymous namespace)::theState()>
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
-               	je	0x43b4b6 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x226>
-               	addq	$328, %rbx              # imm = 0x148
+               	testq	%r12, %r12
+               	je	0x43c16b <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x23b>
+               	addq	$328, %r12              # imm = 0x148
@@@@
-               	xchgl	%eax, (%rbx)
+               	xchgl	%eax, (%r12)
@@@@
-               	je	0x43b47a <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$40, %r12
+               	je	0x43c12f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
@@@@
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -41266,8 +42011,8 @@
@@@[(3, 7)]@@@
-               	addq	$40, %r12
-               	movq	%r12, %rdi
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -41284,24 +42029,24 @@
@@@[(3, 7)]@@@
-               	jmp	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax,%rax)

@@ -41356,16 +42101,20 @@
@@@[(3, 8), (11, 16), (19, 21)]@@@
-               	leaq	24(%rax), %rbp
+               	movq	16(%r12), %rax
+               	leaq	-4(,%rax,4), %rbp
+               	andq	$-8, %rbp
+               	leaq	(%rbx,%rbp), %r14
@@@@
-               	movq	%rax, 24(%rbx)
-               	movq	%rbp, 48(%r12)
+               	movq	%rax, (%rbx,%rbp)
+               	movq	%r14, 48(%r12)
+               	movq	(%rbx,%rbp), %rax
@@@@
-               	movq	%rbp, 80(%r12)
+               	movq	%r14, 80(%r12)

@@ -41446,38 +42195,39 @@
@@@[(10, 15), (18, 32)]@@@
-               	jne	0x43b9bc <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x48c>
-               	jmp	0x43b7c8 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x298>
+               	jne	0x43c69e <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x4be>
+               	jmp	0x43c488 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x2a8>
+               	nop
@@@@
-               	je	0x43b7c8 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x298>
-               	movslq	8(%r14), %rcx
-               	movq	%rcx, %rax
-               	orq	%rbp, %rax
-               	shrq	$32, %rax
-               	je	0x43b7b0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x280>
-               	movq	%rcx, %rax
+               	je	0x43c488 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x2a8>
+               	movl	8(%r14), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rbp, %rdx
+               	shrq	$32, %rdx
+               	je	0x43c470 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x290>

@@ -41510,56 +42260,58 @@
@@@[(3, 5), (6, 10), (11, 19), (20, 22), (23, 42), (44, 47), (60, 78)]@@@
-               	movq	160(%rax), %rbx
+               	movq	160(%rax), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x43b8e6 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3b6>
+               	testq	%rdi, %rdi
+               	je	0x43c5b6 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3d6>
@@@@
-               	leaq	160(%rax), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x43b898 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x368>
-               	nopl	(%rax)
+               	leaq	160(%rax), %r8
+               	xorl	%ebx, %ebx
+               	jmp	0x43c558 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x378>
+               	nop
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x43b8e6 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3b6>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rdi, %rdi
+               	je	0x43c5b6 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3d6>
+               	movq	%rdi, %rsi
+               	movq	(%rdi), %rdi
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43b8c0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x390>
+               	je	0x43c590 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3b0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x43b880 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x350>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r15,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x43b890 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x360>
-               	movq	%rcx, (%r15,%rdi,8)
-               	jmp	0x43b890 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x360>
+               	jne	0x43c540 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x360>
+               	movq	(%r8), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%r8)
+               	movq	%r8, (%r15,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x43c550 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x370>
+               	movq	%rsi, (%r15,%rbx,8)
+               	jmp	0x43c550 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x370>

@@ -41567,50 +42319,55 @@
@@@[(25, 33), (34, 37), (38, 49), (50, 53), (54, 58), (59, 61), (64, 66), (67, 71)]@@@
-               	jne	0x43b938 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x408>
-               	movq	(%rsp), %rdx
-               	leaq	160(%rdx), %rcx
-               	movq	160(%rdx), %rax
+               	jne	0x43c608 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x428>
+               	movq	(%rsp), %rcx
+               	leaq	160(%rcx), %rsi
+               	movq	160(%rcx), %rax
@@@@
-               	movq	%r14, 160(%rdx)
+               	movq	%r14, 160(%rcx)
+               	movq	(%r14), %rax
@@@@
-               	je	0x43b9ac <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x47c>
-               	movq	152(%rdx), %rsi
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rsi, %rdx
+               	je	0x43c684 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x4a4>
+               	movq	152(%rcx), %rdi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
@@@@
-               	je	0x43b999 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x469>
+               	je	0x43c671 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x491>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rsi
-               	jmp	0x43b99d <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x46d>
+               	divq	%rdi
+               	jmp	0x43c675 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x495>
@@@@
-               	divl	%esi
+               	divl	%edi
@@@@
-               	movq	%rcx, (%r15,%r13,8)
+               	movq	%rsi, (%r15,%r13,8)
@@@@
-               	addq	$1, 168(%r15)
+               	movq	168(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 168(%r15)

@@ -41653,22 +42410,22 @@
@@@[(24, 26)]@@@
-               	nopl	(%rax)
+               	nop

@@ -41839,101 +42596,107 @@
@@@[(44, 45), (48, 57), (67, 72), (73, 78), (103, 105), (128, 140)]@@@
+               	subq	$32, %rsp
@@@@
-               	cmpxchgl	%ebp, 171137(%rip)      # 0x465a34 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43bdba <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1a>
-               	callq	0x43be40 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	cmpxchgl	%ebp, 169725(%rip)      # 0x466194 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43ca9e <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1e>
+               	callq	0x43cb50 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	movq	$0, 16(%rsp)
+               	movl	$1, 24(%rsp)
+               	movb	$0, 28(%rsp)
@@@@
-               	movl	171081(%rip), %edi      # 0x465a30 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 16(%rsp)
+               	movl	%ebp, 24(%rsp)
+               	movb	$1, 28(%rsp)
+               	movl	169633(%rip), %edi      # 0x466190 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x438130 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	leaq	8(%rsp), %rdi
+               	callq	0x438b20 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	nopw	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43be5b <(anonymous namespace)::TerminateHandler::instance()+0xb>
-               	leaq	-996(%rip), %rdi        # 0x43ba90 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
-               	callq	0x43f5da <std::set_terminate(void (*)())>
-               	movq	%rax, 276064(%rip)      # 0x47f4e0 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
-               	leaq	276049(%rip), %rdi      # 0x47f4d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
-               	callq	0x43f590 <__cxa_guard_release>
+               	je	0x43cb6b <(anonymous namespace)::TerminateHandler::instance()+0xb>
+               	leaq	-1044(%rip), %rdi       # 0x43c770 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
+               	callq	0x4404aa <std::set_terminate(void (*)())>
+               	movq	%rax, 274640(%rip)      # 0x47fc60 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
+               	leaq	274625(%rip), %rdi      # 0x47fc58 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	callq	0x440460 <__cxa_guard_release>

@@ -41942,51 +42705,60 @@
@@@[(3, 5), (8, 18), (28, 33), (34, 39), (68, 75)]@@@
+               	subq	$32, %rsp
+               	movq	%rdi, 24(%rsp)
@@@@
-               	cmpxchgl	%ebp, 170897(%rip)      # 0x465a34 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43beaa <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x1a>
-               	callq	0x43bf30 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	cmpxchgl	%ebp, 169432(%rip)      # 0x466194 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43cbc8 <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x28>
+               	leaq	24(%rsp), %rdi
+               	callq	0x43cc70 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	movq	$0, 8(%rsp)
+               	movl	$1, 16(%rsp)
+               	movb	$0, 20(%rsp)
@@@@
-               	movl	170841(%rip), %edi      # 0x465a30 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 8(%rsp)
+               	movl	%ebp, 16(%rsp)
+               	movb	$1, 20(%rsp)
+               	movl	169335(%rip), %edi      # 0x466190 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x438130 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x438b20 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x41b120 <ReportUnhandledException>
-               	callq	0x437890 <konan::abort()>
-               	nopl	(%rax,%rax)
+               	movq	(%rdi), %rdi
+               	callq	0x41b2c0 <ReportUnhandledException>
+               	callq	0x438280 <konan::abort()>
+               	nop

@@ -42143,113 +42915,114 @@
@@@[(36, 38), (39, 43), (44, 54), (117, 120), (124, 125), (126, 134), (135, 143), (144, 145)]@@@
-               	movq	%rax, 96(%rsp)
-               	movabsq	$17179869184, %rax      # imm = 0x400000000
@@@@
+               	leaq	96(%rsp), %rax
+               	movq	%rax, 288(%rdi)
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 112(%rsp)
@@@@
-               	leaq	88(%rsp), %rcx
-               	movq	%rcx, 152(%rsp)
-               	leaq	144(%rsp), %rcx
-               	movq	%rcx, 288(%rdi)
-               	movq	%rax, 160(%rsp)
+               	movq	288(%rdi), %rax
+               	movq	%rax, 152(%rsp)
+               	leaq	144(%rsp), %rax
+               	movq	%rax, 288(%rdi)
+               	movq	%rcx, 160(%rsp)
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	40(%r15), %rcx
@@@@
-               	movl	4(%rax), %edx
-               	movl	%edx, 80(%rsp)
-               	movq	8(%rax), %rdx
-               	movq	%rdx, 64(%rsp)
+               	movl	4(%rax), %ecx
+               	movl	%ecx, 72(%rsp)
+               	movq	8(%rax), %rcx
+               	movq	%rcx, 56(%rsp)
@@@@
-               	movq	24(%rax), %rdx
-               	movq	%rdx, 56(%rsp)
-               	movl	32(%rax), %edx
-               	movl	%edx, 124(%rsp)
+               	movq	24(%rax), %rcx
+               	movq	%rcx, 80(%rsp)
+               	movl	32(%rax), %ecx
+               	movl	%ecx, 88(%rsp)
@@@@
+               	movq	40(%r15), %rcx

@@ -42355,55 +43128,57 @@
@@@[(13, 15), (16, 20), (21, 33)]@@@
-               	movq	%rcx, 96(%rsp)
-               	movabsq	$17179869184, %rcx      # imm = 0x400000000
@@@@
+               	leaq	96(%rsp), %rcx
+               	movq	%rcx, 288(%rax)
+               	movabsq	$17179869184, %rdx      # imm = 0x400000000
+               	movq	%rdx, 112(%rsp)
@@@@
-               	leaq	88(%rsp), %rdx
-               	movq	%rdx, 152(%rsp)
-               	leaq	144(%rsp), %rdx
-               	movq	%rdx, 288(%rax)
-               	movq	%rcx, 160(%rsp)
-               	movq	64(%rsp), %rbp
+               	movq	288(%rax), %rcx
+               	movq	%rcx, 152(%rsp)
+               	leaq	144(%rsp), %rcx
+               	movq	%rcx, 288(%rax)
+               	movq	%rdx, 160(%rsp)
+               	movq	56(%rsp), %rbp

@@ -42472,127 +43247,127 @@
@@@[(32, 36), (45, 49), (57, 63), (66, 80), (102, 109), (110, 112), (117, 123), (125, 129), (130, 132), (133, 167), (168, 176), (178, 184), (188, 193)]@@@
-               	movq	144(%r14), %r9
-               	movq	(%r9,%rcx,8), %rax
+               	movq	144(%r14), %rdi
+               	movq	(%rdi,%rcx,8), %rax
@@@@
-               	movq	144(%r14), %r9
-               	movq	(%r9,%rcx,8), %rax
+               	movq	144(%r14), %rdi
+               	movq	(%rdi,%rcx,8), %rax
@@@@
-               	jne	0x43c85d <(anonymous namespace)::workerRoutine(void*)+0x71d>
-               	jmp	0x43cbd7 <(anonymous namespace)::workerRoutine(void*)+0xa97>
-               	nop
+               	jne	0x43d5bd <(anonymous namespace)::workerRoutine(void*)+0x73d>
+               	jmp	0x43d970 <(anonymous namespace)::workerRoutine(void*)+0xaf0>
+               	nopl	(%rax)
@@@@
-               	je	0x43cbd7 <(anonymous namespace)::workerRoutine(void*)+0xa97>
-               	movslq	8(%r13), %rsi
-               	movq	%rsi, %rax
-               	orq	%rbp, %rax
-               	shrq	$32, %rax
-               	je	0x43c840 <(anonymous namespace)::workerRoutine(void*)+0x700>
-               	movq	%rsi, %rax
+               	je	0x43d970 <(anonymous namespace)::workerRoutine(void*)+0xaf0>
+               	movl	8(%r13), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rbp, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d5a0 <(anonymous namespace)::workerRoutine(void*)+0x720>
@@@@
-               	jne	0x43cafa <(anonymous namespace)::workerRoutine(void*)+0x9ba>
-               	movq	240(%rax), %rbx
-               	movq	208(%r14), %rdi
+               	jne	0x43d883 <(anonymous namespace)::workerRoutine(void*)+0xa03>
+               	movq	%r14, %rcx
+               	movq	240(%rax), %r10
+               	movq	208(%r14), %rsi
@@@@
-               	orq	%rdi, %rax
+               	orq	%rsi, %rax
@@@@
-               	divq	%rdi
-               	movq	%rdx, %rsi
-               	jmp	0x43c89b <(anonymous namespace)::workerRoutine(void*)+0x75b>
+               	divq	%rsi
+               	movq	%rdx, %rbx
+               	jmp	0x43d5fe <(anonymous namespace)::workerRoutine(void*)+0x77e>
@@@@
-               	divl	%edi
-               	movl	%edx, %esi
+               	divl	%esi
+               	movl	%edx, %ebx
@@@@
-               	movq	(%rax,%rsi,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	je	0x43c902 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
-               	movq	(%rax), %r10
-               	cmpl	%r12d, 8(%r10)
-               	jne	0x43c8bf <(anonymous namespace)::workerRoutine(void*)+0x77f>
-               	testq	%r10, %r10
-               	jne	0x43caef <(anonymous namespace)::workerRoutine(void*)+0x9af>
-               	jmp	0x43c902 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
-               	movq	%r10, %rbp
-               	movq	(%r10), %r10
-               	testq	%r10, %r10
-               	je	0x43c902 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
-               	movslq	8(%r10), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43c8e9 <(anonymous namespace)::workerRoutine(void*)+0x7a9>
-               	movq	%rcx, %rax
+               	je	0x43d665 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
+               	movq	(%rax), %r8
+               	cmpl	%r12d, 8(%r8)
+               	jne	0x43d622 <(anonymous namespace)::workerRoutine(void*)+0x7a2>
+               	testq	%r8, %r8
+               	jne	0x43d878 <(anonymous namespace)::workerRoutine(void*)+0x9f8>
+               	jmp	0x43d665 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
+               	movq	%r8, %rbp
+               	movq	(%r8), %r8
+               	testq	%r8, %r8
+               	je	0x43d665 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
+               	movl	8(%r8), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rsi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d64c <(anonymous namespace)::workerRoutine(void*)+0x7cc>
@@@@
-               	divq	%rdi
-               	cmpq	%rsi, %rdx
-               	je	0x43c8f4 <(anonymous namespace)::workerRoutine(void*)+0x7b4>
-               	jmp	0x43c902 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
+               	divq	%rsi
+               	cmpq	%rbx, %rdx
+               	je	0x43d657 <(anonymous namespace)::workerRoutine(void*)+0x7d7>
+               	jmp	0x43d665 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
@@@@
-               	divl	%edi
-               	cmpq	%rsi, %rdx
-               	jne	0x43c902 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
+               	divl	%esi
+               	cmpq	%rbx, %rdx
+               	jne	0x43d665 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
@@@@
-               	jne	0x43caef <(anonymous namespace)::workerRoutine(void*)+0x9af>
-               	movq	%rsi, %rbp
-               	movq	%rbx, 56(%rsp)
+               	jne	0x43d878 <(anonymous namespace)::workerRoutine(void*)+0x9f8>
+               	movq	%r10, %rbp

@@ -42603,191 +43378,209 @@
@@@[(6, 16), (18, 21), (25, 27), (30, 33), (34, 48), (49, 72), (74, 77), (79, 81), (88, 90), (91, 110), (113, 122), (123, 125), (129, 132), (134, 138), (141, 146), (150, 160), (161, 167), (168, 171), (172, 177), (179, 182), (188, 203), (204, 216), (224, 226), (227, 229), (239, 246), (248, 251), (257, 264), (266, 269), (276, 282), (285, 293), (299, 301), (304, 310)]@@@
-               	jne	0x43c960 <(anonymous namespace)::workerRoutine(void*)+0x820>
-               	movq	200(%r14), %rsi
-               	movq	56(%rsp), %rbx
-               	movq	48(%rsp), %r10
-               	jmp	0x43ca77 <(anonymous namespace)::workerRoutine(void*)+0x937>
+               	movq	%rbp, %r10
+               	jne	0x43d6bc <(anonymous namespace)::workerRoutine(void*)+0x83c>
+               	movq	200(%r14), %r9
+               	movq	48(%rsp), %r8
+               	jmp	0x43d7eb <(anonymous namespace)::workerRoutine(void*)+0x96b>
@@@@
-               	je	0x43cc7f <(anonymous namespace)::workerRoutine(void*)+0xb3f>
+               	movq	%r10, 88(%rsp)
+               	je	0x43da18 <(anonymous namespace)::workerRoutine(void*)+0xb98>
@@@@
-               	movq	%rax, %rbx
+               	movq	%rax, 72(%rsp)
@@@@
-               	movq	216(%r14), %rbp
+               	movq	%r14, %rax
+               	movq	216(%r14), %rbx
@@@@
-               	testq	%rbp, %rbp
-               	movq	48(%rsp), %r10
-               	movq	%rbx, %rsi
-               	je	0x43ca1f <(anonymous namespace)::workerRoutine(void*)+0x8df>
-               	leaq	216(%r14), %r8
-               	xorl	%edi, %edi
-               	jmp	0x43c9d1 <(anonymous namespace)::workerRoutine(void*)+0x891>
+               	testq	%rbx, %rbx
+               	movq	48(%rsp), %r8
+               	movq	72(%rsp), %r9
+               	je	0x43d78b <(anonymous namespace)::workerRoutine(void*)+0x90b>
+               	leaq	216(%r14), %rdi
+               	xorl	%ebp, %ebp
+               	jmp	0x43d739 <(anonymous namespace)::workerRoutine(void*)+0x8b9>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	(%rsi,%rdx,8), %rax
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbp, %rbp
-               	je	0x43ca1f <(anonymous namespace)::workerRoutine(void*)+0x8df>
-               	movq	%rbp, %rcx
-               	movq	(%rbp), %rbp
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rax, (%rsi)
+               	movq	(%r9,%rdx,8), %rax
+               	movq	%rsi, (%rax)
+               	movq	%rbp, %rdx
+               	movq	%rdx, %rbp
+               	testq	%rbx, %rbx
+               	je	0x43d78b <(anonymous namespace)::workerRoutine(void*)+0x90b>
+               	movq	%rbx, %rsi
+               	movq	(%rbx), %rbx
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43c9f8 <(anonymous namespace)::workerRoutine(void*)+0x8b8>
+               	je	0x43d764 <(anonymous namespace)::workerRoutine(void*)+0x8e4>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%rsi,%rdx,8), %rax
+               	movq	(%r9,%rdx,8), %rax
@@@@
-               	movq	(%rsi,%rdx,8), %rax
+               	movq	(%r9,%rdx,8), %rax
@@@@
-               	jne	0x43c9b9 <(anonymous namespace)::workerRoutine(void*)+0x879>
-               	movq	(%r8), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%r8)
-               	movq	%r8, (%rsi,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x43c9c9 <(anonymous namespace)::workerRoutine(void*)+0x889>
-               	movq	%rcx, (%rsi,%rdi,8)
-               	jmp	0x43c9c9 <(anonymous namespace)::workerRoutine(void*)+0x889>
+               	jne	0x43d721 <(anonymous namespace)::workerRoutine(void*)+0x8a1>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r9,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x43d731 <(anonymous namespace)::workerRoutine(void*)+0x8b1>
+               	movq	%rsi, (%r9,%rbp,8)
+               	jmp	0x43d731 <(anonymous namespace)::workerRoutine(void*)+0x8b1>
+               	movq	%r14, %rax
@@@@
-               	je	0x43ca3f <(anonymous namespace)::workerRoutine(void*)+0x8ff>
-               	callq	0x413730 <free@plt>
-               	movq	%rbx, %rsi
-               	movq	48(%rsp), %r10
+               	je	0x43d7b0 <(anonymous namespace)::workerRoutine(void*)+0x930>
+               	callq	0x413710 <free@plt>
+               	movq	72(%rsp), %r9
+               	movq	48(%rsp), %r8
+               	movq	%r14, %rax
@@@@
-               	movq	%rsi, 200(%r14)
+               	movq	%r9, 200(%r14)
@@@@
-               	je	0x43ca68 <(anonymous namespace)::workerRoutine(void*)+0x928>
+               	movq	88(%rsp), %r10
+               	je	0x43d7e1 <(anonymous namespace)::workerRoutine(void*)+0x961>
@@@@
-               	movq	%rdx, %rbp
-               	jmp	0x43ca72 <(anonymous namespace)::workerRoutine(void*)+0x932>
+               	movq	%rdx, %rbx
+               	jmp	0x43d7eb <(anonymous namespace)::workerRoutine(void*)+0x96b>
@@@@
-               	movl	%edx, %ebp
-               	movq	56(%rsp), %rbx
-               	movq	(%rsi,%rbp,8), %rax
+               	movl	%edx, %ebx
+               	movq	(%r9,%rbx,8), %rax
@@@@
-               	movq	%rax, (%r10)
-               	movq	(%rsi,%rbp,8), %rax
-               	movq	%r10, (%rax)
-               	jmp	0x43cae0 <(anonymous namespace)::workerRoutine(void*)+0x9a0>
-               	leaq	216(%r14), %rcx
+               	movq	%rax, (%r8)
+               	movq	(%r9,%rbx,8), %rax
+               	movq	%r8, (%rax)
+               	jmp	0x43d85c <(anonymous namespace)::workerRoutine(void*)+0x9dc>
+               	leaq	216(%r14), %rsi
@@@@
-               	movq	%rax, (%r10)
-               	movq	%r10, 216(%r14)
-               	movq	(%r10), %rax
+               	movq	%rax, (%r8)
+               	movq	%r8, 216(%r14)
+               	movq	(%r8), %rax
@@@@
-               	je	0x43cadc <(anonymous namespace)::workerRoutine(void*)+0x99c>
+               	je	0x43d858 <(anonymous namespace)::workerRoutine(void*)+0x9d8>
+               	movq	%r14, %rcx
@@@@
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43cacd <(anonymous namespace)::workerRoutine(void*)+0x98d>
+               	je	0x43d849 <(anonymous namespace)::workerRoutine(void*)+0x9c9>
+               	movq	%rcx, %rax
@@@@
-               	movq	%r10, (%rsi,%rdx,8)
-               	movq	200(%r14), %rsi
-               	movq	%rcx, (%rsi,%rbp,8)
-               	addq	$1, 224(%r14)
-               	movq	144(%r14), %r9
-               	movq	%rbx, 16(%r10)
+               	movq	%r8, (%r9,%rdx,8)
+               	movq	200(%r14), %r9
+               	movq	%rsi, (%r9,%rbx,8)
+               	movq	%r14, %rcx
+               	movq	224(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 224(%r14)
+               	movq	144(%r14), %rdi
+               	movq	%r10, 16(%r8)
@@@@
-               	movslq	8(%r13), %rax
-               	movq	%rax, %rcx
-               	orq	%rbp, %rcx
-               	shrq	$32, %rcx
-               	je	0x43cb14 <(anonymous namespace)::workerRoutine(void*)+0x9d4>
+               	movl	8(%r13), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rbp, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d8a3 <(anonymous namespace)::workerRoutine(void*)+0xa23>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%r9,%rcx,8), %rbx
+               	movq	(%rdi,%rcx,8), %rbx
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
@@@@
-               	je	0x43cbc0 <(anonymous namespace)::workerRoutine(void*)+0xa80>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43d94f <(anonymous namespace)::workerRoutine(void*)+0xacf>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbx
+               	movq	%rbx, %rdx
@@@@
-               	je	0x43cb80 <(anonymous namespace)::workerRoutine(void*)+0xa40>
+               	je	0x43d90f <(anonymous namespace)::workerRoutine(void*)+0xa8f>
+               	movq	%rbx, %rax
@@@@
-               	je	0x43cba7 <(anonymous namespace)::workerRoutine(void*)+0xa67>
-               	movslq	8(%r8), %rax
-               	movq	%rax, %rdx
+               	je	0x43d936 <(anonymous namespace)::workerRoutine(void*)+0xab6>
+               	movl	8(%r8), %eax
+               	movslq	%eax, %r9
+               	movq	%r9, %rdx
@@@@
-               	je	0x43cb8f <(anonymous namespace)::workerRoutine(void*)+0xa4f>
+               	je	0x43d91e <(anonymous namespace)::workerRoutine(void*)+0xa9e>
+               	movq	%r9, %rax
@@@@
-               	je	0x43cbc0 <(anonymous namespace)::workerRoutine(void*)+0xa80>
-               	movq	%rsi, (%r9,%rdx,8)
-               	jmp	0x43cbc0 <(anonymous namespace)::workerRoutine(void*)+0xa80>
+               	je	0x43d94f <(anonymous namespace)::workerRoutine(void*)+0xacf>
+               	movq	%rsi, (%rdi,%rdx,8)
+               	jmp	0x43d94f <(anonymous namespace)::workerRoutine(void*)+0xacf>
@@@@
-               	je	0x43cbc0 <(anonymous namespace)::workerRoutine(void*)+0xa80>
-               	movq	%rbx, (%r9,%rdx,8)
-               	movq	144(%r14), %r9
-               	movq	(%r9,%rcx,8), %rbx
+               	je	0x43d94f <(anonymous namespace)::workerRoutine(void*)+0xacf>
+               	movq	%rbx, (%rdi,%rdx,8)
+               	movq	144(%r14), %rdi
+               	movq	(%rdi,%rcx,8), %rbx
@@@@
-               	movq	$0, (%r9,%rcx,8)
+               	movq	$0, (%rdi,%rcx,8)
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 168(%r14)
+               	callq	0x413710 <free@plt>
+               	movq	168(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 168(%r14)

@@ -42836,29 +43629,31 @@
@@@[(3, 7)]@@@
-               	leaq	248(%r14), %rbx
+               	movq	%r14, %rax
+               	leaq	248(%r14), %rcx
+               	movq	%rcx, 72(%rsp)

@@ -42867,37 +43662,37 @@
@@@[(47, 49)]@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -42917,32 +43712,32 @@
@@@[(15, 26), (27, 29), (30, 41)]@@@
-               	movq	40(%rbx), %rcx
-               	movq	56(%rbx), %rdx
-               	subq	64(%rbx), %rdx
-               	sarq	$3, %rdx
-               	movabsq	$-3689348814741910323, %rsi # imm = 0xCCCCCCCCCCCCCCCD
-               	imulq	%rsi, %rdx
-               	subq	24(%rbx), %rcx
-               	leaq	(%rdx,%rax,4), %rax
-               	addq	$-12, %rax
+               	movq	56(%rbx), %rcx
+               	subq	64(%rbx), %rcx
@@@@
-               	movabsq	$3689348814741910323, %rdx # imm = 0x3333333333333333
+               	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
@@@@
-               	cmpq	%rcx, %rax
-               	jne	0x43d04c <Worker::waitForQueueLocked(long, long*)+0x2cc>
+               	movq	40(%rbx), %rdx
+               	subq	24(%rbx), %rdx
+               	leaq	(%rcx,%rax,4), %rax
+               	addq	$-12, %rax
+               	sarq	$3, %rdx
+               	movabsq	$3689348814741910323, %rcx # imm = 0x3333333333333333
+               	imulq	%rcx, %rdx
+               	cmpq	%rdx, %rax
+               	jne	0x43ddfd <Worker::waitForQueueLocked(long, long*)+0x2dd>

@@ -42993,31 +43788,33 @@
@@@[(29, 35)]@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 128(%rbx)
+               	callq	0x413710 <free@plt>
+               	movq	128(%rbx), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 128(%rbx)

@@ -43026,17 +43823,19 @@
@@@[(3, 9)]@@@
-               	addq	$40, 56(%rbx)
-               	jmp	0x43cddf <Worker::waitForQueueLocked(long, long*)+0x5f>
+               	movq	56(%rbx), %rax
+               	addq	$40, %rax
+               	movq	%rax, 56(%rbx)
+               	jmp	0x43db7f <Worker::waitForQueueLocked(long, long*)+0x5f>

@@ -43044,10 +43843,10 @@
@@@[(3, 5), (7, 9)]@@@
-               	movl	8(%rsp), %ecx
-               	movl	%ecx, 12(%rax)
@@@@
+               	movl	8(%rsp), %ecx
+               	movl	%ecx, 12(%rax)

@@ -43070,21 +43869,21 @@
@@@[(23, 25)]@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -43164,56 +43963,58 @@
@@@[(20, 26)]@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r15)
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	264(%r15), %eax
+               	addl	$1, %eax
+               	movl	%eax, 264(%r15)

@@ -43229,8 +44030,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax,%rax)
+               	jmp	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -43342,39 +44143,38 @@
@@@[(18, 32), (35, 40)]@@@
-               	je	0x43d8fb <Kotlin_Worker_consumeFuture+0x5ab>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43d460 <Kotlin_Worker_consumeFuture+0x110>
-               	movq	%rsi, %rax
+               	je	0x43e6b1 <Kotlin_Worker_consumeFuture+0x5a1>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43e210 <Kotlin_Worker_consumeFuture+0x100>
@@@@
-               	je	0x43d46f <Kotlin_Worker_consumeFuture+0x11f>
-               	jmp	0x43d8fb <Kotlin_Worker_consumeFuture+0x5ab>
-               	nopl	(%rax)
+               	je	0x43e21f <Kotlin_Worker_consumeFuture+0x10f>
+               	jmp	0x43e6b1 <Kotlin_Worker_consumeFuture+0x5a1>

@@ -43502,121 +44302,126 @@
@@@[(18, 32), (35, 40), (63, 70), (72, 75), (78, 93), (95, 98), (124, 128), (131, 137)]@@@
-               	je	0x43d899 <Kotlin_Worker_consumeFuture+0x549>
-               	movslq	8(%rdi), %rsi
-               	movq	%rsi, %rax
-               	orq	%rbx, %rax
-               	shrq	$32, %rax
-               	je	0x43d6c0 <Kotlin_Worker_consumeFuture+0x370>
-               	movq	%rsi, %rax
+               	je	0x43e64f <Kotlin_Worker_consumeFuture+0x53f>
+               	movl	8(%rdi), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rbx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43e460 <Kotlin_Worker_consumeFuture+0x350>
@@@@
-               	je	0x43d6cf <Kotlin_Worker_consumeFuture+0x37f>
-               	jmp	0x43d899 <Kotlin_Worker_consumeFuture+0x549>
-               	nopl	(%rax)
+               	je	0x43e46f <Kotlin_Worker_consumeFuture+0x35f>
+               	jmp	0x43e64f <Kotlin_Worker_consumeFuture+0x53f>
@@@@
-               	je	0x43d773 <Kotlin_Worker_consumeFuture+0x423>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43e522 <Kotlin_Worker_consumeFuture+0x412>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43d738 <Kotlin_Worker_consumeFuture+0x3e8>
+               	je	0x43e4e7 <Kotlin_Worker_consumeFuture+0x3d7>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43d741 <Kotlin_Worker_consumeFuture+0x3f1>
-               	jmp	0x43d773 <Kotlin_Worker_consumeFuture+0x423>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x43d75c <Kotlin_Worker_consumeFuture+0x40c>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43e4f0 <Kotlin_Worker_consumeFuture+0x3e0>
+               	jmp	0x43e522 <Kotlin_Worker_consumeFuture+0x412>
+               	movq	(%rdi), %r10
+               	testq	%r10, %r10
+               	je	0x43e50b <Kotlin_Worker_consumeFuture+0x3fb>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43d747 <Kotlin_Worker_consumeFuture+0x3f7>
+               	je	0x43e4f6 <Kotlin_Worker_consumeFuture+0x3e6>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43d76b <Kotlin_Worker_consumeFuture+0x41b>
-               	movq	%rbp, (%r9)
+               	jne	0x43e51a <Kotlin_Worker_consumeFuture+0x40a>
+               	movq	%r10, (%r9)
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 112(%r13)
+               	callq	0x413710 <free@plt>
+               	movq	112(%r13), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 112(%r13)

@@ -43725,21 +44530,22 @@
@@@[(24, 25)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -43763,23 +44569,24 @@
@@@[(6, 7)]@@@
+               	movq	$0, (%rsp)

@@ -43793,34 +44600,35 @@
@@@[(29, 31), (34, 35)]@@@
-               	movl	%ebp, %edi
+               	movl	24(%rcx), %edi
@@@@
+               	nopl	(%rax)

@@ -43873,93 +44681,157 @@
@@@[(3, 5), (10, 16), (18, 60), (62, 123), (126, 141), (150, 173), (177, 179), (180, 183), (189, 191), (200, 206), (207, 213)]@@@
-               	movq	%rdi, %rbx
+               	movq	%rdi, %r14
@@@@
-               	jne	0x43dd00 <Kotlin_io_Console_print+0x180>
-               	leaq	24(%rsp), %r15
-               	movq	%r15, 8(%rsp)
+               	jne	0x43ebcf <Kotlin_io_Console_print+0x27f>
+               	leaq	24(%rsp), %r13
+               	movq	%r13, 8(%rsp)
@@@@
-               	movl	8(%rbx), %ebp
-               	cmpq	$16, %rbp
-               	jb	0x43dbee <Kotlin_io_Console_print+0x6e>
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
+               	je	0x43ea5a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$15, %rbp
+               	ja	0x43e9ef <Kotlin_io_Console_print+0x9f>
+               	cmpq	%rax, %rbp
+               	ja	0x43e9ef <Kotlin_io_Console_print+0x9f>
+               	cmpq	%r13, %r15
+               	je	0x43ea5a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$-1, %r12
+               	je	0x43eb34 <Kotlin_io_Console_print+0x1e4>
+               	testq	%r12, %r12
+               	jne	0x43eb22 <Kotlin_io_Console_print+0x1d2>
+               	movb	(%r15), %al
+               	movb	%al, 24(%rsp)
+               	jmp	0x43eb34 <Kotlin_io_Console_print+0x1e4>
+               	testq	%rbp, %rbp
+               	js	0x43ebde <Kotlin_io_Console_print+0x28e>
+               	movq	%r13, %rbx
+               	cmpq	%rax, %rbp
+               	jbe	0x43ea19 <Kotlin_io_Console_print+0xc9>
+               	addq	%rax, %rax
+               	cmpq	%rax, %rbp
+               	jae	0x43ea19 <Kotlin_io_Console_print+0xc9>
+               	movabsq	$9223372036854775807, %rbp # imm = 0x7FFFFFFFFFFFFFFF
+               	cmpq	%rbp, %rax
+               	cmovbq	%rax, %rbp
+               	leaq	1(%rbp), %rdi
@@@@
-               	movq	%rax, 8(%rsp)
-               	movq	%r14, 24(%rsp)
-               	movq	%rbp, %rax
-               	addq	%rbp, %rax
-               	je	0x43dc84 <Kotlin_io_Console_print+0x104>
-               	addq	$16, %rbx
-               	leaq	(%rbx,%rbp,2), %r12
-               	movl	$65533, %r13d           # imm = 0xFFFD
-               	leaq	8(%rsp), %r14
-               	jmp	0x43dc4d <Kotlin_io_Console_print+0xcd>
-               	nop
-               	cmpq	%r12, %rbp
-               	je	0x43dc75 <Kotlin_io_Console_print+0xf5>
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
-               	callq	0x4387e0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
-               	movq	%rbp, %rbx
-               	cmpq	%r12, %rbp
-               	je	0x43dc84 <Kotlin_io_Console_print+0x104>
-               	leaq	2(%rbx), %rbp
-               	movzwl	(%rbx), %eax
+               	movq	%rax, %r13
+               	cmpq	$-1, %r12
+               	je	0x43ea40 <Kotlin_io_Console_print+0xf0>
+               	testq	%r12, %r12
+               	jne	0x43eb02 <Kotlin_io_Console_print+0x1b2>
+               	movb	(%r15), %al
+               	movb	%al, (%r13)
+               	cmpq	%rbx, %r15
+               	je	0x43ea4d <Kotlin_io_Console_print+0xfd>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movq	%rbp, 24(%rsp)
+               	movq	%rbx, %r13
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	je	0x43eb51 <Kotlin_io_Console_print+0x201>
+               	addq	$16, %r14
+               	leaq	(%r14,%rax,2), %rbp
+               	leaq	8(%rsp), %r15
+               	jmp	0x43ea99 <Kotlin_io_Console_print+0x149>
+               	nopl	(%rax)
+               	movl	$65533, %edi            # imm = 0xFFFD
+               	movq	%r15, %rsi
+               	callq	0x439470 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	movq	%rbx, %r14
+               	cmpq	%rbp, %rbx
+               	je	0x43eb51 <Kotlin_io_Console_print+0x201>
+               	leaq	2(%r14), %rbx
+               	movzwl	(%r14), %eax
@@@@
-               	je	0x43dc10 <Kotlin_io_Console_print+0x90>
+               	jne	0x43eae0 <Kotlin_io_Console_print+0x190>
+               	cmpq	%rbp, %rbx
+               	je	0x43eaf1 <Kotlin_io_Console_print+0x1a1>
+               	movzwl	2(%r14), %ecx
+               	movl	%ecx, %edx
+               	andl	$64512, %edx            # imm = 0xFC00
+               	cmpl	$56320, %edx            # imm = 0xDC00
+               	jne	0x43ea80 <Kotlin_io_Console_print+0x130>
+               	shll	$10, %eax
+               	addq	$4, %r14
+               	leal	(%rax,%rcx), %edi
+               	addl	$4238353408, %edi       # imm = 0xFCA02400
+               	movq	%r14, %rbx
+               	jmp	0x43ea85 <Kotlin_io_Console_print+0x135>
@@@@
-               	callq	0x4387e0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	callq	0x439470 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	jmp	0x43eb51 <Kotlin_io_Console_print+0x201>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	cmpq	%rbx, %r15
+               	jne	0x43ea45 <Kotlin_io_Console_print+0xf5>
+               	jmp	0x43ea4d <Kotlin_io_Console_print+0xfd>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	jne	0x43ea6a <Kotlin_io_Console_print+0x11a>
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
-               	je	0x43dce2 <Kotlin_io_Console_print+0x162>
-               	movq	%r12, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43ebb1 <Kotlin_io_Console_print+0x261>
+               	movq	%r14, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x43dcf1 <Kotlin_io_Console_print+0x171>
-               	callq	0x413730 <free@plt>
+               	cmpq	%r13, %rdi
+               	je	0x43ebc0 <Kotlin_io_Console_print+0x270>
+               	callq	0x413710 <free@plt>

@@ -43968,31 +44840,33 @@
@@@[(3, 13), (17, 25), (27, 29), (38, 48)]@@@
-               	leaq	120793(%rip), %rsi      # 0x45b4e0 <ktypeglobal:kotlin.String#internal>
-               	movq	%rbx, %rdi
-               	callq	0x41aba0 <ThrowClassCastException>
-               	movq	%rax, %r14
+               	leaq	118858(%rip), %rsi      # 0x45bc20 <ktypeglobal:kotlin.String#internal>
+               	movq	%r14, %rdi
+               	callq	0x41ad40 <ThrowClassCastException>
+               	leaq	42235(%rip), %rdi       # 0x4490e0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x438aa0 <std::__throw_length_error(char const*)>
+               	movq	%rax, %r15
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x43dd26 <Kotlin_io_Console_print+0x1a6>
-               	callq	0x413730 <free@plt>
-               	movq	%r14, %rdi
+               	cmpq	%r13, %rdi
+               	je	0x43ec01 <Kotlin_io_Console_print+0x2b1>
+               	callq	0x413710 <free@plt>
+               	movq	%r15, %rdi
@@@@
-               	xchgl	%eax, (%r12)
+               	xchgl	%eax, (%r14)
@@@@
-               	je	0x43dd17 <Kotlin_io_Console_print+0x197>
-               	movq	%r12, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x43dd17 <Kotlin_io_Console_print+0x197>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x43ebf2 <Kotlin_io_Console_print+0x2a2>
+               	movq	%r14, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x43ebf2 <Kotlin_io_Console_print+0x2a2>
+               	nopl	(%rax,%rax)

@@ -44094,40 +44968,39 @@
@@@[(21, 24), (28, 29), (32, 34), (35, 36)]@@@
-               	movq	288(%rax), %rcx
-               	jmp	0x43dfac <Init_and_run_start+0x18c>
+               	jmp	0x43ee73 <Init_and_run_start+0x183>
@@@@
-               	movq	288(%rax), %rcx
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)
@@@@
+               	movq	288(%rax), %rcx

@@ -44136,33 +45009,34 @@
@@@[(6, 7), (8, 10)]@@@
-               	movaps	%xmm0, 16(%rsp)
@@@@
+               	movaps	%xmm0, 16(%rsp)
+               	movq	288(%rax), %rcx

@@ -44204,12 +45078,12 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
