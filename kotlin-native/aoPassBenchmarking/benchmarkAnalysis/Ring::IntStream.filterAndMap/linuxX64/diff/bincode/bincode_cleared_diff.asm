--- ../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/baseline/bincode/bincode.asm	2023-07-19 02:50:02.410603682 +0200
+++ ../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/unordered/bincode/bincode.asm	2023-07-19 03:01:45.140384323 +0200

@@ -1,5 +1,5 @@
@@@[(1, 3)]@@@
-../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/baseline/main.kexe:	file format elf64-x86-64
+../../benchmarkAnalysis/Ring::IntStream.filterAndMap/linuxX64/unordered/main.kexe:	file format elf64-x86-64

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
-               	leaq	77913(%rip), %rax       # 0x426f90 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
+               	movq	%r14, 128(%rbx)
+               	leaq	79769(%rip), %rax       # 0x4276d0 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>

@@ -611,78 +611,76 @@
@@@[(14, 22), (23, 55), (58, 64), (65, 74), (76, 78), (79, 90), (105, 109), (110, 112), (114, 118)]@@@
-               	movq	168(%r13), %r14
-               	movq	%r12, 208(%rsp)
-               	leaq	77949(%rip), %rax       # 0x427050 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	168(%r13), %r12
+               	movq	%r14, 216(%rsp)
+               	leaq	79805(%rip), %rax       # 0x427790 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	%rax, 240(%rsp)
+               	leaq	79806(%rip), %rax       # 0x4277a0 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
@@@@
-               	leaq	77950(%rip), %rax       # 0x427060 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
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
-               	leaq	326700(%rip), %rax      # 0x463d40 <kotlin::mm::GlobalData::instance_+0x50>
+               	movq	%r12, 8(%rbx)
+               	leaq	328632(%rip), %rax      # 0x4644c8 <kotlin::mm::GlobalData::instance_+0x50>
@@@@
-               	movq	%r14, 24(%rbx)
+               	movq	%r12, 24(%rbx)
@@@@
-               	movq	%r14, 48(%rbx)
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
+               	movq	%r12, 48(%rbx)
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>

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
-               	leaq	66652(%rip), %r15       # 0x424700 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
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
+               	leaq	68148(%rip), %rbp       # 0x424d30 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
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
-               	leaq	76798(%rip), %rbp       # 0x427090 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
-               	movq	%rbp, 96(%rsp)
+               	leaq	78462(%rip), %rbx       # 0x4277d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
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
-               	movq	%r13, 325711(%rip)      # 0x463df8 <kotlin::mm::GlobalData::instance_+0x108>
-               	addq	$248, %rsp
+               	movq	%r13, 327444(%rip)      # 0x464580 <kotlin::mm::GlobalData::instance_+0x108>
+               	addq	$264, %rsp              # imm = 0x108

@@ -919,185 +976,187 @@
@@@[(3, 5), (49, 55), (59, 66), (92, 102), (118, 128), (132, 136), (148, 152), (175, 181), (194, 202), (217, 221), (238, 243), (244, 246), (247, 254), (271, 272)]@@@
+               	leaq	205451(%rip), %rdi      # 0x446910 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x437c20 <std::__throw_length_error(char const*)>
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
-               	callq	0x43d7e8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 317667(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x4146df <_GLOBAL__sub_I_GlobalData.cpp+0xa2f>
+               	leaq	40(%rbx), %r15
+               	movq	%r15, %rdi
+               	callq	0x43e648 <std::condition_variable::notify_all()>
+               	cmpq	$0, 317465(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x4147a9 <_GLOBAL__sub_I_GlobalData.cpp+0xaf9>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43d7e8 <std::condition_variable::notify_all()>
-               	cmpq	$0, 317593(%rip)        # 0x461fb8 <write+0x461fb8>
-               	jne	0x4146b0 <_GLOBAL__sub_I_GlobalData.cpp+0xa00>
-               	jmp	0x414739 <_GLOBAL__sub_I_GlobalData.cpp+0xa89>
+               	movq	%r15, %rdi
+               	callq	0x43e648 <std::condition_variable::notify_all()>
+               	cmpq	$0, 317391(%rip)        # 0x461fb8 <write+0x461fb8>
+               	jne	0x41477a <_GLOBAL__sub_I_GlobalData.cpp+0xaca>
+               	jmp	0x414803 <_GLOBAL__sub_I_GlobalData.cpp+0xb53>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x43d7e8 <std::condition_variable::notify_all()>
+               	movq	%r15, %rdi
+               	callq	0x43e648 <std::condition_variable::notify_all()>
@@@@
-               	callq	0x43d7ba <std::condition_variable::~condition_variable()>
-               	leaq	16(%rbx), %r12
+               	callq	0x43e61a <std::condition_variable::~condition_variable()>
+               	leaq	16(%rbx), %r15
@@@@
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%r12, %rdi
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r15, %rdi
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	movq	%r15, %rdi
-               	callq	0x424b90 <kotlin::ScopedThread::~ScopedThread()>
-               	movq	240(%rsp), %rdi
-               	callq	0x4282f0 <GCStateHolder::~GCStateHolder()>
+               	movq	%r12, %rdi
+               	callq	0x4251c0 <kotlin::ScopedThread::~ScopedThread()>
+               	movq	248(%rsp), %rdi
+               	callq	0x428ae0 <GCStateHolder::~GCStateHolder()>
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x424b80 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x4251b0 <std::thread::~thread()>
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
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testl	%r12d, %r12d
-               	js	0x4154c4 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x264>
+               	je	0x4153c2 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x92>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	callq	0x41ee30 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movq	%r12, %rdx
+               	callq	0x41efe0 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
@@@@
-               	movl	%r12d, %esi
+               	movl	%ebp, %esi

@@ -2975,9 +3013,10 @@
@@@[(3, 4)]@@@
+               	movq	32(%rsp), %rax

@@ -3005,20 +3044,19 @@
@@@[(12, 15), (17, 18), (20, 21)]@@@
-               	callq	0x419f60 <ThrowInvalidReceiverTypeException>
-               	nopl	(%rax,%rax)
+               	callq	0x41a0e0 <ThrowInvalidReceiverTypeException>
@@@@
+               	pushq	%rbp
@@@@
-               	pushq	%r13

@@ -3029,30 +3067,30 @@
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

@@ -3060,16 +3098,16 @@
@@@[(17, 19)]@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)

@@ -3077,118 +3115,119 @@
@@@[(3, 5), (6, 8), (10, 26), (27, 30), (32, 36), (37, 58), (63, 67), (71, 77), (81, 111), (112, 116), (118, 131), (132, 134), (135, 137), (140, 148), (149, 151), (155, 157), (167, 169), (171, 173), (176, 177), (179, 180), (181, 183)]@@@
-               	movq	288(%r12), %rax
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rbx, 288(%r12)
+               	movq	%rbx, 288(%rbp)
@@@@
-               	movslq	16(%r14), %r15
-               	testq	%r15, %r15
-               	jns	0x416a4f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	movq	8(%r14), %r13
-               	movq	%r13, 120(%rsp)
-               	movq	%r13, 128(%rsp)
-               	movl	8(%r13), %edx
-               	movl	%edx, %ebx
+               	movl	16(%r14), %r15d
+               	testl	%r15d, %r15d
+               	jns	0x416aaf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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
-               	callq	0x417d90 <checkRangeIndexes>
-               	movq	(%r13), %rax
+               	callq	0x417ed0 <checkRangeIndexes>
+               	movq	(%r12), %rax
@@@@
-               	jge	0x416a4f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	leaq	16(,%r15,2), %r10
-               	addq	%r13, %r10
-               	movl	%r15d, %r9d
-               	notl	%r9d
-               	addl	%ebx, %r9d
-               	cmpl	$15, %r9d
-               	jb	0x416a2c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
-               	addq	$1, %r9
-               	movq	%r9, %r8
+               	jge	0x416aaf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	movslq	%r15d, %r9
+               	leaq	(%r12,%r9,2), %r11
+               	addq	$16, %r11
+               	movl	%r15d, %r10d
+               	notl	%r10d
+               	addl	%ebx, %r10d
+               	cmpl	$15, %r10d
+               	jb	0x416a8c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
+               	addq	$1, %r10
+               	movq	%r10, %r8
@@@@
-               	movl	%edi, %esi
-               	andl	$7, %esi
+               	movl	%edi, %edx
+               	andl	$7, %edx
@@@@
-               	jmp	0x4169f1 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
-               	leaq	240(,%r15,2), %rdx
-               	addq	%r13, %rdx
+               	jmp	0x416a51 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
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
-               	jne	0x416980 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
-               	testq	%rsi, %rsi
-               	je	0x416a20 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
-               	movq	%r15, %rcx
-               	addq	%r15, %rcx
-               	leaq	(%rcx,%rax,2), %rax
-               	addq	%r13, %rax
+               	jne	0x4169e0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
+               	testq	%rdx, %rdx
+               	je	0x416a80 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
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
-               	jne	0x416a10 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
-               	cmpq	%r8, %r9
-               	je	0x416a4f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	incq	%rdx
+               	jne	0x416a70 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
+               	cmpq	%r8, %r10
+               	je	0x416aaf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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

@@ -3279,45 +3318,45 @@
@@@[(23, 24), (25, 30)]@@@
-               	movq	16(%r14,%rax,8), %rax
@@@@
-               	cmpq	16(%r15,%rcx,8), %rax
-               	jne	0x416d2e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>
+               	movq	16(%r15,%rcx,8), %rcx
+               	cmpq	%rcx, 16(%r14,%rax,8)
+               	jne	0x416d7e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>

@@ -3574,240 +3613,293 @@
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
-               	je	0x4171d4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc4>
+               	movq	%rcx, 576(%rsp)
+               	movq	24(%rbx), %rcx
+               	movq	%rcx, 8(%rsp)
+               	movl	8(%rcx), %r13d
+               	movq	-64(%rax), %rdx
@@@@
-               	xchgl	%ecx, 328(%rdi)
-               	jmp	0x4171d6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc6>
-               	xorl	%edi, %edi
+               	movl	$1, %esi
+               	xchgl	%esi, 328(%rdx)
+               	movl	%esi, 108(%rsp)
+               	movq	$0, 120(%rsp)
+               	movl	$1, 128(%rsp)
+               	movb	$0, 132(%rsp)
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x417254 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xf4>
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 120(%rsp)
+               	movl	%ecx, 128(%rsp)
+               	movb	$1, 132(%rsp)
+               	movq	%rdx, 144(%rsp)
@@@@
-               	movaps	%xmm0, 48(%rsp)
-               	movq	$0, 64(%rsp)
-               	testl	%ebp, %ebp
-               	je	0x41782a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x71a>
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
+               	jae	0x41736e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x20e>
+               	movq	40(%rsp), %rbx
+               	movq	%rbx, %r12
+               	subq	%r15, %r12
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
+               	movq	%rax, %r14
+               	cmpq	%r15, %rbx
+               	je	0x41733d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	leaq	16(%r14), %rax
+               	leaq	16(%r15), %rcx
+               	jmp	0x4172f5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x195>
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
+               	je	0x41730a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1aa>
+               	movq	%rax, -16(%rax)
+               	movq	-16(%rcx), %rdx
+               	cmpq	%rcx, %rdx
+               	jne	0x4172c0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x160>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x4172ca <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x16a>
+               	cmpq	%rbx, %r15
+               	je	0x41733d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	%r15, %rbp
+               	jmp	0x417329 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c9>
+               	nopl	(%rax,%rax)
+               	addq	$16, %rbp
+               	cmpq	%rbx, %rbp
+               	je	0x41733d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417320 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	callq	0x413710 <free@plt>
+               	jmp	0x417320 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	sarq	$5, %r12
+               	testq	%r15, %r15
+               	je	0x41734e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1ee>
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
-               	jmp	0x417470 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x360>
-               	movq	%rcx, (%r14)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14)
-               	movq	32(%rsp), %r15
-               	movq	104(%rsp), %rbp
+               	testl	%r13d, %r13d
+               	je	0x417956 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x7f6>
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
+               	jmp	0x4175c4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
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
-               	je	0x41770b <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5fb>
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
+               	je	0x417852 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6f2>
+               	movq	16(%rbx,%r14,8), %rcx
@@@@
-               	jb	0x417463 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x353>
-               	movq	%rax, 16(%rsp)
+               	jb	0x4175b7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x457>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	56(%rsp), %r14
-               	movq	%r14, %r15
-               	movq	%rax, 24(%rsp)
-               	subq	%rax, %r15
-               	movq	%r15, %rbx
-               	sarq	$5, %rbx
-               	leaq	189860(%rip), %rax      # 0x445a4b <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
+               	movq	40(%rsp), %r13
+               	movq	32(%rsp), %rax
+               	movq	%r13, %rbx
+               	movq	%rax, 16(%rsp)
+               	subq	%rax, %rbx
+               	movq	%rbx, %r12
+               	sarq	$5, %r12
+               	leaq	193173(%rip), %rax      # 0x44688b <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
@@@@
-               	leaq	576(%rsp), %rbp
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rdx
+               	movq	%r15, %rdi
+               	movq	%r12, %rdx
@@@@
-               	callq	0x436bc0 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
-               	movq	%r13, 72(%rsp)
-               	movq	%rbp, %rdi
-               	callq	0x413710 <strlen@plt>
+               	callq	0x4375c0 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
+               	movq	%rbp, 64(%rsp)
+               	movq	%r15, %rdi
+               	callq	0x413720 <strlen@plt>
+               	movq	%rbp, %rcx
@@@@
-               	cmpq	$16, %rax
-               	jb	0x417504 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x3f4>
+               	movq	%rcx, %rax
+               	cmpq	$16, %rbp
+               	jb	0x41764e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ee>
@@@@
-               	movq	%rax, %r13
-               	movq	%rax, 72(%rsp)
-               	movq	%rbp, 88(%rsp)
+               	movq	%rax, 64(%rsp)
+               	movq	%rbp, 80(%rsp)
@@@@
-               	jne	0x417551 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x441>
-               	movb	576(%rsp), %al
-               	movb	%al, (%r13)
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	je	0x417574 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
-               	leaq	16(%r14), %rax
-               	movq	%rax, (%r14)
-               	movq	72(%rsp), %rcx
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rcx
-               	jne	0x417423 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x313>
-               	movups	(%r13), %xmm0
-               	movups	%xmm0, (%rax)
-               	jmp	0x41742f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x31f>
-               	movq	%r13, %rdi
-               	leaq	576(%rsp), %rsi
+               	jne	0x417664 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x504>
+               	movb	592(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x417677 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x517>
+               	movq	%rax, %rdi
+               	leaq	592(%rsp), %rsi
@@@@
-               	callq	0x413720 <memcpy@plt>
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	jne	0x41752a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x41a>
-               	testq	%r15, %r15
-               	movq	%rbx, %rax
+               	callq	0x413730 <memcpy@plt>
+               	movq	%rbp, 72(%rsp)
+               	movq	64(%rsp), %rax
+               	movb	$0, (%rax,%rbp)
+               	cmpq	%r13, 48(%rsp)
+               	je	0x4176b3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x553>
+               	leaq	16(%r13), %rax
+               	movq	%rax, (%r13)
+               	movq	64(%rsp), %rcx
+               	leaq	80(%rsp), %rbp
+               	cmpq	%rbp, %rcx
+               	jne	0x417573 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x413>
+               	movups	(%rbp), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x417580 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x420>
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
-               	je	0x4175c5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b5>
+               	cmpq	%rcx, %r15
+               	cmovaq	%rcx, %r15
+               	addq	%r12, %rax
+               	cmovbq	%rcx, %r15
+               	testq	%r15, %r15
+               	leaq	80(%rsp), %rbx
+               	je	0x4176f7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x597>
@@@@
-               	movq	%r13, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%rax, %r14
-               	jmp	0x4175c8 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b8>
-               	xorl	%r14d, %r14d
-               	shlq	$5, %rbp
-               	leaq	(%r14,%rbp), %rax
-               	addq	$16, %rax
-               	movq	%rax, (%r14,%rbp)
+               	jmp	0x4176f9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
+               	xorl	%eax, %eax
+               	shlq	$5, %r12
+               	leaq	(%rax,%r12), %rdx
+               	addq	$16, %rdx
+               	movq	%rdx, (%rax,%r12)
+               	movq	64(%rsp), %rcx
+               	cmpq	%rbx, %rcx
+               	je	0x417726 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5c6>
+               	leaq	(%rax,%r12), %rdx
+               	movq	%rcx, (%rdx)
+               	movq	80(%rsp), %rcx
+               	movq	%rcx, 16(%rax,%r12)
+               	jmp	0x41772c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5cc>
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rdx)
@@@@
-               	leaq	88(%rsp), %rdx
-               	cmpq	%rdx, %rcx
-               	movq	32(%rsp), %r15
-               	je	0x4175ff <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ef>
-               	leaq	(%r14,%rbp), %rax
-               	movq	%rcx, (%rax)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14,%rbp)
-               	jmp	0x417605 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4f5>
-               	movups	(%rdx), %xmm0
-               	movups	%xmm0, (%rax)
-               	movq	80(%rsp), %rax
-               	movq	%rax, 8(%r14,%rbp)
-               	movq	%rdx, 72(%rsp)
-               	movq	$0, 80(%rsp)
-               	movb	$0, 88(%rsp)
-               	cmpq	%rbx, %r12
-               	je	0x417700 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5f0>
-               	leaq	16(%r14), %rcx
-               	leaq	16(%rbx), %rax
-               	jmp	0x417676 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x566>
-               	nopl	(%rax,%rax)
+               	movq	%rcx, 8(%rax,%r12)
+               	movq	%rbx, 64(%rsp)
+               	movq	$0, 72(%rsp)
+               	movb	$0, 80(%rsp)
+               	movq	16(%rsp), %r12
+               	cmpq	%r12, %r13
+               	movq	%rax, 152(%rsp)
+               	je	0x4177fc <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x69c>
+               	leaq	16(%rax), %rcx
+               	leaq	16(%r12), %rax
+               	jmp	0x4177a6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x646>
+               	nopl	(%rax)

@@ -3819,241 +3911,239 @@
@@@[(3, 5), (20, 29), (30, 34), (37, 88), (98, 108), (177, 178), (179, 182), (196, 214), (220, 229), (237, 249), (252, 256), (257, 259), (265, 269), (273, 289), (290, 299), (300, 308), (309, 317), (321, 329), (330, 334), (338, 340), (341, 351)]@@@
-               	cmpq	%r12, %rax
+               	cmpq	%r13, %rax
@@@@
-               	cmpq	%rbx, %r12
-               	jne	0x4176a9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
-               	jmp	0x4176c1 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b1>
-               	nop
+               	cmpq	%r12, %r13
+               	je	0x417800 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
+               	movq	%r12, %rbx
+               	jmp	0x4177e9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x689>
+               	nopl	(%rax,%rax)
@@@@
-               	cmpq	%r12, %rbx
-               	je	0x4176bc <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5ac>
+               	cmpq	%r13, %rbx
+               	je	0x417800 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
@@@@
-               	je	0x4176a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	callq	0x413730 <free@plt>
-               	jmp	0x4176a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	movq	24(%rsp), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4176ce <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
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
-               	je	0x4176f6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5e6>
-               	callq	0x413730 <free@plt>
-               	movq	104(%rsp), %rbp
-               	jmp	0x41745e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x34e>
-               	leaq	32(%r14), %rbp
-               	testq	%rbx, %rbx
-               	jne	0x4176c6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b6>
-               	jmp	0x4176ce <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	je	0x4177e0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	callq	0x413710 <free@plt>
+               	jmp	0x4177e0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	leaq	32(%rax), %rbp
+               	testq	%r12, %r12
+               	movq	96(%rsp), %r13
+               	je	0x417812 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6b2>
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
+               	je	0x4175af <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	callq	0x413710 <free@plt>
+               	jmp	0x4175af <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	movq	128(%rsp), %rbx
-               	movl	116(%rsp), %r14d
-               	je	0x417751 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x641>
-               	callq	0x43c235 <operator delete(void*)>
-               	movq	424(%rsp), %rdi
-               	leaq	440(%rsp), %rax
+               	je	0x417886 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x726>
+               	callq	0x43d095 <operator delete(void*)>
+               	movq	440(%rsp), %rdi
+               	leaq	456(%rsp), %rax
@@@@
-               	movl	44(%rsp), %ecx
@@@@
-               	je	0x417856 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x746>
+               	je	0x41798e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x82e>
+               	movl	128(%rsp), %ecx
@@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	je	0x417883 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%r14d, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%r14d, %r14d
-               	jne	0x417883 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	144(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4179c2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	addq	$328, %rdi              # imm = 0x148
+               	movl	108(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, (%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x4179c2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
@@@@
-               	je	0x417883 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	movq	%rbx, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	$0, 600(%rsp)
-               	movq	8(%rsp), %rax
+               	je	0x4179c2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	js	0x417ac3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x9b3>
+               	movq	%rbp, 8(%rsp)
+               	js	0x417c13 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xab3>
@@@@
-               	movq	%r15, %rax
+               	movq	%r14, %rax
@@@@
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %rbp
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r15
@@@@
-               	leaq	263763(%rip), %rax      # 0x457f90 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%rbp)
-               	movl	%ebx, 24(%rbp)
-               	movq	%rcx, 32(%rsp)
-               	movq	%rcx, 600(%rsp)
-               	cmpq	%r13, %r14
-               	jne	0x417967 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x857>
-               	movq	8(%rsp), %rax
+               	leaq	265364(%rip), %rax      # 0x458710 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r15)
+               	movl	%ebx, 24(%r15)
+               	movq	%rcx, 96(%rsp)
+               	movq	%rcx, 616(%rsp)
+               	cmpq	%r13, %rbp
+               	jne	0x417aa7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x947>
+               	movq	24(%rsp), %rax
@@@@
-               	jmp	0x417a1a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x90a>
-               	sarq	$5, %r15
-               	movq	8(%rsp), %rax
+               	jmp	0x417b65 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xa05>
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
-               	callq	0x4374c0 <CreateStringFromCString>
-               	movq	168(%rsp), %rax
-               	movq	%r15, %rcx
+               	leaq	184(%rsp), %rsi
+               	callq	0x438150 <CreateStringFromCString>
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
-               	jne	0x4179a0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x890>
-               	movq	32(%rsp), %r15
-               	movq	%r15, 568(%rsp)
-               	movq	584(%rsp), %rcx
+               	addq	$-1, %rbp
+               	jne	0x417ae0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x980>
+               	movq	96(%rsp), %r15
+               	movq	%r15, 584(%rsp)
+               	movq	600(%rsp), %rcx

@@ -4061,135 +4151,133 @@
@@@[(3, 13), (17, 22), (86, 99), (181, 189), (199, 219), (223, 227), (228, 230)]@@@
-               	leaq	188434(%rip), %rdi      # 0x445ad0 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
-               	callq	0x437220 <std::__throw_length_error(char const*)>
-               	callq	0x41a080 <ThrowIllegalArgumentException>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	leaq	191746(%rip), %rdi      # 0x446910 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x437c20 <std::__throw_length_error(char const*)>
+               	callq	0x41a200 <ThrowIllegalArgumentException>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	je	0x417bdf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	callq	0x43c235 <operator delete(void*)>
-               	leaq	48(%rsp), %rdi
-               	callq	0x437240 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
-               	movq	120(%rsp), %rdi
-               	movl	44(%rsp), %esi
-               	callq	0x4372a0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	je	0x417d2a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	callq	0x43d095 <operator delete(void*)>
+               	leaq	32(%rsp), %rdi
+               	callq	0x437c40 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
+               	leaq	112(%rsp), %rdi
+               	callq	0x437ca0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	jne	0x417bda <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xaca>
-               	jmp	0x417bdf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	jne	0x417d25 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbc5>
+               	jmp	0x417d2a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	je	0x417d6c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc5c>
-               	movq	16(%rsp), %rbx
-               	movq	(%rbx), %rdi
-               	addq	$16, %rbx
-               	cmpq	%rbx, %rdi
-               	je	0x417d61 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc51>
-               	callq	0x413730 <free@plt>
-               	addq	$16, %rbx
-               	cmpq	24(%rsp), %rbx
-               	jne	0x417d50 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc40>
+               	je	0x417eb4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd54>
+               	movq	16(%rsp), %rbp
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417ea9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd49>
+               	callq	0x413710 <free@plt>
+               	addq	$16, %rbp
+               	cmpq	8(%rsp), %rbp
+               	jne	0x417e97 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd37>
@@@@
-               	callq	0x413730 <free@plt>
-               	movq	%rbp, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%rbx, %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -4479,54 +4567,55 @@
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

@@ -4548,23 +4637,24 @@
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

@@ -4621,7 +4711,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -5091,63 +5181,64 @@
@@@[(3, 14), (15, 27), (67, 73), (85, 87)]@@@
-               	movq	8(%rax), %r13
-               	movq	%r13, 72(%rsp)
-               	movq	%r13, 80(%rsp)
-               	movq	%r13, 88(%rsp)
-               	movl	306413(%rip), %eax      # 0x463ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	movq	8(%rax), %rax
+               	movq	%rax, 72(%rsp)
+               	movq	%rax, 80(%rsp)
+               	movq	80(%rsp), %rbp
+               	movq	%rbp, 88(%rsp)
+               	movl	307992(%rip), %eax      # 0x464254 <state_global$kotlin.native.concurrent.UNINITIALIZED>
@@@@
-               	je	0x418dff <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x11f>
-               	leaq	306401(%rip), %rdi      # 0x463ad4 <state_global$kotlin.native.concurrent.UNINITIALIZED>
-               	leaq	470(%rip), %rsi         # 0x418fd0 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
-               	callq	0x43b080 <CallInitGlobalPossiblyLock>
-               	cmpq	%r13, 306330(%rip)      # 0x463aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	je	0x418ea1 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c1>
+               	je	0x418f54 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x124>
+               	leaq	307980(%rip), %rdi      # 0x464254 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	leaq	481(%rip), %rsi         # 0x419130 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
+               	callq	0x43bdd0 <CallInitGlobalPossiblyLock>
+               	cmpq	307909(%rip), %rbp      # 0x464220 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	je	0x418ff6 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c6>
@@@@
-               	callq	0x43b2a0 <ThrowException>
-               	movq	8(%rbx), %rbp
-               	movl	306221(%rip), %eax      # 0x463ad8 <state_global$kotlin.native.concurrent.INITIALIZING>
+               	callq	0x43bff0 <ThrowException>
+               	movq	8(%rbx), %r13
+               	movl	307800(%rip), %eax      # 0x464258 <state_global$kotlin.native.concurrent.INITIALIZING>
@@@@
-               	movq	%rax, 8(%rbp)
+               	movq	%rax, 8(%r13)

@@ -5172,32 +5263,33 @@
@@@[(36, 39)]@@@
-               	callq	0x43b2a0 <ThrowException>
+               	callq	0x43bff0 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -5214,41 +5306,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 305726(%rip)      # 0x463aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	leaq	305719(%rip), %rdi      # 0x463aa0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	%rcx, 307294(%rip)      # 0x464220 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	leaq	307287(%rip), %rdi      # 0x464220 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	307280(%rip), %rax      # 0x464220 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
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

@@ -5265,60 +5358,61 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 305478(%rip)      # 0x463aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
-               	leaq	305471(%rip), %rdi      # 0x463aa8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	%rcx, 307046(%rip)      # 0x464228 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	leaq	307039(%rip), %rdi      # 0x464228 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	307032(%rip), %rax      # 0x464228 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
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

@@ -5484,29 +5578,29 @@
@@@[(9, 17), (18, 22)]@@@
-               	testb	$2, 89(%rax)
-               	jne	0x4194b1 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x81>
-               	jmp	0x4194e0 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	jne	0x419617 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x87>
+               	jmp	0x419646 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
@@@@
-               	testb	$2, 89(%rax)
-               	je	0x4194e0 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	je	0x419646 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>

@@ -5516,7 +5610,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -5611,19 +5705,19 @@
@@@[(17, 23)]@@@
-               	jne	0x419694 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
-               	movq	8(%r14), %rax
-               	cmpq	8(%rbx), %rax
+               	jne	0x419804 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
+               	movq	8(%rbx), %rax
+               	cmpq	%rax, 8(%r14)

@@ -5802,30 +5896,31 @@
@@@[(21, 32), (37, 39)]@@@
-               	movq	%rcx, 303408(%rip)      # 0x463ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	leaq	303401(%rip), %rdi      # 0x463ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	movq	$0, 24(%rax)
-               	movq	303386(%rip), %rsi      # 0x463ab0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	callq	0x425b00 <InitAndRegisterGlobal>
+               	movq	%rcx, 304960(%rip)      # 0x464230 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	leaq	304953(%rip), %rdi      # 0x464230 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	304946(%rip), %rax      # 0x464230 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	$0, 8(%rax)
+               	movq	304931(%rip), %rsi      # 0x464230 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	callq	0x426180 <InitAndRegisterGlobal>
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -6344,116 +6439,118 @@
@@@[(3, 7), (9, 11), (16, 22), (24, 28), (29, 35), (36, 39), (44, 46), (48, 50), (54, 56), (58, 60), (78, 80), (82, 84), (88, 92), (98, 100), (107, 109), (110, 112), (113, 123), (124, 130), (131, 133), (134, 137), (139, 147), (153, 157), (163, 167)]@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
+               	movq	-64(%rax), %r15
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x41a339 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x69>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r12), %rdi
+               	je	0x41a4b7 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x67>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	leaq	16(%rax), %rdx
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
@@@@
-               	leaq	259326(%rip), %rcx      # 0x459860 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	leaq	260865(%rip), %rdx      # 0x459fe0 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 88(%rsp)
+               	movq	%rcx, 302409(%rip)      # 0x464238 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	movq	302402(%rip), %rax      # 0x464238 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
@@@@
-               	movq	%rcx, 16(%rax)
-               	movq	%rdx, 88(%rsp)
-               	movq	%rdx, 300865(%rip)      # 0x463ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
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
-               	js	0x41a60f <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33f>
-               	movq	296(%r12), %rdi
+               	js	0x41a78c <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33c>
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
-               	je	0x41a4f9 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x229>
-               	nopl	(%rax)
-               	movzbl	305289(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%r12d, %ebp
+               	cmpl	%r12d, %ebp
+               	je	0x41a67b <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x22b>
+               	nop
+               	movzbl	306833(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41a4d0 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x200>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	16(%r13,%r14,8), %rax
+               	je	0x41a650 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x200>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	16(%r13,%r12,8), %rax
@@@@
-               	movslq	16(%rax), %rcx
+               	movl	16(%rax), %ecx
@@@@
-               	jbe	0x41a60a <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x33a>
+               	jbe	0x41a787 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x337>
+               	movslq	%ecx, %rcx
@@@@
-               	addq	$1, %r14
-               	cmpl	%r14d, %ebp
-               	jne	0x41a4c0 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x1f0>
-               	movq	(%r15), %rax
+               	addq	$1, %r12
+               	cmpl	%r12d, %ebp
+               	jne	0x41a640 <kfun:kotlin.native.internal.UnhandledExceptionHookHolder.$init_global#internal+0x1f0>
+               	movq	(%r14), %rax
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	%r15, 120(%rsp)
+               	movq	%rax, 288(%r15)
+               	movq	%r14, 120(%rsp)
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	300359(%rip), %rax      # 0x463a90 <kvar:kotlin.native.MemoryModel.$VALUES#internal>
+               	movq	%rax, 288(%r15)
+               	movq	301895(%rip), %rax      # 0x464210 <kvar:kotlin.native.MemoryModel.$VALUES#internal>

@@ -6461,31 +6558,31 @@
@@@[(3, 5), (28, 36), (37, 39)]@@@
-               	movq	296(%r12), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	300249(%rip), %rsi      # 0x463ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
-               	leaq	300242(%rip), %rdi      # 0x463ab8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
-               	callq	0x425b00 <InitAndRegisterGlobal>
+               	movq	%rax, 288(%r15)
+               	movq	301787(%rip), %rsi      # 0x464238 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	leaq	301780(%rip), %rdi      # 0x464238 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	callq	0x426180 <InitAndRegisterGlobal>
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)

@@ -6494,12 +6591,11 @@
@@@[(3, 14)]@@@
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	callq	0x41a080 <ThrowIllegalArgumentException>
-               	leaq	252277(%rip), %rsi      # 0x457f90 <ktypeglobal:kotlin.Array#internal>
-               	movq	%r15, %rdi
-               	callq	0x419d70 <ThrowClassCastException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	callq	0x41a200 <ThrowIllegalArgumentException>
+               	leaq	253816(%rip), %rsi      # 0x458710 <ktypeglobal:kotlin.Array#internal>
+               	movq	%r14, %rdi
+               	callq	0x419ef0 <ThrowClassCastException>

@@ -7674,18 +7770,18 @@
@@@[(8, 18)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41b97b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x18b>
-               	movzbl	300179(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41bafd <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x19d>
+               	movzbl	301739(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>

@@ -7698,40 +7794,43 @@
@@@[(10, 12), (13, 16), (26, 29), (34, 38), (39, 42)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41b999 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41bb1b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx
@@@@
-               	jmp	0x41b942 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x152>
+               	jmp	0x41bac2 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x162>
+               	nopl	(%rax)
@@@@
-               	je	0x41b9e1 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1f1>
-               	movslq	20(%rbx), %rcx
+               	je	0x41bb63 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x203>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41b999 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41bb1b <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx

@@ -7743,23 +7842,23 @@
@@@[(21, 27)]@@@
-               	callq	0x43b2a0 <ThrowException>
-               	callq	0x419bd0 <ThrowNullPointerException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x43bff0 <ThrowException>
+               	callq	0x419d50 <ThrowNullPointerException>
+               	nopl	(%rax,%rax)

@@ -7790,52 +7889,52 @@
@@@[(45, 55)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41bd04 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x314>
-               	movzbl	299567(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41be94 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x324>
+               	movzbl	301111(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>

@@ -7854,19 +7953,20 @@
@@@[(10, 12), (13, 16)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41bd51 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41bee1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -7874,14 +7974,14 @@
@@@[(9, 13)]@@@
-               	jmp	0x41bc59 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
-               	nopl	(%rax)
+               	jmp	0x41bdd9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
+               	nop

@@ -7892,23 +7992,24 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41bd99 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3a9>
-               	movslq	20(%rbx), %rcx
+               	je	0x41bf29 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3b9>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41bd51 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41bee1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -7916,11 +8017,12 @@
@@@[(9, 12)]@@@
-               	jmp	0x41baed <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	jmp	0x41bc6d <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	nopw	%cs:(%rax,%rax)

@@ -8034,13 +8136,13 @@
@@@[(6, 16)]@@@
-               	je	0x41bee4 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	68(%rbx), %eax
-               	cmpl	76(%rbx), %eax
-               	jle	0x41bfec <kfun:kotlin.collections.HashMap.rehash#internal+0x18c>
+               	je	0x41c074 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	76(%rbx), %eax
+               	cmpl	%eax, 68(%rbx)
+               	jle	0x41c1ae <kfun:kotlin.collections.HashMap.rehash#internal+0x1be>

@@ -8057,67 +8159,67 @@
@@@[(10, 19), (58, 64), (81, 82), (83, 85)]@@@
-               	movslq	68(%rbx), %rdx
-               	cmpq	%rdx, %r13
-               	jge	0x41bff5 <kfun:kotlin.collections.HashMap.rehash#internal+0x195>
-               	movzbl	298460(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	68(%rbx), %edx
+               	movslq	%edx, %rax
+               	cmpq	%rax, %r13
+               	jge	0x41c17a <kfun:kotlin.collections.HashMap.rehash#internal+0x18a>
+               	movzbl	299990(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	ja	0x41bf50 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	movq	288(%rbp), %rax
-               	jmp	0x41c029 <kfun:kotlin.collections.HashMap.rehash#internal+0x1c9>
+               	ja	0x41c0e0 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -8125,15 +8227,16 @@
@@@[(3, 13), (15, 16), (17, 19)]@@@
-               	movl	8(%rax), %ecx
-               	movq	8(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	cmpl	%r14d, %ecx
-               	jne	0x41c10f <kfun:kotlin.collections.HashMap.rehash#internal+0x2af>
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

@@ -8191,14 +8294,13 @@
@@@[(10, 13)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)

@@ -8267,43 +8369,43 @@
@@@[(15, 17)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -8386,65 +8488,65 @@
@@@[(19, 21)]@@@
-               	movb	72(%r12), %cl
+               	movl	72(%r12), %ecx

@@ -8523,7 +8625,7 @@
@@@[(3, 5)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -8617,37 +8719,38 @@
@@@[(3, 7), (9, 18), (23, 25), (27, 29), (32, 34), (38, 42), (43, 49)]@@@
-               	movabsq	$17179869184, %rsi      # imm = 0x400000000
-               	movq	%rsi, 16(%rsp)
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 16(%rsp)
@@@@
-               	movq	8(%rsp), %rcx
-               	cmpl	8(%rdx), %r8d
-               	movq	%rcx, 288(%rbp)
-               	jl	0x41cc34 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5f4>
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
-               	jg	0x41c99a <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	movq	%rcx, %r13
+               	jg	0x41cb2c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>
@@@@
-               	subl	%edx, %ecx
-               	testl	%ecx, %ecx
-               	jle	0x41c99a <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	subl	%edx, %esi
+               	testl	%esi, %esi
+               	jle	0x41cb2c <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>

@@ -8657,15 +8760,15 @@
@@@[(3, 21)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	leal	3(%rdx), %esi
-               	testl	%edx, %edx
-               	cmovnsl	%edx, %esi
-               	sarl	$2, %esi
-               	cmpl	%esi, %eax
-               	jge	0x41cb20 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	leal	3(%rcx), %edx
+               	testl	%ecx, %ecx
+               	cmovnsl	%ecx, %edx
+               	sarl	$2, %edx
+               	cmpl	%edx, %eax
+               	jge	0x41ccb0 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>

@@ -8688,13 +8791,14 @@
@@@[(3, 14), (15, 17)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	cmpl	%eax, %edx
-               	jge	0x41cbf9 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
-               	movaps	%xmm0, (%rsp)
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	cmpl	%eax, %ecx
+               	jge	0x41cd92 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rcx

@@ -8714,19 +8818,18 @@
@@@[(17, 20)]@@@
-               	jmp	0x41cb64 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x524>
-               	nopw	(%rax,%rax)
+               	jmp	0x41ccfb <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x52b>

@@ -8743,13 +8846,14 @@
@@@[(7, 10), (11, 15)]@@@
-               	jmp	0x41c6e8 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
-               	movaps	%xmm0, (%rsp)
+               	jmp	0x41c878 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
@@@@
-               	movq	%rcx, 8(%rsp)
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax
+               	movq	%rax, 8(%rsp)

@@ -8793,16 +8897,17 @@
@@@[(3, 4), (5, 6), (7, 10)]@@@
+               	movl	8(%rax), %eax
@@@@
-               	cmpl	8(%rax), %esi
@@@@
-               	jle	0x41cbf9 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
+               	cmpl	%eax, %esi
+               	jle	0x41cd92 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>

@@ -8822,43 +8927,45 @@
@@@[(22, 26), (50, 54)]@@@
-               	addl	$1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 76(%rbx)
@@@@
-               	callq	0x43b2a0 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43bff0 <ThrowException>
+               	nopl	(%rax,%rax)

@@ -9007,46 +9114,46 @@
@@@[(37, 39)]@@@
-               	movzbl	72(%rbx), %ecx
+               	movl	72(%rbx), %ecx

@@ -9108,11 +9215,13 @@
@@@[(8, 12)]@@@
-               	addl	$-1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 76(%rbx)

@@ -9123,8 +9232,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)

@@ -9365,26 +9474,26 @@
@@@[(22, 30)]@@@
-               	movl	$4294967165, %ecx       # imm = 0xFFFFFF7D
-               	addl	92(%rax), %ecx
-               	cmpl	$2, %ecx
-               	jb	0x41d4ee <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>
+               	movl	92(%rax), %eax
+               	addl	$4294967165, %eax       # imm = 0xFFFFFF7D
+               	cmpl	$2, %eax
+               	jb	0x41d68e <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>

@@ -9469,51 +9578,50 @@
@@@[(6, 14), (18, 19), (47, 51), (58, 68)]@@@
-               	je	0x41d6bd <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x5d>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	jmp	0x41d6d9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x79>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x41d869 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x41d869 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
@@@@
+               	movl	16(%rbx), %eax
@@@@
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)
@@@@
-               	je	0x41d743 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
+               	je	0x41d8d3 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)

@@ -9556,26 +9664,27 @@
@@@[(6, 20), (21, 36)]@@@
-               	je	0x41d80b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %eax
-               	movq	8(%r15), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41d864 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc4>
-               	leal	1(%rax), %edx
+               	je	0x41d99b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	jbe	0x41d8a8 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x108>
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

@@ -9589,19 +9698,19 @@
@@@[(16, 22)]@@@
-               	callq	0x43b2a0 <ThrowException>
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax)
+               	callq	0x43bff0 <ThrowException>
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -9625,30 +9734,31 @@
@@@[(6, 25), (36, 40)]@@@
-               	je	0x41d922 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %r13d
-               	movq	8(%r15), %rbp
-               	cmpl	68(%rbp), %r13d
-               	jge	0x41d9a0 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf0>
-               	leal	1(%r13), %eax
-               	movl	%eax, 16(%r15)
-               	movl	%r13d, 20(%r15)
+               	je	0x41dac2 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
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

@@ -9695,16 +9805,17 @@
@@@[(13, 15), (16, 19)]@@@
-               	movslq	16(%r15), %rcx
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41da86 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x96>
+               	jbe	0x41dc29 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x99>
+               	movslq	%ecx, %rcx

@@ -9714,8 +9825,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -9735,18 +9846,19 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41db2b <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9b>
-               	movslq	16(%r15), %rcx
+               	je	0x41dcce <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9e>
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41db30 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa0>
+               	jbe	0x41dcd3 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa3>
+               	movslq	%ecx, %rcx

@@ -9756,9 +9868,9 @@
@@@[(3, 9)]@@@
-               	callq	0x419bd0 <ThrowNullPointerException>
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x419d50 <ThrowNullPointerException>
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax,%rax)

@@ -10829,26 +10941,27 @@
@@@[(17, 19), (26, 33)]@@@
-               	movslq	16(%rbx), %r14
+               	movl	16(%rbx), %r14d
@@@@
-               	jbe	0x41ea86 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd6>
-               	movq	(%rbp), %rax
-               	movw	%r15w, 16(%rbp,%r14,2)
+               	jbe	0x41ec29 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd9>
+               	movslq	%r14d, %rax
+               	movq	(%rbp), %rcx
+               	movw	%r15w, 16(%rbp,%rax,2)

@@ -10862,8 +10975,8 @@
@@@[(3, 7)]@@@
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -10916,17 +11029,17 @@
@@@[(3, 5), (6, 8), (12, 22)]@@@
-               	movl	%ecx, %ebp
+               	movl	%ecx, %ebx
@@@@
-               	movq	%rsi, %rbx
+               	movq	%rsi, %r15
@@@@
-               	je	0x41eb3f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	leaq	264919(%rip), %r12      # 0x45f620 <__unnamed_8>
-               	cmovneq	%rbx, %r12
+               	je	0x41ecdf <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testq	%r15, %r15
+               	leaq	266423(%rip), %rbp      # 0x45fda0 <__unnamed_8>
+               	cmovneq	%r15, %rbp

@@ -10940,7 +11053,7 @@
@@@[(3, 5)]@@@
-               	movq	(%r12), %rax
+               	movq	(%rbp), %rax

@@ -10948,49 +11061,51 @@
@@@[(3, 5), (7, 9), (10, 28), (31, 42), (44, 67), (68, 70), (74, 78)]@@@
-               	movq	%r12, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	movl	%ebp, %esi
+               	movl	%ebx, %esi
@@@@
-               	callq	0x41a630 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
-               	movl	%ebp, %ebx
-               	subl	%r13d, %ebx
-               	movq	8(%rsp), %r14
-               	movl	16(%r14), %esi
-               	addl	%ebx, %esi
-               	movq	%r14, %rdi
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movq	(%r12), %rax
+               	callq	0x41a7a0 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
+               	movl	%ebx, %r14d
+               	subl	%r13d, %r14d
+               	movq	8(%rsp), %r15
+               	movl	16(%r15), %esi
+               	addl	%r14d, %esi
+               	movq	%r15, %rdi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	(%rbp), %rax
@@@@
-               	jne	0x41ec6d <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x15d>
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
-               	callq	0x413720 <memcpy@plt>
-               	addl	%ebp, %ebx
-               	movq	%r14, %rdi
-               	movl	%ebx, %esi
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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

@@ -10999,27 +11114,26 @@
@@@[(3, 18), (19, 29), (30, 32), (33, 41)]@@@
-               	cmpl	%r13d, %ebp
-               	cmovll	%r13d, %ebp
-               	movq	%r12, %r14
-               	movl	%ebp, 4(%rsp)
-               	movq	8(%rsp), %rbx
-               	cmpl	%r13d, %ebp
-               	je	0x41ec38 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	nopl	(%rax)
-               	movzbl	286905(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	cmpl	%r13d, %ebx
+               	cmovll	%r13d, %ebx
+               	cmpl	%r13d, %ebx
+               	je	0x41ede6 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	nopl	(%rax,%rax)
+               	movzbl	288417(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41eca0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	8(%rbx), %rbp
-               	movq	%rbp, 64(%rsp)
-               	movslq	16(%rbx), %r12
+               	je	0x41ee40 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%r15), %r14
+               	movq	%r14, 64(%rsp)
+               	movl	16(%r15), %r12d
@@@@
-               	movq	%rbx, %rdi
+               	movq	8(%rsp), %rdi
@@@@
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%r15d, 16(%rbx)
-               	movq	(%r14), %rax
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	8(%rsp), %rax
+               	movl	%r15d, 16(%rax)
+               	movq	8(%rsp), %r15
+               	movq	(%rbp), %rax

@@ -11027,20 +11141,20 @@
@@@[(3, 5), (7, 12), (13, 28)]@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jbe	0x41ed09 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x1f9>
+               	cmpl	%r12d, 8(%r14)
+               	jbe	0x41eeb4 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x204>
+               	movslq	%r12d, %rcx
@@@@
-               	movq	(%rbp), %rcx
-               	movw	%ax, 16(%rbp,%r12,2)
-               	movl	4(%rsp), %ebp
-               	cmpl	%r13d, %ebp
-               	jne	0x41ec90 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
-               	jmp	0x41ec38 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	callq	0x419ca0 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	movq	(%r14), %rdx
+               	movw	%ax, 16(%r14,%rcx,2)
+               	cmpl	%r13d, %ebx
+               	jne	0x41ee30 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
+               	jmp	0x41ede6 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	callq	0x419e20 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax)

@@ -11052,62 +11166,62 @@
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
-               	je	0x41ed7f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %esi
+               	je	0x41ef2f <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%rbx), %esi
@@@@
-               	movq	%r15, %rdi
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r15), %r13
-               	movq	8(%r15), %r14
+               	movq	%rbx, %rdi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	16(%rbx), %r15d
+               	movq	8(%rbx), %r14
@@@@
-               	leaq	12(%rsp), %rbx
-               	leaq	159041(%rip), %rdx      # 0x445ae8 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	leaq	12(%rsp), %rbp
+               	leaq	162258(%rip), %rdx      # 0x446928 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
@@@@
-               	movq	%rbx, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	je	0x41ede6 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
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
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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

@@ -11140,33 +11254,34 @@
@@@[(14, 18), (19, 32), (34, 38), (39, 43), (44, 50)]@@@
-               	movl	16(%r12), %esi
-               	addl	8(%rbx), %esi
+               	movl	8(%rbx), %esi
+               	addl	16(%r12), %esi
@@@@
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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
-               	callq	0x413720 <memcpy@plt>
-               	leal	(%r15,%rbp), %ebx
+               	callq	0x413730 <memcpy@plt>
+               	addl	%ebp, %r15d
@@@@
-               	movl	%ebx, %esi
-               	callq	0x41ef20 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r12)
+               	movl	%r15d, %esi
+               	callq	0x41f0d0 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%r12)

@@ -11252,29 +11367,28 @@
@@@[(13, 15), (16, 19)]@@@
-               	testq	%rbp, %rbp
-               	je	0x41f0d1 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xe1>
@@@@
-               	js	0x41f138 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x148>
+               	je	0x41f27e <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xde>
+               	js	0x41f2e5 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x145>

@@ -11309,8 +11423,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41a080 <ThrowIllegalArgumentException>
-               	nopl	(%rax)
+               	callq	0x41a200 <ThrowIllegalArgumentException>
+               	nopw	(%rax,%rax)

@@ -12229,9 +12343,10 @@
@@@[(3, 4), (5, 9)]@@@
+               	movq	(%rax), %rax
@@@@
-               	jmpq	*(%rax)
-               	nopw	(%rax,%rax)
+               	jmpq	*%rax
+               	nopl	(%rax)

@@ -12480,20 +12595,21 @@
@@@[(3, 4), (6, 8), (11, 13)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax
@@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -12566,19 +12682,20 @@
@@@[(3, 4), (6, 8)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax

@@ -12677,20 +12794,22 @@
@@@[(13, 14), (22, 23)]@@@
+               	movq	32(%rsp), %rax
@@@@
+               	movq	32(%rsp), %rax

@@ -12701,7 +12820,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -12807,35 +12926,36 @@
@@@[(26, 34), (43, 46)]@@@
-               	callq	0x420490 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
-               	movslq	16(%r15), %rcx
-               	testq	%rcx, %rcx
-               	js	0x420749 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa9>
+               	callq	0x420650 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
+               	movl	16(%r15), %ecx
+               	testl	%ecx, %ecx
+               	js	0x420918 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa8>
@@@@
-               	jbe	0x42077c <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xdc>
+               	jbe	0x42094e <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xde>
+               	movslq	%ecx, %rcx

@@ -12879,65 +12999,65 @@
@@@[(3, 7), (9, 11), (16, 22), (24, 42), (45, 47), (49, 51), (52, 54), (67, 71), (72, 76), (80, 82), (88, 90)]@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
+               	movq	-64(%rax), %r15
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x420820 <kfun:kotlin.ranges.IntRange.$init_global#internal+0x60>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r12), %rdi
+               	je	0x4209ee <kfun:kotlin.ranges.IntRange.$init_global#internal+0x5e>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x428ed0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
-               	addq	$16, %rax
-               	movq	$0, 8(%r15)
-               	leaq	240260(%rip), %rcx      # 0x45b2d0 <ktypeglobal:kotlin.ranges.IntRange.Companion#internal>
-               	movq	%rcx, 16(%r15)
-               	movq	%rax, 24(%rsp)
-               	movq	%rax, 275044(%rip)      # 0x463ac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
-               	leaq	275037(%rip), %r14      # 0x463ac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	callq	0x4296e0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
+               	movq	$0, 8(%rax)
+               	leaq	241722(%rip), %rdx      # 0x45ba50 <ktypeglobal:kotlin.ranges.IntRange.Companion#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 24(%rsp)
+               	movq	%rcx, 276506(%rip)      # 0x464240 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	leaq	276499(%rip), %r14      # 0x464240 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	movq	276492(%rip), %r12      # 0x464240 <kvar:kotlin.ranges.IntRange.$companion#internal>
@@@@
-               	movq	288(%r12), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	296(%r12), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x420910 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
-               	movq	%rbx, 24(%r15)
+               	callq	0x420ae0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	movq	%rbx, 8(%r12)
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	274904(%rip), %rsi      # 0x463ac0 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	movq	%rax, 288(%r15)
+               	movq	276362(%rip), %rsi      # 0x464240 <kvar:kotlin.ranges.IntRange.$companion#internal>
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -12972,6 +13092,8 @@
@@@[(3, 5)]@@@
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 64(%rsp)

@@ -12987,18 +13109,18 @@
@@@[(13, 25)]@@@
-               	je	0x420a11 <kfun:kotlin.ranges.IntRange#isEmpty(){}kotlin.Boolean+0x31>
-               	leaq	274655(%rip), %rdi      # 0x463ae4 <state_global$kotlin.ranges.IntRange>
-               	leaq	-588(%rip), %rsi        # 0x4207c0 <kfun:kotlin.ranges.IntRange.$init_global#internal>
-               	callq	0x43b080 <CallInitGlobalPossiblyLock>
-               	movl	8(%rbx), %eax
-               	cmpl	12(%rbx), %eax
+               	je	0x420bf1 <kfun:kotlin.ranges.IntRange#isEmpty(){}kotlin.Boolean+0x31>
+               	leaq	276095(%rip), %rdi      # 0x464264 <state_global$kotlin.ranges.IntRange>
+               	leaq	-604(%rip), %rsi        # 0x420990 <kfun:kotlin.ranges.IntRange.$init_global#internal>
+               	callq	0x43bdd0 <CallInitGlobalPossiblyLock>
+               	movl	12(%rbx), %eax
+               	cmpl	%eax, 8(%rbx)

@@ -13010,69 +13132,69 @@
@@@[(71, 77)]@@@
-               	jne	0x420b0f <kfun:kotlin.ranges.IntRange#equals(kotlin.Any?){}kotlin.Boolean+0xef>
-               	movl	12(%r14), %eax
-               	cmpl	12(%rbx), %eax
+               	jne	0x420cef <kfun:kotlin.ranges.IntRange#equals(kotlin.Any?){}kotlin.Boolean+0xef>
+               	movl	12(%rbx), %eax
+               	cmpl	%eax, 12(%r14)

@@ -13287,12 +13409,13 @@
@@@[(3, 5), (8, 13)]@@@
-               	testl	%ebx, %ebx
+               	cmpl	$0, 24(%rax)
@@@@
-               	cmovnel	%r15d, %ebp
-               	movl	%ebp, 32(%rax)
+               	jne	0x421040 <kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator+0x90>
+               	movl	12(%rcx), %r15d
+               	movl	%r15d, 32(%rax)

@@ -13301,18 +13424,19 @@
@@@[(3, 4), (19, 21)]@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	cmpl	12(%rbx), %ecx
+               	cmpl	%ecx, 8(%rbx)

@@ -13355,15 +13479,15 @@
@@@[(3, 21)]@@@
-               	jne	0x420f23 <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x83>
-               	movl	8(%r14), %eax
-               	cmpl	8(%rbx), %eax
-               	jne	0x420f2b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
-               	movl	12(%r14), %eax
-               	cmpl	12(%rbx), %eax
-               	jne	0x420f2b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
-               	movl	16(%r14), %eax
-               	cmpl	16(%rbx), %eax
+               	jne	0x421113 <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x83>
+               	movl	8(%rbx), %eax
+               	cmpl	%eax, 8(%r14)
+               	jne	0x42111b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
+               	movl	12(%rbx), %eax
+               	cmpl	%eax, 12(%r14)
+               	jne	0x42111b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
+               	movl	16(%rbx), %eax
+               	cmpl	%eax, 16(%r14)

@@ -13438,72 +13562,72 @@
@@@[(79, 85)]@@@
-               	callq	0x41ee30 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
-               	xorl	%esi, %esi
-               	subl	16(%r13), %esi
+               	callq	0x41efe0 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movl	16(%r13), %esi
+               	negl	%esi

@@ -13573,112 +13697,113 @@
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
-               	jg	0x421300 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
-               	jmp	0x4214ee <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	leaq	8(%rsp), %rax
-               	movq	%rax, 104(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movq	%rax, 120(%rsp)
-               	movq	8(%rsp), %rcx
-               	movw	%bp, 24(%rsp)
-               	movq	%rax, 128(%rsp)
-               	cmpl	$1, 16(%rsp)
-               	jne	0x42141c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
+               	jg	0x4214f0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
+               	jmp	0x4216e8 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
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
+               	jne	0x42160c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
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
-               	jne	0x421514 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x304>
-               	movzwl	24(%rsp), %esi
-               	movq	40(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
+               	jne	0x42170e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x30e>
+               	movzwl	16(%r14), %esi
+               	movq	88(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax)

@@ -13693,16 +13818,16 @@
@@@[(3, 4), (5, 12)]@@@
-               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
@@@@
-               	js	0x4214ee <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	xorl	%r15d, %r15d
-               	movb	276719(%rip), %al       # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	js	0x4216da <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2da>
+               	xorl	%r13d, %r13d
+               	movq	%rbx, 8(%rsp)
+               	movb	278151(%rip), %al       # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>

@@ -13715,33 +13840,34 @@
@@@[(3, 18), (19, 33), (37, 40), (41, 45), (46, 53)]@@@
-               	movl	16(%rsp), %r14d
-               	testl	%r14d, %r14d
-               	cmovsl	%r15d, %r14d
-               	xorl	%r15d, %r15d
-               	cmpl	%r15d, %r14d
-               	je	0x4214d1 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
-               	nopl	(%rax)
-               	movzbl	276633(%rip), %eax      # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	8(%r14), %r15d
+               	testl	%r15d, %r15d
+               	cmovsl	%r13d, %r15d
+               	xorl	%r13d, %r13d
+               	cmpl	%r13d, %r15d
+               	je	0x4216c1 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
+               	movzbl	278065(%rip), %eax      # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4214c0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	cmpw	%bx, 24(%rsp,%r15,2)
-               	je	0x4214ec <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2dc>
-               	addq	$1, %r15
-               	cmpl	%r15d, %r14d
-               	jne	0x4214b0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
+               	je	0x4216b0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	cmpw	%bx, 16(%r14,%r13,2)
+               	je	0x4216e1 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e1>
+               	addq	$1, %r13
+               	cmpl	%r13d, %r15d
+               	jne	0x4216a0 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
@@@@
+               	movq	8(%rsp), %rbx
+               	movl	$0, %r13d
+               	jg	0x42164b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
@@@@
-               	movl	$0, %r15d
-               	jg	0x42145b <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
-               	jmp	0x4214ee <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
+               	jmp	0x4216e8 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
-               	addq	$136, %rsp
+               	movq	8(%rsp), %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
+               	addq	$152, %rsp

@@ -13750,37 +13876,37 @@
@@@[(9, 13), (22, 30), (47, 51)]@@@
-               	jne	0x421552 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x342>
-               	movq	296(%r13), %rdi
+               	jne	0x42174c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x34c>
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rbx, 56(%rsp)
-               	leaq	256112(%rip), %rsi      # 0x45fdc0 <__unnamed_52>
-               	jmp	0x42158a <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x37a>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 104(%rsp)
+               	leaq	257526(%rip), %rsi      # 0x460540 <__unnamed_52>
+               	jmp	0x421784 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x384>
+               	movq	296(%rbx), %rdi
@@@@
-               	callq	0x43b2a0 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43bff0 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -14201,25 +14327,28 @@
@@@[(14, 17), (19, 20), (21, 22), (26, 27), (28, 29)]@@@
-               	callq	0x420910 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	callq	0x420ae0 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	movq	%rbx, 24(%rsp)
@@@@
+               	movq	%rax, 288(%rbp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
+               	movaps	%xmm0, 64(%rsp)
@@@@
+               	movq	288(%rbp), %rax

@@ -14254,39 +14383,38 @@
@@@[(38, 43)]@@@
-               	jmp	0x421dbf <kfun:#main(){}+0x2bf>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x421fcf <kfun:#main(){}+0x2cf>
+               	nopw	(%rax,%rax)

@@ -14400,2807 +14528,2999 @@
@@@[(2910, 2918), (2919, 2924), (2925, 2933), (2934, 2936), (2937, 2943), (2947, 2953), (2957, 2963), (2967, 2973), (2977, 2983), (2987, 2993), (2997, 3003), (3007, 3013), (3017, 3023), (3027, 3033), (3037, 3043), (3047, 3053), (3057, 3063), (3067, 3073), (3077, 3083), (3087, 3093), (3097, 3103), (3107, 3113), (3117, 3123), (3127, 3133), (3137, 3143), (3147, 3153), (3157, 3163), (3167, 3173), (3177, 3183), (3187, 3193), (3197, 3203), (3207, 3213), (3217, 3223), (3227, 3233), (3237, 3243), (3247, 3253), (3257, 3263), (3267, 3273), (3277, 3283), (3287, 3293), (3297, 3303), (3307, 3313), (3317, 3323), (3327, 3333), (3337, 3343), (3347, 3353), (3357, 3363), (3367, 3373), (3377, 3383), (3387, 3393), (3397, 3403), (3407, 3413), (3417, 3423), (3427, 3433), (3437, 3443), (3447, 3453), (3457, 3463), (3467, 3473), (3477, 3483), (3487, 3493), (3497, 3503), (3507, 3513), (3517, 3523), (3527, 3533), (3537, 3543), (3547, 3553), (3557, 3563), (3567, 3573), (3577, 3583), (3587, 3593), (3597, 3603), (3607, 3613), (3617, 3623), (3627, 3633), (3637, 3643), (3647, 3653), (3657, 3663), (3667, 3673), (3677, 3683), (3687, 3693), (3697, 3703), (3707, 3713), (3717, 3723), (3727, 3733), (3737, 3743), (3747, 3753), (3757, 3763), (3767, 3773), (3777, 3783), (3787, 3793), (3797, 3803), (3807, 3813), (3817, 3823), (3827, 3833), (3837, 3843), (3847, 3853), (3857, 3863), (3867, 3880), (3887, 3893), (3897, 3917), (3918, 3920)]@@@
-               	cmpb	$0, 262609(%rip)        # 0x463ae8 <_Konan_init_stdlib_guard>
-               	je	0x423927 <_Konan_constructors+0x17>
-               	cmpb	$0, 262601(%rip)        # 0x463ae9 <_Konan_init_main_guard>
-               	je	0x42442d <_Konan_constructors+0xb1d>
+               	cmpl	$0, 264001(%rip)        # 0x464268 <state_global$kotlin.ranges.IntRange+0x4>
+               	je	0x423b37 <_Konan_constructors+0x17>
+               	cmpl	$0, 263996(%rip)        # 0x46426c <state_global$kotlin.ranges.IntRange+0x8>
+               	je	0x424a55 <_Konan_constructors+0xf35>
@@@@
-               	movb	$1, 262586(%rip)        # 0x463ae8 <_Konan_init_stdlib_guard>
-               	leaq	367507(%rip), %rax      # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	movq	367532(%rip), %rcx      # 0x47d4e8 <(anonymous namespace)::initTailNode>
+               	movl	$1, 263975(%rip)        # 0x464268 <state_global$kotlin.ranges.IntRange+0x4>
+               	movq	368928(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
@@@@
-               	cmpq	$0, 367488(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	cmoveq	%rax, %rcx
-               	leaq	256469(%rip), %rdx      # 0x462328 <init_node>
-               	movq	%rdx, (%rcx)
-               	cmpq	$0, 367466(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256459(%rip), %rcx      # 0x462330 <init_node+0x8>
+               	cmpq	$0, 368884(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
+               	leaq	368877(%rip), %rax      # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	leaq	256456(%rip), %rdx      # 0x462338 <init_node.19>
+               	leaq	255938(%rip), %rdx      # 0x462328 <init_node>
@@@@
-               	cmpq	$0, 367437(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256446(%rip), %rcx      # 0x462340 <init_node.19+0x8>
+               	movq	%rdx, 368888(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368881(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368837(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367408(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256433(%rip), %rcx      # 0x462350 <init_node.20+0x8>
+               	movq	%rdx, 368848(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368841(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368797(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367379(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256420(%rip), %rcx      # 0x462360 <init_node.21+0x8>
+               	movq	%rdx, 368808(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368801(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368757(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367350(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256407(%rip), %rcx      # 0x462370 <init_node.22+0x8>
+               	movq	%rdx, 368768(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368761(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368717(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367321(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256394(%rip), %rcx      # 0x462380 <init_node.23+0x8>
+               	movq	%rdx, 368728(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368721(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368677(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367292(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256381(%rip), %rcx      # 0x462390 <init_node.24+0x8>
+               	movq	%rdx, 368688(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368681(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368637(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367263(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256368(%rip), %rcx      # 0x4623a0 <init_node.25+0x8>
+               	movq	%rdx, 368648(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368641(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368597(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367234(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256355(%rip), %rcx      # 0x4623b0 <init_node.26+0x8>
+               	movq	%rdx, 368608(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368601(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368557(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367205(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256342(%rip), %rcx      # 0x4623c0 <init_node.27+0x8>
+               	movq	%rdx, 368568(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368561(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368517(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367176(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256329(%rip), %rcx      # 0x4623d0 <init_node.28+0x8>
+               	movq	%rdx, 368528(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368521(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368477(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367147(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256316(%rip), %rcx      # 0x4623e0 <init_node.29+0x8>
+               	movq	%rdx, 368488(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368481(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368437(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367118(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256303(%rip), %rcx      # 0x4623f0 <init_node.30+0x8>
+               	movq	%rdx, 368448(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368441(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368397(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367089(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256290(%rip), %rcx      # 0x462400 <init_node.31+0x8>
+               	movq	%rdx, 368408(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368401(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368357(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367060(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256277(%rip), %rcx      # 0x462410 <init_node.32+0x8>
+               	movq	%rdx, 368368(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368361(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368317(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367031(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256264(%rip), %rcx      # 0x462420 <init_node.33+0x8>
+               	movq	%rdx, 368328(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368321(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368277(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 367002(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256251(%rip), %rcx      # 0x462430 <init_node.34+0x8>
+               	movq	%rdx, 368288(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368281(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368237(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366973(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256238(%rip), %rcx      # 0x462440 <init_node.35+0x8>
+               	movq	%rdx, 368248(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368241(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368197(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366944(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256225(%rip), %rcx      # 0x462450 <init_node.36+0x8>
+               	movq	%rdx, 368208(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368201(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368157(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366915(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256212(%rip), %rcx      # 0x462460 <init_node.37+0x8>
+               	movq	%rdx, 368168(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368161(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368117(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366886(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256199(%rip), %rcx      # 0x462470 <init_node.38+0x8>
+               	movq	%rdx, 368128(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368121(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368077(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366857(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256186(%rip), %rcx      # 0x462480 <init_node.39+0x8>
+               	movq	%rdx, 368088(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368081(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 368037(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366828(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256173(%rip), %rcx      # 0x462490 <init_node.40+0x8>
+               	movq	%rdx, 368048(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368041(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367997(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366799(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256160(%rip), %rcx      # 0x4624a0 <init_node.41+0x8>
+               	movq	%rdx, 368008(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	368001(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367957(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366770(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256147(%rip), %rcx      # 0x4624b0 <init_node.42+0x8>
+               	movq	%rdx, 367968(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367961(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367917(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366741(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256134(%rip), %rcx      # 0x4624c0 <init_node.43+0x8>
+               	movq	%rdx, 367928(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367921(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367877(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366712(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256121(%rip), %rcx      # 0x4624d0 <init_node.44+0x8>
+               	movq	%rdx, 367888(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367881(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367837(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366683(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256108(%rip), %rcx      # 0x4624e0 <init_node.45+0x8>
+               	movq	%rdx, 367848(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367841(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367797(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366654(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256095(%rip), %rcx      # 0x4624f0 <init_node.46+0x8>
+               	movq	%rdx, 367808(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367801(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367757(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366625(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256082(%rip), %rcx      # 0x462500 <init_node.47+0x8>
+               	movq	%rdx, 367768(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367761(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367717(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366596(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256069(%rip), %rcx      # 0x462510 <init_node.48+0x8>
+               	movq	%rdx, 367728(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367721(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367677(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366567(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256056(%rip), %rcx      # 0x462520 <init_node.49+0x8>
+               	movq	%rdx, 367688(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367681(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367637(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366538(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256043(%rip), %rcx      # 0x462530 <init_node.50+0x8>
+               	movq	%rdx, 367648(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367641(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367597(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366509(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256030(%rip), %rcx      # 0x462540 <init_node.51+0x8>
+               	movq	%rdx, 367608(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367601(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367557(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366480(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256017(%rip), %rcx      # 0x462550 <init_node.52+0x8>
+               	movq	%rdx, 367568(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367561(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367517(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366451(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	256004(%rip), %rcx      # 0x462560 <init_node.53+0x8>
+               	movq	%rdx, 367528(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367521(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367477(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366422(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255991(%rip), %rcx      # 0x462570 <init_node.54+0x8>
+               	movq	%rdx, 367488(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367481(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367437(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366393(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255978(%rip), %rcx      # 0x462580 <init_node.55+0x8>
+               	movq	%rdx, 367448(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367441(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367397(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366364(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255965(%rip), %rcx      # 0x462590 <init_node.56+0x8>
+               	movq	%rdx, 367408(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367401(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367357(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366335(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255952(%rip), %rcx      # 0x4625a0 <init_node.57+0x8>
+               	movq	%rdx, 367368(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367361(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367317(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366306(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255939(%rip), %rcx      # 0x4625b0 <init_node.58+0x8>
+               	movq	%rdx, 367328(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367321(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367277(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366277(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255926(%rip), %rcx      # 0x4625c0 <init_node.59+0x8>
+               	movq	%rdx, 367288(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367281(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367237(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366248(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255913(%rip), %rcx      # 0x4625d0 <init_node.60+0x8>
+               	movq	%rdx, 367248(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367241(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367197(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366219(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255900(%rip), %rcx      # 0x4625e0 <init_node.61+0x8>
+               	movq	%rdx, 367208(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367201(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367157(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366190(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255887(%rip), %rcx      # 0x4625f0 <init_node.62+0x8>
+               	movq	%rdx, 367168(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367161(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367117(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366161(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255874(%rip), %rcx      # 0x462600 <init_node.63+0x8>
+               	movq	%rdx, 367128(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367121(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367077(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366132(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255861(%rip), %rcx      # 0x462610 <init_node.64+0x8>
+               	movq	%rdx, 367088(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367081(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 367037(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366103(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255848(%rip), %rcx      # 0x462620 <init_node.65+0x8>
+               	movq	%rdx, 367048(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367041(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366997(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366074(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255835(%rip), %rcx      # 0x462630 <init_node.66+0x8>
+               	movq	%rdx, 367008(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	367001(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366957(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366045(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255822(%rip), %rcx      # 0x462640 <init_node.67+0x8>
+               	movq	%rdx, 366968(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366961(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366917(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 366016(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255809(%rip), %rcx      # 0x462650 <init_node.68+0x8>
+               	movq	%rdx, 366928(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366921(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366877(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365987(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255796(%rip), %rcx      # 0x462660 <init_node.69+0x8>
+               	movq	%rdx, 366888(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366881(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366837(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365958(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255783(%rip), %rcx      # 0x462670 <init_node.70+0x8>
+               	movq	%rdx, 366848(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366841(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366797(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365929(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255770(%rip), %rcx      # 0x462680 <init_node.71+0x8>
+               	movq	%rdx, 366808(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366801(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366757(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365900(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255757(%rip), %rcx      # 0x462690 <init_node.72+0x8>
+               	movq	%rdx, 366768(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366761(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366717(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365871(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255744(%rip), %rcx      # 0x4626a0 <init_node.73+0x8>
+               	movq	%rdx, 366728(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366721(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366677(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365842(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255731(%rip), %rcx      # 0x4626b0 <init_node.74+0x8>
+               	movq	%rdx, 366688(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366681(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366637(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365813(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255718(%rip), %rcx      # 0x4626c0 <init_node.75+0x8>
+               	movq	%rdx, 366648(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366641(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366597(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365784(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255705(%rip), %rcx      # 0x4626d0 <init_node.76+0x8>
+               	movq	%rdx, 366608(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366601(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366557(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365755(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255692(%rip), %rcx      # 0x4626e0 <init_node.77+0x8>
+               	movq	%rdx, 366568(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366561(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366517(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365726(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255679(%rip), %rcx      # 0x4626f0 <init_node.78+0x8>
+               	movq	%rdx, 366528(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366521(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366477(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365697(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255666(%rip), %rcx      # 0x462700 <init_node.79+0x8>
+               	movq	%rdx, 366488(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366481(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366437(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365668(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255653(%rip), %rcx      # 0x462710 <init_node.80+0x8>
+               	movq	%rdx, 366448(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366441(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366397(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365639(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255640(%rip), %rcx      # 0x462720 <init_node.81+0x8>
+               	movq	%rdx, 366408(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366401(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366357(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365610(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255627(%rip), %rcx      # 0x462730 <init_node.82+0x8>
+               	movq	%rdx, 366368(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366361(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366317(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365581(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255614(%rip), %rcx      # 0x462740 <init_node.83+0x8>
+               	movq	%rdx, 366328(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366321(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366277(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365552(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255601(%rip), %rcx      # 0x462750 <init_node.84+0x8>
+               	movq	%rdx, 366288(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366281(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366237(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365523(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255588(%rip), %rcx      # 0x462760 <init_node.85+0x8>
+               	movq	%rdx, 366248(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366241(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366197(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365494(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255575(%rip), %rcx      # 0x462770 <init_node.86+0x8>
+               	movq	%rdx, 366208(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366201(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366157(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365465(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255562(%rip), %rcx      # 0x462780 <init_node.87+0x8>
+               	movq	%rdx, 366168(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366161(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366117(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365436(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255549(%rip), %rcx      # 0x462790 <init_node.88+0x8>
+               	movq	%rdx, 366128(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366121(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366077(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365407(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255536(%rip), %rcx      # 0x4627a0 <init_node.89+0x8>
+               	movq	%rdx, 366088(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366081(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 366037(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365378(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255523(%rip), %rcx      # 0x4627b0 <init_node.90+0x8>
+               	movq	%rdx, 366048(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366041(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365997(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365349(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255510(%rip), %rcx      # 0x4627c0 <init_node.91+0x8>
+               	movq	%rdx, 366008(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	366001(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365957(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365320(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255497(%rip), %rcx      # 0x4627d0 <init_node.92+0x8>
+               	movq	%rdx, 365968(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365961(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365917(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365291(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255484(%rip), %rcx      # 0x4627e0 <init_node.93+0x8>
+               	movq	%rdx, 365928(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365921(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365877(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365262(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255471(%rip), %rcx      # 0x4627f0 <init_node.94+0x8>
+               	movq	%rdx, 365888(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365881(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365837(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365233(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255458(%rip), %rcx      # 0x462800 <init_node.95+0x8>
+               	movq	%rdx, 365848(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365841(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365797(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365204(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255445(%rip), %rcx      # 0x462810 <init_node.96+0x8>
+               	movq	%rdx, 365808(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365801(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365757(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365175(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255432(%rip), %rcx      # 0x462820 <init_node.97+0x8>
+               	movq	%rdx, 365768(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365761(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365717(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365146(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255419(%rip), %rcx      # 0x462830 <init_node.98+0x8>
+               	movq	%rdx, 365728(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365721(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365677(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365117(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255406(%rip), %rcx      # 0x462840 <init_node.99+0x8>
+               	movq	%rdx, 365688(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365681(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365637(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365088(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255393(%rip), %rcx      # 0x462850 <init_node.100+0x8>
+               	movq	%rdx, 365648(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365641(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365597(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365059(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255380(%rip), %rcx      # 0x462860 <init_node.101+0x8>
+               	movq	%rdx, 365608(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365601(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365557(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365030(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255367(%rip), %rcx      # 0x462870 <init_node.102+0x8>
+               	movq	%rdx, 365568(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365561(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365517(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 365001(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255354(%rip), %rcx      # 0x462880 <init_node.103+0x8>
+               	movq	%rdx, 365528(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365521(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365477(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364972(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255341(%rip), %rcx      # 0x462890 <init_node.104+0x8>
+               	movq	%rdx, 365488(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365481(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365437(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364943(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255328(%rip), %rcx      # 0x4628a0 <init_node.105+0x8>
+               	movq	%rdx, 365448(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365441(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365397(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364914(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255315(%rip), %rcx      # 0x4628b0 <init_node.106+0x8>
+               	movq	%rdx, 365408(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365401(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365357(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364885(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255302(%rip), %rcx      # 0x4628c0 <init_node.107+0x8>
+               	movq	%rdx, 365368(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365361(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365317(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364856(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255289(%rip), %rcx      # 0x4628d0 <init_node.108+0x8>
+               	movq	%rdx, 365328(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365321(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365277(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364827(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255276(%rip), %rcx      # 0x4628e0 <init_node.109+0x8>
+               	movq	%rdx, 365288(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365281(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365237(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364798(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255263(%rip), %rcx      # 0x4628f0 <init_node.110+0x8>
+               	movq	%rdx, 365248(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365241(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365197(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364769(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255250(%rip), %rcx      # 0x462900 <init_node.111+0x8>
+               	movq	%rdx, 365208(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365201(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365157(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 364740(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255237(%rip), %rcx      # 0x462910 <init_node.112+0x8>
-               	cmoveq	%rax, %rcx
-               	leaq	255234(%rip), %rax      # 0x462918 <init_node.113>
-               	movq	%rax, (%rcx)
-               	movq	%rax, 364744(%rip)      # 0x47d4e8 <(anonymous namespace)::initTailNode>
-               	cmpb	$0, 259778(%rip)        # 0x463ae9 <_Konan_init_main_guard>
-               	jne	0x423926 <_Konan_constructors+0x16>
-               	movb	$1, 259765(%rip)        # 0x463ae9 <_Konan_init_main_guard>
-               	leaq	364685(%rip), %rax      # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	movq	364710(%rip), %rcx      # 0x47d4e8 <(anonymous namespace)::initTailNode>
+               	movq	%rdx, 365168(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365161(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
@@@@
-               	cmpq	$0, 364644(%rip)        # 0x47d4c8 <(anonymous namespace)::initHeadNode>
-               	leaq	255173(%rip), %rcx      # 0x462930 <init_node.114+0x8>
+               	movq	%rdx, 365128(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365121(%rip), %rcx      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 365077(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	movq	%rax, 364648(%rip)      # 0x47d4e8 <(anonymous namespace)::initTailNode>
+               	movq	%rax, 365088(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	cmpl	$0, 260125(%rip)        # 0x46426c <state_global$kotlin.ranges.IntRange+0x8>
+               	jne	0x423b36 <_Konan_constructors+0x16>
+               	movl	$1, 260109(%rip)        # 0x46426c <state_global$kotlin.ranges.IntRange+0x8>
+               	movq	365058(%rip), %rax      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rax
+               	cmpq	$0, 365014(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
+               	leaq	365007(%rip), %rcx      # 0x47dc48 <(anonymous namespace)::initHeadNode>
+               	cmoveq	%rcx, %rax
+               	leaq	253604(%rip), %rdx      # 0x462928 <init_node.114>
+               	movq	%rdx, (%rax)
+               	movq	%rdx, 365018(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	movq	365011(%rip), %rax      # 0x47dc68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rax
+               	cmpq	$0, 364967(%rip)        # 0x47dc48 <(anonymous namespace)::initHeadNode>
+               	cmoveq	%rcx, %rax
+               	leaq	253580(%rip), %rcx      # 0x462938 <init_node.115>
+               	movq	%rcx, (%rax)
+               	movq	%rcx, 364978(%rip)      # 0x47dc68 <(anonymous namespace)::initTailNode>
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -17371,17 +17691,17 @@
@@@[(10, 11), (12, 15)]@@@
-               	movq	(%r15), %rdi
@@@@
-               	addq	8(%rbx), %rdi
+               	movq	8(%rbx), %rdi
+               	addq	(%r15), %rdi

@@ -17643,84 +17963,85 @@
@@@[(54, 58), (75, 78), (79, 87), (108, 112)]@@@
-               	movq	(%rbx), %rdi
-               	callq	0x424b80 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x4251b0 <std::thread::~thread()>
@@@@
-               	testq	%rdi, %rdi
-               	jne	0x424b86 <std::thread::~thread()+0x6>
-               	retq
@@@@
-               	callq	0x43cf13 <std::terminate()>
-               	nopl	(%rax)
+               	cmpq	$0, (%rdi)
+               	jne	0x4251b9 <std::thread::~thread()+0x9>
+               	popq	%rax
+               	retq
+               	callq	0x43dd73 <std::terminate()>
+               	nop
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x424b80 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x4251b0 <std::thread::~thread()>

@@ -18379,42 +18700,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -18423,7 +18746,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -18435,42 +18758,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -18479,7 +18804,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -18491,42 +18816,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -18535,7 +18862,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -18646,31 +18973,35 @@
@@@[(3, 9), (14, 18), (25, 29), (33, 37), (38, 42)]@@@
-               	callq	0x43d1c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 216(%rbx)
+               	callq	0x43e024 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
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
-               	jmp	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	jmp	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -18710,8 +19041,10 @@
@@@[(3, 9)]@@@
-               	callq	0x43d1c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x43e024 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -18722,14 +19055,14 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -18745,30 +19078,34 @@
@@@[(3, 9), (14, 18), (25, 29)]@@@
-               	callq	0x43d1c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 224(%r14)
+               	callq	0x43e024 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
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

@@ -18790,12 +19127,14 @@
@@@[(3, 9)]@@@
-               	callq	0x43d1c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 40(%rbx)
+               	callq	0x43e024 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	40(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%rbx)

@@ -18803,7 +19142,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -18837,97 +19176,96 @@
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
-               	je	0x425dba <AddTLSRecord+0x24a>
-               	nopl	(%rax)
+               	je	0x42644a <AddTLSRecord+0x24a>
+               	nopw	(%rax,%rax)

@@ -18951,98 +19289,102 @@
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

@@ -19062,79 +19404,80 @@
@@@[(6, 10), (11, 13), (19, 21), (25, 35), (36, 38), (42, 50), (51, 61), (62, 64), (69, 71), (72, 78), (80, 82), (89, 101), (102, 104), (105, 114), (118, 120)]@@@
-               	je	0x425f2b <LookupTLS+0x5b>
-               	movq	104(%r9), %rbx
+               	je	0x4265cb <LookupTLS+0x5b>
+               	movq	104(%r9), %rbp
@@@@
-               	orq	%rbx, %rax
+               	orq	%rbp, %rax
@@@@
-               	divq	%rbx
+               	divq	%rbp
@@@@
-               	jne	0x425f51 <LookupTLS+0x81>
-               	jmp	0x425fac <LookupTLS+0xdc>
-               	addl	168(%r9), %r14d
-               	jmp	0x425fc8 <LookupTLS+0xf8>
-               	leaq	252810(%rip), %rax      # 0x463ac8 <__KonanTlsKey>
+               	jne	0x4265f1 <LookupTLS+0x81>
+               	jmp	0x42664c <LookupTLS+0xdc>
+               	movq	168(%r9), %rax
+               	jmp	0x426668 <LookupTLS+0xf8>
+               	leaq	253034(%rip), %rax      # 0x464248 <__KonanTlsKey>
@@@@
-               	divl	%ebx
+               	divl	%ebp
@@@@
-               	je	0x425fac <LookupTLS+0xdc>
-               	movq	(%rax), %rbp
-               	cmpq	%r8, 8(%rbp)
-               	je	0x425fa7 <LookupTLS+0xd7>
+               	je	0x42664c <LookupTLS+0xdc>
+               	movq	(%rax), %rbx
+               	cmpq	%r8, 8(%rbx)
+               	je	0x426647 <LookupTLS+0xd7>
@@@@
-               	movq	%rbp, %rdi
-               	movq	(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x425fac <LookupTLS+0xdc>
-               	movq	8(%rbp), %rsi
+               	movq	%rbx, %rdi
+               	movq	(%rbx), %rbx
+               	testq	%rbx, %rbx
+               	je	0x42664c <LookupTLS+0xdc>
+               	movq	8(%rbx), %rsi
@@@@
-               	orq	%rbx, %rax
+               	orq	%rbp, %rax
@@@@
-               	divq	%rbx
+               	divq	%rbp
@@@@
-               	je	0x425f9b <LookupTLS+0xcb>
-               	jmp	0x425fac <LookupTLS+0xdc>
-               	nop
+               	je	0x42663b <LookupTLS+0xcb>
+               	jmp	0x42664c <LookupTLS+0xdc>
+               	nopl	(%rax)
@@@@
-               	divl	%ebx
+               	divl	%ebp
@@@@
-               	jne	0x425fae <LookupTLS+0xde>
-               	jmp	0x425fac <LookupTLS+0xdc>
-               	testq	%rbp, %rbp
-               	jne	0x425fae <LookupTLS+0xde>
-               	xorl	%ebp, %ebp
-               	movq	8(%rbp), %rax
+               	jne	0x42664e <LookupTLS+0xde>
+               	jmp	0x42664c <LookupTLS+0xdc>
+               	testq	%rbx, %rbx
+               	jne	0x42664e <LookupTLS+0xde>
+               	xorl	%ebx, %ebx
+               	movq	8(%rbx), %rax
@@@@
-               	movq	16(%rbp), %rax
+               	movq	16(%rbx), %rax
@@@@
-               	addl	16(%rbp), %r14d
-               	movslq	%r14d, %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
+               	movq	16(%rbx), %rax
+               	addl	%r14d, %eax
+               	cltq
+               	movq	72(%r9), %rcx
+               	leaq	(%rcx,%rax,8), %rax
@@@@
-               	nopl	(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -19142,92 +19485,93 @@
@@@[(39, 45), (46, 53), (70, 76)]@@@
-               	movslq	8(%rsi), %rdx
-               	testq	%rdx, %rdx
-               	je	0x4260f6 <Kotlin_processArrayInMark+0xb6>
+               	movl	8(%rsi), %eax
+               	testl	%eax, %eax
+               	je	0x426796 <Kotlin_processArrayInMark+0xb6>
@@@@
-               	leaq	-8(,%rdx,8), %r8
-               	testb	$8, %r8b
-               	jne	0x426086 <Kotlin_processArrayInMark+0x46>
+               	movslq	%eax, %r8
+               	leaq	-8(,%r8,8), %rdx
+               	testb	$8, %dl
+               	jne	0x426726 <Kotlin_processArrayInMark+0x46>
@@@@
-               	testq	%r8, %r8
-               	je	0x4260f6 <Kotlin_processArrayInMark+0xb6>
-               	leaq	(%rsi,%rdx,8), %r8
+               	testq	%rdx, %rdx
+               	je	0x426796 <Kotlin_processArrayInMark+0xb6>
+               	leaq	(%rsi,%r8,8), %r8

@@ -19349,215 +19693,221 @@
@@@[(105, 109), (133, 147), (148, 152)]@@@
-               	addq	$-1, 252268(%rip)       # 0x463d98 <kotlin::mm::GlobalData::instance_+0xa8>
+               	movq	252501(%rip), %rax      # 0x464520 <kotlin::mm::GlobalData::instance_+0xa8>
+               	addq	$-1, %rax
+               	movq	%rax, 252490(%rip)      # 0x464520 <kotlin::mm::GlobalData::instance_+0xa8>
@@@@
-               	callq	0x43d17e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 24(%rsp)
-               	addq	$-1, 252216(%rip)       # 0x463db0 <kotlin::mm::GlobalData::instance_+0xc0>
-               	jmp	0x42643c <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x17c>
-               	movq	252191(%rip), %rdi      # 0x463da0 <kotlin::mm::GlobalData::instance_+0xb0>
+               	callq	0x43dfde <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	252431(%rip), %rax      # 0x464538 <kotlin::mm::GlobalData::instance_+0xc0>
+               	addq	$-1, %rax
+               	movq	%rax, 252420(%rip)      # 0x464538 <kotlin::mm::GlobalData::instance_+0xc0>
+               	jmp	0x426ae6 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x186>
+               	movq	252395(%rip), %rdi      # 0x464528 <kotlin::mm::GlobalData::instance_+0xb0>
@@@@
-               	je	0x4264a0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x1e0>
-               	nopw	(%rax,%rax)
+               	je	0x426b60 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x200>
+               	nopw	%cs:(%rax,%rax)

@@ -19680,213 +20030,226 @@
@@@[(3, 22), (23, 25), (26, 38), (39, 53), (54, 61), (62, 72), (73, 79), (81, 94), (101, 107), (108, 126), (127, 129), (133, 138), (142, 146), (151, 163), (178, 188), (189, 200), (204, 208), (212, 240), (241, 244), (245, 247), (248, 259), (260, 261), (262, 267), (268, 269), (270, 274), (281, 285), (286, 289), (290, 296), (297, 304), (308, 315), (319, 333), (335, 353), (355, 363)]@@@
-               	movq	280(%r12), %rdx
-               	xorl	%ecx, %ecx
-               	testq	%rdx, %rdx
-               	je	0x4268b7 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xc7>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %rsi
-               	leaq	(,%rax,8), %rdi
-               	movslq	20(%rdx), %rbp
-               	leaq	(%rsi,%rbp,8), %rbx
+               	movq	280(%r12), %r13
+               	movq	%r13, 8(%rsp)
+               	testq	%r13, %r13
+               	je	0x426fa4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf4>
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
-               	je	0x4268c5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
+               	movq	%rbp, 16(%rsp)
+               	movq	%rbx, 24(%rsp)
+               	testq	%r13, %r13
+               	je	0x426fcc <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	cmpq	%rbx, %rbp
+               	jb	0x426fcc <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
@@@@
-               	cmpq	%rbx, %r13
-               	jb	0x4268c5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
-               	movq	8(%rdx), %rdx
-               	testq	%rdx, %rdx
-               	je	0x4268be <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xce>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %r13
-               	addq	$24, %r13
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x426fb2 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x102>
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
-               	jae	0x426885 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x95>
-               	jmp	0x4268c5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x426f60 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xb0>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x426fcc <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	pxor	%xmm0, %xmm0
+               	movdqa	%xmm0, 16(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	jmp	0x4268c5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	jmp	0x426fca <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11a>
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
-               	jne	0x4268e0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf0>
-               	testq	%rbp, %rbp
-               	jne	0x42691d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	movl	$1, %ecx
-               	movq	%rsi, %rdx
+               	jne	0x426fe0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x130>
@@@@
-               	je	0x4268cf <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
-               	jmp	0x42691d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	nopl	(%rax)
-               	movl	$2, %ecx
-               	movq	%rbp, %rdx
-               	cmpq	%rbp, %rdi
-               	je	0x4268cf <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
+               	jne	0x42701a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	testq	%rbp, %rbp
+               	jne	0x42701a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	movq	%rdx, 8(%rsp)
+               	movl	$1, %esi
+               	movq	%rdx, %r13
+               	jmp	0x426fd8 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
+               	nop
+               	movl	$2, %esi
+               	cmpq	%r13, %rcx
+               	je	0x426fd8 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
@@@@
-               	movdqa	%xmm0, (%rsp)
+               	movdqa	%xmm0, 32(%rsp)
@@@@
-               	jne	0x426b61 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x371>
-               	movq	(%rbp), %rsi
+               	jne	0x427293 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3e3>
+               	movq	8(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x426968 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x178>
-               	movdqa	(%rsp), %xmm1
+               	je	0x42706c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1bc>
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
-               	je	0x426990 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1a0>
-               	jmp	0x426aab <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2bb>
-               	testq	%rbp, %rbp
-               	jne	0x426926 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	%rcx, %rdi
-               	movq	%rcx, %rsi
+               	cmpq	%rcx, %r13
+               	je	0x427090 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1e0>
+               	jmp	0x4271ce <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x31e>
@@@@
-               	je	0x42697c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x18c>
-               	jmp	0x426926 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	(%r13), %rsi
+               	jne	0x427024 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	testq	%rbp, %rbp
+               	jne	0x427024 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
+               	movq	%rdx, %r13
+               	jmp	0x42707f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1cf>
+               	movq	16(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x4269f8 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x208>
-               	movdqa	(%rsp), %xmm1
+               	je	0x427101 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x251>
+               	movdqa	32(%rsp), %xmm1
@@@@
-               	movapd	%xmm1, (%rsp)
-               	addq	$8, %r13
-               	testq	%rbp, %rbp
-               	je	0x426a51 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	cmpq	%rbx, %r13
-               	jb	0x426a51 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	movq	8(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x426a4a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x25a>
-               	movslq	16(%rbp), %rax
-               	leaq	24(,%rax,8), %r13
-               	addq	%rbp, %r13
+               	movapd	%xmm1, 32(%rsp)
+               	addq	$8, %rbp
+               	movq	%rbp, 16(%rsp)
+               	testq	%r13, %r13
+               	je	0x42717e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	cmpq	%rbx, %rbp
+               	jb	0x42717e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	nopl	(%rax)
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x427164 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2b4>
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
-               	jae	0x426a15 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x225>
-               	jmp	0x426a51 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x427120 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x42717e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
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
-               	jne	0x426a70 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x280>
+               	jne	0x427190 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2e0>
+               	testq	%r13, %r13
+               	jne	0x427024 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	jne	0x426926 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	jne	0x427024 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
@@@@
-               	movq	%rcx, %rdi
-               	testq	%r13, %r13
-               	je	0x426a60 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x426926 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	movq	%rdx, %r13
+               	jmp	0x42718a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
@@@@
-               	movq	%rbp, %rdi
-               	cmpq	%rbp, %rdx
-               	je	0x426a60 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x426926 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	cmpq	%r13, %rcx
+               	je	0x42718a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
+               	jmp	0x427024 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	movdqa	%xmm0, (%rsp)
-               	jmp	0x426ac5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d5>
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movdqa	%xmm0, 32(%rsp)
+               	jmp	0x4271f5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x345>
+               	nopw	(%rax,%rax)
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x426ac0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d0>
-               	cmpb	$0, 249888(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	je	0x426b03 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	cmpq	%r14, 249871(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	jne	0x426b03 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	leaq	249862(%rip), %rcx      # 0x463af0 <(anonymous namespace)::current>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	jne	0x4271f0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x340>
+               	cmpb	$0, 249976(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x427234 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	cmpq	%r14, 249959(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	jne	0x427234 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	leaq	249950(%rip), %rcx      # 0x464278 <(anonymous namespace)::current>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	je	0x426b2f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x33f>
-               	movdqu	(%rax), %xmm1
-               	jmp	0x426b43 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x353>
-               	cmpb	$0, 250094(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x426b4b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	cmpq	%r14, 250077(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x426b4b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	leaq	250068(%rip), %rcx      # 0x463bf0 <(anonymous namespace)::last>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	je	0x427261 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3b1>
+               	movupd	(%rax), %xmm1
+               	jmp	0x427275 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3c5>
+               	cmpb	$0, 250181(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x42727d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	cmpq	%r14, 250164(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x42727d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	leaq	250155(%rip), %rcx      # 0x464378 <(anonymous namespace)::last>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	jne	0x426afd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x30d>
-               	pxor	%xmm1, %xmm1
-               	movdqu	%xmm1, 16(%rax)
-               	movdqu	%xmm1, (%rax)
+               	jne	0x42722e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x37e>
+               	xorpd	%xmm1, %xmm1
+               	movupd	%xmm1, 16(%rax)
+               	movupd	%xmm1, (%rax)

@@ -19937,41 +20300,41 @@
@@@[(36, 44), (46, 48), (49, 51)]@@@
-               	callq	0x431460 <mi_free>
-               	movq	(%r15), %rax
-               	movq	32(%r15), %rcx
-               	movq	%rcx, 8(%rax)
+               	callq	0x431d80 <mi_free>
+               	movq	32(%r15), %rax
+               	movq	(%r15), %rcx
+               	movq	%rax, 8(%rcx)
@@@@
-               	movdqu	16(%rax), %xmm1
+               	movdqu	16(%rcx), %xmm1
@@@@
-               	movdqu	%xmm1, 16(%rax)
+               	movdqu	%xmm1, 16(%rcx)

@@ -20010,12 +20373,12 @@
@@@[(9, 13)]@@@
-               	jmp	0x426d13 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
-               	movl	%ebx, %ebx
+               	jmp	0x427443 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
+               	movl	%eax, %ebx

@@ -20034,26 +20397,28 @@
@@@[(14, 18), (19, 23), (24, 27), (28, 35)]@@@
-               	movslq	20(%rcx), %rbp
-               	testq	%rbp, %rbp
+               	movl	20(%rcx), %ecx
+               	testl	%ecx, %ecx
@@@@
-               	js	0x426d50 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
-               	movl	%ebp, %ebp
+               	js	0x427480 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
+               	movl	%ecx, %ebp
@@@@
-               	jmp	0x426d62 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc2>
+               	jmp	0x427495 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc5>
+               	nop
@@@@
-               	movl	24(%rax), %eax
-               	negq	%rbp
-               	imulq	%rax, %rbp
+               	movslq	%ecx, %rcx
+               	movl	24(%rax), %ebp
+               	negq	%rcx
+               	imulq	%rcx, %rbp

@@ -20075,68 +20440,69 @@
@@@[(24, 35), (44, 50)]@@@
-               	movslq	20(%rax), %rbx
-               	testq	%rbx, %rbx
-               	jns	0x426ccb <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
-               	movl	8(%rsi), %eax
-               	negq	%rbx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	jns	0x4273fb <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
+               	cltq
+               	movl	8(%rsi), %ebx
+               	negq	%rax
@@@@
-               	je	0x426e41 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
-               	nopw	(%rax,%rax)
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x427571 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
+               	nopl	(%rax)
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>

@@ -20156,23 +20522,23 @@
@@@[(10, 13), (14, 15)]@@@
-               	jne	0x426f58 <GCStateHolder::schedule()+0x68>
-               	movq	40(%rbx), %rax
+               	jne	0x427688 <GCStateHolder::schedule()+0x68>
@@@@
+               	movq	40(%rbx), %rax

@@ -20181,35 +20547,38 @@
@@@[(8, 10), (11, 16), (17, 21), (31, 35)]@@@
+               	movq	%rdi, %rax
+               	movq	(%rdi), %rdi
@@@@
-               	je	0x426f80 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x4276b9 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
+               	movl	8(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x426f80 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x4276b9 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
@@@@
-               	jmp	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -20222,54 +20591,52 @@
@@@[(3, 8), (15, 21), (60, 65)]@@@
-               	movl	$248, %eax
-               	addq	(%rdi), %rax
-               	movq	%rax, %rdi
+               	movq	(%rdi), %rdi
+               	addq	$248, %rdi
@@@@
-               	je	0x427001 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
-               	nopw	(%rax,%rax)
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x427741 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movq	(%rdi), %rdi
-               	jmp	0x428c70 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
-               	nopl	(%rax,%rax)
+               	jmp	0x429480 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
+               	nopw	%cs:(%rax,%rax)

@@ -20312,96 +20679,99 @@
@@@[(6, 9), (15, 18), (19, 25), (35, 39), (43, 49), (67, 111), (113, 121), (133, 157), (159, 164)]@@@
-               	movq	%rcx, 208(%rsp)
+               	movq	%rcx, 192(%rsp)
+               	leaq	104(%rsp), %r13
@@@@
-               	jmp	0x427175 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe5>
+               	jmp	0x4278c3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf3>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	104(%rsp), %rdi
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	je	0x4270e9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
-               	movq	(%rax), %r13
+               	je	0x427829 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
+               	movq	(%rax), %rbp
@@@@
-               	je	0x4271a1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x111>
-               	nopl	(%rax,%rax)
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x4278f1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x121>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movups	%xmm0, 248096(%rip)     # 0x463af0 <(anonymous namespace)::current>
-               	movups	%xmm0, 248105(%rip)     # 0x463b00 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 248114(%rip)     # 0x463b10 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 248123(%rip)     # 0x463b20 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 248132(%rip)     # 0x463b30 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 248141(%rip)     # 0x463b40 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 248150(%rip)     # 0x463b50 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 248159(%rip)     # 0x463b60 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 248168(%rip)     # 0x463b70 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 248177(%rip)     # 0x463b80 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 248186(%rip)     # 0x463b90 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 248195(%rip)     # 0x463ba0 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 248204(%rip)     # 0x463bb0 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 248213(%rip)     # 0x463bc0 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 248222(%rip)     # 0x463bd0 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 248231(%rip)     # 0x463be0 <(anonymous namespace)::current+0xf0>
-               	movq	%r13, 247984(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	movb	$1, 247985(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 247981(%rip)      # 0x463b00 <(anonymous namespace)::current+0x10>
-               	movb	$1, 247982(%rip)        # 0x463b08 <(anonymous namespace)::current+0x18>
-               	movb	$0, 247945(%rip)        # 0x463aea <(anonymous namespace)::lock>
+               	movups	%xmm0, 248152(%rip)     # 0x464278 <(anonymous namespace)::current>
+               	movups	%xmm0, 248161(%rip)     # 0x464288 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 248170(%rip)     # 0x464298 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 248179(%rip)     # 0x4642a8 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 248188(%rip)     # 0x4642b8 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 248197(%rip)     # 0x4642c8 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 248206(%rip)     # 0x4642d8 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 248215(%rip)     # 0x4642e8 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 248224(%rip)     # 0x4642f8 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 248233(%rip)     # 0x464308 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 248242(%rip)     # 0x464318 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 248251(%rip)     # 0x464328 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 248260(%rip)     # 0x464338 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 248269(%rip)     # 0x464348 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 248278(%rip)     # 0x464358 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 248287(%rip)     # 0x464368 <(anonymous namespace)::current+0xf0>
+               	movq	%rbp, 248040(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	movb	$1, 248041(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 248037(%rip)      # 0x464288 <(anonymous namespace)::current+0x10>
+               	movb	$1, 248038(%rip)        # 0x464290 <(anonymous namespace)::current+0x18>
+               	movb	$0, 247999(%rip)        # 0x464270 <(anonymous namespace)::lock>
@@@@
-               	xchgb	%al, 252735(%rip)       # 0x464db0 <(anonymous namespace)::markingRequested (.0.0)>
-               	movq	%r13, %rax
-               	xchgq	%rax, 252741(%rip)      # 0x464dc0 <(anonymous namespace)::markingEpoch (.0)>
-               	callq	0x425890 <kotlin::mm::RequestThreadsSuspension()>
+               	xchgb	%al, 252791(%rip)       # 0x465538 <(anonymous namespace)::markingRequested (.0.0)>
+               	movq	%rbp, %rax
+               	xchgq	%rax, 252797(%rip)      # 0x465548 <(anonymous namespace)::markingEpoch (.0)>
+               	callq	0x425ec0 <kotlin::mm::RequestThreadsSuspension()>
@@@@
-               	jne	0x427290 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x200>
-               	cmpb	$0, 247888(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	je	0x4272ba <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x22a>
-               	leaq	247871(%rip), %rbx      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 247864(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x4272d3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x243>
-               	cmpb	$0, 248119(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x4272e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	leaq	248102(%rip), %rbx      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 248095(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x4272e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x4279e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x210>
+               	cmpb	$0, 247944(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x427a0a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x23a>
+               	leaq	247927(%rip), %rbx      # 0x464278 <(anonymous namespace)::current>
+               	cmpq	%rbp, 247920(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x427a23 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x253>
+               	cmpb	$0, 248175(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x427a30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	leaq	248158(%rip), %rbx      # 0x464378 <(anonymous namespace)::last>
+               	cmpq	%rbp, 248151(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x427a30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	movb	$0, 247811(%rip)        # 0x463aea <(anonymous namespace)::lock>
-               	nopw	(%rax,%rax)
+               	movq	%rbp, (%rsp)
+               	movb	$0, 247861(%rip)        # 0x464270 <(anonymous namespace)::lock>
+               	nopl	(%rax,%rax)

@@ -20409,281 +20779,291 @@
@@@[(64, 84), (95, 102), (103, 116), (172, 193), (194, 199), (203, 206), (225, 230), (231, 236), (244, 248), (272, 284), (312, 315), (316, 321), (339, 346), (350, 372)]@@@
-               	je	0x4273cf <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x33f>
-               	leaq	247594(%rip), %rax      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 247587(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x4273e8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x358>
-               	cmpb	$0, 247842(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x4273f3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
-               	leaq	247825(%rip), %rax      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 247818(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x4273f3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
+               	je	0x427b23 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x353>
+               	leaq	247650(%rip), %rax      # 0x464278 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 247639(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x427b40 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x370>
+               	cmpb	$0, 247894(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x427b4b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
+               	leaq	247877(%rip), %rax      # 0x464378 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 247866(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x427b4b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
@@@@
-               	movq	216(%rsp), %rdi
-               	movq	%r13, %rsi
-               	callq	0x428510 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movq	200(%rsp), %rdi
+               	movq	(%rsp), %rbp
+               	movq	%rbp, %rsi
+               	callq	0x428d00 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
-               	movq	%r13, %rsi
-               	callq	0x4262c0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
-               	movq	%r13, %rdi
-               	movq	208(%rsp), %rsi
-               	callq	0x426ca0 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	movq	%rbp, %rsi
+               	callq	0x426960 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
+               	movq	%rbp, %rdi
+               	movq	192(%rsp), %rsi
+               	callq	0x4273d0 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
+               	nop
@@@@
-               	jne	0x4274d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x440>
-               	cmpb	$0, 247312(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	leaq	248041(%rip), %r14      # 0x463dd8 <kotlin::mm::GlobalData::instance_+0xe8>
-               	je	0x427501 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x471>
-               	leaq	247288(%rip), %rax      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 247281(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x42751f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x48f>
-               	cmpb	$0, 247536(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x427540 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b0>
-               	leaq	247519(%rip), %rax      # 0x463bf0 <(anonymous namespace)::last>
+               	jne	0x427c20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x450>
+               	cmpb	$0, 247368(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	leaq	248097(%rip), %r14      # 0x464560 <kotlin::mm::GlobalData::instance_+0xe8>
+               	je	0x427c55 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x485>
+               	leaq	247344(%rip), %rax      # 0x464278 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 247333(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x427c77 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4a7>
+               	cmpb	$0, 247588(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x427c90 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c0>
+               	leaq	247571(%rip), %rax      # 0x464378 <(anonymous namespace)::last>
@@@@
-               	cmpq	%r13, 247507(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x427542 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 247555(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x427c92 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jmp	0x427542 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
-               	nopl	(%rax,%rax)
+               	jmp	0x427c92 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jne	0x427560 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4d0>
-               	leaq	16(%rsp), %r15
-               	movq	%r15, 24(%rsp)
+               	jne	0x427cb0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4e0>
+               	leaq	8(%rsp), %r15
@@@@
-               	movq	$0, 32(%rsp)
-               	movq	247880(%rip), %rbp      # 0x463dd8 <kotlin::mm::GlobalData::instance_+0xe8>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	movq	247936(%rip), %rbp      # 0x464560 <kotlin::mm::GlobalData::instance_+0xe8>
@@@@
-               	addq	$-1, 247844(%rip)       # 0x463dd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	247901(%rip), %rax      # 0x464558 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 247890(%rip)      # 0x464558 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	callq	0x43d17e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 32(%rsp)
-               	addq	$-1, 247792(%rip)       # 0x463de8 <kotlin::mm::GlobalData::instance_+0xf8>
-               	jmp	0x4275bc <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x52c>
+               	callq	0x43dfde <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	247827(%rip), %rax      # 0x464570 <kotlin::mm::GlobalData::instance_+0xf8>
+               	addq	$-1, %rax
+               	movq	%rax, 247816(%rip)      # 0x464570 <kotlin::mm::GlobalData::instance_+0xf8>
+               	jmp	0x427d16 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x546>
@@@@
-               	movq	32(%rsp), %rax
-               	movq	%r15, 24(%rsp)
+               	movq	24(%rsp), %rax
@@@@
-               	movq	$0, 32(%rsp)
-               	jmp	0x427680 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x5f0>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	jmp	0x427df0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
@@@@
-               	je	0x4276c1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x631>
-               	nopw	(%rax,%rax)
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movq	(%rsp), %r14
+               	je	0x427e31 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x661>
+               	nop
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x4276b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
-               	cmpb	$0, 246832(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	je	0x4276da <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x64a>
-               	leaq	246815(%rip), %rax      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 246808(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x4276f3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x663>
-               	cmpb	$0, 247063(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x42771d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
-               	leaq	247046(%rip), %rax      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 247039(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x42771d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
+               	jne	0x427e20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x650>
+               	cmpb	$0, 246856(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x427e4a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x67a>
+               	leaq	246839(%rip), %rax      # 0x464278 <(anonymous namespace)::current>
+               	cmpq	%r14, 246832(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x427e63 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x693>
+               	cmpb	$0, 247087(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x427e8d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>
+               	leaq	247070(%rip), %rax      # 0x464378 <(anonymous namespace)::last>
+               	cmpq	%r14, 247063(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x427e8d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>

@@ -20708,186 +21088,197 @@
@@@[(10, 14), (21, 29), (42, 64), (131, 155), (160, 169), (175, 181), (189, 211), (214, 222), (223, 226), (231, 234), (254, 259), (262, 270), (271, 275), (278, 286), (287, 294)]@@@
-               	addq	$-1, 247226(%rip)       # 0x463dd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	247251(%rip), %rax      # 0x464558 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 247240(%rip)      # 0x464558 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jmp	0x427748 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6b8>
-               	nop
-               	movb	$0, 247225(%rip)        # 0x463df0 <kotlin::mm::GlobalData::instance_+0x100>
-               	movq	247186(%rip), %rbx      # 0x463dd0 <kotlin::mm::GlobalData::instance_+0xe0>
+               	jmp	0x427eb8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6e8>
+               	nopl	(%rax,%rax)
+               	movb	$0, 247233(%rip)        # 0x464578 <kotlin::mm::GlobalData::instance_+0x100>
+               	movq	247194(%rip), %rbx      # 0x464558 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jne	0x427850 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7c0>
-               	cmpb	$0, 246416(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	je	0x42787a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7ea>
-               	leaq	246399(%rip), %rax      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 246392(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x427893 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x803>
-               	cmpb	$0, 246647(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x4278bd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
-               	leaq	246630(%rip), %rax      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 246623(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x4278bd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
+               	jne	0x427fd0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x800>
+               	cmpb	$0, 246424(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x427ffa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82a>
+               	leaq	246407(%rip), %rax      # 0x464278 <(anonymous namespace)::current>
+               	cmpq	%r14, 246400(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x428013 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x843>
+               	cmpb	$0, 246655(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x42803d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
+               	leaq	246638(%rip), %rax      # 0x464378 <(anonymous namespace)::last>
+               	cmpq	%r14, 246631(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x42803d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
@@@@
-               	jne	0x427960 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8d0>
-               	cmpb	$0, 246144(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	je	0x42798a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8fa>
-               	leaq	246127(%rip), %rbx      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 246120(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x4279a3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x913>
-               	cmpb	$0, 246375(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x4279b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	leaq	246358(%rip), %rbx      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 246351(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x4279b0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x4280e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x910>
+               	cmpb	$0, 246152(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x42810a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x93a>
+               	leaq	246135(%rip), %rbx      # 0x464278 <(anonymous namespace)::current>
+               	cmpq	%r14, 246128(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x428123 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x953>
+               	cmpb	$0, 246383(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x428130 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	leaq	246366(%rip), %rbx      # 0x464378 <(anonymous namespace)::last>
+               	cmpq	%r14, 246359(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x428130 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	leaq	104(%rsp), %rax
-               	movups	%xmm0, (%rax)
-               	movq	$0, 16(%rax)
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
-               	movq	246818(%rip), %rax      # 0x463df8 <kotlin::mm::GlobalData::instance_+0x108>
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>
+               	movq	246829(%rip), %rax      # 0x464580 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	je	0x427a01 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x971>
-               	nop
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x428181 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9b1>
+               	nopl	(%rax,%rax)
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	cmpb	$0, 245988(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	je	0x427a26 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x996>
-               	leaq	245971(%rip), %rax      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%r13, 245964(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x427a3f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9af>
-               	cmpb	$0, 246219(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x427a5d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
-               	leaq	246202(%rip), %rax      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%r13, 246195(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x427a5d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	cmpb	$0, 245996(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x4281aa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9da>
+               	leaq	245979(%rip), %rax      # 0x464278 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 245968(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x4281c7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9f7>
+               	cmpb	$0, 246223(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x4281de <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
+               	leaq	246206(%rip), %rax      # 0x464378 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 246195(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x4281de <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
@@@@
-               	jne	0x427a5d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	je	0x428200 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa30>
+               	movb	$0, 245899(%rip)        # 0x464270 <(anonymous namespace)::lock>
+               	movq	(%r14), %rbx
+               	testq	%rbx, %rbx
+               	jne	0x42821a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa4a>
+               	jmp	0x4283c0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movq	%r13, 136(%rsp)
-               	movb	$0, 245886(%rip)        # 0x463aea <(anonymous namespace)::lock>
+               	movb	$0, 245858(%rip)        # 0x464270 <(anonymous namespace)::lock>
@@@@
-               	jmp	0x427a97 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
+               	jmp	0x428237 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	nop
@@@@
-               	testb	$64, 88(%rax)
-               	jne	0x427af0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa60>
+               	movl	88(%rax), %eax
+               	testb	$64, %al
+               	jne	0x428290 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xac0>
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x427bc6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb36>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x428376 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba6>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x427bd4 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb44>
-               	nopw	(%rax,%rax)
+               	jmp	0x428386 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbb6>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x427b0c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa7c>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x4282aa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xada>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x427b1a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa8a>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jmp	0x4282ba <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaea>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -20896,38 +21287,42 @@
@@@[(3, 13), (14, 17), (37, 47), (51, 60)]@@@
-               	callq	0x428bd0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
-               	movq	16(%rsp), %r15
-               	movq	24(%rsp), %rbx
-               	movq	$0, 16(%rsp)
-               	movq	%r15, 160(%rsp)
+               	callq	0x4293d0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
+               	movq	16(%rsp), %rbx
+               	movq	8(%rsp), %rax
+               	movq	$0, 8(%rsp)
+               	movq	%rax, 144(%rsp)
@@@@
-               	je	0x427b85 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaf5>
+               	movq	144(%rsp), %r15
+               	je	0x42832d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb5d>
@@@@
-               	addq	$1, 120(%rsp)
-               	leaq	160(%rsp), %rdi
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	16(%rsp), %r15
+               	movq	120(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 120(%rsp)
+               	leaq	144(%rsp), %rdi
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	leaq	8(%rsp), %r15
@@@@
-               	jne	0x427a97 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
-               	jmp	0x427c10 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb80>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jne	0x428237 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	jmp	0x4283c0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -20936,422 +21331,441 @@
@@@[(14, 17), (32, 56), (62, 69), (73, 74), (75, 81), (85, 102), (110, 162), (236, 238), (251, 266), (269, 276), (277, 290), (296, 299), (300, 306), (307, 354), (358, 363), (364, 370), (387, 391), (408, 414), (420, 465), (528, 541), (542, 545), (557, 567), (611, 615)]@@@
-               	nop
-               	movq	246241(%rip), %rax      # 0x463df8 <kotlin::mm::GlobalData::instance_+0x108>
+               	movq	246201(%rip), %rax      # 0x464580 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	jne	0x427c30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba0>
-               	cmpb	$0, 245424(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %rsi
-               	je	0x427c62 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbd2>
-               	leaq	245399(%rip), %rax      # 0x463af0 <(anonymous namespace)::current>
-               	cmpq	%rsi, 245392(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	je	0x427c7b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbeb>
-               	cmpb	$0, 245647(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x427c99 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
-               	leaq	245630(%rip), %rax      # 0x463bf0 <(anonymous namespace)::last>
-               	cmpq	%rsi, 245623(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x427c99 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
+               	jne	0x4283e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc10>
+               	cmpb	$0, 245384(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	movq	(%rsp), %r14
+               	je	0x42840e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc3e>
+               	leaq	245363(%rip), %rax      # 0x464278 <(anonymous namespace)::current>
+               	cmpq	%r14, 245356(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	je	0x428427 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc57>
+               	cmpb	$0, 245611(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x428445 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
+               	leaq	245594(%rip), %rax      # 0x464378 <(anonymous namespace)::last>
+               	cmpq	%r14, 245587(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x428445 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
@@@@
-               	movb	$0, 245322(%rip)        # 0x463aea <(anonymous namespace)::lock>
-               	movq	200(%rsp), %rdi
-               	callq	0x428510 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movb	$0, 245284(%rip)        # 0x464270 <(anonymous namespace)::lock>
+               	movq	184(%rsp), %rdi
+               	movq	%r14, %rsi
+               	callq	0x428d00 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
+               	leaq	104(%rsp), %r13
@@@@
-               	je	0x427cd1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc41>
-               	nop
-               	callq	0x424490 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x428491 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcc1>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x424ac0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x427cc0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc30>
-               	cmpb	$0, 245280(%rip)        # 0x463af8 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %r13
-               	je	0x427da0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	cmpq	%r13, 245251(%rip)      # 0x463af0 <(anonymous namespace)::current>
-               	jne	0x427da0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 245265(%rip)      # 0x463b10 <(anonymous namespace)::current+0x20>
-               	movb	$1, 245266(%rip)        # 0x463b18 <(anonymous namespace)::current+0x28>
+               	jne	0x428480 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcb0>
+               	cmpb	$0, 245224(%rip)        # 0x464280 <(anonymous namespace)::current+0x8>
+               	je	0x428550 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	cmpq	%r14, 245203(%rip)      # 0x464278 <(anonymous namespace)::current>
+               	jne	0x428550 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 245217(%rip)      # 0x464298 <(anonymous namespace)::current+0x20>
+               	movb	$1, 245218(%rip)        # 0x4642a0 <(anonymous namespace)::current+0x28>
@@@@
-               	movups	%xmm0, 245192(%rip)     # 0x463af0 <(anonymous namespace)::current>
-               	movups	%xmm0, 245201(%rip)     # 0x463b00 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 245210(%rip)     # 0x463b10 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 245219(%rip)     # 0x463b20 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 245228(%rip)     # 0x463b30 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 245237(%rip)     # 0x463b40 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 245246(%rip)     # 0x463b50 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 245255(%rip)     # 0x463b60 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 245264(%rip)     # 0x463b70 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 245273(%rip)     # 0x463b80 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 245282(%rip)     # 0x463b90 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 245291(%rip)     # 0x463ba0 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 245300(%rip)     # 0x463bb0 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 245309(%rip)     # 0x463bc0 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 245318(%rip)     # 0x463bd0 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 245327(%rip)     # 0x463be0 <(anonymous namespace)::current+0xf0>
-               	jmp	0x427dc5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	nopw	%cs:(%rax,%rax)
-               	cmpb	$0, 245329(%rip)        # 0x463bf8 <(anonymous namespace)::last+0x8>
-               	je	0x427dc5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	cmpq	%r13, 245312(%rip)      # 0x463bf0 <(anonymous namespace)::last>
-               	jne	0x427dc5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	callq	0x43db70 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 245330(%rip)      # 0x463c10 <(anonymous namespace)::last+0x20>
-               	movb	$1, 245331(%rip)        # 0x463c18 <(anonymous namespace)::last+0x28>
-               	movb	$0, 245022(%rip)        # 0x463aea <(anonymous namespace)::lock>
+               	movups	%xmm0, 245144(%rip)     # 0x464278 <(anonymous namespace)::current>
+               	movups	%xmm0, 245153(%rip)     # 0x464288 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 245162(%rip)     # 0x464298 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 245171(%rip)     # 0x4642a8 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 245180(%rip)     # 0x4642b8 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 245189(%rip)     # 0x4642c8 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 245198(%rip)     # 0x4642d8 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 245207(%rip)     # 0x4642e8 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 245216(%rip)     # 0x4642f8 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 245225(%rip)     # 0x464308 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 245234(%rip)     # 0x464318 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 245243(%rip)     # 0x464328 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 245252(%rip)     # 0x464338 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 245261(%rip)     # 0x464348 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 245270(%rip)     # 0x464358 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 245279(%rip)     # 0x464368 <(anonymous namespace)::current+0xf0>
+               	jmp	0x428575 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	nop
+               	cmpb	$0, 245289(%rip)        # 0x464380 <(anonymous namespace)::last+0x8>
+               	je	0x428575 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	cmpq	%r14, 245272(%rip)      # 0x464378 <(anonymous namespace)::last>
+               	jne	0x428575 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	callq	0x43e9d0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 245290(%rip)      # 0x464398 <(anonymous namespace)::last+0x20>
+               	movb	$1, 245291(%rip)        # 0x4643a0 <(anonymous namespace)::last+0x28>
+               	movb	$0, 244980(%rip)        # 0x464270 <(anonymous namespace)::lock>
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
-               	movups	119281(%rip), %xmm0     # 0x44514b <typeinfo name for kotlin::gc::GCSchedulerData+0x1012>
-               	movups	%xmm0, (%rax)
-               	movq	%r13, 14(%rax)
+               	movq	%rax, 16(%rsp)
@@@@
-               	movb	$1, 56(%rsp)
-               	leaq	1530(%rip), %r13        # 0x428570 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
-               	movq	%r13, 64(%rsp)
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rax)
+               	movq	14(%rbx), %rcx
+               	movq	%rcx, 14(%rax)
+               	movq	$22, 24(%rsp)
+               	movq	16(%rsp), %rbx
+               	movb	$0, 22(%rbx)
+               	movb	$1, 48(%rsp)
+               	leaq	1576(%rip), %rax        # 0x428d60 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
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
+               	je	0x428870 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a0>
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
-               	movq	237532(%rip), %rdx      # 0x461fc0 <write+0x461fc0>
-               	callq	0x43fd9e <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
-               	movq	8(%rsp), %rdi
-               	testq	%rdi, %rdi
-               	movq	136(%rsp), %r13
-               	movq	152(%rsp), %rbx
-               	je	0x428009 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf79>
-               	movq	(%rdi), %rax
-               	callq	*8(%rax)
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x42802d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	movq	24(%rsp), %rdi
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x42802d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, (%rbp)
-               	jne	0x42817f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10ef>
-               	movq	144(%rsp), %rax
-               	movq	%rax, (%rbp)
-               	movq	$0, 144(%rsp)
-               	cmpb	$0, 192(%rsp)
-               	je	0x427e67 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	movq	160(%rsp), %rdi
-               	leaq	176(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x427e67 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	callq	0x413730 <free@plt>
-               	jmp	0x427e67 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	movq	32(%rsp), %rcx
+               	movq	%rcx, 32(%rax)
+               	jmp	0x428876 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a6>
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
-               	callq	0x431460 <mi_free>
-               	jmp	0x428100 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1070>
-               	movq	%r13, 16(%rsp)
+               	callq	0x431d80 <mi_free>
+               	jmp	0x428810 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1040>
+               	movq	%r14, 8(%rsp)
@@@@
-               	jmp	0x4280cd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x103d>
+               	jmp	0x4287d1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1001>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rcx)
+               	movq	%r13, %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 24(%rax)
+               	movq	%rdx, 16(%rsp)
+               	movq	$0, 24(%rsp)
+               	movb	$0, 32(%rsp)
+               	movb	$1, 48(%rax)
+               	leaq	1216(%rip), %rcx        # 0x428d60 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
+               	movq	%rcx, 56(%rax)
+               	movq	%rax, 64(%rsp)
+               	leaq	136(%rsp), %rdi
+               	leaq	64(%rsp), %rsi
+               	movq	235267(%rip), %rdx      # 0x461fc0 <write+0x461fc0>
+               	callq	0x440bfe <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
+               	movq	64(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4288d2 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1102>
+               	movq	(%rdi), %rax
+               	callq	*8(%rax)
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	leaq	104(%rsp), %r13
+               	je	0x4288fb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	movq	16(%rsp), %rdi
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x4288fb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, (%rbp)
+               	jne	0x42896e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x119e>
+               	movq	136(%rsp), %rax
+               	movq	%rax, (%rbp)
+               	movq	$0, 136(%rsp)
+               	cmpb	$0, 176(%rsp)
+               	je	0x428617 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	movq	144(%rsp), %rdi
+               	leaq	160(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x428617 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	callq	0x413710 <free@plt>
+               	jmp	0x428617 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
@@@@
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x428224 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
-               	movq	24(%rsp), %rbx
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rbx
-               	jne	0x42821c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x118c>
-               	jmp	0x428224 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	je	0x428a13 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
+               	movq	16(%rsp), %rbx
+               	jmp	0x428a01 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1231>
@@@@
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rbx
+               	je	0x428a13 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
@@@@
-               	je	0x428248 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x11b8>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, 236904(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x4282df <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x124f>
-               	movq	152(%rsp), %rdi
+               	je	0x428a37 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1267>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, 234873(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x428ac9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x12f9>
+               	movq	%r13, %rdi
@@@@
-               	callq	0x4244a0 <__clang_call_terminate>
-               	nopw	(%rax,%rax)
+               	callq	0x424ad0 <__clang_call_terminate>
+               	nopw	%cs:(%rax,%rax)

@@ -21412,37 +21826,36 @@
@@@[(3, 7), (8, 13), (18, 24), (26, 27), (32, 40), (41, 54)]@@@
-               	movq	8(%rdi), %r15
-               	movq	%r15, 8(%rsp)
+               	movq	8(%rdi), %rdi
+               	movq	%rdi, 8(%rsp)
@@@@
-               	cmpq	$0, 236337(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x428495 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x35>
-               	movq	%r15, %rdi
+               	cmpq	$0, 234305(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x428c82 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x32>
@@@@
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jg	0x4284dd <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x7d>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jg	0x428cc8 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x78>
@@@@
+               	nopl	(%rax)
@@@@
-               	callq	0x43d7c0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jle	0x4284b0 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
+               	callq	0x43e620 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jle	0x428ca0 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
@@@@
-               	je	0x4284f9 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	movq	8(%rsp), %r15
-               	testq	%r15, %r15
-               	je	0x4284f9 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	cmpq	$0, 236238(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x4284f4 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x94>
-               	movq	%r15, %rdi
+               	je	0x428ce6 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x428ce6 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	cmpq	$0, 234206(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x428ce1 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x91>

@@ -21453,8 +21866,8 @@
@@@[(3, 7)]@@@
-               	callq	0x43daaa <std::__throw_system_error(int)>
-               	nop
+               	callq	0x43e90a <std::__throw_system_error(int)>
+               	nopl	(%rax)

@@ -21500,140 +21913,140 @@
@@@[(39, 41), (42, 58), (71, 79), (80, 85), (89, 107), (108, 121), (122, 128), (138, 143), (169, 175), (182, 188), (196, 201)]@@@
-               	movq	%rax, 128(%rsp)
-               	leaq	128(%r13), %rax
@@@@
-               	xorl	%eax, %eax
-               	movq	%rax, 40(%rsp)
-               	leaq	8(%rsp), %rbp
-               	movq	%r14, 112(%rsp)
-               	movq	%r15, 104(%rsp)
-               	jmp	0x428645 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	leaq	128(%r13), %rax
+               	movq	%rax, 112(%rsp)
+               	xorl	%ebp, %ebp
+               	leaq	8(%rsp), %rbx
+               	movq	%r14, 104(%rsp)
+               	movq	%r15, 96(%rsp)
+               	jmp	0x428e25 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>
+               	nopl	(%rax)
@@@@
-               	movq	32(%r13), %rbx
-               	movb	$1, %al
-               	testq	%rbx, %rbx
-               	jne	0x4286b8 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x148>
+               	movq	32(%r13), %rax
+               	movb	$1, %cl
+               	testq	%rax, %rax
+               	jne	0x428e93 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x133>
@@@@
-               	movq	40(%rsp), %rax
-               	cmpq	%rax, 160(%r13)
-               	jne	0x4286b2 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x142>
+               	cmpq	%rbp, 160(%r13)
+               	jne	0x428e8d <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12d>
@@@@
-               	movq	%rbp, %rsi
-               	callq	0x43d7c0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	32(%r13), %rbx
-               	testq	%rbx, %rbx
-               	je	0x428680 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x110>
-               	jmp	0x4286b4 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x144>
-               	xorl	%ebx, %ebx
-               	movb	16(%rsp), %al
-               	movq	16(%r13), %rcx
+               	movq	%rbx, %rsi
+               	callq	0x43e620 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	32(%r13), %rax
+               	testq	%rax, %rax
+               	je	0x428e60 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x100>
+               	jmp	0x428e8f <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12f>
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
-               	je	0x4289f1 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x481>
+               	movups	%xmm0, (%rax)
+               	testb	%cl, %cl
+               	je	0x4291f4 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x494>
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4288a0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
+               	cmpq	$0, 80(%rsp)
+               	je	0x4290a0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movq	%rbx, 144(%rsp)
@@@@
-               	jne	0x4287b4 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	jmp	0x428860 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
-               	nop
+               	jne	0x428f9e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	jmp	0x429050 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
+               	nopl	(%rax)
@@@@
-               	callq	0x43d1c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 280(%r14)
+               	callq	0x43e024 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	280(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 280(%r14)
@@@@
-               	testb	$64, 88(%rsi)
-               	je	0x4287d1 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x261>
+               	movl	88(%rsi), %eax
+               	testb	$64, %al
+               	je	0x428fbc <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x25c>

@@ -21652,99 +22065,103 @@
@@@[(6, 10), (18, 35), (51, 54), (55, 60), (67, 69), (97, 102)]@@@
-               	addq	$-1, 256(%r14)
+               	movq	256(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 256(%r14)
@@@@
-               	jne	0x4287b4 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	nopl	(%rax)
-               	cmpq	$0, 136(%rsp)
-               	movq	112(%rsp), %r14
-               	movq	104(%rsp), %r15
-               	movq	144(%rsp), %rdi
-               	je	0x4288a0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
-               	movl	60(%rsp), %ecx
+               	jne	0x428f9e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	nop
+               	cmpq	$0, 128(%rsp)
+               	movq	104(%rsp), %r14
+               	movq	96(%rsp), %r15
+               	movq	144(%rsp), %rbx
+               	movq	136(%rsp), %rdi
+               	je	0x4290a0 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movl	52(%rsp), %ecx
@@@@
-               	movq	40(%rsp), %rax
-               	movq	%rax, 24(%rsp)
+               	movq	%rbx, 24(%rsp)
@@@@
-               	je	0x4289fb <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x48b>
-               	movq	120(%rsp), %rdi
+               	je	0x4291fe <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x49e>
+               	movq	%rbx, %r12
+               	movq	112(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	leaq	8(%rsp), %rbp
-               	je	0x428645 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
+               	leaq	8(%rsp), %rbx
+               	movq	%r12, %rbp
+               	je	0x428e25 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>

@@ -21890,7 +22307,7 @@
@@@[(3, 5)]@@@
-               	movq	%rsi, %r13
+               	movq	%rsi, %rbx

@@ -21900,27 +22317,31 @@
@@@[(3, 5), (6, 18), (20, 30), (31, 33)]@@@
-               	movq	(%rbp), %rbx
+               	movq	(%rbp), %r13
@@@@
-               	testq	%rbx, %rbx
-               	je	0x428c2c <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
-               	movq	%rbx, %rdi
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x431460 <mi_free>
+               	testq	%r13, %r13
+               	je	0x42942c <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
+               	movq	%r13, %rdi
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x431d80 <mi_free>
@@@@
-               	jne	0x428c39 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x69>
-               	movq	%r12, 8(%r13)
+               	jne	0x429435 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x65>
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

@@ -21929,7 +22350,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -21937,29 +22358,29 @@
@@@[(3, 5)]@@@
-               	movq	%rdi, %rbx
+               	movq	(%rdi), %rbx

@@ -22124,127 +22545,129 @@
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
-               	jb	0x428f42 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x72>
-               	cmpq	$0, 24(%rbp)
-               	je	0x4290e8 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x218>
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
+               	jb	0x429750 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x70>
+               	cmpq	$0, 24(%rbx)
+               	je	0x429908 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x228>
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
-               	movb	245256(%rip), %al       # 0x464d50 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 64(%rbx)
+               	movb	245122(%rip), %al       # 0x4654d8 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x428f51 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x81>
-               	callq	0x425960 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x429160 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x42975f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x7f>
+               	callq	0x425fb0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x429970 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
+               	movq	%rax, 24(%rsp)
+               	movb	$0, 36(%rsp)
@@@@
-               	movq	%rax, 32(%rsp)
@@@@
-               	callq	0x426ef0 <GCStateHolder::schedule()>
-               	movq	%rax, %rbp
-               	movq	(%rbx), %r15
-               	movq	128(%r15), %r13
-               	movq	%r13, 16(%rsp)
-               	movb	$0, 24(%rsp)
-               	cmpq	$0, 233469(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x428fcd <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfd>
-               	movq	%r13, %rdi
+               	callq	0x427620 <GCStateHolder::schedule()>
+               	movq	%rax, %r12
+               	movq	(%rbx), %rbp
+               	movq	128(%rbp), %rdi
+               	movq	%rdi, 8(%rsp)
+               	movb	$0, 16(%rsp)
+               	cmpq	$0, 231405(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x4297da <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfa>
@@@@
-               	jne	0x429103 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x233>
-               	movb	$1, 24(%rsp)
-               	cmpq	%rbp, 120(%r15)
-               	jge	0x429017 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x147>
-               	leaq	136(%r15), %rbx
-               	leaq	16(%rsp), %r13
-               	nopl	(%rax,%rax)
-               	cmpb	$0, 312(%r15)
-               	jne	0x42900b <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13b>
+               	jne	0x429923 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x243>
+               	movb	$1, 16(%rsp)
+               	cmpq	%r12, 120(%rbp)
+               	jge	0x429821 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x141>
+               	leaq	136(%rbp), %rbx
+               	leaq	8(%rsp), %r13
+               	nopw	%cs:(%rax,%rax)
+               	nop
+               	cmpb	$0, 312(%rbp)
+               	jne	0x42981a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13a>
@@@@
-               	callq	0x43d7c0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	cmpq	%rbp, 120(%r15)
-               	jl	0x428ff0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
-               	cmpb	$0, 24(%rsp)
-               	je	0x429033 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	movq	16(%rsp), %r13
-               	testq	%r13, %r13
-               	je	0x429033 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	cmpq	$0, 233364(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x42902e <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15e>
-               	movq	%r13, %rdi
+               	callq	0x43e620 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	cmpq	%r12, 120(%rbp)
+               	jl	0x429800 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
+               	cmpb	$0, 16(%rsp)
+               	je	0x42983f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x42983f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	cmpq	$0, 231301(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x42983a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15a>
@@@@
-               	je	0x429064 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	addq	$328, %rdi              # imm = 0x148
-               	movl	12(%rsp), %ecx
+               	je	0x429874 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	movl	32(%rsp), %ecx
@@@@
-               	xchgl	%eax, (%rdi)
+               	xchgl	%eax, 328(%rdi)
@@@@
-               	je	0x429064 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x429160 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x429874 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x429970 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
-               	je	0x4290ed <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x21d>
-               	movq	$0, (%rbp)
-               	movq	%rbp, 16(%rsp)
+               	je	0x42990d <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x22d>
+               	movq	$0, (%rax)
+               	movq	%rax, 8(%rsp)
+               	movq	8(%rsp), %rbx
@@@@
-               	movq	$0, 16(%rsp)
-               	movq	(%rax), %rbx
-               	movq	%rbp, (%rax)
-               	testq	%rbx, %rbx
-               	je	0x4290bf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	%rbx, %rdi
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x431460 <mi_free>
-               	jmp	0x4290bf <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	$0, 16(%rsp)
-               	movq	%rbp, 24(%r14)
-               	movq	%rbp, 32(%r14)
-               	addq	$1, 40(%r14)
-               	addq	%r12, 48(%r14)
-               	leaq	16(%rsp), %rdi
-               	callq	0x426c70 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbp, %rax
+               	movq	$0, 8(%rsp)
+               	movq	(%rax), %r12
+               	movq	%rbx, (%rax)
+               	testq	%r12, %r12
+               	je	0x4298d4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	%r12, %rdi
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r12, %rdi
+               	callq	0x431d80 <mi_free>
+               	jmp	0x4298d4 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	$0, 8(%rsp)
+               	movq	%rbx, 24(%r14)
+               	movq	%rbx, 32(%r14)
+               	movq	40(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%r14)
+               	addq	48(%r14), %r15
+               	movq	%r15, 48(%r14)
+               	leaq	8(%rsp), %rdi
+               	callq	0x4273a0 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%rbx, %rax

@@ -22253,65 +22676,66 @@
@@@[(3, 9), (21, 26), (30, 34), (64, 70)]@@@
-               	callq	0x43dbc2 <std::__throw_bad_function_call()>
-               	leaq	114798(%rip), %rdi      # 0x445162 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
-               	movq	%r12, %rsi
+               	callq	0x43ea22 <std::__throw_bad_function_call()>
+               	leaq	116366(%rip), %rdi      # 0x445fa2 <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
+               	movq	%r15, %rsi
@@@@
-               	movq	32(%rsp), %rdi
-               	movl	12(%rsp), %esi
-               	callq	0x426f60 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
+               	leaq	24(%rsp), %rdi
+               	callq	0x427690 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
@@@@
-               	callq	0x4244a0 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x424ad0 <__clang_call_terminate>
+               	nop
@@@@
-               	jne	0x4291df <kotlin::allocateInObjectPool(unsigned long)+0x7f>
-               	addl	$1, 16(%rax)
+               	jne	0x4299f4 <kotlin::allocateInObjectPool(unsigned long)+0x84>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)

@@ -22321,31 +22745,33 @@
@@@[(30, 32), (34, 38)]@@@
-               	movb	96(%rdx), %cl
+               	movq	96(%rdx), %rcx
@@@@
-               	orb	$2, 126(%rdx,%rax)
+               	movb	126(%rdx,%rax), %cl
+               	orb	$2, %cl
+               	movb	%cl, 126(%rdx,%rax)

@@ -22357,214 +22783,214 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -22667,71 +23093,55 @@
@@@[(3, 14), (15, 24), (25, 71)]@@@
-               	jne	0x429856 <_mi_random_init+0xe6>
-               	movb	(%rsp), %r8b
-               	movb	1(%rsp), %r15b
-               	movb	2(%rsp), %dil
-               	movb	3(%rsp), %al
-               	movl	%eax, 44(%rsp)
+               	jne	0x42a027 <_mi_random_init+0xa7>
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
-               	jmp	0x429b97 <_mi_random_init+0x427>
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
+               	jmp	0x42a324 <_mi_random_init+0x3a4>

@@ -22792,261 +23202,249 @@
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
-               	movaps	106140(%rip), %xmm1     # 0x443a80 <_IO_stdin_used+0x80>
+               	movdqu	%xmm0, 108(%r14)
+               	movdqu	%xmm0, 92(%r14)
+               	movdqu	%xmm0, 76(%r14)
+               	movdqu	%xmm0, 60(%r14)
+               	movdqu	%xmm0, 44(%r14)
+               	movq	$0, 124(%r14)
+               	movaps	107853(%rip), %xmm1     # 0x4448c0 <_IO_stdin_used+0x80>
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

@@ -23054,7 +23452,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -23081,25 +23479,27 @@
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

@@ -23109,42 +23509,42 @@
@@@[(3, 13), (33, 39)]@@@
-               	cmpb	$1, 241620(%rip)        # 0x464dcc <_mi_process_is_initialized>
-               	jne	0x42a4fb <mi_process_done+0x71b>
-               	cmpb	$0, 341651(%rip)        # 0x47d498 <mi_process_done.process_done>
-               	jne	0x42a4fb <mi_process_done+0x71b>
-               	movb	$1, 341638(%rip)        # 0x47d498 <mi_process_done.process_done>
+               	cmpb	$0, 241564(%rip)        # 0x465554 <_mi_process_is_initialized>
+               	je	0x42acc0 <mi_process_done+0x720>
+               	cmpb	$0, 341587(%rip)        # 0x47dc18 <mi_process_done.process_done>
+               	jne	0x42acc0 <mi_process_done+0x720>
+               	movb	$1, 341574(%rip)        # 0x47dc18 <mi_process_done.process_done>
@@@@
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	callq	0x42d1f0 <mi_stats_merge_from>
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	callq	0x42d9f0 <mi_stats_merge_from>

@@ -23251,63 +23651,64 @@
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

@@ -23517,10 +23918,10 @@
@@@[(6, 10)]@@@
-               	jmp	0x42a0db <mi_process_done+0x2fb>
-               	nopw	(%rax,%rax)
+               	jmp	0x42a89d <mi_process_done+0x2fd>
+               	nop

@@ -23530,78 +23931,87 @@
@@@[(3, 27), (88, 104), (126, 131)]@@@
-               	cmpb	$0, 239767(%rip)        # 0x464dcc <_mi_process_is_initialized>
-               	jne	0x42b2ec <mi_process_init+0xdcc>
-               	movb	$1, 239754(%rip)        # 0x464dcc <_mi_process_is_initialized>
-               	cmpb	$0, 240376(%rip)        # 0x465041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	jne	0x42a58e <mi_process_init+0x6e>
-               	movb	$1, 240367(%rip)        # 0x465041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	leaq	234191(%rip), %rdi      # 0x463828 <_mi_heap_default_key>
-               	leaq	3504(%rip), %rsi        # 0x42b310 <mi_pthread_done>
+               	cmpb	$0, 239711(%rip)        # 0x465554 <_mi_process_is_initialized>
+               	je	0x42ad06 <mi_process_init+0x26>
+               	addq	$104, %rsp
+               	popq	%rbx
+               	popq	%r12
+               	popq	%r13
+               	popq	%r14
+               	popq	%r15
+               	popq	%rbp
+               	retq
+               	movb	$1, 239687(%rip)        # 0x465554 <_mi_process_is_initialized>
+               	cmpb	$0, 240301(%rip)        # 0x4657c1 <mi_process_setup_auto_thread_done.tls_initialized>
+               	jne	0x42ad59 <mi_process_init+0x79>
+               	movb	$1, 240292(%rip)        # 0x4657c1 <mi_process_setup_auto_thread_done.tls_initialized>
+               	leaq	234092(%rip), %rdi      # 0x463f90 <_mi_heap_default_key>
+               	leaq	3525(%rip), %rsi        # 0x42baf0 <mi_pthread_done>
@@@@
-               	callq	0x42b910 <_mi_verbose_message>
-               	callq	0x42ba30 <mi_thread_init>
-               	callq	0x42ba30 <mi_thread_init>
-               	movq	$-80, %r15
-               	movq	%fs:(%r15), %rax
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	leaq	239532(%rip), %rax      # 0x464e00 <_mi_stats_main>
+               	callq	0x42c110 <_mi_verbose_message>
+               	callq	0x42c230 <mi_thread_init>
+               	callq	0x42c230 <mi_thread_init>
+               	movq	$-80, %r14
+               	movq	%fs:(%r14), %rax
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	leaq	239455(%rip), %rax      # 0x465580 <_mi_stats_main>
@@@@
-               	movabsq	$-4835703278458516699, %rax # imm = 0xBCE4217D2849CB25
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$-4835703278458516699, %rcx # imm = 0xBCE4217D2849CB25
+               	imulq	%rcx

@@ -23611,8 +24021,9 @@
@@@[(3, 8)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -23622,31 +24033,32 @@
@@@[(9, 14)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -23691,61 +24103,61 @@
@@@[(3, 6), (43, 45), (50, 54), (55, 75), (76, 80), (81, 86)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
@@@@
-               	leaq	(%r14,%rbp), %rcx
+               	leaq	(%r15,%rbp), %rcx
@@@@
-               	je	0x42a8d0 <mi_process_init+0x3b0>
-               	movq	%rbx, %r14
+               	je	0x42b0a0 <mi_process_init+0x3c0>
+               	movq	%rbx, %r15
@@@@
-               	jne	0x42a890 <mi_process_init+0x370>
-               	movq	%fs:(%r15), %rdi
-               	callq	0x429d30 <_mi_heap_random_next>
-               	movq	%rax, %r14
-               	andl	$536739840, %r14d       # imm = 0x1FFE0000
-               	shlq	$13, %r14
-               	orq	%r13, %r14
-               	jmp	0x42a890 <mi_process_init+0x370>
-               	cmpq	$0, 273008(%rip)        # 0x46d348 <mi_clock_diff>
-               	jne	0x42a951 <mi_process_init+0x431>
+               	jne	0x42b060 <mi_process_init+0x380>
+               	movq	%fs:(%r14), %rdi
+               	callq	0x42a4e0 <_mi_heap_random_next>
+               	movq	%rax, %r15
+               	andl	$536739840, %r15d       # imm = 0x1FFE0000
+               	shlq	$13, %r15
+               	orq	%r13, %r15
+               	jmp	0x42b060 <mi_process_init+0x380>
+               	cmpq	$0, 272928(%rip)        # 0x46dac8 <mi_clock_diff>
+               	jne	0x42b127 <mi_process_init+0x447>
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

@@ -23753,26 +24165,28 @@
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

@@ -23794,20 +24208,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x42ae90 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	272676(%rip), %rax      # 0x46d308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 272677(%rip)        # 0x46d310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x42b680 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	272587(%rip), %rax      # 0x46da88 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 272588(%rip)        # 0x46da90 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -23815,15 +24229,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -23846,74 +24260,75 @@
@@@[(13, 19), (24, 28), (70, 75)]@@@
-               	callq	0x42cc90 <_mi_warning_message>
-               	cmpq	%r15, %rbx
-               	jne	0x42ada0 <mi_process_init+0x880>
+               	callq	0x42d490 <_mi_warning_message>
+               	cmpq	%r14, %rbx
+               	jne	0x42b590 <mi_process_init+0x8b0>
@@@@
-               	movq	238465(%rip), %rax      # 0x464e70 <_mi_stats_main+0x70>
-               	nop
+               	movq	238376(%rip), %rax      # 0x4655f0 <_mi_stats_main+0x70>
+               	nopl	(%rax,%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -23921,20 +24336,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x42ae90 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	272136(%rip), %rax      # 0x46d308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 272137(%rip)        # 0x46d310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x42b680 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	272037(%rip), %rax      # 0x46da88 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 272038(%rip)        # 0x46da90 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -23942,15 +24357,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -23959,142 +24374,144 @@
@@@[(3, 9), (14, 18), (60, 65), (87, 92), (93, 97), (105, 107), (171, 179), (183, 189)]@@@
-               	jae	0x42ad90 <mi_process_init+0x870>
-               	cmpq	%r15, %rbx
-               	jne	0x42ada0 <mi_process_init+0x880>
+               	jae	0x42b580 <mi_process_init+0x8a0>
+               	cmpq	%r14, %rbx
+               	jne	0x42b590 <mi_process_init+0x8b0>
@@@@
-               	movq	238016(%rip), %rax      # 0x464e70 <_mi_stats_main+0x70>
+               	movq	237917(%rip), %rax      # 0x4655f0 <_mi_stats_main+0x70>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx
@@@@
-               	jmp	0x42abca <mi_process_init+0x6aa>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x42b3ad <mi_process_init+0x6cd>
+               	nopw	(%rax,%rax)
@@@@
-               	cmpq	%r15, %rbx
-               	je	0x42ac94 <mi_process_init+0x774>
+               	cmpq	%r14, %rbx
+               	je	0x42b477 <mi_process_init+0x797>
@@@@
-               	movq	%r15, %rdx
+               	movq	%r14, %rdx
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x42aea8 <mi_process_init+0x988>
-               	jmp	0x42afdd <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x42b698 <mi_process_init+0x9b8>
+               	jmp	0x42b7cd <mi_process_init+0xaed>
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	je	0x42afdd <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	je	0x42b7cd <mi_process_init+0xaed>

@@ -24102,13 +24519,13 @@
@@@[(11, 13)]@@@
-               	xchgq	%r14, (%rax)
+               	xchgq	%r15, (%rax)

@@ -24119,15 +24536,15 @@
@@@[(16, 18)]@@@
-               	movq	$-80, %r15
+               	movq	$-80, %r14

@@ -24136,101 +24553,101 @@
@@@[(18, 28), (54, 56), (109, 111)]@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x42aea8 <mi_process_init+0x988>
-               	jmp	0x42afdd <mi_process_init+0xabd>
-               	callq	0x42cfe0 <_mi_os_numa_node_count_get>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x42b698 <mi_process_init+0x9b8>
+               	jmp	0x42b7cd <mi_process_init+0xaed>
+               	callq	0x42d7e0 <_mi_os_numa_node_count_get>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%r14, %rdx
+               	movq	%r15, %rdx

@@ -24313,46 +24730,39 @@
@@@[(43, 60)]@@@
-               	callq	0x42b910 <_mi_verbose_message>
-               	addq	$104, %rsp
-               	popq	%rbx
-               	popq	%r12
-               	popq	%r13
-               	popq	%r14
-               	popq	%r15
-               	popq	%rbp
-               	retq
-               	callq	0x42cfe0 <_mi_os_numa_node_count_get>
-               	jmp	0x42a77b <mi_process_init+0x25b>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x42c110 <_mi_verbose_message>
+               	jmp	0x42acf7 <mi_process_init+0x17>
+               	callq	0x42d7e0 <_mi_os_numa_node_count_get>
+               	jmp	0x42af51 <mi_process_init+0x271>
+               	nop

@@ -24458,48 +24868,51 @@
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
-               	jmp	0x42b51d <mi_pthread_done+0x20d>
-               	nopl	(%rax)
+               	jmp	0x42bd0d <mi_pthread_done+0x21d>

@@ -24691,27 +25104,27 @@
@@@[(26, 34)]@@@
-               	callq	0x42d6e0 <mi_heap_collect_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
-               	callq	0x42d1f0 <mi_stats_merge_from>
+               	callq	0x42dee0 <mi_heap_collect_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi
+               	callq	0x42d9f0 <mi_stats_merge_from>

@@ -24722,9 +25135,9 @@
@@@[(3, 9)]@@@
-               	jmp	0x42ca70 <_mi_os_free_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
+               	jmp	0x42d260 <_mi_os_free_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi

@@ -24732,8 +25145,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x42d1f0 <mi_stats_merge_from>
-               	nop
+               	jmp	0x42d9f0 <mi_stats_merge_from>
+               	nopw	%cs:(%rax,%rax)

@@ -24984,60 +25397,60 @@
@@@[(14, 15), (17, 26)]@@@
-               	movq	64(%rsp), %rdx
@@@@
-               	movl	(%rax,%rcx,4), %ecx
-               	movq	72(%rsp), %rdi
-               	cmpl	(%rax,%rdi,4), %ecx
-               	jne	0x42bdc2 <mi_option_get+0x192>
+               	movq	72(%rsp), %rdx
+               	movl	(%rax,%rdx,4), %edx
+               	cmpl	%edx, (%rax,%rcx,4)
+               	movq	64(%rsp), %rdx
+               	jne	0x42c5c2 <mi_option_get+0x192>

@@ -25049,48 +25462,48 @@
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

@@ -25098,31 +25511,31 @@
@@@[(3, 5)]@@@
-               	movzbl	(%rbp,%rcx,4), %ecx
+               	movl	(%rbp,%rcx,4), %ecx

@@ -25130,44 +25543,44 @@
@@@[(50, 54)]@@@
-               	jmp	0x42bc61 <mi_option_get+0x31>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42c461 <mi_option_get+0x31>
+               	nop

@@ -25957,57 +26370,57 @@
@@@[(74, 76)]@@@
-               	leaq	99864(%rip), %rdi       # 0x44520f <typeinfo name for kotlin::gc::GCSchedulerData+0x10d6>
+               	leaq	101480(%rip), %rdi      # 0x44604f <typeinfo name for kotlin::gc::GCSchedulerData+0x10d6>

@@ -26049,17 +26462,21 @@
@@@[(7, 12), (16, 20), (21, 22)]@@@
-               	js	0x42cc8c <_mi_stat_decrease+0x7c>
-               	addq	%rsi, 8(%rdi)
+               	js	0x42d480 <_mi_stat_decrease+0x80>
+               	addq	8(%rdi), %rsi
+               	movq	%rsi, 8(%rdi)
@@@@
-               	subq	%rsi, (%rdi)
+               	movq	(%rdi), %rax
+               	subq	%rsi, %rax
+               	movq	%rax, (%rdi)
@@@@
+               	nopw	(%rax,%rax)

@@ -26115,12 +26532,12 @@
@@@[(11, 13)]@@@
-               	leaq	99466(%rip), %rdi       # 0x445239 <typeinfo name for kotlin::gc::GCSchedulerData+0x1100>
+               	leaq	101066(%rip), %rdi      # 0x446079 <typeinfo name for kotlin::gc::GCSchedulerData+0x1100>

@@ -26193,19 +26610,22 @@
@@@[(7, 12), (17, 21), (22, 24)]@@@
-               	jle	0x42ceae <_mi_stat_increase+0x6e>
-               	addq	%rsi, (%rdi)
+               	jle	0x42d6b1 <_mi_stat_increase+0x71>
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

@@ -26298,20 +26718,20 @@
@@@[(16, 18)]@@@
-               	leaq	99295(%rip), %r14       # 0x4453f9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	100895(%rip), %r14      # 0x446239 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>

@@ -26323,15 +26743,15 @@
@@@[(9, 13)]@@@
-               	movq	%rbx, 262838(%rip)      # 0x46d318 <_mi_numa_node_count>
-               	leaq	99248(%rip), %rdi       # 0x445419 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, 262710(%rip)      # 0x46da98 <_mi_numa_node_count>
+               	leaq	100848(%rip), %rdi      # 0x446259 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>

@@ -26395,22 +26815,23 @@
@@@[(11, 13), (19, 28)]@@@
-               	leaq	99394(%rip), %rdi       # 0x4455eb <typeinfo name for kotlin::gc::GCSchedulerData+0x14b2>
+               	leaq	100994(%rip), %rdi      # 0x44642b <typeinfo name for kotlin::gc::GCSchedulerData+0x14b2>
@@@@
-               	cmpq	$0, 262557(%rip)        # 0x46d360 <mi_error_handler>
-               	je	0x42d1d7 <_mi_error_message+0x147>
-               	movq	262548(%rip), %rax      # 0x46d360 <mi_error_handler>
-               	movq	262549(%rip), %rsi      # 0x46d368 <mi_error_arg>
+               	movq	262430(%rip), %rax      # 0x46dae0 <mi_error_handler>
+               	testq	%rax, %rax
+               	je	0x42d9d9 <_mi_error_message+0x149>
+               	movq	262418(%rip), %rax      # 0x46dae0 <mi_error_handler>
+               	movq	262419(%rip), %rsi      # 0x46dae8 <mi_error_arg>

@@ -26420,284 +26841,284 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -26713,66 +27134,67 @@
@@@[(16, 21), (80, 82)]@@@
-               	cmpq	$0, 327015(%rip)        # 0x47d488 <deferred_free>
-               	je	0x42d72d <mi_heap_collect_ex+0x4d>
+               	movq	326888(%rip), %rax      # 0x47dc08 <deferred_free>
+               	testq	%rax, %rax
+               	je	0x42df2f <mi_heap_collect_ex+0x4f>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -27052,22 +27474,26 @@
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

@@ -27076,104 +27502,106 @@
@@@[(3, 11), (16, 17), (33, 50), (67, 69)]@@@
-               	jb	0x42dd80 <mi_heap_collect_ex+0x6a0>
-               	leaq	226069(%rip), %rdi      # 0x465040 <os_preloading>
-               	cmpq	%rdi, %rcx
-               	jae	0x42dd80 <mi_heap_collect_ex+0x6a0>
+               	jb	0x42e590 <mi_heap_collect_ex+0x6b0>
+               	leaq	225922(%rip), %rax      # 0x4657c0 <os_preloading>
+               	cmpq	%rax, %rcx
+               	jae	0x42e590 <mi_heap_collect_ex+0x6b0>
@@@@
-               	nopl	(%rax)
@@@@
-               	movq	248(%rdx), %rbp
-               	leaq	1(%rbp), %rdi
-               	movq	%rdi, 248(%rdx)
-               	cmpq	240(%rdx), %rbp
-               	jl	0x42dda2 <mi_heap_collect_ex+0x6c2>
-               	movq	%rdi, 240(%rdx)
-               	addq	$1, (%rcx)
+               	movq	248(%rdx), %rdi
+               	leaq	1(%rdi), %rax
+               	movq	%rax, 248(%rdx)
+               	cmpq	240(%rdx), %rdi
+               	jl	0x42e5b2 <mi_heap_collect_ex+0x6d2>
+               	movq	%rax, 240(%rdx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
+               	movq	40(%rbx), %rax
@@@@
-               	nop
+               	nopl	(%rax)

@@ -27182,74 +27610,77 @@
@@@[(7, 13), (31, 33), (52, 56), (78, 79)]@@@
-               	je	0x42e175 <mi_heap_collect_ex+0xa95>
-               	addq	$-1, 120(%r15)
+               	je	0x42e9bb <mi_heap_collect_ex+0xadb>
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

@@ -27257,43 +27688,44 @@
@@@[(21, 25), (49, 52)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	jmp	0x42e0f4 <mi_heap_collect_ex+0xa14>
-               	nopl	(%rax)
+               	jmp	0x42e934 <mi_heap_collect_ex+0xa54>

@@ -27329,40 +27761,42 @@
@@@[(24, 28)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -27371,38 +27805,39 @@
@@@[(18, 21)]@@@
-               	callq	0x42e5d0 <_mi_arena_free>
+               	callq	0x42ee20 <_mi_arena_free>
+               	nopw	%cs:(%rax,%rax)

@@ -27452,25 +27887,27 @@
@@@[(28, 32)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)

@@ -27478,21 +27915,23 @@
@@@[(3, 7), (23, 27)]@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
-               	jmp	0x42e2fb <_mi_page_free_collect+0x7b>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42eb4b <_mi_page_free_collect+0x7b>
+               	nopl	(%rax)

@@ -27500,50 +27939,52 @@
@@@[(3, 7)]@@@
-               	andb	$-3, 6(%rdi)
+               	movb	6(%rdi), %al
+               	andb	$-3, %al
+               	movb	%al, 6(%rdi)

@@ -27554,22 +27995,22 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -27635,20 +28076,24 @@
@@@[(13, 20), (22, 27)]@@@
-               	jne	0x42e580 <_mi_page_free+0x230>
-               	addq	$-1, 3016(%r14)
+               	jne	0x42edd0 <_mi_page_free+0x230>
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

@@ -27657,8 +28102,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x42f1b0 <_mi_segment_page_free>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42fa20 <_mi_segment_page_free>

@@ -28140,68 +28584,72 @@
@@@[(79, 89)]@@@
-               	jae	0x42ec70 <mi_os_commitx+0x1f0>
-               	addq	$1, 221955(%rip)        # 0x464fe8 <_mi_stats_main+0x1e8>
-               	addq	$1, 221939(%rip)        # 0x464fe0 <_mi_stats_main+0x1e0>
+               	jae	0x42f4c0 <mi_os_commitx+0x1f0>
+               	movq	221748(%rip), %rax      # 0x465768 <_mi_stats_main+0x1e8>
+               	addq	$1, %rax
+               	movq	%rax, 221737(%rip)      # 0x465768 <_mi_stats_main+0x1e8>
+               	movq	221722(%rip), %rax      # 0x465760 <_mi_stats_main+0x1e0>
+               	addq	$1, %rax
+               	movq	%rax, 221711(%rip)      # 0x465760 <_mi_stats_main+0x1e0>

@@ -28232,6 +28680,7 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -28584,67 +29033,68 @@
@@@[(38, 42), (45, 50), (51, 55)]@@@
-               	jmp	0x42f29d <_mi_segment_page_free+0xed>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x42fb0d <_mi_segment_page_free+0xed>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42f2ba <_mi_segment_page_free+0x10a>
+               	testb	%cl, %cl
+               	jne	0x42fb2c <_mi_segment_page_free+0x10c>

@@ -28693,7 +29143,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -28705,70 +29155,78 @@
@@@[(3, 7), (8, 14), (31, 33), (51, 59), (61, 62), (66, 67), (68, 72), (95, 103)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x42f56c <mi_segment_page_clear+0x1dc>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x42fe0d <mi_segment_page_clear+0x1fd>
@@@@
-               	movl	$160, %edi
-               	addq	112(%r15), %rdi
-               	callq	0x42cc10 <_mi_stat_decrease>
+               	movq	112(%r15), %rdi
+               	addq	$160, %rdi
+               	callq	0x42d400 <_mi_stat_decrease>
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

@@ -28795,61 +29253,62 @@
@@@[(21, 25), (27, 34), (35, 39), (58, 62)]@@@
-               	jmp	0x42f53f <mi_segment_page_clear+0x1af>
-               	movb	96(%r14), %cl
+               	jmp	0x42fddf <mi_segment_page_clear+0x1cf>
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
-               	jne	0x42f55b <mi_segment_page_clear+0x1cb>
+               	testb	%cl, %cl
+               	jne	0x42fdfc <mi_segment_page_clear+0x1ec>
@@@@
-               	jmp	0x42f58f <mi_segment_page_clear+0x1ff>
-               	movb	96(%rax), %cl
+               	jmp	0x42fe31 <mi_segment_page_clear+0x221>
+               	movq	96(%rax), %rcx

@@ -28874,229 +29333,230 @@
@@@[(118, 124), (127, 132), (133, 137), (256, 260), (282, 286), (311, 315)]@@@
-               	jne	0x42f6d1 <mi_segment_free+0xf1>
-               	jmp	0x42f6b5 <mi_segment_free+0xd5>
-               	movzbl	96(%r14), %ecx
+               	jne	0x42ff71 <mi_segment_free+0xf1>
+               	jmp	0x42ff55 <mi_segment_free+0xd5>
+               	movq	96(%r14), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x42f756 <mi_segment_free+0x176>
+               	testb	%cl, %cl
+               	jne	0x42fff7 <mi_segment_free+0x177>
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
-               	jmp	0x42f962 <mi_segment_free+0x382>
-               	nopl	(%rax)
+               	jmp	0x430202 <mi_segment_free+0x382>
+               	nop

@@ -29131,51 +29591,54 @@
@@@[(21, 25), (47, 48)]@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
+               	nop

@@ -29183,41 +29646,43 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)

@@ -29226,7 +29691,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -29254,106 +29718,110 @@
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

@@ -29362,7 +29830,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax)

@@ -29411,32 +29878,34 @@
@@@[(12, 16)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -29445,81 +29914,82 @@
@@@[(18, 21), (105, 109)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -29528,7 +29998,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -29559,185 +30029,192 @@
@@@[(38, 42), (45, 50), (51, 55), (136, 138), (157, 161), (180, 181), (218, 222), (240, 245)]@@@
-               	jmp	0x43007d <mi_segment_abandon+0xdd>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x43092d <mi_segment_abandon+0xdd>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x430099 <mi_segment_abandon+0xf9>
+               	testb	%cl, %cl
+               	jne	0x43094b <mi_segment_abandon+0xfb>
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
-               	movq	315667(%rip), %rax      # 0x47d3c0 <abandoned>
-               	nopl	(%rax)
+               	movq	315356(%rip), %rax      # 0x47db40 <abandoned>
+               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -29759,154 +30236,157 @@
@@@[(92, 98), (101, 106), (107, 111), (136, 140), (205, 211)]@@@
-               	jne	0x430393 <mi_segment_abandon+0x3f3>
-               	jmp	0x430379 <mi_segment_abandon+0x3d9>
-               	movzbl	96(%r15), %ecx
+               	jne	0x430c53 <mi_segment_abandon+0x403>
+               	jmp	0x430c39 <mi_segment_abandon+0x3e9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x430413 <mi_segment_abandon+0x473>
+               	testb	%cl, %cl
+               	jne	0x430cd4 <mi_segment_abandon+0x484>
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	jne	0x430137 <mi_segment_abandon+0x197>
-               	jmp	0x43011a <mi_segment_abandon+0x17a>
-               	nopw	(%rax,%rax)
+               	jne	0x4309e9 <mi_segment_abandon+0x199>
+               	jmp	0x4309cc <mi_segment_abandon+0x17c>
+               	nop

@@ -29919,7 +30399,7 @@
@@@[(3, 5)]@@@
-               	movb	96(%r12), %cl
+               	movq	96(%r12), %rcx

@@ -29927,29 +30407,31 @@
@@@[(29, 35)]@@@
-               	addl	$-1, 136(%r12,%rbx)
-               	je	0x4305a8 <_mi_free_delayed_block+0x98>
+               	movl	136(%r12,%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%r12,%rbx)
+               	je	0x430e72 <_mi_free_delayed_block+0xa2>

@@ -29962,15 +30444,15 @@
@@@[(11, 15)]@@@
-               	jmp	0x4306e0 <_mi_page_unfull>
-               	nop
+               	jmp	0x430fb0 <_mi_page_unfull>
+               	nopl	(%rax,%rax)

@@ -30051,27 +30533,26 @@
@@@[(11, 18)]@@@
-               	cmpq	$9, %rsi
-               	jb	0x430753 <_mi_page_unfull+0x73>
-               	movq	%rsi, %rdx
-               	addq	$7, %rdx
+               	cmpl	$9, %esi
+               	jb	0x43101f <_mi_page_unfull+0x6f>
+               	leaq	7(%rsi), %rdx

@@ -30134,22 +30615,22 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	(%rax,%rax)

@@ -30424,83 +30905,86 @@
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
-               	je	0x430da0 <mi_segment_reclaim+0x1c0>
-               	addq	$-1, 40(%r15)
+               	je	0x431670 <mi_segment_reclaim+0x1c0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -30508,115 +30992,121 @@
@@@[(21, 25), (45, 49), (85, 89), (127, 131), (139, 145)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x430e6a <mi_segment_reclaim+0x28a>
-               	nop
+               	jmp	0x431744 <mi_segment_reclaim+0x294>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 200(%rsi)
+               	movq	200(%rsi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rsi)
@@@@
-               	callq	0x42f390 <mi_segment_page_clear>
-               	nopl	(%rax)
+               	callq	0x42fc10 <mi_segment_page_clear>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x430f90 <mi_segment_reclaim+0x3b0>
-               	addq	$-1, 40(%r15)
+               	je	0x431880 <mi_segment_reclaim+0x3d0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -30624,70 +31114,74 @@
@@@[(21, 25), (45, 49), (80, 84)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x43104a <mi_segment_reclaim+0x46a>
-               	nop
+               	jmp	0x431954 <mi_segment_reclaim+0x4a4>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -30706,28 +31200,27 @@
@@@[(3, 4), (8, 12)]@@@
-               	nopl	(%rax)
@@@@
-               	cmpq	$67108864, %r8          # imm = 0x4000000
-               	jae	0x4313d8 <_mi_page_reclaim+0x298>
+               	cmpl	$67108864, %r8d         # imm = 0x4000000
+               	jae	0x431cf2 <_mi_page_reclaim+0x2a2>

@@ -30861,49 +31354,52 @@
@@@[(13, 19), (28, 32), (34, 40), (41, 49), (53, 56), (58, 60)]@@@
-               	jne	0x4313c0 <_mi_page_reclaim+0x280>
-               	addq	$1, 3016(%rdi)
+               	jne	0x431cd0 <_mi_page_reclaim+0x280>
+               	movq	3016(%rdi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%rdi)
@@@@
-               	jmp	0x4313fa <_mi_page_reclaim+0x2ba>
-               	movb	96(%rax), %cl
+               	jmp	0x431d15 <_mi_page_reclaim+0x2c5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rsi), %ecx
-               	testq	%rcx, %rcx
-               	je	0x43140a <_mi_page_reclaim+0x2ca>
+               	movb	(%rsi), %cl
+               	testb	%cl, %cl
+               	je	0x431d23 <_mi_page_reclaim+0x2d3>
@@@@
-               	jmp	0x431152 <_mi_page_reclaim+0x12>
-               	movq	80(%rax), %r10
-               	movq	%rdx, %r9
-               	subq	%r10, %r9
+               	jmp	0x431a62 <_mi_page_reclaim+0x12>
+               	movq	80(%rax), %r9
+               	movq	%rdx, %r10
+               	subq	%r9, %r10
@@@@
-               	je	0x43144f <_mi_page_reclaim+0x30f>
+               	je	0x431d6b <_mi_page_reclaim+0x31b>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax

@@ -30911,41 +31407,43 @@
@@@[(3, 11), (20, 22), (34, 40), (49, 53)]@@@
-               	subq	%rcx, %r9
-               	movq	%r9, %r8
-               	jmp	0x431152 <_mi_page_reclaim+0x12>
-               	nopw	(%rax,%rax)
+               	subq	%rcx, %r10
+               	movq	%r10, %r8
+               	jmp	0x431a62 <_mi_page_reclaim+0x12>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movb	96(%rdi), %cl
+               	movq	96(%rdi), %rcx
@@@@
-               	addl	$-1, 136(%rdi,%rax)
-               	je	0x4314c6 <mi_free+0x66>
+               	movl	136(%rdi,%rax), %ecx
+               	addl	$-1, %ecx
+               	movl	%ecx, 136(%rdi,%rax)
+               	je	0x431df0 <mi_free+0x70>
@@@@
-               	jmp	0x4305d0 <_mi_page_retire>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x430ea0 <_mi_page_retire>
+               	nopl	(%rax)

@@ -30961,32 +31459,33 @@
@@@[(15, 18), (20, 24)]@@@
-               	movzbl	(%r9), %ebx
+               	movb	(%r9), %cl
+               	movzbl	%cl, %ebx
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x431577 <mi_free_generic+0x97>
+               	testb	%bl, %bl
+               	jne	0x431e98 <mi_free_generic+0x98>

@@ -30996,30 +31495,32 @@
@@@[(25, 31)]@@@
-               	addl	$-1, 136(%rdi,%r11)
-               	je	0x4315ed <mi_free_generic+0x10d>
+               	movl	136(%rdi,%r11), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%rdi,%r11)
+               	je	0x431f18 <mi_free_generic+0x118>

@@ -31031,49 +31532,49 @@
@@@[(26, 30)]@@@
-               	jmp	0x43162b <mi_free_generic+0x14b>
-               	movb	96(%rax), %cl
+               	jmp	0x431f57 <mi_free_generic+0x157>
+               	movq	96(%rax), %rcx

@@ -31083,8 +31584,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x431584 <mi_free_generic+0xa4>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x431ea5 <mi_free_generic+0xa5>

@@ -31095,86 +31595,91 @@
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

@@ -31183,72 +31688,76 @@
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

@@ -31764,21 +32273,21 @@
@@@[(10, 20)]@@@
-               	callq	0x431a80 <_mi_fprintf>
-               	movq	(%r14), %rax
-               	cmpq	8(%r14), %rax
-               	leaq	79813(%rip), %rax       # 0x44591a <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
-               	leaq	79824(%rip), %rdx       # 0x44592c <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>
+               	callq	0x4323c0 <_mi_fprintf>
+               	movq	8(%r14), %rax
+               	cmpq	%rax, (%r14)
+               	leaq	81093(%rip), %rax       # 0x44675a <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
+               	leaq	81104(%rip), %rdx       # 0x44676c <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>

@@ -32515,70 +33024,73 @@
@@@[(14, 19), (32, 34), (88, 96)]@@@
-               	cmpq	$0, 305128(%rip)        # 0x47d488 <deferred_free>
-               	je	0x432cc5 <_mi_malloc_generic+0x65>
+               	movq	304681(%rip), %rcx      # 0x47dc08 <deferred_free>
+               	testq	%rcx, %rcx
+               	je	0x433607 <_mi_malloc_generic+0x67>
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	callq	0x42d090 <_mi_error_message>
-               	jmp	0x432d79 <_mi_malloc_generic+0x119>
-               	addl	$1, 16(%rax)
+               	callq	0x42d890 <_mi_error_message>
+               	jmp	0x4336be <_mi_malloc_generic+0x11e>
+               	movl	16(%rax), %edx
+               	addl	$1, %edx
+               	movl	%edx, 16(%rax)

@@ -32591,7 +33103,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax,%rax)

@@ -32643,37 +33154,43 @@
@@@[(16, 19), (20, 21), (29, 35), (38, 43), (44, 45), (49, 55)]@@@
-               	callq	0x42d090 <_mi_error_message>
-               	movq	8(%rbx), %rcx
+               	callq	0x42d890 <_mi_error_message>
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x432e9d <mi_find_page+0x10d>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x4337e6 <mi_find_page+0x116>
@@@@
-               	subl	%eax, 16(%rbx)
-               	movq	8(%rbx), %rcx
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	je	0x432eaa <mi_find_page+0x11a>
-               	andb	$1, 7(%rbx)
+               	je	0x4337f7 <mi_find_page+0x127>
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -32710,91 +33227,100 @@
@@@[(10, 14), (59, 79), (98, 102), (104, 110), (120, 125)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x43301b <mi_find_page+0x28b>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x433992 <mi_find_page+0x2c2>
@@@@
-               	jmp	0x432ff9 <mi_find_page+0x269>
-               	addq	$1, 744(%rax)
-               	addq	$1, 736(%rax)
-               	jmp	0x432ff9 <mi_find_page+0x269>
-               	addq	$1, 728(%rax)
-               	addq	$1, 720(%rax)
+               	jmp	0x433970 <mi_find_page+0x2a0>
+               	movq	744(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 744(%rax)
+               	movq	736(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 736(%rax)
+               	jmp	0x433970 <mi_find_page+0x2a0>
+               	movq	728(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 728(%rax)
+               	movq	720(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 720(%rax)
@@@@
-               	jmp	0x43303d <mi_find_page+0x2ad>
-               	movb	96(%rax), %cl
+               	jmp	0x4339b5 <mi_find_page+0x2e5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r14), %ebx
-               	testq	%rbx, %rbx
-               	je	0x43304e <mi_find_page+0x2be>
+               	movb	(%r14), %bl
+               	testb	%bl, %bl
+               	je	0x4339c4 <mi_find_page+0x2f4>
@@@@
-               	je	0x433091 <mi_find_page+0x301>
-               	imulq	%rbx, %rdx
+               	je	0x433a0a <mi_find_page+0x33a>
+               	movzbl	%bl, %edi
+               	imulq	%rdi, %rdx

@@ -32804,8 +33330,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x432f3f <mi_find_page+0x1af>
-               	nopl	(%rax)
+               	jmp	0x43388b <mi_find_page+0x1bb>
+               	nopw	%cs:(%rax,%rax)

@@ -32913,46 +33439,48 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -32963,96 +33491,95 @@
@@@[(3, 8), (40, 44), (47, 52), (53, 57), (77, 83), (84, 86), (87, 99), (102, 111), (112, 114), (118, 123), (124, 125)]@@@
-               	jmp	0x433319 <mi_page_fresh_alloc+0x279>
-               	nopl	(%rax)
+               	jmp	0x433ca9 <mi_page_fresh_alloc+0x289>
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	jmp	0x433370 <mi_page_fresh_alloc+0x2d0>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x433d00 <mi_page_fresh_alloc+0x2e0>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x43338d <mi_page_fresh_alloc+0x2ed>
+               	testb	%cl, %cl
+               	jne	0x433d1f <mi_page_fresh_alloc+0x2ff>
@@@@
-               	je	0x433857 <mi_page_fresh_alloc+0x7b7>
-               	movq	%r15, %rdi
-               	andq	$-4194304, %rdi         # imm = 0xFFC00000
+               	je	0x434212 <mi_page_fresh_alloc+0x7f2>
+               	movq	%r15, %rsi
+               	andq	$-4194304, %rsi         # imm = 0xFFC00000
@@@@
-               	movl	112(%rdi), %edx
+               	movl	112(%rsi), %edx
@@@@
-               	jne	0x4333f5 <mi_page_fresh_alloc+0x355>
-               	movq	72(%rdi), %rax
-               	movq	16(%rsp), %rbx
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x433458 <mi_page_fresh_alloc+0x3b8>
-               	jmp	0x43340e <mi_page_fresh_alloc+0x36e>
-               	movb	96(%rdi), %cl
+               	jne	0x433d79 <mi_page_fresh_alloc+0x359>
+               	movq	72(%rsi), %rax
+               	jmp	0x433d85 <mi_page_fresh_alloc+0x365>
+               	movq	96(%rsi), %rcx
@@@@
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x433458 <mi_page_fresh_alloc+0x3b8>
-               	movq	80(%rdi), %rsi
+               	movb	(%r15), %cl
+               	movzbl	%cl, %edi
+               	testb	%dil, %dil
+               	jne	0x433ddf <mi_page_fresh_alloc+0x3bf>
+               	movq	80(%rsi), %rbp
@@@@
-               	subq	%rsi, %rcx
+               	subq	%rbp, %rcx
@@@@
-               	je	0x433455 <mi_page_fresh_alloc+0x3b5>
-               	imulq	%r9, %rax
-               	addq	%rdi, %rax
+               	je	0x433ddc <mi_page_fresh_alloc+0x3bc>
+               	imulq	%rdi, %rax
@@@@
+               	addq	%rbp, %rax

@@ -33069,74 +33596,75 @@
@@@[(7, 10), (12, 29), (30, 51), (52, 74), (75, 85), (87, 91), (105, 109), (113, 119)]@@@
-               	movq	%rax, %r8
-               	jmp	0x433489 <mi_page_fresh_alloc+0x3e9>
+               	jmp	0x433e0a <mi_page_fresh_alloc+0x3ea>
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
-               	jne	0x4335c2 <mi_page_fresh_alloc+0x522>
-               	movzwl	2(%r15), %r10d
-               	cmpw	%r8w, %r10w
-               	jae	0x4335c2 <mi_page_fresh_alloc+0x522>
-               	movl	112(%rdi), %eax
-               	cmpl	$3, %eax
-               	jne	0x4334d7 <mi_page_fresh_alloc+0x437>
-               	movq	72(%rdi), %rsi
-               	testb	%r9b, %r9b
-               	je	0x4334e7 <mi_page_fresh_alloc+0x447>
+               	jne	0x433f60 <mi_page_fresh_alloc+0x540>
+               	movzwl	2(%r15), %ecx
+               	cmpw	%ax, %cx
+               	jae	0x433f60 <mi_page_fresh_alloc+0x540>
+               	movzwl	%cx, %r8d
+               	movl	112(%rsi), %edx
+               	cmpl	$3, %edx
+               	jne	0x433e5c <mi_page_fresh_alloc+0x43c>
+               	movq	72(%rsi), %rax
+               	testb	%dil, %dil
+               	je	0x433e6d <mi_page_fresh_alloc+0x44d>
@@@@
-               	jmp	0x433571 <mi_page_fresh_alloc+0x4d1>
-               	movb	96(%rdi), %cl
-               	movl	$1, %esi
-               	shlq	%cl, %rsi
-               	testb	%r9b, %r9b
-               	jne	0x4334cf <mi_page_fresh_alloc+0x42f>
-               	movq	80(%rdi), %rdx
-               	movq	%rsi, %rcx
-               	subq	%rdx, %rcx
-               	cmpl	$1, %eax
-               	ja	0x43351b <mi_page_fresh_alloc+0x47b>
+               	jmp	0x433efd <mi_page_fresh_alloc+0x4dd>
+               	movq	96(%rsi), %rcx
+               	movl	$1, %eax
+               	shlq	%cl, %rax
+               	testb	%dil, %dil
+               	jne	0x433e54 <mi_page_fresh_alloc+0x434>
+               	movq	80(%rsi), %rbx
+               	movq	%rax, %rcx
+               	subq	%rbx, %rcx
+               	cmpl	$1, %edx
+               	ja	0x433ea1 <mi_page_fresh_alloc+0x481>
@@@@
-               	je	0x43351b <mi_page_fresh_alloc+0x47b>
-               	imulq	%r9, %rsi
-               	addq	%rsi, %rdi
-               	addq	%rdx, %rdi
-               	movq	%rdi, %rax
+               	je	0x433ea1 <mi_page_fresh_alloc+0x481>
+               	imulq	%rdi, %rax
+               	addq	%rax, %rsi
+               	addq	%rbx, %rsi
+               	movq	%rsi, %rax
@@@@
-               	je	0x433556 <mi_page_fresh_alloc+0x4b6>
-               	movq	%rdi, %rax
+               	je	0x433ee2 <mi_page_fresh_alloc+0x4c2>
+               	movq	%rsi, %rax
@@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	ja	0x433277 <mi_page_fresh_alloc+0x1d7>
-               	jmp	0x43327b <mi_page_fresh_alloc+0x1db>
-               	movl	%edi, %eax
+               	ja	0x433bfe <mi_page_fresh_alloc+0x1de>
+               	jmp	0x433c02 <mi_page_fresh_alloc+0x1e2>
+               	movl	%esi, %eax

@@ -33145,14 +33673,15 @@
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

@@ -33161,45 +33690,50 @@
@@@[(3, 9), (11, 17), (34, 35), (56, 60)]@@@
-               	callq	0x434060 <mi_page_free_list_extend>
-               	addw	%r12w, 2(%r15)
+               	callq	0x434a30 <mi_page_free_list_extend>
+               	movzwl	2(%r15), %eax
+               	addl	%r12d, %eax
+               	movw	%ax, 2(%r15)
@@@@
-               	jne	0x4335c2 <mi_page_fresh_alloc+0x522>
-               	andb	$-2, 7(%r15)
+               	jne	0x433f60 <mi_page_fresh_alloc+0x540>
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

@@ -33241,21 +33775,22 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -33322,16 +33857,18 @@
@@@[(13, 19)]@@@
-               	jne	0x433840 <mi_page_fresh_alloc+0x7a0>
-               	addq	$1, 3016(%r12)
+               	jne	0x4341f0 <mi_page_fresh_alloc+0x7d0>
+               	movq	3016(%r12), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%r12)

@@ -33341,7 +33878,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -33352,23 +33889,23 @@
@@@[(3, 5), (11, 13), (15, 23)]@@@
-               	movq	%rdi, %r13
+               	movq	%rdi, %r12
@@@@
-               	movq	(%r14), %r12
+               	movq	(%r14), %r13
@@@@
-               	testq	%r12, %r12
-               	je	0x433e90 <mi_page_queue_find_free_ex+0x620>
-               	movq	%r12, %rbx
-               	movq	48(%r12), %r12
+               	testq	%r13, %r13
+               	je	0x434850 <mi_page_queue_find_free_ex+0x620>
+               	movq	%r13, %rbx
+               	movq	48(%r13), %r13

@@ -33386,81 +33923,85 @@
@@@[(28, 32), (33, 43), (95, 99)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
@@@@
-               	jne	0x43403c <mi_page_queue_find_free_ex+0x7cc>
-               	movzwl	2(%rbx), %edi
-               	movzwl	4(%rbx), %ebp
-               	cmpw	%bp, %di
-               	jb	0x433f76 <mi_page_queue_find_free_ex+0x706>
+               	jne	0x434a0a <mi_page_queue_find_free_ex+0x7da>
+               	movzwl	2(%rbx), %eax
+               	movzwl	4(%rbx), %ecx
+               	cmpw	%cx, %ax
+               	jb	0x434937 <mi_page_queue_find_free_ex+0x707>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)

@@ -33471,22 +34012,22 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -33716,140 +34257,146 @@
@@@[(28, 34), (37, 41), (42, 56), (57, 61), (62, 64), (78, 79), (83, 85), (94, 98), (117, 125), (127, 131), (133, 135), (140, 150), (152, 164), (165, 172), (174, 176), (181, 185), (186, 190), (192, 194), (195, 205)]@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x4338b0 <mi_page_queue_find_free_ex+0x40>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x434270 <mi_page_queue_find_free_ex+0x40>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %edx
+               	subl	%eax, %edx
+               	movl	%edx, 16(%rbx)
@@@@
-               	jne	0x433e4d <mi_page_queue_find_free_ex+0x5dd>
-               	jmp	0x4338b0 <mi_page_queue_find_free_ex+0x40>
-               	nopl	(%rax)
-               	movq	3024(%r13), %rbp
-               	cmpq	3032(%r13), %rbp
-               	jbe	0x433ef0 <mi_page_queue_find_free_ex+0x680>
-               	movl	$74, %r12d
+               	jne	0x43480d <mi_page_queue_find_free_ex+0x5dd>
+               	jmp	0x434270 <mi_page_queue_find_free_ex+0x40>
+               	nop
+               	movq	3024(%r12), %rbp
+               	cmpq	3032(%r12), %rbp
+               	jbe	0x4348b0 <mi_page_queue_find_free_ex+0x680>
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
-               	ja	0x433ea9 <mi_page_queue_find_free_ex+0x639>
+               	cmpq	3032(%r12), %rbp
+               	ja	0x43486b <mi_page_queue_find_free_ex+0x63b>
@@@@
-               	callq	0x42e350 <_mi_page_free>
-               	jmp	0x433f20 <mi_page_queue_find_free_ex+0x6b0>
-               	cmpq	%r12, %rbp
-               	cmovbq	%rbp, %r12
+               	callq	0x42eba0 <_mi_page_free>
+               	jmp	0x4348e0 <mi_page_queue_find_free_ex+0x6b0>
+               	cmpq	%r13, %rbp
+               	cmovbq	%rbp, %r13
@@@@
-               	jmp	0x433f20 <mi_page_queue_find_free_ex+0x6b0>
+               	jmp	0x4348e0 <mi_page_queue_find_free_ex+0x6b0>
+               	movzwl	%ax, %r8d
+               	movzwl	%cx, %ebp
@@@@
-               	movl	20(%rbx), %r8d
+               	movl	20(%rbx), %edi
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x433ff4 <mi_page_queue_find_free_ex+0x784>
-               	jmp	0x433fac <mi_page_queue_find_free_ex+0x73c>
-               	movb	96(%rax), %cl
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x4349b9 <mi_page_queue_find_free_ex+0x789>
+               	jmp	0x434970 <mi_page_queue_find_free_ex+0x740>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x433ff4 <mi_page_queue_find_free_ex+0x784>
-               	movq	80(%rax), %r10
-               	movq	%rsi, %r9
-               	subq	%r10, %r9
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x4349b9 <mi_page_queue_find_free_ex+0x789>
+               	movq	80(%rax), %r9
+               	movq	%rsi, %r10
+               	subq	%r9, %r10
@@@@
-               	ja	0x433ff1 <mi_page_queue_find_free_ex+0x781>
-               	testl	%r8d, %r8d
-               	je	0x433ff1 <mi_page_queue_find_free_ex+0x781>
+               	ja	0x4349b6 <mi_page_queue_find_free_ex+0x786>
+               	testl	%edi, %edi
+               	je	0x4349b6 <mi_page_queue_find_free_ex+0x786>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax
@@@@
-               	divq	%r8
-               	jmp	0x433fdf <mi_page_queue_find_free_ex+0x76f>
+               	divq	%rdi
+               	jmp	0x4349a4 <mi_page_queue_find_free_ex+0x774>
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

@@ -33858,12 +34405,18 @@
@@@[(3, 9), (10, 20)]@@@
-               	callq	0x434060 <mi_page_free_list_extend>
-               	addw	%bp, 2(%rbx)
+               	callq	0x434a30 <mi_page_free_list_extend>
+               	movzwl	2(%rbx), %eax
+               	addl	%ebp, %eax
+               	movw	%ax, 2(%rbx)
@@@@
-               	jne	0x43403c <mi_page_queue_find_free_ex+0x7cc>
-               	andb	$-2, 7(%rbx)
-               	andb	$1, 7(%rbx)
+               	jne	0x434a0a <mi_page_queue_find_free_ex+0x7da>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -33876,66 +34429,68 @@
@@@[(3, 5), (7, 49), (50, 54), (55, 61), (62, 66), (67, 83), (85, 111), (112, 116)]@@@
-               	movq	%rdx, %r9
+               	movq	%rdx, %r8
@@@@
-               	movl	20(%rdi), %r10d
-               	movl	112(%rax), %edx
-               	cmpl	$3, %edx
-               	jne	0x43407e <mi_page_free_list_extend+0x1e>
-               	movq	72(%rax), %r8
-               	jmp	0x43408a <mi_page_free_list_extend+0x2a>
-               	movb	96(%rax), %cl
-               	movl	$1, %r8d
-               	shlq	%cl, %r8
-               	movzbl	(%rdi), %ecx
-               	imulq	%rcx, %r8
-               	addq	%rax, %r8
-               	testq	%rcx, %rcx
-               	jne	0x4340d3 <mi_page_free_list_extend+0x73>
-               	addq	80(%rax), %r8
-               	cmpl	$1, %edx
-               	ja	0x4340d3 <mi_page_free_list_extend+0x73>
-               	testl	%r10d, %r10d
-               	je	0x4340d3 <mi_page_free_list_extend+0x73>
-               	movq	%r8, %rax
+               	movl	20(%rdi), %r9d
+               	movl	112(%rax), %r10d
+               	cmpl	$3, %r10d
+               	jne	0x434a50 <mi_page_free_list_extend+0x20>
+               	movq	72(%rax), %r11
+               	jmp	0x434a5d <mi_page_free_list_extend+0x2d>
+               	movq	96(%rax), %rcx
+               	movl	$1, %r11d
+               	shlq	%cl, %r11
+               	movb	(%rdi), %cl
+               	movzbl	%cl, %edx
+               	movq	%rdx, %rcx
+               	imulq	%r11, %rcx
+               	addq	%rax, %rcx
+               	testb	%dl, %dl
+               	jne	0x434aaa <mi_page_free_list_extend+0x7a>
+               	addq	80(%rax), %rcx
+               	cmpl	$1, %r10d
+               	ja	0x434aaa <mi_page_free_list_extend+0x7a>
+               	testl	%r9d, %r9d
+               	je	0x434aaa <mi_page_free_list_extend+0x7a>
+               	movq	%rcx, %rax
@@@@
-               	je	0x4340ba <mi_page_free_list_extend+0x5a>
-               	movq	%r8, %rax
+               	je	0x434a92 <mi_page_free_list_extend+0x62>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r10
-               	jmp	0x4340c2 <mi_page_free_list_extend+0x62>
-               	movl	%r8d, %eax
+               	divq	%r9
+               	jmp	0x434a99 <mi_page_free_list_extend+0x69>
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
-               	jg	0x43411e <mi_page_free_list_extend+0xbe>
-               	addq	$1, %r11
-               	imulq	%rsi, %r11
-               	addq	%r11, %r8
-               	movq	%r10, %rdx
-               	nopw	(%rax,%rax)
-               	movq	%r8, (%rdx)
-               	addq	%rsi, %rdx
-               	addq	%rsi, %r8
-               	cmpq	%rcx, %rdx
-               	jbe	0x434110 <mi_page_free_list_extend+0xb0>
+               	leaq	(%rcx,%rax), %rdx
+               	cmpq	%rax, %r11
+               	jg	0x434aee <mi_page_free_list_extend+0xbe>
+               	addq	$1, %r10
+               	imulq	%rsi, %r10
+               	addq	%r10, %rcx
+               	movq	%r9, %rax
+               	nopl	(%rax)
+               	movq	%rcx, (%rax)
+               	addq	%rsi, %rax
+               	addq	%rsi, %rcx
+               	cmpq	%rdx, %rax
+               	jbe	0x434ae0 <mi_page_free_list_extend+0xb0>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	%r10, 8(%rdi)
+               	movq	%rax, (%rdx)
+               	movq	%r9, 8(%rdi)

@@ -33947,210 +34502,214 @@
@@@[(3, 6), (10, 16), (17, 19), (20, 22), (38, 40), (52, 53), (57, 58), (79, 89), (90, 94), (97, 99), (111, 113), (150, 156), (160, 164), (205, 209), (216, 222), (244, 256), (285, 289), (293, 298)]@@@
-               	movq	%r8, %r14
+               	movq	%r9, %r14
+               	movq	%r8, %rbx
@@@@
-               	je	0x4341ce <mi_segment_reclaim_or_alloc+0x9e>
-               	addq	$-1, 88(%r14)
+               	je	0x434bae <mi_segment_reclaim_or_alloc+0xae>
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
-               	ja	0x434252 <mi_segment_reclaim_or_alloc+0x122>
-               	movq	299589(%rip), %rdx      # 0x47d480 <abandoned_visited_count>
-               	leal	1(%rax), %edi
-               	andl	$4194303, %edi          # imm = 0x3FFFFF
-               	orq	%rcx, %rdi
+               	ja	0x434c32 <mi_segment_reclaim_or_alloc+0x132>
+               	movq	298981(%rip), %rdx      # 0x47dc00 <abandoned_visited_count>
+               	leal	1(%rax), %esi
+               	andl	$4194303, %esi          # imm = 0x3FFFFF
+               	orq	%rcx, %rsi
@@@@
-               	cmpxchgq	%rdi, 299376(%rip)      # 0x47d3c0 <abandoned>
-               	je	0x4342ac <mi_segment_reclaim_or_alloc+0x17c>
+               	cmpxchgq	%rsi, 298768(%rip)      # 0x47db40 <abandoned>
+               	je	0x434c8c <mi_segment_reclaim_or_alloc+0x18c>
@@@@
-               	movq	%rax, %rbx
+               	movq	%rax, %rsi
@@@@
-               	movq	%rbp, 16(%rbx)
+               	movq	%rbp, 16(%rsi)
@@@@
-               	subq	$1, 299243(%rip)        # 0x47d400 <abandoned_count>
-               	addq	$1, 48(%r15)
+               	subq	$1, 298635(%rip)        # 0x47db80 <abandoned_count>
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
-               	callq	0x430be0 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x4314b0 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x430be0 <mi_segment_reclaim>
-               	movq	%rbx, %r9
-               	jmp	0x4343c9 <mi_segment_reclaim_or_alloc+0x299>
-               	movq	299044(%rip), %rax      # 0x47d440 <abandoned_visited>
-               	nopl	(%rax)
+               	movq	%rbx, %r8
+               	callq	0x4314b0 <mi_segment_reclaim>
+               	jmp	0x434daa <mi_segment_reclaim_or_alloc+0x2aa>
+               	movq	298441(%rip), %rax      # 0x47dbc0 <abandoned_visited>
+               	nopw	(%rax,%rax)
@@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
-               	movq	%r14, %r8
-               	callq	0x434760 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x435160 <mi_segment_init>

@@ -34164,24 +34723,23 @@
@@@[(3, 9), (20, 25), (26, 30)]@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x430be0 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x4314b0 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	callq	0x434760 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x435160 <mi_segment_init>
@@@@
-               	jmp	0x434492 <mi_segment_reclaim_or_alloc+0x362>
-               	nopw	(%rax,%rax)
+               	jmp	0x434e83 <mi_segment_reclaim_or_alloc+0x383>
+               	nopl	(%rax)

@@ -34192,73 +34750,76 @@
@@@[(22, 26), (79, 83), (86, 91), (92, 96)]@@@
-               	addq	$-1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x434592 <mi_segment_find_free+0xa2>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x434f89 <mi_segment_find_free+0xa9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x4345f3 <mi_segment_find_free+0x103>
+               	testb	%al, %al
+               	jne	0x434feb <mi_segment_find_free+0x10b>

@@ -34266,95 +34827,98 @@
@@@[(18, 22), (40, 44), (47, 52), (53, 57), (85, 93)]@@@
-               	addq	$1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x434675 <mi_segment_find_free+0x185>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x435073 <mi_segment_find_free+0x193>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x434691 <mi_segment_find_free+0x1a1>
+               	testb	%al, %al
+               	jne	0x435091 <mi_segment_find_free+0x1b1>
@@@@
-               	jmp	0x434741 <mi_segment_find_free+0x251>
-               	movq	56(%r15), %rax
-               	cmpq	64(%r15), %rax
-               	jne	0x434741 <mi_segment_find_free+0x251>
+               	jmp	0x435141 <mi_segment_find_free+0x261>
+               	movq	64(%r15), %rax
+               	cmpq	%rax, 56(%r15)
+               	jne	0x435141 <mi_segment_find_free+0x261>

@@ -34381,406 +34945,400 @@
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
-               	ja	0x4347fd <mi_segment_init+0x9d>
-               	movq	56(%rbp), %rbx
+               	cmpl	$1, %r13d
+               	movq	%rbx, 80(%rsp)
+               	ja	0x4351f5 <mi_segment_init+0x95>
+               	movq	56(%r12), %rbx
@@@@
-               	callq	0x42bc30 <mi_option_get>
-               	xorl	%r11d, %r11d
-               	movl	$0, %ecx
-               	movl	$0, %r13d
+               	callq	0x42c430 <mi_option_get>
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
-               	je	0x434945 <mi_segment_init+0x1e5>
-               	cmpl	$1, %r12d
-               	ja	0x43486f <mi_segment_init+0x10f>
-               	cmpl	%r12d, 112(%r14)
-               	jne	0x43486f <mi_segment_init+0x10f>
-               	cmpq	%rbx, 72(%r14)
-               	jne	0x43486f <mi_segment_init+0x10f>
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
+               	testq	%rbp, %rbp
+               	je	0x435336 <mi_segment_init+0x1d6>
+               	movq	%r14, 96(%rsp)
+               	cmpl	$1, %r13d
+               	ja	0x43525c <mi_segment_init+0xfc>
+               	cmpl	%r13d, 112(%rbp)
+               	jne	0x43525c <mi_segment_init+0xfc>
+               	cmpq	%rbx, 72(%rbp)
+               	jne	0x43525c <mi_segment_init+0xfc>
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
-               	jmp	0x434a56 <mi_segment_init+0x2f6>
-               	movl	%r12d, 52(%rsp)
-               	movq	%rbp, %r12
-               	cmpq	$0, 64(%r14)
-               	je	0x434988 <mi_segment_init+0x228>
-               	leaq	121(%r14), %rbx
-               	xorl	%ebp, %ebp
-               	jmp	0x4348c5 <mi_segment_init+0x165>
-               	nopl	(%rax)
+               	movups	%xmm0, 104(%rbp)
+               	movups	%xmm0, 88(%rbp)
+               	movups	%xmm0, 72(%rbp)
+               	movups	%xmm0, 56(%rbp)
+               	movups	%xmm0, 40(%rbp)
+               	movups	%xmm0, 24(%rbp)
+               	jmp	0x43544c <mi_segment_init+0x2ec>
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, %r14
+               	cmpq	$0, 64(%rbp)
+               	je	0x43538d <mi_segment_init+0x22d>
+               	movb	9(%rsp), %r13b
+               	leaq	121(%rbp), %rbx
+               	xorl	%r12d, %r12d
+               	jmp	0x4352b5 <mi_segment_init+0x155>
@@@@
-               	je	0x4348cf <mi_segment_init+0x16f>
-               	andb	$-3, (%rbx)
+               	je	0x4352bf <mi_segment_init+0x15f>
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
-               	jae	0x43498a <mi_segment_init+0x22a>
+               	cmpq	%rax, %r12
+               	jae	0x43538f <mi_segment_init+0x22f>
@@@@
-               	je	0x434890 <mi_segment_init+0x130>
-               	cmpb	$0, 8(%r14)
-               	jne	0x4348b0 <mi_segment_init+0x150>
+               	je	0x43527d <mi_segment_init+0x11d>
+               	cmpb	$0, 8(%rbp)
+               	jne	0x4352a0 <mi_segment_init+0x140>
@@@@
-               	cmpl	$3, 112(%r14)
-               	jne	0x4348f4 <mi_segment_init+0x194>
-               	movq	72(%r14), %rsi
-               	jmp	0x434901 <mi_segment_init+0x1a1>
-               	movzbl	96(%r14), %ecx
+               	cmpl	$3, 112(%rbp)
+               	jne	0x4352e2 <mi_segment_init+0x182>
+               	movq	72(%rbp), %rsi
+               	jmp	0x4352ee <mi_segment_init+0x18e>
+               	movq	96(%rbp), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
-               	addq	%r14, %rdi
-               	testq	%rax, %rax
-               	jne	0x43491e <mi_segment_init+0x1be>
-               	movq	80(%r14), %rax
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
+               	addq	%rbp, %rdi
+               	testb	%al, %al
+               	jne	0x43530d <mi_segment_init+0x1ad>
+               	movq	80(%rbp), %rax
@@@@
-               	je	0x4348b0 <mi_segment_init+0x150>
-               	orb	$8, (%rbx)
-               	jmp	0x4348b0 <mi_segment_init+0x150>
+               	je	0x4352a0 <mi_segment_init+0x140>
+               	movzbl	(%rbx), %eax
+               	orb	$8, %al
+               	jmp	0x435291 <mi_segment_init+0x131>
@@@@
-               	je	0x4353ab <mi_segment_init+0xc4b>
-               	movq	%rbp, 104(%rsp)
-               	movq	192200(%rip), %rcx      # 0x463830 <os_page_size>
+               	je	0x435d81 <mi_segment_init+0xc21>
+               	movq	191556(%rip), %rcx      # 0x463f98 <os_page_size>
@@@@
-               	jmp	0x434af3 <mi_segment_init+0x393>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	jbe	0x435504 <mi_segment_init+0x3a4>
+               	jmp	0x435c17 <mi_segment_init+0xab7>
@@@@
-               	movq	%r14, %rdi
-               	movq	64(%rsp), %r13
-               	movq	%r13, %rsi
+               	movq	%rbp, %rdi
+               	movq	88(%rsp), %rsi
@@@@
-               	movq	%r12, %rbp
-               	je	0x4349bf <mi_segment_init+0x25f>
+               	movq	%r14, %r12
+               	movl	24(%rsp), %r13d
+               	je	0x4353c6 <mi_segment_init+0x266>
@@@@
-               	jne	0x4349d0 <mi_segment_init+0x270>
-               	jmp	0x4353ab <mi_segment_init+0xc4b>
-               	movq	%r12, %rbp
-               	movq	64(%rsp), %r13
-               	movq	%rbp, %r12
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
-               	leaq	-24(%r13), %rdx
-               	xorl	%ebp, %ebp
-               	movq	%rbx, %rdi
+               	jne	0x4353d7 <mi_segment_init+0x277>
+               	jmp	0x435d81 <mi_segment_init+0xc21>
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
-               	ja	0x434a00 <mi_segment_init+0x2a0>
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
+               	ja	0x435400 <mi_segment_init+0x2a0>
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
-               	movq	190952(%rip), %rax      # 0x463470 <_mi_heap_main+0xb28>
-               	xorq	%r14, %rax
-               	movq	%rax, 88(%r14)
-               	cmpl	$1, %r12d
-               	ja	0x4353ae <mi_segment_init+0xc4e>
-               	movl	112(%r14), %eax
+               	xchgq	%rax, 104(%rbp)
+               	movq	190298(%rip), %rax      # 0x463bd8 <_mi_heap_main+0xb28>
+               	xorq	%rbp, %rax
+               	movq	%rax, 88(%rbp)
+               	cmpl	$1, %r13d
+               	ja	0x435d83 <mi_segment_init+0xc23>
+               	movl	112(%rbp), %eax
@@@@
-               	je	0x434ac4 <mi_segment_init+0x364>
-               	xorl	%ebp, %ebp
-               	jmp	0x434ac4 <mi_segment_init+0x364>
+               	je	0x4354ba <mi_segment_init+0x35a>
+               	xorl	%r12d, %r12d
+               	jmp	0x4354ba <mi_segment_init+0x35a>
@@@@
-               	jmp	0x434af0 <mi_segment_init+0x390>
-               	addq	$16, %rbp
-               	movq	$0, (%rbx)
-               	movq	8(%rbp), %rax
-               	movq	%rax, 32(%r14)
+               	jmp	0x4354e8 <mi_segment_init+0x388>
+               	addq	$16, %r12
+               	movq	$0, (%r14)
+               	movq	8(%r12), %rax
+               	movq	%rax, 32(%rbp)
@@@@
-               	cmoveq	%rbp, %rcx
-               	movq	%r14, (%rcx)
-               	movq	%r14, 8(%rbp)
-               	jmp	0x4353ae <mi_segment_init+0xc4e>
+               	cmoveq	%r12, %rcx
+               	movq	%rbp, (%rcx)
+               	movq	%rbp, 8(%r12)
+               	jmp	0x435d83 <mi_segment_init+0xc23>
@@@@
-               	leaq	4194303(%rbp), %rax
-               	movq	%rax, 80(%rsp)
-               	cmpq	$71303167, %rax         # imm = 0x43FFFFF
-               	movl	%r12d, 52(%rsp)
-               	ja	0x435239 <mi_segment_init+0xad9>
-               	movq	231425(%rip), %rax      # 0x46d318 <_mi_numa_node_count>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	ja	0x435c17 <mi_segment_init+0xab7>
+               	movq	230797(%rip), %rax      # 0x46da98 <_mi_numa_node_count>
@@@@
-               	je	0x434d27 <mi_segment_init+0x5c7>
-               	movq	80(%rsp), %rsi
-               	shrq	$22, %rsi
+               	movq	%rcx, 32(%rsp)
+               	je	0x435df6 <mi_segment_init+0xc96>
+               	movq	%rbp, 104(%rsp)
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, 72(%rsp)
+               	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
@@@@
-               	movq	%rsi, 24(%rsp)
-               	movq	%rbp, 96(%rsp)
-               	jae	0x434b56 <mi_segment_init+0x3f6>
-               	movq	231472(%rip), %r9       # 0x46d370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x434d5a <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
-               	movq	(%rax), %rbp
-               	jmp	0x434c2e <mi_segment_init+0x4ce>
-               	movq	231355(%rip), %rax      # 0x46d318 <_mi_numa_node_count>
+               	jb	0x435548 <mi_segment_init+0x3e8>
+               	movq	230749(%rip), %rax      # 0x46da98 <_mi_numa_node_count>
@@@@
-               	jne	0x434d37 <mi_segment_init+0x5d7>
-               	movq	231423(%rip), %r9       # 0x46d370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x434d5a <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
+               	jne	0x435e05 <mi_segment_init+0xca5>
+               	shrq	$22, %rcx
+               	movq	%rcx, 40(%rsp)
+               	movb	10(%rsp), %r9b
+               	movq	230803(%rip), %r12      # 0x46daf0 <regions_count>
+               	testq	%r12, %r12
+               	je	0x4356f8 <mi_segment_init+0x598>
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	231404(%rip), %r8       # 0x46d380 <regions>
-               	notb	%r11b
-               	movq	%r9, %r14
-               	movl	%r11d, 92(%rsp)
-               	movq	%r9, 56(%rsp)
-               	movl	%r10d, 88(%rsp)
-               	jmp	0x434bbe <mi_segment_init+0x45e>
+               	leaq	230784(%rip), %r8       # 0x46db00 <regions>
+               	movq	%r12, %r13
+               	movq	%r15, 112(%rsp)
+               	movq	%r12, 64(%rsp)
+               	jmp	0x43559e <mi_segment_init+0x43e>
@@@@
-               	addq	$-1, %r14
-               	je	0x434d5a <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r13
+               	je	0x4356f8 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	je	0x434bb0 <mi_segment_init+0x450>
-               	movl	%eax, %edx
-               	shrl	$8, %edx
-               	andl	$1, %edx
+               	je	0x435590 <mi_segment_init+0x430>
+               	testb	%r9b, %r9b
+               	sete	%dl
+               	movl	%eax, %esi
+               	shrl	$8, %esi
+               	andl	$1, %esi
@@@@
-               	testb	%dl, %r11b
-               	jne	0x434bb0 <mi_segment_init+0x450>
+               	testb	%sil, %dl
+               	jne	0x435590 <mi_segment_init+0x430>
@@@@
-               	je	0x434bb0 <mi_segment_init+0x450>
+               	je	0x435590 <mi_segment_init+0x430>
+               	movl	%r10d, %r12d
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r12
-               	callq	0x435550 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r14
+               	movl	%r9d, %r15d
+               	callq	0x435f40 <_mi_bitmap_try_find_claim_field>
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
-               	jmp	0x434d1a <mi_segment_init+0x5ba>
-               	testb	%r11b, %r11b
-               	movq	%r9, 56(%rsp)
-               	je	0x434ca5 <mi_segment_init+0x545>
-               	leaq	231229(%rip), %r8       # 0x46d380 <regions>
-               	movq	%r9, %r12
-               	jmp	0x434c5e <mi_segment_init+0x4fe>
-               	nopl	(%rax,%rax)
+               	jmp	0x4356e1 <mi_segment_init+0x581>
+               	testb	%r9b, %r9b
+               	je	0x435681 <mi_segment_init+0x521>
+               	leaq	230613(%rip), %r8       # 0x46db00 <regions>
+               	movq	%r12, %r14
+               	jmp	0x43563e <mi_segment_init+0x4de>
@@@@
-               	addq	$-1, %r12
-               	je	0x434d5a <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r14
+               	je	0x4356f8 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r14
-               	shlq	$6, %r14
-               	movq	(%r14,%r8), %rax
+               	movq	%rbp, %r13
+               	shlq	$6, %r13
+               	movq	(%r13,%r8), %rax
@@@@
-               	je	0x434c50 <mi_segment_init+0x4f0>
-               	leaq	(%r14,%r8), %rdi
+               	je	0x435630 <mi_segment_init+0x4d0>
+               	leaq	(%r8,%r13), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
@@@@
-               	callq	0x435550 <_mi_bitmap_try_find_claim_field>
-               	movq	56(%rsp), %r9
+               	callq	0x435f40 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	24(%rsp), %rsi
@@@@
-               	je	0x434c50 <mi_segment_init+0x4f0>
-               	addq	%r14, %r8
-               	jmp	0x434d1a <mi_segment_init+0x5ba>
+               	je	0x435630 <mi_segment_init+0x4d0>
+               	addq	%r13, %r8
+               	jmp	0x4356e1 <mi_segment_init+0x581>
@@@@
-               	leaq	231122(%rip), %r8       # 0x46d380 <regions>
-               	movq	%r9, %rbx
-               	jmp	0x434cce <mi_segment_init+0x56e>
-               	nopw	%cs:(%rax,%rax)
+               	leaq	230518(%rip), %r8       # 0x46db00 <regions>
+               	movq	%r12, %rbx
+               	jmp	0x43569a <mi_segment_init+0x53a>
+               	nop
@@@@
-               	je	0x434d5a <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	je	0x4356f8 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r12
-               	shlq	$6, %r12
-               	movq	(%r12,%r8), %rax
+               	movq	%rbp, %r14
+               	shlq	$6, %r14
+               	movq	(%r14,%r8), %rax
@@@@
-               	jne	0x434cc0 <mi_segment_init+0x560>
-               	leaq	(%r12,%r8), %rdi
+               	jne	0x435690 <mi_segment_init+0x530>
+               	leaq	(%r14,%r8), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r14
-               	callq	0x435550 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r13
+               	callq	0x435f40 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	56(%rsp), %r9
-               	movq	%r14, %r8
-               	movq	24(%rsp), %rsi
+               	movq	%r13, %r8
@@@@
-               	je	0x434cc0 <mi_segment_init+0x560>
-               	addq	%r12, %r8
-               	movq	32(%rsp), %rax
+               	je	0x435690 <mi_segment_init+0x530>
+               	addq	%r14, %r8
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	movq	56(%rsp), %rax
@@@@
-               	jmp	0x434f04 <mi_segment_init+0x7a4>
-               	movl	%r11d, %ebx
-               	callq	0x42cfe0 <_mi_os_numa_node_count_get>
-               	movl	%ebx, %r11d
-               	jmp	0x434b20 <mi_segment_init+0x3c0>
-               	movl	%r11d, %ebx
-               	callq	0x435430 <_mi_os_numa_node_get>
-               	movl	%ebx, %r11d
-               	movq	24(%rsp), %rsi
-               	movl	%eax, %r10d
-               	movq	230943(%rip), %r9       # 0x46d370 <regions_count>
-               	testq	%r9, %r9
-               	jne	0x434b7a <mi_segment_init+0x41a>
-               	movb	10(%rsp), %bl
-               	movq	230923(%rip), %rax      # 0x46d370 <regions_count>
+               	jmp	0x4358b1 <mi_segment_init+0x751>
+               	movb	9(%rsp), %bl
+               	movb	10(%rsp), %bpl
+               	movq	230376(%rip), %rax      # 0x46daf0 <regions_count>
@@@@
-               	ja	0x43521e <mi_segment_init+0xabe>
-               	testb	%r13b, %r13b
-               	je	0x434d88 <mi_segment_init+0x628>
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	ja	0x435bfc <mi_segment_init+0xa9c>
+               	testb	%bl, %bl
+               	je	0x435734 <mi_segment_init+0x5d4>
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

@@ -34790,70 +35348,70 @@
@@@[(19, 23), (32, 37), (38, 41), (42, 44), (45, 49), (50, 54), (55, 62), (63, 69), (70, 80), (81, 82), (89, 99)]@@@
-               	movzbl	12(%rsp), %ecx
+               	xorl	%ecx, %ecx
+               	cmpb	$0, 12(%rsp)
+               	setne	%cl
@@@@
-               	callq	0x42cc90 <_mi_warning_message>
-               	movq	24(%rsp), %rsi
-               	jmp	0x434efc <mi_segment_init+0x79c>
+               	callq	0x42d490 <_mi_warning_message>
+               	jmp	0x4358a9 <mi_segment_init+0x749>
@@@@
-               	movq	24(%rsp), %rsi
-               	jmp	0x434efc <mi_segment_init+0x79c>
+               	jmp	0x4358a9 <mi_segment_init+0x749>
@@@@
-               	leaq	230717(%rip), %rbx      # 0x46d380 <regions>
+               	leaq	230162(%rip), %rsi      # 0x46db00 <regions>
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
-               	ja	0x434ebc <mi_segment_init+0x75c>
-               	testq	%rsi, %rsi
-               	je	0x434eba <mi_segment_init+0x75a>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x435869 <mi_segment_init+0x709>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x435867 <mi_segment_init+0x707>
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

@@ -34861,35 +35419,33 @@
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
-               	ja	0x434f4c <mi_segment_init+0x7ec>
-               	testq	%rsi, %rsi
-               	je	0x434f4a <mi_segment_init+0x7ea>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x4358f9 <mi_segment_init+0x799>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4358f7 <mi_segment_init+0x797>
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
-               	jne	0x434f60 <mi_segment_init+0x800>
+               	cmpxchgq	%rcx, 24(%r8,%rsi,8)
+               	jne	0x435900 <mi_segment_init+0x7a0>

@@ -34899,86 +35455,89 @@
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
-               	je	0x434fe0 <mi_segment_init+0x880>
-               	movq	%rbx, %rdx
+               	je	0x435983 <mi_segment_init+0x823>
+               	movq	%rdi, %rdx
@@@@
-               	movq	$-1, %rdi
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x43501d <mi_segment_init+0x8bd>
-               	testq	%rsi, %rsi
-               	je	0x43501b <mi_segment_init+0x8bb>
-               	movl	%ebx, %eax
+               	movq	$-1, %rsi
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x4359cd <mi_segment_init+0x86d>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4359cb <mi_segment_init+0x86b>
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
-               	jmp	0x43501d <mi_segment_init+0x8bd>
+               	shlq	%cl, %rsi
+               	jmp	0x4359cd <mi_segment_init+0x86d>
@@@@
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x4350e5 <mi_segment_init+0x985>
-               	testq	%rsi, %rsi
-               	je	0x4350e3 <mi_segment_init+0x983>
-               	movl	%ebx, %eax
+               	movq	32(%rsp), %rbx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x435aa6 <mi_segment_init+0x946>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x435aa4 <mi_segment_init+0x944>
+               	movl	%edi, %eax
@@@@
-               	movl	%esi, %ecx
@@@@
-               	jmp	0x4350e5 <mi_segment_init+0x985>
-               	xorl	%edi, %edi
+               	movq	32(%rsp), %rbx
+               	jmp	0x435aa6 <mi_segment_init+0x946>
+               	xorl	%esi, %esi
@@@@
-               	orq	%rdi, %rcx
+               	orq	%rsi, %rcx
@@@@
-               	jne	0x435030 <mi_segment_init+0x8d0>
-               	andq	%rdi, %rax
-               	cmpq	%rdi, %rax
-               	je	0x4350fc <mi_segment_init+0x99c>
-               	movq	%r9, 32(%rsp)
-               	movq	%r8, %r13
+               	jne	0x4359e0 <mi_segment_init+0x880>
+               	andq	%rsi, %rax
+               	cmpq	%rsi, %rax
+               	movq	32(%rsp), %rbx
+               	je	0x435abd <mi_segment_init+0x95d>
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
-               	callq	0x42ea80 <mi_os_commitx>
+               	callq	0x42f2d0 <mi_os_commitx>
@@@@
-               	je	0x43509b <mi_segment_init+0x93b>
-               	movq	%rbp, %r10
+               	je	0x435a58 <mi_segment_init+0x8f8>
@@@@
-               	movq	24(%rsp), %rsi
-               	movq	%r13, %r8
-               	movq	32(%rsp), %r9
-               	jmp	0x4350fc <mi_segment_init+0x99c>
-               	movq	40(%rsp), %rdx
-               	cmpq	$268435455, %rbp        # imm = 0xFFFFFFF
-               	jbe	0x4350b3 <mi_segment_init+0x953>
+               	movq	32(%rsp), %rbx
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x435abd <mi_segment_init+0x95d>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x435a72 <mi_segment_init+0x912>
@@@@
-               	movq	%r13, %rbp
-               	jmp	0x435214 <mi_segment_init+0xab4>
-               	movq	24(%rsp), %rcx
+               	movq	24(%rsp), %rdi
+               	jmp	0x435bf2 <mi_segment_init+0xa92>
+               	movq	40(%rsp), %rcx
@@@@
-               	movq	%r13, %rbp
-               	je	0x43520d <mi_segment_init+0xaad>
+               	movq	24(%rsp), %rdi
+               	je	0x435beb <mi_segment_init+0xa8b>

@@ -34987,169 +35546,168 @@
@@@[(6, 8), (13, 33), (34, 41), (42, 81), (82, 90), (91, 93), (94, 101), (102, 104), (105, 111), (115, 122), (123, 136), (146, 148), (156, 162), (174, 178), (181, 186), (188, 193), (195, 199), (213, 215), (218, 226), (244, 246)]@@@
-               	movq	%rbx, %rax
+               	movq	%rdi, %rax
@@@@
-               	leaq	40(%r8), %rdx
-               	movq	40(%rsp), %rbp
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x435127 <mi_segment_init+0x9c7>
-               	shrq	$6, %rbp
-               	movq	(%rdx,%rbp,8), %rax
-               	testq	%rax, %rax
-               	je	0x4351f1 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	xorl	%edi, %edi
-               	jmp	0x435185 <mi_segment_init+0xa25>
-               	movl	%ebp, %eax
+               	movq	48(%rsp), %rdx
+               	movq	$-1, %rsi
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x435afc <mi_segment_init+0x99c>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x435afa <mi_segment_init+0x99a>
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
-               	je	0x4351f1 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x435169 <mi_segment_init+0xa09>
-               	xorl	%edi, %edi
-               	jmp	0x435185 <mi_segment_init+0xa25>
-               	movq	$-1, %rdi
-               	testq	%rsi, %rsi
-               	je	0x435185 <mi_segment_init+0xa25>
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	shlq	%cl, %rsi
+               	movq	32(%rsp), %rbx
+               	jmp	0x435afc <mi_segment_init+0x99c>
+               	xorl	%esi, %esi
+               	shrq	$6, %rdx
+               	movq	40(%r8,%rdx,8), %rax
+               	testq	%rsi, %rax
+               	je	0x435bcf <mi_segment_init+0xa6f>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x435b20 <mi_segment_init+0x9c0>
+               	xorl	%esi, %esi
+               	jmp	0x435b52 <mi_segment_init+0x9f2>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x435b4b <mi_segment_init+0x9eb>
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
+               	jmp	0x435b52 <mi_segment_init+0x9f2>
+               	movq	$-1, %rsi
+               	shrq	$6, %rdx
@@@@
-               	andq	%rdi, (%rdx)
+               	andq	%rsi, 40(%r8,%rdx,8)
@@@@
-               	je	0x4351c6 <mi_segment_init+0xa66>
-               	movq	%r9, %r13
-               	movq	%r8, %rbp
+               	movq	%r9, 56(%rsp)
+               	movq	%rdi, 64(%rsp)
+               	je	0x435bab <mi_segment_init+0xa4b>
+               	movq	%r8, 24(%rsp)
@@@@
-               	andq	$-4194304, %r10         # imm = 0xFFC00000
+               	andq	$-4194304, %rbx         # imm = 0xFFC00000
@@@@
-               	movq	%r14, %rdi
-               	movq	%r10, %rsi
-               	callq	0x4357f0 <_mi_os_unreset>
+               	movq	%rbp, %rdi
+               	movq	%rbx, %rsi
+               	callq	0x4361e0 <_mi_os_unreset>
@@@@
-               	movq	%rbp, %r8
-               	movq	%r13, %r9
-               	jmp	0x4351f1 <mi_segment_init+0xa91>
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x435bcf <mi_segment_init+0xa6f>
@@@@
-               	movq	%rbx, 32(%rsp)
-               	movq	%r8, %r13
-               	movq	%r9, %rbp
-               	movq	%r10, %rbx
-               	callq	0x42bc30 <mi_option_get>
-               	movq	%rbx, %r10
-               	movq	%rbp, %r9
-               	movq	%r13, %r8
+               	movq	%r8, %rbx
+               	callq	0x42c430 <mi_option_get>
+               	movq	64(%rsp), %rdi
+               	movq	56(%rsp), %r9
+               	movq	%rbx, %r8
@@@@
-               	addq	%rbx, %r8
+               	addq	%rdi, %r8
@@@@
-               	andq	%rsi, 16(%rbp,%rdx,8)
-               	leaq	67563(%rip), %rdi       # 0x445a10 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
-               	movq	96(%rsp), %rbp
+               	andq	%rsi, 16(%rdi,%rdx,8)
+               	leaq	68685(%rip), %rdi       # 0x446850 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
+               	movq	104(%rsp), %rbp
@@@@
-               	callq	0x435610 <_mi_arena_alloc_aligned>
-               	movq	%rax, %r14
+               	callq	0x436000 <_mi_arena_alloc_aligned>
+               	movq	%rax, %rbp
@@@@
-               	testq	%r14, %r14
-               	movq	104(%rsp), %rbp
-               	je	0x4353ab <mi_segment_init+0xc4b>
+               	testq	%rbp, %rbp
+               	je	0x435d81 <mi_segment_init+0xc21>
@@@@
-               	movq	64(%rsp), %r13
-               	jne	0x4352c2 <mi_segment_init+0xb62>
-               	movq	%r8, 32(%rsp)
+               	jne	0x435c98 <mi_segment_init+0xb38>
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
-               	leaq	195357(%rip), %rax      # 0x464e00 <_mi_stats_main>
+               	movb	%cl, 8(%rbp)
+               	movb	%al, 9(%rbp)
+               	movq	112(%r12), %rcx
+               	leaq	194759(%rip), %rax      # 0x465580 <_mi_stats_main>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -35157,30 +35715,32 @@
@@@[(20, 24), (28, 30), (33, 39)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	callq	0x42ed70 <_mi_mem_free>
-               	xorl	%r14d, %r14d
-               	movq	%r14, %rax
+               	callq	0x42f5e0 <_mi_mem_free>
+               	xorl	%ebp, %ebp
+               	movq	%rbp, %rax

@@ -35193,28 +35753,36 @@
@@@[(6, 10), (11, 23), (24, 41), (45, 46)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	addq	56(%rbp), %rax
-               	movq	%rax, 56(%rbp)
-               	cmpq	64(%rbp), %rax
-               	jbe	0x4353f4 <mi_segment_init+0xc94>
-               	movq	%rax, 64(%rbp)
-               	movq	72(%rbp), %rax
+               	addq	56(%r12), %rax
+               	movq	%rax, 56(%r12)
+               	cmpq	64(%r12), %rax
+               	jbe	0x435dd4 <mi_segment_init+0xc74>
+               	movq	%rax, 64(%r12)
+               	movq	72(%r12), %rax
@@@@
-               	movq	%rax, 72(%rbp)
-               	cmpq	80(%rbp), %rax
-               	jbe	0x4349d0 <mi_segment_init+0x270>
-               	movq	%rax, 80(%rbp)
-               	jmp	0x4349d0 <mi_segment_init+0x270>
+               	movq	%rax, 72(%r12)
+               	cmpq	80(%r12), %rax
+               	jbe	0x4353d7 <mi_segment_init+0x277>
+               	movq	%rax, 80(%r12)
+               	jmp	0x4353d7 <mi_segment_init+0x277>
+               	callq	0x42d7e0 <_mi_os_numa_node_count_get>
+               	movq	32(%rsp), %rcx
+               	jmp	0x435519 <mi_segment_init+0x3b9>
+               	callq	0x435e30 <_mi_os_numa_node_get>
+               	movq	32(%rsp), %rcx
+               	movl	%eax, %r10d
+               	jmp	0x435548 <mi_segment_init+0x3e8>
@@@@
-               	movq	24(%rsp), %rsi

@@ -35222,15 +35790,15 @@
@@@[(3, 15), (17, 19)]@@@
-               	movq	229077(%rip), %r14      # 0x46d318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	je	0x4354bc <_mi_os_numa_node_get+0x8c>
-               	xorl	%ebx, %ebx
-               	cmpq	$2, %r14
-               	jb	0x4354ad <_mi_os_numa_node_get+0x7d>
+               	movq	228437(%rip), %rbx      # 0x46da98 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	je	0x435eb7 <_mi_os_numa_node_get+0x87>
+               	xorl	%eax, %eax
+               	cmpq	$2, %rbx
+               	jb	0x435eaa <_mi_os_numa_node_get+0x7a>
@@@@
-               	xorl	%ebx, %ebx
+               	xorl	%r14d, %r14d

@@ -35238,108 +35806,105 @@
@@@[(3, 20), (21, 28), (29, 34), (39, 45), (46, 50), (51, 65), (66, 70), (72, 74), (76, 78), (79, 93), (94, 100)]@@@
-               	jne	0x435486 <_mi_os_numa_node_get+0x56>
-               	movq	16(%rsp), %rbx
-               	cmpq	%r14, %rbx
-               	jb	0x4354ad <_mi_os_numa_node_get+0x7d>
-               	movq	%rbx, %rax
-               	orq	%r14, %rax
-               	shrq	$32, %rax
-               	je	0x4354a4 <_mi_os_numa_node_get+0x74>
-               	movq	%rbx, %rax
+               	movq	16(%rsp), %rax
+               	cmovneq	%r14, %rax
+               	cmpq	%rbx, %rax
+               	jb	0x435eaa <_mi_os_numa_node_get+0x7a>
+               	movq	%rax, %rcx
+               	orq	%rbx, %rcx
+               	shrq	$32, %rcx
+               	je	0x435ea4 <_mi_os_numa_node_get+0x74>
@@@@
-               	divq	%r14
-               	movq	%rdx, %rbx
-               	jmp	0x4354ad <_mi_os_numa_node_get+0x7d>
-               	movl	%ebx, %eax
+               	divq	%rbx
+               	movq	%rdx, %rax
+               	jmp	0x435eaa <_mi_os_numa_node_get+0x7a>
@@@@
-               	divl	%r14d
-               	movl	%edx, %ebx
-               	movl	%ebx, %eax
+               	divl	%ebx
+               	movl	%edx, %eax
@@@@
-               	movq	228949(%rip), %r14      # 0x46d318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	jne	0x435448 <_mi_os_numa_node_get+0x18>
+               	movq	228314(%rip), %rbx      # 0x46da98 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	jne	0x435e48 <_mi_os_numa_node_get+0x18>
@@@@
-               	callq	0x42bc30 <mi_option_get>
-               	movq	%rax, %r14
+               	callq	0x42c430 <mi_option_get>
+               	movq	%rax, %rbx
@@@@
-               	jg	0x43552c <_mi_os_numa_node_get+0xfc>
-               	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
-               	leaq	65298(%rip), %r15       # 0x4453f9 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
-               	leaq	16(%rsp), %rbx
-               	cmpl	$255, %r14d
-               	je	0x435522 <_mi_os_numa_node_get+0xf2>
-               	leal	2(%r14), %ecx
+               	jg	0x435f21 <_mi_os_numa_node_get+0xf1>
+               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
+               	leaq	66392(%rip), %r14       # 0x446239 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	16(%rsp), %r15
+               	cmpl	$255, %ebx
+               	je	0x435f19 <_mi_os_numa_node_get+0xe9>
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
-               	je	0x4354ec <_mi_os_numa_node_get+0xbc>
-               	jmp	0x435528 <_mi_os_numa_node_get+0xf8>
-               	movl	$256, %r14d             # imm = 0x100
-               	addl	$1, %r14d
-               	movq	%r14, 228837(%rip)      # 0x46d318 <_mi_numa_node_count>
-               	leaq	65247(%rip), %rdi       # 0x445419 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
-               	movq	%r14, %rsi
+               	je	0x435ee6 <_mi_os_numa_node_get+0xb6>
+               	jmp	0x435f1e <_mi_os_numa_node_get+0xee>
+               	movl	$256, %ebx              # imm = 0x100
+               	addl	$1, %ebx
+               	movq	%rbx, 228208(%rip)      # 0x46da98 <_mi_numa_node_count>
+               	leaq	66346(%rip), %rdi       # 0x446259 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, %rsi
@@@@
-               	callq	0x42b910 <_mi_verbose_message>
-               	jmp	0x435448 <_mi_os_numa_node_get+0x18>
-               	nopl	(%rax)
+               	callq	0x42c110 <_mi_verbose_message>
+               	jmp	0x435e48 <_mi_os_numa_node_get+0x18>
+               	nop

@@ -35371,9 +35936,9 @@
@@@[(3, 9)]@@@
-               	movq	%r8, %r13
-               	movq	%rcx, %r12
-               	movq	%rdx, %r15
+               	movq	%r8, %r14
+               	movq	%rcx, %r15
+               	movq	%rdx, %r12

@@ -35381,106 +35946,107 @@
@@@[(8, 12), (14, 18), (22, 28), (29, 35), (37, 39), (41, 45), (47, 51), (52, 56), (62, 70), (79, 83), (84, 85), (88, 92), (93, 97), (112, 122), (136, 140), (142, 143), (144, 147), (148, 152), (153, 159)]@@@
-               	je	0x435776 <_mi_arena_alloc_aligned+0x166>
-               	movq	%r12, 24(%rsp)
+               	je	0x43616b <_mi_arena_alloc_aligned+0x16b>
+               	movq	%r15, 24(%rsp)
@@@@
-               	movq	228512(%rip), %rax      # 0x46d318 <_mi_numa_node_count>
-               	xorl	%r14d, %r14d
+               	movq	227888(%rip), %rax      # 0x46da98 <_mi_numa_node_count>
+               	xorl	%r13d, %r13d
@@@@
-               	leaq	195120(%rip), %rbp      # 0x4650c0 <mi_arenas>
-               	xorl	%r12d, %r12d
-               	jmp	0x4356de <_mi_arena_alloc_aligned+0xce>
+               	leaq	194496(%rip), %rbp      # 0x465840 <mi_arenas>
+               	xorl	%r15d, %r15d
+               	jmp	0x4360cf <_mi_arena_alloc_aligned+0xcf>
@@@@
-               	cmpb	$0, (%r15)
-               	je	0x4356f5 <_mi_arena_alloc_aligned+0xe5>
-               	movq	%r12, %rsi
+               	cmpb	$0, (%r12)
+               	je	0x4360e6 <_mi_arena_alloc_aligned+0xe6>
+               	movq	%r15, %rsi
@@@@
-               	movq	%r15, %r8
+               	movq	%r12, %r8
@@@@
-               	pushq	%r13
-               	callq	0x435910 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x436300 <mi_arena_alloc_from>
@@@@
-               	jne	0x4357c5 <_mi_arena_alloc_aligned+0x1b5>
-               	addq	$1, %r12
+               	jne	0x4361bf <_mi_arena_alloc_aligned+0x1bf>
+               	addq	$1, %r15
@@@@
-               	cmpq	$64, %r12
-               	je	0x4356fd <_mi_arena_alloc_aligned+0xed>
+               	cmpq	$64, %r15
+               	je	0x4360ee <_mi_arena_alloc_aligned+0xee>
@@@@
-               	js	0x4356a0 <_mi_arena_alloc_aligned+0x90>
-               	cmpl	%r14d, %eax
-               	jne	0x4356d0 <_mi_arena_alloc_aligned+0xc0>
-               	jmp	0x4356a0 <_mi_arena_alloc_aligned+0x90>
+               	js	0x436090 <_mi_arena_alloc_aligned+0x90>
+               	cmpl	%r13d, %eax
+               	jne	0x4360c1 <_mi_arena_alloc_aligned+0xc1>
+               	jmp	0x436090 <_mi_arena_alloc_aligned+0x90>
@@@@
-               	movq	24(%rsp), %r12
-               	jmp	0x435754 <_mi_arena_alloc_aligned+0x144>
+               	movq	24(%rsp), %r15
+               	jmp	0x436148 <_mi_arena_alloc_aligned+0x148>
@@@@
-               	nop
@@@@
-               	movq	%r15, %r8
-               	movq	%r12, %r9
+               	movq	%r12, %r8
+               	movq	%r15, %r9
@@@@
-               	pushq	%r13
-               	callq	0x435910 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x436300 <mi_arena_alloc_from>
@@@@
-               	js	0x435746 <_mi_arena_alloc_aligned+0x136>
-               	cmpl	%r14d, %eax
-               	je	0x435746 <_mi_arena_alloc_aligned+0x136>
-               	cmpb	$0, (%r15)
-               	jne	0x435720 <_mi_arena_alloc_aligned+0x110>
+               	js	0x43613a <_mi_arena_alloc_aligned+0x13a>
+               	cmpl	%r13d, %eax
+               	je	0x43613a <_mi_arena_alloc_aligned+0x13a>
+               	cmpb	$0, (%r12)
+               	jne	0x436110 <_mi_arena_alloc_aligned+0x110>
@@@@
-               	jmp	0x4357c5 <_mi_arena_alloc_aligned+0x1b5>
-               	movb	$1, (%r13)
+               	jmp	0x4361bf <_mi_arena_alloc_aligned+0x1bf>
+               	movb	$1, (%r14)
@@@@
+               	xorl	%esi, %esi
@@@@
-               	movzbl	(%rax), %esi
+               	cmpb	$0, (%rax)
+               	setne	%sil
@@@@
-               	movq	%r15, %rdx
-               	callq	0x42c050 <_mi_os_alloc_aligned>
+               	movq	%r12, %rdx
+               	callq	0x42c840 <_mi_os_alloc_aligned>
@@@@
-               	je	0x435790 <_mi_arena_alloc_aligned+0x180>
-               	movb	(%r15), %cl
-               	movb	%cl, (%r12)
+               	je	0x436185 <_mi_arena_alloc_aligned+0x185>
+               	movb	(%r12), %cl
+               	movb	%cl, (%r15)

@@ -35489,10 +36055,10 @@
@@@[(3, 11)]@@@
-               	callq	0x435430 <_mi_os_numa_node_get>
-               	movl	%eax, %r14d
-               	jmp	0x435685 <_mi_arena_alloc_aligned+0x75>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x435e30 <_mi_os_numa_node_get>
+               	movl	%eax, %r13d
+               	jmp	0x436075 <_mi_arena_alloc_aligned+0x75>
+               	nopl	(%rax,%rax)

@@ -36376,60 +36942,62 @@
@@@[(19, 22), (24, 28), (42, 46), (48, 54), (56, 62), (66, 69), (71, 73), (79, 83)]@@@
-               	movzbl	(%r8), %r11d
+               	movb	(%r8), %cl
+               	movzbl	%cl, %r11d
@@@@
-               	testq	%r11, %r11
-               	jne	0x436509 <_mi_usable_size+0x109>
+               	testb	%r11b, %r11b
+               	jne	0x436efe <_mi_usable_size+0x10e>
@@@@
-               	jmp	0x4364f8 <_mi_usable_size+0xf8>
-               	movb	96(%rax), %cl
+               	jmp	0x436eed <_mi_usable_size+0xfd>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r8), %ecx
-               	testq	%rcx, %rcx
-               	je	0x4364c0 <_mi_usable_size+0xc0>
+               	movb	(%r8), %cl
+               	testb	%cl, %cl
+               	je	0x436eb2 <_mi_usable_size+0xc2>
@@@@
-               	movq	80(%rax), %r9
-               	movq	%rdx, %r8
-               	subq	%r9, %r8
+               	movq	80(%rax), %r8
+               	movq	%rdx, %r9
+               	subq	%r8, %r9
@@@@
-               	je	0x4364ed <_mi_usable_size+0xed>
+               	je	0x436ee2 <_mi_usable_size+0xf2>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r9, %rax
+               	addq	%r8, %rax
@@@@
-               	jmp	0x436542 <_mi_usable_size+0x142>
-               	movq	%r8, %rax
+               	jmp	0x436f37 <_mi_usable_size+0x147>
+               	movq	%r9, %rax

@@ -36466,37 +37034,37 @@
@@@[(3, 7), (14, 18)]@@@
-               	subq	%rcx, %r8
-               	movq	%r8, %rax
+               	subq	%rcx, %r9
+               	movq	%r9, %rax
@@@@
-               	jmp	0x43657b <_mi_usable_size+0x17b>
-               	movb	96(%r8), %cl
+               	jmp	0x436f70 <_mi_usable_size+0x180>
+               	movq	96(%r8), %rcx

@@ -36511,26 +37079,26 @@
@@@[(20, 24)]@@@
-               	jmp	0x43660c <_mi_usable_size+0x20c>
-               	movb	96(%r8), %cl
+               	jmp	0x437001 <_mi_usable_size+0x211>
+               	movq	96(%r8), %rcx

@@ -36565,7 +37133,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -36573,34 +37141,36 @@
@@@[(10, 16), (25, 27)]@@@
-               	je	0x4366f8 <_mi_heap_malloc_zero+0x88>
-               	addl	$1, 16(%rax)
+               	je	0x4370fe <_mi_heap_malloc_zero+0x8e>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)
@@@@
-               	movb	96(%rax), %cl
+               	movq	96(%rax), %rcx

@@ -36611,12 +37181,11 @@
@@@[(7, 12)]@@@
-               	jne	0x4366a6 <_mi_heap_malloc_zero+0x36>
-               	jmp	0x4366ed <_mi_heap_malloc_zero+0x7d>
-               	nopw	(%rax,%rax)
+               	jne	0x4370ab <_mi_heap_malloc_zero+0x3b>
+               	jmp	0x4370f3 <_mi_heap_malloc_zero+0x83>

@@ -36816,9 +37385,9 @@
@@@[(3, 6), (7, 8)]@@@
-               	callq	0x4372d0 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
-               	movq	8(%rsp), %rbx
+               	callq	0x437ce0 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
@@@@
+               	movq	8(%rsp), %rbx

@@ -37357,21 +37926,24 @@
@@@[(3, 5), (6, 11), (12, 16), (26, 30)]@@@
+               	movq	%rdi, %rax
+               	movq	8(%rdi), %rdi
@@@@
-               	je	0x4372c0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x437cca <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
+               	movl	16(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x4372c0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x437cca <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
@@@@
-               	jmp	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	(%rax,%rax)

@@ -37380,78 +37952,222 @@
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
-               	je	0x437309 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x39>
-               	xchgl	%r14d, 328(%r12)
-               	jmp	0x43730c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c>
-               	xorl	%r12d, %r12d
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x437d38 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x58>
+               	movl	$1, %ecx
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 48(%rsp)
+               	movl	%ecx, 56(%rsp)
+               	movb	$1, 60(%rsp)
@@@@
-               	leaq	317(%rip), %rdi         # 0x437460 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
-               	leaq	16(%rsp), %rsi
+               	movq	$0, 32(%rsp)
+               	leaq	920(%rip), %rdi         # 0x4380f0 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
+               	leaq	32(%rsp), %rsi
@@@@
-               	movq	16(%rsp), %rbx
-               	cmpq	$4, %rbx
-               	jbe	0x4373cc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0xfc>
-               	addq	$-4, %rbx
-               	movq	%rbx, %rax
-               	shrq	$61, %rax
-               	jne	0x43742b <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x15b>
+               	movq	32(%rsp), %r12
+               	cmpq	$4, %r12
+               	jbe	0x437e0a <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x12a>
+               	addq	$-4, %r12
+               	movq	8(%rsp), %r15
+               	movq	(%rsp), %rbx
+               	movq	%r15, %rdx
+               	subq	%rbx, %rdx
+               	movq	%rdx, %r14
+               	sarq	$3, %r14
+               	movq	%r12, %rbp
+               	subq	%r14, %rbp
+               	jbe	0x437e31 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x151>
+               	je	0x43801c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	16(%rsp), %rax
+               	subq	%r15, %rax
+               	sarq	$3, %rax
+               	cmpq	%rbp, %rax
+               	jae	0x437e51 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x171>
+               	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
+               	movq	%r14, %rcx
+               	xorq	%rax, %rcx
+               	cmpq	%rbp, %rcx
+               	jb	0x4380b6 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3d6>
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
+               	je	0x437e71 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x191>
@@@@
-               	movq	%rbx, %rdi
@@@@
-               	leaq	(,%rbx,8), %rbp
-               	movq	%rax, %rdi
+               	jmp	0x437e74 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x194>
+               	xorps	%xmm0, %xmm0
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	movq	(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x438072 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	callq	0x413710 <free@plt>
+               	jmp	0x438072 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	jae	0x43801c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	(%rbx,%r12,8), %rax
+               	cmpq	%r15, %rax
+               	je	0x43801c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	%rax, 8(%rsp)
+               	movq	%rax, %r15
+               	jmp	0x43801c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	8(%rsp), %rbx
+               	leaq	(,%rbp,8), %rdx
+               	movq	%r15, %rdi
+               	xorl	%esi, %esi
+               	callq	0x413750 <memset@plt>
+               	leaq	(%r15,%rbp,8), %rax
+               	jmp	0x438010 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x330>
+               	xorl	%r13d, %r13d
+               	leaq	(,%r14,8), %rdi
+               	addq	%r13, %rdi
+               	shlq	$3, %rbp
@@@@
+               	cmpq	%r15, %rbx
+               	je	0x437fd5 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
+               	movq	64(%rsp), %rdi
+               	addq	$-8, %rdi
+               	movq	%r13, %rcx
+               	cmpq	$24, %rdi
+               	jb	0x437fb2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	shrq	$3, %rdi
+               	addq	$1, %rdi
+               	leaq	(%rbx,%rdi,8), %rax
+               	cmpq	%rax, %r13
+               	jae	0x437ed4 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x1f4>
+               	leaq	(,%rdi,8), %rax
+               	addq	%r13, %rax
+               	movq	%r13, %rcx
+               	cmpq	%rbx, %rax
+               	ja	0x437fb2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	movq	%rdi, %rax
+               	andq	$-4, %rax
+               	leaq	-4(%rax), %rsi
+               	movq	%rsi, %rdx
+               	shrq	$2, %rdx
+               	addq	$1, %rdx
+               	movl	%edx, %ecx
+               	andl	$3, %ecx
+               	cmpq	$12, %rsi
+               	jae	0x437ef9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x219>
+               	xorl	%esi, %esi
+               	jmp	0x437f63 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x283>
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
+               	jne	0x437f02 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x222>
+               	testq	%rcx, %rcx
+               	je	0x437f9e <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2be>
+               	leaq	16(,%rsi,8), %rdx
+               	negq	%rcx
+               	nopw	(%rax,%rax)
+               	movups	-16(%rbx,%rdx), %xmm0
+               	movups	(%rbx,%rdx), %xmm1
+               	movups	%xmm0, -16(%r13,%rdx)
+               	movups	%xmm1, (%r13,%rdx)
+               	addq	$32, %rdx
+               	incq	%rcx
+               	jne	0x437f80 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2a0>
+               	cmpq	%rax, %rdi
+               	je	0x437fd5 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
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
+               	jne	0x437fc0 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2e0>
+               	movq	(%rsp), %rbx
+               	testq	%rbx, %rbx
+               	je	0x437fe2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x302>
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
-               	leaq	195(%rip), %rdi         # 0x437470 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
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
+               	leaq	186(%rip), %rdi         # 0x438100 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
+               	leaq	88(%rsp), %rsi
@@@@
-               	movups	%xmm0, (%r15)
+               	movups	%xmm0, (%r13)
@@@@
-               	movq	%rbx, 16(%r15)
-               	jmp	0x4373e9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	xorps	%xmm0, %xmm0
-               	movups	%xmm0, (%r15)
-               	movq	$0, 16(%r15)
-               	movq	(%rsp), %rdi
+               	movq	16(%rsp), %rax
+               	movq	%rax, 16(%r13)
+               	movq	$0, 16(%rsp)
+               	movq	48(%rsp), %rdi
@@@@
-               	je	0x4373e9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	callq	0x413730 <free@plt>
-               	testq	%r12, %r12
-               	je	0x43741c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	movl	%r14d, %eax
-               	xchgl	%eax, 328(%r12)
-               	testl	%r14d, %r14d
-               	jne	0x43741c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
+               	je	0x4380a7 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	movl	56(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, 328(%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x4380a7 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
@@@@
-               	je	0x43741c <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	addq	$328, %r12              # imm = 0x148
-               	movq	%r12, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$56, %rsp
+               	je	0x4380a7 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$120, %rsp

@@ -37459,46 +38175,45 @@
@@@[(3, 10), (11, 21), (22, 26), (28, 32), (34, 36), (49, 55), (57, 59), (60, 62)]@@@
-               	leaq	58966(%rip), %rdi       # 0x445a88 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
-               	callq	0x437220 <std::__throw_length_error(char const*)>
-               	movq	%rax, %rbx
-               	jmp	0x437442 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x172>
+               	leaq	59403(%rip), %rdi       # 0x4468c8 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
+               	callq	0x437c20 <std::__throw_length_error(char const*)>
+               	jmp	0x4380c4 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3e4>
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r13, %rdi
-               	callq	0x4374b0 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
-               	movq	%r12, %rdi
-               	movl	%r14d, %esi
-               	callq	0x4372a0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x438140 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
+               	leaq	40(%rsp), %rdi
+               	callq	0x437ca0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x4244a0 <__clang_call_terminate>
-               	nopl	(%rax)
+               	callq	0x424ad0 <__clang_call_terminate>
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
-               	jae	0x437485 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
+               	movq	24(%rbx), %rax
+               	cmpq	%rax, (%rbx)
+               	jae	0x438115 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
@@@@
+               	leaq	1(%rcx), %rdx
+               	movq	%rdx, (%rbx)
@@@@
-               	leaq	1(%rcx), %rsi
-               	movq	%rsi, (%rbx)

@@ -37506,11 +38221,12 @@
@@@[(3, 4), (10, 12)]@@@
+               	movq	(%rdi), %rdi
@@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -37623,41 +38339,43 @@
@@@[(13, 23)]@@@
-               	jae	0x4376b0 <CreateStringFromCString+0x1f0>
-               	addq	$1, (%rsp)
-               	jmp	0x4376e0 <CreateStringFromCString+0x220>
-               	nopw	(%rax,%rax)
+               	jae	0x438340 <CreateStringFromCString+0x1f0>
+               	movq	(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rsp)
+               	jmp	0x438370 <CreateStringFromCString+0x220>
+               	nopl	(%rax)

@@ -37673,12 +38391,13 @@
@@@[(3, 6)]@@@
-               	movzbl	(%r8), %ecx
+               	movb	(%r8), %al
+               	movzbl	%al, %ecx

@@ -37687,45 +38406,47 @@
@@@[(12, 16), (20, 23), (25, 29), (47, 55), (56, 61)]@@@
-               	je	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	jne	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
@@@@
-               	andl	$63, %esi
-               	orl	%esi, %ecx
+               	andl	$63, %eax
+               	orl	%eax, %ecx
@@@@
-               	je	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %r10d
-               	movl	%r10d, %r9d
-               	andb	$-64, %r9b
+               	je	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %r9b
+               	movl	%r9d, %r10d
+               	andb	$-64, %r10b
@@@@
-               	cmpb	$-128, %r9b
-               	jne	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	cmpb	$-128, %r10b
+               	jne	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%r9b, %r10d

@@ -37735,41 +38456,43 @@
@@@[(13, 17), (21, 28), (43, 49), (51, 54)]@@@
-               	je	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %esi
-               	orl	%esi, %r10d
+               	jne	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
+               	andl	$63, %eax
+               	orl	%eax, %r10d
@@@@
-               	je	0x437938 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r10d
-               	movl	%r10d, %eax
+               	je	0x4385db <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %r9b
+               	movl	%r9d, %eax
@@@@
-               	jne	0x437941 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x211>
+               	jne	0x4385e4 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x224>
+               	movzbl	%r9b, %r10d

@@ -37777,45 +38500,47 @@
@@@[(14, 20), (28, 36), (37, 49), (50, 54), (60, 62)]@@@
-               	je	0x437938 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r11d
-               	movl	%r11d, %eax
+               	je	0x4385db <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %cl
+               	movl	%ecx, %eax
@@@@
-               	je	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %ecx
-               	movl	%ecx, %esi
-               	andb	$-64, %sil
+               	je	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
+               	movl	%esi, %r11d
+               	andb	$-64, %r11b
@@@@
-               	cmpb	$-128, %sil
-               	jne	0x4378df <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %r11d
-               	shll	$6, %r11d
-               	orl	%r10d, %r11d
+               	cmpb	$-128, %r11b
+               	jne	0x438581 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%cl, %eax
+               	andl	$63, %eax
+               	shll	$6, %eax
+               	orl	%r10d, %eax
+               	movzbl	%sil, %ecx
@@@@
-               	orl	%r11d, %ecx
-               	jmp	0x437747 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x17>
+               	orl	%eax, %ecx
+               	jmp	0x4383d9 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x19>
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -37828,61 +38553,61 @@
@@@[(3, 6), (8, 9), (21, 22), (24, 25), (44, 45), (47, 48), (58, 59), (61, 62)]@@@
-               	ja	0x437987 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
-               	movq	(%rbx), %rax
+               	ja	0x438627 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
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

@@ -37891,25 +38616,25 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -37925,19 +38650,19 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -37946,41 +38671,41 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -37993,21 +38718,21 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rdi), %r14
@@@@
+               	movq	(%rdi), %r14

@@ -38073,9 +38798,9 @@
@@@[(3, 9)]@@@
-               	movl	8(%rsi), %ebp
-               	addl	8(%rdi), %ebp
-               	js	0x437d80 <Kotlin_String_plusImpl+0xc0>
+               	movl	8(%rdi), %ebp
+               	addl	8(%rsi), %ebp
+               	js	0x438a20 <Kotlin_String_plusImpl+0xc0>

@@ -38276,46 +39001,45 @@
@@@[(39, 48), (60, 62)]@@@
-               	jg	0x4380eb <Kotlin_String_hashCode+0x11b>
-               	callq	0x4381c0 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
-               	jmp	0x438118 <Kotlin_String_hashCode+0x148>
-               	movq	%r14, %rax
-               	addq	$-1, %rax
+               	jg	0x438d8b <Kotlin_String_hashCode+0x11b>
+               	callq	0x438e60 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
+               	jmp	0x438db8 <Kotlin_String_hashCode+0x148>
+               	leaq	-1(%r14), %rax
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -38973,38 +39697,38 @@
@@@[(27, 41)]@@@
-               	je	0x438f1f <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x4af>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x438bd0 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x160>
-               	movq	%rsi, %rax
+               	je	0x439bc5 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x4b5>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x439870 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x160>

@@ -39049,14 +39773,16 @@
@@@[(3, 7), (10, 13), (15, 16)]@@@
-               	addq	$40, 56(%rbx)
+               	movq	56(%rbx), %rax
+               	addq	$40, %rax
+               	movq	%rax, 56(%rbx)
@@@@
-               	jmp	0x438e9b <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x42b>
-               	movq	8(%rbx), %rcx
+               	jmp	0x439b41 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x431>
@@@@
+               	movq	8(%rbx), %rcx

@@ -39145,10 +39871,10 @@
@@@[(3, 5), (7, 9)]@@@
-               	movq	48(%rsp), %rcx
-               	movq	%rcx, 32(%rax)
@@@@
+               	movq	48(%rsp), %rcx
+               	movq	%rcx, 32(%rax)

@@ -39221,7 +39947,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -39403,53 +40129,53 @@
@@@[(7, 13), (47, 51), (54, 62)]@@@
-               	jne	0x439dee <Kotlin_initRuntimeIfNeeded+0xb6e>
-               	movq	%rax, %r14
-               	movb	279079(%rip), %al       # 0x47d4d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	jne	0x43aa8e <Kotlin_initRuntimeIfNeeded+0xb6e>
+               	movq	%rax, %r12
+               	movb	277767(%rip), %al       # 0x47dc58 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
@@@@
-               	je	0x439d97 <Kotlin_initRuntimeIfNeeded+0xb17>
-               	movq	%rax, %r12
+               	je	0x43aa36 <Kotlin_initRuntimeIfNeeded+0xb16>
+               	movq	%rax, %r14
@@@@
-               	movq	%r14, %rax
-               	cmpq	$0, -48(%r14)
-               	jne	0x439f37 <Kotlin_initRuntimeIfNeeded+0xcb7>
-               	movq	%r12, -48(%r14)
+               	movq	%r12, %rax
+               	cmpq	$0, -48(%r12)
+               	jne	0x43abd7 <Kotlin_initRuntimeIfNeeded+0xcb7>
+               	movq	%r14, -48(%r12)

@@ -39505,108 +40231,108 @@
@@@[(82, 88), (101, 111), (113, 114), (115, 122), (123, 125)]@@@
-               	movq	%r14, %rax
-               	movq	%r15, -64(%r14)
-               	movq	%r15, (%r12)
+               	movq	%r12, %rax
+               	movq	%r15, -64(%r12)
+               	movq	%r15, (%r14)
@@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%rbx, 40(%rsp)
-               	movq	(%r12), %rbx
-               	movq	%r14, %rax
-               	movq	-40(%r14), %r13
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%rbx, 48(%rsp)
+               	movq	(%r14), %rbx
+               	movq	%r12, %rax
+               	movq	-40(%r12), %r13
@@@@
-               	movq	%r14, 48(%rsp)
@@@@
-               	jne	0x439b1d <Kotlin_initRuntimeIfNeeded+0x89d>
-               	movq	%rbx, 72(%rsp)
-               	callq	0x438f80 <(anonymous namespace)::theState()>
+               	movq	%r14, 40(%rsp)
+               	jne	0x43a7c6 <Kotlin_initRuntimeIfNeeded+0x8a6>
+               	movq	%rbx, 88(%rsp)
+               	callq	0x439c20 <(anonymous namespace)::theState()>
@@@@
-               	movq	-64(%r14), %rbx
+               	movq	-64(%r12), %rbx

@@ -39620,16 +40346,20 @@
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

@@ -39640,7 +40370,7 @@
@@@[(3, 5)]@@@
-               	movq	-64(%r14), %rbp
+               	movq	-64(%r12), %rbp

@@ -39651,290 +40381,293 @@
@@@[(20, 40), (43, 55), (81, 85), (88, 91), (93, 107), (111, 137), (145, 150), (152, 155), (156, 161), (168, 178), (179, 180), (181, 184), (187, 189), (193, 211), (213, 215), (219, 242), (244, 247), (249, 251), (252, 275), (276, 291), (298, 304), (306, 310), (316, 336), (337, 348), (349, 352), (353, 357), (358, 376), (378, 379), (387, 390), (399, 411), (414, 418), (419, 424), (429, 433), (435, 436), (437, 438)]@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movl	(%r13), %ebp
-               	movslq	%ebp, %r9
-               	movq	16(%rsp), %r8
-               	movq	152(%r8), %rsi
-               	movq	%r9, %rax
-               	orq	%rsi, %rax
-               	shrq	$32, %rax
-               	je	0x439855 <Kotlin_initRuntimeIfNeeded+0x5d5>
-               	movq	%r9, %rax
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	(%r13), %r8d
+               	movslq	%r8d, %rax
+               	movq	16(%rsp), %r9
+               	movq	152(%r9), %rsi
+               	movq	%rax, %rcx
+               	orq	%rsi, %rcx
+               	shrq	$32, %rcx
+               	movq	%rax, 80(%rsp)
+               	je	0x43a4d7 <Kotlin_initRuntimeIfNeeded+0x5b7>
@@@@
-               	movq	144(%r8), %rax
-               	movq	(%rax,%rbx,8), %rax
-               	testq	%rax, %rax
-               	jne	0x43986d <Kotlin_initRuntimeIfNeeded+0x5ed>
-               	jmp	0x4398c6 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movq	%r15, 173344(%rip)      # 0x463d08 <kotlin::mm::GlobalData::instance_+0x18>
-               	cmpq	$0, 165832(%rip)        # 0x461fb8 <write+0x461fb8>
-               	jne	0x4395c0 <Kotlin_initRuntimeIfNeeded+0x340>
-               	jmp	0x4395cc <Kotlin_initRuntimeIfNeeded+0x34c>
-               	movq	-64(%r14), %rbx
+               	jmp	0x43a4e0 <Kotlin_initRuntimeIfNeeded+0x5c0>
+               	movq	-64(%r12), %rbx
@@@@
-               	jmp	0x439b0a <Kotlin_initRuntimeIfNeeded+0x88a>
-               	movl	%ebp, %eax
+               	jmp	0x43a7b3 <Kotlin_initRuntimeIfNeeded+0x893>
+               	movl	%r8d, %eax
@@@@
-               	movq	144(%r8), %rax
+               	movq	40(%rsp), %r14
+               	movq	144(%r9), %rax
@@@@
-               	je	0x4398c6 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movq	(%rax), %r12
-               	cmpl	8(%r12), %ebp
-               	jne	0x439891 <Kotlin_initRuntimeIfNeeded+0x611>
-               	testq	%r12, %r12
-               	jne	0x439ab4 <Kotlin_initRuntimeIfNeeded+0x834>
-               	jmp	0x4398c6 <Kotlin_initRuntimeIfNeeded+0x646>
+               	je	0x43a54c <Kotlin_initRuntimeIfNeeded+0x62c>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x43a519 <Kotlin_initRuntimeIfNeeded+0x5f9>
+               	testq	%rbp, %rbp
+               	jne	0x43a769 <Kotlin_initRuntimeIfNeeded+0x849>
+               	jmp	0x43a54c <Kotlin_initRuntimeIfNeeded+0x62c>
@@@@
-               	jne	0x4398c6 <Kotlin_initRuntimeIfNeeded+0x646>
-               	cmpl	%ecx, %ebp
-               	je	0x4398bd <Kotlin_initRuntimeIfNeeded+0x63d>
-               	movq	%r12, %rdi
-               	movq	(%r12), %r12
-               	testq	%r12, %r12
-               	je	0x4398c6 <Kotlin_initRuntimeIfNeeded+0x646>
-               	movslq	8(%r12), %rcx
-               	movq	%rcx, %rax
-               	orq	%rsi, %rax
-               	shrq	$32, %rax
-               	je	0x439882 <Kotlin_initRuntimeIfNeeded+0x602>
-               	movq	%rcx, %rax
+               	jne	0x43a54c <Kotlin_initRuntimeIfNeeded+0x62c>
+               	cmpl	%ecx, %r8d
+               	je	0x43a543 <Kotlin_initRuntimeIfNeeded+0x623>
+               	movq	%rbp, %rdi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x43a54c <Kotlin_initRuntimeIfNeeded+0x62c>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rsi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43a509 <Kotlin_initRuntimeIfNeeded+0x5e9>
@@@@
-               	jne	0x439ab4 <Kotlin_initRuntimeIfNeeded+0x834>
-               	movq	%rbx, 32(%rsp)
-               	movq	%r9, 64(%rsp)
+               	jne	0x43a769 <Kotlin_initRuntimeIfNeeded+0x849>
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
-               	jne	0x439921 <Kotlin_initRuntimeIfNeeded+0x6a1>
-               	movq	16(%rsp), %r8
-               	movq	144(%r8), %rbp
-               	movq	32(%rsp), %rdi
-               	jmp	0x439a34 <Kotlin_initRuntimeIfNeeded+0x7b4>
+               	jne	0x43a5ab <Kotlin_initRuntimeIfNeeded+0x68b>
+               	movq	16(%rsp), %r9
+               	movq	144(%r9), %r12
+               	movq	72(%rsp), %rbx
+               	jmp	0x43a6d9 <Kotlin_initRuntimeIfNeeded+0x7b9>
@@@@
-               	movl	%ebp, 32(%rsp)
@@@@
-               	je	0x439ed7 <Kotlin_initRuntimeIfNeeded+0xc57>
+               	movq	%rbp, 64(%rsp)
+               	je	0x43ab77 <Kotlin_initRuntimeIfNeeded+0xc57>
@@@@
-               	movq	%rax, %rbp
+               	movq	%rax, %r12
@@@@
-               	movq	16(%rsp), %r8
-               	movq	160(%r8), %rbx
-               	movq	$0, 160(%r8)
-               	testq	%rbx, %rbx
-               	je	0x4399e3 <Kotlin_initRuntimeIfNeeded+0x763>
-               	leaq	160(%r8), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x4399a3 <Kotlin_initRuntimeIfNeeded+0x723>
+               	movq	16(%rsp), %rax
+               	movq	160(%rax), %rbp
+               	movq	$0, 160(%rax)
+               	testq	%rbp, %rbp
+               	movl	32(%rsp), %r8d
+               	je	0x43a679 <Kotlin_initRuntimeIfNeeded+0x759>
+               	movq	16(%rsp), %rax
+               	leaq	160(%rax), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x43a636 <Kotlin_initRuntimeIfNeeded+0x716>
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
-               	je	0x4399e3 <Kotlin_initRuntimeIfNeeded+0x763>
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
+               	je	0x43a679 <Kotlin_initRuntimeIfNeeded+0x759>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43997b <Kotlin_initRuntimeIfNeeded+0x6fb>
+               	je	0x43a610 <Kotlin_initRuntimeIfNeeded+0x6f0>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%rbp,%rdx,8), %rax
+               	movq	(%r12,%rdx,8), %rax
@@@@
-               	jne	0x43998a <Kotlin_initRuntimeIfNeeded+0x70a>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%rbp,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x43999b <Kotlin_initRuntimeIfNeeded+0x71b>
-               	movq	%rcx, (%rbp,%rdi,8)
-               	jmp	0x43999b <Kotlin_initRuntimeIfNeeded+0x71b>
-               	movq	144(%r8), %rdi
-               	leaq	192(%r8), %rax
+               	jne	0x43a61e <Kotlin_initRuntimeIfNeeded+0x6fe>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x43a62e <Kotlin_initRuntimeIfNeeded+0x70e>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x43a62e <Kotlin_initRuntimeIfNeeded+0x70e>
+               	movq	16(%rsp), %r9
+               	movq	144(%r9), %rdi
+               	leaq	192(%r9), %rax
@@@@
-               	je	0x439a00 <Kotlin_initRuntimeIfNeeded+0x780>
-               	callq	0x413730 <free@plt>
-               	movq	16(%rsp), %r8
-               	movq	%r14, 152(%r8)
-               	movq	%rbp, 144(%r8)
-               	movq	64(%rsp), %rax
+               	movq	64(%rsp), %rbp
+               	je	0x43a6a6 <Kotlin_initRuntimeIfNeeded+0x786>
+               	movq	%r9, %rbx
+               	callq	0x413710 <free@plt>
+               	movq	%rbx, %r9
+               	movl	32(%rsp), %r8d
+               	movq	%r14, 152(%r9)
+               	movq	%r12, 144(%r9)
+               	movq	80(%rsp), %rax
@@@@
-               	movq	%rdx, %rdi
-               	jmp	0x439a34 <Kotlin_initRuntimeIfNeeded+0x7b4>
-               	movl	32(%rsp), %eax
+               	movq	%rdx, %rbx
+               	jmp	0x43a6d9 <Kotlin_initRuntimeIfNeeded+0x7b9>
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
-               	jmp	0x439aac <Kotlin_initRuntimeIfNeeded+0x82c>
-               	movq	%r8, %rcx
-               	addq	$160, %rcx
-               	movq	160(%r8), %rax
-               	movq	%rax, (%r12)
-               	movq	%r12, 160(%r8)
-               	movq	(%r12), %rax
+               	movq	%rax, (%rbp)
+               	movq	(%r12,%rbx,8), %rax
+               	movq	%rbp, (%rax)
+               	jmp	0x43a752 <Kotlin_initRuntimeIfNeeded+0x832>
+               	movq	%r9, %rsi
+               	addq	$160, %rsi
+               	movq	160(%r9), %rax
+               	movq	%rax, (%rbp)
+               	movq	%rbp, 160(%r9)
+               	movq	(%rbp), %rax
@@@@
-               	je	0x439aa7 <Kotlin_initRuntimeIfNeeded+0x827>
-               	movq	152(%r8), %rsi
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rsi, %rdx
+               	je	0x43a74e <Kotlin_initRuntimeIfNeeded+0x82e>
+               	movq	152(%r9), %rdi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
@@@@
-               	je	0x439a97 <Kotlin_initRuntimeIfNeeded+0x817>
+               	je	0x43a73f <Kotlin_initRuntimeIfNeeded+0x81f>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rsi
-               	jmp	0x439a9b <Kotlin_initRuntimeIfNeeded+0x81b>
+               	divq	%rdi
+               	jmp	0x43a743 <Kotlin_initRuntimeIfNeeded+0x823>
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
-               	jne	0x439b0a <Kotlin_initRuntimeIfNeeded+0x88a>
+               	jne	0x43a7b3 <Kotlin_initRuntimeIfNeeded+0x893>
@@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x439b0a <Kotlin_initRuntimeIfNeeded+0x88a>
-               	movq	56(%rsp), %r12
-               	movq	%r14, %rax
-               	movq	%r13, -40(%r14)
-               	movq	(%r12), %rbp
-               	movq	72(%rsp), %rbx
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r12, %rax
+               	movq	%r13, -40(%r12)
+               	movq	(%r14), %rbp
+               	movq	88(%rsp), %rbx
@@@@
-               	movq	%r13, 8(%r12)
-               	movq	276876(%rip), %rbx      # 0x47d4c8 <(anonymous namespace)::initHeadNode>
+               	movq	%r13, 8(%r14)
+               	movq	275556(%rip), %rbx      # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	je	0x439b64 <Kotlin_initRuntimeIfNeeded+0x8e4>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	je	0x43a803 <Kotlin_initRuntimeIfNeeded+0x8e3>
+               	nopl	(%rax)
@@@@
-               	jne	0x439b50 <Kotlin_initRuntimeIfNeeded+0x8d0>
-               	movq	(%r12), %rbp
+               	jne	0x43a7f0 <Kotlin_initRuntimeIfNeeded+0x8d0>
+               	movq	(%r14), %rbp
@@@@
-               	movq	72(%rbp), %rax
@@@@
+               	movq	72(%rbp), %rax

@@ -39975,35 +40708,35 @@
@@@[(25, 27)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -40014,65 +40747,64 @@
@@@[(3, 4), (5, 12), (13, 18), (28, 34), (39, 43), (62, 70)]@@@
-               	movq	48(%rsp), %r14
@@@@
-               	movq	40(%rsp), %r13
-               	je	0x439d34 <Kotlin_initRuntimeIfNeeded+0xab4>
-               	movq	276408(%rip), %rbp      # 0x47d4c8 <(anonymous namespace)::initHeadNode>
+               	movq	40(%rsp), %r14
+               	movq	48(%rsp), %r13
+               	je	0x43a9d4 <Kotlin_initRuntimeIfNeeded+0xab4>
+               	movq	275092(%rip), %rbp      # 0x47dc48 <(anonymous namespace)::initHeadNode>
@@@@
-               	je	0x439d64 <Kotlin_initRuntimeIfNeeded+0xae4>
-               	movq	(%r12), %rbx
-               	nopl	(%rax)
+               	je	0x43aa04 <Kotlin_initRuntimeIfNeeded+0xae4>
+               	movq	(%r14), %rbx
@@@@
-               	je	0x439d64 <Kotlin_initRuntimeIfNeeded+0xae4>
-               	movq	(%r12), %rbx
-               	nopl	(%rax,%rax)
+               	je	0x43aa04 <Kotlin_initRuntimeIfNeeded+0xae4>
+               	movq	(%r14), %rbx
+               	nopw	(%rax,%rax)
@@@@
-               	jne	0x439d50 <Kotlin_initRuntimeIfNeeded+0xad0>
-               	movl	$1, 16(%r12)
+               	jne	0x43a9f0 <Kotlin_initRuntimeIfNeeded+0xad0>
+               	movl	$1, 16(%r14)
@@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	-48(%r14), %rbp
-               	leaq	276219(%rip), %rdi      # 0x47d4a0 <konan::terminationKeyOnceControl>
-               	leaq	2820(%rip), %rsi        # 0x43a8b0 <konan::onThreadExitInit()>
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	-48(%r12), %rbp
+               	leaq	274907(%rip), %rdi      # 0x47dc20 <konan::terminationKeyOnceControl>
+               	leaq	2884(%rip), %rsi        # 0x43b590 <konan::onThreadExitInit()>

@@ -40124,95 +40856,95 @@
@@@[(14, 16), (69, 72), (137, 140)]@@@
-               	leaq	192(%rax), %rbp
+               	leaq	192(%rax), %r12
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %r14
+               	movq	-64(%r12), %r14
@@@@
-               	callq	0x4244a0 <__clang_call_terminate>
+               	callq	0x424ad0 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -40227,328 +40959,334 @@
@@@[(30, 34), (35, 39), (40, 44), (45, 47), (49, 53), (70, 84), (87, 89), (99, 101), (110, 117), (119, 133), (136, 143), (146, 156), (168, 175), (177, 180), (183, 198), (200, 203), (224, 226), (227, 229), (231, 235), (238, 246), (251, 253), (254, 258), (259, 263), (264, 268), (269, 271), (280, 288), (289, 291), (292, 296), (297, 298), (299, 307), (310, 334), (336, 342), (351, 357), (361, 363), (364, 372), (385, 396), (402, 410), (414, 416), (417, 429), (435, 441), (467, 471), (473, 477)]@@@
-               	movslq	(%rbx), %rax
-               	movq	%rax, 16(%rsp)
+               	movl	(%rbx), %eax
+               	movl	%eax, 12(%rsp)
@@@@
-               	callq	0x438f80 <(anonymous namespace)::theState()>
-               	movq	%rax, %r15
+               	callq	0x439c20 <(anonymous namespace)::theState()>
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
-               	je	0x43a107 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe7>
+               	testq	%r15, %r15
+               	je	0x43ada5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe5>
@@@@
-               	movslq	(%rax), %rsi
-               	movq	152(%r15), %rcx
-               	movq	%rsi, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x43a141 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x121>
-               	movq	%rsi, %rax
+               	movl	(%rax), %esi
+               	movslq	%esi, %rax
+               	movq	152(%r13), %rcx
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43adde <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x11e>
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	jne	0x43a1cc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x1ac>
-               	jmp	0x43a27f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movq	%rdi, %rbx
+               	jne	0x43ae5c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19c>
+               	jmp	0x43af23 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	nopl	(%rax)
+               	movq	%rdi, %rbp
@@@@
-               	je	0x43a27f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movslq	8(%rdi), %rbp
-               	movq	%rbp, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x43a1b0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x190>
-               	movq	%rbp, %rax
+               	je	0x43af23 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	8(%rdi), %ebx
+               	movslq	%ebx, %rax
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43ae40 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x180>
@@@@
-               	je	0x43a1bf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19f>
-               	jmp	0x43a27f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	nopl	(%rax)
-               	movl	%ebp, %eax
+               	je	0x43ae4f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x18f>
+               	jmp	0x43af23 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	%ebx, %eax
@@@@
-               	jne	0x43a27f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	cmpl	%ebp, %esi
-               	jne	0x43a170 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
-               	testq	%rbx, %rbx
-               	je	0x43a27f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
+               	jne	0x43af23 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	cmpl	%ebx, %esi
+               	jne	0x43ae10 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
+               	testq	%rbp, %rbp
+               	je	0x43af23 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
@@@@
-               	je	0x43a26c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43af06 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43a22c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20c>
+               	je	0x43aec6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x206>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43a235 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
-               	jmp	0x43a26c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x43a253 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x233>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43aecf <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20f>
+               	jmp	0x43af06 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movq	(%rdi), %rbx
+               	testq	%rbx, %rbx
+               	je	0x43aeed <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x22d>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43a23b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x21b>
+               	je	0x43aed5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
+               	movq	%rbp, %rax
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	%r15, %rax
+               	movq	%r13, %rax
@@@@
-               	jne	0x43a264 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x244>
-               	movq	%rbp, (%r10)
+               	jne	0x43aefe <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x23e>
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
-               	jmp	0x43a2bc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x29c>
-               	movq	-64(%r12), %r13
+               	jmp	0x43af60 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2a0>
+               	movq	-64(%r12), %r15
@@@@
-               	xchgl	%ebx, 328(%r13)
-               	movq	%r15, %rdi
+               	xchgl	%ebx, 328(%r15)
+               	movq	%r13, %rdi
@@@@
-               	testq	%r13, %r13
-               	je	0x43a2e7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
+               	testq	%r15, %r15
+               	je	0x43af8b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
@@@@
-               	xchgl	%eax, 328(%r13)
+               	xchgl	%eax, 328(%r15)
@@@@
-               	je	0x43a2e7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
-               	addq	$328, %r13              # imm = 0x148
-               	movq	%r13, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43af8b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
+               	addq	$328, %r15              # imm = 0x148
+               	movq	%r15, %rdi
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	24(%rax), %rbx
+               	movq	24(%rax), %rbp
@@@@
-               	cmpq	%rbx, %r13
-               	je	0x43a3e5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	cmpq	%rbp, %r13
+               	je	0x43b085 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	40(%rax), %r14
@@@@
-               	leaq	39217(%rip), %rbp       # 0x443c40 <_IO_stdin_used+0x240>
-               	jmp	0x43a345 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	movq	40(%rax), %r14
+               	leaq	39629(%rip), %rbx       # 0x444a80 <_IO_stdin_used+0x240>
+               	jmp	0x43afe5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x43a930 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	addq	$40, %rbx
-               	cmpq	%r14, %rbx
-               	je	0x43a3a0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
-               	cmpq	%rbx, %r13
-               	je	0x43a3e5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
-               	movl	(%rbx), %ecx
-               	cmpq	$3, %rcx
-               	ja	0x43a333 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
-               	movq	8(%rbx), %rax
-               	movslq	(%rbp,%rcx,4), %rcx
-               	addq	%rbp, %rcx
+               	callq	0x43b610 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	addq	$40, %rbp
+               	cmpq	%r14, %rbp
+               	je	0x43b040 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
+               	cmpq	%rbp, %r13
+               	je	0x43b085 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	movl	(%rbp), %ecx
+               	cmpl	$3, %ecx
+               	ja	0x43afd3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
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
-               	callq	0x43a930 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	movq	%r15, %rbp
+               	movq	%rbx, %rdi
+               	callq	0x43b610 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	movq	%r15, %rbx
@@@@
-               	movq	8(%r12), %rbx
+               	movq	8(%r12), %rbp
@@@@
-               	leaq	480(%rbx), %r14
-               	cmpq	%rbx, %r13
-               	jne	0x43a345 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	jmp	0x43a3e5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	leaq	480(%rbp), %r14
+               	cmpq	%rbp, %r13
+               	jne	0x43afe5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	jmp	0x43b085 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	112(%r14), %rbp
-               	leaq	96(%r14), %rbx
-               	cmpq	%rbx, %rbp
-               	movq	8(%rsp), %r13
-               	jne	0x43a5f4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5d4>
+               	movq	112(%r14), %rbx
+               	leaq	96(%r14), %rbp
+               	cmpq	%rbp, %rbx
+               	movl	12(%rsp), %r13d
+               	movq	16(%rsp), %r15
+               	jne	0x43b2a4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5e4>
@@@@
-               	callq	0x4258f0 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
-               	movq	248(%r14), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	callq	0x425f20 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
+               	movq	248(%r14), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
+               	testq	%rbx, %rbx
@@@@
-               	je	0x43a476 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x43a476 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
+               	je	0x43b11a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x43b11a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
@@@@
-               	je	0x43a476 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	movq	%rbp, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43b11a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	movq	%rbx, %rdi
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	callq	0x413730 <free@plt>
-               	movq	(%r13), %rax
+               	callq	0x413710 <free@plt>
+               	movq	(%r15), %rax
@@@@
-               	movq	(%r13), %rbx
-               	movl	274368(%rip), %edi      # 0x47d49c <konan::terminationKey>
+               	movq	(%r15), %rbx
+               	movl	273042(%rip), %edi      # 0x47dc1c <konan::terminationKey>

@@ -40557,200 +41295,217 @@
@@@[(23, 24), (35, 53), (73, 82), (95, 102), (103, 109), (113, 116), (118, 122), (124, 126), (127, 129), (130, 136), (138, 140), (141, 143), (147, 151), (152, 157), (160, 174), (176, 183), (186, 194), (200, 212), (223, 224), (235, 242), (244, 247), (256, 263), (265, 268), (301, 307)]@@@
+               	movq	16(%rsp), %r15
@@@@
-               	callq	0x413730 <free@plt>
-               	jmp	0x43a677 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x657>
-               	nopl	(%rax,%rax)
-               	movq	%rbp, %rdi
-               	callq	0x43d2e1 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
-               	movq	%rax, %rbp
-               	cmpq	%rbx, %rax
-               	je	0x43a3ff <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3df>
-               	movq	40(%rbp), %rsi
+               	callq	0x413710 <free@plt>
+               	jmp	0x43b343 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x683>
+               	nop
+               	movq	%rbx, %rdi
+               	callq	0x43e141 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
+               	movq	%rax, %rbx
+               	cmpq	%rbp, %rax
+               	je	0x43b0a4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3e4>
+               	movq	40(%rbx), %rsi
@@@@
-               	je	0x43a667 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x647>
+               	je	0x43b333 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x673>
+               	movq	352(%rbx), %rbp
+               	testq	%rbp, %rbp
+               	je	0x43b310 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x650>
+               	movq	%rbp, %rdi
+               	callq	0x425980 <void std::allocator_traits<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node> >::_S_destroy<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>(kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>&, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node*, ...)>
+               	movq	%rbp, %rdi
+               	callq	0x413710 <free@plt>
@@@@
-               	cmpq	$0, 162105(%rip)        # 0x461fb8 <write+0x461fb8>
-               	je	0x43a68d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x66d>
-               	leaq	169616(%rip), %rdi      # 0x463d18 <kotlin::mm::GlobalData::instance_+0x28>
+               	movslq	%r13d, %rbp
+               	cmpq	$0, 158826(%rip)        # 0x461fb8 <write+0x461fb8>
+               	je	0x43b35c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x69c>
+               	leaq	168265(%rip), %rdi      # 0x4644a0 <kotlin::mm::GlobalData::instance_+0x28>
@@@@
-               	movq	%r13, %rdi
-               	callq	0x413730 <free@plt>
-               	callq	0x438f80 <(anonymous namespace)::theState()>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	callq	0x439c20 <(anonymous namespace)::theState()>
@@@@
-               	movq	16(%rsp), %rcx
-               	movq	%rcx, %rax
+               	movq	%rbp, %rax
@@@@
-               	je	0x43a6dd <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6bd>
-               	movq	%rcx, %rax
+               	je	0x43b3a7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6e7>
+               	movq	%rbp, %rax
@@@@
-               	movq	%rdx, %r8
+               	movq	%rdx, %rcx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	jne	0x43a6fa <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6da>
-               	jmp	0x43a862 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movl	%ecx, %eax
+               	jne	0x43b3c4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x704>
+               	jmp	0x43b547 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %r8d
+               	movl	%edx, %ecx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	cmpl	%ecx, 8(%rbx)
-               	jne	0x43a710 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpl	%r13d, 8(%rbx)
+               	jne	0x43b3e0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	jne	0x43a76c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x74c>
-               	jmp	0x43a862 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
+               	jne	0x43b42d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x76d>
+               	jmp	0x43b547 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	nop
@@@@
-               	je	0x43a862 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43a750 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x730>
-               	movq	%rsi, %rax
+               	je	0x43b547 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43b410 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x750>
@@@@
-               	cmpq	%r8, %rdx
-               	je	0x43a75f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x73f>
-               	jmp	0x43a862 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	nopl	(%rax)
+               	cmpq	%rcx, %rdx
+               	je	0x43b41f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x75f>
+               	jmp	0x43b547 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
@@@@
-               	cmpq	%r8, %rdx
-               	jne	0x43a862 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	cmpl	%ecx, %esi
-               	jne	0x43a710 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpq	%rcx, %rdx
+               	jne	0x43b547 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	cmpl	%r13d, %esi
+               	jne	0x43b3e0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	movslq	8(%rbx), %rax
-               	movq	%rax, %rcx
-               	orq	%rdi, %rcx
-               	shrq	$32, %rcx
-               	je	0x43a796 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x776>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43b45c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x79c>
+               	movq	%rcx, %rax
@@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43a84c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x82c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rcx
+               	je	0x43b527 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x867>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rdx
+               	movq	%rdx, %rcx
@@@@
-               	je	0x43a80c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7ec>
+               	je	0x43b4e7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x827>
+               	movq	%rdx, %rax
@@@@
-               	je	0x43a833 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x813>
-               	movslq	8(%r10), %rax
-               	movq	%rax, %rdx
+               	je	0x43b50e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x84e>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43a81b <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7fb>
+               	je	0x43b4f6 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x836>
+               	movq	%rbp, %rax
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 224(%r14)
+               	callq	0x413710 <free@plt>
+               	movq	224(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 224(%r14)

@@ -40762,23 +41517,23 @@
@@@[(13, 17)]@@@
-               	callq	0x4244a0 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x424ad0 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -40867,91 +41622,95 @@
@@@[(20, 30), (33, 37), (38, 42), (51, 57), (59, 61), (62, 64), (65, 67), (68, 76), (78, 80), (81, 85), (86, 88), (89, 93), (94, 100), (101, 103), (112, 117), (118, 121)]@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	callq	0x438f80 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%r15)
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	callq	0x439c20 <(anonymous namespace)::theState()>
+               	movq	%rax, %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%r15)
@@@@
-               	je	0x43aac0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x190>
-               	movl	%ebx, %eax
+               	je	0x43b7ab <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x19b>
+               	movl	%ebp, %eax
@@@@
-               	testl	%ebx, %ebx
-               	jne	0x43aa7e <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
+               	testl	%ebp, %ebp
+               	jne	0x43b75e <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
@@@@
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r12)
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x43ab03 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1d3>
-               	jmp	0x43ab1a <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	callq	0x438f80 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
+               	je	0x43b7f8 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1e8>
+               	jmp	0x43b80f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
+               	callq	0x439c20 <(anonymous namespace)::theState()>
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
-               	je	0x43ab56 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x226>
-               	addq	$328, %rbx              # imm = 0x148
+               	testq	%r12, %r12
+               	je	0x43b84b <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x23b>
+               	addq	$328, %r12              # imm = 0x148
@@@@
-               	xchgl	%eax, (%rbx)
+               	xchgl	%eax, (%r12)
@@@@
-               	je	0x43ab1a <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	movq	%rbx, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$40, %r12
+               	je	0x43b80f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
@@@@
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -40960,8 +41719,8 @@
@@@[(3, 7)]@@@
-               	addq	$40, %r12
-               	movq	%r12, %rdi
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -40978,24 +41737,24 @@
@@@[(3, 7)]@@@
-               	jmp	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax,%rax)

@@ -41171,101 +41930,107 @@
@@@[(44, 45), (48, 57), (67, 72), (73, 78), (103, 105), (128, 140)]@@@
+               	subq	$32, %rsp
@@@@
-               	cmpxchgl	%ebp, 166721(%rip)      # 0x463a34 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43aefa <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1a>
-               	callq	0x43af80 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	cmpxchgl	%ebp, 165309(%rip)      # 0x4641a4 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43bbee <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1e>
+               	callq	0x43bca0 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	movq	$0, 16(%rsp)
+               	movl	$1, 24(%rsp)
+               	movb	$0, 28(%rsp)
@@@@
-               	movl	166665(%rip), %edi      # 0x463a30 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 16(%rsp)
+               	movl	%ebp, 24(%rsp)
+               	movb	$1, 28(%rsp)
+               	movl	165217(%rip), %edi      # 0x4641a0 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x4372a0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	leaq	8(%rsp), %rdi
+               	callq	0x437ca0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	nopw	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43af9b <(anonymous namespace)::TerminateHandler::instance()+0xb>
-               	leaq	-996(%rip), %rdi        # 0x43abd0 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
-               	callq	0x43cefa <std::set_terminate(void (*)())>
-               	movq	%rax, 271648(%rip)      # 0x47d4e0 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
-               	leaq	271633(%rip), %rdi      # 0x47d4d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
-               	callq	0x43ceb0 <__cxa_guard_release>
+               	je	0x43bcbb <(anonymous namespace)::TerminateHandler::instance()+0xb>
+               	leaq	-1044(%rip), %rdi       # 0x43b8c0 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
+               	callq	0x43dd5a <std::set_terminate(void (*)())>
+               	movq	%rax, 270208(%rip)      # 0x47dc60 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
+               	leaq	270193(%rip), %rdi      # 0x47dc58 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	callq	0x43dd10 <__cxa_guard_release>

@@ -41274,51 +42039,60 @@
@@@[(3, 5), (8, 18), (28, 33), (34, 39), (68, 75)]@@@
+               	subq	$32, %rsp
+               	movq	%rdi, 24(%rsp)
@@@@
-               	cmpxchgl	%ebp, 166481(%rip)      # 0x463a34 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43afea <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x1a>
-               	callq	0x43b070 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	cmpxchgl	%ebp, 165016(%rip)      # 0x4641a4 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43bd18 <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x28>
+               	leaq	24(%rsp), %rdi
+               	callq	0x43bdc0 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	movq	$0, 8(%rsp)
+               	movl	$1, 16(%rsp)
+               	movb	$0, 20(%rsp)
@@@@
-               	movl	166425(%rip), %edi      # 0x463a30 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 8(%rsp)
+               	movl	%ebp, 16(%rsp)
+               	movb	$1, 20(%rsp)
+               	movl	164919(%rip), %edi      # 0x4641a0 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x4372a0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x437ca0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x41a220 <ReportUnhandledException>
-               	callq	0x436a00 <konan::abort()>
-               	nopl	(%rax,%rax)
+               	movq	(%rdi), %rdi
+               	callq	0x41a3a0 <ReportUnhandledException>
+               	callq	0x437400 <konan::abort()>
+               	nop

@@ -41505,23 +42279,24 @@
@@@[(6, 7)]@@@
+               	movq	$0, (%rsp)

@@ -41535,34 +42310,35 @@
@@@[(29, 31), (34, 35)]@@@
-               	movl	%ebp, %edi
+               	movl	24(%rcx), %edi
@@@@
+               	nopl	(%rax)

@@ -41615,93 +42391,157 @@
@@@[(3, 5), (10, 16), (18, 60), (62, 123), (126, 141), (150, 173), (177, 179), (180, 183), (189, 191), (200, 206), (207, 213)]@@@
-               	movq	%rdi, %rbx
+               	movq	%rdi, %r14
@@@@
-               	jne	0x43b620 <Kotlin_io_Console_print+0x180>
-               	leaq	24(%rsp), %r15
-               	movq	%r15, 8(%rsp)
+               	jne	0x43c47f <Kotlin_io_Console_print+0x27f>
+               	leaq	24(%rsp), %r13
+               	movq	%r13, 8(%rsp)
@@@@
-               	movl	8(%rbx), %ebp
-               	cmpq	$16, %rbp
-               	jb	0x43b50e <Kotlin_io_Console_print+0x6e>
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
+               	je	0x43c30a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$15, %rbp
+               	ja	0x43c29f <Kotlin_io_Console_print+0x9f>
+               	cmpq	%rax, %rbp
+               	ja	0x43c29f <Kotlin_io_Console_print+0x9f>
+               	cmpq	%r13, %r15
+               	je	0x43c30a <Kotlin_io_Console_print+0x10a>
+               	cmpq	$-1, %r12
+               	je	0x43c3e4 <Kotlin_io_Console_print+0x1e4>
+               	testq	%r12, %r12
+               	jne	0x43c3d2 <Kotlin_io_Console_print+0x1d2>
+               	movb	(%r15), %al
+               	movb	%al, 24(%rsp)
+               	jmp	0x43c3e4 <Kotlin_io_Console_print+0x1e4>
+               	testq	%rbp, %rbp
+               	js	0x43c48e <Kotlin_io_Console_print+0x28e>
+               	movq	%r13, %rbx
+               	cmpq	%rax, %rbp
+               	jbe	0x43c2c9 <Kotlin_io_Console_print+0xc9>
+               	addq	%rax, %rax
+               	cmpq	%rax, %rbp
+               	jae	0x43c2c9 <Kotlin_io_Console_print+0xc9>
+               	movabsq	$9223372036854775807, %rbp # imm = 0x7FFFFFFFFFFFFFFF
+               	cmpq	%rbp, %rax
+               	cmovbq	%rax, %rbp
+               	leaq	1(%rbp), %rdi
@@@@
-               	movq	%rax, 8(%rsp)
-               	movq	%r14, 24(%rsp)
-               	movq	%rbp, %rax
-               	addq	%rbp, %rax
-               	je	0x43b5a4 <Kotlin_io_Console_print+0x104>
-               	addq	$16, %rbx
-               	leaq	(%rbx,%rbp,2), %r12
-               	movl	$65533, %r13d           # imm = 0xFFFD
-               	leaq	8(%rsp), %r14
-               	jmp	0x43b56d <Kotlin_io_Console_print+0xcd>
-               	nop
-               	cmpq	%r12, %rbp
-               	je	0x43b595 <Kotlin_io_Console_print+0xf5>
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
-               	callq	0x437950 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
-               	movq	%rbp, %rbx
-               	cmpq	%r12, %rbp
-               	je	0x43b5a4 <Kotlin_io_Console_print+0x104>
-               	leaq	2(%rbx), %rbp
-               	movzwl	(%rbx), %eax
+               	movq	%rax, %r13
+               	cmpq	$-1, %r12
+               	je	0x43c2f0 <Kotlin_io_Console_print+0xf0>
+               	testq	%r12, %r12
+               	jne	0x43c3b2 <Kotlin_io_Console_print+0x1b2>
+               	movb	(%r15), %al
+               	movb	%al, (%r13)
+               	cmpq	%rbx, %r15
+               	je	0x43c2fd <Kotlin_io_Console_print+0xfd>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movq	%rbp, 24(%rsp)
+               	movq	%rbx, %r13
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	je	0x43c401 <Kotlin_io_Console_print+0x201>
+               	addq	$16, %r14
+               	leaq	(%r14,%rax,2), %rbp
+               	leaq	8(%rsp), %r15
+               	jmp	0x43c349 <Kotlin_io_Console_print+0x149>
+               	nopl	(%rax)
+               	movl	$65533, %edi            # imm = 0xFFFD
+               	movq	%r15, %rsi
+               	callq	0x4385f0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	movq	%rbx, %r14
+               	cmpq	%rbp, %rbx
+               	je	0x43c401 <Kotlin_io_Console_print+0x201>
+               	leaq	2(%r14), %rbx
+               	movzwl	(%r14), %eax
@@@@
-               	je	0x43b530 <Kotlin_io_Console_print+0x90>
+               	jne	0x43c390 <Kotlin_io_Console_print+0x190>
+               	cmpq	%rbp, %rbx
+               	je	0x43c3a1 <Kotlin_io_Console_print+0x1a1>
+               	movzwl	2(%r14), %ecx
+               	movl	%ecx, %edx
+               	andl	$64512, %edx            # imm = 0xFC00
+               	cmpl	$56320, %edx            # imm = 0xDC00
+               	jne	0x43c330 <Kotlin_io_Console_print+0x130>
+               	shll	$10, %eax
+               	addq	$4, %r14
+               	leal	(%rax,%rcx), %edi
+               	addl	$4238353408, %edi       # imm = 0xFCA02400
+               	movq	%r14, %rbx
+               	jmp	0x43c335 <Kotlin_io_Console_print+0x135>
@@@@
-               	callq	0x437950 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	callq	0x4385f0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	jmp	0x43c401 <Kotlin_io_Console_print+0x201>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	cmpq	%rbx, %r15
+               	jne	0x43c2f5 <Kotlin_io_Console_print+0xf5>
+               	jmp	0x43c2fd <Kotlin_io_Console_print+0xfd>
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
+               	jne	0x43c31a <Kotlin_io_Console_print+0x11a>
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
-               	je	0x43b602 <Kotlin_io_Console_print+0x162>
-               	movq	%r12, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43c461 <Kotlin_io_Console_print+0x261>
+               	movq	%r14, %rdi
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x43b611 <Kotlin_io_Console_print+0x171>
-               	callq	0x413730 <free@plt>
+               	cmpq	%r13, %rdi
+               	je	0x43c470 <Kotlin_io_Console_print+0x270>
+               	callq	0x413710 <free@plt>

@@ -41710,31 +42550,33 @@
@@@[(3, 13), (17, 25), (27, 29), (38, 48)]@@@
-               	leaq	120345(%rip), %rsi      # 0x458c40 <ktypeglobal:kotlin.String#internal>
-               	movq	%rbx, %rdi
-               	callq	0x419d70 <ThrowClassCastException>
-               	movq	%rax, %r14
+               	leaq	118586(%rip), %rsi      # 0x4593c0 <ktypeglobal:kotlin.String#internal>
+               	movq	%r14, %rdi
+               	callq	0x419ef0 <ThrowClassCastException>
+               	leaq	42107(%rip), %rdi       # 0x446910 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x437c20 <std::__throw_length_error(char const*)>
+               	movq	%rax, %r15
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x43b646 <Kotlin_io_Console_print+0x1a6>
-               	callq	0x413730 <free@plt>
-               	movq	%r14, %rdi
+               	cmpq	%r13, %rdi
+               	je	0x43c4b1 <Kotlin_io_Console_print+0x2b1>
+               	callq	0x413710 <free@plt>
+               	movq	%r15, %rdi
@@@@
-               	xchgl	%eax, (%r12)
+               	xchgl	%eax, (%r14)
@@@@
-               	je	0x43b637 <Kotlin_io_Console_print+0x197>
-               	movq	%r12, %rdi
-               	callq	0x425790 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x43b637 <Kotlin_io_Console_print+0x197>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x43c4a2 <Kotlin_io_Console_print+0x2a2>
+               	movq	%r14, %rdi
+               	callq	0x425dc0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x43c4a2 <Kotlin_io_Console_print+0x2a2>
+               	nopl	(%rax,%rax)

@@ -41836,40 +42678,39 @@
@@@[(21, 24), (28, 29), (32, 34), (35, 36)]@@@
-               	movq	288(%rax), %rcx
-               	jmp	0x43b8cc <Init_and_run_start+0x18c>
+               	jmp	0x43c723 <Init_and_run_start+0x183>
@@@@
-               	movq	288(%rax), %rcx
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)
@@@@
+               	movq	288(%rax), %rcx

@@ -41878,33 +42719,34 @@
@@@[(6, 7), (8, 10)]@@@
-               	movaps	%xmm0, 16(%rsp)
@@@@
+               	movaps	%xmm0, 16(%rsp)
+               	movq	288(%rax), %rcx

@@ -41946,12 +42788,12 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
