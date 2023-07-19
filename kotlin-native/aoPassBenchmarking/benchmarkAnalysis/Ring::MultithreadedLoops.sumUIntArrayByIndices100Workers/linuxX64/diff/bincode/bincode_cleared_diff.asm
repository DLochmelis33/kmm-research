--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/baseline/bincode/bincode.asm	2023-07-19 02:50:27.620596014 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/unordered/bincode/bincode.asm	2023-07-19 03:02:07.790377563 +0200

@@ -1,5 +1,5 @@
@@@[(1, 3)]@@@
-../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/baseline/main.kexe:	file format elf64-x86-64
+../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/unordered/main.kexe:	file format elf64-x86-64

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
-               	leaq	88121(%rip), %rax       # 0x429770 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
+               	movq	%r14, 128(%rbx)
+               	leaq	90185(%rip), %rax       # 0x429f80 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>

@@ -611,78 +611,76 @@
@@@[(14, 22), (23, 55), (58, 64), (65, 74), (76, 78), (79, 90), (105, 109), (110, 112), (114, 118)]@@@
-               	movq	168(%r13), %r14
-               	movq	%r12, 208(%rsp)
-               	leaq	88157(%rip), %rax       # 0x429830 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	168(%r13), %r12
+               	movq	%r14, 216(%rsp)
+               	leaq	90221(%rip), %rax       # 0x42a040 <std::_Function_handler<void (), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_invoke(std::_Any_data const&)>
+               	movq	%rax, 240(%rsp)
+               	leaq	90222(%rip), %rax       # 0x42a050 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
@@@@
-               	leaq	88158(%rip), %rax       # 0x429840 <std::_Function_base::_Base_manager<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2>::_M_manager(std::_Any_data&, std::_Any_data const&, std::_Manager_operation)>
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
-               	leaq	347220(%rip), %rax      # 0x468d68 <kotlin::mm::GlobalData::instance_+0x50>
+               	movq	%r12, 8(%rbx)
+               	leaq	349152(%rip), %rax      # 0x4694f0 <kotlin::mm::GlobalData::instance_+0x50>
@@@@
-               	movq	%r14, 24(%rbx)
+               	movq	%r12, 24(%rbx)
@@@@
-               	movq	%r14, 48(%rbx)
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
+               	movq	%r12, 48(%rbx)
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>

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
-               	leaq	76732(%rip), %r15       # 0x426e60 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
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
+               	leaq	78420(%rip), %rbp       # 0x427550 <std::invoke_result<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>::type kotlin::ScopedThread::Run<void (kotlin::RepeatedTimer<kotlin::steady_clock>::*)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()>(kotlin::ScopedThread::attributes, void (kotlin::RepeatedTimer<kotlin::steady_clock>::*&&)(kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&) noexcept, kotlin::RepeatedTimer<kotlin::steady_clock>*&&, kotlin::gc::internal::GCSchedulerDataWithTimer<kotlin::steady_clock>::GCSchedulerDataWithTimer(kotlin::gc::GCSchedulerConfig&, std::function<void ()>)::'lambda'()&&)>
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
-               	leaq	87006(%rip), %rbp       # 0x429870 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
-               	movq	%rbp, 96(%rsp)
+               	leaq	88878(%rip), %rbx       # 0x42a080 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)>
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
-               	movq	%r13, 346231(%rip)      # 0x468e20 <kotlin::mm::GlobalData::instance_+0x108>
-               	addq	$248, %rsp
+               	movq	%r13, 347964(%rip)      # 0x4695a8 <kotlin::mm::GlobalData::instance_+0x108>
+               	addq	$264, %rsp              # imm = 0x108

@@ -919,185 +976,187 @@
@@@[(3, 5), (49, 55), (59, 66), (92, 102), (118, 128), (132, 136), (148, 152), (175, 181), (194, 202), (217, 221), (238, 243), (244, 246), (247, 254), (271, 272)]@@@
+               	leaq	222403(%rip), %rdi      # 0x44ab48 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x43a4d0 <std::__throw_length_error(char const*)>
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
-               	callq	0x441838 <std::condition_variable::notify_all()>
-               	cmpq	$0, 338147(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x4146df <_GLOBAL__sub_I_GlobalData.cpp+0xa2f>
+               	leaq	40(%rbx), %r15
+               	movq	%r15, %rdi
+               	callq	0x4427e8 <std::condition_variable::notify_all()>
+               	cmpq	$0, 337945(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x4147a9 <_GLOBAL__sub_I_GlobalData.cpp+0xaf9>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x441838 <std::condition_variable::notify_all()>
-               	cmpq	$0, 338073(%rip)        # 0x466fb8 <write+0x466fb8>
-               	jne	0x4146b0 <_GLOBAL__sub_I_GlobalData.cpp+0xa00>
-               	jmp	0x414739 <_GLOBAL__sub_I_GlobalData.cpp+0xa89>
+               	movq	%r15, %rdi
+               	callq	0x4427e8 <std::condition_variable::notify_all()>
+               	cmpq	$0, 337871(%rip)        # 0x466fb8 <write+0x466fb8>
+               	jne	0x41477a <_GLOBAL__sub_I_GlobalData.cpp+0xaca>
+               	jmp	0x414803 <_GLOBAL__sub_I_GlobalData.cpp+0xb53>
@@@@
-               	movq	%r12, %rdi
-               	callq	0x441838 <std::condition_variable::notify_all()>
+               	movq	%r15, %rdi
+               	callq	0x4427e8 <std::condition_variable::notify_all()>
@@@@
-               	callq	0x44180a <std::condition_variable::~condition_variable()>
-               	leaq	16(%rbx), %r12
+               	callq	0x4427ba <std::condition_variable::~condition_variable()>
+               	leaq	16(%rbx), %r15
@@@@
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%r12, %rdi
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r15, %rdi
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	movq	%r15, %rdi
-               	callq	0x4272f0 <kotlin::ScopedThread::~ScopedThread()>
-               	movq	240(%rsp), %rdi
-               	callq	0x42aad0 <GCStateHolder::~GCStateHolder()>
+               	movq	%r12, %rdi
+               	callq	0x4279e0 <kotlin::ScopedThread::~ScopedThread()>
+               	movq	248(%rsp), %rdi
+               	callq	0x42b390 <GCStateHolder::~GCStateHolder()>
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x4272e0 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x4279d0 <std::thread::~thread()>
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
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testl	%r12d, %r12d
-               	js	0x4154c4 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x264>
+               	je	0x4153c2 <kfun:kotlin.collections#copyOfUninitializedElements__at__kotlin.Array<0:0>(kotlin.Int;kotlin.Int){0§<kotlin.Any?>}kotlin.Array<0:0>+0x92>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	callq	0x420090 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movq	%r12, %rdx
+               	callq	0x420270 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
@@@@
-               	movl	%r12d, %esi
+               	movl	%ebp, %esi

@@ -2922,9 +2960,10 @@
@@@[(3, 4)]@@@
+               	movq	32(%rsp), %rax

@@ -2952,20 +2991,19 @@
@@@[(12, 15), (17, 18), (20, 21)]@@@
-               	callq	0x41ad80 <ThrowInvalidReceiverTypeException>
-               	nopl	(%rax,%rax)
+               	callq	0x41af20 <ThrowInvalidReceiverTypeException>
@@@@
+               	pushq	%rbp
@@@@
-               	pushq	%r13

@@ -2976,30 +3014,30 @@
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

@@ -3007,16 +3045,16 @@
@@@[(17, 19)]@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%rbp)

@@ -3024,118 +3062,119 @@
@@@[(3, 5), (6, 8), (10, 26), (27, 30), (32, 36), (37, 58), (63, 67), (71, 77), (81, 111), (112, 116), (118, 131), (132, 134), (135, 137), (140, 148), (149, 151), (155, 157), (167, 169), (171, 173), (176, 177), (179, 180), (181, 183)]@@@
-               	movq	288(%r12), %rax
+               	movq	288(%rbp), %rax
@@@@
-               	movq	%rbx, 288(%r12)
+               	movq	%rbx, 288(%rbp)
@@@@
-               	movslq	16(%r14), %r15
-               	testq	%r15, %r15
-               	jns	0x41695f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	movq	8(%r14), %r13
-               	movq	%r13, 120(%rsp)
-               	movq	%r13, 128(%rsp)
-               	movl	8(%r13), %edx
-               	movl	%edx, %ebx
+               	movl	16(%r14), %r15d
+               	testl	%r15d, %r15d
+               	jns	0x4169bf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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
-               	callq	0x417ca0 <checkRangeIndexes>
-               	movq	(%r13), %rax
+               	callq	0x417de0 <checkRangeIndexes>
+               	movq	(%r12), %rax
@@@@
-               	jge	0x41695f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
-               	leaq	16(,%r15,2), %r10
-               	addq	%r13, %r10
-               	movl	%r15d, %r9d
-               	notl	%r9d
-               	addl	%ebx, %r9d
-               	cmpl	$15, %r9d
-               	jb	0x41693c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
-               	addq	$1, %r9
-               	movq	%r9, %r8
+               	jge	0x4169bf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	movslq	%r15d, %r9
+               	leaq	(%r12,%r9,2), %r11
+               	addq	$16, %r11
+               	movl	%r15d, %r10d
+               	notl	%r10d
+               	addl	%ebx, %r10d
+               	cmpl	$15, %r10d
+               	jb	0x41699c <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x29c>
+               	addq	$1, %r10
+               	movq	%r10, %r8
@@@@
-               	movl	%edi, %esi
-               	andl	$7, %esi
+               	movl	%edi, %edx
+               	andl	$7, %edx
@@@@
-               	jmp	0x416901 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
-               	leaq	240(,%r15,2), %rdx
-               	addq	%r13, %rdx
+               	jmp	0x416961 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x261>
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
-               	jne	0x416890 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
-               	testq	%rsi, %rsi
-               	je	0x416930 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
-               	movq	%r15, %rcx
-               	addq	%r15, %rcx
-               	leaq	(%rcx,%rax,2), %rax
-               	addq	%r13, %rax
+               	jne	0x4168f0 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x1f0>
+               	testq	%rdx, %rdx
+               	je	0x416990 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x290>
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
-               	jne	0x416920 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
-               	cmpq	%r8, %r9
-               	je	0x41695f <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
+               	incq	%rdx
+               	jne	0x416980 <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x280>
+               	cmpq	%r8, %r10
+               	je	0x4169bf <kfun:kotlin.Throwable.ExceptionTraceBuilder.endln#internal+0x2bf>
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

@@ -3226,45 +3265,45 @@
@@@[(23, 24), (25, 30)]@@@
-               	movq	16(%r14,%rax,8), %rax
@@@@
-               	cmpq	16(%r15,%rcx,8), %rax
-               	jne	0x416c3e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>
+               	movq	16(%r15,%rcx,8), %rcx
+               	cmpq	%rcx, 16(%r14,%rax,8)
+               	jne	0x416c8e <kfun:kotlin.Throwable.ExceptionTraceBuilder.dumpSelfTrace#internal+0x28e>

@@ -3521,240 +3560,293 @@
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
-               	je	0x4170e4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc4>
+               	movq	%rcx, 576(%rsp)
+               	movq	24(%rbx), %rcx
+               	movq	%rcx, 8(%rsp)
+               	movl	8(%rcx), %r13d
+               	movq	-64(%rax), %rdx
@@@@
-               	xchgl	%ecx, 328(%rdi)
-               	jmp	0x4170e6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc6>
-               	xorl	%edi, %edi
+               	movl	$1, %esi
+               	xchgl	%esi, 328(%rdx)
+               	movl	%esi, 108(%rsp)
+               	movq	$0, 120(%rsp)
+               	movl	$1, 128(%rsp)
+               	movb	$0, 132(%rsp)
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x417164 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xf4>
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 120(%rsp)
+               	movl	%ecx, 128(%rsp)
+               	movb	$1, 132(%rsp)
+               	movq	%rdx, 144(%rsp)
@@@@
-               	movaps	%xmm0, 48(%rsp)
-               	movq	$0, 64(%rsp)
-               	testl	%ebp, %ebp
-               	je	0x41773a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x71a>
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
+               	jae	0x41727e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x20e>
+               	movq	40(%rsp), %rbx
+               	movq	%rbx, %r12
+               	subq	%r15, %r12
@@@@
-               	movq	%rbp, %rdi
+               	movq	%r13, %rdi
@@@@
+               	movq	%rax, %r14
+               	cmpq	%r15, %rbx
+               	je	0x41724d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	leaq	16(%r14), %rax
+               	leaq	16(%r15), %rcx
+               	jmp	0x417205 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x195>
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
+               	je	0x41721a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1aa>
+               	movq	%rax, -16(%rax)
+               	movq	-16(%rcx), %rdx
+               	cmpq	%rcx, %rdx
+               	jne	0x4171d0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x160>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x4171da <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x16a>
+               	cmpq	%rbx, %r15
+               	je	0x41724d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	%r15, %rbp
+               	jmp	0x417239 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c9>
+               	nopl	(%rax,%rax)
+               	addq	$16, %rbp
+               	cmpq	%rbx, %rbp
+               	je	0x41724d <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1dd>
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417230 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	callq	0x413710 <free@plt>
+               	jmp	0x417230 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1c0>
+               	sarq	$5, %r12
+               	testq	%r15, %r15
+               	je	0x41725e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x1ee>
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
-               	jmp	0x417380 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x360>
-               	movq	%rcx, (%r14)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14)
-               	movq	32(%rsp), %r15
-               	movq	104(%rsp), %rbp
+               	testl	%r13d, %r13d
+               	je	0x417866 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x7f6>
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
+               	jmp	0x4174d4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
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
-               	je	0x41761b <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5fb>
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
+               	je	0x417762 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6f2>
+               	movq	16(%rbx,%r14,8), %rcx
@@@@
-               	jb	0x417373 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x353>
-               	movq	%rax, 16(%rsp)
+               	jb	0x4174c7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x457>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	56(%rsp), %r14
-               	movq	%r14, %r15
-               	movq	%rax, 24(%rsp)
-               	subq	%rax, %r15
-               	movq	%r15, %rbx
-               	sarq	$5, %rbx
-               	leaq	206668(%rip), %rax      # 0x449b03 <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
+               	movq	40(%rsp), %r13
+               	movq	32(%rsp), %rax
+               	movq	%r13, %rbx
+               	movq	%rax, 16(%rsp)
+               	subq	%rax, %rbx
+               	movq	%rbx, %r12
+               	sarq	$5, %r12
+               	leaq	210365(%rip), %rax      # 0x44aac3 <typeinfo name for kotlin::gc::GCSchedulerData+0x1912>
@@@@
-               	leaq	576(%rsp), %rbp
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rdx
+               	movq	%r15, %rdi
+               	movq	%r12, %rdx
@@@@
-               	callq	0x4393a0 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
-               	movq	%r13, 72(%rsp)
-               	movq	%rbp, %rdi
-               	callq	0x413710 <strlen@plt>
+               	callq	0x439e70 <snprintf_with_addr(char*, unsigned long, unsigned long, void const*, bool, char const*, ...)>
+               	movq	%rbp, 64(%rsp)
+               	movq	%r15, %rdi
+               	callq	0x413720 <strlen@plt>
+               	movq	%rbp, %rcx
@@@@
-               	cmpq	$16, %rax
-               	jb	0x417414 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x3f4>
+               	movq	%rcx, %rax
+               	cmpq	$16, %rbp
+               	jb	0x41755e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ee>
@@@@
-               	movq	%rax, %r13
-               	movq	%rax, 72(%rsp)
-               	movq	%rbp, 88(%rsp)
+               	movq	%rax, 64(%rsp)
+               	movq	%rbp, 80(%rsp)
@@@@
-               	jne	0x417461 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x441>
-               	movb	576(%rsp), %al
-               	movb	%al, (%r13)
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	je	0x417484 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x464>
-               	leaq	16(%r14), %rax
-               	movq	%rax, (%r14)
-               	movq	72(%rsp), %rcx
-               	leaq	88(%rsp), %r13
-               	cmpq	%r13, %rcx
-               	jne	0x417333 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x313>
-               	movups	(%r13), %xmm0
-               	movups	%xmm0, (%rax)
-               	jmp	0x41733f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x31f>
-               	movq	%r13, %rdi
-               	leaq	576(%rsp), %rsi
+               	jne	0x417574 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x504>
+               	movb	592(%rsp), %cl
+               	movb	%cl, (%rax)
+               	jmp	0x417587 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x517>
+               	movq	%rax, %rdi
+               	leaq	592(%rsp), %rsi
@@@@
-               	callq	0x413720 <memcpy@plt>
-               	movq	%rbp, 80(%rsp)
-               	movb	$0, (%r13,%rbp)
-               	cmpq	%r14, %r12
-               	jne	0x41743a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x41a>
-               	testq	%r15, %r15
-               	movq	%rbx, %rax
+               	callq	0x413730 <memcpy@plt>
+               	movq	%rbp, 72(%rsp)
+               	movq	64(%rsp), %rax
+               	movb	$0, (%rax,%rbp)
+               	cmpq	%r13, 48(%rsp)
+               	je	0x4175c3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x553>
+               	leaq	16(%r13), %rax
+               	movq	%rax, (%r13)
+               	movq	64(%rsp), %rcx
+               	leaq	80(%rsp), %rbp
+               	cmpq	%rbp, %rcx
+               	jne	0x417483 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x413>
+               	movups	(%rbp), %xmm0
+               	movups	%xmm0, (%rax)
+               	jmp	0x417490 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x420>
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
-               	je	0x4174d5 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b5>
+               	cmpq	%rcx, %r15
+               	cmovaq	%rcx, %r15
+               	addq	%r12, %rax
+               	cmovbq	%rcx, %r15
+               	testq	%r15, %r15
+               	leaq	80(%rsp), %rbx
+               	je	0x417607 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x597>
@@@@
-               	movq	%r13, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%rax, %r14
-               	jmp	0x4174d8 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4b8>
-               	xorl	%r14d, %r14d
-               	shlq	$5, %rbp
-               	leaq	(%r14,%rbp), %rax
-               	addq	$16, %rax
-               	movq	%rax, (%r14,%rbp)
+               	jmp	0x417609 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
+               	xorl	%eax, %eax
+               	shlq	$5, %r12
+               	leaq	(%rax,%r12), %rdx
+               	addq	$16, %rdx
+               	movq	%rdx, (%rax,%r12)
+               	movq	64(%rsp), %rcx
+               	cmpq	%rbx, %rcx
+               	je	0x417636 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5c6>
+               	leaq	(%rax,%r12), %rdx
+               	movq	%rcx, (%rdx)
+               	movq	80(%rsp), %rcx
+               	movq	%rcx, 16(%rax,%r12)
+               	jmp	0x41763c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5cc>
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rdx)
@@@@
-               	leaq	88(%rsp), %rdx
-               	cmpq	%rdx, %rcx
-               	movq	32(%rsp), %r15
-               	je	0x41750f <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4ef>
-               	leaq	(%r14,%rbp), %rax
-               	movq	%rcx, (%rax)
-               	movq	88(%rsp), %rax
-               	movq	%rax, 16(%r14,%rbp)
-               	jmp	0x417515 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x4f5>
-               	movups	(%rdx), %xmm0
-               	movups	%xmm0, (%rax)
-               	movq	80(%rsp), %rax
-               	movq	%rax, 8(%r14,%rbp)
-               	movq	%rdx, 72(%rsp)
-               	movq	$0, 80(%rsp)
-               	movb	$0, 88(%rsp)
-               	cmpq	%rbx, %r12
-               	je	0x417610 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5f0>
-               	leaq	16(%r14), %rcx
-               	leaq	16(%rbx), %rax
-               	jmp	0x417586 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x566>
-               	nopl	(%rax,%rax)
+               	movq	%rcx, 8(%rax,%r12)
+               	movq	%rbx, 64(%rsp)
+               	movq	$0, 72(%rsp)
+               	movb	$0, 80(%rsp)
+               	movq	16(%rsp), %r12
+               	cmpq	%r12, %r13
+               	movq	%rax, 152(%rsp)
+               	je	0x41770c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x69c>
+               	leaq	16(%rax), %rcx
+               	leaq	16(%r12), %rax
+               	jmp	0x4176b6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x646>
+               	nopl	(%rax)

@@ -3766,241 +3858,239 @@
@@@[(3, 5), (20, 29), (30, 34), (37, 88), (98, 108), (177, 178), (179, 182), (196, 214), (220, 229), (237, 249), (252, 256), (257, 259), (265, 269), (273, 289), (290, 299), (300, 308), (309, 317), (321, 329), (330, 334), (338, 340), (341, 351)]@@@
-               	cmpq	%r12, %rax
+               	cmpq	%r13, %rax
@@@@
-               	cmpq	%rbx, %r12
-               	jne	0x4175b9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x599>
-               	jmp	0x4175d1 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b1>
-               	nop
+               	cmpq	%r12, %r13
+               	je	0x417710 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
+               	movq	%r12, %rbx
+               	jmp	0x4176f9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x689>
+               	nopl	(%rax,%rax)
@@@@
-               	cmpq	%r12, %rbx
-               	je	0x4175cc <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5ac>
+               	cmpq	%r13, %rbx
+               	je	0x417710 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6a0>
@@@@
-               	je	0x4175b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	callq	0x413730 <free@plt>
-               	jmp	0x4175b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x590>
-               	movq	24(%rsp), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4175de <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
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
-               	je	0x417606 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5e6>
-               	callq	0x413730 <free@plt>
-               	movq	104(%rsp), %rbp
-               	jmp	0x41736e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x34e>
-               	leaq	32(%r14), %rbp
-               	testq	%rbx, %rbx
-               	jne	0x4175d6 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5b6>
-               	jmp	0x4175de <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x5be>
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	je	0x4176f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	callq	0x413710 <free@plt>
+               	jmp	0x4176f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x680>
+               	leaq	32(%rax), %rbp
+               	testq	%r12, %r12
+               	movq	96(%rsp), %r13
+               	je	0x417722 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x6b2>
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
+               	je	0x4174bf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	callq	0x413710 <free@plt>
+               	jmp	0x4174bf <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x44f>
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	movq	128(%rsp), %rbx
-               	movl	116(%rsp), %r14d
-               	je	0x417661 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x641>
-               	callq	0x440285 <operator delete(void*)>
-               	movq	424(%rsp), %rdi
-               	leaq	440(%rsp), %rax
+               	je	0x417796 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x726>
+               	callq	0x441235 <operator delete(void*)>
+               	movq	440(%rsp), %rdi
+               	leaq	456(%rsp), %rax
@@@@
-               	movl	44(%rsp), %ecx
@@@@
-               	je	0x417766 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x746>
+               	je	0x41789e <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x82e>
+               	movl	128(%rsp), %ecx
@@@@
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	je	0x417793 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%r14d, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%r14d, %r14d
-               	jne	0x417793 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	144(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x4178d2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	addq	$328, %rdi              # imm = 0x148
+               	movl	108(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, (%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x4178d2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
@@@@
-               	je	0x417793 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x773>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	$0, 600(%rsp)
-               	movq	8(%rsp), %rax
+               	je	0x4178d2 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x862>
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	js	0x4179d3 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x9b3>
+               	movq	%rbp, 8(%rsp)
+               	js	0x417b23 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xab3>
@@@@
-               	movq	%r15, %rax
+               	movq	%r14, %rax
@@@@
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %rbp
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r15
@@@@
-               	leaq	283715(%rip), %rax      # 0x45cc90 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%rbp)
-               	movl	%ebx, 24(%rbp)
-               	movq	%rcx, 32(%rsp)
-               	movq	%rcx, 600(%rsp)
-               	cmpq	%r13, %r14
-               	jne	0x417877 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x857>
-               	movq	8(%rsp), %rax
+               	leaq	285316(%rip), %rax      # 0x45d410 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r15)
+               	movl	%ebx, 24(%r15)
+               	movq	%rcx, 96(%rsp)
+               	movq	%rcx, 616(%rsp)
+               	cmpq	%r13, %rbp
+               	jne	0x4179b7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x947>
+               	movq	24(%rsp), %rax
@@@@
-               	jmp	0x41792a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x90a>
-               	sarq	$5, %r15
-               	movq	8(%rsp), %rax
+               	jmp	0x417a75 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xa05>
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
-               	callq	0x439ca0 <CreateStringFromCString>
-               	movq	168(%rsp), %rax
-               	movq	%r15, %rcx
+               	leaq	184(%rsp), %rsi
+               	callq	0x43aa00 <CreateStringFromCString>
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
-               	jne	0x4178b0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x890>
-               	movq	32(%rsp), %r15
-               	movq	%r15, 568(%rsp)
-               	movq	584(%rsp), %rcx
+               	addq	$-1, %rbp
+               	jne	0x4179f0 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0x980>
+               	movq	96(%rsp), %r15
+               	movq	%r15, 584(%rsp)
+               	movq	600(%rsp), %rcx

@@ -4008,135 +4098,133 @@
@@@[(3, 13), (17, 22), (86, 99), (181, 189), (199, 219), (223, 227), (228, 230)]@@@
-               	leaq	205242(%rip), %rdi      # 0x449b88 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
-               	callq	0x439a00 <std::__throw_length_error(char const*)>
-               	callq	0x41aea0 <ThrowIllegalArgumentException>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	leaq	208938(%rip), %rdi      # 0x44ab48 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x43a4d0 <std::__throw_length_error(char const*)>
+               	callq	0x41b040 <ThrowIllegalArgumentException>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	movq	%r12, 64(%rsp)
-               	movq	504(%rsp), %rdi
-               	leaq	520(%rsp), %rax
+               	movq	520(%rsp), %rdi
+               	leaq	536(%rsp), %rax
@@@@
-               	je	0x417aef <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	callq	0x440285 <operator delete(void*)>
-               	leaq	48(%rsp), %rdi
-               	callq	0x439a20 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
-               	movq	120(%rsp), %rdi
-               	movl	44(%rsp), %esi
-               	callq	0x439a80 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	je	0x417c3a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	callq	0x441235 <operator delete(void*)>
+               	leaq	32(%rsp), %rdi
+               	callq	0x43a4f0 <std::vector<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> >, kotlin::std_support::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >::~vector()>
+               	leaq	112(%rsp), %rdi
+               	callq	0x43a550 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	jne	0x417aea <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xaca>
-               	jmp	0x417aef <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xacf>
-               	movq	%rax, %rbp
-               	movq	8(%rsp), %rax
+               	jne	0x417c35 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbc5>
+               	jmp	0x417c3a <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xbca>
+               	movq	%rax, %rbx
+               	movq	24(%rsp), %rax
@@@@
-               	je	0x417c7c <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc5c>
-               	movq	16(%rsp), %rbx
-               	movq	(%rbx), %rdi
-               	addq	$16, %rbx
-               	cmpq	%rbx, %rdi
-               	je	0x417c71 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc51>
-               	callq	0x413730 <free@plt>
-               	addq	$16, %rbx
-               	cmpq	24(%rsp), %rbx
-               	jne	0x417c60 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xc40>
+               	je	0x417dc4 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd54>
+               	movq	16(%rsp), %rbp
+               	movq	(%rbp), %rdi
+               	addq	$16, %rbp
+               	cmpq	%rbp, %rdi
+               	je	0x417db9 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd49>
+               	callq	0x413710 <free@plt>
+               	addq	$16, %rbp
+               	cmpq	8(%rsp), %rbp
+               	jne	0x417da7 <kfun:kotlin.Throwable.$<init>$lambda$0$FUNCTION_REFERENCE$1.invoke#internal+0xd37>
@@@@
-               	callq	0x413730 <free@plt>
-               	movq	%rbp, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%rbx, %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -4427,54 +4515,55 @@
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

@@ -4496,30 +4585,31 @@
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

@@ -4527,7 +4617,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -4928,80 +5017,81 @@
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

@@ -5029,42 +5119,43 @@
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

@@ -5072,6 +5163,7 @@
@@@[(3, 4)]@@@
+               	nopl	(%rax,%rax)

@@ -5452,63 +5544,64 @@
@@@[(3, 14), (15, 27), (67, 73), (85, 87)]@@@
-               	movq	8(%rax), %r13
-               	movq	%r13, 72(%rsp)
-               	movq	%r13, 80(%rsp)
-               	movq	%r13, 88(%rsp)
-               	movl	325217(%rip), %eax      # 0x468af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	movq	8(%rax), %rax
+               	movq	%rax, 72(%rsp)
+               	movq	%rax, 80(%rsp)
+               	movq	80(%rsp), %rbp
+               	movq	%rbp, 88(%rsp)
+               	movl	326796(%rip), %eax      # 0x469278 <state_global$kotlin.native.concurrent.UNINITIALIZED>
@@@@
-               	je	0x4194af <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x11f>
-               	leaq	325205(%rip), %rdi      # 0x468af8 <state_global$kotlin.native.concurrent.UNINITIALIZED>
-               	leaq	470(%rip), %rsi         # 0x419680 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
-               	callq	0x43d890 <CallInitGlobalPossiblyLock>
-               	cmpq	%r13, 325114(%rip)      # 0x468ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	je	0x419551 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c1>
+               	je	0x419604 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x124>
+               	leaq	326784(%rip), %rdi      # 0x469278 <state_global$kotlin.native.concurrent.UNINITIALIZED>
+               	leaq	481(%rip), %rsi         # 0x4197e0 <kfun:kotlin.native.concurrent.UNINITIALIZED.$init_global#internal>
+               	callq	0x43e6b0 <CallInitGlobalPossiblyLock>
+               	cmpq	326693(%rip), %rbp      # 0x469230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	je	0x4196a6 <kfun:kotlin.native.concurrent.FreezeAwareLazyImpl#<get-value>(){}1:0+0x1c6>
@@@@
-               	callq	0x43da90 <ThrowException>
-               	movq	8(%rbx), %rbp
-               	movl	325025(%rip), %eax      # 0x468afc <state_global$kotlin.native.concurrent.INITIALIZING>
+               	callq	0x43e8b0 <ThrowException>
+               	movq	8(%rbx), %r13
+               	movl	326604(%rip), %eax      # 0x46927c <state_global$kotlin.native.concurrent.INITIALIZING>
@@@@
-               	movq	%rax, 8(%rbp)
+               	movq	%rax, 8(%r13)

@@ -5533,32 +5626,33 @@
@@@[(36, 39)]@@@
-               	callq	0x43da90 <ThrowException>
+               	callq	0x43e8b0 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -5575,41 +5669,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 324510(%rip)      # 0x468ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
-               	leaq	324503(%rip), %rdi      # 0x468ab0 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	%rcx, 326078(%rip)      # 0x469230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	leaq	326071(%rip), %rdi      # 0x469230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
+               	movq	326064(%rip), %rax      # 0x469230 <kvar:kotlin.native.concurrent.UNINITIALIZED.$instance#internal>
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

@@ -5626,41 +5721,42 @@
@@@[(21, 26), (29, 37), (38, 40), (52, 54)]@@@
-               	movq	%rcx, 324262(%rip)      # 0x468ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
-               	leaq	324255(%rip), %rdi      # 0x468ab8 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	%rcx, 325830(%rip)      # 0x469238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	leaq	325823(%rip), %rdi      # 0x469238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
+               	movq	325816(%rip), %rax      # 0x469238 <kvar:kotlin.native.concurrent.INITIALIZING.$instance#internal>
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

@@ -5669,15 +5765,18 @@
@@@[(12, 21)]@@@
-               	cmpb	$0, -72(%rax)
-               	jne	0x419a00 <kfun:kotlin.native.concurrent.Lock#lock(){}+0x180>
-               	movb	$1, -72(%rax)
+               	movl	-72(%rax), %ecx
+               	cmpl	$2, %ecx
+               	je	0x419b6e <kfun:kotlin.native.concurrent.Lock#lock(){}+0x18e>
+               	cmpl	$3, %ecx
+               	je	0x419bcc <kfun:kotlin.native.concurrent.Lock#lock(){}+0x1ec>
+               	movl	$2, -72(%rax)

@@ -5745,21 +5844,21 @@
@@@[(3, 7)]@@@
-               	nopl	(%rax,%rax)
-               	movzbl	328529(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movzbl	330089(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>

@@ -5769,25 +5868,26 @@
@@@[(3, 6)]@@@
-               	nopl	(%rax)
+               	callq	0x41b1e0 <ThrowFileFailedToInitializeException>
+               	nopw	%cs:(%rax,%rax)

@@ -5857,44 +5957,45 @@
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

@@ -5913,24 +6014,25 @@
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

@@ -5938,7 +6040,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -5947,14 +6049,15 @@
@@@[(3, 7), (11, 18)]@@@
-               	subq	$104, %rsp
-               	movq	%rsi, %r14
+               	subq	$120, %rsp
+               	movq	%rsi, 72(%rsp)
@@@@
-               	je	0x419dc3 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x23>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movslq	8(%rbx), %r13
+               	je	0x419f45 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x25>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	8(%rbx), %r14d
+               	movslq	%r14d, %r13

@@ -5969,17 +6072,17 @@
@@@[(3, 4), (5, 8)]@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
-               	movq	$0, 96(%rsp)
+               	movq	$0, 112(%rsp)

@@ -6018,54 +6121,53 @@
@@@[(3, 9), (15, 51), (54, 59), (63, 75)]@@@
-               	jne	0x419f1c <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x17c>
-               	jmp	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movl	%r13d, %eax
+               	jne	0x41a0a1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x181>
+               	jmp	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movl	%r14d, %eax
@@@@
-               	je	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movq	(%rax), %rbp
-               	cmpl	%r13d, 8(%rbp)
-               	jne	0x419f30 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x190>
-               	testq	%rbp, %rbp
-               	jne	0x419f8d <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1ed>
-               	jmp	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	nop
-               	movq	%rbp, %rbx
-               	movq	(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x419f70 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1d0>
-               	movq	%rsi, %rax
+               	je	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movq	(%rax), %rbx
+               	cmpl	%r14d, 8(%rbx)
+               	jne	0x41a0c0 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1a0>
+               	testq	%rbx, %rbx
+               	jne	0x41a10d <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1ed>
+               	jmp	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	nopl	(%rax)
+               	movq	%rbx, %rbp
+               	movq	(%rbx), %rbx
+               	testq	%rbx, %rbx
+               	je	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x41a0f0 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1d0>
@@@@
-               	je	0x419f7f <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1df>
-               	jmp	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	nopw	(%rax,%rax)
+               	je	0x41a0ff <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1df>
+               	jmp	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
@@@@
-               	jne	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	cmpl	%r13d, %esi
-               	jne	0x419f30 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x190>
-               	testq	%rbx, %rbx
-               	je	0x41a0b1 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x311>
-               	movq	16(%rbp), %rax
+               	jne	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	cmpl	%r14d, %esi
+               	jne	0x41a0c0 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x1a0>
+               	testq	%rbp, %rbp
+               	je	0x41a236 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x316>
+               	movq	16(%rbx), %rax

@@ -6074,60 +6176,61 @@
@@@[(20, 23), (28, 29), (34, 40), (41, 45), (46, 56), (67, 74), (75, 77), (80, 82)]@@@
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	8(%rsp), %rcx
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
+               	movq	8(%rsp), %rcx
@@@@
-               	leaq	96(%rsp), %rbx
-               	leaq	195452(%rip), %rdx      # 0x449ba0 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
-               	movq	%rsp, %rbp
+               	leaq	112(%rsp), %r13
+               	leaq	199100(%rip), %rdx      # 0x44ab60 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	movq	%rsp, %rbx
@@@@
-               	movq	%rbp, %rdi
-               	movl	%r13d, %ecx
+               	movq	%rbx, %rdi
+               	movl	%r14d, %ecx
@@@@
-               	callq	0x43a6d0 <konan::snprintf(char*, unsigned long, char const*, ...)>
-               	movq	%rbp, %rdi
-               	movq	%rbx, %rsi
-               	callq	0x439ca0 <CreateStringFromCString>
-               	leaq	305701(%rip), %rdi      # 0x464a70 <__unnamed_36>
+               	callq	0x43b440 <konan::snprintf(char*, unsigned long, char const*, ...)>
+               	movq	%rbx, %rdi
+               	movq	%r13, %rsi
+               	callq	0x43aa00 <CreateStringFromCString>
+               	leaq	307237(%rip), %rdi      # 0x4651f0 <__unnamed_36>
@@@@
-               	leaq	305685(%rip), %rdi      # 0x464a90 <__unnamed_37>
-               	movq	%r14, %rdx
-               	callq	0x43a4a0 <Kotlin_String_plusImpl>
+               	leaq	307221(%rip), %rdi      # 0x465210 <__unnamed_37>
+               	movq	72(%rsp), %rbx
+               	movq	%rbx, %rdx
+               	callq	0x43b210 <Kotlin_String_plusImpl>
@@@@
-               	movq	%rax, (%r14)
+               	movq	%rax, (%rbx)
@@@@
-               	movq	%rcx, (%r14)
+               	movq	%rcx, (%rbx)

@@ -6135,41 +6238,41 @@
@@@[(6, 12), (14, 28), (34, 40), (45, 47)]@@@
-               	movq	-64(%r15), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	-64(%r15), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x41a0fe <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x35e>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x41a0fe <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x35e>
+               	testq	%rbp, %rbp
+               	je	0x41a284 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x364>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x41a284 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x364>
@@@@
-               	je	0x41a0fe <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x35e>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x41a284 <kfun:kotlin.native.concurrent.Worker#$<bridge-NBN>toString(){}kotlin.String(){}kotlin.String+0x364>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -6233,29 +6336,29 @@
@@@[(9, 17), (18, 22)]@@@
-               	testb	$2, 89(%rax)
-               	jne	0x41a231 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x81>
-               	jmp	0x41a260 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	jne	0x41a3b7 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0x87>
+               	jmp	0x41a3e6 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
@@@@
-               	testb	$2, 89(%rax)
-               	je	0x41a260 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb0>
+               	testl	$512, 88(%rax)          # imm = 0x200
+               	je	0x41a3e6 <kfun:kotlin.native.internal.KClassImpl#<get-simpleName>(){}kotlin.String?+0xb6>

@@ -6265,7 +6368,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -6360,19 +6463,19 @@
@@@[(17, 23)]@@@
-               	jne	0x41a414 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
-               	movq	8(%r14), %rax
-               	cmpq	8(%rbx), %rax
+               	jne	0x41a5a4 <kfun:kotlin.native.internal.KClassImpl#equals(kotlin.Any?){}kotlin.Boolean+0x44>
+               	movq	8(%rbx), %rax
+               	cmpq	%rax, 8(%r14)

@@ -6582,30 +6685,31 @@
@@@[(21, 32), (37, 39)]@@@
-               	movq	%rcx, 320304(%rip)      # 0x468ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	leaq	320297(%rip), %rdi      # 0x468ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	movq	$0, 24(%rax)
-               	movq	320282(%rip), %rsi      # 0x468ad0 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
-               	callq	0x428260 <InitAndRegisterGlobal>
+               	movq	%rcx, 321824(%rip)      # 0x469250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	leaq	321817(%rip), %rdi      # 0x469250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	321810(%rip), %rax      # 0x469250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	movq	$0, 8(%rax)
+               	movq	321795(%rip), %rsi      # 0x469250 <kvar:kotlin.native.internal.NativePtr.$companion#internal>
+               	callq	0x4289a0 <InitAndRegisterGlobal>
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -7171,21 +7275,21 @@
@@@[(13, 29)]@@@
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
-               	addq	$16, %rax
-               	movq	$0, 8(%r15)
-               	leaq	276098(%rip), %rcx      # 0x45e8d0 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
-               	movq	%rcx, 16(%r15)
-               	movq	%rax, 56(%rsp)
-               	movq	%rax, 317562(%rip)      # 0x468ad8 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
+               	movq	$0, 8(%rax)
+               	leaq	277605(%rip), %rdx      # 0x45f050 <ktypeglobal:kotlin.native.internal.UnhandledExceptionHookHolder#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 56(%rsp)
+               	movq	%rcx, 319069(%rip)      # 0x469258 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>
+               	movq	319062(%rip), %r15      # 0x469258 <kvar:kotlin.native.internal.UnhandledExceptionHookHolder.$instance#internal>

@@ -7344,27 +7448,28 @@
@@@[(15, 17), (18, 21)]@@@
-               	movslq	16(%rax), %rcx
+               	movl	16(%rax), %ecx
@@@@
-               	jbe	0x41b5bb <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>+0x14b>
+               	jbe	0x41b75d <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>+0x14d>
+               	movslq	%ecx, %rcx

@@ -8704,18 +8809,18 @@
@@@[(8, 18)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41cbdb <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x18b>
-               	movzbl	315995(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41cd8d <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x19d>
+               	movzbl	317507(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>

@@ -8728,40 +8833,43 @@
@@@[(10, 12), (13, 16), (26, 29), (34, 38), (39, 42)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cbf9 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41cdab <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx
@@@@
-               	jmp	0x41cba2 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x152>
+               	jmp	0x41cd52 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x162>
+               	nopl	(%rax)
@@@@
-               	je	0x41cc41 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1f1>
-               	movslq	20(%rbx), %rcx
+               	je	0x41cdf3 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x203>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cbf9 <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1a9>
+               	jbe	0x41cdab <kfun:kotlin.collections.HashMap#hashCode(){}kotlin.Int+0x1bb>
+               	movslq	%ecx, %rcx

@@ -8773,23 +8881,23 @@
@@@[(21, 27)]@@@
-               	callq	0x43da90 <ThrowException>
-               	callq	0x41a9f0 <ThrowNullPointerException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x43e8b0 <ThrowException>
+               	callq	0x41ab90 <ThrowNullPointerException>
+               	nopl	(%rax,%rax)

@@ -8820,52 +8928,52 @@
@@@[(45, 55)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41cf64 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x314>
-               	movzbl	315383(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x41d124 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x324>
+               	movzbl	316879(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>

@@ -8884,19 +8992,20 @@
@@@[(10, 12), (13, 16)]@@@
-               	movslq	20(%rbx), %rcx
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cfb1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41d171 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -8904,14 +9013,14 @@
@@@[(9, 13)]@@@
-               	jmp	0x41ceb9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
-               	nopl	(%rax)
+               	jmp	0x41d069 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x269>
+               	nop

@@ -8922,23 +9031,24 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41cff9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3a9>
-               	movslq	20(%rbx), %rcx
+               	je	0x41d1b9 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x3b9>
+               	movl	20(%rbx), %ecx
@@@@
-               	jbe	0x41cfb1 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x361>
+               	jbe	0x41d171 <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0x371>
+               	movslq	%ecx, %rcx

@@ -8946,11 +9056,12 @@
@@@[(9, 12)]@@@
-               	jmp	0x41cd4d <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	jmp	0x41cefd <kfun:kotlin.collections.HashMap#toString(){}kotlin.String+0xfd>
+               	nopw	%cs:(%rax,%rax)

@@ -9064,13 +9175,13 @@
@@@[(6, 16)]@@@
-               	je	0x41d144 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	68(%rbx), %eax
-               	cmpl	76(%rbx), %eax
-               	jle	0x41d24c <kfun:kotlin.collections.HashMap.rehash#internal+0x18c>
+               	je	0x41d304 <kfun:kotlin.collections.HashMap.rehash#internal+0x84>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	76(%rbx), %eax
+               	cmpl	%eax, 68(%rbx)
+               	jle	0x41d43e <kfun:kotlin.collections.HashMap.rehash#internal+0x1be>

@@ -9087,67 +9198,67 @@
@@@[(10, 19), (58, 64), (81, 82), (83, 85)]@@@
-               	movslq	68(%rbx), %rdx
-               	cmpq	%rdx, %r13
-               	jge	0x41d255 <kfun:kotlin.collections.HashMap.rehash#internal+0x195>
-               	movzbl	314276(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	68(%rbx), %edx
+               	movslq	%edx, %rax
+               	cmpq	%rax, %r13
+               	jge	0x41d40a <kfun:kotlin.collections.HashMap.rehash#internal+0x18a>
+               	movzbl	315758(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	ja	0x41d1b0 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	movq	288(%rbp), %rax
-               	jmp	0x41d289 <kfun:kotlin.collections.HashMap.rehash#internal+0x1c9>
+               	ja	0x41d370 <kfun:kotlin.collections.HashMap.rehash#internal+0xf0>
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -9155,15 +9266,16 @@
@@@[(3, 13), (15, 16), (17, 19)]@@@
-               	movl	8(%rax), %ecx
-               	movq	8(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	cmpl	%r14d, %ecx
-               	jne	0x41d36f <kfun:kotlin.collections.HashMap.rehash#internal+0x2af>
+               	movl	8(%rax), %eax
+               	movq	8(%rsp), %rcx
+               	movq	%rcx, 288(%rbp)
+               	cmpl	%r14d, %eax
+               	jne	0x41d532 <kfun:kotlin.collections.HashMap.rehash#internal+0x2b2>
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax

@@ -9221,14 +9333,13 @@
@@@[(10, 13)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)

@@ -9297,43 +9408,43 @@
@@@[(15, 17)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -9416,65 +9527,65 @@
@@@[(19, 21)]@@@
-               	movb	72(%r12), %cl
+               	movl	72(%r12), %ecx

@@ -9553,7 +9664,7 @@
@@@[(3, 5)]@@@
-               	movb	72(%rbx), %cl
+               	movl	72(%rbx), %ecx

@@ -9647,37 +9758,38 @@
@@@[(3, 7), (9, 18), (23, 25), (27, 29), (32, 34), (38, 42), (43, 49)]@@@
-               	movabsq	$17179869184, %rsi      # imm = 0x400000000
-               	movq	%rsi, 16(%rsp)
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 16(%rsp)
@@@@
-               	movq	8(%rsp), %rcx
-               	cmpl	8(%rdx), %r8d
-               	movq	%rcx, 288(%rbp)
-               	jl	0x41de94 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5f4>
+               	movl	8(%rdx), %edx
+               	movq	8(%rsp), %rsi
+               	movq	%rsi, 288(%rbp)
+               	cmpl	%edx, %r8d
+               	jl	0x41e05d <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5fd>
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
-               	jg	0x41dbfa <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	movq	%rcx, %r13
+               	jg	0x41ddbc <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>
@@@@
-               	subl	%edx, %ecx
-               	testl	%ecx, %ecx
-               	jle	0x41dbfa <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35a>
+               	subl	%edx, %esi
+               	testl	%esi, %esi
+               	jle	0x41ddbc <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x35c>

@@ -9687,15 +9799,15 @@
@@@[(3, 21)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	leal	3(%rdx), %esi
-               	testl	%edx, %edx
-               	cmovnsl	%edx, %esi
-               	sarl	$2, %esi
-               	cmpl	%esi, %eax
-               	jge	0x41dd80 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	leal	3(%rcx), %edx
+               	testl	%ecx, %ecx
+               	cmovnsl	%ecx, %edx
+               	sarl	$2, %edx
+               	cmpl	%edx, %eax
+               	jge	0x41df40 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x4e0>

@@ -9718,13 +9830,14 @@
@@@[(3, 14), (15, 17)]@@@
-               	movl	8(%rcx), %edx
-               	movq	8(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
-               	cmpl	%eax, %edx
-               	jge	0x41de59 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
-               	movaps	%xmm0, (%rsp)
+               	movl	8(%rcx), %ecx
+               	movq	8(%rsp), %rdx
+               	movq	%rdx, 288(%rbp)
+               	cmpl	%eax, %ecx
+               	jge	0x41e022 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rcx

@@ -9744,19 +9857,18 @@
@@@[(17, 20)]@@@
-               	jmp	0x41ddc4 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x524>
-               	nopw	(%rax,%rax)
+               	jmp	0x41df8b <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x52b>

@@ -9773,13 +9885,14 @@
@@@[(7, 10), (11, 15)]@@@
-               	jmp	0x41d948 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
-               	movaps	%xmm0, (%rsp)
+               	jmp	0x41db08 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0xa8>
@@@@
-               	movq	%rcx, 8(%rsp)
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rbp), %rax
+               	movq	%rax, 8(%rsp)

@@ -9823,16 +9936,17 @@
@@@[(3, 4), (5, 6), (7, 10)]@@@
+               	movl	8(%rax), %eax
@@@@
-               	cmpl	8(%rax), %esi
@@@@
-               	jle	0x41de59 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5b9>
+               	cmpl	%eax, %esi
+               	jle	0x41e022 <kfun:kotlin.collections.HashMap#addKey(1:0){}kotlin.Int+0x5c2>

@@ -9852,43 +9966,45 @@
@@@[(22, 26), (50, 54)]@@@
-               	addl	$1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$1, %eax
+               	movl	%eax, 76(%rbx)
@@@@
-               	callq	0x43da90 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43e8b0 <ThrowException>
+               	nopl	(%rax,%rax)

@@ -10037,46 +10153,46 @@
@@@[(37, 39)]@@@
-               	movzbl	72(%rbx), %ecx
+               	movl	72(%rbx), %ecx

@@ -10138,11 +10254,13 @@
@@@[(8, 12)]@@@
-               	addl	$-1, 76(%rbx)
+               	movl	76(%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 76(%rbx)

@@ -10153,8 +10271,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)

@@ -10395,26 +10513,26 @@
@@@[(22, 30)]@@@
-               	movl	$4294967165, %ecx       # imm = 0xFFFFFF7D
-               	addl	92(%rax), %ecx
-               	cmpl	$2, %ecx
-               	jb	0x41e74e <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>
+               	movl	92(%rax), %eax
+               	addl	$4294967165, %eax       # imm = 0xFFFFFF7D
+               	cmpl	$2, %eax
+               	jb	0x41e91e <kfun:kotlin.collections.HashMap#containsAllEntries(kotlin.collections.Collection<*>){}kotlin.Boolean+0x13e>

@@ -10499,51 +10617,50 @@
@@@[(6, 14), (18, 19), (47, 51), (58, 68)]@@@
-               	je	0x41e91d <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x5d>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	jmp	0x41e939 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x79>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x41eaf9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	jmp	0x41eaf9 <kfun:kotlin.collections.HashMap.Itr#initNext(){}+0x69>
@@@@
+               	movl	16(%rbx), %eax
@@@@
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	(%rax,%rax)
@@@@
-               	je	0x41e9a3 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	68(%rcx), %eax
+               	je	0x41eb63 <kfun:kotlin.collections.HashMap.Itr#hasNext(){}kotlin.Boolean+0x13>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	68(%rax), %eax
+               	cmpl	%eax, 16(%rbx)

@@ -10586,26 +10703,27 @@
@@@[(6, 20), (21, 36)]@@@
-               	je	0x41ea6b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %eax
-               	movq	8(%r15), %rcx
-               	cmpl	68(%rcx), %eax
-               	jge	0x41eac4 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc4>
-               	leal	1(%rax), %edx
+               	je	0x41ec2b <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x6b>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %ecx
+               	movq	8(%r15), %rax
+               	cmpl	68(%rax), %ecx
+               	jge	0x41ec89 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0xc9>
+               	leal	1(%rcx), %edx
@@@@
-               	movl	%eax, 20(%r15)
-               	movq	8(%rcx), %rcx
-               	movq	%rcx, 32(%rsp)
-               	cmpl	%eax, 8(%rcx)
-               	jbe	0x41eb08 <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x108>
-               	cltq
-               	movq	16(%rcx,%rax,8), %rbx
+               	movl	%ecx, 20(%r15)
+               	movq	8(%rax), %rax
+               	movq	%rax, 32(%rsp)
+               	movl	20(%r15), %ecx
+               	cmpl	%ecx, 8(%rax)
+               	jbe	0x41eccd <kfun:kotlin.collections.HashMap.KeysItr#next(){}1:0+0x10d>
+               	movslq	%ecx, %rcx
+               	movq	16(%rax,%rcx,8), %rbx

@@ -10619,19 +10737,19 @@
@@@[(16, 22)]@@@
-               	callq	0x43da90 <ThrowException>
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax)
+               	callq	0x43e8b0 <ThrowException>
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -10655,30 +10773,31 @@
@@@[(6, 25), (36, 40)]@@@
-               	je	0x41eb82 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %r13d
-               	movq	8(%r15), %rbp
-               	cmpl	68(%rbp), %r13d
-               	jge	0x41ec00 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf0>
-               	leal	1(%r13), %eax
-               	movl	%eax, 16(%r15)
-               	movl	%r13d, 20(%r15)
+               	je	0x41ed52 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0x72>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%r15), %eax
+               	movq	8(%r15), %r13
+               	cmpl	68(%r13), %eax
+               	jge	0x41edd2 <kfun:kotlin.collections.HashMap.EntriesItr#next(){}kotlin.collections.HashMap.EntryRef<1:0,1:1>+0xf2>
+               	leal	1(%rax), %ecx
+               	movl	%ecx, 16(%r15)
+               	movl	%eax, 20(%r15)
+               	movl	20(%r15), %ebp
@@@@
-               	movq	%rbp, 24(%rax)
-               	movl	%r13d, 32(%rax)
+               	movq	%r13, 24(%rax)
+               	movl	%ebp, 32(%rax)

@@ -10725,16 +10844,17 @@
@@@[(13, 15), (16, 19)]@@@
-               	movslq	16(%r15), %rcx
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41ece6 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x96>
+               	jbe	0x41eeb9 <kfun:kotlin.collections.HashMap.EntryRef#<get-key>(){}1:0+0x99>
+               	movslq	%ecx, %rcx

@@ -10744,8 +10864,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -10765,18 +10885,19 @@
@@@[(14, 18), (19, 22)]@@@
-               	je	0x41ed8b <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9b>
-               	movslq	16(%r15), %rcx
+               	je	0x41ef5e <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0x9e>
+               	movl	16(%r15), %ecx
@@@@
-               	jbe	0x41ed90 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa0>
+               	jbe	0x41ef63 <kfun:kotlin.collections.HashMap.EntryRef#<get-value>(){}1:1+0xa3>
+               	movslq	%ecx, %rcx

@@ -10786,9 +10907,9 @@
@@@[(3, 9)]@@@
-               	callq	0x41a9f0 <ThrowNullPointerException>
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x41ab90 <ThrowNullPointerException>
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax,%rax)

@@ -11859,26 +11980,27 @@
@@@[(17, 19), (26, 33)]@@@
-               	movslq	16(%rbx), %r14
+               	movl	16(%rbx), %r14d
@@@@
-               	jbe	0x41fce6 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd6>
-               	movq	(%rbp), %rax
-               	movw	%r15w, 16(%rbp,%r14,2)
+               	jbe	0x41feb9 <kfun:kotlin.text.StringBuilder#append(kotlin.Char){}kotlin.text.StringBuilder+0xd9>
+               	movslq	%r14d, %rax
+               	movq	(%rbp), %rcx
+               	movw	%r15w, 16(%rbp,%rax,2)

@@ -11892,8 +12014,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nopl	(%rax,%rax)
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nop

@@ -11946,17 +12068,17 @@
@@@[(3, 5), (6, 8), (12, 22)]@@@
-               	movl	%ecx, %ebp
+               	movl	%ecx, %ebx
@@@@
-               	movq	%rsi, %rbx
+               	movq	%rsi, %r15
@@@@
-               	je	0x41fd9f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	testq	%rbx, %rbx
-               	leaq	280023(%rip), %r12      # 0x464380 <__unnamed_8>
-               	cmovneq	%rbx, %r12
+               	je	0x41ff6f <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x2f>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	testq	%r15, %r15
+               	leaq	281479(%rip), %rbp      # 0x464b00 <__unnamed_8>
+               	cmovneq	%r15, %rbp

@@ -11970,7 +12092,7 @@
@@@[(3, 5)]@@@
-               	movq	(%r12), %rax
+               	movq	(%rbp), %rax

@@ -11978,49 +12100,51 @@
@@@[(3, 5), (7, 9), (10, 28), (31, 42), (44, 67), (68, 70), (74, 78)]@@@
-               	movq	%r12, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	movl	%ebp, %esi
+               	movl	%ebx, %esi
@@@@
-               	callq	0x41b5e0 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
-               	movl	%ebp, %ebx
-               	subl	%r13d, %ebx
-               	movq	8(%rsp), %r14
-               	movl	16(%r14), %esi
-               	addl	%ebx, %esi
-               	movq	%r14, %rdi
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movq	(%r12), %rax
+               	callq	0x41b780 <kfun:kotlin.text#checkBoundsIndexes(kotlin.Int;kotlin.Int;kotlin.Int){}>
+               	movl	%ebx, %r14d
+               	subl	%r13d, %r14d
+               	movq	8(%rsp), %r15
+               	movl	16(%r15), %esi
+               	addl	%r14d, %esi
+               	movq	%r15, %rdi
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	(%rbp), %rax
@@@@
-               	jne	0x41fecd <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x15d>
-               	movslq	16(%r14), %rbp
-               	movq	8(%r14), %rax
-               	movq	%rax, 56(%rsp)
-               	leaq	(%rax,%rbp,2), %rdi
+               	jne	0x4200ab <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x16b>
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
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%ebp, 16(%r15)
@@@@
-               	movq	%rbx, (%rdx)
+               	movq	%r15, (%rdx)
@@@@
-               	movq	%rbx, (%rdx)
-               	movq	%rbx, %rax
+               	movq	%r15, (%rdx)
+               	movq	%r15, %rax

@@ -12029,27 +12153,26 @@
@@@[(3, 18), (19, 29), (30, 32), (33, 41)]@@@
-               	cmpl	%r13d, %ebp
-               	cmovll	%r13d, %ebp
-               	movq	%r12, %r14
-               	movl	%ebp, 4(%rsp)
-               	movq	8(%rsp), %rbx
-               	cmpl	%r13d, %ebp
-               	je	0x41fe98 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	nopl	(%rax)
-               	movzbl	302721(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmpl	%r13d, %ebx
+               	cmovll	%r13d, %ebx
+               	cmpl	%r13d, %ebx
+               	je	0x420076 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	nopl	(%rax,%rax)
+               	movzbl	304185(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x41ff00 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	8(%rbx), %rbp
-               	movq	%rbp, 64(%rsp)
-               	movslq	16(%rbx), %r12
+               	je	0x4200d0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x190>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%r15), %r14
+               	movq	%r14, 64(%rsp)
+               	movl	16(%r15), %r12d
@@@@
-               	movq	%rbx, %rdi
+               	movq	8(%rsp), %rdi
@@@@
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%r15d, 16(%rbx)
-               	movq	(%r14), %rax
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movq	8(%rsp), %rax
+               	movl	%r15d, 16(%rax)
+               	movq	8(%rsp), %r15
+               	movq	(%rbp), %rax

@@ -12057,20 +12180,20 @@
@@@[(3, 5), (7, 12), (13, 28)]@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jbe	0x41ff69 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x1f9>
+               	cmpl	%r12d, 8(%r14)
+               	jbe	0x420144 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x204>
+               	movslq	%r12d, %rcx
@@@@
-               	movq	(%rbp), %rcx
-               	movw	%ax, 16(%rbp,%r12,2)
-               	movl	4(%rsp), %ebp
-               	cmpl	%r13d, %ebp
-               	jne	0x41fef0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
-               	jmp	0x41fe98 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x128>
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	movq	(%r14), %rdx
+               	movw	%ax, 16(%r14,%rcx,2)
+               	cmpl	%r13d, %ebx
+               	jne	0x4200c0 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x180>
+               	jmp	0x420076 <kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?;kotlin.Int;kotlin.Int){}kotlin.text.StringBuilder+0x136>
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nopl	(%rax)

@@ -12082,62 +12205,62 @@
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
-               	je	0x41ffdf <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%r15), %esi
+               	je	0x4201bf <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0x6f>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	16(%rbx), %esi
@@@@
-               	movq	%r15, %rdi
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r15), %r13
-               	movq	8(%r15), %r14
+               	movq	%rbx, %rdi
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	16(%rbx), %r15d
+               	movq	8(%rbx), %r14
@@@@
-               	leaq	12(%rsp), %rbx
-               	leaq	170905(%rip), %rdx      # 0x449ba0 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
+               	leaq	12(%rsp), %rbp
+               	leaq	174458(%rip), %rdx      # 0x44ab60 <typeinfo name for kotlin::gc::GCSchedulerData+0x19af>
@@@@
-               	movq	%rbx, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	je	0x420046 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
-               	leaq	12(%rsp), %rbx
-               	leaq	(%r14,%r13,2), %rcx
+               	je	0x420226 <kfun:kotlin.text.StringBuilder#append(kotlin.Int){}kotlin.text.StringBuilder+0xd6>
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
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r15)
+               	subl	%eax, %ebp
+               	addl	%ebp, %r15d
+               	movq	%rbx, %rdi
+               	movl	%r15d, %esi
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%rbx)
@@@@
-               	movq	%r15, (%rax)
+               	movq	%rbx, (%rax)
@@@@
-               	movq	%rax, 288(%rbp)
-               	movq	%r15, %rax
+               	movq	%rax, 288(%r13)
+               	movq	%rbx, %rax

@@ -12170,33 +12293,34 @@
@@@[(14, 18), (19, 32), (34, 38), (39, 43), (44, 50)]@@@
-               	movl	16(%r12), %esi
-               	addl	8(%rbx), %esi
+               	movl	8(%rbx), %esi
+               	addl	16(%r12), %esi
@@@@
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movslq	16(%r12), %r15
-               	movq	8(%r12), %rax
-               	movq	%rax, 24(%rsp)
-               	movslq	8(%rbx), %rbp
-               	leaq	(%rax,%r15,2), %rdi
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
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
-               	callq	0x420180 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
-               	movl	%ebx, 16(%r12)
+               	movl	%r15d, %esi
+               	callq	0x420360 <kfun:kotlin.text.StringBuilder#ensureCapacity(kotlin.Int){}>
+               	movl	%r15d, 16(%r12)

@@ -12282,29 +12406,28 @@
@@@[(13, 15), (16, 19)]@@@
-               	testq	%rbp, %rbp
-               	je	0x420331 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xe1>
@@@@
-               	js	0x420398 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x148>
+               	je	0x42050e <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0xde>
+               	js	0x420575 <kfun:kotlin.text.StringBuilder#toString(){}kotlin.String+0x145>

@@ -12339,8 +12462,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aea0 <ThrowIllegalArgumentException>
-               	nopl	(%rax)
+               	callq	0x41b040 <ThrowIllegalArgumentException>
+               	nopw	(%rax,%rax)

@@ -13165,20 +13288,21 @@
@@@[(3, 4), (6, 8), (11, 13)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax
@@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -13251,19 +13375,20 @@
@@@[(3, 4), (6, 8)]@@@
+               	movq	24(%rax), %rax
@@@@
-               	jmpq	*24(%rax)
+               	jmpq	*%rax

@@ -13362,20 +13487,22 @@
@@@[(13, 14), (22, 23)]@@@
+               	movq	32(%rsp), %rax
@@@@
+               	movq	32(%rsp), %rax

@@ -13386,7 +13513,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -13492,35 +13619,36 @@
@@@[(26, 34), (43, 46)]@@@
-               	callq	0x421190 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
-               	movslq	16(%r15), %rcx
-               	testq	%rcx, %rcx
-               	js	0x421449 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa9>
+               	callq	0x421380 <kfun:kotlin.enums.EnumEntriesList.<get-entries>#internal>
+               	movl	16(%r15), %ecx
+               	testl	%ecx, %ecx
+               	js	0x421648 <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xa8>
@@@@
-               	jbe	0x42147c <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xdc>
+               	jbe	0x42167e <kfun:kotlin.enums.EnumEntriesList.contains#internal+0xde>
+               	movslq	%ecx, %rcx

@@ -13634,65 +13762,65 @@
@@@[(3, 7), (9, 11), (16, 22), (24, 42), (45, 47), (49, 51), (52, 54), (67, 71), (72, 76), (80, 82), (88, 90)]@@@
-               	movq	-64(%rax), %r12
-               	movq	288(%r12), %rax
+               	movq	-64(%rax), %r15
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x421670 <kfun:kotlin.ranges.IntRange.$init_global#internal+0x60>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%r12), %rdi
+               	je	0x42186e <kfun:kotlin.ranges.IntRange.$init_global#internal+0x5e>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
-               	addq	$16, %rax
-               	movq	$0, 8(%r15)
-               	leaq	256356(%rip), %rcx      # 0x460000 <ktypeglobal:kotlin.ranges.IntRange.Companion#internal>
-               	movq	%rcx, 16(%r15)
-               	movq	%rax, 24(%rsp)
-               	movq	%rax, 291892(%rip)      # 0x468ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
-               	leaq	291885(%rip), %r14      # 0x468ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rcx
+               	movq	$0, 8(%rax)
+               	leaq	257770(%rip), %rdx      # 0x460780 <ktypeglobal:kotlin.ranges.IntRange.Companion#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 24(%rsp)
+               	movq	%rcx, 293306(%rip)      # 0x469260 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	leaq	293299(%rip), %r14      # 0x469260 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	movq	293292(%rip), %r12      # 0x469260 <kvar:kotlin.ranges.IntRange.$companion#internal>
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
-               	callq	0x421760 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
-               	movq	%rbx, 24(%r15)
+               	callq	0x421960 <kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}>
+               	movq	%rbx, 8(%r12)
@@@@
-               	movq	%rax, 288(%r12)
-               	movq	291752(%rip), %rsi      # 0x468ae0 <kvar:kotlin.ranges.IntRange.$companion#internal>
+               	movq	%rax, 288(%r15)
+               	movq	293162(%rip), %rsi      # 0x469260 <kvar:kotlin.ranges.IntRange.$companion#internal>
@@@@
-               	movq	%rax, 288(%r12)
+               	movq	%rax, 288(%r15)
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -13727,6 +13855,8 @@
@@@[(3, 5)]@@@
+               	movabsq	$17179869184, %rcx      # imm = 0x400000000
+               	movq	%rcx, 64(%rsp)

@@ -13742,18 +13872,18 @@
@@@[(13, 25)]@@@
-               	je	0x421861 <kfun:kotlin.ranges.IntRange#isEmpty(){}kotlin.Boolean+0x31>
-               	leaq	291511(%rip), %rdi      # 0x468b0c <state_global$kotlin.ranges.IntRange>
-               	leaq	-588(%rip), %rsi        # 0x421610 <kfun:kotlin.ranges.IntRange.$init_global#internal>
-               	callq	0x43d890 <CallInitGlobalPossiblyLock>
-               	movl	8(%rbx), %eax
-               	cmpl	12(%rbx), %eax
+               	je	0x421a71 <kfun:kotlin.ranges.IntRange#isEmpty(){}kotlin.Boolean+0x31>
+               	leaq	292903(%rip), %rdi      # 0x46928c <state_global$kotlin.ranges.IntRange>
+               	leaq	-604(%rip), %rsi        # 0x421810 <kfun:kotlin.ranges.IntRange.$init_global#internal>
+               	callq	0x43e6b0 <CallInitGlobalPossiblyLock>
+               	movl	12(%rbx), %eax
+               	cmpl	%eax, 8(%rbx)

@@ -13765,69 +13895,69 @@
@@@[(71, 77)]@@@
-               	jne	0x42195f <kfun:kotlin.ranges.IntRange#equals(kotlin.Any?){}kotlin.Boolean+0xef>
-               	movl	12(%r14), %eax
-               	cmpl	12(%rbx), %eax
+               	jne	0x421b6f <kfun:kotlin.ranges.IntRange#equals(kotlin.Any?){}kotlin.Boolean+0xef>
+               	movl	12(%rbx), %eax
+               	cmpl	%eax, 12(%r14)

@@ -14042,12 +14172,13 @@
@@@[(3, 5), (8, 13)]@@@
-               	testl	%ebx, %ebx
+               	cmpl	$0, 24(%rax)
@@@@
-               	cmovnel	%r15d, %ebp
-               	movl	%ebp, 32(%rax)
+               	jne	0x421ec0 <kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator+0x90>
+               	movl	12(%rcx), %r15d
+               	movl	%r15d, 32(%rax)

@@ -14056,18 +14187,19 @@
@@@[(3, 4), (19, 21)]@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	cmpl	12(%rbx), %ecx
+               	cmpl	%ecx, 8(%rbx)

@@ -14110,15 +14242,15 @@
@@@[(3, 21)]@@@
-               	jne	0x421d73 <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x83>
-               	movl	8(%r14), %eax
-               	cmpl	8(%rbx), %eax
-               	jne	0x421d7b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
-               	movl	12(%r14), %eax
-               	cmpl	12(%rbx), %eax
-               	jne	0x421d7b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
-               	movl	16(%r14), %eax
-               	cmpl	16(%rbx), %eax
+               	jne	0x421f93 <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x83>
+               	movl	8(%rbx), %eax
+               	cmpl	%eax, 8(%r14)
+               	jne	0x421f9b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
+               	movl	12(%rbx), %eax
+               	cmpl	%eax, 12(%r14)
+               	jne	0x421f9b <kfun:kotlin.ranges.IntProgression#equals(kotlin.Any?){}kotlin.Boolean+0x8b>
+               	movl	16(%rbx), %eax
+               	cmpl	%eax, 16(%r14)

@@ -14193,72 +14325,72 @@
@@@[(82, 88)]@@@
-               	callq	0x420090 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
-               	xorl	%esi, %esi
-               	subl	16(%r12), %esi
+               	callq	0x420270 <kfun:kotlin.text.StringBuilder#append(kotlin.String?){}kotlin.text.StringBuilder>
+               	movl	16(%r12), %esi
+               	negl	%esi

@@ -14334,112 +14466,113 @@
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
-               	jg	0x422170 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
-               	jmp	0x42235e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	leaq	8(%rsp), %rax
-               	movq	%rax, 104(%rsp)
-               	movq	%rax, 112(%rsp)
-               	movq	%rax, 120(%rsp)
-               	movq	8(%rsp), %rcx
-               	movw	%bp, 24(%rsp)
-               	movq	%rax, 128(%rsp)
-               	cmpl	$1, 16(%rsp)
-               	jne	0x42228c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
+               	jg	0x422390 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0xf0>
+               	jmp	0x422588 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
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
+               	jne	0x4224ac <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x20c>
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
-               	jne	0x422384 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x304>
-               	movzwl	24(%rsp), %esi
-               	movq	40(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
+               	jne	0x4225ae <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x30e>
+               	movzwl	16(%r14), %esi
+               	movq	88(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax)

@@ -14454,16 +14587,16 @@
@@@[(3, 4), (5, 12)]@@@
-               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
@@@@
-               	js	0x42235e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
-               	xorl	%r15d, %r15d
-               	movb	293543(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	js	0x42257a <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2da>
+               	xorl	%r13d, %r13d
+               	movq	%rbx, 8(%rsp)
+               	movb	294927(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>

@@ -14476,33 +14609,34 @@
@@@[(3, 18), (19, 33), (37, 40), (41, 45), (46, 53)]@@@
-               	movl	16(%rsp), %r14d
-               	testl	%r14d, %r14d
-               	cmovsl	%r15d, %r14d
-               	xorl	%r15d, %r15d
-               	cmpl	%r15d, %r14d
-               	je	0x422341 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
-               	nopl	(%rax)
-               	movzbl	293457(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movl	8(%r14), %r15d
+               	testl	%r15d, %r15d
+               	cmovsl	%r13d, %r15d
+               	xorl	%r13d, %r13d
+               	cmpl	%r13d, %r15d
+               	je	0x422561 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2c1>
+               	movzbl	294841(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x422330 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	cmpw	%bx, 24(%rsp,%r15,2)
-               	je	0x42235c <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2dc>
-               	addq	$1, %r15
-               	cmpl	%r15d, %r14d
-               	jne	0x422320 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
+               	je	0x422550 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2b0>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	cmpw	%bx, 16(%r14,%r13,2)
+               	je	0x422581 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e1>
+               	addq	$1, %r13
+               	cmpl	%r13d, %r15d
+               	jne	0x422540 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2a0>
@@@@
+               	movq	8(%rsp), %rbx
+               	movl	$0, %r13d
+               	jg	0x4224eb <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
@@@@
-               	movl	$0, %r15d
-               	jg	0x4222cb <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x24b>
-               	jmp	0x42235e <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2de>
+               	jmp	0x422588 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x2e8>
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%r13)
-               	addq	$136, %rsp
+               	movq	8(%rsp), %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 288(%rbx)
+               	addq	$152, %rsp

@@ -14511,37 +14645,37 @@
@@@[(9, 13), (22, 30), (47, 51)]@@@
-               	jne	0x4223c2 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x342>
-               	movq	296(%r13), %rdi
+               	jne	0x4225ec <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x34c>
+               	movq	296(%rbx), %rdi
@@@@
-               	movq	%rbx, 56(%rsp)
-               	leaq	272896(%rip), %rsi      # 0x464dc0 <__unnamed_64>
-               	jmp	0x4223fa <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x37a>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 104(%rsp)
+               	leaq	274262(%rip), %rsi      # 0x465540 <__unnamed_64>
+               	jmp	0x422624 <kfun:kotlin.text#lastIndexOf__at__kotlin.CharSequence(kotlin.Char;kotlin.Int;kotlin.Boolean){}kotlin.Int+0x384>
+               	movq	296(%rbx), %rdi
@@@@
-               	callq	0x43da90 <ThrowException>
-               	nopw	(%rax,%rax)
+               	callq	0x43e8b0 <ThrowException>
+               	nopw	%cs:(%rax,%rax)

@@ -14616,21 +14750,21 @@
@@@[(16, 26)]@@@
-               	je	0x422503 <kfun:kotlin.UIntArray.Iterator.hasNext#internal+0x13>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rcx
-               	cmpl	8(%rcx), %eax
+               	je	0x422733 <kfun:kotlin.UIntArray.Iterator.hasNext#internal+0x13>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	8(%rbx), %rax
+               	movl	8(%rax), %eax
+               	cmpl	%eax, 16(%rbx)

@@ -14661,24 +14795,27 @@
@@@[(3, 7), (8, 14), (17, 20), (25, 26), (27, 28), (29, 31)]@@@
-               	movl	16(%rbx), %eax
-               	movq	8(%rbx), %rdx
-               	cmpl	8(%rdx), %eax
-               	jge	0x422655 <kfun:kotlin.UIntArray.Iterator.$<bridge-BNN>next(){}kotlin.UInt#internal+0x135>
@@@@
-               	movslq	16(%rbx), %rdx
+               	movl	8(%rax), %eax
+               	cmpl	%eax, 16(%rbx)
+               	jge	0x422895 <kfun:kotlin.UIntArray.Iterator.$<bridge-BNN>next(){}kotlin.UInt#internal+0x145>
+               	movq	8(%rbx), %rax
+               	movl	16(%rbx), %edx
@@@@
-               	jbe	0x4226d1 <kfun:kotlin.UIntArray.Iterator.$<bridge-BNN>next(){}kotlin.UInt#internal+0x1b1>
+               	jbe	0x422911 <kfun:kotlin.UIntArray.Iterator.$<bridge-BNN>next(){}kotlin.UInt#internal+0x1c1>
+               	movslq	%edx, %rdx
@@@@
+               	movq	%rdx, 288(%rax)
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%rax), %rdx

@@ -15492,41 +15629,43 @@
@@@[(44, 45), (46, 47), (48, 50)]@@@
+               	movq	%rax, 288(%r12)
@@@@
-               	movaps	%xmm0, (%rsp)
@@@@
+               	movaps	%xmm0, (%rsp)
+               	movq	288(%r12), %rax

@@ -15580,12 +15719,12 @@
@@@[(11, 13)]@@@
-               	movslq	16(%r15), %rax
+               	movl	16(%r15), %eax

@@ -15596,19 +15735,20 @@
@@@[(3, 6)]@@@
-               	jbe	0x4234fa <kfun:MultithreadedLoopsBenchmark.$runSumUIntArrayByIndicesWorkers$lambda$0$FUNCTION_REFERENCE$0.$<bridge-BNN>invoke(){}kotlin.UIntArray#internal+0xea>
+               	jbe	0x42374c <kfun:MultithreadedLoopsBenchmark.$runSumUIntArrayByIndicesWorkers$lambda$0$FUNCTION_REFERENCE$0.$<bridge-BNN>invoke(){}kotlin.UIntArray#internal+0xec>
+               	cltq

@@ -15618,8 +15758,8 @@
@@@[(3, 7)]@@@
-               	callq	0x41aac0 <ThrowArrayIndexOutOfBoundsException>
-               	nop
+               	callq	0x41ac60 <ThrowArrayIndexOutOfBoundsException>
+               	nopw	%cs:(%rax,%rax)

@@ -15628,215 +15768,222 @@
@@@[(6, 7), (8, 9), (44, 45), (50, 53), (60, 63), (64, 68), (69, 71), (72, 75), (83, 89), (90, 97), (98, 101), (116, 123), (125, 130), (157, 167), (174, 177), (195, 200), (259, 260), (261, 262), (304, 307)]@@@
+               	movaps	%xmm0, 384(%rsp)
@@@@
-               	movaps	%xmm0, 352(%rsp)
@@@@
+               	movaps	%xmm0, 240(%rsp)
@@@@
-               	movaps	%xmm0, 144(%rsp)
-               	movq	$0, 240(%rsp)
+               	movq	$0, 256(%rsp)
@@@@
-               	movq	%rcx, 160(%rsp)
-               	movq	%rax, 104(%rsp)
+               	movq	%rcx, 176(%rsp)
@@@@
+               	movq	%rax, 128(%rsp)
+               	movl	40(%rax), %r12d
+               	testl	%r12d, %r12d
+               	js	0x424888 <kfun:#main(){}+0x1128>
@@@@
+               	leaq	31(,%r12,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$824, %esi              # imm = 0x338
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
@@@@
-               	movl	$100, 24(%r15)
-               	movq	%rcx, 56(%rsp)
-               	movq	%rcx, 176(%rsp)
+               	movl	%r12d, 24(%r15)
+               	movq	%rcx, 72(%rsp)
+               	movq	%rcx, 192(%rsp)
@@@@
-               	leaq	235305(%rip), %r12      # 0x45cdb0 <ktypeglobal:kotlin.IntArray#internal>
-               	movq	%r14, 48(%rsp)
-               	cmpq	$100, %r13
-               	je	0x42376b <kfun:#main(){}+0x26b>
+               	movq	%r14, 56(%rsp)
+               	cmpq	%r12, %r13
+               	je	0x4239da <kfun:#main(){}+0x27a>
@@@@
-               	movb	288466(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax,%rax)
+               	movb	289770(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	%r12, 16(%rax)
-               	movl	$10000, 24(%rax)        # imm = 0x2710
-               	movq	%rbx, 184(%rsp)
+               	leaq	236511(%rip), %rax      # 0x45d530 <ktypeglobal:kotlin.IntArray#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	$10000, 24(%rbp)        # imm = 0x2710
+               	movq	%rbx, 200(%rsp)
@@@@
-               	je	0x423732 <kfun:#main(){}+0x232>
-               	nopl	(%rax)
-               	movzbl	288369(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x4239a2 <kfun:#main(){}+0x242>
+               	movzbl	289673(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	48(%rsp), %r14
-               	cmpq	$100, %r13
-               	jne	0x4236a0 <kfun:#main(){}+0x1a0>
-               	movq	104(%rsp), %rax
-               	movq	56(%rsp), %rcx
+               	movq	56(%rsp), %r14
+               	cmpq	%r12, %r13
+               	jne	0x423910 <kfun:#main(){}+0x1b0>
+               	movq	128(%rsp), %rax
+               	movq	72(%rsp), %rcx
@@@@
-               	andq	$-8, %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	je	0x423934 <kfun:#main(){}+0x434>
-               	movzbl	288145(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x423bb4 <kfun:#main(){}+0x454>
+               	nopl	(%rax,%rax)
+               	movzbl	289433(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	movq	152(%rsp), %rax
+               	movq	168(%rsp), %rax
+               	movq	%rax, 288(%r14)

@@ -15844,120 +15991,123 @@
@@@[(3, 10), (12, 20), (21, 23), (26, 30), (32, 44), (45, 56), (69, 75), (117, 134), (135, 143), (145, 159), (165, 171), (173, 175), (177, 181)]@@@
-               	movq	$0, 272(%rsp)
-               	movq	%rax, 152(%rsp)
-               	leaq	144(%rsp), %rax
+               	movq	$0, 288(%rsp)
+               	movq	288(%r14), %rax
+               	movq	%rax, 168(%rsp)
+               	leaq	160(%rsp), %rax
@@@@
-               	movq	%rax, 160(%rsp)
-               	movl	40(%rcx), %ebx
-               	testl	%ebx, %ebx
-               	js	0x4245da <kfun:#main(){}+0x10da>
+               	movq	%rax, 176(%rsp)
+               	movl	40(%rcx), %ebp
+               	testl	%ebp, %ebp
+               	js	0x424888 <kfun:#main(){}+0x1128>
@@@@
-               	leaq	31(,%rbx,8), %rsi
+               	leaq	31(,%rbp,8), %rsi
@@@@
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	234110(%rip), %rcx      # 0x45cc90 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
-               	movq	%rax, 176(%rsp)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	235376(%rip), %rcx      # 0x45d410 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%ebp, 24(%rbx)
+               	movq	%rax, 192(%rsp)
@@@@
-               	movq	%r12, 136(%rsp)
-               	movq	%rbx, 336(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x42413a <kfun:#main(){}+0xc3a>
-               	movb	287538(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rbx, 72(%rsp)
+               	movq	%rbp, 352(%rsp)
+               	cmpq	%rbp, %r13
+               	je	0x424406 <kfun:#main(){}+0xca6>
+               	nopl	(%rax,%rax)
+               	movb	288810(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	%rax, 184(%rsp)
-               	movslq	8(%rax), %r15
-               	movl	282757(%rip), %eax      # 0x468b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movq	%rax, 200(%rsp)
+               	movl	8(%rax), %r15d
+               	movl	284018(%rip), %eax      # 0x469280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	%rax, 296(%rsp)
-               	leaq	304(%rsp), %rsi
-               	callq	0x418f80 <WorkerLaunchpad>
-               	movq	304(%rsp), %rdi
-               	callq	0x428740 <CreateStablePointer>
-               	movq	%rax, 120(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x43b490 <(anonymous namespace)::theState()>
+               	movq	%rax, 312(%rsp)
+               	leaq	320(%rsp), %rsi
+               	callq	0x4190d0 <WorkerLaunchpad>
+               	movslq	%r15d, %r12
+               	movq	320(%rsp), %rdi
+               	callq	0x428ea0 <CreateStablePointer>
+               	movq	%rax, 136(%rsp)
+               	movq	$0, 320(%rsp)
+               	callq	0x43c200 <(anonymous namespace)::theState()>
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
-               	je	0x423bb0 <kfun:#main(){}+0x6b0>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x423bb0 <kfun:#main(){}+0x6b0>
+               	testq	%rbx, %rbx
+               	je	0x423e50 <kfun:#main(){}+0x6f0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x423e50 <kfun:#main(){}+0x6f0>
@@@@
-               	je	0x423bb0 <kfun:#main(){}+0x6b0>
-               	movq	%rbp, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x423e50 <kfun:#main(){}+0x6f0>
+               	movq	%rbx, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	je	0x423bf0 <kfun:#main(){}+0x6f0>
-               	movq	%r15, %rax
+               	je	0x423e90 <kfun:#main(){}+0x730>
+               	movq	%r12, %rax

@@ -15966,159 +16116,161 @@
@@@[(26, 40), (48, 53), (57, 61), (64, 70), (73, 75), (77, 79), (100, 113), (124, 126), (127, 129), (137, 139), (140, 142), (143, 157), (161, 165), (166, 188), (190, 196), (197, 209), (211, 212), (225, 228), (229, 231)]@@@
-               	je	0x423d10 <kfun:#main(){}+0x810>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x423c20 <kfun:#main(){}+0x720>
-               	movq	%rsi, %rax
+               	je	0x423fb0 <kfun:#main(){}+0x850>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x423ec0 <kfun:#main(){}+0x760>
@@@@
-               	je	0x423d10 <kfun:#main(){}+0x810>
-               	movq	16(%rbp), %rax
-               	movq	%rax, 328(%rsp)
+               	je	0x423fb0 <kfun:#main(){}+0x850>
+               	movq	16(%rbp), %r15
@@@@
-               	je	0x423d18 <kfun:#main(){}+0x818>
-               	movq	%rax, %r15
+               	je	0x423fb8 <kfun:#main(){}+0x858>
+               	movq	%rax, %r12
@@@@
-               	movl	$1, (%r15)
-               	movl	%eax, 4(%r15)
-               	movq	40(%rsp), %rax
+               	movl	$1, (%r12)
+               	movl	%eax, 4(%r12)
+               	movq	48(%rsp), %rax
@@@@
-               	leaq	16(%r15), %rdi
+               	leaq	16(%r12), %rdi
@@@@
-               	movq	%r15, %rdi
+               	movq	%r12, %rdi
@@@@
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x423d1b <kfun:#main(){}+0x81b>
-               	nop
-               	xorl	%r15d, %r15d
-               	jmp	0x424017 <kfun:#main(){}+0xb17>
-               	xorl	%r15d, %r15d
-               	movl	4(%r15), %r8d
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x423fbb <kfun:#main(){}+0x85b>
+               	xorl	%r12d, %r12d
+               	jmp	0x4242cb <kfun:#main(){}+0xb6b>
+               	xorl	%r12d, %r12d
+               	movl	4(%r12), %r8d
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
-               	je	0x423dc8 <kfun:#main(){}+0x8c8>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x423d90 <kfun:#main(){}+0x890>
-               	testq	%rbx, %rbx
-               	jne	0x423dbf <kfun:#main(){}+0x8bf>
-               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
+               	je	0x424077 <kfun:#main(){}+0x917>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x424030 <kfun:#main(){}+0x8d0>
+               	testq	%rbp, %rbp
+               	jne	0x42405f <kfun:#main(){}+0x8ff>
+               	jmp	0x424077 <kfun:#main(){}+0x917>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x423dc8 <kfun:#main(){}+0x8c8>
+               	cmpq	%rbx, %rdx
+               	jne	0x424077 <kfun:#main(){}+0x917>
@@@@
-               	je	0x423dba <kfun:#main(){}+0x8ba>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x423dc8 <kfun:#main(){}+0x8c8>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x423d80 <kfun:#main(){}+0x880>
-               	movq	%rcx, %rax
+               	je	0x42405a <kfun:#main(){}+0x8fa>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x424077 <kfun:#main(){}+0x917>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x424020 <kfun:#main(){}+0x8c0>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x423d8b <kfun:#main(){}+0x88b>
-               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
+               	cmpq	%rbx, %rdx
+               	je	0x42402b <kfun:#main(){}+0x8cb>
+               	jmp	0x424077 <kfun:#main(){}+0x917>
@@@@
-               	je	0x423dc8 <kfun:#main(){}+0x8c8>
-               	addq	$8, %rbx
-               	jmp	0x423fbe <kfun:#main(){}+0xabe>
-               	movl	%r8d, %ebx
-               	movq	%r15, 320(%rsp)
+               	je	0x424077 <kfun:#main(){}+0x917>
+               	addq	$8, %rbp
+               	movl	144(%rsp), %ecx
+               	movq	136(%rsp), %rdx
+               	jmp	0x424280 <kfun:#main(){}+0xb20>
+               	movq	%rbx, %rbp
+               	movq	%r15, 344(%rsp)
@@@@
+               	movl	%r8d, %ebx
@@@@
-               	jne	0x423e1c <kfun:#main(){}+0x91c>
+               	movq	%r12, 336(%rsp)
+               	jne	0x4240d9 <kfun:#main(){}+0x979>
@@@@
-               	movq	112(%rsp), %rdi
+               	movq	152(%rsp), %rbx

@@ -16127,254 +16279,262 @@
@@@[(3, 6), (7, 19), (26, 28), (29, 48), (50, 53), (57, 81), (84, 89), (101, 105), (108, 114), (121, 123), (124, 132), (133, 138), (139, 150), (151, 154), (155, 159), (160, 164), (165, 193), (200, 206), (232, 242), (244, 245), (246, 247), (274, 277), (278, 285), (286, 299), (300, 312), (313, 324), (325, 326), (327, 328), (340, 361), (362, 370), (372, 386), (392, 398), (400, 402), (404, 409), (412, 417)]@@@
-               	movq	104(%r14), %rbx
+               	movl	68(%rsp), %r8d
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	je	0x423efa <kfun:#main(){}+0x9fa>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x423e96 <kfun:#main(){}+0x996>
-               	nopl	(%rax,%rax)
+               	testq	%rbp, %rbp
+               	je	0x424199 <kfun:#main(){}+0xa39>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x424156 <kfun:#main(){}+0x9f6>
+               	nopl	(%rax)
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x423efa <kfun:#main(){}+0x9fa>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x424199 <kfun:#main(){}+0xa39>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x423e70 <kfun:#main(){}+0x970>
+               	je	0x424130 <kfun:#main(){}+0x9d0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x423e7e <kfun:#main(){}+0x97e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x423e8e <kfun:#main(){}+0x98e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x423e8e <kfun:#main(){}+0x98e>
-               	leaq	136(%r14), %r12
-               	movq	$0, 136(%r14)
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	jne	0x423e60 <kfun:#main(){}+0x960>
+               	jne	0x42413e <kfun:#main(){}+0x9de>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x42414e <kfun:#main(){}+0x9ee>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x42414e <kfun:#main(){}+0x9ee>
@@@@
-               	je	0x423f0f <kfun:#main(){}+0xa0f>
-               	callq	0x413730 <free@plt>
+               	je	0x4241b3 <kfun:#main(){}+0xa53>
+               	callq	0x413710 <free@plt>
+               	movl	68(%rsp), %r8d
@@@@
-               	jmp	0x423f43 <kfun:#main(){}+0xa43>
-               	movl	132(%rsp), %eax
+               	jmp	0x4241e3 <kfun:#main(){}+0xa83>
+               	movl	%r8d, %eax
@@@@
-               	movq	112(%rsp), %rdi
-               	movq	%rdi, %rbx
-               	addq	$8, %rbx
+               	movq	152(%rsp), %rbx
+               	movq	%rbx, %rbp
+               	addq	$8, %rbp
@@@@
-               	movq	%rax, (%rdi)
+               	movq	%rax, (%rbx)
@@@@
-               	movq	%rdi, (%rax)
-               	jmp	0x423fb1 <kfun:#main(){}+0xab1>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rbx, (%rax)
+               	jmp	0x42425d <kfun:#main(){}+0xafd>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdi)
-               	movq	%rdi, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r14)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x423fad <kfun:#main(){}+0xaad>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x424259 <kfun:#main(){}+0xaf9>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x423fa1 <kfun:#main(){}+0xaa1>
+               	je	0x42424c <kfun:#main(){}+0xaec>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x423fa5 <kfun:#main(){}+0xaa5>
+               	divq	%r8
+               	jmp	0x424251 <kfun:#main(){}+0xaf1>
@@@@
-               	divl	%ebp
-               	movq	%rdi, (%r12,%rdx,8)
+               	divl	%r8d
+               	movq	%rbx, (%r12,%rdx,8)
@@@@
-               	movq	%rcx, (%r12,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	136(%rsp), %r12
-               	movq	%r15, 8(%rbx)
-               	movl	$2, 64(%rsp)
-               	leaq	-3489(%rip), %rax       # 0x423230 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal>
-               	movq	%rax, 72(%rsp)
-               	movq	120(%rsp), %rax
-               	movq	%rax, 80(%rsp)
-               	movq	%r15, 88(%rsp)
-               	movl	56(%rsp), %eax
-               	movl	%eax, 96(%rsp)
-               	movq	96(%rsp), %rax
+               	movq	%rdi, (%r12,%rsi,8)
+               	movq	112(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r14)
+               	movl	144(%rsp), %ecx
+               	movq	136(%rsp), %rdx
+               	movq	336(%rsp), %r12
+               	movq	%r12, 8(%rbp)
+               	movl	$2, 80(%rsp)
+               	leaq	-3619(%rip), %rax       # 0x423470 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal>
+               	movq	%rax, 88(%rsp)
+               	movq	%rdx, 96(%rsp)
+               	movq	%r12, 104(%rsp)
+               	movl	%ecx, 112(%rsp)
+               	movq	112(%rsp), %rax
@@@@
-               	movq	328(%rsp), %rdi
-               	callq	0x43b790 <Worker::putJob((anonymous namespace)::Job, bool)>
-               	movq	40(%rsp), %rax
+               	movq	%r15, %rdi
+               	callq	0x43c500 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	48(%rsp), %rax
@@@@
-               	testq	%r15, %r15
-               	movq	48(%rsp), %r14
-               	je	0x42459f <kfun:#main(){}+0x109f>
-               	movl	4(%r15), %ebx
-               	movq	288(%rsp), %rax
+               	testq	%r12, %r12
+               	movq	56(%rsp), %r14
+               	je	0x424883 <kfun:#main(){}+0x1123>
+               	movl	4(%r12), %ebx
+               	movq	304(%rsp), %rax
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	movl	24(%r12), %eax
+               	movq	72(%rsp), %rbx
+               	movl	24(%rbx), %eax
@@@@
-               	jae	0x42446f <kfun:#main(){}+0xf6f>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
+               	movq	352(%rsp), %rbp
+               	jae	0x424753 <kfun:#main(){}+0xff3>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%r13,8)
@@@@
-               	movq	336(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x423a40 <kfun:#main(){}+0x540>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	cmpq	%rbp, %r13
+               	jne	0x423cd0 <kfun:#main(){}+0x570>
+               	jmp	0x424406 <kfun:#main(){}+0xca6>
+               	leaq	136(%r14), %r12
+               	movq	$0, 136(%r14)
+               	jmp	0x424108 <kfun:#main(){}+0x9a8>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 120(%rsp)
-               	cmpq	120(%rsp), %r15
-               	je	0x42444e <kfun:#main(){}+0xf4e>
-               	nopl	(%rax,%rax)
-               	movb	285714(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 136(%rsp)
+               	cmpq	136(%rsp), %rbp
+               	je	0x424732 <kfun:#main(){}+0xfd2>
+               	nopw	%cs:(%rax,%rax)
+               	movb	286922(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42416f <kfun:#main(){}+0xc6f>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
-               	movq	%rax, 216(%rsp)
-               	movslq	8(%rax), %r12
+               	je	0x42443f <kfun:#main(){}+0xcdf>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 144(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
+               	movq	%rax, 232(%rsp)
+               	movl	8(%rax), %r13d
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	je	0x4241d2 <kfun:#main(){}+0xcd2>
-               	leaq	280878(%rip), %rdi      # 0x468af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-47277(%rip), %rsi      # 0x418920 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43d890 <CallInitGlobalPossiblyLock>
-               	movq	280775(%rip), %rdi      # 0x468aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
-               	leaq	88(%rsp), %rsi
-               	callq	0x41b470 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
-               	movq	%rax, 88(%rsp)
-               	callq	0x43b490 <(anonymous namespace)::theState()>
+               	je	0x4244aa <kfun:#main(){}+0xd4a>
+               	leaq	282070(%rip), %rdi      # 0x469274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-47685(%rip), %rsi      # 0x418a60 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43e6b0 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	281964(%rip), %rdi      # 0x469220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	leaq	104(%rsp), %rsi
+               	callq	0x41b610 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, %r12
+               	movq	%rax, 104(%rsp)
+               	callq	0x43c200 <(anonymous namespace)::theState()>
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x424240 <kfun:#main(){}+0xd40>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x424240 <kfun:#main(){}+0xd40>
+               	testq	%rbp, %rbp
+               	je	0x424520 <kfun:#main(){}+0xdc0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x424520 <kfun:#main(){}+0xdc0>
@@@@
-               	je	0x424240 <kfun:#main(){}+0xd40>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x424520 <kfun:#main(){}+0xdc0>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 56(%rsp)
-               	je	0x424270 <kfun:#main(){}+0xd70>
-               	movq	%r12, %rax
+               	je	0x424540 <kfun:#main(){}+0xde0>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x424279 <kfun:#main(){}+0xd79>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x424549 <kfun:#main(){}+0xde9>
+               	movl	%r13d, %eax

@@ -16382,126 +16542,126 @@
@@@[(3, 17), (21, 47), (50, 60), (61, 71), (72, 86), (92, 98), (100, 110), (111, 125), (131, 137), (166, 172), (173, 179), (183, 203)]@@@
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x4242b4 <kfun:#main(){}+0xdb4>
-               	testq	%rbx, %rbx
-               	jne	0x4242ee <kfun:#main(){}+0xdee>
-               	jmp	0x4243a0 <kfun:#main(){}+0xea0>
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x424584 <kfun:#main(){}+0xe24>
+               	testq	%rbp, %rbp
+               	jne	0x4245be <kfun:#main(){}+0xe5e>
+               	jmp	0x424680 <kfun:#main(){}+0xf20>
@@@@
-               	jne	0x4243a0 <kfun:#main(){}+0xea0>
-               	cmpl	%r12d, %esi
-               	je	0x4242e5 <kfun:#main(){}+0xde5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4242a0 <kfun:#main(){}+0xda0>
-               	movq	%rsi, %rax
+               	jne	0x424680 <kfun:#main(){}+0xf20>
+               	cmpl	%r13d, %esi
+               	je	0x4245b5 <kfun:#main(){}+0xe55>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x424570 <kfun:#main(){}+0xe10>
@@@@
-               	je	0x4242af <kfun:#main(){}+0xdaf>
-               	jmp	0x4243a0 <kfun:#main(){}+0xea0>
-               	testq	%rbp, %rbp
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movq	16(%rbx), %r15
+               	je	0x42457f <kfun:#main(){}+0xe1f>
+               	jmp	0x424680 <kfun:#main(){}+0xf20>
+               	testq	%rbx, %rbx
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movq	16(%rbp), %r15
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%rdi, 104(%rsp)
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	%rdi, 128(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x424350 <kfun:#main(){}+0xe50>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x424350 <kfun:#main(){}+0xe50>
+               	testq	%rbp, %rbp
+               	je	0x424620 <kfun:#main(){}+0xec0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x424620 <kfun:#main(){}+0xec0>
@@@@
-               	je	0x424350 <kfun:#main(){}+0xe50>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x424620 <kfun:#main(){}+0xec0>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	104(%rsp), %rdi
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	128(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4243a0 <kfun:#main(){}+0xea0>
+               	testq	%rbp, %rbp
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x424680 <kfun:#main(){}+0xf20>
@@@@
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %r14
-               	jbe	0x42446f <kfun:#main(){}+0xf6f>
+               	cmpl	%r15d, 8(%r12)
+               	movq	56(%rsp), %r14
+               	jbe	0x424753 <kfun:#main(){}+0xff3>
@@@@
-               	movq	16(%r13,%rax,8), %rax
-               	movq	%rax, 224(%rsp)
-               	movq	72(%rsp), %rcx
+               	movq	16(%r12,%rax,8), %rax
+               	movq	%rax, 240(%rsp)
+               	movq	88(%rsp), %rcx
@@@@
-               	jae	0x424474 <kfun:#main(){}+0xf74>
-               	movq	56(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
-               	leaq	232(%rsp), %rsi
-               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
-               	movq	136(%rsp), %r12
-               	cmpq	120(%rsp), %r15
-               	jne	0x424160 <kfun:#main(){}+0xc60>
-               	movq	360(%rsp), %rax
+               	movq	72(%rsp), %rbx
+               	jae	0x424758 <kfun:#main(){}+0xff8>
+               	movq	144(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
+               	leaq	248(%rsp), %rsi
+               	callq	0x43fb60 <Kotlin_Worker_consumeFuture>
+               	cmpq	136(%rsp), %rbp
+               	jne	0x424430 <kfun:#main(){}+0xcd0>
+               	movq	376(%rsp), %rax

@@ -16509,2914 +16669,3104 @@
@@@[(12, 22), (62, 72), (170, 172), (3081, 3089), (3090, 3095), (3096, 3099), (3103, 3109), (3113, 3119), (3123, 3129), (3133, 3139), (3143, 3149), (3153, 3159), (3163, 3169), (3173, 3179), (3183, 3189), (3193, 3199), (3203, 3209), (3213, 3219), (3223, 3229), (3233, 3239), (3243, 3249), (3253, 3259), (3263, 3269), (3273, 3279), (3283, 3289), (3293, 3299), (3303, 3309), (3313, 3319), (3323, 3329), (3333, 3339), (3343, 3349), (3353, 3359), (3363, 3369), (3373, 3379), (3383, 3389), (3393, 3399), (3403, 3409), (3413, 3419), (3423, 3429), (3433, 3439), (3443, 3449), (3453, 3459), (3463, 3469), (3473, 3479), (3483, 3489), (3493, 3499), (3503, 3509), (3513, 3519), (3523, 3529), (3533, 3539), (3543, 3549), (3553, 3559), (3563, 3569), (3573, 3579), (3583, 3589), (3593, 3599), (3603, 3609), (3613, 3619), (3623, 3629), (3633, 3639), (3643, 3649), (3653, 3659), (3663, 3669), (3673, 3679), (3683, 3689), (3693, 3699), (3703, 3709), (3713, 3719), (3723, 3729), (3733, 3739), (3743, 3749), (3753, 3759), (3763, 3769), (3773, 3779), (3783, 3789), (3793, 3799), (3803, 3809), (3813, 3819), (3823, 3829), (3833, 3839), (3843, 3849), (3853, 3859), (3863, 3869), (3873, 3879), (3883, 3889), (3893, 3899), (3903, 3909), (3913, 3919), (3923, 3929), (3933, 3939), (3943, 3949), (3953, 3959), (3963, 3969), (3973, 3979), (3983, 3989), (3993, 3999), (4003, 4009), (4013, 4019), (4023, 4029), (4033, 4039), (4043, 4049), (4053, 4064), (4068, 4071), (4075, 4077)]@@@
-               	jne	0x42459a <kfun:#main(){}+0x109a>
-               	leaq	264(%rsp), %rsi
-               	movl	%r12d, %edi
-               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	jne	0x42487e <kfun:#main(){}+0x111e>
+               	leaq	280(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43fb60 <Kotlin_Worker_consumeFuture>
+               	movq	56(%rsp), %rax
@@@@
-               	callq	0x43da90 <ThrowException>
-               	leaq	248(%rsp), %rsi
-               	movl	%r12d, %edi
-               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	callq	0x43e8b0 <ThrowException>
+               	leaq	264(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43fb60 <Kotlin_Worker_consumeFuture>
+               	movq	56(%rsp), %rax
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)
@@@@
-               	cmpb	$0, 273017(%rip)        # 0x468b10 <_Konan_init_stdlib_guard>
-               	je	0x4260a7 <_Konan_constructors+0x17>
-               	cmpb	$0, 273009(%rip)        # 0x468b11 <_Konan_init_main_guard>
-               	je	0x426bad <_Konan_constructors+0xb1d>
+               	cmpl	$0, 274201(%rip)        # 0x469290 <state_global$kotlin.ranges.IntRange+0x4>
+               	je	0x426387 <_Konan_constructors+0x17>
+               	cmpl	$0, 274196(%rip)        # 0x469294 <state_global$kotlin.ranges.IntRange+0x8>
+               	je	0x4272a5 <_Konan_constructors+0xf35>
@@@@
-               	movb	$1, 272994(%rip)        # 0x468b10 <_Konan_init_stdlib_guard>
-               	leaq	377875(%rip), %rax      # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	movq	377900(%rip), %rcx      # 0x4824e8 <(anonymous namespace)::initTailNode>
+               	movl	$1, 274175(%rip)        # 0x469290 <state_global$kotlin.ranges.IntRange+0x4>
+               	movq	379088(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
@@@@
-               	cmpq	$0, 377856(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
+               	cmpq	$0, 379044(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
+               	leaq	379037(%rip), %rax      # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377834(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266835(%rip), %rcx      # 0x467338 <init_node+0x8>
+               	movq	%rdx, 379048(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	379041(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378997(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377805(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266822(%rip), %rcx      # 0x467348 <init_node.16+0x8>
+               	movq	%rdx, 379008(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	379001(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378957(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377776(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266809(%rip), %rcx      # 0x467358 <init_node.17+0x8>
+               	movq	%rdx, 378968(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378961(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378917(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377747(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266796(%rip), %rcx      # 0x467368 <init_node.18+0x8>
+               	movq	%rdx, 378928(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378921(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378877(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377718(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266783(%rip), %rcx      # 0x467378 <init_node.19+0x8>
+               	movq	%rdx, 378888(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378881(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378837(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377689(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266770(%rip), %rcx      # 0x467388 <init_node.20+0x8>
+               	movq	%rdx, 378848(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378841(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378797(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377660(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266757(%rip), %rcx      # 0x467398 <init_node.21+0x8>
+               	movq	%rdx, 378808(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378801(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378757(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377631(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266744(%rip), %rcx      # 0x4673a8 <init_node.22+0x8>
+               	movq	%rdx, 378768(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378761(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378717(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377602(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266731(%rip), %rcx      # 0x4673b8 <init_node.23+0x8>
+               	movq	%rdx, 378728(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378721(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378677(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377573(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266718(%rip), %rcx      # 0x4673c8 <init_node.24+0x8>
+               	movq	%rdx, 378688(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378681(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378637(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377544(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266705(%rip), %rcx      # 0x4673d8 <init_node.25+0x8>
+               	movq	%rdx, 378648(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378641(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378597(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377515(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266692(%rip), %rcx      # 0x4673e8 <init_node.26+0x8>
+               	movq	%rdx, 378608(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378601(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378557(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377486(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266679(%rip), %rcx      # 0x4673f8 <init_node.27+0x8>
+               	movq	%rdx, 378568(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378561(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378517(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377457(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266666(%rip), %rcx      # 0x467408 <init_node.28+0x8>
+               	movq	%rdx, 378528(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378521(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378477(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377428(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266653(%rip), %rcx      # 0x467418 <init_node.29+0x8>
+               	movq	%rdx, 378488(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378481(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378437(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377399(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266640(%rip), %rcx      # 0x467428 <init_node.30+0x8>
+               	movq	%rdx, 378448(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378441(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378397(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377370(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266627(%rip), %rcx      # 0x467438 <init_node.31+0x8>
+               	movq	%rdx, 378408(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378401(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378357(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377341(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266614(%rip), %rcx      # 0x467448 <init_node.32+0x8>
+               	movq	%rdx, 378368(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378361(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378317(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377312(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266601(%rip), %rcx      # 0x467458 <init_node.33+0x8>
+               	movq	%rdx, 378328(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378321(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378277(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377283(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266588(%rip), %rcx      # 0x467468 <init_node.34+0x8>
+               	movq	%rdx, 378288(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378281(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378237(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377254(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266575(%rip), %rcx      # 0x467478 <init_node.35+0x8>
+               	movq	%rdx, 378248(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378241(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378197(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377225(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266562(%rip), %rcx      # 0x467488 <init_node.36+0x8>
+               	movq	%rdx, 378208(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378201(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378157(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377196(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266549(%rip), %rcx      # 0x467498 <init_node.37+0x8>
+               	movq	%rdx, 378168(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378161(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378117(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377167(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266536(%rip), %rcx      # 0x4674a8 <init_node.38+0x8>
+               	movq	%rdx, 378128(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378121(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378077(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377138(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266523(%rip), %rcx      # 0x4674b8 <init_node.39+0x8>
+               	movq	%rdx, 378088(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378081(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 378037(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377109(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266510(%rip), %rcx      # 0x4674c8 <init_node.40+0x8>
+               	movq	%rdx, 378048(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378041(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377997(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377080(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266497(%rip), %rcx      # 0x4674d8 <init_node.41+0x8>
+               	movq	%rdx, 378008(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	378001(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377957(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377051(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266484(%rip), %rcx      # 0x4674e8 <init_node.42+0x8>
+               	movq	%rdx, 377968(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377961(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377917(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 377022(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266471(%rip), %rcx      # 0x4674f8 <init_node.43+0x8>
+               	movq	%rdx, 377928(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377921(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377877(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376993(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266458(%rip), %rcx      # 0x467508 <init_node.44+0x8>
+               	movq	%rdx, 377888(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377881(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377837(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376964(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266445(%rip), %rcx      # 0x467518 <init_node.45+0x8>
+               	movq	%rdx, 377848(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377841(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377797(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376935(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266432(%rip), %rcx      # 0x467528 <init_node.46+0x8>
+               	movq	%rdx, 377808(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377801(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377757(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376906(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266419(%rip), %rcx      # 0x467538 <init_node.47+0x8>
+               	movq	%rdx, 377768(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377761(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377717(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376877(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266406(%rip), %rcx      # 0x467548 <init_node.48+0x8>
+               	movq	%rdx, 377728(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377721(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377677(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376848(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266393(%rip), %rcx      # 0x467558 <init_node.49+0x8>
+               	movq	%rdx, 377688(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377681(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377637(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376819(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266380(%rip), %rcx      # 0x467568 <init_node.50+0x8>
+               	movq	%rdx, 377648(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377641(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377597(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376790(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266367(%rip), %rcx      # 0x467578 <init_node.51+0x8>
+               	movq	%rdx, 377608(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377601(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377557(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376761(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266354(%rip), %rcx      # 0x467588 <init_node.52+0x8>
+               	movq	%rdx, 377568(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377561(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377517(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376732(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266341(%rip), %rcx      # 0x467598 <init_node.53+0x8>
+               	movq	%rdx, 377528(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377521(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377477(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376703(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266328(%rip), %rcx      # 0x4675a8 <init_node.54+0x8>
+               	movq	%rdx, 377488(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377481(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377437(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376674(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266315(%rip), %rcx      # 0x4675b8 <init_node.55+0x8>
+               	movq	%rdx, 377448(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377441(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377397(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376645(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266302(%rip), %rcx      # 0x4675c8 <init_node.56+0x8>
+               	movq	%rdx, 377408(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377401(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377357(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376616(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266289(%rip), %rcx      # 0x4675d8 <init_node.57+0x8>
+               	movq	%rdx, 377368(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377361(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377317(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376587(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266276(%rip), %rcx      # 0x4675e8 <init_node.58+0x8>
+               	movq	%rdx, 377328(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377321(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377277(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376558(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266263(%rip), %rcx      # 0x4675f8 <init_node.59+0x8>
+               	movq	%rdx, 377288(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377281(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377237(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376529(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266250(%rip), %rcx      # 0x467608 <init_node.60+0x8>
+               	movq	%rdx, 377248(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377241(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377197(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376500(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266237(%rip), %rcx      # 0x467618 <init_node.61+0x8>
+               	movq	%rdx, 377208(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377201(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377157(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376471(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266224(%rip), %rcx      # 0x467628 <init_node.62+0x8>
+               	movq	%rdx, 377168(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377161(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377117(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376442(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266211(%rip), %rcx      # 0x467638 <init_node.63+0x8>
+               	movq	%rdx, 377128(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377121(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377077(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376413(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266198(%rip), %rcx      # 0x467648 <init_node.64+0x8>
+               	movq	%rdx, 377088(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377081(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 377037(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376384(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266185(%rip), %rcx      # 0x467658 <init_node.65+0x8>
+               	movq	%rdx, 377048(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377041(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376997(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376355(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266172(%rip), %rcx      # 0x467668 <init_node.66+0x8>
+               	movq	%rdx, 377008(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	377001(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376957(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376326(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266159(%rip), %rcx      # 0x467678 <init_node.67+0x8>
+               	movq	%rdx, 376968(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376961(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376917(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376297(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266146(%rip), %rcx      # 0x467688 <init_node.68+0x8>
+               	movq	%rdx, 376928(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376921(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376877(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376268(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266133(%rip), %rcx      # 0x467698 <init_node.69+0x8>
+               	movq	%rdx, 376888(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376881(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376837(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376239(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266120(%rip), %rcx      # 0x4676a8 <init_node.70+0x8>
+               	movq	%rdx, 376848(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376841(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376797(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376210(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266107(%rip), %rcx      # 0x4676b8 <init_node.71+0x8>
+               	movq	%rdx, 376808(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376801(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376757(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376181(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266094(%rip), %rcx      # 0x4676c8 <init_node.72+0x8>
+               	movq	%rdx, 376768(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376761(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376717(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376152(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266081(%rip), %rcx      # 0x4676d8 <init_node.73+0x8>
+               	movq	%rdx, 376728(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376721(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376677(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376123(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266068(%rip), %rcx      # 0x4676e8 <init_node.74+0x8>
+               	movq	%rdx, 376688(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376681(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376637(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376094(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266055(%rip), %rcx      # 0x4676f8 <init_node.75+0x8>
+               	movq	%rdx, 376648(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376641(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376597(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376065(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266042(%rip), %rcx      # 0x467708 <init_node.76+0x8>
+               	movq	%rdx, 376608(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376601(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376557(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376036(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266029(%rip), %rcx      # 0x467718 <init_node.77+0x8>
+               	movq	%rdx, 376568(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376561(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376517(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 376007(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266016(%rip), %rcx      # 0x467728 <init_node.78+0x8>
+               	movq	%rdx, 376528(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376521(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376477(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375978(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	266003(%rip), %rcx      # 0x467738 <init_node.79+0x8>
+               	movq	%rdx, 376488(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376481(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376437(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375949(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265990(%rip), %rcx      # 0x467748 <init_node.80+0x8>
+               	movq	%rdx, 376448(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376441(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376397(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375920(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265977(%rip), %rcx      # 0x467758 <init_node.81+0x8>
+               	movq	%rdx, 376408(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376401(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376357(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375891(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265964(%rip), %rcx      # 0x467768 <init_node.82+0x8>
+               	movq	%rdx, 376368(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376361(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376317(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375862(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265951(%rip), %rcx      # 0x467778 <init_node.83+0x8>
+               	movq	%rdx, 376328(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376321(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376277(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375833(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265938(%rip), %rcx      # 0x467788 <init_node.84+0x8>
+               	movq	%rdx, 376288(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376281(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376237(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375804(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265925(%rip), %rcx      # 0x467798 <init_node.85+0x8>
+               	movq	%rdx, 376248(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376241(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376197(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375775(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265912(%rip), %rcx      # 0x4677a8 <init_node.86+0x8>
+               	movq	%rdx, 376208(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376201(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376157(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375746(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265899(%rip), %rcx      # 0x4677b8 <init_node.87+0x8>
+               	movq	%rdx, 376168(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376161(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376117(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375717(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265886(%rip), %rcx      # 0x4677c8 <init_node.88+0x8>
+               	movq	%rdx, 376128(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376121(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376077(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375688(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265873(%rip), %rcx      # 0x4677d8 <init_node.89+0x8>
+               	movq	%rdx, 376088(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376081(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 376037(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375659(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265860(%rip), %rcx      # 0x4677e8 <init_node.90+0x8>
+               	movq	%rdx, 376048(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376041(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375997(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375630(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265847(%rip), %rcx      # 0x4677f8 <init_node.91+0x8>
+               	movq	%rdx, 376008(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	376001(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375957(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375601(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265834(%rip), %rcx      # 0x467808 <init_node.92+0x8>
+               	movq	%rdx, 375968(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375961(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375917(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375572(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265821(%rip), %rcx      # 0x467818 <init_node.93+0x8>
+               	movq	%rdx, 375928(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375921(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375877(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375543(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265808(%rip), %rcx      # 0x467828 <init_node.94+0x8>
+               	movq	%rdx, 375888(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375881(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375837(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375514(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265795(%rip), %rcx      # 0x467838 <init_node.95+0x8>
+               	movq	%rdx, 375848(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375841(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375797(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375485(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265782(%rip), %rcx      # 0x467848 <init_node.96+0x8>
+               	movq	%rdx, 375808(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375801(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375757(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375456(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265769(%rip), %rcx      # 0x467858 <init_node.97+0x8>
+               	movq	%rdx, 375768(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375761(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375717(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375427(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265756(%rip), %rcx      # 0x467868 <init_node.98+0x8>
+               	movq	%rdx, 375728(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375721(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375677(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375398(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265743(%rip), %rcx      # 0x467878 <init_node.99+0x8>
+               	movq	%rdx, 375688(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375681(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375637(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375369(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265730(%rip), %rcx      # 0x467888 <init_node.100+0x8>
+               	movq	%rdx, 375648(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375641(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375597(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375340(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265717(%rip), %rcx      # 0x467898 <init_node.101+0x8>
+               	movq	%rdx, 375608(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375601(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375557(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375311(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265704(%rip), %rcx      # 0x4678a8 <init_node.102+0x8>
+               	movq	%rdx, 375568(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375561(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375517(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375282(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265691(%rip), %rcx      # 0x4678b8 <init_node.103+0x8>
+               	movq	%rdx, 375528(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375521(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375477(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375253(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265678(%rip), %rcx      # 0x4678c8 <init_node.104+0x8>
+               	movq	%rdx, 375488(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375481(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375437(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375224(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265665(%rip), %rcx      # 0x4678d8 <init_node.105+0x8>
+               	movq	%rdx, 375448(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375441(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375397(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375195(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265652(%rip), %rcx      # 0x4678e8 <init_node.106+0x8>
+               	movq	%rdx, 375408(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375401(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375357(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375166(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265639(%rip), %rcx      # 0x4678f8 <init_node.107+0x8>
+               	movq	%rdx, 375368(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375361(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375317(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375137(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265626(%rip), %rcx      # 0x467908 <init_node.108+0x8>
+               	movq	%rdx, 375328(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375321(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375277(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	cmpq	$0, 375108(%rip)        # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	leaq	265613(%rip), %rcx      # 0x467918 <init_node.109+0x8>
+               	movq	%rdx, 375288(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	movq	375281(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	addq	$8, %rcx
+               	cmpq	$0, 375237(%rip)        # 0x482c48 <(anonymous namespace)::initHeadNode>
@@@@
-               	movq	%rax, 375112(%rip)      # 0x4824e8 <(anonymous namespace)::initTailNode>
-               	cmpb	$0, 270186(%rip)        # 0x468b11 <_Konan_init_main_guard>
-               	jne	0x4260a6 <_Konan_constructors+0x16>
-               	leaq	375060(%rip), %rax      # 0x4824c8 <(anonymous namespace)::initHeadNode>
-               	movq	375085(%rip), %rcx      # 0x4824e8 <(anonymous namespace)::initTailNode>
+               	movq	%rax, 375248(%rip)      # 0x482c68 <(anonymous namespace)::initTailNode>
+               	cmpl	$0, 270325(%rip)        # 0x469294 <state_global$kotlin.ranges.IntRange+0x8>
+               	jne	0x426386 <_Konan_constructors+0x16>
+               	movl	$1, 270309(%rip)        # 0x469294 <state_global$kotlin.ranges.IntRange+0x8>
+               	leaq	375186(%rip), %rax      # 0x482c48 <(anonymous namespace)::initHeadNode>
+               	movq	375211(%rip), %rcx      # 0x482c68 <(anonymous namespace)::initTailNode>
@@@@
-               	movb	$1, 270143(%rip)        # 0x468b11 <_Konan_init_main_guard>
-               	leaq	265559(%rip), %rax      # 0x467930 <init_node.111>
+               	leaq	263772(%rip), %rax      # 0x467930 <init_node.111>
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -19587,17 +19937,17 @@
@@@[(10, 11), (12, 15)]@@@
-               	movq	(%r15), %rdi
@@@@
-               	addq	8(%rbx), %rdi
+               	movq	8(%rbx), %rdi
+               	addq	(%r15), %rdi

@@ -19859,84 +20209,85 @@
@@@[(54, 58), (75, 78), (79, 87), (108, 112)]@@@
-               	movq	(%rbx), %rdi
-               	callq	0x4272e0 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x4279d0 <std::thread::~thread()>
@@@@
-               	testq	%rdi, %rdi
-               	jne	0x4272e6 <std::thread::~thread()+0x6>
-               	retq
@@@@
-               	callq	0x440f63 <std::terminate()>
-               	nopl	(%rax)
+               	cmpq	$0, (%rdi)
+               	jne	0x4279d9 <std::thread::~thread()+0x9>
+               	popq	%rax
+               	retq
+               	callq	0x441f13 <std::terminate()>
+               	nop
@@@@
-               	movq	(%rbx), %rdi
-               	callq	0x4272e0 <std::thread::~thread()>
+               	movq	%rbx, %rdi
+               	callq	0x4279d0 <std::thread::~thread()>

@@ -20595,42 +20946,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -20639,7 +20992,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -20651,42 +21004,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -20695,7 +21050,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -20707,42 +21062,44 @@
@@@[(35, 38), (49, 52)]@@@
-               	addq	%rax, 16(%r15)
+               	addq	16(%r15), %rax
+               	movq	%rax, 16(%r15)
@@@@
-               	addq	%rax, 40(%r15)
+               	addq	40(%r15), %rax
+               	movq	%rax, 40(%r15)

@@ -20751,7 +21108,7 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -20862,31 +21219,35 @@
@@@[(3, 9), (14, 18), (25, 29), (33, 37), (38, 42)]@@@
-               	callq	0x441214 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 216(%rbx)
+               	callq	0x4421c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
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
-               	jmp	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	jmp	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -20926,8 +21287,10 @@
@@@[(3, 9)]@@@
-               	callq	0x441214 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x4421c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -20938,14 +21301,14 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -20961,30 +21324,34 @@
@@@[(3, 9), (14, 18), (25, 29)]@@@
-               	callq	0x441214 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 224(%r14)
+               	callq	0x4421c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
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

@@ -21006,12 +21373,14 @@
@@@[(3, 9)]@@@
-               	callq	0x441214 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 40(%rbx)
+               	callq	0x4421c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	40(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%rbx)

@@ -21019,7 +21388,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -21053,97 +21422,96 @@
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
-               	je	0x42851a <AddTLSRecord+0x24a>
-               	nopl	(%rax)
+               	je	0x428c6a <AddTLSRecord+0x24a>
+               	nopw	(%rax,%rax)

@@ -21167,98 +21535,102 @@
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

@@ -21268,90 +21640,88 @@
@@@[(30, 43), (53, 57), (99, 106)]@@@
-               	jne	0x4286b2 <LookupTLS+0x82>
-               	jmp	0x42870d <LookupTLS+0xdd>
-               	movslq	168(%r9), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
-               	popq	%rcx
-               	retq
-               	leaq	263243(%rip), %rax      # 0x468ae8 <__KonanTlsKey>
+               	jne	0x428e0d <LookupTLS+0x7d>
+               	jmp	0x428e6d <LookupTLS+0xdd>
+               	movq	168(%r9), %rax
+               	jmp	0x428e89 <LookupTLS+0xf9>
+               	leaq	263280(%rip), %rax      # 0x469268 <__KonanTlsKey>
@@@@
-               	je	0x428708 <LookupTLS+0xd8>
-               	nop
+               	je	0x428e68 <LookupTLS+0xd8>
+               	nopw	(%rax,%rax)
@@@@
-               	movslq	16(%rcx), %rax
-               	shlq	$3, %rax
-               	addq	72(%r9), %rax
+               	movq	16(%rcx), %rax
+               	movq	72(%r9), %rcx
+               	cltq
+               	leaq	(%rcx,%rax,8), %rax

@@ -21369,8 +21739,10 @@
@@@[(3, 9)]@@@
-               	callq	0x441214 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 200(%rbx)
+               	callq	0x4421c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	200(%rbx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rbx)

@@ -21382,7 +21754,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -21390,92 +21762,93 @@
@@@[(39, 45), (46, 53), (70, 76)]@@@
-               	movslq	8(%rsi), %rdx
-               	testq	%rdx, %rdx
-               	je	0x4288d6 <Kotlin_processArrayInMark+0xb6>
+               	movl	8(%rsi), %eax
+               	testl	%eax, %eax
+               	je	0x429046 <Kotlin_processArrayInMark+0xb6>
@@@@
-               	leaq	-8(,%rdx,8), %r8
-               	testb	$8, %r8b
-               	jne	0x428866 <Kotlin_processArrayInMark+0x46>
+               	movslq	%eax, %r8
+               	leaq	-8(,%r8,8), %rdx
+               	testb	$8, %dl
+               	jne	0x428fd6 <Kotlin_processArrayInMark+0x46>
@@@@
-               	testq	%r8, %r8
-               	je	0x4288d6 <Kotlin_processArrayInMark+0xb6>
-               	leaq	(%rsi,%rdx,8), %r8
+               	testq	%rdx, %rdx
+               	je	0x429046 <Kotlin_processArrayInMark+0xb6>
+               	leaq	(%rsi,%r8,8), %r8

@@ -21597,215 +21970,221 @@
@@@[(105, 109), (133, 147), (148, 152)]@@@
-               	addq	$-1, 262580(%rip)       # 0x468dc0 <kotlin::mm::GlobalData::instance_+0xa8>
+               	movq	262605(%rip), %rax      # 0x469548 <kotlin::mm::GlobalData::instance_+0xa8>
+               	addq	$-1, %rax
+               	movq	%rax, 262594(%rip)      # 0x469548 <kotlin::mm::GlobalData::instance_+0xa8>
@@@@
-               	callq	0x4411ce <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 24(%rsp)
-               	addq	$-1, 262528(%rip)       # 0x468dd8 <kotlin::mm::GlobalData::instance_+0xc0>
-               	jmp	0x428c1c <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x17c>
-               	movq	262503(%rip), %rdi      # 0x468dc8 <kotlin::mm::GlobalData::instance_+0xb0>
+               	callq	0x44217e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	262535(%rip), %rax      # 0x469560 <kotlin::mm::GlobalData::instance_+0xc0>
+               	addq	$-1, %rax
+               	movq	%rax, 262524(%rip)      # 0x469560 <kotlin::mm::GlobalData::instance_+0xc0>
+               	jmp	0x429396 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x186>
+               	movq	262499(%rip), %rdi      # 0x469550 <kotlin::mm::GlobalData::instance_+0xb0>
@@@@
-               	je	0x428c80 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x1e0>
-               	nopw	(%rax,%rax)
+               	je	0x429410 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)+0x200>
+               	nopw	%cs:(%rax,%rax)

@@ -21928,213 +22307,226 @@
@@@[(3, 22), (23, 25), (26, 38), (39, 53), (54, 61), (62, 72), (73, 79), (81, 94), (101, 107), (108, 126), (127, 129), (133, 138), (142, 146), (151, 163), (178, 188), (189, 200), (204, 208), (212, 240), (241, 244), (245, 247), (248, 259), (260, 261), (262, 267), (268, 269), (270, 274), (281, 285), (286, 289), (290, 296), (297, 304), (308, 315), (319, 333), (335, 353), (355, 363)]@@@
-               	movq	280(%r12), %rdx
-               	xorl	%ecx, %ecx
-               	testq	%rdx, %rdx
-               	je	0x429097 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xc7>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %rsi
-               	leaq	(,%rax,8), %rdi
-               	movslq	20(%rdx), %rbp
-               	leaq	(%rsi,%rbp,8), %rbx
+               	movq	280(%r12), %r13
+               	movq	%r13, 8(%rsp)
+               	testq	%r13, %r13
+               	je	0x429854 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf4>
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
-               	je	0x4290a5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	leaq	24(,%rax,8), %rbp
+               	addq	%r13, %rbp
+               	movq	%rbp, 16(%rsp)
+               	movq	%rbx, 24(%rsp)
+               	testq	%r13, %r13
+               	je	0x42987c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	cmpq	%rbx, %rbp
+               	jb	0x42987c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
@@@@
-               	cmpq	%rbx, %r13
-               	jb	0x4290a5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
-               	movq	8(%rdx), %rdx
-               	testq	%rdx, %rdx
-               	je	0x42909e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xce>
-               	movslq	16(%rdx), %rax
-               	leaq	(%rdx,%rax,8), %r13
-               	addq	$24, %r13
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x429862 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x102>
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
-               	jae	0x429065 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x95>
-               	jmp	0x4290a5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x429810 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xb0>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x42987c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11c>
+               	pxor	%xmm0, %xmm0
+               	movdqa	%xmm0, 16(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	jmp	0x4290a5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xd5>
+               	jmp	0x42987a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x11a>
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
-               	jne	0x4290c0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xf0>
-               	testq	%rbp, %rbp
-               	jne	0x4290fd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	movl	$1, %ecx
-               	movq	%rsi, %rdx
+               	jne	0x429890 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x130>
@@@@
-               	je	0x4290af <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
-               	jmp	0x4290fd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x12d>
-               	nopl	(%rax)
-               	movl	$2, %ecx
-               	movq	%rbp, %rdx
-               	cmpq	%rbp, %rdi
-               	je	0x4290af <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0xdf>
+               	jne	0x4298ca <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	testq	%rbp, %rbp
+               	jne	0x4298ca <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x16a>
+               	movq	%rdx, 8(%rsp)
+               	movl	$1, %esi
+               	movq	%rdx, %r13
+               	jmp	0x429888 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
+               	nop
+               	movl	$2, %esi
+               	cmpq	%r13, %rcx
+               	je	0x429888 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x128>
@@@@
-               	movdqa	%xmm0, (%rsp)
+               	movdqa	%xmm0, 32(%rsp)
@@@@
-               	jne	0x429341 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x371>
-               	movq	(%rbp), %rsi
+               	jne	0x429b43 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3e3>
+               	movq	8(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x429148 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x178>
-               	movdqa	(%rsp), %xmm1
+               	je	0x42991c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1bc>
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
-               	je	0x429170 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1a0>
-               	jmp	0x42928b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2bb>
-               	testq	%rbp, %rbp
-               	jne	0x429106 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	%rcx, %rdi
-               	movq	%rcx, %rsi
+               	cmpq	%rcx, %r13
+               	je	0x429940 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1e0>
+               	jmp	0x429a7e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x31e>
@@@@
-               	je	0x42915c <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x18c>
-               	jmp	0x429106 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
-               	movq	(%r13), %rsi
+               	jne	0x4298d4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	testq	%rbp, %rbp
+               	jne	0x4298d4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
+               	movq	%rdx, %r13
+               	jmp	0x42992f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x1cf>
+               	movq	16(%rsp), %rax
+               	movq	(%rax), %rsi
@@@@
-               	je	0x4291d8 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x208>
-               	movdqa	(%rsp), %xmm1
+               	je	0x4299b1 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x251>
+               	movdqa	32(%rsp), %xmm1
@@@@
-               	movapd	%xmm1, (%rsp)
-               	addq	$8, %r13
-               	testq	%rbp, %rbp
-               	je	0x429231 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	cmpq	%rbx, %r13
-               	jb	0x429231 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
-               	movq	8(%rbp), %rbp
-               	testq	%rbp, %rbp
-               	je	0x42922a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x25a>
-               	movslq	16(%rbp), %rax
-               	leaq	24(,%rax,8), %r13
-               	addq	%rbp, %r13
+               	movapd	%xmm1, 32(%rsp)
+               	addq	$8, %rbp
+               	movq	%rbp, 16(%rsp)
+               	testq	%r13, %r13
+               	je	0x429a2e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	cmpq	%rbx, %rbp
+               	jb	0x429a2e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
+               	nopl	(%rax)
+               	movq	8(%r13), %r13
+               	testq	%r13, %r13
+               	je	0x429a14 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2b4>
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
-               	jae	0x4291f5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x225>
-               	jmp	0x429231 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x261>
+               	movq	%rbx, 24(%rsp)
+               	cmpq	%rbx, %rbp
+               	jae	0x4299d0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
+               	movq	%r13, 8(%rsp)
+               	jmp	0x429a2e <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2ce>
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
-               	jne	0x429250 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x280>
+               	jne	0x429a40 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2e0>
+               	testq	%r13, %r13
+               	jne	0x4298d4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	jne	0x429106 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	jne	0x4298d4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
+               	movq	%rdx, 8(%rsp)
@@@@
-               	movq	%rcx, %rdi
-               	testq	%r13, %r13
-               	je	0x429240 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x429106 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	movq	%rdx, %r13
+               	jmp	0x429a3a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
@@@@
-               	movq	%rbp, %rdi
-               	cmpq	%rbp, %rdx
-               	je	0x429240 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x270>
-               	jmp	0x429106 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x136>
+               	cmpq	%r13, %rcx
+               	je	0x429a3a <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2da>
+               	jmp	0x4298d4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x174>
@@@@
-               	movdqa	%xmm0, (%rsp)
-               	jmp	0x4292a5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d5>
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movdqa	%xmm0, 32(%rsp)
+               	jmp	0x429aa5 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x345>
+               	nopw	(%rax,%rax)
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x4292a0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x2d0>
-               	cmpb	$0, 260200(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	je	0x4292e3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	cmpq	%r14, 260183(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	jne	0x4292e3 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x313>
-               	leaq	260174(%rip), %rcx      # 0x468b18 <(anonymous namespace)::current>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	jne	0x429aa0 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x340>
+               	cmpb	$0, 260080(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x429ae4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	cmpq	%r14, 260063(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	jne	0x429ae4 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x384>
+               	leaq	260054(%rip), %rcx      # 0x4692a0 <(anonymous namespace)::current>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	je	0x42930f <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x33f>
-               	movdqu	(%rax), %xmm1
-               	jmp	0x429323 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x353>
-               	cmpb	$0, 260406(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x42932b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	cmpq	%r14, 260389(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x42932b <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x35b>
-               	leaq	260380(%rip), %rcx      # 0x468c18 <(anonymous namespace)::last>
-               	pshufd	$78, (%rsp), %xmm0      # xmm0 = mem[2,3,0,1]
+               	je	0x429b11 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3b1>
+               	movupd	(%rax), %xmm1
+               	jmp	0x429b25 <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3c5>
+               	cmpb	$0, 260285(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x429b2d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	cmpq	%r14, 260268(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x429b2d <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x3cd>
+               	leaq	260259(%rip), %rcx      # 0x4693a0 <(anonymous namespace)::last>
+               	pshufd	$78, 32(%rsp), %xmm0    # xmm0 = mem[2,3,0,1]
@@@@
-               	jne	0x4292dd <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x30d>
-               	pxor	%xmm1, %xmm1
-               	movdqu	%xmm1, 16(%rax)
-               	movdqu	%xmm1, (%rax)
+               	jne	0x429ade <void kotlin::gc::collectRootSetForThread<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&, kotlin::mm::ThreadData&)+0x37e>
+               	xorpd	%xmm1, %xmm1
+               	movupd	%xmm1, 16(%rax)
+               	movupd	%xmm1, (%rax)

@@ -22185,41 +22577,41 @@
@@@[(36, 44), (46, 48), (49, 51)]@@@
-               	callq	0x433c40 <mi_free>
-               	movq	(%r15), %rax
-               	movq	32(%r15), %rcx
-               	movq	%rcx, 8(%rax)
+               	callq	0x434630 <mi_free>
+               	movq	32(%r15), %rax
+               	movq	(%r15), %rcx
+               	movq	%rax, 8(%rcx)
@@@@
-               	movdqu	16(%rax), %xmm1
+               	movdqu	16(%rcx), %xmm1
@@@@
-               	movdqu	%xmm1, 16(%rax)
+               	movdqu	%xmm1, 16(%rcx)

@@ -22258,12 +22650,12 @@
@@@[(9, 13)]@@@
-               	jmp	0x4294f3 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
-               	movl	%ebx, %ebx
+               	jmp	0x429cf3 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x73>
+               	movl	%eax, %ebx

@@ -22282,26 +22674,28 @@
@@@[(14, 18), (19, 23), (24, 27), (28, 35)]@@@
-               	movslq	20(%rcx), %rbp
-               	testq	%rbp, %rbp
+               	movl	20(%rcx), %ecx
+               	testl	%ecx, %ecx
@@@@
-               	js	0x429530 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
-               	movl	%ebp, %ebp
+               	js	0x429d30 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xb0>
+               	movl	%ecx, %ebp
@@@@
-               	jmp	0x429542 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc2>
+               	jmp	0x429d45 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0xc5>
+               	nop
@@@@
-               	movl	24(%rax), %eax
-               	negq	%rbp
-               	imulq	%rax, %rbp
+               	movslq	%ecx, %rcx
+               	movl	24(%rax), %ebp
+               	negq	%rcx
+               	imulq	%rcx, %rbp

@@ -22323,68 +22717,69 @@
@@@[(24, 35), (44, 50)]@@@
-               	movslq	20(%rax), %rbx
-               	testq	%rbx, %rbx
-               	jns	0x4294ab <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
-               	movl	8(%rsi), %eax
-               	negq	%rbx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	jns	0x429cab <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x2b>
+               	cltq
+               	movl	8(%rsi), %ebx
+               	negq	%rax
@@@@
-               	je	0x429621 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
-               	nopw	(%rax,%rax)
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x429e21 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)+0x1a1>
+               	nopl	(%rax)
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>

@@ -22404,23 +22799,23 @@
@@@[(10, 13), (14, 15)]@@@
-               	jne	0x429738 <GCStateHolder::schedule()+0x68>
-               	movq	40(%rbx), %rax
+               	jne	0x429f38 <GCStateHolder::schedule()+0x68>
@@@@
+               	movq	40(%rbx), %rax

@@ -22429,35 +22824,38 @@
@@@[(8, 10), (11, 16), (17, 21), (31, 35)]@@@
+               	movq	%rdi, %rax
+               	movq	(%rdi), %rdi
@@@@
-               	je	0x429760 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x429f69 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
+               	movl	8(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x429760 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x429f69 <kotlin::ThreadStateGuard::~ThreadStateGuard()+0x29>
@@@@
-               	jmp	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -22470,54 +22868,52 @@
@@@[(3, 8), (15, 21), (60, 65)]@@@
-               	movl	$248, %eax
-               	addq	(%rdi), %rax
-               	movq	%rax, %rdi
+               	movq	(%rdi), %rdi
+               	addq	$248, %rdi
@@@@
-               	je	0x4297e1 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
-               	nopw	(%rax,%rax)
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x429ff1 <std::_Function_handler<void (long), kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_1>::_M_invoke(std::_Any_data const&, long&&)+0x41>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movq	(%rdi), %rdi
-               	jmp	0x42b450 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
-               	nopl	(%rax,%rax)
+               	jmp	0x42bd30 <kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_2::operator()() const>
+               	nopw	%cs:(%rax,%rax)

@@ -22560,96 +22956,99 @@
@@@[(6, 9), (15, 18), (19, 25), (35, 39), (43, 49), (67, 111), (113, 121), (133, 157), (159, 164)]@@@
-               	movq	%rcx, 208(%rsp)
+               	movq	%rcx, 192(%rsp)
+               	leaq	104(%rsp), %r13
@@@@
-               	jmp	0x429955 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe5>
+               	jmp	0x42a173 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf3>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	104(%rsp), %rdi
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
@@@@
-               	je	0x4298c9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
-               	movq	(%rax), %r13
+               	je	0x42a0d9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x59>
+               	movq	(%rax), %rbp
@@@@
-               	je	0x429981 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x111>
-               	nopl	(%rax,%rax)
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x42a1a1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x121>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	movups	%xmm0, 258408(%rip)     # 0x468b18 <(anonymous namespace)::current>
-               	movups	%xmm0, 258417(%rip)     # 0x468b28 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 258426(%rip)     # 0x468b38 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 258435(%rip)     # 0x468b48 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 258444(%rip)     # 0x468b58 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 258453(%rip)     # 0x468b68 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 258462(%rip)     # 0x468b78 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 258471(%rip)     # 0x468b88 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 258480(%rip)     # 0x468b98 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 258489(%rip)     # 0x468ba8 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 258498(%rip)     # 0x468bb8 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 258507(%rip)     # 0x468bc8 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 258516(%rip)     # 0x468bd8 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 258525(%rip)     # 0x468be8 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 258534(%rip)     # 0x468bf8 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 258543(%rip)     # 0x468c08 <(anonymous namespace)::current+0xf0>
-               	movq	%r13, 258296(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	movb	$1, 258297(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 258293(%rip)      # 0x468b28 <(anonymous namespace)::current+0x10>
-               	movb	$1, 258294(%rip)        # 0x468b30 <(anonymous namespace)::current+0x18>
-               	movb	$0, 258257(%rip)        # 0x468b12 <(anonymous namespace)::lock>
+               	movups	%xmm0, 258256(%rip)     # 0x4692a0 <(anonymous namespace)::current>
+               	movups	%xmm0, 258265(%rip)     # 0x4692b0 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 258274(%rip)     # 0x4692c0 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 258283(%rip)     # 0x4692d0 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 258292(%rip)     # 0x4692e0 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 258301(%rip)     # 0x4692f0 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 258310(%rip)     # 0x469300 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 258319(%rip)     # 0x469310 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 258328(%rip)     # 0x469320 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 258337(%rip)     # 0x469330 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 258346(%rip)     # 0x469340 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 258355(%rip)     # 0x469350 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 258364(%rip)     # 0x469360 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 258373(%rip)     # 0x469370 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 258382(%rip)     # 0x469380 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 258391(%rip)     # 0x469390 <(anonymous namespace)::current+0xf0>
+               	movq	%rbp, 258144(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	movb	$1, 258145(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 258141(%rip)      # 0x4692b0 <(anonymous namespace)::current+0x10>
+               	movb	$1, 258142(%rip)        # 0x4692b8 <(anonymous namespace)::current+0x18>
+               	movb	$0, 258103(%rip)        # 0x469298 <(anonymous namespace)::lock>
@@@@
-               	xchgb	%al, 263047(%rip)       # 0x469dd8 <(anonymous namespace)::markingRequested (.0.0)>
-               	movq	%r13, %rax
-               	xchgq	%rax, 263053(%rip)      # 0x469de8 <(anonymous namespace)::markingEpoch (.0)>
-               	callq	0x427ff0 <kotlin::mm::RequestThreadsSuspension()>
+               	xchgb	%al, 262895(%rip)       # 0x46a560 <(anonymous namespace)::markingRequested (.0.0)>
+               	movq	%rbp, %rax
+               	xchgq	%rax, 262901(%rip)      # 0x46a570 <(anonymous namespace)::markingEpoch (.0)>
+               	callq	0x4286e0 <kotlin::mm::RequestThreadsSuspension()>
@@@@
-               	jne	0x429a70 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x200>
-               	cmpb	$0, 258200(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	je	0x429a9a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x22a>
-               	leaq	258183(%rip), %rbx      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 258176(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x429ab3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x243>
-               	cmpb	$0, 258431(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x429ac0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	leaq	258414(%rip), %rbx      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 258407(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x429ac0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x250>
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x42a290 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x210>
+               	cmpb	$0, 258048(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x42a2ba <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x23a>
+               	leaq	258031(%rip), %rbx      # 0x4692a0 <(anonymous namespace)::current>
+               	cmpq	%rbp, 258024(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42a2d3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x253>
+               	cmpb	$0, 258279(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42a2e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	leaq	258262(%rip), %rbx      # 0x4693a0 <(anonymous namespace)::last>
+               	cmpq	%rbp, 258255(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42a2e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x260>
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	movb	$0, 258123(%rip)        # 0x468b12 <(anonymous namespace)::lock>
-               	nopw	(%rax,%rax)
+               	movq	%rbp, (%rsp)
+               	movb	$0, 257965(%rip)        # 0x469298 <(anonymous namespace)::lock>
+               	nopl	(%rax,%rax)

@@ -22657,281 +23056,291 @@
@@@[(64, 84), (95, 102), (103, 116), (172, 193), (194, 199), (203, 206), (225, 230), (231, 236), (244, 248), (272, 284), (312, 315), (316, 321), (339, 346), (350, 372)]@@@
-               	je	0x429baf <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x33f>
-               	leaq	257906(%rip), %rax      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 257899(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x429bc8 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x358>
-               	cmpb	$0, 258154(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x429bd3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
-               	leaq	258137(%rip), %rax      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 258130(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x429bd3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x363>
+               	je	0x42a3d3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x353>
+               	leaq	257754(%rip), %rax      # 0x4692a0 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 257743(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42a3f0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x370>
+               	cmpb	$0, 257998(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42a3fb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
+               	leaq	257981(%rip), %rax      # 0x4693a0 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 257970(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42a3fb <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x37b>
@@@@
-               	movq	216(%rsp), %rdi
-               	movq	%r13, %rsi
-               	callq	0x42acf0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movq	200(%rsp), %rdi
+               	movq	(%rsp), %rbp
+               	movq	%rbp, %rsi
+               	callq	0x42b5b0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
-               	movq	%r13, %rsi
-               	callq	0x428aa0 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
-               	movq	%r13, %rdi
-               	movq	208(%rsp), %rsi
-               	callq	0x429480 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	movq	%rbp, %rsi
+               	callq	0x429210 <kotlin::gc::ConcurrentMarkAndSweep::CollectRootSetAndStartMarking(kotlin::gc::GCHandle)>
+               	movq	%rbp, %rdi
+               	movq	192(%rsp), %rsi
+               	callq	0x429c80 <void kotlin::gc::Mark<kotlin::gc::internal::MarkTraits>(kotlin::gc::GCHandle, kotlin::gc::internal::MarkTraits::MarkQueue&)>
+               	nop
@@@@
-               	jne	0x429cb0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x440>
-               	cmpb	$0, 257624(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	leaq	258353(%rip), %r14      # 0x468e00 <kotlin::mm::GlobalData::instance_+0xe8>
-               	je	0x429ce1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x471>
-               	leaq	257600(%rip), %rax      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 257593(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x429cff <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x48f>
-               	cmpb	$0, 257848(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x429d20 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b0>
-               	leaq	257831(%rip), %rax      # 0x468c18 <(anonymous namespace)::last>
+               	jne	0x42a4d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x450>
+               	cmpb	$0, 257472(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	leaq	258201(%rip), %r14      # 0x469588 <kotlin::mm::GlobalData::instance_+0xe8>
+               	je	0x42a505 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x485>
+               	leaq	257448(%rip), %rax      # 0x4692a0 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 257437(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42a527 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4a7>
+               	cmpb	$0, 257692(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42a540 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c0>
+               	leaq	257675(%rip), %rax      # 0x4693a0 <(anonymous namespace)::last>
@@@@
-               	cmpq	%r13, 257819(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x429d22 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 257659(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42a542 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jmp	0x429d22 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4b2>
-               	nopl	(%rax,%rax)
+               	jmp	0x42a542 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4c2>
@@@@
-               	jne	0x429d40 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4d0>
-               	leaq	16(%rsp), %r15
-               	movq	%r15, 24(%rsp)
+               	jne	0x42a560 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x4e0>
+               	leaq	8(%rsp), %r15
@@@@
-               	movq	$0, 32(%rsp)
-               	movq	258192(%rip), %rbp      # 0x468e00 <kotlin::mm::GlobalData::instance_+0xe8>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	movq	258040(%rip), %rbp      # 0x469588 <kotlin::mm::GlobalData::instance_+0xe8>
@@@@
-               	addq	$-1, 258156(%rip)       # 0x468df8 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	258005(%rip), %rax      # 0x469580 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 257994(%rip)      # 0x469580 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	callq	0x4411ce <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
-               	addq	$1, 32(%rsp)
-               	addq	$-1, 258104(%rip)       # 0x468e10 <kotlin::mm::GlobalData::instance_+0xf8>
-               	jmp	0x429d9c <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x52c>
+               	callq	0x44217e <std::__detail::_List_node_base::_M_transfer(std::__detail::_List_node_base*, std::__detail::_List_node_base*)>
+               	movq	24(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 24(%rsp)
+               	movq	257931(%rip), %rax      # 0x469598 <kotlin::mm::GlobalData::instance_+0xf8>
+               	addq	$-1, %rax
+               	movq	%rax, 257920(%rip)      # 0x469598 <kotlin::mm::GlobalData::instance_+0xf8>
+               	jmp	0x42a5c6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x546>
@@@@
-               	movq	32(%rsp), %rax
-               	movq	%r15, 24(%rsp)
+               	movq	24(%rsp), %rax
@@@@
-               	movq	$0, 32(%rsp)
-               	jmp	0x429e60 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x5f0>
+               	movq	%r15, 8(%rsp)
+               	movq	$0, 24(%rsp)
+               	jmp	0x42a6a0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
@@@@
-               	je	0x429ea1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x631>
-               	nopw	(%rax,%rax)
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	movq	(%rsp), %r14
+               	je	0x42a6e1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x661>
+               	nop
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x429e90 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x620>
-               	cmpb	$0, 257144(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	je	0x429eba <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x64a>
-               	leaq	257127(%rip), %rax      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 257120(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x429ed3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x663>
-               	cmpb	$0, 257375(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x429efd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
-               	leaq	257358(%rip), %rax      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 257351(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x429efd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x68d>
+               	jne	0x42a6d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x650>
+               	cmpb	$0, 256960(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x42a6fa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x67a>
+               	leaq	256943(%rip), %rax      # 0x4692a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 256936(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42a713 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x693>
+               	cmpb	$0, 257191(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42a73d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>
+               	leaq	257174(%rip), %rax      # 0x4693a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 257167(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42a73d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6bd>

@@ -22956,186 +23365,197 @@
@@@[(10, 14), (21, 29), (42, 64), (131, 155), (160, 169), (175, 181), (189, 211), (214, 222), (223, 226), (231, 234), (254, 259), (262, 270), (271, 275), (278, 286), (287, 294)]@@@
-               	addq	$-1, 257538(%rip)       # 0x468df8 <kotlin::mm::GlobalData::instance_+0xe0>
+               	movq	257355(%rip), %rax      # 0x469580 <kotlin::mm::GlobalData::instance_+0xe0>
+               	addq	$-1, %rax
+               	movq	%rax, 257344(%rip)      # 0x469580 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jmp	0x429f28 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6b8>
-               	nop
-               	movb	$0, 257537(%rip)        # 0x468e18 <kotlin::mm::GlobalData::instance_+0x100>
-               	movq	257498(%rip), %rbx      # 0x468df8 <kotlin::mm::GlobalData::instance_+0xe0>
+               	jmp	0x42a768 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x6e8>
+               	nopl	(%rax,%rax)
+               	movb	$0, 257337(%rip)        # 0x4695a0 <kotlin::mm::GlobalData::instance_+0x100>
+               	movq	257298(%rip), %rbx      # 0x469580 <kotlin::mm::GlobalData::instance_+0xe0>
@@@@
-               	jne	0x42a030 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7c0>
-               	cmpb	$0, 256728(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	je	0x42a05a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x7ea>
-               	leaq	256711(%rip), %rax      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 256704(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x42a073 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x803>
-               	cmpb	$0, 256959(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x42a09d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
-               	leaq	256942(%rip), %rax      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 256935(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x42a09d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82d>
+               	jne	0x42a880 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x800>
+               	cmpb	$0, 256528(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x42a8aa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x82a>
+               	leaq	256511(%rip), %rax      # 0x4692a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 256504(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42a8c3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x843>
+               	cmpb	$0, 256759(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42a8ed <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
+               	leaq	256742(%rip), %rax      # 0x4693a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 256735(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42a8ed <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x86d>
@@@@
-               	jne	0x42a140 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8d0>
-               	cmpb	$0, 256456(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	je	0x42a16a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x8fa>
-               	leaq	256439(%rip), %rbx      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 256432(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x42a183 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x913>
-               	cmpb	$0, 256687(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x42a190 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	leaq	256670(%rip), %rbx      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 256663(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x42a190 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x920>
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
+               	jne	0x42a990 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x910>
+               	cmpb	$0, 256256(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x42a9ba <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x93a>
+               	leaq	256239(%rip), %rbx      # 0x4692a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 256232(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42a9d3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x953>
+               	cmpb	$0, 256487(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42a9e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	leaq	256470(%rip), %rbx      # 0x4693a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 256463(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42a9e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x960>
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>
@@@@
-               	leaq	104(%rsp), %rax
-               	movups	%xmm0, (%rax)
-               	movq	$0, 16(%rax)
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
-               	movq	257130(%rip), %rax      # 0x468e20 <kotlin::mm::GlobalData::instance_+0x108>
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>
+               	movq	256933(%rip), %rax      # 0x4695a8 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	je	0x42a1e1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x971>
-               	nop
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x42aa31 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9b1>
+               	nopl	(%rax,%rax)
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	cmpb	$0, 256300(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	je	0x42a206 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x996>
-               	leaq	256283(%rip), %rax      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%r13, 256276(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x42a21f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9af>
-               	cmpb	$0, 256531(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x42a23d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
-               	leaq	256514(%rip), %rax      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%r13, 256507(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x42a23d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	cmpb	$0, 256100(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x42aa5a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9da>
+               	leaq	256083(%rip), %rax      # 0x4692a0 <(anonymous namespace)::current>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 256072(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42aa77 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9f7>
+               	cmpb	$0, 256327(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42aa8e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
+               	leaq	256310(%rip), %rax      # 0x4693a0 <(anonymous namespace)::last>
+               	movq	(%rsp), %rcx
+               	cmpq	%rcx, 256299(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42aa8e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa0e>
@@@@
-               	jne	0x42a23d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x9cd>
+               	je	0x42aab0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa30>
+               	movb	$0, 256003(%rip)        # 0x469298 <(anonymous namespace)::lock>
+               	movq	(%r14), %rbx
+               	testq	%rbx, %rbx
+               	jne	0x42aaca <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa4a>
+               	jmp	0x42ac70 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movq	%r13, 136(%rsp)
-               	movb	$0, 256198(%rip)        # 0x468b12 <(anonymous namespace)::lock>
+               	movb	$0, 255962(%rip)        # 0x469298 <(anonymous namespace)::lock>
@@@@
-               	jmp	0x42a277 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
+               	jmp	0x42aae7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	nop
@@@@
-               	testb	$64, 88(%rax)
-               	jne	0x42a2d0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa60>
+               	movl	88(%rax), %eax
+               	testb	$64, %al
+               	jne	0x42ab40 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xac0>
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x42a3a6 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb36>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x42ac26 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba6>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x42a3b4 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb44>
-               	nopw	(%rax,%rax)
+               	jmp	0x42ac36 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbb6>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movslq	20(%rax), %rcx
-               	testq	%rcx, %rcx
-               	js	0x42a2ec <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa7c>
-               	movl	%ecx, %ecx
+               	movl	20(%rax), %eax
+               	testl	%eax, %eax
+               	js	0x42ab5a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xada>
+               	movl	%eax, %ecx
@@@@
-               	jmp	0x42a2fa <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa8a>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jmp	0x42ab6a <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaea>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -23144,38 +23564,42 @@
@@@[(3, 13), (14, 17), (37, 47), (51, 60)]@@@
-               	callq	0x42b3b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
-               	movq	16(%rsp), %r15
-               	movq	24(%rsp), %rbx
-               	movq	$0, 16(%rsp)
-               	movq	%r15, 160(%rsp)
+               	callq	0x42bc80 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)>
+               	movq	16(%rsp), %rbx
+               	movq	8(%rsp), %rax
+               	movq	$0, 8(%rsp)
+               	movq	%rax, 144(%rsp)
@@@@
-               	je	0x42a365 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xaf5>
+               	movq	144(%rsp), %r15
+               	je	0x42abdd <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb5d>
@@@@
-               	addq	$1, 120(%rsp)
-               	leaq	160(%rsp), %rdi
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	leaq	16(%rsp), %r15
+               	movq	120(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, 120(%rsp)
+               	leaq	144(%rsp), %rdi
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	leaq	8(%rsp), %r15
@@@@
-               	jne	0x42a277 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa07>
-               	jmp	0x42a3f0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xb80>
-               	movl	24(%rbx), %eax
-               	negq	%rcx
+               	jne	0x42aae7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xa67>
+               	jmp	0x42ac70 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbf0>
+               	cltq
+               	movl	24(%rbx), %ecx
+               	negq	%rax

@@ -23184,422 +23608,441 @@
@@@[(14, 17), (32, 56), (62, 69), (73, 74), (75, 81), (85, 102), (110, 162), (236, 238), (251, 266), (269, 276), (277, 290), (296, 299), (300, 306), (307, 354), (358, 363), (364, 370), (387, 391), (408, 414), (420, 465), (528, 541), (542, 545), (557, 567), (611, 615)]@@@
-               	nop
-               	movq	256553(%rip), %rax      # 0x468e20 <kotlin::mm::GlobalData::instance_+0x108>
+               	movq	256305(%rip), %rax      # 0x4695a8 <kotlin::mm::GlobalData::instance_+0x108>
@@@@
-               	jne	0x42a410 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xba0>
-               	cmpb	$0, 255736(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %rsi
-               	je	0x42a442 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbd2>
-               	leaq	255711(%rip), %rax      # 0x468b18 <(anonymous namespace)::current>
-               	cmpq	%rsi, 255704(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	je	0x42a45b <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xbeb>
-               	cmpb	$0, 255959(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x42a479 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
-               	leaq	255942(%rip), %rax      # 0x468c18 <(anonymous namespace)::last>
-               	cmpq	%rsi, 255935(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x42a479 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc09>
+               	jne	0x42ac90 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc10>
+               	cmpb	$0, 255488(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	movq	(%rsp), %r14
+               	je	0x42acbe <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc3e>
+               	leaq	255467(%rip), %rax      # 0x4692a0 <(anonymous namespace)::current>
+               	cmpq	%r14, 255460(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	je	0x42acd7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc57>
+               	cmpb	$0, 255715(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42acf5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
+               	leaq	255698(%rip), %rax      # 0x4693a0 <(anonymous namespace)::last>
+               	cmpq	%r14, 255691(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42acf5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc75>
@@@@
-               	movb	$0, 255634(%rip)        # 0x468b12 <(anonymous namespace)::lock>
-               	movq	200(%rsp), %rdi
-               	callq	0x42acf0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
+               	movb	$0, 255388(%rip)        # 0x469298 <(anonymous namespace)::lock>
+               	movq	184(%rsp), %rdi
+               	movq	%r14, %rsi
+               	callq	0x42b5b0 <GCStateHolder::ValueWithCondVar<long>::set(long)>
@@@@
+               	leaq	104(%rsp), %r13
@@@@
-               	je	0x42a4b1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc41>
-               	nop
-               	callq	0x426bf0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
+               	je	0x42ad41 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcc1>
+               	nopw	%cs:(%rax,%rax)
+               	callq	0x4272e0 <kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>::yield()>
@@@@
-               	jne	0x42a4a0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xc30>
-               	cmpb	$0, 255592(%rip)        # 0x468b20 <(anonymous namespace)::current+0x8>
-               	movq	136(%rsp), %r13
-               	je	0x42a580 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	cmpq	%r13, 255563(%rip)      # 0x468b18 <(anonymous namespace)::current>
-               	jne	0x42a580 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd10>
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 255577(%rip)      # 0x468b38 <(anonymous namespace)::current+0x20>
-               	movb	$1, 255578(%rip)        # 0x468b40 <(anonymous namespace)::current+0x28>
+               	jne	0x42ad30 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xcb0>
+               	cmpb	$0, 255328(%rip)        # 0x4692a8 <(anonymous namespace)::current+0x8>
+               	je	0x42ae00 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	cmpq	%r14, 255307(%rip)      # 0x4692a0 <(anonymous namespace)::current>
+               	jne	0x42ae00 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd80>
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 255321(%rip)      # 0x4692c0 <(anonymous namespace)::current+0x20>
+               	movb	$1, 255322(%rip)        # 0x4692c8 <(anonymous namespace)::current+0x28>
@@@@
-               	movups	%xmm0, 255504(%rip)     # 0x468b18 <(anonymous namespace)::current>
-               	movups	%xmm0, 255513(%rip)     # 0x468b28 <(anonymous namespace)::current+0x10>
-               	movups	%xmm0, 255522(%rip)     # 0x468b38 <(anonymous namespace)::current+0x20>
-               	movups	%xmm0, 255531(%rip)     # 0x468b48 <(anonymous namespace)::current+0x30>
-               	movups	%xmm0, 255540(%rip)     # 0x468b58 <(anonymous namespace)::current+0x40>
-               	movups	%xmm0, 255549(%rip)     # 0x468b68 <(anonymous namespace)::current+0x50>
-               	movups	%xmm0, 255558(%rip)     # 0x468b78 <(anonymous namespace)::current+0x60>
-               	movups	%xmm0, 255567(%rip)     # 0x468b88 <(anonymous namespace)::current+0x70>
-               	movups	%xmm0, 255576(%rip)     # 0x468b98 <(anonymous namespace)::current+0x80>
-               	movups	%xmm0, 255585(%rip)     # 0x468ba8 <(anonymous namespace)::current+0x90>
-               	movups	%xmm0, 255594(%rip)     # 0x468bb8 <(anonymous namespace)::current+0xa0>
-               	movups	%xmm0, 255603(%rip)     # 0x468bc8 <(anonymous namespace)::current+0xb0>
-               	movups	%xmm0, 255612(%rip)     # 0x468bd8 <(anonymous namespace)::current+0xc0>
-               	movups	%xmm0, 255621(%rip)     # 0x468be8 <(anonymous namespace)::current+0xd0>
-               	movups	%xmm0, 255630(%rip)     # 0x468bf8 <(anonymous namespace)::current+0xe0>
-               	movups	%xmm0, 255639(%rip)     # 0x468c08 <(anonymous namespace)::current+0xf0>
-               	jmp	0x42a5a5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	nopw	%cs:(%rax,%rax)
-               	cmpb	$0, 255641(%rip)        # 0x468c20 <(anonymous namespace)::last+0x8>
-               	je	0x42a5a5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	cmpq	%r13, 255624(%rip)      # 0x468c18 <(anonymous namespace)::last>
-               	jne	0x42a5a5 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xd35>
-               	callq	0x441bc0 <std::chrono::_V2::steady_clock::now()>
-               	movq	%rax, 255642(%rip)      # 0x468c38 <(anonymous namespace)::last+0x20>
-               	movb	$1, 255643(%rip)        # 0x468c40 <(anonymous namespace)::last+0x28>
-               	movb	$0, 255334(%rip)        # 0x468b12 <(anonymous namespace)::lock>
+               	movups	%xmm0, 255248(%rip)     # 0x4692a0 <(anonymous namespace)::current>
+               	movups	%xmm0, 255257(%rip)     # 0x4692b0 <(anonymous namespace)::current+0x10>
+               	movups	%xmm0, 255266(%rip)     # 0x4692c0 <(anonymous namespace)::current+0x20>
+               	movups	%xmm0, 255275(%rip)     # 0x4692d0 <(anonymous namespace)::current+0x30>
+               	movups	%xmm0, 255284(%rip)     # 0x4692e0 <(anonymous namespace)::current+0x40>
+               	movups	%xmm0, 255293(%rip)     # 0x4692f0 <(anonymous namespace)::current+0x50>
+               	movups	%xmm0, 255302(%rip)     # 0x469300 <(anonymous namespace)::current+0x60>
+               	movups	%xmm0, 255311(%rip)     # 0x469310 <(anonymous namespace)::current+0x70>
+               	movups	%xmm0, 255320(%rip)     # 0x469320 <(anonymous namespace)::current+0x80>
+               	movups	%xmm0, 255329(%rip)     # 0x469330 <(anonymous namespace)::current+0x90>
+               	movups	%xmm0, 255338(%rip)     # 0x469340 <(anonymous namespace)::current+0xa0>
+               	movups	%xmm0, 255347(%rip)     # 0x469350 <(anonymous namespace)::current+0xb0>
+               	movups	%xmm0, 255356(%rip)     # 0x469360 <(anonymous namespace)::current+0xc0>
+               	movups	%xmm0, 255365(%rip)     # 0x469370 <(anonymous namespace)::current+0xd0>
+               	movups	%xmm0, 255374(%rip)     # 0x469380 <(anonymous namespace)::current+0xe0>
+               	movups	%xmm0, 255383(%rip)     # 0x469390 <(anonymous namespace)::current+0xf0>
+               	jmp	0x42ae25 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	nop
+               	cmpb	$0, 255393(%rip)        # 0x4693a8 <(anonymous namespace)::last+0x8>
+               	je	0x42ae25 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	cmpq	%r14, 255376(%rip)      # 0x4693a0 <(anonymous namespace)::last>
+               	jne	0x42ae25 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xda5>
+               	callq	0x442b70 <std::chrono::_V2::steady_clock::now()>
+               	movq	%rax, 255394(%rip)      # 0x4693c0 <(anonymous namespace)::last+0x20>
+               	movb	$1, 255395(%rip)        # 0x4693c8 <(anonymous namespace)::last+0x28>
+               	movb	$0, 255084(%rip)        # 0x469298 <(anonymous namespace)::lock>
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
-               	movups	125641(%rip), %xmm0     # 0x449203 <typeinfo name for kotlin::gc::GCSchedulerData+0x1012>
-               	movups	%xmm0, (%rax)
-               	movq	%r13, 14(%rax)
+               	movq	%rax, 16(%rsp)
@@@@
-               	movb	$1, 56(%rsp)
-               	leaq	1530(%rip), %r13        # 0x42ad50 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
-               	movq	%r13, 64(%rsp)
+               	movups	(%rbx), %xmm0
+               	movups	%xmm0, (%rax)
+               	movq	14(%rbx), %rcx
+               	movq	%rcx, 14(%rax)
+               	movq	$22, 24(%rsp)
+               	movq	16(%rsp), %rbx
+               	movb	$0, 22(%rbx)
+               	movb	$1, 48(%rsp)
+               	leaq	1576(%rip), %rax        # 0x42b610 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
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
+               	je	0x42b120 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a0>
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
-               	movq	247804(%rip), %rdx      # 0x466fc0 <write+0x466fc0>
-               	callq	0x443dee <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
-               	movq	8(%rsp), %rdi
-               	testq	%rdi, %rdi
-               	movq	136(%rsp), %r13
-               	movq	152(%rsp), %rbx
-               	je	0x42a7e9 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf79>
-               	movq	(%rdi), %rax
-               	callq	*8(%rax)
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x42a80d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	movq	24(%rsp), %rdi
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x42a80d <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xf9d>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, (%rbp)
-               	jne	0x42a95f <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10ef>
-               	movq	144(%rsp), %rax
-               	movq	%rax, (%rbp)
-               	movq	$0, 144(%rsp)
-               	cmpb	$0, 192(%rsp)
-               	je	0x42a647 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	movq	160(%rsp), %rdi
-               	leaq	176(%rsp), %rax
-               	cmpq	%rax, %rdi
-               	je	0x42a647 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	callq	0x413730 <free@plt>
-               	jmp	0x42a647 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xdd7>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
+               	movq	32(%rsp), %rcx
+               	movq	%rcx, 32(%rax)
+               	jmp	0x42b126 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x10a6>
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
-               	callq	0x433c40 <mi_free>
-               	jmp	0x42a8e0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1070>
-               	movq	%r13, 16(%rsp)
+               	callq	0x434630 <mi_free>
+               	jmp	0x42b0c0 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1040>
+               	movq	%r14, 8(%rsp)
@@@@
-               	jmp	0x42a8ad <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x103d>
+               	jmp	0x42b081 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1001>
+               	movups	(%rdx), %xmm0
+               	movups	%xmm0, (%rcx)
+               	movq	%r13, %rbx
+               	movq	24(%rsp), %rcx
+               	movq	%rcx, 24(%rax)
+               	movq	%rdx, 16(%rsp)
+               	movq	$0, 24(%rsp)
+               	movb	$0, 32(%rsp)
+               	movb	$1, 48(%rax)
+               	leaq	1216(%rip), %rcx        # 0x42b610 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)>
+               	movq	%rcx, 56(%rax)
+               	movq	%rax, 64(%rsp)
+               	leaq	136(%rsp), %rdi
+               	leaq	64(%rsp), %rsi
+               	movq	245331(%rip), %rdx      # 0x466fc0 <write+0x466fc0>
+               	callq	0x444d9e <std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())>
+               	movq	64(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x42b182 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1102>
+               	movq	(%rdi), %rax
+               	callq	*8(%rax)
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	leaq	104(%rsp), %r13
+               	je	0x42b1ab <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	movq	16(%rsp), %rdi
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x42b1ab <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x112b>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, (%rbp)
+               	jne	0x42b21e <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x119e>
+               	movq	136(%rsp), %rax
+               	movq	%rax, (%rbp)
+               	movq	$0, 136(%rsp)
+               	cmpb	$0, 176(%rsp)
+               	je	0x42aec7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	movq	144(%rsp), %rdi
+               	leaq	160(%rsp), %rax
+               	cmpq	%rax, %rdi
+               	je	0x42aec7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
+               	callq	0x413710 <free@plt>
+               	jmp	0x42aec7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0xe47>
@@@@
-               	movq	$0, 8(%rsp)
-               	cmpb	$0, 56(%rsp)
-               	je	0x42aa04 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
-               	movq	24(%rsp), %rbx
-               	leaq	40(%rsp), %rax
-               	cmpq	%rax, %rbx
-               	jne	0x42a9fc <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x118c>
-               	jmp	0x42aa04 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1194>
+               	movq	$0, 64(%rsp)
+               	cmpb	$0, 48(%rsp)
+               	je	0x42b2c3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
+               	movq	16(%rsp), %rbx
+               	jmp	0x42b2b1 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1231>
@@@@
+               	leaq	32(%rsp), %rax
+               	cmpq	%rax, %rbx
+               	je	0x42b2c3 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1243>
@@@@
-               	je	0x42aa28 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x11b8>
-               	callq	0x413730 <free@plt>
-               	cmpq	$0, 247176(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x42aabf <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x124f>
-               	movq	152(%rsp), %rdi
+               	je	0x42b2e7 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x1267>
+               	callq	0x413710 <free@plt>
+               	cmpq	$0, 244937(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x42b379 <std::invoke_result<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>::type kotlin::ScopedThread::Run<kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3>(kotlin::ScopedThread::attributes, kotlin::gc::ConcurrentMarkAndSweep::ConcurrentMarkAndSweep(kotlin::mm::ObjectFactory<kotlin::gc::ConcurrentMarkAndSweep>&, kotlin::gc::GCScheduler&)::$_3&&)+0x12f9>
+               	movq	%r13, %rdi
@@@@
-               	callq	0x426c00 <__clang_call_terminate>
-               	nopw	(%rax,%rax)
+               	callq	0x4272f0 <__clang_call_terminate>
+               	nopw	%cs:(%rax,%rax)

@@ -23660,37 +24103,36 @@
@@@[(3, 7), (8, 13), (18, 24), (26, 27), (32, 40), (41, 54)]@@@
-               	movq	8(%rdi), %r15
-               	movq	%r15, 8(%rsp)
+               	movq	8(%rdi), %rdi
+               	movq	%rdi, 8(%rsp)
@@@@
-               	cmpq	$0, 246609(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x42ac75 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x35>
-               	movq	%r15, %rdi
+               	cmpq	$0, 244369(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x42b532 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x32>
@@@@
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jg	0x42acbd <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x7d>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jg	0x42b578 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x78>
@@@@
+               	nopl	(%rax)
@@@@
-               	callq	0x441810 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	168(%rbx), %rax
-               	cmpq	104(%rbx), %rax
-               	jle	0x42ac90 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
+               	callq	0x4427c0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	104(%rbx), %rax
+               	cmpq	%rax, 168(%rbx)
+               	jle	0x42b550 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x50>
@@@@
-               	je	0x42acd9 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	movq	8(%rsp), %r15
-               	testq	%r15, %r15
-               	je	0x42acd9 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x99>
-               	cmpq	$0, 246510(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x42acd4 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x94>
-               	movq	%r15, %rdi
+               	je	0x42b596 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x42b596 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x96>
+               	cmpq	$0, 244270(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x42b591 <long const& GCStateHolder::ValueWithCondVar<long>::wait<GCStateHolder::waitScheduled()::'lambda'()>(GCStateHolder::waitScheduled()::'lambda'())+0x91>

@@ -23701,8 +24143,8 @@
@@@[(3, 7)]@@@
-               	callq	0x441afa <std::__throw_system_error(int)>
-               	nop
+               	callq	0x442aaa <std::__throw_system_error(int)>
+               	nopl	(%rax)

@@ -23748,140 +24190,140 @@
@@@[(39, 41), (42, 58), (71, 79), (80, 85), (89, 107), (108, 121), (122, 128), (138, 143), (169, 175), (182, 188), (196, 201)]@@@
-               	movq	%rax, 128(%rsp)
-               	leaq	128(%r13), %rax
@@@@
-               	xorl	%eax, %eax
-               	movq	%rax, 40(%rsp)
-               	leaq	8(%rsp), %rbp
-               	movq	%r14, 112(%rsp)
-               	movq	%r15, 104(%rsp)
-               	jmp	0x42ae25 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	leaq	128(%r13), %rax
+               	movq	%rax, 112(%rsp)
+               	xorl	%ebp, %ebp
+               	leaq	8(%rsp), %rbx
+               	movq	%r14, 104(%rsp)
+               	movq	%r15, 96(%rsp)
+               	jmp	0x42b6d5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>
+               	nopl	(%rax)
@@@@
-               	movq	32(%r13), %rbx
-               	movb	$1, %al
-               	testq	%rbx, %rbx
-               	jne	0x42ae98 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x148>
+               	movq	32(%r13), %rax
+               	movb	$1, %cl
+               	testq	%rax, %rax
+               	jne	0x42b743 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x133>
@@@@
-               	movq	40(%rsp), %rax
-               	cmpq	%rax, 160(%r13)
-               	jne	0x42ae92 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x142>
+               	cmpq	%rbp, 160(%r13)
+               	jne	0x42b73d <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12d>
@@@@
-               	movq	%rbp, %rsi
-               	callq	0x441810 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	movq	32(%r13), %rbx
-               	testq	%rbx, %rbx
-               	je	0x42ae60 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x110>
-               	jmp	0x42ae94 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x144>
-               	xorl	%ebx, %ebx
-               	movb	16(%rsp), %al
-               	movq	16(%r13), %rcx
+               	movq	%rbx, %rsi
+               	callq	0x4427c0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	movq	32(%r13), %rax
+               	testq	%rax, %rax
+               	je	0x42b710 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x100>
+               	jmp	0x42b73f <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x12f>
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
-               	je	0x42b1d1 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x481>
+               	movups	%xmm0, (%rax)
+               	testb	%cl, %cl
+               	je	0x42baa4 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x494>
@@@@
-               	testq	%rbx, %rbx
-               	je	0x42b080 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
+               	cmpq	$0, 80(%rsp)
+               	je	0x42b950 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movq	%rbx, 144(%rsp)
@@@@
-               	jne	0x42af94 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	jmp	0x42b040 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
-               	nop
+               	jne	0x42b84e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	jmp	0x42b900 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x2f0>
+               	nopl	(%rax)
@@@@
-               	callq	0x441214 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
-               	addq	$1, 280(%r14)
+               	callq	0x4421c4 <std::__detail::_List_node_base::_M_hook(std::__detail::_List_node_base*)>
+               	movq	280(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 280(%r14)
@@@@
-               	testb	$64, 88(%rsi)
-               	je	0x42afb1 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x261>
+               	movl	88(%rsi), %eax
+               	testb	$64, %al
+               	je	0x42b86c <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x25c>

@@ -23900,99 +24342,103 @@
@@@[(6, 10), (18, 35), (51, 54), (55, 60), (67, 69), (97, 102)]@@@
-               	addq	$-1, 256(%r14)
+               	movq	256(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 256(%r14)
@@@@
-               	jne	0x42af94 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x244>
-               	nopl	(%rax)
-               	cmpq	$0, 136(%rsp)
-               	movq	112(%rsp), %r14
-               	movq	104(%rsp), %r15
-               	movq	144(%rsp), %rdi
-               	je	0x42b080 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x330>
-               	movl	60(%rsp), %ecx
+               	jne	0x42b84e <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x23e>
+               	nop
+               	cmpq	$0, 128(%rsp)
+               	movq	104(%rsp), %r14
+               	movq	96(%rsp), %r15
+               	movq	144(%rsp), %rbx
+               	movq	136(%rsp), %rdi
+               	je	0x42b950 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x340>
+               	movl	52(%rsp), %ecx
@@@@
-               	movq	40(%rsp), %rax
-               	movq	%rax, 24(%rsp)
+               	movq	%rbx, 24(%rsp)
@@@@
-               	je	0x42b1db <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x48b>
-               	movq	120(%rsp), %rdi
+               	je	0x42baae <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0x49e>
+               	movq	%rbx, %r12
+               	movq	112(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)
@@@@
-               	leaq	8(%rsp), %rbp
-               	je	0x42ae25 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xd5>
+               	leaq	8(%rsp), %rbx
+               	movq	%r12, %rbp
+               	je	0x42b6d5 <std::invoke_result<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>::type kotlin::ScopedThread::Run<kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0>(kotlin::ScopedThread::attributes, kotlin::gc::FinalizerProcessor::StartFinalizerThreadIfNone()::$_0&&)+0xc5>

@@ -24138,7 +24584,7 @@
@@@[(3, 5)]@@@
-               	movq	%rsi, %r13
+               	movq	%rsi, %rbx

@@ -24148,27 +24594,31 @@
@@@[(3, 5), (6, 18), (20, 30), (31, 33)]@@@
-               	movq	(%rbp), %rbx
+               	movq	(%rbp), %r13
@@@@
-               	testq	%rbx, %rbx
-               	je	0x42b40c <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
-               	movq	%rbx, %rdi
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x433c40 <mi_free>
+               	testq	%r13, %r13
+               	je	0x42bcdc <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x5c>
+               	movq	%r13, %rdi
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r13, %rdi
+               	callq	0x434630 <mi_free>
@@@@
-               	jne	0x42b419 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x69>
-               	movq	%r12, 8(%r13)
+               	jne	0x42bce5 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::ExtractUnsafe(kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node*, unsigned long)+0x65>
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

@@ -24177,7 +24627,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -24185,29 +24635,29 @@
@@@[(3, 5)]@@@
-               	movq	%rdi, %rbx
+               	movq	(%rdi), %rbx

@@ -24372,127 +24822,129 @@
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
-               	jb	0x42b722 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x72>
-               	cmpq	$0, 24(%rbp)
-               	je	0x42b8c8 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x218>
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
+               	jb	0x42c000 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x70>
+               	cmpq	$0, 24(%rbx)
+               	je	0x42c1b8 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x228>
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
-               	movb	255568(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 64(%rbx)
+               	movb	255226(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42b731 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x81>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x42b940 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x42c00f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x7f>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x42c220 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
+               	movq	%rax, 24(%rsp)
+               	movb	$0, 36(%rsp)
@@@@
-               	movq	%rax, 32(%rsp)
@@@@
-               	callq	0x4296d0 <GCStateHolder::schedule()>
-               	movq	%rax, %rbp
-               	movq	(%rbx), %r15
-               	movq	128(%r15), %r13
-               	movq	%r13, 16(%rsp)
-               	movb	$0, 24(%rsp)
-               	cmpq	$0, 243741(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x42b7ad <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfd>
-               	movq	%r13, %rdi
+               	callq	0x429ed0 <GCStateHolder::schedule()>
+               	movq	%rax, %r12
+               	movq	(%rbx), %rbp
+               	movq	128(%rbp), %rdi
+               	movq	%rdi, 8(%rsp)
+               	movb	$0, 16(%rsp)
+               	cmpq	$0, 241469(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x42c08a <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0xfa>
@@@@
-               	jne	0x42b8e3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x233>
-               	movb	$1, 24(%rsp)
-               	cmpq	%rbp, 120(%r15)
-               	jge	0x42b7f7 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x147>
-               	leaq	136(%r15), %rbx
-               	leaq	16(%rsp), %r13
-               	nopl	(%rax,%rax)
-               	cmpb	$0, 312(%r15)
-               	jne	0x42b7eb <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13b>
+               	jne	0x42c1d3 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x243>
+               	movb	$1, 16(%rsp)
+               	cmpq	%r12, 120(%rbp)
+               	jge	0x42c0d1 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x141>
+               	leaq	136(%rbp), %rbx
+               	leaq	8(%rsp), %r13
+               	nopw	%cs:(%rax,%rax)
+               	nop
+               	cmpb	$0, 312(%rbp)
+               	jne	0x42c0ca <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x13a>
@@@@
-               	callq	0x441810 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
-               	cmpq	%rbp, 120(%r15)
-               	jl	0x42b7d0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
-               	cmpb	$0, 24(%rsp)
-               	je	0x42b813 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	movq	16(%rsp), %r13
-               	testq	%r13, %r13
-               	je	0x42b813 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x163>
-               	cmpq	$0, 243636(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x42b80e <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15e>
-               	movq	%r13, %rdi
+               	callq	0x4427c0 <std::condition_variable::wait(std::unique_lock<std::mutex>&)>
+               	cmpq	%r12, 120(%rbp)
+               	jl	0x42c0b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x120>
+               	cmpb	$0, 16(%rsp)
+               	je	0x42c0ef <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	movq	8(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x42c0ef <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15f>
+               	cmpq	$0, 241365(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x42c0ea <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x15a>
@@@@
-               	je	0x42b844 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	addq	$328, %rdi              # imm = 0x148
-               	movl	12(%rsp), %ecx
+               	je	0x42c124 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	movl	32(%rsp), %ecx
@@@@
-               	xchgl	%eax, (%rdi)
+               	xchgl	%eax, 328(%rdi)
@@@@
-               	je	0x42b844 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movq	%r12, %rdi
-               	callq	0x42b940 <kotlin::allocateInObjectPool(unsigned long)>
-               	movq	%rax, %rbp
+               	je	0x42c124 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x194>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	%r15, %rdi
+               	callq	0x42c220 <kotlin::allocateInObjectPool(unsigned long)>
@@@@
-               	je	0x42b8cd <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x21d>
-               	movq	$0, (%rbp)
-               	movq	%rbp, 16(%rsp)
+               	je	0x42c1bd <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x22d>
+               	movq	$0, (%rax)
+               	movq	%rax, 8(%rsp)
+               	movq	8(%rsp), %rbx
@@@@
-               	movq	$0, 16(%rsp)
-               	movq	(%rax), %rbx
-               	movq	%rbp, (%rax)
-               	testq	%rbx, %rbx
-               	je	0x42b89f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	%rbx, %rdi
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbx, %rdi
-               	callq	0x433c40 <mi_free>
-               	jmp	0x42b89f <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1ef>
-               	movq	$0, 16(%rsp)
-               	movq	%rbp, 24(%r14)
-               	movq	%rbp, 32(%r14)
-               	addq	$1, 40(%r14)
-               	addq	%r12, 48(%r14)
-               	leaq	16(%rsp), %rdi
-               	callq	0x429450 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
-               	movq	%rbp, %rax
+               	movq	$0, 8(%rsp)
+               	movq	(%rax), %r12
+               	movq	%rbx, (%rax)
+               	testq	%r12, %r12
+               	je	0x42c184 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	%r12, %rdi
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%r12, %rdi
+               	callq	0x434630 <mi_free>
+               	jmp	0x42c184 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)+0x1f4>
+               	movq	$0, 8(%rsp)
+               	movq	%rbx, 24(%r14)
+               	movq	%rbx, 32(%r14)
+               	movq	40(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 40(%r14)
+               	addq	48(%r14), %r15
+               	movq	%r15, 48(%r14)
+               	leaq	8(%rsp), %rdi
+               	callq	0x429c50 <std::unique_ptr<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node, kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Deleter<kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Node> >::~unique_ptr()>
+               	movq	%rbx, %rax

@@ -24501,65 +24953,66 @@
@@@[(3, 9), (21, 26), (30, 34), (64, 70)]@@@
-               	callq	0x441c12 <std::__throw_bad_function_call()>
-               	leaq	121158(%rip), %rdi      # 0x44921a <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
-               	movq	%r12, %rsi
+               	callq	0x442bc2 <std::__throw_bad_function_call()>
+               	leaq	122902(%rip), %rdi      # 0x44a1da <typeinfo name for kotlin::gc::GCSchedulerData+0x1029>
+               	movq	%r15, %rsi
@@@@
-               	movq	32(%rsp), %rdi
-               	movl	12(%rsp), %esi
-               	callq	0x429740 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
+               	leaq	24(%rsp), %rdi
+               	callq	0x429f40 <kotlin::ThreadStateGuard::~ThreadStateGuard()>
@@@@
-               	callq	0x426c00 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x4272f0 <__clang_call_terminate>
+               	nop
@@@@
-               	jne	0x42b9bf <kotlin::allocateInObjectPool(unsigned long)+0x7f>
-               	addl	$1, 16(%rax)
+               	jne	0x42c2a4 <kotlin::allocateInObjectPool(unsigned long)+0x84>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)

@@ -24569,31 +25022,33 @@
@@@[(30, 32), (34, 38)]@@@
-               	movb	96(%rdx), %cl
+               	movq	96(%rdx), %rcx
@@@@
-               	orb	$2, 126(%rdx,%rax)
+               	movb	126(%rdx,%rax), %cl
+               	orb	$2, %cl
+               	movb	%cl, 126(%rdx,%rax)

@@ -24605,214 +25060,214 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)

@@ -24915,71 +25370,55 @@
@@@[(3, 14), (15, 24), (25, 71)]@@@
-               	jne	0x42c036 <_mi_random_init+0xe6>
-               	movb	(%rsp), %r8b
-               	movb	1(%rsp), %r15b
-               	movb	2(%rsp), %dil
-               	movb	3(%rsp), %al
-               	movl	%eax, 44(%rsp)
+               	jne	0x42c8d7 <_mi_random_init+0xa7>
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
-               	jmp	0x42c377 <_mi_random_init+0x427>
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
+               	jmp	0x42cbd4 <_mi_random_init+0x3a4>

@@ -25040,261 +25479,249 @@
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
-               	movaps	112380(%rip), %xmm1     # 0x447ac0 <_IO_stdin_used+0x80>
+               	movdqu	%xmm0, 108(%r14)
+               	movdqu	%xmm0, 92(%r14)
+               	movdqu	%xmm0, 76(%r14)
+               	movdqu	%xmm0, 60(%r14)
+               	movdqu	%xmm0, 44(%r14)
+               	movq	$0, 124(%r14)
+               	movaps	114269(%rip), %xmm1     # 0x448a80 <_IO_stdin_used+0x80>
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

@@ -25302,7 +25729,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	(%rax,%rax)

@@ -25329,25 +25756,27 @@
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

@@ -25357,42 +25786,42 @@
@@@[(3, 13), (33, 39)]@@@
-               	cmpb	$1, 251932(%rip)        # 0x469df4 <_mi_process_is_initialized>
-               	jne	0x42ccdb <mi_process_done+0x71b>
-               	cmpb	$0, 351923(%rip)        # 0x482498 <mi_process_done.process_done>
-               	jne	0x42ccdb <mi_process_done+0x71b>
-               	movb	$1, 351910(%rip)        # 0x482498 <mi_process_done.process_done>
+               	cmpb	$0, 251668(%rip)        # 0x46a57c <_mi_process_is_initialized>
+               	je	0x42d570 <mi_process_done+0x720>
+               	cmpb	$0, 351651(%rip)        # 0x482c18 <mi_process_done.process_done>
+               	jne	0x42d570 <mi_process_done+0x720>
+               	movb	$1, 351638(%rip)        # 0x482c18 <mi_process_done.process_done>
@@@@
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	callq	0x42f9d0 <mi_stats_merge_from>
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	callq	0x4302a0 <mi_stats_merge_from>

@@ -25499,63 +25928,64 @@
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

@@ -25765,10 +26195,10 @@
@@@[(6, 10)]@@@
-               	jmp	0x42c8bb <mi_process_done+0x2fb>
-               	nopw	(%rax,%rax)
+               	jmp	0x42d14d <mi_process_done+0x2fd>
+               	nop

@@ -25778,78 +26208,87 @@
@@@[(3, 27), (88, 104), (126, 131)]@@@
-               	cmpb	$0, 250079(%rip)        # 0x469df4 <_mi_process_is_initialized>
-               	jne	0x42dacc <mi_process_init+0xdcc>
-               	movb	$1, 250066(%rip)        # 0x469df4 <_mi_process_is_initialized>
-               	cmpb	$0, 250648(%rip)        # 0x46a041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	jne	0x42cd6e <mi_process_init+0x6e>
-               	movb	$1, 250639(%rip)        # 0x46a041 <mi_process_setup_auto_thread_done.tls_initialized>
-               	leaq	244455(%rip), %rdi      # 0x468820 <_mi_heap_default_key>
-               	leaq	3504(%rip), %rsi        # 0x42daf0 <mi_pthread_done>
+               	cmpb	$0, 249815(%rip)        # 0x46a57c <_mi_process_is_initialized>
+               	je	0x42d5b6 <mi_process_init+0x26>
+               	addq	$104, %rsp
+               	popq	%rbx
+               	popq	%r12
+               	popq	%r13
+               	popq	%r14
+               	popq	%r15
+               	popq	%rbp
+               	retq
+               	movb	$1, 249791(%rip)        # 0x46a57c <_mi_process_is_initialized>
+               	cmpb	$0, 250365(%rip)        # 0x46a7c1 <mi_process_setup_auto_thread_done.tls_initialized>
+               	jne	0x42d609 <mi_process_init+0x79>
+               	movb	$1, 250356(%rip)        # 0x46a7c1 <mi_process_setup_auto_thread_done.tls_initialized>
+               	leaq	244140(%rip), %rdi      # 0x468f80 <_mi_heap_default_key>
+               	leaq	3525(%rip), %rsi        # 0x42e3a0 <mi_pthread_done>
@@@@
-               	callq	0x42e0f0 <_mi_verbose_message>
-               	callq	0x42e210 <mi_thread_init>
-               	callq	0x42e210 <mi_thread_init>
-               	movq	$-80, %r15
-               	movq	%fs:(%r15), %rax
-               	movl	$176, %edi
-               	addq	(%rax), %rdi
-               	leaq	249804(%rip), %rax      # 0x469e00 <_mi_stats_main>
+               	callq	0x42e9c0 <_mi_verbose_message>
+               	callq	0x42eae0 <mi_thread_init>
+               	callq	0x42eae0 <mi_thread_init>
+               	movq	$-80, %r14
+               	movq	%fs:(%r14), %rax
+               	movq	(%rax), %rdi
+               	addq	$176, %rdi
+               	leaq	249519(%rip), %rax      # 0x46a580 <_mi_stats_main>
@@@@
-               	movabsq	$-4835703278458516699, %rax # imm = 0xBCE4217D2849CB25
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$-4835703278458516699, %rcx # imm = 0xBCE4217D2849CB25
+               	imulq	%rcx

@@ -25859,8 +26298,9 @@
@@@[(3, 8)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -25870,31 +26310,32 @@
@@@[(9, 14)]@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
+               	imulq	%rdx

@@ -25939,61 +26380,61 @@
@@@[(3, 6), (43, 45), (50, 54), (55, 75), (76, 80), (81, 86)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
@@@@
-               	leaq	(%r14,%rbp), %rcx
+               	leaq	(%r15,%rbp), %rcx
@@@@
-               	je	0x42d0b0 <mi_process_init+0x3b0>
-               	movq	%rbx, %r14
+               	je	0x42d950 <mi_process_init+0x3c0>
+               	movq	%rbx, %r15
@@@@
-               	jne	0x42d070 <mi_process_init+0x370>
-               	movq	%fs:(%r15), %rdi
-               	callq	0x42c510 <_mi_heap_random_next>
-               	movq	%rax, %r14
-               	andl	$536739840, %r14d       # imm = 0x1FFE0000
-               	shlq	$13, %r14
-               	orq	%r13, %r14
-               	jmp	0x42d070 <mi_process_init+0x370>
-               	cmpq	$0, 283280(%rip)        # 0x472348 <mi_clock_diff>
-               	jne	0x42d131 <mi_process_init+0x431>
+               	jne	0x42d910 <mi_process_init+0x380>
+               	movq	%fs:(%r14), %rdi
+               	callq	0x42cd90 <_mi_heap_random_next>
+               	movq	%rax, %r15
+               	andl	$536739840, %r15d       # imm = 0x1FFE0000
+               	shlq	$13, %r15
+               	orq	%r13, %r15
+               	jmp	0x42d910 <mi_process_init+0x380>
+               	cmpq	$0, 282992(%rip)        # 0x472ac8 <mi_clock_diff>
+               	jne	0x42d9d7 <mi_process_init+0x447>
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

@@ -26001,26 +26442,28 @@
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

@@ -26042,20 +26485,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x42d670 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	282948(%rip), %rax      # 0x472308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 282949(%rip)        # 0x472310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x42df30 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	282651(%rip), %rax      # 0x472a88 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 282652(%rip)        # 0x472a90 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -26063,15 +26506,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -26094,74 +26537,75 @@
@@@[(13, 19), (24, 28), (70, 75)]@@@
-               	callq	0x42f470 <_mi_warning_message>
-               	cmpq	%r15, %rbx
-               	jne	0x42d580 <mi_process_init+0x880>
+               	callq	0x42fd40 <_mi_warning_message>
+               	cmpq	%r14, %rbx
+               	jne	0x42de40 <mi_process_init+0x8b0>
@@@@
-               	movq	248737(%rip), %rax      # 0x469e70 <_mi_stats_main+0x70>
-               	nop
+               	movq	248440(%rip), %rax      # 0x46a5f0 <_mi_stats_main+0x70>
+               	nopl	(%rax,%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx

@@ -26169,20 +26613,20 @@
@@@[(7, 19), (23, 25)]@@@
-               	je	0x42d670 <mi_process_init+0x970>
-               	movq	%r13, %r15
-               	shlq	$30, %r15
-               	addq	%r14, %r15
-               	movq	282408(%rip), %rax      # 0x472308 <mi_unix_mmap.large_page_try_ok>
-               	cmpb	$0, 282409(%rip)        # 0x472310 <mi_unix_mmap.mi_huge_pages_available>
+               	je	0x42df30 <mi_process_init+0x9a0>
+               	movq	%r13, %r14
+               	shlq	$30, %r14
+               	addq	%r15, %r14
+               	movq	282101(%rip), %rax      # 0x472a88 <mi_unix_mmap.large_page_try_ok>
+               	cmpb	$0, 282102(%rip)        # 0x472a90 <mi_unix_mmap.mi_huge_pages_available>
@@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -26190,15 +26634,15 @@
@@@[(15, 17)]@@@
-               	movq	%r15, %rdi
+               	movq	%r14, %rdi

@@ -26207,142 +26651,144 @@
@@@[(3, 9), (14, 18), (60, 65), (87, 92), (93, 97), (105, 107), (171, 179), (183, 189)]@@@
-               	jae	0x42d570 <mi_process_init+0x870>
-               	cmpq	%r15, %rbx
-               	jne	0x42d580 <mi_process_init+0x880>
+               	jae	0x42de30 <mi_process_init+0x8a0>
+               	cmpq	%r14, %rbx
+               	jne	0x42de40 <mi_process_init+0x8b0>
@@@@
-               	movq	248288(%rip), %rax      # 0x469e70 <_mi_stats_main+0x70>
+               	movq	247981(%rip), %rax      # 0x46a5f0 <_mi_stats_main+0x70>
+               	nopw	%cs:(%rax,%rax)
+               	nopl	(%rax)
@@@@
-               	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
-               	imulq	16(%rsp)
+               	movq	16(%rsp), %rax
+               	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
+               	imulq	%rcx
@@@@
-               	jmp	0x42d3aa <mi_process_init+0x6aa>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	jmp	0x42dc5d <mi_process_init+0x6cd>
+               	nopw	(%rax,%rax)
@@@@
-               	cmpq	%r15, %rbx
-               	je	0x42d474 <mi_process_init+0x774>
+               	cmpq	%r14, %rbx
+               	je	0x42dd27 <mi_process_init+0x797>
@@@@
-               	movq	%r15, %rdx
+               	movq	%r14, %rdx
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x42d688 <mi_process_init+0x988>
-               	jmp	0x42d7bd <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x42df48 <mi_process_init+0x9b8>
+               	jmp	0x42e07d <mi_process_init+0xaed>
@@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	je	0x42d7bd <mi_process_init+0xabd>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	je	0x42e07d <mi_process_init+0xaed>

@@ -26350,13 +26796,13 @@
@@@[(11, 13)]@@@
-               	xchgq	%r14, (%rax)
+               	xchgq	%r15, (%rax)

@@ -26367,15 +26813,15 @@
@@@[(16, 18)]@@@
-               	movq	$-80, %r15
+               	movq	$-80, %r14

@@ -26384,101 +26830,101 @@
@@@[(18, 28), (54, 56), (109, 111)]@@@
-               	cmoveq	%r13, %r14
-               	testq	%r14, %r14
-               	jne	0x42d688 <mi_process_init+0x988>
-               	jmp	0x42d7bd <mi_process_init+0xabd>
-               	callq	0x42f7c0 <_mi_os_numa_node_count_get>
+               	cmoveq	%r13, %r15
+               	testq	%r15, %r15
+               	jne	0x42df48 <mi_process_init+0x9b8>
+               	jmp	0x42e07d <mi_process_init+0xaed>
+               	callq	0x430090 <_mi_os_numa_node_count_get>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	%r14, %rdx
+               	movq	%r15, %rdx

@@ -26561,46 +27007,39 @@
@@@[(43, 60)]@@@
-               	callq	0x42e0f0 <_mi_verbose_message>
-               	addq	$104, %rsp
-               	popq	%rbx
-               	popq	%r12
-               	popq	%r13
-               	popq	%r14
-               	popq	%r15
-               	popq	%rbp
-               	retq
-               	callq	0x42f7c0 <_mi_os_numa_node_count_get>
-               	jmp	0x42cf5b <mi_process_init+0x25b>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x42e9c0 <_mi_verbose_message>
+               	jmp	0x42d5a7 <mi_process_init+0x17>
+               	callq	0x430090 <_mi_os_numa_node_count_get>
+               	jmp	0x42d801 <mi_process_init+0x271>
+               	nop

@@ -26706,48 +27145,51 @@
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
-               	jmp	0x42dcfd <mi_pthread_done+0x20d>
-               	nopl	(%rax)
+               	jmp	0x42e5bd <mi_pthread_done+0x21d>

@@ -26939,27 +27381,27 @@
@@@[(26, 34)]@@@
-               	callq	0x42fec0 <mi_heap_collect_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
-               	callq	0x42f9d0 <mi_stats_merge_from>
+               	callq	0x430790 <mi_heap_collect_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi
+               	callq	0x4302a0 <mi_stats_merge_from>

@@ -26970,9 +27412,9 @@
@@@[(3, 9)]@@@
-               	jmp	0x42f250 <_mi_os_free_ex>
-               	movl	$176, %edi
-               	addq	(%r15), %rdi
+               	jmp	0x42fb10 <_mi_os_free_ex>
+               	movq	(%r15), %rdi
+               	addq	$176, %rdi

@@ -26980,8 +27422,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x42f9d0 <mi_stats_merge_from>
-               	nop
+               	jmp	0x4302a0 <mi_stats_merge_from>
+               	nopw	%cs:(%rax,%rax)

@@ -27232,60 +27674,60 @@
@@@[(14, 15), (17, 26)]@@@
-               	movq	64(%rsp), %rdx
@@@@
-               	movl	(%rax,%rcx,4), %ecx
-               	movq	72(%rsp), %rdi
-               	cmpl	(%rax,%rdi,4), %ecx
-               	jne	0x42e5a2 <mi_option_get+0x192>
+               	movq	72(%rsp), %rdx
+               	movl	(%rax,%rdx,4), %edx
+               	cmpl	%edx, (%rax,%rcx,4)
+               	movq	64(%rsp), %rdx
+               	jne	0x42ee72 <mi_option_get+0x192>

@@ -27297,48 +27739,48 @@
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

@@ -27346,31 +27788,31 @@
@@@[(3, 5)]@@@
-               	movzbl	(%rbp,%rcx,4), %ecx
+               	movl	(%rbp,%rcx,4), %ecx

@@ -27378,44 +27820,44 @@
@@@[(50, 54)]@@@
-               	jmp	0x42e441 <mi_option_get+0x31>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x42ed11 <mi_option_get+0x31>
+               	nop

@@ -28297,17 +28739,21 @@
@@@[(7, 12), (16, 20), (21, 22)]@@@
-               	js	0x42f46c <_mi_stat_decrease+0x7c>
-               	addq	%rsi, 8(%rdi)
+               	js	0x42fd30 <_mi_stat_decrease+0x80>
+               	addq	8(%rdi), %rsi
+               	movq	%rsi, 8(%rdi)
@@@@
-               	subq	%rsi, (%rdi)
+               	movq	(%rdi), %rax
+               	subq	%rsi, %rax
+               	movq	%rax, (%rdi)
@@@@
+               	nopw	(%rax,%rax)

@@ -28441,19 +28887,22 @@
@@@[(7, 12), (17, 21), (22, 24)]@@@
-               	jle	0x42f68e <_mi_stat_increase+0x6e>
-               	addq	%rsi, (%rdi)
+               	jle	0x42ff61 <_mi_stat_increase+0x71>
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

@@ -28643,22 +29092,23 @@
@@@[(19, 28)]@@@
-               	cmpq	$0, 272829(%rip)        # 0x472360 <mi_error_handler>
-               	je	0x42f9b7 <_mi_error_message+0x147>
-               	movq	272820(%rip), %rax      # 0x472360 <mi_error_handler>
-               	movq	272821(%rip), %rsi      # 0x472368 <mi_error_arg>
+               	movq	272494(%rip), %rax      # 0x472ae0 <mi_error_handler>
+               	testq	%rax, %rax
+               	je	0x430289 <_mi_error_message+0x149>
+               	movq	272482(%rip), %rax      # 0x472ae0 <mi_error_handler>
+               	movq	272483(%rip), %rsi      # 0x472ae8 <mi_error_arg>

@@ -28668,284 +29118,284 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -28961,66 +29411,67 @@
@@@[(16, 21), (80, 82)]@@@
-               	cmpq	$0, 337287(%rip)        # 0x482488 <deferred_free>
-               	je	0x42ff0d <mi_heap_collect_ex+0x4d>
+               	movq	336952(%rip), %rax      # 0x482c08 <deferred_free>
+               	testq	%rax, %rax
+               	je	0x4307df <mi_heap_collect_ex+0x4f>
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -29300,22 +29751,26 @@
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

@@ -29324,104 +29779,106 @@
@@@[(3, 11), (16, 17), (33, 50), (67, 69)]@@@
-               	jb	0x430560 <mi_heap_collect_ex+0x6a0>
-               	leaq	236341(%rip), %rdi      # 0x46a040 <os_preloading>
-               	cmpq	%rdi, %rcx
-               	jae	0x430560 <mi_heap_collect_ex+0x6a0>
+               	jb	0x430e40 <mi_heap_collect_ex+0x6b0>
+               	leaq	235986(%rip), %rax      # 0x46a7c0 <os_preloading>
+               	cmpq	%rax, %rcx
+               	jae	0x430e40 <mi_heap_collect_ex+0x6b0>
@@@@
-               	nopl	(%rax)
@@@@
-               	movq	248(%rdx), %rbp
-               	leaq	1(%rbp), %rdi
-               	movq	%rdi, 248(%rdx)
-               	cmpq	240(%rdx), %rbp
-               	jl	0x430582 <mi_heap_collect_ex+0x6c2>
-               	movq	%rdi, 240(%rdx)
-               	addq	$1, (%rcx)
+               	movq	248(%rdx), %rdi
+               	leaq	1(%rdi), %rax
+               	movq	%rax, 248(%rdx)
+               	cmpq	240(%rdx), %rdi
+               	jl	0x430e62 <mi_heap_collect_ex+0x6d2>
+               	movq	%rax, 240(%rdx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
+               	movq	40(%rbx), %rax
@@@@
-               	nop
+               	nopl	(%rax)

@@ -29430,74 +29887,77 @@
@@@[(7, 13), (31, 33), (52, 56), (78, 79)]@@@
-               	je	0x430955 <mi_heap_collect_ex+0xa95>
-               	addq	$-1, 120(%r15)
+               	je	0x43126b <mi_heap_collect_ex+0xadb>
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

@@ -29505,43 +29965,44 @@
@@@[(21, 25), (49, 52)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	jmp	0x4308d4 <mi_heap_collect_ex+0xa14>
-               	nopl	(%rax)
+               	jmp	0x4311e4 <mi_heap_collect_ex+0xa54>

@@ -29577,40 +30038,42 @@
@@@[(24, 28)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -29619,38 +30082,39 @@
@@@[(18, 21)]@@@
-               	callq	0x430db0 <_mi_arena_free>
+               	callq	0x4316d0 <_mi_arena_free>
+               	nopw	%cs:(%rax,%rax)

@@ -29700,25 +30164,27 @@
@@@[(28, 32)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)

@@ -29726,21 +30192,23 @@
@@@[(3, 7), (23, 27)]@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
-               	jmp	0x430adb <_mi_page_free_collect+0x7b>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x4313fb <_mi_page_free_collect+0x7b>
+               	nopl	(%rax)

@@ -29748,50 +30216,52 @@
@@@[(3, 7)]@@@
-               	andb	$-3, 6(%rdi)
+               	movb	6(%rdi), %al
+               	andb	$-3, %al
+               	movb	%al, 6(%rdi)

@@ -29802,22 +30272,22 @@
@@@[(3, 5)]@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)

@@ -29883,20 +30353,24 @@
@@@[(13, 20), (22, 27)]@@@
-               	jne	0x430d60 <_mi_page_free+0x230>
-               	addq	$-1, 3016(%r14)
+               	jne	0x431680 <_mi_page_free+0x230>
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

@@ -29905,8 +30379,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x431990 <_mi_segment_page_free>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x4322d0 <_mi_segment_page_free>

@@ -30388,68 +30861,72 @@
@@@[(79, 89)]@@@
-               	jae	0x431450 <mi_os_commitx+0x1f0>
-               	addq	$1, 232227(%rip)        # 0x469fe8 <_mi_stats_main+0x1e8>
-               	addq	$1, 232211(%rip)        # 0x469fe0 <_mi_stats_main+0x1e0>
+               	jae	0x431d70 <mi_os_commitx+0x1f0>
+               	movq	231812(%rip), %rax      # 0x46a768 <_mi_stats_main+0x1e8>
+               	addq	$1, %rax
+               	movq	%rax, 231801(%rip)      # 0x46a768 <_mi_stats_main+0x1e8>
+               	movq	231786(%rip), %rax      # 0x46a760 <_mi_stats_main+0x1e0>
+               	addq	$1, %rax
+               	movq	%rax, 231775(%rip)      # 0x46a760 <_mi_stats_main+0x1e0>

@@ -30458,21 +30935,21 @@
@@@[(8, 14), (16, 18)]@@@
-               	je	0x431544 <mi_os_commitx+0x2e4>
-               	leaq	98916(%rip), %rax       # 0x449783 <typeinfo name for kotlin::gc::GCSchedulerData+0x1592>
-               	leaq	98916(%rip), %rsi       # 0x44978a <typeinfo name for kotlin::gc::GCSchedulerData+0x1599>
+               	je	0x431e78 <mi_os_commitx+0x2f8>
+               	leaq	100592(%rip), %rax      # 0x44a743 <typeinfo name for kotlin::gc::GCSchedulerData+0x1592>
+               	leaq	100592(%rip), %rsi      # 0x44a74a <typeinfo name for kotlin::gc::GCSchedulerData+0x1599>
@@@@
-               	leaq	98911(%rip), %rdi       # 0x449793 <typeinfo name for kotlin::gc::GCSchedulerData+0x15a2>
+               	leaq	100587(%rip), %rdi      # 0x44a753 <typeinfo name for kotlin::gc::GCSchedulerData+0x15a2>

@@ -30480,6 +30957,7 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -30832,67 +31310,68 @@
@@@[(38, 42), (45, 50), (51, 55)]@@@
-               	jmp	0x431a7d <_mi_segment_page_free+0xed>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x4323bd <_mi_segment_page_free+0xed>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x431a9a <_mi_segment_page_free+0x10a>
+               	testb	%cl, %cl
+               	jne	0x4323dc <_mi_segment_page_free+0x10c>

@@ -30941,7 +31420,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -30953,70 +31432,78 @@
@@@[(3, 7), (8, 14), (31, 33), (51, 59), (61, 62), (66, 67), (68, 72), (95, 103)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x431d4c <mi_segment_page_clear+0x1dc>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x4326bd <mi_segment_page_clear+0x1fd>
@@@@
-               	movl	$160, %edi
-               	addq	112(%r15), %rdi
-               	callq	0x42f3f0 <_mi_stat_decrease>
+               	movq	112(%r15), %rdi
+               	addq	$160, %rdi
+               	callq	0x42fcb0 <_mi_stat_decrease>
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

@@ -31043,61 +31530,62 @@
@@@[(21, 25), (27, 34), (35, 39), (58, 62)]@@@
-               	jmp	0x431d1f <mi_segment_page_clear+0x1af>
-               	movb	96(%r14), %cl
+               	jmp	0x43268f <mi_segment_page_clear+0x1cf>
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
-               	jne	0x431d3b <mi_segment_page_clear+0x1cb>
+               	testb	%cl, %cl
+               	jne	0x4326ac <mi_segment_page_clear+0x1ec>
@@@@
-               	jmp	0x431d6f <mi_segment_page_clear+0x1ff>
-               	movb	96(%rax), %cl
+               	jmp	0x4326e1 <mi_segment_page_clear+0x221>
+               	movq	96(%rax), %rcx

@@ -31122,229 +31610,230 @@
@@@[(118, 124), (127, 132), (133, 137), (256, 260), (282, 286), (311, 315)]@@@
-               	jne	0x431eb1 <mi_segment_free+0xf1>
-               	jmp	0x431e95 <mi_segment_free+0xd5>
-               	movzbl	96(%r14), %ecx
+               	jne	0x432821 <mi_segment_free+0xf1>
+               	jmp	0x432805 <mi_segment_free+0xd5>
+               	movq	96(%r14), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x431f36 <mi_segment_free+0x176>
+               	testb	%cl, %cl
+               	jne	0x4328a7 <mi_segment_free+0x177>
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
-               	jmp	0x432142 <mi_segment_free+0x382>
-               	nopl	(%rax)
+               	jmp	0x432ab2 <mi_segment_free+0x382>
+               	nop

@@ -31379,51 +31868,54 @@
@@@[(21, 25), (47, 48)]@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
+               	nop

@@ -31431,41 +31923,43 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)

@@ -31474,7 +31968,6 @@
@@@[(3, 4)]@@@
-               	nopw	%cs:(%rax,%rax)

@@ -31502,106 +31995,110 @@
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

@@ -31610,7 +32107,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax)

@@ -31659,32 +32155,34 @@
@@@[(12, 16)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -31693,81 +32191,82 @@
@@@[(18, 21), (105, 109)]@@@
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	nopl	(%rax,%rax)
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)

@@ -31776,7 +32275,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -31807,185 +32306,192 @@
@@@[(38, 42), (45, 50), (51, 55), (136, 138), (157, 161), (180, 181), (218, 222), (240, 245)]@@@
-               	jmp	0x43285d <mi_segment_abandon+0xdd>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x4331dd <mi_segment_abandon+0xdd>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x432879 <mi_segment_abandon+0xf9>
+               	testb	%cl, %cl
+               	jne	0x4331fb <mi_segment_abandon+0xfb>
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
-               	movq	325939(%rip), %rax      # 0x4823c0 <abandoned>
-               	nopl	(%rax)
+               	movq	325420(%rip), %rax      # 0x482b40 <abandoned>
+               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -32007,154 +32513,157 @@
@@@[(92, 98), (101, 106), (107, 111), (136, 140), (205, 211)]@@@
-               	jne	0x432b73 <mi_segment_abandon+0x3f3>
-               	jmp	0x432b59 <mi_segment_abandon+0x3d9>
-               	movzbl	96(%r15), %ecx
+               	jne	0x433503 <mi_segment_abandon+0x403>
+               	jmp	0x4334e9 <mi_segment_abandon+0x3e9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x432bf3 <mi_segment_abandon+0x473>
+               	testb	%cl, %cl
+               	jne	0x433584 <mi_segment_abandon+0x484>
@@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	jne	0x432917 <mi_segment_abandon+0x197>
-               	jmp	0x4328fa <mi_segment_abandon+0x17a>
-               	nopw	(%rax,%rax)
+               	jne	0x433299 <mi_segment_abandon+0x199>
+               	jmp	0x43327c <mi_segment_abandon+0x17c>
+               	nop

@@ -32167,7 +32676,7 @@
@@@[(3, 5)]@@@
-               	movb	96(%r12), %cl
+               	movq	96(%r12), %rcx

@@ -32175,29 +32684,31 @@
@@@[(29, 35)]@@@
-               	addl	$-1, 136(%r12,%rbx)
-               	je	0x432d88 <_mi_free_delayed_block+0x98>
+               	movl	136(%r12,%rbx), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%r12,%rbx)
+               	je	0x433722 <_mi_free_delayed_block+0xa2>

@@ -32210,15 +32721,15 @@
@@@[(11, 15)]@@@
-               	jmp	0x432ec0 <_mi_page_unfull>
-               	nop
+               	jmp	0x433860 <_mi_page_unfull>
+               	nopl	(%rax,%rax)

@@ -32299,27 +32810,26 @@
@@@[(11, 18)]@@@
-               	cmpq	$9, %rsi
-               	jb	0x432f33 <_mi_page_unfull+0x73>
-               	movq	%rsi, %rdx
-               	addq	$7, %rdx
+               	cmpl	$9, %esi
+               	jb	0x4338cf <_mi_page_unfull+0x6f>
+               	leaq	7(%rsi), %rdx

@@ -32382,22 +32892,22 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	(%rax,%rax)

@@ -32672,83 +33182,86 @@
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
-               	je	0x433580 <mi_segment_reclaim+0x1c0>
-               	addq	$-1, 40(%r15)
+               	je	0x433f20 <mi_segment_reclaim+0x1c0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -32756,115 +33269,121 @@
@@@[(21, 25), (45, 49), (85, 89), (127, 131), (139, 145)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x43364a <mi_segment_reclaim+0x28a>
-               	nop
+               	jmp	0x433ff4 <mi_segment_reclaim+0x294>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 200(%rsi)
+               	movq	200(%rsi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 200(%rsi)
@@@@
-               	callq	0x431b70 <mi_segment_page_clear>
-               	nopl	(%rax)
+               	callq	0x4324c0 <mi_segment_page_clear>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x433770 <mi_segment_reclaim+0x3b0>
-               	addq	$-1, 40(%r15)
+               	je	0x434130 <mi_segment_reclaim+0x3d0>
+               	movq	40(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 40(%r15)

@@ -32872,70 +33391,74 @@
@@@[(21, 25), (45, 49), (80, 84)]@@@
-               	addq	$1, 232(%rcx)
+               	movq	232(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 232(%rcx)
@@@@
-               	jmp	0x43382a <mi_segment_reclaim+0x46a>
-               	nop
+               	jmp	0x434204 <mi_segment_reclaim+0x4a4>
+               	nopl	(%rax)
@@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -32954,28 +33477,27 @@
@@@[(3, 4), (8, 12)]@@@
-               	nopl	(%rax)
@@@@
-               	cmpq	$67108864, %r8          # imm = 0x4000000
-               	jae	0x433bb8 <_mi_page_reclaim+0x298>
+               	cmpl	$67108864, %r8d         # imm = 0x4000000
+               	jae	0x4345a2 <_mi_page_reclaim+0x2a2>

@@ -33109,49 +33631,52 @@
@@@[(13, 19), (28, 32), (34, 40), (41, 49), (53, 56), (58, 60)]@@@
-               	jne	0x433ba0 <_mi_page_reclaim+0x280>
-               	addq	$1, 3016(%rdi)
+               	jne	0x434580 <_mi_page_reclaim+0x280>
+               	movq	3016(%rdi), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%rdi)
@@@@
-               	jmp	0x433bda <_mi_page_reclaim+0x2ba>
-               	movb	96(%rax), %cl
+               	jmp	0x4345c5 <_mi_page_reclaim+0x2c5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rsi), %ecx
-               	testq	%rcx, %rcx
-               	je	0x433bea <_mi_page_reclaim+0x2ca>
+               	movb	(%rsi), %cl
+               	testb	%cl, %cl
+               	je	0x4345d3 <_mi_page_reclaim+0x2d3>
@@@@
-               	jmp	0x433932 <_mi_page_reclaim+0x12>
-               	movq	80(%rax), %r10
-               	movq	%rdx, %r9
-               	subq	%r10, %r9
+               	jmp	0x434312 <_mi_page_reclaim+0x12>
+               	movq	80(%rax), %r9
+               	movq	%rdx, %r10
+               	subq	%r9, %r10
@@@@
-               	je	0x433c2f <_mi_page_reclaim+0x30f>
+               	je	0x43461b <_mi_page_reclaim+0x31b>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax

@@ -33159,41 +33684,43 @@
@@@[(3, 11), (20, 22), (34, 40), (49, 53)]@@@
-               	subq	%rcx, %r9
-               	movq	%r9, %r8
-               	jmp	0x433932 <_mi_page_reclaim+0x12>
-               	nopw	(%rax,%rax)
+               	subq	%rcx, %r10
+               	movq	%r10, %r8
+               	jmp	0x434312 <_mi_page_reclaim+0x12>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movb	96(%rdi), %cl
+               	movq	96(%rdi), %rcx
@@@@
-               	addl	$-1, 136(%rdi,%rax)
-               	je	0x433ca6 <mi_free+0x66>
+               	movl	136(%rdi,%rax), %ecx
+               	addl	$-1, %ecx
+               	movl	%ecx, 136(%rdi,%rax)
+               	je	0x4346a0 <mi_free+0x70>
@@@@
-               	jmp	0x432db0 <_mi_page_retire>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x433750 <_mi_page_retire>
+               	nopl	(%rax)

@@ -33209,32 +33736,33 @@
@@@[(15, 18), (20, 24)]@@@
-               	movzbl	(%r9), %ebx
+               	movb	(%r9), %cl
+               	movzbl	%cl, %ebx
@@@@
-               	testq	%rbx, %rbx
-               	jne	0x433d57 <mi_free_generic+0x97>
+               	testb	%bl, %bl
+               	jne	0x434748 <mi_free_generic+0x98>

@@ -33244,30 +33772,32 @@
@@@[(25, 31)]@@@
-               	addl	$-1, 136(%rdi,%r11)
-               	je	0x433dcd <mi_free_generic+0x10d>
+               	movl	136(%rdi,%r11), %eax
+               	addl	$-1, %eax
+               	movl	%eax, 136(%rdi,%r11)
+               	je	0x4347c8 <mi_free_generic+0x118>

@@ -33279,49 +33809,49 @@
@@@[(26, 30)]@@@
-               	jmp	0x433e0b <mi_free_generic+0x14b>
-               	movb	96(%rax), %cl
+               	jmp	0x434807 <mi_free_generic+0x157>
+               	movq	96(%rax), %rcx

@@ -33331,8 +33861,7 @@
@@@[(3, 6)]@@@
-               	jmp	0x433d64 <mi_free_generic+0xa4>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x434755 <mi_free_generic+0xa5>

@@ -33343,86 +33872,91 @@
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

@@ -33431,72 +33965,76 @@
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

@@ -34012,21 +34550,21 @@
@@@[(10, 20)]@@@
-               	callq	0x434260 <_mi_fprintf>
-               	movq	(%r14), %rax
-               	cmpq	8(%r14), %rax
-               	leaq	86173(%rip), %rax       # 0x4499d2 <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
-               	leaq	86184(%rip), %rdx       # 0x4499e4 <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>
+               	callq	0x434c70 <_mi_fprintf>
+               	movq	8(%r14), %rax
+               	cmpq	%rax, (%r14)
+               	leaq	87629(%rip), %rax       # 0x44a992 <typeinfo name for kotlin::gc::GCSchedulerData+0x17e1>
+               	leaq	87640(%rip), %rdx       # 0x44a9a4 <typeinfo name for kotlin::gc::GCSchedulerData+0x17f3>

@@ -34763,70 +35301,73 @@
@@@[(14, 19), (32, 34), (88, 96)]@@@
-               	cmpq	$0, 315400(%rip)        # 0x482488 <deferred_free>
-               	je	0x4354a5 <_mi_malloc_generic+0x65>
+               	movq	314745(%rip), %rcx      # 0x482c08 <deferred_free>
+               	testq	%rcx, %rcx
+               	je	0x435eb7 <_mi_malloc_generic+0x67>
@@@@
-               	nopl	(%rax)
+               	nop
@@@@
-               	callq	0x42f870 <_mi_error_message>
-               	jmp	0x435559 <_mi_malloc_generic+0x119>
-               	addl	$1, 16(%rax)
+               	callq	0x430140 <_mi_error_message>
+               	jmp	0x435f6e <_mi_malloc_generic+0x11e>
+               	movl	16(%rax), %edx
+               	addl	$1, %edx
+               	movl	%edx, 16(%rax)

@@ -34839,7 +35380,6 @@
@@@[(3, 4)]@@@
-               	nopl	(%rax,%rax)

@@ -34891,37 +35431,43 @@
@@@[(16, 19), (20, 21), (29, 35), (38, 43), (44, 45), (49, 55)]@@@
-               	callq	0x42f870 <_mi_error_message>
-               	movq	8(%rbx), %rcx
+               	callq	0x430140 <_mi_error_message>
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x43567d <mi_find_page+0x10d>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x436096 <mi_find_page+0x116>
@@@@
-               	subl	%eax, 16(%rbx)
-               	movq	8(%rbx), %rcx
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)
@@@@
+               	movq	8(%rbx), %rcx
@@@@
-               	je	0x43568a <mi_find_page+0x11a>
-               	andb	$1, 7(%rbx)
+               	je	0x4360a7 <mi_find_page+0x127>
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -34958,91 +35504,100 @@
@@@[(10, 14), (59, 79), (98, 102), (104, 110), (120, 125)]@@@
-               	cmpq	$67108864, %rsi         # imm = 0x4000000
-               	jae	0x4357fb <mi_find_page+0x28b>
+               	cmpl	$67108864, %esi         # imm = 0x4000000
+               	jae	0x436242 <mi_find_page+0x2c2>
@@@@
-               	jmp	0x4357d9 <mi_find_page+0x269>
-               	addq	$1, 744(%rax)
-               	addq	$1, 736(%rax)
-               	jmp	0x4357d9 <mi_find_page+0x269>
-               	addq	$1, 728(%rax)
-               	addq	$1, 720(%rax)
+               	jmp	0x436220 <mi_find_page+0x2a0>
+               	movq	744(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 744(%rax)
+               	movq	736(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 736(%rax)
+               	jmp	0x436220 <mi_find_page+0x2a0>
+               	movq	728(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 728(%rax)
+               	movq	720(%rax), %rcx
+               	addq	$1, %rcx
+               	movq	%rcx, 720(%rax)
@@@@
-               	jmp	0x43581d <mi_find_page+0x2ad>
-               	movb	96(%rax), %cl
+               	jmp	0x436265 <mi_find_page+0x2e5>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r14), %ebx
-               	testq	%rbx, %rbx
-               	je	0x43582e <mi_find_page+0x2be>
+               	movb	(%r14), %bl
+               	testb	%bl, %bl
+               	je	0x436274 <mi_find_page+0x2f4>
@@@@
-               	je	0x435871 <mi_find_page+0x301>
-               	imulq	%rbx, %rdx
+               	je	0x4362ba <mi_find_page+0x33a>
+               	movzbl	%bl, %edi
+               	imulq	%rdi, %rdx

@@ -35052,8 +35607,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x43571f <mi_find_page+0x1af>
-               	nopl	(%rax)
+               	jmp	0x43613b <mi_find_page+0x1bb>
+               	nopw	%cs:(%rax,%rax)

@@ -35161,46 +35716,48 @@
@@@[(20, 24)]@@@
-               	addq	$1, 8(%rdx)
+               	movq	8(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rdx)

@@ -35211,96 +35768,95 @@
@@@[(3, 8), (40, 44), (47, 52), (53, 57), (77, 83), (84, 86), (87, 99), (102, 111), (112, 114), (118, 123), (124, 125)]@@@
-               	jmp	0x435af9 <mi_page_fresh_alloc+0x279>
-               	nopl	(%rax)
+               	jmp	0x436559 <mi_page_fresh_alloc+0x289>
+               	nopw	%cs:(%rax,%rax)
+               	nop
@@@@
-               	jmp	0x435b50 <mi_page_fresh_alloc+0x2d0>
-               	movzbl	96(%rdx), %ecx
+               	jmp	0x4365b0 <mi_page_fresh_alloc+0x2e0>
+               	movq	96(%rdx), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rcx, %rdi
+               	movzbl	%cl, %ecx
+               	movq	%rcx, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rcx, %rcx
-               	jne	0x435b6d <mi_page_fresh_alloc+0x2ed>
+               	testb	%cl, %cl
+               	jne	0x4365cf <mi_page_fresh_alloc+0x2ff>
@@@@
-               	je	0x436037 <mi_page_fresh_alloc+0x7b7>
-               	movq	%r15, %rdi
-               	andq	$-4194304, %rdi         # imm = 0xFFC00000
+               	je	0x436ac2 <mi_page_fresh_alloc+0x7f2>
+               	movq	%r15, %rsi
+               	andq	$-4194304, %rsi         # imm = 0xFFC00000
@@@@
-               	movl	112(%rdi), %edx
+               	movl	112(%rsi), %edx
@@@@
-               	jne	0x435bd5 <mi_page_fresh_alloc+0x355>
-               	movq	72(%rdi), %rax
-               	movq	16(%rsp), %rbx
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x435c38 <mi_page_fresh_alloc+0x3b8>
-               	jmp	0x435bee <mi_page_fresh_alloc+0x36e>
-               	movb	96(%rdi), %cl
+               	jne	0x436629 <mi_page_fresh_alloc+0x359>
+               	movq	72(%rsi), %rax
+               	jmp	0x436635 <mi_page_fresh_alloc+0x365>
+               	movq	96(%rsi), %rcx
@@@@
-               	movzbl	(%r15), %r9d
-               	testq	%r9, %r9
-               	jne	0x435c38 <mi_page_fresh_alloc+0x3b8>
-               	movq	80(%rdi), %rsi
+               	movb	(%r15), %cl
+               	movzbl	%cl, %edi
+               	testb	%dil, %dil
+               	jne	0x43668f <mi_page_fresh_alloc+0x3bf>
+               	movq	80(%rsi), %rbp
@@@@
-               	subq	%rsi, %rcx
+               	subq	%rbp, %rcx
@@@@
-               	je	0x435c35 <mi_page_fresh_alloc+0x3b5>
-               	imulq	%r9, %rax
-               	addq	%rdi, %rax
+               	je	0x43668c <mi_page_fresh_alloc+0x3bc>
+               	imulq	%rdi, %rax
@@@@
+               	addq	%rbp, %rax

@@ -35317,74 +35873,75 @@
@@@[(7, 10), (12, 29), (30, 51), (52, 74), (75, 85), (87, 91), (105, 109), (113, 119)]@@@
-               	movq	%rax, %r8
-               	jmp	0x435c69 <mi_page_fresh_alloc+0x3e9>
+               	jmp	0x4366ba <mi_page_fresh_alloc+0x3ea>
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
-               	jne	0x435da2 <mi_page_fresh_alloc+0x522>
-               	movzwl	2(%r15), %r10d
-               	cmpw	%r8w, %r10w
-               	jae	0x435da2 <mi_page_fresh_alloc+0x522>
-               	movl	112(%rdi), %eax
-               	cmpl	$3, %eax
-               	jne	0x435cb7 <mi_page_fresh_alloc+0x437>
-               	movq	72(%rdi), %rsi
-               	testb	%r9b, %r9b
-               	je	0x435cc7 <mi_page_fresh_alloc+0x447>
+               	jne	0x436810 <mi_page_fresh_alloc+0x540>
+               	movzwl	2(%r15), %ecx
+               	cmpw	%ax, %cx
+               	jae	0x436810 <mi_page_fresh_alloc+0x540>
+               	movzwl	%cx, %r8d
+               	movl	112(%rsi), %edx
+               	cmpl	$3, %edx
+               	jne	0x43670c <mi_page_fresh_alloc+0x43c>
+               	movq	72(%rsi), %rax
+               	testb	%dil, %dil
+               	je	0x43671d <mi_page_fresh_alloc+0x44d>
@@@@
-               	jmp	0x435d51 <mi_page_fresh_alloc+0x4d1>
-               	movb	96(%rdi), %cl
-               	movl	$1, %esi
-               	shlq	%cl, %rsi
-               	testb	%r9b, %r9b
-               	jne	0x435caf <mi_page_fresh_alloc+0x42f>
-               	movq	80(%rdi), %rdx
-               	movq	%rsi, %rcx
-               	subq	%rdx, %rcx
-               	cmpl	$1, %eax
-               	ja	0x435cfb <mi_page_fresh_alloc+0x47b>
+               	jmp	0x4367ad <mi_page_fresh_alloc+0x4dd>
+               	movq	96(%rsi), %rcx
+               	movl	$1, %eax
+               	shlq	%cl, %rax
+               	testb	%dil, %dil
+               	jne	0x436704 <mi_page_fresh_alloc+0x434>
+               	movq	80(%rsi), %rbx
+               	movq	%rax, %rcx
+               	subq	%rbx, %rcx
+               	cmpl	$1, %edx
+               	ja	0x436751 <mi_page_fresh_alloc+0x481>
@@@@
-               	je	0x435cfb <mi_page_fresh_alloc+0x47b>
-               	imulq	%r9, %rsi
-               	addq	%rsi, %rdi
-               	addq	%rdx, %rdi
-               	movq	%rdi, %rax
+               	je	0x436751 <mi_page_fresh_alloc+0x481>
+               	imulq	%rdi, %rax
+               	addq	%rax, %rsi
+               	addq	%rbx, %rsi
+               	movq	%rsi, %rax
@@@@
-               	je	0x435d36 <mi_page_fresh_alloc+0x4b6>
-               	movq	%rdi, %rax
+               	je	0x436792 <mi_page_fresh_alloc+0x4c2>
+               	movq	%rsi, %rax
@@@@
-               	addq	$1, (%rdx)
+               	movq	(%rdx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rdx)
@@@@
-               	ja	0x435a57 <mi_page_fresh_alloc+0x1d7>
-               	jmp	0x435a5b <mi_page_fresh_alloc+0x1db>
-               	movl	%edi, %eax
+               	ja	0x4364ae <mi_page_fresh_alloc+0x1de>
+               	jmp	0x4364b2 <mi_page_fresh_alloc+0x1e2>
+               	movl	%esi, %eax

@@ -35393,14 +35950,15 @@
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

@@ -35409,45 +35967,50 @@
@@@[(3, 9), (11, 17), (34, 35), (56, 60)]@@@
-               	callq	0x436840 <mi_page_free_list_extend>
-               	addw	%r12w, 2(%r15)
+               	callq	0x4372e0 <mi_page_free_list_extend>
+               	movzwl	2(%r15), %eax
+               	addl	%r12d, %eax
+               	movw	%ax, 2(%r15)
@@@@
-               	jne	0x435da2 <mi_page_fresh_alloc+0x522>
-               	andb	$-2, 7(%r15)
+               	jne	0x436810 <mi_page_fresh_alloc+0x540>
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

@@ -35489,21 +36052,22 @@
@@@[(3, 4)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -35570,16 +36134,18 @@
@@@[(13, 19)]@@@
-               	jne	0x436020 <mi_page_fresh_alloc+0x7a0>
-               	addq	$1, 3016(%r12)
+               	jne	0x436aa0 <mi_page_fresh_alloc+0x7d0>
+               	movq	3016(%r12), %rax
+               	addq	$1, %rax
+               	movq	%rax, 3016(%r12)

@@ -35589,7 +36155,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -35600,23 +36166,23 @@
@@@[(3, 5), (11, 13), (15, 23)]@@@
-               	movq	%rdi, %r13
+               	movq	%rdi, %r12
@@@@
-               	movq	(%r14), %r12
+               	movq	(%r14), %r13
@@@@
-               	testq	%r12, %r12
-               	je	0x436670 <mi_page_queue_find_free_ex+0x620>
-               	movq	%r12, %rbx
-               	movq	48(%r12), %r12
+               	testq	%r13, %r13
+               	je	0x437100 <mi_page_queue_find_free_ex+0x620>
+               	movq	%r13, %rbx
+               	movq	48(%r13), %r13

@@ -35634,81 +36200,85 @@
@@@[(28, 32), (33, 43), (95, 99)]@@@
-               	andb	$-2, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
@@@@
-               	jne	0x43681c <mi_page_queue_find_free_ex+0x7cc>
-               	movzwl	2(%rbx), %edi
-               	movzwl	4(%rbx), %ebp
-               	cmpw	%bp, %di
-               	jb	0x436756 <mi_page_queue_find_free_ex+0x706>
+               	jne	0x4372ba <mi_page_queue_find_free_ex+0x7da>
+               	movzwl	2(%rbx), %eax
+               	movzwl	4(%rbx), %ecx
+               	cmpw	%cx, %ax
+               	jb	0x4371e7 <mi_page_queue_find_free_ex+0x707>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %ecx
+               	subl	%eax, %ecx
+               	movl	%ecx, 16(%rbx)

@@ -35719,22 +36289,22 @@
@@@[(3, 5)]@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop

@@ -35964,140 +36534,146 @@
@@@[(28, 34), (37, 41), (42, 56), (57, 61), (62, 64), (78, 79), (83, 85), (94, 98), (117, 125), (127, 131), (133, 135), (140, 150), (152, 164), (165, 172), (174, 176), (181, 185), (186, 190), (192, 194), (195, 205)]@@@
-               	andb	$-2, 7(%rbx)
-               	jmp	0x436090 <mi_page_queue_find_free_ex+0x40>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	jmp	0x436b20 <mi_page_queue_find_free_ex+0x40>
@@@@
-               	subl	%eax, 16(%rbx)
+               	movl	16(%rbx), %edx
+               	subl	%eax, %edx
+               	movl	%edx, 16(%rbx)
@@@@
-               	jne	0x43662d <mi_page_queue_find_free_ex+0x5dd>
-               	jmp	0x436090 <mi_page_queue_find_free_ex+0x40>
-               	nopl	(%rax)
-               	movq	3024(%r13), %rbp
-               	cmpq	3032(%r13), %rbp
-               	jbe	0x4366d0 <mi_page_queue_find_free_ex+0x680>
-               	movl	$74, %r12d
+               	jne	0x4370bd <mi_page_queue_find_free_ex+0x5dd>
+               	jmp	0x436b20 <mi_page_queue_find_free_ex+0x40>
+               	nop
+               	movq	3024(%r12), %rbp
+               	cmpq	3032(%r12), %rbp
+               	jbe	0x437160 <mi_page_queue_find_free_ex+0x680>
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
-               	ja	0x436689 <mi_page_queue_find_free_ex+0x639>
+               	cmpq	3032(%r12), %rbp
+               	ja	0x43711b <mi_page_queue_find_free_ex+0x63b>
@@@@
-               	callq	0x430b30 <_mi_page_free>
-               	jmp	0x436700 <mi_page_queue_find_free_ex+0x6b0>
-               	cmpq	%r12, %rbp
-               	cmovbq	%rbp, %r12
+               	callq	0x431450 <_mi_page_free>
+               	jmp	0x437190 <mi_page_queue_find_free_ex+0x6b0>
+               	cmpq	%r13, %rbp
+               	cmovbq	%rbp, %r13
@@@@
-               	jmp	0x436700 <mi_page_queue_find_free_ex+0x6b0>
+               	jmp	0x437190 <mi_page_queue_find_free_ex+0x6b0>
+               	movzwl	%ax, %r8d
+               	movzwl	%cx, %ebp
@@@@
-               	movl	20(%rbx), %r8d
+               	movl	20(%rbx), %edi
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x4367d4 <mi_page_queue_find_free_ex+0x784>
-               	jmp	0x43678c <mi_page_queue_find_free_ex+0x73c>
-               	movb	96(%rax), %cl
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x437269 <mi_page_queue_find_free_ex+0x789>
+               	jmp	0x437220 <mi_page_queue_find_free_ex+0x740>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%rbx), %ecx
-               	testq	%rcx, %rcx
-               	jne	0x4367d4 <mi_page_queue_find_free_ex+0x784>
-               	movq	80(%rax), %r10
-               	movq	%rsi, %r9
-               	subq	%r10, %r9
+               	movb	(%rbx), %cl
+               	testb	%cl, %cl
+               	jne	0x437269 <mi_page_queue_find_free_ex+0x789>
+               	movq	80(%rax), %r9
+               	movq	%rsi, %r10
+               	subq	%r9, %r10
@@@@
-               	ja	0x4367d1 <mi_page_queue_find_free_ex+0x781>
-               	testl	%r8d, %r8d
-               	je	0x4367d1 <mi_page_queue_find_free_ex+0x781>
+               	ja	0x437266 <mi_page_queue_find_free_ex+0x786>
+               	testl	%edi, %edi
+               	je	0x437266 <mi_page_queue_find_free_ex+0x786>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r10, %rax
+               	addq	%r9, %rax
@@@@
-               	divq	%r8
-               	jmp	0x4367bf <mi_page_queue_find_free_ex+0x76f>
+               	divq	%rdi
+               	jmp	0x437254 <mi_page_queue_find_free_ex+0x774>
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

@@ -36106,12 +36682,18 @@
@@@[(3, 9), (10, 20)]@@@
-               	callq	0x436840 <mi_page_free_list_extend>
-               	addw	%bp, 2(%rbx)
+               	callq	0x4372e0 <mi_page_free_list_extend>
+               	movzwl	2(%rbx), %eax
+               	addl	%ebp, %eax
+               	movw	%ax, 2(%rbx)
@@@@
-               	jne	0x43681c <mi_page_queue_find_free_ex+0x7cc>
-               	andb	$-2, 7(%rbx)
-               	andb	$1, 7(%rbx)
+               	jne	0x4372ba <mi_page_queue_find_free_ex+0x7da>
+               	movb	7(%rbx), %al
+               	andb	$-2, %al
+               	movb	%al, 7(%rbx)
+               	movb	7(%rbx), %al
+               	andb	$1, %al
+               	movb	%al, 7(%rbx)

@@ -36124,66 +36706,68 @@
@@@[(3, 5), (7, 49), (50, 54), (55, 61), (62, 66), (67, 83), (85, 111), (112, 116)]@@@
-               	movq	%rdx, %r9
+               	movq	%rdx, %r8
@@@@
-               	movl	20(%rdi), %r10d
-               	movl	112(%rax), %edx
-               	cmpl	$3, %edx
-               	jne	0x43685e <mi_page_free_list_extend+0x1e>
-               	movq	72(%rax), %r8
-               	jmp	0x43686a <mi_page_free_list_extend+0x2a>
-               	movb	96(%rax), %cl
-               	movl	$1, %r8d
-               	shlq	%cl, %r8
-               	movzbl	(%rdi), %ecx
-               	imulq	%rcx, %r8
-               	addq	%rax, %r8
-               	testq	%rcx, %rcx
-               	jne	0x4368b3 <mi_page_free_list_extend+0x73>
-               	addq	80(%rax), %r8
-               	cmpl	$1, %edx
-               	ja	0x4368b3 <mi_page_free_list_extend+0x73>
-               	testl	%r10d, %r10d
-               	je	0x4368b3 <mi_page_free_list_extend+0x73>
-               	movq	%r8, %rax
+               	movl	20(%rdi), %r9d
+               	movl	112(%rax), %r10d
+               	cmpl	$3, %r10d
+               	jne	0x437300 <mi_page_free_list_extend+0x20>
+               	movq	72(%rax), %r11
+               	jmp	0x43730d <mi_page_free_list_extend+0x2d>
+               	movq	96(%rax), %rcx
+               	movl	$1, %r11d
+               	shlq	%cl, %r11
+               	movb	(%rdi), %cl
+               	movzbl	%cl, %edx
+               	movq	%rdx, %rcx
+               	imulq	%r11, %rcx
+               	addq	%rax, %rcx
+               	testb	%dl, %dl
+               	jne	0x43735a <mi_page_free_list_extend+0x7a>
+               	addq	80(%rax), %rcx
+               	cmpl	$1, %r10d
+               	ja	0x43735a <mi_page_free_list_extend+0x7a>
+               	testl	%r9d, %r9d
+               	je	0x43735a <mi_page_free_list_extend+0x7a>
+               	movq	%rcx, %rax
@@@@
-               	je	0x43689a <mi_page_free_list_extend+0x5a>
-               	movq	%r8, %rax
+               	je	0x437342 <mi_page_free_list_extend+0x62>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r10
-               	jmp	0x4368a2 <mi_page_free_list_extend+0x62>
-               	movl	%r8d, %eax
+               	divq	%r9
+               	jmp	0x437349 <mi_page_free_list_extend+0x69>
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
-               	jg	0x4368fe <mi_page_free_list_extend+0xbe>
-               	addq	$1, %r11
-               	imulq	%rsi, %r11
-               	addq	%r11, %r8
-               	movq	%r10, %rdx
-               	nopw	(%rax,%rax)
-               	movq	%r8, (%rdx)
-               	addq	%rsi, %rdx
-               	addq	%rsi, %r8
-               	cmpq	%rcx, %rdx
-               	jbe	0x4368f0 <mi_page_free_list_extend+0xb0>
+               	leaq	(%rcx,%rax), %rdx
+               	cmpq	%rax, %r11
+               	jg	0x43739e <mi_page_free_list_extend+0xbe>
+               	addq	$1, %r10
+               	imulq	%rsi, %r10
+               	addq	%r10, %rcx
+               	movq	%r9, %rax
+               	nopl	(%rax)
+               	movq	%rcx, (%rax)
+               	addq	%rsi, %rax
+               	addq	%rsi, %rcx
+               	cmpq	%rdx, %rax
+               	jbe	0x437390 <mi_page_free_list_extend+0xb0>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	%r10, 8(%rdi)
+               	movq	%rax, (%rdx)
+               	movq	%r9, 8(%rdi)

@@ -36195,210 +36779,214 @@
@@@[(3, 6), (10, 16), (17, 19), (20, 22), (38, 40), (52, 53), (57, 58), (79, 89), (90, 94), (97, 99), (111, 113), (150, 156), (160, 164), (205, 209), (216, 222), (244, 256), (285, 289), (293, 298)]@@@
-               	movq	%r8, %r14
+               	movq	%r9, %r14
+               	movq	%r8, %rbx
@@@@
-               	je	0x4369ae <mi_segment_reclaim_or_alloc+0x9e>
-               	addq	$-1, 88(%r14)
+               	je	0x43745e <mi_segment_reclaim_or_alloc+0xae>
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
-               	ja	0x436a32 <mi_segment_reclaim_or_alloc+0x122>
-               	movq	309861(%rip), %rdx      # 0x482480 <abandoned_visited_count>
-               	leal	1(%rax), %edi
-               	andl	$4194303, %edi          # imm = 0x3FFFFF
-               	orq	%rcx, %rdi
+               	ja	0x4374e2 <mi_segment_reclaim_or_alloc+0x132>
+               	movq	309045(%rip), %rdx      # 0x482c00 <abandoned_visited_count>
+               	leal	1(%rax), %esi
+               	andl	$4194303, %esi          # imm = 0x3FFFFF
+               	orq	%rcx, %rsi
@@@@
-               	cmpxchgq	%rdi, 309648(%rip)      # 0x4823c0 <abandoned>
-               	je	0x436a8c <mi_segment_reclaim_or_alloc+0x17c>
+               	cmpxchgq	%rsi, 308832(%rip)      # 0x482b40 <abandoned>
+               	je	0x43753c <mi_segment_reclaim_or_alloc+0x18c>
@@@@
-               	movq	%rax, %rbx
+               	movq	%rax, %rsi
@@@@
-               	movq	%rbp, 16(%rbx)
+               	movq	%rbp, 16(%rsi)
@@@@
-               	subq	$1, 309515(%rip)        # 0x482400 <abandoned_count>
-               	addq	$1, 48(%r15)
+               	subq	$1, 308699(%rip)        # 0x482b80 <abandoned_count>
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
-               	callq	0x4333c0 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x433d60 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x4333c0 <mi_segment_reclaim>
-               	movq	%rbx, %r9
-               	jmp	0x436ba9 <mi_segment_reclaim_or_alloc+0x299>
-               	movq	309316(%rip), %rax      # 0x482440 <abandoned_visited>
-               	nopl	(%rax)
+               	movq	%rbx, %r8
+               	callq	0x433d60 <mi_segment_reclaim>
+               	jmp	0x43765a <mi_segment_reclaim_or_alloc+0x2aa>
+               	movq	308505(%rip), %rax      # 0x482bc0 <abandoned_visited>
+               	nopw	(%rax,%rax)
@@@@
-               	addq	$1, 424(%rcx)
+               	movq	424(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 424(%rcx)
@@@@
-               	movq	%r14, %r8
-               	callq	0x436f40 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x437a10 <mi_segment_init>

@@ -36412,24 +37000,23 @@
@@@[(3, 9), (20, 25), (26, 30)]@@@
-               	movq	%r14, %r8
-               	movq	%r9, %rbx
-               	callq	0x4333c0 <mi_segment_reclaim>
-               	movq	%rbx, %r9
+               	movq	%rbx, %r8
+               	callq	0x433d60 <mi_segment_reclaim>
@@@@
-               	movq	%r14, %r8
-               	callq	0x436f40 <mi_segment_init>
+               	movq	%rbx, %r8
+               	movq	%r14, %r9
+               	callq	0x437a10 <mi_segment_init>
@@@@
-               	jmp	0x436c72 <mi_segment_reclaim_or_alloc+0x362>
-               	nopw	(%rax,%rax)
+               	jmp	0x437733 <mi_segment_reclaim_or_alloc+0x383>
+               	nopl	(%rax)

@@ -36440,73 +37027,76 @@
@@@[(22, 26), (79, 83), (86, 91), (92, 96)]@@@
-               	addq	$-1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x436d72 <mi_segment_find_free+0xa2>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x437839 <mi_segment_find_free+0xa9>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x436dd3 <mi_segment_find_free+0x103>
+               	testb	%al, %al
+               	jne	0x43789b <mi_segment_find_free+0x10b>

@@ -36514,95 +37104,98 @@
@@@[(18, 22), (40, 44), (47, 52), (53, 57), (85, 93)]@@@
-               	addq	$1, 56(%r15)
+               	movq	56(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 56(%r15)
@@@@
-               	jmp	0x436e55 <mi_segment_find_free+0x185>
-               	movzbl	96(%r15), %ecx
+               	jmp	0x437923 <mi_segment_find_free+0x193>
+               	movq	96(%r15), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
@@@@
-               	testq	%rax, %rax
-               	jne	0x436e71 <mi_segment_find_free+0x1a1>
+               	testb	%al, %al
+               	jne	0x437941 <mi_segment_find_free+0x1b1>
@@@@
-               	jmp	0x436f21 <mi_segment_find_free+0x251>
-               	movq	56(%r15), %rax
-               	cmpq	64(%r15), %rax
-               	jne	0x436f21 <mi_segment_find_free+0x251>
+               	jmp	0x4379f1 <mi_segment_find_free+0x261>
+               	movq	64(%r15), %rax
+               	cmpq	%rax, 56(%r15)
+               	jne	0x4379f1 <mi_segment_find_free+0x261>

@@ -36629,406 +37222,400 @@
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
-               	ja	0x436fdd <mi_segment_init+0x9d>
-               	movq	56(%rbp), %rbx
+               	cmpl	$1, %r13d
+               	movq	%rbx, 80(%rsp)
+               	ja	0x437aa5 <mi_segment_init+0x95>
+               	movq	56(%r12), %rbx
@@@@
-               	callq	0x42e410 <mi_option_get>
-               	xorl	%r11d, %r11d
-               	movl	$0, %ecx
-               	movl	$0, %r13d
+               	callq	0x42ece0 <mi_option_get>
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
-               	je	0x437125 <mi_segment_init+0x1e5>
-               	cmpl	$1, %r12d
-               	ja	0x43704f <mi_segment_init+0x10f>
-               	cmpl	%r12d, 112(%r14)
-               	jne	0x43704f <mi_segment_init+0x10f>
-               	cmpq	%rbx, 72(%r14)
-               	jne	0x43704f <mi_segment_init+0x10f>
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
+               	testq	%rbp, %rbp
+               	je	0x437be6 <mi_segment_init+0x1d6>
+               	movq	%r14, 96(%rsp)
+               	cmpl	$1, %r13d
+               	ja	0x437b0c <mi_segment_init+0xfc>
+               	cmpl	%r13d, 112(%rbp)
+               	jne	0x437b0c <mi_segment_init+0xfc>
+               	cmpq	%rbx, 72(%rbp)
+               	jne	0x437b0c <mi_segment_init+0xfc>
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
-               	jmp	0x437236 <mi_segment_init+0x2f6>
-               	movl	%r12d, 52(%rsp)
-               	movq	%rbp, %r12
-               	cmpq	$0, 64(%r14)
-               	je	0x437168 <mi_segment_init+0x228>
-               	leaq	121(%r14), %rbx
-               	xorl	%ebp, %ebp
-               	jmp	0x4370a5 <mi_segment_init+0x165>
-               	nopl	(%rax)
+               	movups	%xmm0, 104(%rbp)
+               	movups	%xmm0, 88(%rbp)
+               	movups	%xmm0, 72(%rbp)
+               	movups	%xmm0, 56(%rbp)
+               	movups	%xmm0, 40(%rbp)
+               	movups	%xmm0, 24(%rbp)
+               	jmp	0x437cfc <mi_segment_init+0x2ec>
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, %r14
+               	cmpq	$0, 64(%rbp)
+               	je	0x437c3d <mi_segment_init+0x22d>
+               	movb	9(%rsp), %r13b
+               	leaq	121(%rbp), %rbx
+               	xorl	%r12d, %r12d
+               	jmp	0x437b65 <mi_segment_init+0x155>
@@@@
-               	je	0x4370af <mi_segment_init+0x16f>
-               	andb	$-3, (%rbx)
+               	je	0x437b6f <mi_segment_init+0x15f>
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
-               	jae	0x43716a <mi_segment_init+0x22a>
+               	cmpq	%rax, %r12
+               	jae	0x437c3f <mi_segment_init+0x22f>
@@@@
-               	je	0x437070 <mi_segment_init+0x130>
-               	cmpb	$0, 8(%r14)
-               	jne	0x437090 <mi_segment_init+0x150>
+               	je	0x437b2d <mi_segment_init+0x11d>
+               	cmpb	$0, 8(%rbp)
+               	jne	0x437b50 <mi_segment_init+0x140>
@@@@
-               	cmpl	$3, 112(%r14)
-               	jne	0x4370d4 <mi_segment_init+0x194>
-               	movq	72(%r14), %rsi
-               	jmp	0x4370e1 <mi_segment_init+0x1a1>
-               	movzbl	96(%r14), %ecx
+               	cmpl	$3, 112(%rbp)
+               	jne	0x437b92 <mi_segment_init+0x182>
+               	movq	72(%rbp), %rsi
+               	jmp	0x437b9e <mi_segment_init+0x18e>
+               	movq	96(%rbp), %rcx
@@@@
-               	movq	%rsi, %rdi
-               	imulq	%rax, %rdi
-               	addq	%r14, %rdi
-               	testq	%rax, %rax
-               	jne	0x4370fe <mi_segment_init+0x1be>
-               	movq	80(%r14), %rax
+               	movzbl	%al, %eax
+               	movq	%rax, %rdi
+               	imulq	%rsi, %rdi
+               	addq	%rbp, %rdi
+               	testb	%al, %al
+               	jne	0x437bbd <mi_segment_init+0x1ad>
+               	movq	80(%rbp), %rax
@@@@
-               	je	0x437090 <mi_segment_init+0x150>
-               	orb	$8, (%rbx)
-               	jmp	0x437090 <mi_segment_init+0x150>
+               	je	0x437b50 <mi_segment_init+0x140>
+               	movzbl	(%rbx), %eax
+               	orb	$8, %al
+               	jmp	0x437b41 <mi_segment_init+0x131>
@@@@
-               	je	0x437b8b <mi_segment_init+0xc4b>
-               	movq	%rbp, 104(%rsp)
-               	movq	202464(%rip), %rcx      # 0x468828 <os_page_size>
+               	je	0x438631 <mi_segment_init+0xc21>
+               	movq	201604(%rip), %rcx      # 0x468f88 <os_page_size>
@@@@
-               	jmp	0x4372d3 <mi_segment_init+0x393>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	jbe	0x437db4 <mi_segment_init+0x3a4>
+               	jmp	0x4384c7 <mi_segment_init+0xab7>
@@@@
-               	movq	%r14, %rdi
-               	movq	64(%rsp), %r13
-               	movq	%r13, %rsi
+               	movq	%rbp, %rdi
+               	movq	88(%rsp), %rsi
@@@@
-               	movq	%r12, %rbp
-               	je	0x43719f <mi_segment_init+0x25f>
+               	movq	%r14, %r12
+               	movl	24(%rsp), %r13d
+               	je	0x437c76 <mi_segment_init+0x266>
@@@@
-               	jne	0x4371b0 <mi_segment_init+0x270>
-               	jmp	0x437b8b <mi_segment_init+0xc4b>
-               	movq	%r12, %rbp
-               	movq	64(%rsp), %r13
-               	movq	%rbp, %r12
-               	movq	$0, 16(%r14)
-               	leaq	24(%r14), %rbx
-               	leaq	-24(%r13), %rdx
-               	xorl	%ebp, %ebp
-               	movq	%rbx, %rdi
+               	jne	0x437c87 <mi_segment_init+0x277>
+               	jmp	0x438631 <mi_segment_init+0xc21>
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
-               	ja	0x4371e0 <mi_segment_init+0x2a0>
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
+               	ja	0x437cb0 <mi_segment_init+0x2a0>
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
-               	movq	201216(%rip), %rax      # 0x468468 <_mi_heap_main+0xb28>
-               	xorq	%r14, %rax
-               	movq	%rax, 88(%r14)
-               	cmpl	$1, %r12d
-               	ja	0x437b8e <mi_segment_init+0xc4e>
-               	movl	112(%r14), %eax
+               	xchgq	%rax, 104(%rbp)
+               	movq	200346(%rip), %rax      # 0x468bc8 <_mi_heap_main+0xb28>
+               	xorq	%rbp, %rax
+               	movq	%rax, 88(%rbp)
+               	cmpl	$1, %r13d
+               	ja	0x438633 <mi_segment_init+0xc23>
+               	movl	112(%rbp), %eax
@@@@
-               	je	0x4372a4 <mi_segment_init+0x364>
-               	xorl	%ebp, %ebp
-               	jmp	0x4372a4 <mi_segment_init+0x364>
+               	je	0x437d6a <mi_segment_init+0x35a>
+               	xorl	%r12d, %r12d
+               	jmp	0x437d6a <mi_segment_init+0x35a>
@@@@
-               	jmp	0x4372d0 <mi_segment_init+0x390>
-               	addq	$16, %rbp
-               	movq	$0, (%rbx)
-               	movq	8(%rbp), %rax
-               	movq	%rax, 32(%r14)
+               	jmp	0x437d98 <mi_segment_init+0x388>
+               	addq	$16, %r12
+               	movq	$0, (%r14)
+               	movq	8(%r12), %rax
+               	movq	%rax, 32(%rbp)
@@@@
-               	cmoveq	%rbp, %rcx
-               	movq	%r14, (%rcx)
-               	movq	%r14, 8(%rbp)
-               	jmp	0x437b8e <mi_segment_init+0xc4e>
+               	cmoveq	%r12, %rcx
+               	movq	%rbp, (%rcx)
+               	movq	%rbp, 8(%r12)
+               	jmp	0x438633 <mi_segment_init+0xc23>
@@@@
-               	leaq	4194303(%rbp), %rax
-               	movq	%rax, 80(%rsp)
-               	cmpq	$71303167, %rax         # imm = 0x43FFFFF
-               	movl	%r12d, 52(%rsp)
-               	ja	0x437a19 <mi_segment_init+0xad9>
-               	movq	241697(%rip), %rax      # 0x472318 <_mi_numa_node_count>
+               	leaq	4194303(%rbp), %rcx
+               	cmpq	$71303167, %rcx         # imm = 0x43FFFFF
+               	movq	%r14, 96(%rsp)
+               	ja	0x4384c7 <mi_segment_init+0xab7>
+               	movq	240861(%rip), %rax      # 0x472a98 <_mi_numa_node_count>
@@@@
-               	je	0x437507 <mi_segment_init+0x5c7>
-               	movq	80(%rsp), %rsi
-               	shrq	$22, %rsi
+               	movq	%rcx, 32(%rsp)
+               	je	0x4386a6 <mi_segment_init+0xc96>
+               	movq	%rbp, 104(%rsp)
+               	movl	%r13d, 24(%rsp)
+               	movq	%r12, 72(%rsp)
+               	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
@@@@
-               	movq	%rsi, 24(%rsp)
-               	movq	%rbp, 96(%rsp)
-               	jae	0x437336 <mi_segment_init+0x3f6>
-               	movq	241744(%rip), %r9       # 0x472370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x43753a <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
-               	movq	(%rax), %rbp
-               	jmp	0x43740e <mi_segment_init+0x4ce>
-               	movq	241627(%rip), %rax      # 0x472318 <_mi_numa_node_count>
+               	jb	0x437df8 <mi_segment_init+0x3e8>
+               	movq	240813(%rip), %rax      # 0x472a98 <_mi_numa_node_count>
@@@@
-               	jne	0x437517 <mi_segment_init+0x5d7>
-               	movq	241695(%rip), %r9       # 0x472370 <regions_count>
-               	testq	%r9, %r9
-               	je	0x43753a <mi_segment_init+0x5fa>
-               	movq	32(%rsp), %rax
+               	jne	0x4386b5 <mi_segment_init+0xca5>
+               	shrq	$22, %rcx
+               	movq	%rcx, 40(%rsp)
+               	movb	10(%rsp), %r9b
+               	movq	240867(%rip), %r12      # 0x472af0 <regions_count>
+               	testq	%r12, %r12
+               	je	0x437fa8 <mi_segment_init+0x598>
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	241676(%rip), %r8       # 0x472380 <regions>
-               	notb	%r11b
-               	movq	%r9, %r14
-               	movl	%r11d, 92(%rsp)
-               	movq	%r9, 56(%rsp)
-               	movl	%r10d, 88(%rsp)
-               	jmp	0x43739e <mi_segment_init+0x45e>
+               	leaq	240848(%rip), %r8       # 0x472b00 <regions>
+               	movq	%r12, %r13
+               	movq	%r15, 112(%rsp)
+               	movq	%r12, 64(%rsp)
+               	jmp	0x437e4e <mi_segment_init+0x43e>
@@@@
-               	addq	$-1, %r14
-               	je	0x43753a <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r13
+               	je	0x437fa8 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	je	0x437390 <mi_segment_init+0x450>
-               	movl	%eax, %edx
-               	shrl	$8, %edx
-               	andl	$1, %edx
+               	je	0x437e40 <mi_segment_init+0x430>
+               	testb	%r9b, %r9b
+               	sete	%dl
+               	movl	%eax, %esi
+               	shrl	$8, %esi
+               	andl	$1, %esi
@@@@
-               	testb	%dl, %r11b
-               	jne	0x437390 <mi_segment_init+0x450>
+               	testb	%sil, %dl
+               	jne	0x437e40 <mi_segment_init+0x430>
@@@@
-               	je	0x437390 <mi_segment_init+0x450>
+               	je	0x437e40 <mi_segment_init+0x430>
+               	movl	%r10d, %r12d
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r12
-               	callq	0x437d30 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r14
+               	movl	%r9d, %r15d
+               	callq	0x4387f0 <_mi_bitmap_try_find_claim_field>
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
-               	jmp	0x4374fa <mi_segment_init+0x5ba>
-               	testb	%r11b, %r11b
-               	movq	%r9, 56(%rsp)
-               	je	0x437485 <mi_segment_init+0x545>
-               	leaq	241501(%rip), %r8       # 0x472380 <regions>
-               	movq	%r9, %r12
-               	jmp	0x43743e <mi_segment_init+0x4fe>
-               	nopl	(%rax,%rax)
+               	jmp	0x437f91 <mi_segment_init+0x581>
+               	testb	%r9b, %r9b
+               	je	0x437f31 <mi_segment_init+0x521>
+               	leaq	240677(%rip), %r8       # 0x472b00 <regions>
+               	movq	%r12, %r14
+               	jmp	0x437eee <mi_segment_init+0x4de>
@@@@
-               	addq	$-1, %r12
-               	je	0x43753a <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	addq	$-1, %r14
+               	je	0x437fa8 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r14
-               	shlq	$6, %r14
-               	movq	(%r14,%r8), %rax
+               	movq	%rbp, %r13
+               	shlq	$6, %r13
+               	movq	(%r13,%r8), %rax
@@@@
-               	je	0x437430 <mi_segment_init+0x4f0>
-               	leaq	(%r14,%r8), %rdi
+               	je	0x437ee0 <mi_segment_init+0x4d0>
+               	leaq	(%r8,%r13), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
@@@@
-               	callq	0x437d30 <_mi_bitmap_try_find_claim_field>
-               	movq	56(%rsp), %r9
+               	callq	0x4387f0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	24(%rsp), %rsi
@@@@
-               	je	0x437430 <mi_segment_init+0x4f0>
-               	addq	%r14, %r8
-               	jmp	0x4374fa <mi_segment_init+0x5ba>
+               	je	0x437ee0 <mi_segment_init+0x4d0>
+               	addq	%r13, %r8
+               	jmp	0x437f91 <mi_segment_init+0x581>
@@@@
-               	leaq	241394(%rip), %r8       # 0x472380 <regions>
-               	movq	%r9, %rbx
-               	jmp	0x4374ae <mi_segment_init+0x56e>
-               	nopw	%cs:(%rax,%rax)
+               	leaq	240582(%rip), %r8       # 0x472b00 <regions>
+               	movq	%r12, %rbx
+               	jmp	0x437f4a <mi_segment_init+0x53a>
+               	nop
@@@@
-               	je	0x43753a <mi_segment_init+0x5fa>
-               	cmpq	%r9, %rbp
+               	je	0x437fa8 <mi_segment_init+0x598>
+               	cmpq	%r12, %rbp
@@@@
-               	movq	%rbp, %r12
-               	shlq	$6, %r12
-               	movq	(%r12,%r8), %rax
+               	movq	%rbp, %r14
+               	shlq	$6, %r14
+               	movq	(%r14,%r8), %rax
@@@@
-               	jne	0x4374a0 <mi_segment_init+0x560>
-               	leaq	(%r12,%r8), %rdi
+               	jne	0x437f40 <mi_segment_init+0x530>
+               	leaq	(%r14,%r8), %rdi
@@@@
-               	leaq	40(%rsp), %rdx
-               	movq	%r8, %r14
-               	callq	0x437d30 <_mi_bitmap_try_find_claim_field>
+               	movq	40(%rsp), %rsi
+               	leaq	48(%rsp), %rdx
+               	movq	%r8, %r13
+               	callq	0x4387f0 <_mi_bitmap_try_find_claim_field>
@@@@
-               	movq	56(%rsp), %r9
-               	movq	%r14, %r8
-               	movq	24(%rsp), %rsi
+               	movq	%r13, %r8
@@@@
-               	je	0x4374a0 <mi_segment_init+0x560>
-               	addq	%r12, %r8
-               	movq	32(%rsp), %rax
+               	je	0x437f40 <mi_segment_init+0x530>
+               	addq	%r14, %r8
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	movq	56(%rsp), %rax
@@@@
-               	jmp	0x4376e4 <mi_segment_init+0x7a4>
-               	movl	%r11d, %ebx
-               	callq	0x42f7c0 <_mi_os_numa_node_count_get>
-               	movl	%ebx, %r11d
-               	jmp	0x437300 <mi_segment_init+0x3c0>
-               	movl	%r11d, %ebx
-               	callq	0x437c10 <_mi_os_numa_node_get>
-               	movl	%ebx, %r11d
-               	movq	24(%rsp), %rsi
-               	movl	%eax, %r10d
-               	movq	241215(%rip), %r9       # 0x472370 <regions_count>
-               	testq	%r9, %r9
-               	jne	0x43735a <mi_segment_init+0x41a>
-               	movb	10(%rsp), %bl
-               	movq	241195(%rip), %rax      # 0x472370 <regions_count>
+               	jmp	0x438161 <mi_segment_init+0x751>
+               	movb	9(%rsp), %bl
+               	movb	10(%rsp), %bpl
+               	movq	240440(%rip), %rax      # 0x472af0 <regions_count>
@@@@
-               	ja	0x4379fe <mi_segment_init+0xabe>
-               	testb	%r13b, %r13b
-               	je	0x437568 <mi_segment_init+0x628>
+               	movq	72(%rsp), %r12
+               	movl	24(%rsp), %r13d
+               	ja	0x4384ac <mi_segment_init+0xa9c>
+               	testb	%bl, %bl
+               	je	0x437fe4 <mi_segment_init+0x5d4>
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

@@ -37038,70 +37625,70 @@
@@@[(19, 23), (32, 37), (38, 41), (42, 44), (45, 49), (50, 54), (55, 62), (63, 69), (70, 80), (81, 82), (89, 99)]@@@
-               	movzbl	12(%rsp), %ecx
+               	xorl	%ecx, %ecx
+               	cmpb	$0, 12(%rsp)
+               	setne	%cl
@@@@
-               	callq	0x42f470 <_mi_warning_message>
-               	movq	24(%rsp), %rsi
-               	jmp	0x4376dc <mi_segment_init+0x79c>
+               	callq	0x42fd40 <_mi_warning_message>
+               	jmp	0x438159 <mi_segment_init+0x749>
@@@@
-               	movq	24(%rsp), %rsi
-               	jmp	0x4376dc <mi_segment_init+0x79c>
+               	jmp	0x438159 <mi_segment_init+0x749>
@@@@
-               	leaq	240989(%rip), %rbx      # 0x472380 <regions>
+               	leaq	240226(%rip), %rsi      # 0x472b00 <regions>
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
-               	ja	0x43769c <mi_segment_init+0x75c>
-               	testq	%rsi, %rsi
-               	je	0x43769a <mi_segment_init+0x75a>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x438119 <mi_segment_init+0x709>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x438117 <mi_segment_init+0x707>
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

@@ -37109,35 +37696,33 @@
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
-               	ja	0x43772c <mi_segment_init+0x7ec>
-               	testq	%rsi, %rsi
-               	je	0x43772a <mi_segment_init+0x7ea>
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x4381a9 <mi_segment_init+0x799>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4381a7 <mi_segment_init+0x797>
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
-               	jne	0x437740 <mi_segment_init+0x800>
+               	cmpxchgq	%rcx, 24(%r8,%rsi,8)
+               	jne	0x4381b0 <mi_segment_init+0x7a0>

@@ -37147,86 +37732,89 @@
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
-               	je	0x4377c0 <mi_segment_init+0x880>
-               	movq	%rbx, %rdx
+               	je	0x438233 <mi_segment_init+0x823>
+               	movq	%rdi, %rdx
@@@@
-               	movq	$-1, %rdi
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x4377fd <mi_segment_init+0x8bd>
-               	testq	%rsi, %rsi
-               	je	0x4377fb <mi_segment_init+0x8bb>
-               	movl	%ebx, %eax
+               	movq	$-1, %rsi
+               	cmpq	$268435455, 32(%rsp)    # imm = 0xFFFFFFF
+               	ja	0x43827d <mi_segment_init+0x86d>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x43827b <mi_segment_init+0x86b>
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
-               	jmp	0x4377fd <mi_segment_init+0x8bd>
+               	shlq	%cl, %rsi
+               	jmp	0x43827d <mi_segment_init+0x86d>
@@@@
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	ja	0x4378c5 <mi_segment_init+0x985>
-               	testq	%rsi, %rsi
-               	je	0x4378c3 <mi_segment_init+0x983>
-               	movl	%ebx, %eax
+               	movq	32(%rsp), %rbx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x438356 <mi_segment_init+0x946>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x438354 <mi_segment_init+0x944>
+               	movl	%edi, %eax
@@@@
-               	movl	%esi, %ecx
@@@@
-               	jmp	0x4378c5 <mi_segment_init+0x985>
-               	xorl	%edi, %edi
+               	movq	32(%rsp), %rbx
+               	jmp	0x438356 <mi_segment_init+0x946>
+               	xorl	%esi, %esi
@@@@
-               	orq	%rdi, %rcx
+               	orq	%rsi, %rcx
@@@@
-               	jne	0x437810 <mi_segment_init+0x8d0>
-               	andq	%rdi, %rax
-               	cmpq	%rdi, %rax
-               	je	0x4378dc <mi_segment_init+0x99c>
-               	movq	%r9, 32(%rsp)
-               	movq	%r8, %r13
+               	jne	0x438290 <mi_segment_init+0x880>
+               	andq	%rsi, %rax
+               	cmpq	%rsi, %rax
+               	movq	32(%rsp), %rbx
+               	je	0x43836d <mi_segment_init+0x95d>
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
-               	callq	0x431260 <mi_os_commitx>
+               	callq	0x431b80 <mi_os_commitx>
@@@@
-               	je	0x43787b <mi_segment_init+0x93b>
-               	movq	%rbp, %r10
+               	je	0x438308 <mi_segment_init+0x8f8>
@@@@
-               	movq	24(%rsp), %rsi
-               	movq	%r13, %r8
-               	movq	32(%rsp), %r9
-               	jmp	0x4378dc <mi_segment_init+0x99c>
-               	movq	40(%rsp), %rdx
-               	cmpq	$268435455, %rbp        # imm = 0xFFFFFFF
-               	jbe	0x437893 <mi_segment_init+0x953>
+               	movq	32(%rsp), %rbx
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43836d <mi_segment_init+0x95d>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x438322 <mi_segment_init+0x912>
@@@@
-               	movq	%r13, %rbp
-               	jmp	0x4379f4 <mi_segment_init+0xab4>
-               	movq	24(%rsp), %rcx
+               	movq	24(%rsp), %rdi
+               	jmp	0x4384a2 <mi_segment_init+0xa92>
+               	movq	40(%rsp), %rcx
@@@@
-               	movq	%r13, %rbp
-               	je	0x4379ed <mi_segment_init+0xaad>
+               	movq	24(%rsp), %rdi
+               	je	0x43849b <mi_segment_init+0xa8b>

@@ -37235,169 +37823,168 @@
@@@[(6, 8), (13, 33), (34, 41), (42, 81), (82, 90), (91, 93), (94, 101), (102, 104), (105, 111), (115, 122), (123, 136), (146, 148), (156, 162), (174, 178), (181, 186), (188, 193), (195, 199), (213, 215), (218, 226), (244, 246)]@@@
-               	movq	%rbx, %rax
+               	movq	%rdi, %rax
@@@@
-               	leaq	40(%r8), %rdx
-               	movq	40(%rsp), %rbp
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x437907 <mi_segment_init+0x9c7>
-               	shrq	$6, %rbp
-               	movq	(%rdx,%rbp,8), %rax
-               	testq	%rax, %rax
-               	je	0x4379d1 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	xorl	%edi, %edi
-               	jmp	0x437965 <mi_segment_init+0xa25>
-               	movl	%ebp, %eax
+               	movq	48(%rsp), %rdx
+               	movq	$-1, %rsi
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	ja	0x4383ac <mi_segment_init+0x99c>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4383aa <mi_segment_init+0x99a>
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
-               	je	0x4379d1 <mi_segment_init+0xa91>
-               	leaq	(%rdx,%rbp,8), %rdx
-               	cmpq	$268435455, %r10        # imm = 0xFFFFFFF
-               	jbe	0x437949 <mi_segment_init+0xa09>
-               	xorl	%edi, %edi
-               	jmp	0x437965 <mi_segment_init+0xa25>
-               	movq	$-1, %rdi
-               	testq	%rsi, %rsi
-               	je	0x437965 <mi_segment_init+0xa25>
-               	movl	%esi, %ecx
-               	shlq	%cl, %rdi
-               	notq	%rdi
+               	shlq	%cl, %rsi
+               	movq	32(%rsp), %rbx
+               	jmp	0x4383ac <mi_segment_init+0x99c>
+               	xorl	%esi, %esi
+               	shrq	$6, %rdx
+               	movq	40(%r8,%rdx,8), %rax
+               	testq	%rsi, %rax
+               	je	0x43847f <mi_segment_init+0xa6f>
+               	movq	48(%rsp), %rdx
+               	cmpq	$268435455, %rbx        # imm = 0xFFFFFFF
+               	jbe	0x4383d0 <mi_segment_init+0x9c0>
+               	xorl	%esi, %esi
+               	jmp	0x438402 <mi_segment_init+0x9f2>
+               	movq	40(%rsp), %rcx
+               	testq	%rcx, %rcx
+               	je	0x4383fb <mi_segment_init+0x9eb>
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
+               	jmp	0x438402 <mi_segment_init+0x9f2>
+               	movq	$-1, %rsi
+               	shrq	$6, %rdx
@@@@
-               	andq	%rdi, (%rdx)
+               	andq	%rsi, 40(%r8,%rdx,8)
@@@@
-               	je	0x4379a6 <mi_segment_init+0xa66>
-               	movq	%r9, %r13
-               	movq	%r8, %rbp
+               	movq	%r9, 56(%rsp)
+               	movq	%rdi, 64(%rsp)
+               	je	0x43845b <mi_segment_init+0xa4b>
+               	movq	%r8, 24(%rsp)
@@@@
-               	andq	$-4194304, %r10         # imm = 0xFFC00000
+               	andq	$-4194304, %rbx         # imm = 0xFFC00000
@@@@
-               	movq	%r14, %rdi
-               	movq	%r10, %rsi
-               	callq	0x437fd0 <_mi_os_unreset>
+               	movq	%rbp, %rdi
+               	movq	%rbx, %rsi
+               	callq	0x438a90 <_mi_os_unreset>
@@@@
-               	movq	%rbp, %r8
-               	movq	%r13, %r9
-               	jmp	0x4379d1 <mi_segment_init+0xa91>
+               	movq	24(%rsp), %r8
+               	movq	56(%rsp), %r9
+               	movq	64(%rsp), %rdi
+               	jmp	0x43847f <mi_segment_init+0xa6f>
@@@@
-               	movq	%rbx, 32(%rsp)
-               	movq	%r8, %r13
-               	movq	%r9, %rbp
-               	movq	%r10, %rbx
-               	callq	0x42e410 <mi_option_get>
-               	movq	%rbx, %r10
-               	movq	%rbp, %r9
-               	movq	%r13, %r8
+               	movq	%r8, %rbx
+               	callq	0x42ece0 <mi_option_get>
+               	movq	64(%rsp), %rdi
+               	movq	56(%rsp), %r9
+               	movq	%rbx, %r8
@@@@
-               	addq	%rbx, %r8
+               	addq	%rdi, %r8
@@@@
-               	andq	%rsi, 16(%rbp,%rdx,8)
-               	leaq	73923(%rip), %rdi       # 0x449ac8 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
-               	movq	96(%rsp), %rbp
+               	andq	%rsi, 16(%rdi,%rdx,8)
+               	leaq	75221(%rip), %rdi       # 0x44aa88 <typeinfo name for kotlin::gc::GCSchedulerData+0x18d7>
+               	movq	104(%rsp), %rbp
@@@@
-               	callq	0x437df0 <_mi_arena_alloc_aligned>
-               	movq	%rax, %r14
+               	callq	0x4388b0 <_mi_arena_alloc_aligned>
+               	movq	%rax, %rbp
@@@@
-               	testq	%r14, %r14
-               	movq	104(%rsp), %rbp
-               	je	0x437b8b <mi_segment_init+0xc4b>
+               	testq	%rbp, %rbp
+               	je	0x438631 <mi_segment_init+0xc21>
@@@@
-               	movq	64(%rsp), %r13
-               	jne	0x437aa2 <mi_segment_init+0xb62>
-               	movq	%r8, 32(%rsp)
+               	jne	0x438548 <mi_segment_init+0xb38>
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
-               	leaq	205629(%rip), %rax      # 0x469e00 <_mi_stats_main>
+               	movb	%cl, 8(%rbp)
+               	movb	%al, 9(%rbp)
+               	movq	112(%r12), %rcx
+               	leaq	204823(%rip), %rax      # 0x46a580 <_mi_stats_main>
@@@@
-               	nopl	(%rax)
+               	nop

@@ -37405,30 +37992,32 @@
@@@[(20, 24), (28, 30), (33, 39)]@@@
-               	addq	$1, (%rcx)
+               	movq	(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rcx)
@@@@
-               	movq	%r14, %rdi
+               	movq	%rbp, %rdi
@@@@
-               	callq	0x431550 <_mi_mem_free>
-               	xorl	%r14d, %r14d
-               	movq	%r14, %rax
+               	callq	0x431e90 <_mi_mem_free>
+               	xorl	%ebp, %ebp
+               	movq	%rbp, %rax

@@ -37441,28 +38030,36 @@
@@@[(6, 10), (11, 23), (24, 41), (45, 46)]@@@
-               	addq	$1, 8(%rcx)
+               	movq	8(%rcx), %rax
+               	addq	$1, %rax
+               	movq	%rax, 8(%rcx)
@@@@
-               	addq	56(%rbp), %rax
-               	movq	%rax, 56(%rbp)
-               	cmpq	64(%rbp), %rax
-               	jbe	0x437bd4 <mi_segment_init+0xc94>
-               	movq	%rax, 64(%rbp)
-               	movq	72(%rbp), %rax
+               	addq	56(%r12), %rax
+               	movq	%rax, 56(%r12)
+               	cmpq	64(%r12), %rax
+               	jbe	0x438684 <mi_segment_init+0xc74>
+               	movq	%rax, 64(%r12)
+               	movq	72(%r12), %rax
@@@@
-               	movq	%rax, 72(%rbp)
-               	cmpq	80(%rbp), %rax
-               	jbe	0x4371b0 <mi_segment_init+0x270>
-               	movq	%rax, 80(%rbp)
-               	jmp	0x4371b0 <mi_segment_init+0x270>
+               	movq	%rax, 72(%r12)
+               	cmpq	80(%r12), %rax
+               	jbe	0x437c87 <mi_segment_init+0x277>
+               	movq	%rax, 80(%r12)
+               	jmp	0x437c87 <mi_segment_init+0x277>
+               	callq	0x430090 <_mi_os_numa_node_count_get>
+               	movq	32(%rsp), %rcx
+               	jmp	0x437dc9 <mi_segment_init+0x3b9>
+               	callq	0x4386e0 <_mi_os_numa_node_get>
+               	movq	32(%rsp), %rcx
+               	movl	%eax, %r10d
+               	jmp	0x437df8 <mi_segment_init+0x3e8>
@@@@
-               	movq	24(%rsp), %rsi

@@ -37470,15 +38067,15 @@
@@@[(3, 15), (17, 19)]@@@
-               	movq	239349(%rip), %r14      # 0x472318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	je	0x437c9c <_mi_os_numa_node_get+0x8c>
-               	xorl	%ebx, %ebx
-               	cmpq	$2, %r14
-               	jb	0x437c8d <_mi_os_numa_node_get+0x7d>
+               	movq	238501(%rip), %rbx      # 0x472a98 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	je	0x438767 <_mi_os_numa_node_get+0x87>
+               	xorl	%eax, %eax
+               	cmpq	$2, %rbx
+               	jb	0x43875a <_mi_os_numa_node_get+0x7a>
@@@@
-               	xorl	%ebx, %ebx
+               	xorl	%r14d, %r14d

@@ -37486,108 +38083,105 @@
@@@[(3, 20), (21, 28), (29, 34), (39, 45), (46, 50), (51, 65), (66, 70), (72, 74), (76, 78), (79, 93), (94, 100)]@@@
-               	jne	0x437c66 <_mi_os_numa_node_get+0x56>
-               	movq	16(%rsp), %rbx
-               	cmpq	%r14, %rbx
-               	jb	0x437c8d <_mi_os_numa_node_get+0x7d>
-               	movq	%rbx, %rax
-               	orq	%r14, %rax
-               	shrq	$32, %rax
-               	je	0x437c84 <_mi_os_numa_node_get+0x74>
-               	movq	%rbx, %rax
+               	movq	16(%rsp), %rax
+               	cmovneq	%r14, %rax
+               	cmpq	%rbx, %rax
+               	jb	0x43875a <_mi_os_numa_node_get+0x7a>
+               	movq	%rax, %rcx
+               	orq	%rbx, %rcx
+               	shrq	$32, %rcx
+               	je	0x438754 <_mi_os_numa_node_get+0x74>
@@@@
-               	divq	%r14
-               	movq	%rdx, %rbx
-               	jmp	0x437c8d <_mi_os_numa_node_get+0x7d>
-               	movl	%ebx, %eax
+               	divq	%rbx
+               	movq	%rdx, %rax
+               	jmp	0x43875a <_mi_os_numa_node_get+0x7a>
@@@@
-               	divl	%r14d
-               	movl	%edx, %ebx
-               	movl	%ebx, %eax
+               	divl	%ebx
+               	movl	%edx, %eax
@@@@
-               	movq	239221(%rip), %r14      # 0x472318 <_mi_numa_node_count>
-               	testq	%r14, %r14
-               	jne	0x437c28 <_mi_os_numa_node_get+0x18>
+               	movq	238378(%rip), %rbx      # 0x472a98 <_mi_numa_node_count>
+               	testq	%rbx, %rbx
+               	jne	0x4386f8 <_mi_os_numa_node_get+0x18>
@@@@
-               	callq	0x42e410 <mi_option_get>
-               	movq	%rax, %r14
+               	callq	0x42ece0 <mi_option_get>
+               	movq	%rax, %rbx
@@@@
-               	jg	0x437d0c <_mi_os_numa_node_get+0xfc>
-               	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
-               	leaq	71658(%rip), %r15       # 0x4494b1 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
-               	leaq	16(%rsp), %rbx
-               	cmpl	$255, %r14d
-               	je	0x437d02 <_mi_os_numa_node_get+0xf2>
-               	leal	2(%r14), %ecx
+               	jg	0x4387d1 <_mi_os_numa_node_get+0xf1>
+               	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
+               	leaq	72928(%rip), %r14       # 0x44a471 <typeinfo name for kotlin::gc::GCSchedulerData+0x12c0>
+               	leaq	16(%rsp), %r15
+               	cmpl	$255, %ebx
+               	je	0x4387c9 <_mi_os_numa_node_get+0xe9>
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
-               	je	0x437ccc <_mi_os_numa_node_get+0xbc>
-               	jmp	0x437d08 <_mi_os_numa_node_get+0xf8>
-               	movl	$256, %r14d             # imm = 0x100
-               	addl	$1, %r14d
-               	movq	%r14, 239109(%rip)      # 0x472318 <_mi_numa_node_count>
-               	leaq	71607(%rip), %rdi       # 0x4494d1 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
-               	movq	%r14, %rsi
+               	je	0x438796 <_mi_os_numa_node_get+0xb6>
+               	jmp	0x4387ce <_mi_os_numa_node_get+0xee>
+               	movl	$256, %ebx              # imm = 0x100
+               	addl	$1, %ebx
+               	movq	%rbx, 238272(%rip)      # 0x472a98 <_mi_numa_node_count>
+               	leaq	72882(%rip), %rdi       # 0x44a491 <typeinfo name for kotlin::gc::GCSchedulerData+0x12e0>
+               	movq	%rbx, %rsi
@@@@
-               	callq	0x42e0f0 <_mi_verbose_message>
-               	jmp	0x437c28 <_mi_os_numa_node_get+0x18>
-               	nopl	(%rax)
+               	callq	0x42e9c0 <_mi_verbose_message>
+               	jmp	0x4386f8 <_mi_os_numa_node_get+0x18>
+               	nop

@@ -37619,9 +38213,9 @@
@@@[(3, 9)]@@@
-               	movq	%r8, %r13
-               	movq	%rcx, %r12
-               	movq	%rdx, %r15
+               	movq	%r8, %r14
+               	movq	%rcx, %r15
+               	movq	%rdx, %r12

@@ -37629,106 +38223,107 @@
@@@[(8, 12), (14, 18), (22, 28), (29, 35), (37, 39), (41, 45), (47, 51), (52, 56), (62, 70), (79, 83), (84, 85), (88, 92), (93, 97), (112, 122), (136, 140), (142, 143), (144, 147), (148, 152), (153, 159)]@@@
-               	je	0x437f56 <_mi_arena_alloc_aligned+0x166>
-               	movq	%r12, 24(%rsp)
+               	je	0x438a1b <_mi_arena_alloc_aligned+0x16b>
+               	movq	%r15, 24(%rsp)
@@@@
-               	movq	238784(%rip), %rax      # 0x472318 <_mi_numa_node_count>
-               	xorl	%r14d, %r14d
+               	movq	237952(%rip), %rax      # 0x472a98 <_mi_numa_node_count>
+               	xorl	%r13d, %r13d
@@@@
-               	leaq	205392(%rip), %rbp      # 0x46a0c0 <mi_arenas>
-               	xorl	%r12d, %r12d
-               	jmp	0x437ebe <_mi_arena_alloc_aligned+0xce>
+               	leaq	204560(%rip), %rbp      # 0x46a840 <mi_arenas>
+               	xorl	%r15d, %r15d
+               	jmp	0x43897f <_mi_arena_alloc_aligned+0xcf>
@@@@
-               	cmpb	$0, (%r15)
-               	je	0x437ed5 <_mi_arena_alloc_aligned+0xe5>
-               	movq	%r12, %rsi
+               	cmpb	$0, (%r12)
+               	je	0x438996 <_mi_arena_alloc_aligned+0xe6>
+               	movq	%r15, %rsi
@@@@
-               	movq	%r15, %r8
+               	movq	%r12, %r8
@@@@
-               	pushq	%r13
-               	callq	0x4380f0 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x438bb0 <mi_arena_alloc_from>
@@@@
-               	jne	0x437fa5 <_mi_arena_alloc_aligned+0x1b5>
-               	addq	$1, %r12
+               	jne	0x438a6f <_mi_arena_alloc_aligned+0x1bf>
+               	addq	$1, %r15
@@@@
-               	cmpq	$64, %r12
-               	je	0x437edd <_mi_arena_alloc_aligned+0xed>
+               	cmpq	$64, %r15
+               	je	0x43899e <_mi_arena_alloc_aligned+0xee>
@@@@
-               	js	0x437e80 <_mi_arena_alloc_aligned+0x90>
-               	cmpl	%r14d, %eax
-               	jne	0x437eb0 <_mi_arena_alloc_aligned+0xc0>
-               	jmp	0x437e80 <_mi_arena_alloc_aligned+0x90>
+               	js	0x438940 <_mi_arena_alloc_aligned+0x90>
+               	cmpl	%r13d, %eax
+               	jne	0x438971 <_mi_arena_alloc_aligned+0xc1>
+               	jmp	0x438940 <_mi_arena_alloc_aligned+0x90>
@@@@
-               	movq	24(%rsp), %r12
-               	jmp	0x437f34 <_mi_arena_alloc_aligned+0x144>
+               	movq	24(%rsp), %r15
+               	jmp	0x4389f8 <_mi_arena_alloc_aligned+0x148>
@@@@
-               	nop
@@@@
-               	movq	%r15, %r8
-               	movq	%r12, %r9
+               	movq	%r12, %r8
+               	movq	%r15, %r9
@@@@
-               	pushq	%r13
-               	callq	0x4380f0 <mi_arena_alloc_from>
+               	pushq	%r14
+               	callq	0x438bb0 <mi_arena_alloc_from>
@@@@
-               	js	0x437f26 <_mi_arena_alloc_aligned+0x136>
-               	cmpl	%r14d, %eax
-               	je	0x437f26 <_mi_arena_alloc_aligned+0x136>
-               	cmpb	$0, (%r15)
-               	jne	0x437f00 <_mi_arena_alloc_aligned+0x110>
+               	js	0x4389ea <_mi_arena_alloc_aligned+0x13a>
+               	cmpl	%r13d, %eax
+               	je	0x4389ea <_mi_arena_alloc_aligned+0x13a>
+               	cmpb	$0, (%r12)
+               	jne	0x4389c0 <_mi_arena_alloc_aligned+0x110>
@@@@
-               	jmp	0x437fa5 <_mi_arena_alloc_aligned+0x1b5>
-               	movb	$1, (%r13)
+               	jmp	0x438a6f <_mi_arena_alloc_aligned+0x1bf>
+               	movb	$1, (%r14)
@@@@
+               	xorl	%esi, %esi
@@@@
-               	movzbl	(%rax), %esi
+               	cmpb	$0, (%rax)
+               	setne	%sil
@@@@
-               	movq	%r15, %rdx
-               	callq	0x42e830 <_mi_os_alloc_aligned>
+               	movq	%r12, %rdx
+               	callq	0x42f0f0 <_mi_os_alloc_aligned>
@@@@
-               	je	0x437f70 <_mi_arena_alloc_aligned+0x180>
-               	movb	(%r15), %cl
-               	movb	%cl, (%r12)
+               	je	0x438a35 <_mi_arena_alloc_aligned+0x185>
+               	movb	(%r12), %cl
+               	movb	%cl, (%r15)

@@ -37737,10 +38332,10 @@
@@@[(3, 11)]@@@
-               	callq	0x437c10 <_mi_os_numa_node_get>
-               	movl	%eax, %r14d
-               	jmp	0x437e65 <_mi_arena_alloc_aligned+0x75>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x4386e0 <_mi_os_numa_node_get>
+               	movl	%eax, %r13d
+               	jmp	0x438925 <_mi_arena_alloc_aligned+0x75>
+               	nopl	(%rax,%rax)

@@ -38624,60 +39219,62 @@
@@@[(19, 22), (24, 28), (42, 46), (48, 54), (56, 62), (66, 69), (71, 73), (79, 83)]@@@
-               	movzbl	(%r8), %r11d
+               	movb	(%r8), %cl
+               	movzbl	%cl, %r11d
@@@@
-               	testq	%r11, %r11
-               	jne	0x438ce9 <_mi_usable_size+0x109>
+               	testb	%r11b, %r11b
+               	jne	0x4397ae <_mi_usable_size+0x10e>
@@@@
-               	jmp	0x438cd8 <_mi_usable_size+0xf8>
-               	movb	96(%rax), %cl
+               	jmp	0x43979d <_mi_usable_size+0xfd>
+               	movq	96(%rax), %rcx
@@@@
-               	movzbl	(%r8), %ecx
-               	testq	%rcx, %rcx
-               	je	0x438ca0 <_mi_usable_size+0xc0>
+               	movb	(%r8), %cl
+               	testb	%cl, %cl
+               	je	0x439762 <_mi_usable_size+0xc2>
@@@@
-               	movq	80(%rax), %r9
-               	movq	%rdx, %r8
-               	subq	%r9, %r8
+               	movq	80(%rax), %r8
+               	movq	%rdx, %r9
+               	subq	%r8, %r9
@@@@
-               	je	0x438ccd <_mi_usable_size+0xed>
+               	je	0x439792 <_mi_usable_size+0xf2>
+               	movzbl	%cl, %ecx
@@@@
-               	addq	%r9, %rax
+               	addq	%r8, %rax
@@@@
-               	jmp	0x438d22 <_mi_usable_size+0x142>
-               	movq	%r8, %rax
+               	jmp	0x4397e7 <_mi_usable_size+0x147>
+               	movq	%r9, %rax

@@ -38714,37 +39311,37 @@
@@@[(3, 7), (14, 18)]@@@
-               	subq	%rcx, %r8
-               	movq	%r8, %rax
+               	subq	%rcx, %r9
+               	movq	%r9, %rax
@@@@
-               	jmp	0x438d5b <_mi_usable_size+0x17b>
-               	movb	96(%r8), %cl
+               	jmp	0x439820 <_mi_usable_size+0x180>
+               	movq	96(%r8), %rcx

@@ -38759,26 +39356,26 @@
@@@[(20, 24)]@@@
-               	jmp	0x438dec <_mi_usable_size+0x20c>
-               	movb	96(%r8), %cl
+               	jmp	0x4398b1 <_mi_usable_size+0x211>
+               	movq	96(%r8), %rcx

@@ -38813,7 +39410,7 @@
@@@[(3, 5)]@@@
-               	nop
+               	nopw	%cs:(%rax,%rax)

@@ -38821,34 +39418,36 @@
@@@[(10, 16), (25, 27)]@@@
-               	je	0x438ed8 <_mi_heap_malloc_zero+0x88>
-               	addl	$1, 16(%rax)
+               	je	0x4399ae <_mi_heap_malloc_zero+0x8e>
+               	movl	16(%rax), %ecx
+               	addl	$1, %ecx
+               	movl	%ecx, 16(%rax)
@@@@
-               	movb	96(%rax), %cl
+               	movq	96(%rax), %rcx

@@ -38859,12 +39458,11 @@
@@@[(7, 12)]@@@
-               	jne	0x438e86 <_mi_heap_malloc_zero+0x36>
-               	jmp	0x438ecd <_mi_heap_malloc_zero+0x7d>
-               	nopw	(%rax,%rax)
+               	jne	0x43995b <_mi_heap_malloc_zero+0x3b>
+               	jmp	0x4399a3 <_mi_heap_malloc_zero+0x83>

@@ -39064,9 +39662,9 @@
@@@[(3, 6), (7, 8)]@@@
-               	callq	0x439ab0 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
-               	movq	8(%rsp), %rbx
+               	callq	0x43a590 <kotlin::internal::GetCurrentStackTrace(unsigned long)>
@@@@
+               	movq	8(%rsp), %rbx

@@ -39605,21 +40203,24 @@
@@@[(3, 5), (6, 11), (12, 16), (26, 30)]@@@
+               	movq	%rdi, %rax
+               	movq	8(%rdi), %rdi
@@@@
-               	je	0x439aa0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
-               	movl	%esi, %eax
+               	je	0x43a57a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
+               	movl	16(%rax), %ecx
+               	movl	%ecx, %eax
@@@@
-               	testl	%esi, %esi
-               	jne	0x439aa0 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x20>
+               	testl	%ecx, %ecx
+               	jne	0x43a57a <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()+0x2a>
@@@@
-               	jmp	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	jmp	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	(%rax,%rax)

@@ -39628,78 +40229,222 @@
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
-               	je	0x439ae9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x39>
-               	xchgl	%r14d, 328(%r12)
-               	jmp	0x439aec <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c>
-               	xorl	%r12d, %r12d
+               	movq	-64(%rax), %rax
+               	testq	%rax, %rax
+               	je	0x43a5e8 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x58>
+               	movl	$1, %ecx
+               	xchgl	%ecx, 328(%rax)
+               	movq	%rax, 48(%rsp)
+               	movl	%ecx, 56(%rsp)
+               	movb	$1, 60(%rsp)
@@@@
-               	leaq	317(%rip), %rdi         # 0x439c40 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
-               	leaq	16(%rsp), %rsi
+               	movq	$0, 32(%rsp)
+               	leaq	920(%rip), %rdi         # 0x43a9a0 <(anonymous namespace)::depthCountCallback(_Unwind_Context*, void*)>
+               	leaq	32(%rsp), %rsi
@@@@
-               	movq	16(%rsp), %rbx
-               	cmpq	$4, %rbx
-               	jbe	0x439bac <kotlin::internal::GetCurrentStackTrace(unsigned long)+0xfc>
-               	addq	$-4, %rbx
-               	movq	%rbx, %rax
-               	shrq	$61, %rax
-               	jne	0x439c0b <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x15b>
+               	movq	32(%rsp), %r12
+               	cmpq	$4, %r12
+               	jbe	0x43a6ba <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x12a>
+               	addq	$-4, %r12
+               	movq	8(%rsp), %r15
+               	movq	(%rsp), %rbx
+               	movq	%r15, %rdx
+               	subq	%rbx, %rdx
+               	movq	%rdx, %r14
+               	sarq	$3, %r14
+               	movq	%r12, %rbp
+               	subq	%r14, %rbp
+               	jbe	0x43a6e1 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x151>
+               	je	0x43a8cc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	16(%rsp), %rax
+               	subq	%r15, %rax
+               	sarq	$3, %rax
+               	cmpq	%rbp, %rax
+               	jae	0x43a701 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x171>
+               	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
+               	movq	%r14, %rcx
+               	xorq	%rax, %rcx
+               	cmpq	%rbp, %rcx
+               	jb	0x43a966 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3d6>
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
+               	je	0x43a721 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x191>
@@@@
-               	movq	%rbx, %rdi
@@@@
-               	leaq	(,%rbx,8), %rbp
-               	movq	%rax, %rdi
+               	jmp	0x43a724 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x194>
+               	xorps	%xmm0, %xmm0
+               	movups	%xmm0, (%r13)
+               	movq	$0, 16(%r13)
+               	movq	(%rsp), %rdi
+               	testq	%rdi, %rdi
+               	je	0x43a922 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	callq	0x413710 <free@plt>
+               	jmp	0x43a922 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x392>
+               	jae	0x43a8cc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	(%rbx,%r12,8), %rax
+               	cmpq	%r15, %rax
+               	je	0x43a8cc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	movq	%rax, 8(%rsp)
+               	movq	%rax, %r15
+               	jmp	0x43a8cc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x33c>
+               	leaq	8(%rsp), %rbx
+               	leaq	(,%rbp,8), %rdx
+               	movq	%r15, %rdi
+               	xorl	%esi, %esi
+               	callq	0x413750 <memset@plt>
+               	leaq	(%r15,%rbp,8), %rax
+               	jmp	0x43a8c0 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x330>
+               	xorl	%r13d, %r13d
+               	leaq	(,%r14,8), %rdi
+               	addq	%r13, %rdi
+               	shlq	$3, %rbp
@@@@
+               	cmpq	%r15, %rbx
+               	je	0x43a885 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
+               	movq	64(%rsp), %rdi
+               	addq	$-8, %rdi
+               	movq	%r13, %rcx
+               	cmpq	$24, %rdi
+               	jb	0x43a862 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	shrq	$3, %rdi
+               	addq	$1, %rdi
+               	leaq	(%rbx,%rdi,8), %rax
+               	cmpq	%rax, %r13
+               	jae	0x43a784 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x1f4>
+               	leaq	(,%rdi,8), %rax
+               	addq	%r13, %rax
+               	movq	%r13, %rcx
+               	cmpq	%rbx, %rax
+               	ja	0x43a862 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2d2>
+               	movq	%rdi, %rax
+               	andq	$-4, %rax
+               	leaq	-4(%rax), %rsi
+               	movq	%rsi, %rdx
+               	shrq	$2, %rdx
+               	addq	$1, %rdx
+               	movl	%edx, %ecx
+               	andl	$3, %ecx
+               	cmpq	$12, %rsi
+               	jae	0x43a7a9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x219>
+               	xorl	%esi, %esi
+               	jmp	0x43a813 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x283>
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
+               	jne	0x43a7b2 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x222>
+               	testq	%rcx, %rcx
+               	je	0x43a84e <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2be>
+               	leaq	16(,%rsi,8), %rdx
+               	negq	%rcx
+               	nopw	(%rax,%rax)
+               	movups	-16(%rbx,%rdx), %xmm0
+               	movups	(%rbx,%rdx), %xmm1
+               	movups	%xmm0, -16(%r13,%rdx)
+               	movups	%xmm1, (%r13,%rdx)
+               	addq	$32, %rdx
+               	incq	%rcx
+               	jne	0x43a830 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2a0>
+               	cmpq	%rax, %rdi
+               	je	0x43a885 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2f5>
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
+               	jne	0x43a870 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x2e0>
+               	movq	(%rsp), %rbx
+               	testq	%rbx, %rbx
+               	je	0x43a892 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x302>
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
-               	leaq	195(%rip), %rdi         # 0x439c50 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
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
+               	leaq	186(%rip), %rdi         # 0x43a9b0 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)>
+               	leaq	88(%rsp), %rsi
@@@@
-               	movups	%xmm0, (%r15)
+               	movups	%xmm0, (%r13)
@@@@
-               	movq	%rbx, 16(%r15)
-               	jmp	0x439bc9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	xorps	%xmm0, %xmm0
-               	movups	%xmm0, (%r15)
-               	movq	$0, 16(%r15)
-               	movq	(%rsp), %rdi
+               	movq	16(%rsp), %rax
+               	movq	%rax, 16(%r13)
+               	movq	$0, 16(%rsp)
+               	movq	48(%rsp), %rdi
@@@@
-               	je	0x439bc9 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x119>
-               	callq	0x413730 <free@plt>
-               	testq	%r12, %r12
-               	je	0x439bfc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	movl	%r14d, %eax
-               	xchgl	%eax, 328(%r12)
-               	testl	%r14d, %r14d
-               	jne	0x439bfc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
+               	je	0x43a957 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	movl	56(%rsp), %ecx
+               	movl	%ecx, %eax
+               	xchgl	%eax, 328(%rdi)
+               	testl	%ecx, %ecx
+               	jne	0x43a957 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
@@@@
-               	je	0x439bfc <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x14c>
-               	addq	$328, %r12              # imm = 0x148
-               	movq	%r12, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$56, %rsp
+               	je	0x43a957 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3c7>
+               	addq	$328, %rdi              # imm = 0x148
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$120, %rsp

@@ -39707,46 +40452,45 @@
@@@[(3, 10), (11, 21), (22, 26), (28, 32), (34, 36), (49, 55), (57, 59), (60, 62)]@@@
-               	leaq	65326(%rip), %rdi       # 0x449b40 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
-               	callq	0x439a00 <std::__throw_length_error(char const*)>
-               	movq	%rax, %rbx
-               	jmp	0x439c22 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x172>
+               	leaq	65939(%rip), %rdi       # 0x44ab00 <typeinfo name for kotlin::gc::GCSchedulerData+0x194f>
+               	callq	0x43a4d0 <std::__throw_length_error(char const*)>
+               	jmp	0x43a974 <kotlin::internal::GetCurrentStackTrace(unsigned long)+0x3e4>
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r13, %rdi
-               	callq	0x439c90 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
-               	movq	%r12, %rdi
-               	movl	%r14d, %esi
-               	callq	0x439a80 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x43a9f0 <std::vector<void*, kotlin::std_support::allocator<void*> >::~vector()>
+               	leaq	40(%rsp), %rdi
+               	callq	0x43a550 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x426c00 <__clang_call_terminate>
-               	nopl	(%rax)
+               	callq	0x4272f0 <__clang_call_terminate>
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
-               	jae	0x439c65 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
+               	movq	24(%rbx), %rax
+               	cmpq	%rax, (%rbx)
+               	jae	0x43a9c5 <(anonymous namespace)::unwindCallback(_Unwind_Context*, void*)+0x15>
@@@@
+               	leaq	1(%rcx), %rdx
+               	movq	%rdx, (%rbx)
@@@@
-               	leaq	1(%rcx), %rsi
-               	movq	%rsi, (%rbx)

@@ -39754,11 +40498,12 @@
@@@[(3, 4), (10, 12)]@@@
+               	movq	(%rdi), %rdi
@@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -39871,41 +40616,43 @@
@@@[(13, 23)]@@@
-               	jae	0x439e90 <CreateStringFromCString+0x1f0>
-               	addq	$1, (%rsp)
-               	jmp	0x439ec0 <CreateStringFromCString+0x220>
-               	nopw	(%rax,%rax)
+               	jae	0x43abf0 <CreateStringFromCString+0x1f0>
+               	movq	(%rsp), %rax
+               	addq	$1, %rax
+               	movq	%rax, (%rsp)
+               	jmp	0x43ac20 <CreateStringFromCString+0x220>
+               	nopl	(%rax)

@@ -39921,12 +40668,13 @@
@@@[(3, 6)]@@@
-               	movzbl	(%r8), %ecx
+               	movb	(%r8), %al
+               	movzbl	%al, %ecx

@@ -39935,45 +40683,47 @@
@@@[(12, 16), (20, 23), (25, 29), (47, 55), (56, 61)]@@@
-               	je	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	jne	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
@@@@
-               	andl	$63, %esi
-               	orl	%esi, %ecx
+               	andl	$63, %eax
+               	orl	%eax, %ecx
@@@@
-               	je	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %r10d
-               	movl	%r10d, %r9d
-               	andb	$-64, %r9b
+               	je	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %r9b
+               	movl	%r9d, %r10d
+               	andb	$-64, %r10b
@@@@
-               	cmpb	$-128, %r9b
-               	jne	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
+               	cmpb	$-128, %r10b
+               	jne	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%r9b, %r10d

@@ -39983,41 +40733,43 @@
@@@[(13, 17), (21, 28), (43, 49), (51, 54)]@@@
-               	je	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %esi
+               	je	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
@@@@
-               	jne	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %esi
-               	orl	%esi, %r10d
+               	jne	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%sil, %eax
+               	andl	$63, %eax
+               	orl	%eax, %r10d
@@@@
-               	je	0x43a118 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r10d
-               	movl	%r10d, %eax
+               	je	0x43ae8b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %r9b
+               	movl	%r9d, %eax
@@@@
-               	jne	0x43a121 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x211>
+               	jne	0x43ae94 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x224>
+               	movzbl	%r9b, %r10d

@@ -40025,45 +40777,47 @@
@@@[(14, 20), (28, 36), (37, 49), (50, 54), (60, 62)]@@@
-               	je	0x43a118 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x208>
-               	movzbl	(%rax), %r11d
-               	movl	%r11d, %eax
+               	je	0x43ae8b <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x21b>
+               	movb	(%rax), %cl
+               	movl	%ecx, %eax
@@@@
-               	je	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	movzbl	(%r9), %ecx
-               	movl	%ecx, %esi
-               	andb	$-64, %sil
+               	je	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movb	(%r9), %sil
+               	movl	%esi, %r11d
+               	andb	$-64, %r11b
@@@@
-               	cmpb	$-128, %sil
-               	jne	0x43a0bf <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1af>
-               	andl	$63, %r11d
-               	shll	$6, %r11d
-               	orl	%r10d, %r11d
+               	cmpb	$-128, %r11b
+               	jne	0x43ae31 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x1c1>
+               	movzbl	%cl, %eax
+               	andl	$63, %eax
+               	shll	$6, %eax
+               	orl	%r10d, %eax
+               	movzbl	%sil, %ecx
@@@@
-               	orl	%r11d, %ecx
-               	jmp	0x439f27 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x17>
+               	orl	%eax, %ecx
+               	jmp	0x43ac89 <utf8::internal::utf_error utf8::internal::validate_next<char const*>(char const*&, char const*, unsigned int&)+0x19>
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax)

@@ -40076,61 +40830,61 @@
@@@[(3, 6), (8, 9), (21, 22), (24, 25), (44, 45), (47, 48), (58, 59), (61, 62)]@@@
-               	ja	0x43a167 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
-               	movq	(%rbx), %rax
+               	ja	0x43aed7 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)+0x37>
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

@@ -40139,25 +40893,25 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -40173,19 +40927,19 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -40194,41 +40948,41 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rbx), %rax
@@@@
+               	movq	(%rbx), %rax

@@ -40241,21 +40995,21 @@
@@@[(3, 4), (6, 7)]@@@
-               	movq	(%rdi), %r14
@@@@
+               	movq	(%rdi), %r14

@@ -40321,9 +41075,9 @@
@@@[(3, 9)]@@@
-               	movl	8(%rsi), %ebp
-               	addl	8(%rdi), %ebp
-               	js	0x43a560 <Kotlin_String_plusImpl+0xc0>
+               	movl	8(%rdi), %ebp
+               	addl	8(%rsi), %ebp
+               	js	0x43b2d0 <Kotlin_String_plusImpl+0xc0>

@@ -40524,46 +41278,45 @@
@@@[(39, 48), (60, 62)]@@@
-               	jg	0x43a8cb <Kotlin_String_hashCode+0x11b>
-               	callq	0x43a9a0 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
-               	jmp	0x43a8f8 <Kotlin_String_hashCode+0x148>
-               	movq	%r14, %rax
-               	addq	$-1, %rax
+               	jg	0x43b63b <Kotlin_String_hashCode+0x11b>
+               	callq	0x43b710 <(anonymous namespace)::SSETraits::polyHashUnalignedUnrollUpTo8(int, unsigned short const*)>
+               	jmp	0x43b668 <Kotlin_String_hashCode+0x148>
+               	leaq	-1(%r14), %rax
@@@@
-               	nopl	(%rax)
+               	nopw	%cs:(%rax,%rax)

@@ -41221,39 +41974,38 @@
@@@[(18, 32), (35, 40)]@@@
-               	je	0x43b42d <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43b3e0 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x190>
-               	movq	%rsi, %rax
+               	je	0x43c19d <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43c150 <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x190>
@@@@
-               	je	0x43b3eb <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x19b>
-               	jmp	0x43b42d <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>
-               	nopl	(%rax)
+               	je	0x43c15b <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x19b>
+               	jmp	0x43c19d <(anonymous namespace)::RunFinalizerHooksImpl(ObjHeader*, TypeInfo const*)+0x1dd>

@@ -41488,54 +42240,55 @@
@@@[(35, 40), (57, 59), (61, 62), (63, 66)]@@@
-               	addq	$40, 56(%r13)
-               	jmp	0x43b8bb <Worker::putJob((anonymous namespace)::Job, bool)+0x12b>
+               	movq	56(%r13), %rax
+               	addq	$40, %rax
+               	jmp	0x43c62a <Worker::putJob((anonymous namespace)::Job, bool)+0x12a>
@@@@
+               	movq	32(%rbx), %rcx
+               	movq	%rcx, 32(%rax)
@@@@
-               	movups	%xmm0, (%rax)
@@@@
-               	movq	32(%rbx), %rcx
-               	movq	%rcx, 32(%rax)
+               	movups	%xmm0, (%rax)

@@ -41594,8 +42347,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax,%rax)
+               	jmp	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop

@@ -41605,72 +42358,73 @@
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
-               	jbe	0x43b9b9 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0x59>
-               	subq	%r12, %rbx
-               	shlq	$2, %rbx
-               	andq	$-8, %rbx
-               	addq	(%r14), %rbx
+               	leaq	2(%rbp), %r14
+               	movq	8(%rdi), %rax
+               	leaq	4(,%rbp), %rcx
+               	addq	%rbp, %rcx
+               	cmpq	%rcx, %rax
+               	jbe	0x43c729 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0x59>
+               	movq	(%rbx), %rcx
+               	subq	%r14, %rax
+               	andq	$-2, %rax
+               	leaq	(%rcx,%rax,4), %r14
@@@@
-               	cmpq	%rsi, %rbx
-               	jae	0x43ba15 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xb5>
+               	cmpq	%r12, %r14
+               	jae	0x43c785 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xb5>
@@@@
-               	je	0x43ba2d <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xcd>
-               	movq	%rbx, %rdi
-               	jmp	0x43ba25 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xc5>
-               	movq	%rsi, (%rsp)
-               	testq	%rbx, %rbx
-               	movl	$1, %eax
-               	cmovneq	%rbx, %rax
-               	leaq	(%rbx,%rax), %r13
+               	je	0x43c7a0 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xd0>
+               	movq	%r14, %rdi
+               	jmp	0x43c795 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xc5>
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
-               	je	0x43ba04 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xa4>
-               	movq	%rbx, %rdi
-               	movq	(%rsp), %rsi
+               	je	0x43c770 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xa0>
+               	movq	%r14, %rdi
+               	movq	%r12, %rsi
@@@@
-               	movq	(%r14), %rdi
-               	callq	0x413730 <free@plt>
-               	movq	%r12, (%r14)
-               	movq	%r13, 8(%r14)
-               	jmp	0x43ba2d <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xcd>
+               	movq	(%rbx), %rdi
+               	callq	0x413710 <free@plt>
+               	movq	(%rsp), %rax
+               	movq	%rax, (%rbx)
+               	movq	%r13, 8(%rbx)
+               	jmp	0x43c7a0 <std::deque<(anonymous namespace)::Job, kotlin::std_support::allocator<(anonymous namespace)::Job> >::_M_reallocate_map(unsigned long, bool)+0xd0>
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

@@ -41679,7 +42433,7 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax,%rax)
+               	nop

@@ -41875,40 +42629,40 @@
@@@[(7, 11), (21, 22), (23, 24)]@@@
-               	je	0x43be84 <Kotlin_initRuntimeIfNeeded+0x414>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x43cbe4 <Kotlin_initRuntimeIfNeeded+0x404>
+               	nop
@@@@
-               	movq	72(%rbx), %rax
@@@@
+               	movq	72(%rbx), %rax

@@ -41920,28 +42674,24 @@
@@@[(17, 23)]@@@
-               	jmp	0x43c011 <Kotlin_initRuntimeIfNeeded+0x5a1>
-               	movq	%r13, 183797(%rip)      # 0x468d30 <kotlin::mm::GlobalData::instance_+0x18>
-               	cmpq	$0, 176245(%rip)        # 0x466fb8 <write+0x466fb8>
-               	jne	0x43bdb2 <Kotlin_initRuntimeIfNeeded+0x342>
-               	jmp	0x43bdbe <Kotlin_initRuntimeIfNeeded+0x34e>
+               	jmp	0x43cd51 <Kotlin_initRuntimeIfNeeded+0x571>

@@ -41951,34 +42701,34 @@
@@@[(24, 26)]@@@
-               	nopl	(%rax,%rax)
+               	nopw	(%rax,%rax)

@@ -42175,328 +42925,334 @@
@@@[(30, 34), (35, 39), (40, 44), (45, 47), (49, 53), (70, 84), (87, 89), (99, 101), (110, 117), (119, 133), (136, 143), (146, 156), (168, 175), (177, 180), (183, 198), (200, 203), (224, 226), (227, 229), (231, 235), (238, 246), (251, 253), (254, 258), (259, 263), (264, 268), (269, 271), (280, 288), (289, 291), (292, 296), (297, 298), (299, 307), (310, 334), (336, 342), (351, 357), (361, 363), (364, 372), (385, 396), (402, 410), (414, 416), (417, 429), (435, 441), (467, 471), (473, 477)]@@@
-               	movslq	(%rbx), %rax
-               	movq	%rax, 16(%rsp)
+               	movl	(%rbx), %eax
+               	movl	%eax, 12(%rsp)
@@@@
-               	callq	0x43b490 <(anonymous namespace)::theState()>
-               	movq	%rax, %r15
+               	callq	0x43c200 <(anonymous namespace)::theState()>
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
-               	je	0x43c3b7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe7>
+               	testq	%r15, %r15
+               	je	0x43d0f5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0xe5>
@@@@
-               	movslq	(%rax), %rsi
-               	movq	152(%r15), %rcx
-               	movq	%rsi, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x43c3f1 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x121>
-               	movq	%rsi, %rax
+               	movl	(%rax), %esi
+               	movslq	%esi, %rax
+               	movq	152(%r13), %rcx
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d12e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x11e>
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	jne	0x43c47c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x1ac>
-               	jmp	0x43c52f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movq	%rdi, %rbx
+               	jne	0x43d1ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19c>
+               	jmp	0x43d273 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	nopl	(%rax)
+               	movq	%rdi, %rbp
@@@@
-               	je	0x43c52f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	movslq	8(%rdi), %rbp
-               	movq	%rbp, %rax
-               	orq	%rcx, %rax
-               	shrq	$32, %rax
-               	je	0x43c460 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x190>
-               	movq	%rbp, %rax
+               	je	0x43d273 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	8(%rdi), %ebx
+               	movslq	%ebx, %rax
+               	movq	%rax, %rdx
+               	orq	%rcx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d190 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x180>
@@@@
-               	je	0x43c46f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x19f>
-               	jmp	0x43c52f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	nopl	(%rax)
-               	movl	%ebp, %eax
+               	je	0x43d19f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x18f>
+               	jmp	0x43d273 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	movl	%ebx, %eax
@@@@
-               	jne	0x43c52f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
-               	cmpl	%ebp, %esi
-               	jne	0x43c420 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
-               	testq	%rbx, %rbx
-               	je	0x43c52f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x25f>
+               	jne	0x43d273 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
+               	cmpl	%ebx, %esi
+               	jne	0x43d160 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x150>
+               	testq	%rbp, %rbp
+               	je	0x43d273 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x263>
@@@@
-               	je	0x43c51c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43d256 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43c4dc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20c>
+               	je	0x43d216 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x206>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43c4e5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
-               	jmp	0x43c51c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x24c>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x43c503 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x233>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43d21f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x20f>
+               	jmp	0x43d256 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x246>
+               	movq	(%rdi), %rbx
+               	testq	%rbx, %rbx
+               	je	0x43d23d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x22d>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43c4eb <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x21b>
+               	je	0x43d225 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x215>
+               	movq	%rbp, %rax
@@@@
-               	movq	144(%r15), %r8
+               	movq	144(%r13), %r8
@@@@
-               	movq	%r15, %rax
+               	movq	%r13, %rax
@@@@
-               	jne	0x43c514 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x244>
-               	movq	%rbp, (%r10)
+               	jne	0x43d24e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x23e>
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
-               	jmp	0x43c56c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x29c>
-               	movq	-64(%r12), %r13
+               	jmp	0x43d2b0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2a0>
+               	movq	-64(%r12), %r15
@@@@
-               	xchgl	%ebx, 328(%r13)
-               	movq	%r15, %rdi
+               	xchgl	%ebx, 328(%r15)
+               	movq	%r13, %rdi
@@@@
-               	testq	%r13, %r13
-               	je	0x43c597 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
+               	testq	%r15, %r15
+               	je	0x43d2db <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
@@@@
-               	xchgl	%eax, 328(%r13)
+               	xchgl	%eax, 328(%r15)
@@@@
-               	je	0x43c597 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2c7>
-               	addq	$328, %r13              # imm = 0x148
-               	movq	%r13, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43d2db <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x2cb>
+               	addq	$328, %r15              # imm = 0x148
+               	movq	%r15, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	24(%rax), %rbx
+               	movq	24(%rax), %rbp
@@@@
-               	cmpq	%rbx, %r13
-               	je	0x43c695 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	cmpq	%rbp, %r13
+               	je	0x43d3d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	40(%rax), %r14
@@@@
-               	leaq	46785(%rip), %rbp       # 0x447c80 <_IO_stdin_used+0x240>
-               	jmp	0x43c5f5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	nopw	%cs:(%rax,%rax)
-               	nop
+               	movq	40(%rax), %r14
+               	leaq	47421(%rip), %rbx       # 0x448c40 <_IO_stdin_used+0x240>
+               	jmp	0x43d335 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	nopl	(%rax,%rax)
@@@@
-               	callq	0x43cbe0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	addq	$40, %rbx
-               	cmpq	%r14, %rbx
-               	je	0x43c650 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
-               	cmpq	%rbx, %r13
-               	je	0x43c695 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
-               	movl	(%rbx), %ecx
-               	cmpq	$3, %rcx
-               	ja	0x43c5e3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
-               	movq	8(%rbx), %rax
-               	movslq	(%rbp,%rcx,4), %rcx
-               	addq	%rbp, %rcx
+               	callq	0x43d960 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	addq	$40, %rbp
+               	cmpq	%r14, %rbp
+               	je	0x43d390 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x380>
+               	cmpq	%rbp, %r13
+               	je	0x43d3d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	movl	(%rbp), %ecx
+               	cmpl	$3, %ecx
+               	ja	0x43d323 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x313>
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
-               	callq	0x43cbe0 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
-               	movq	%r15, %rbp
+               	movq	%rbx, %rdi
+               	callq	0x43d960 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)>
+               	movq	%r15, %rbx
@@@@
-               	movq	8(%r12), %rbx
+               	movq	8(%r12), %rbp
@@@@
-               	leaq	480(%rbx), %r14
-               	cmpq	%rbx, %r13
-               	jne	0x43c5f5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
-               	jmp	0x43c695 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
+               	leaq	480(%rbp), %r14
+               	cmpq	%rbp, %r13
+               	jne	0x43d335 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x325>
+               	jmp	0x43d3d5 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3c5>
@@@@
-               	movq	112(%r14), %rbp
-               	leaq	96(%r14), %rbx
-               	cmpq	%rbx, %rbp
-               	movq	8(%rsp), %r13
-               	jne	0x43c8a4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5d4>
+               	movq	112(%r14), %rbx
+               	leaq	96(%r14), %rbp
+               	cmpq	%rbp, %rbx
+               	movl	12(%rsp), %r13d
+               	movq	16(%rsp), %r15
+               	jne	0x43d5f4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x5e4>
@@@@
-               	callq	0x428050 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
-               	movq	248(%r14), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	callq	0x428740 <kotlin::mm::StableRefRegistry::UnregisterStableRef(kotlin::mm::ThreadData*, kotlin::MultiSourceQueue<ObjHeader*, kotlin::SpinLock<(kotlin::MutexThreadStateHandling)0>, kotlin::std_support::allocator<ObjHeader*> >::Node*)>
+               	movq	248(%r14), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
+               	testq	%rbx, %rbx
@@@@
-               	je	0x43c726 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x43c726 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
+               	je	0x43d46a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x43d46a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
@@@@
-               	je	0x43c726 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x456>
-               	movq	%rbp, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x43d46a <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x45a>
+               	movq	%rbx, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	callq	0x413730 <free@plt>
-               	movq	(%r13), %rax
+               	callq	0x413710 <free@plt>
+               	movq	(%r15), %rax
@@@@
-               	movq	(%r13), %rbx
-               	movl	285968(%rip), %edi      # 0x48249c <konan::terminationKey>
+               	movq	(%r15), %rbx
+               	movl	284482(%rip), %edi      # 0x482c1c <konan::terminationKey>

@@ -42505,200 +43261,217 @@
@@@[(23, 24), (35, 53), (73, 82), (95, 102), (103, 109), (113, 116), (118, 122), (124, 126), (127, 129), (130, 136), (138, 140), (141, 143), (147, 151), (152, 157), (160, 174), (176, 183), (186, 194), (200, 212), (223, 224), (235, 242), (244, 247), (256, 263), (265, 268), (301, 307)]@@@
+               	movq	16(%rsp), %r15
@@@@
-               	callq	0x413730 <free@plt>
-               	jmp	0x43c927 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x657>
-               	nopl	(%rax,%rax)
-               	movq	%rbp, %rdi
-               	callq	0x441331 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
-               	movq	%rax, %rbp
-               	cmpq	%rbx, %rax
-               	je	0x43c6af <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3df>
-               	movq	40(%rbp), %rsi
+               	callq	0x413710 <free@plt>
+               	jmp	0x43d693 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x683>
+               	nop
+               	movq	%rbx, %rdi
+               	callq	0x4422e1 <std::_Rb_tree_increment(std::_Rb_tree_node_base const*)>
+               	movq	%rax, %rbx
+               	cmpq	%rbp, %rax
+               	je	0x43d3f4 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x3e4>
+               	movq	40(%rbx), %rsi
@@@@
-               	je	0x43c917 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x647>
+               	je	0x43d683 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x673>
+               	movq	352(%rbx), %rbp
+               	testq	%rbp, %rbp
+               	je	0x43d660 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x650>
+               	movq	%rbp, %rdi
+               	callq	0x4281a0 <void std::allocator_traits<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node> >::_S_destroy<kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>(kotlin::std_support::allocator<kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node>&, kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData> >::Node*, ...)>
+               	movq	%rbp, %rdi
+               	callq	0x413710 <free@plt>
@@@@
-               	cmpq	$0, 173705(%rip)        # 0x466fb8 <write+0x466fb8>
-               	je	0x43c93d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x66d>
-               	leaq	181256(%rip), %rdi      # 0x468d40 <kotlin::mm::GlobalData::instance_+0x28>
+               	movslq	%r13d, %rbp
+               	cmpq	$0, 170266(%rip)        # 0x466fb8 <write+0x466fb8>
+               	je	0x43d6ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x69c>
+               	leaq	179745(%rip), %rdi      # 0x4694c8 <kotlin::mm::GlobalData::instance_+0x28>
@@@@
-               	movq	%r13, %rdi
-               	callq	0x413730 <free@plt>
-               	callq	0x43b490 <(anonymous namespace)::theState()>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	callq	0x43c200 <(anonymous namespace)::theState()>
@@@@
-               	movq	16(%rsp), %rcx
-               	movq	%rcx, %rax
+               	movq	%rbp, %rax
@@@@
-               	je	0x43c98d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6bd>
-               	movq	%rcx, %rax
+               	je	0x43d6f7 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6e7>
+               	movq	%rbp, %rax
@@@@
-               	movq	%rdx, %r8
+               	movq	%rdx, %rcx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	jne	0x43c9aa <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6da>
-               	jmp	0x43cb12 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movl	%ecx, %eax
+               	jne	0x43d714 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x704>
+               	jmp	0x43d897 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	%r13d, %eax
@@@@
-               	movl	%edx, %r8d
+               	movl	%edx, %ecx
@@@@
-               	movq	(%rax,%r8,8), %rax
+               	movq	(%rax,%rcx,8), %rax
@@@@
-               	cmpl	%ecx, 8(%rbx)
-               	jne	0x43c9c0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpl	%r13d, 8(%rbx)
+               	jne	0x43d730 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	jne	0x43ca1c <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x74c>
-               	jmp	0x43cb12 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
+               	jne	0x43d77d <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x76d>
+               	jmp	0x43d897 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	nop
@@@@
-               	je	0x43cb12 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43ca00 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x730>
-               	movq	%rsi, %rax
+               	je	0x43d897 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d760 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x750>
@@@@
-               	cmpq	%r8, %rdx
-               	je	0x43ca0f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x73f>
-               	jmp	0x43cb12 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	nopl	(%rax)
+               	cmpq	%rcx, %rdx
+               	je	0x43d76f <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x75f>
+               	jmp	0x43d897 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
@@@@
-               	cmpq	%r8, %rdx
-               	jne	0x43cb12 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x842>
-               	cmpl	%ecx, %esi
-               	jne	0x43c9c0 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x6f0>
+               	cmpq	%rcx, %rdx
+               	jne	0x43d897 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x887>
+               	cmpl	%r13d, %esi
+               	jne	0x43d730 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x720>
@@@@
-               	movslq	8(%rbx), %rax
-               	movq	%rax, %rcx
-               	orq	%rdi, %rcx
-               	shrq	$32, %rcx
-               	je	0x43ca46 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x776>
+               	movl	8(%rbx), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43d7ac <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x79c>
+               	movq	%rcx, %rax
@@@@
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43cafc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x82c>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rcx
+               	je	0x43d877 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x867>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rdx
+               	movq	%rdx, %rcx
@@@@
-               	je	0x43cabc <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7ec>
+               	je	0x43d837 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x827>
+               	movq	%rdx, %rax
@@@@
-               	je	0x43cae3 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x813>
-               	movslq	8(%r10), %rax
-               	movq	%rax, %rdx
+               	je	0x43d85e <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x84e>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43cacb <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x7fb>
+               	je	0x43d846 <(anonymous namespace)::Kotlin_deinitRuntimeCallback(void*)+0x836>
+               	movq	%rbp, %rax
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 224(%r14)
+               	callq	0x413710 <free@plt>
+               	movq	224(%r14), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 224(%r14)

@@ -42710,23 +43483,23 @@
@@@[(13, 17)]@@@
-               	callq	0x426c00 <__clang_call_terminate>
-               	nopw	%cs:(%rax,%rax)
+               	callq	0x4272f0 <__clang_call_terminate>
+               	nopl	(%rax)

@@ -42815,91 +43588,95 @@
@@@[(20, 30), (33, 37), (38, 42), (51, 57), (59, 61), (62, 64), (65, 67), (68, 76), (78, 80), (81, 85), (86, 88), (89, 93), (94, 100), (101, 103), (112, 117), (118, 121)]@@@
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	callq	0x43b490 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%r15)
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	callq	0x43c200 <(anonymous namespace)::theState()>
+               	movq	%rax, %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%r15)
@@@@
-               	je	0x43cd70 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x190>
-               	movl	%ebx, %eax
+               	je	0x43dafb <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x19b>
+               	movl	%ebp, %eax
@@@@
-               	testl	%ebx, %ebx
-               	jne	0x43cd2e <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
+               	testl	%ebp, %ebp
+               	jne	0x43daae <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x14e>
@@@@
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r12)
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x43cdb3 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1d3>
-               	jmp	0x43cdca <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	callq	0x43b490 <(anonymous namespace)::theState()>
-               	movq	%rax, %r12
+               	je	0x43db48 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1e8>
+               	jmp	0x43db5f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
+               	callq	0x43c200 <(anonymous namespace)::theState()>
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
-               	je	0x43ce06 <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x226>
-               	addq	$328, %rbx              # imm = 0x148
+               	testq	%r12, %r12
+               	je	0x43db9b <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x23b>
+               	addq	$328, %r12              # imm = 0x148
@@@@
-               	xchgl	%eax, (%rbx)
+               	xchgl	%eax, (%r12)
@@@@
-               	je	0x43cdca <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ea>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addq	$40, %r12
+               	je	0x43db5f <(anonymous namespace)::Future::cancelUnlocked(MemoryState*)+0x1ff>
@@@@
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -42908,8 +43685,8 @@
@@@[(3, 7)]@@@
-               	addq	$40, %r12
-               	movq	%r12, %rdi
+               	addq	$40, %rbx
+               	movq	%rbx, %rdi

@@ -42926,24 +43703,24 @@
@@@[(3, 7)]@@@
-               	jmp	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopw	%cs:(%rax,%rax)
+               	jmp	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax,%rax)

@@ -42998,16 +43775,20 @@
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

@@ -43088,38 +43869,39 @@
@@@[(10, 15), (18, 32)]@@@
-               	jne	0x43d30c <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x48c>
-               	jmp	0x43d118 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x298>
+               	jne	0x43e0ce <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x4be>
+               	jmp	0x43deb8 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x2a8>
+               	nop
@@@@
-               	je	0x43d118 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x298>
-               	movslq	8(%r14), %rcx
-               	movq	%rcx, %rax
-               	orq	%rbp, %rax
-               	shrq	$32, %rax
-               	je	0x43d100 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x280>
-               	movq	%rcx, %rax
+               	je	0x43deb8 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x2a8>
+               	movl	8(%r14), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rbp, %rdx
+               	shrq	$32, %rdx
+               	je	0x43dea0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x290>

@@ -43152,56 +43934,58 @@
@@@[(3, 5), (6, 10), (11, 19), (20, 22), (23, 42), (44, 47), (60, 78)]@@@
-               	movq	160(%rax), %rbx
+               	movq	160(%rax), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x43d236 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3b6>
+               	testq	%rdi, %rdi
+               	je	0x43dfe6 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3d6>
@@@@
-               	leaq	160(%rax), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x43d1e8 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x368>
-               	nopl	(%rax)
+               	leaq	160(%rax), %r8
+               	xorl	%ebx, %ebx
+               	jmp	0x43df88 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x378>
+               	nop
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x43d236 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3b6>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rdi, %rdi
+               	je	0x43dfe6 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3d6>
+               	movq	%rdi, %rsi
+               	movq	(%rdi), %rdi
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43d210 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x390>
+               	je	0x43dfc0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x3b0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x43d1d0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x350>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r15,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x43d1e0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x360>
-               	movq	%rcx, (%r15,%rdi,8)
-               	jmp	0x43d1e0 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x360>
+               	jne	0x43df70 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x360>
+               	movq	(%r8), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%r8)
+               	movq	%r8, (%r15,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x43df80 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x370>
+               	movq	%rsi, (%r15,%rbx,8)
+               	jmp	0x43df80 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x370>

@@ -43209,50 +43993,55 @@
@@@[(25, 33), (34, 37), (38, 49), (50, 53), (54, 58), (59, 61), (64, 66), (67, 71)]@@@
-               	jne	0x43d288 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x408>
-               	movq	(%rsp), %rdx
-               	leaq	160(%rdx), %rcx
-               	movq	160(%rdx), %rax
+               	jne	0x43e038 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x428>
+               	movq	(%rsp), %rcx
+               	leaq	160(%rcx), %rsi
+               	movq	160(%rcx), %rax
@@@@
-               	movq	%r14, 160(%rdx)
+               	movq	%r14, 160(%rcx)
+               	movq	(%r14), %rax
@@@@
-               	je	0x43d2fc <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x47c>
-               	movq	152(%rdx), %rsi
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rsi, %rdx
+               	je	0x43e0b4 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x4a4>
+               	movq	152(%rcx), %rdi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rdi, %rdx
@@@@
-               	je	0x43d2e9 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x469>
+               	je	0x43e0a1 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x491>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rsi
-               	jmp	0x43d2ed <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x46d>
+               	divq	%rdi
+               	jmp	0x43e0a5 <(anonymous namespace)::State::addWorkerUnlocked((anonymous namespace)::WorkerExceptionHandling, ObjHeader*, (anonymous namespace)::WorkerKind)+0x495>
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

@@ -43295,22 +44084,22 @@
@@@[(24, 26)]@@@
-               	nopl	(%rax)
+               	nop

@@ -43481,101 +44270,107 @@
@@@[(44, 45), (48, 57), (67, 72), (73, 78), (103, 105), (128, 140)]@@@
+               	subq	$32, %rsp
@@@@
-               	cmpxchgl	%ebp, 176945(%rip)      # 0x468a34 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43d70a <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1a>
-               	callq	0x43d790 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	cmpxchgl	%ebp, 175309(%rip)      # 0x469194 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43e4ce <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()>((anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'())+0x1e>
+               	callq	0x43e580 <(anonymous namespace)::TerminateHandler::queuedHandler()::'lambda'()::operator()() const>
+               	movq	$0, 16(%rsp)
+               	movl	$1, 24(%rsp)
+               	movb	$0, 28(%rsp)
@@@@
-               	movl	176889(%rip), %edi      # 0x468a30 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 16(%rsp)
+               	movl	%ebp, 24(%rsp)
+               	movb	$1, 28(%rsp)
+               	movl	175217(%rip), %edi      # 0x469190 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x439a80 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	leaq	8(%rsp), %rdi
+               	callq	0x43a550 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	nopw	(%rax,%rax)
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	je	0x43d7ab <(anonymous namespace)::TerminateHandler::instance()+0xb>
-               	leaq	-996(%rip), %rdi        # 0x43d3e0 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
-               	callq	0x440f4a <std::set_terminate(void (*)())>
-               	movq	%rax, 281872(%rip)      # 0x4824e0 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
-               	leaq	281857(%rip), %rdi      # 0x4824d8 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
-               	callq	0x440f00 <__cxa_guard_release>
+               	je	0x43e59b <(anonymous namespace)::TerminateHandler::instance()+0xb>
+               	leaq	-1044(%rip), %rdi       # 0x43e1a0 <(anonymous namespace)::TerminateHandler::kotlinHandler()>
+               	callq	0x441efa <std::set_terminate(void (*)())>
+               	movq	%rax, 280224(%rip)      # 0x482c60 <(anonymous namespace)::TerminateHandler::instance()::singleton (.0)>
+               	leaq	280209(%rip), %rdi      # 0x482c58 <guard variable for (anonymous namespace)::TerminateHandler::instance()::singleton>
+               	callq	0x441eb0 <__cxa_guard_release>

@@ -43584,51 +44379,60 @@
@@@[(3, 5), (8, 18), (28, 33), (34, 39), (68, 75)]@@@
+               	subq	$32, %rsp
+               	movq	%rdi, 24(%rsp)
@@@@
-               	cmpxchgl	%ebp, 176705(%rip)      # 0x468a34 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
-               	jne	0x43d7fa <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x1a>
-               	callq	0x43d880 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	cmpxchgl	%ebp, 175016(%rip)      # 0x469194 <(anonymous namespace)::concurrentTerminateWrapper+0x4>
+               	jne	0x43e5f8 <void (anonymous namespace)::$_0::operator()<(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1>((anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1)+0x28>
+               	leaq	24(%rsp), %rdi
+               	callq	0x43e6a0 <(anonymous namespace)::terminateWithUnhandledException(ObjHeader*)::$_1::operator()() const>
+               	movq	$0, 8(%rsp)
+               	movl	$1, 16(%rsp)
+               	movb	$0, 20(%rsp)
@@@@
-               	movl	176649(%rip), %edi      # 0x468a30 <(anonymous namespace)::concurrentTerminateWrapper>
+               	movq	%rbx, 8(%rsp)
+               	movl	%ebp, 16(%rsp)
+               	movb	$1, 20(%rsp)
+               	movl	174919(%rip), %edi      # 0x469190 <(anonymous namespace)::concurrentTerminateWrapper>
@@@@
-               	movq	%rbx, %rdi
-               	movl	%ebp, %esi
-               	callq	0x439a80 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
+               	movq	%rsp, %rdi
+               	callq	0x43a550 <kotlin::NativeOrUnregisteredThreadGuard::~NativeOrUnregisteredThreadGuard()>
@@@@
-               	callq	0x41b110 <ReportUnhandledException>
-               	callq	0x4391e0 <konan::abort()>
-               	nopl	(%rax,%rax)
+               	movq	(%rdi), %rdi
+               	callq	0x41b2b0 <ReportUnhandledException>
+               	callq	0x439cb0 <konan::abort()>
+               	nop

@@ -43800,113 +44604,114 @@
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
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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

@@ -44012,55 +44817,57 @@
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

@@ -44129,127 +44936,127 @@
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
-               	jne	0x43e1cd <(anonymous namespace)::workerRoutine(void*)+0x71d>
-               	jmp	0x43e547 <(anonymous namespace)::workerRoutine(void*)+0xa97>
-               	nop
+               	jne	0x43f00d <(anonymous namespace)::workerRoutine(void*)+0x73d>
+               	jmp	0x43f3c0 <(anonymous namespace)::workerRoutine(void*)+0xaf0>
+               	nopl	(%rax)
@@@@
-               	je	0x43e547 <(anonymous namespace)::workerRoutine(void*)+0xa97>
-               	movslq	8(%r13), %rsi
-               	movq	%rsi, %rax
-               	orq	%rbp, %rax
-               	shrq	$32, %rax
-               	je	0x43e1b0 <(anonymous namespace)::workerRoutine(void*)+0x700>
-               	movq	%rsi, %rax
+               	je	0x43f3c0 <(anonymous namespace)::workerRoutine(void*)+0xaf0>
+               	movl	8(%r13), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rbp, %rdx
+               	shrq	$32, %rdx
+               	je	0x43eff0 <(anonymous namespace)::workerRoutine(void*)+0x720>
@@@@
-               	jne	0x43e46a <(anonymous namespace)::workerRoutine(void*)+0x9ba>
-               	movq	240(%rax), %rbx
-               	movq	208(%r14), %rdi
+               	jne	0x43f2d3 <(anonymous namespace)::workerRoutine(void*)+0xa03>
+               	movq	%r14, %rcx
+               	movq	240(%rax), %r10
+               	movq	208(%r14), %rsi
@@@@
-               	orq	%rdi, %rax
+               	orq	%rsi, %rax
@@@@
-               	divq	%rdi
-               	movq	%rdx, %rsi
-               	jmp	0x43e20b <(anonymous namespace)::workerRoutine(void*)+0x75b>
+               	divq	%rsi
+               	movq	%rdx, %rbx
+               	jmp	0x43f04e <(anonymous namespace)::workerRoutine(void*)+0x77e>
@@@@
-               	divl	%edi
-               	movl	%edx, %esi
+               	divl	%esi
+               	movl	%edx, %ebx
@@@@
-               	movq	(%rax,%rsi,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	je	0x43e272 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
-               	movq	(%rax), %r10
-               	cmpl	%r12d, 8(%r10)
-               	jne	0x43e22f <(anonymous namespace)::workerRoutine(void*)+0x77f>
-               	testq	%r10, %r10
-               	jne	0x43e45f <(anonymous namespace)::workerRoutine(void*)+0x9af>
-               	jmp	0x43e272 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
-               	movq	%r10, %rbp
-               	movq	(%r10), %r10
-               	testq	%r10, %r10
-               	je	0x43e272 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
-               	movslq	8(%r10), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43e259 <(anonymous namespace)::workerRoutine(void*)+0x7a9>
-               	movq	%rcx, %rax
+               	je	0x43f0b5 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
+               	movq	(%rax), %r8
+               	cmpl	%r12d, 8(%r8)
+               	jne	0x43f072 <(anonymous namespace)::workerRoutine(void*)+0x7a2>
+               	testq	%r8, %r8
+               	jne	0x43f2c8 <(anonymous namespace)::workerRoutine(void*)+0x9f8>
+               	jmp	0x43f0b5 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
+               	movq	%r8, %rbp
+               	movq	(%r8), %r8
+               	testq	%r8, %r8
+               	je	0x43f0b5 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
+               	movl	8(%r8), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rsi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43f09c <(anonymous namespace)::workerRoutine(void*)+0x7cc>
@@@@
-               	divq	%rdi
-               	cmpq	%rsi, %rdx
-               	je	0x43e264 <(anonymous namespace)::workerRoutine(void*)+0x7b4>
-               	jmp	0x43e272 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
+               	divq	%rsi
+               	cmpq	%rbx, %rdx
+               	je	0x43f0a7 <(anonymous namespace)::workerRoutine(void*)+0x7d7>
+               	jmp	0x43f0b5 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
@@@@
-               	divl	%edi
-               	cmpq	%rsi, %rdx
-               	jne	0x43e272 <(anonymous namespace)::workerRoutine(void*)+0x7c2>
+               	divl	%esi
+               	cmpq	%rbx, %rdx
+               	jne	0x43f0b5 <(anonymous namespace)::workerRoutine(void*)+0x7e5>
@@@@
-               	jne	0x43e45f <(anonymous namespace)::workerRoutine(void*)+0x9af>
-               	movq	%rsi, %rbp
-               	movq	%rbx, 56(%rsp)
+               	jne	0x43f2c8 <(anonymous namespace)::workerRoutine(void*)+0x9f8>
+               	movq	%r10, %rbp

@@ -44260,191 +45067,209 @@
@@@[(6, 16), (18, 21), (25, 27), (30, 33), (34, 48), (49, 72), (74, 77), (79, 81), (88, 90), (91, 110), (113, 122), (123, 125), (129, 132), (134, 138), (141, 146), (150, 160), (161, 167), (168, 171), (172, 177), (179, 182), (188, 203), (204, 216), (224, 226), (227, 229), (239, 246), (248, 251), (257, 264), (266, 269), (276, 282), (285, 293), (299, 301), (304, 310)]@@@
-               	jne	0x43e2d0 <(anonymous namespace)::workerRoutine(void*)+0x820>
-               	movq	200(%r14), %rsi
-               	movq	56(%rsp), %rbx
-               	movq	48(%rsp), %r10
-               	jmp	0x43e3e7 <(anonymous namespace)::workerRoutine(void*)+0x937>
+               	movq	%rbp, %r10
+               	jne	0x43f10c <(anonymous namespace)::workerRoutine(void*)+0x83c>
+               	movq	200(%r14), %r9
+               	movq	48(%rsp), %r8
+               	jmp	0x43f23b <(anonymous namespace)::workerRoutine(void*)+0x96b>
@@@@
-               	je	0x43e5ef <(anonymous namespace)::workerRoutine(void*)+0xb3f>
+               	movq	%r10, 88(%rsp)
+               	je	0x43f468 <(anonymous namespace)::workerRoutine(void*)+0xb98>
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
-               	je	0x43e38f <(anonymous namespace)::workerRoutine(void*)+0x8df>
-               	leaq	216(%r14), %r8
-               	xorl	%edi, %edi
-               	jmp	0x43e341 <(anonymous namespace)::workerRoutine(void*)+0x891>
+               	testq	%rbx, %rbx
+               	movq	48(%rsp), %r8
+               	movq	72(%rsp), %r9
+               	je	0x43f1db <(anonymous namespace)::workerRoutine(void*)+0x90b>
+               	leaq	216(%r14), %rdi
+               	xorl	%ebp, %ebp
+               	jmp	0x43f189 <(anonymous namespace)::workerRoutine(void*)+0x8b9>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	(%rsi,%rdx,8), %rax
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbp, %rbp
-               	je	0x43e38f <(anonymous namespace)::workerRoutine(void*)+0x8df>
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
+               	je	0x43f1db <(anonymous namespace)::workerRoutine(void*)+0x90b>
+               	movq	%rbx, %rsi
+               	movq	(%rbx), %rbx
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43e368 <(anonymous namespace)::workerRoutine(void*)+0x8b8>
+               	je	0x43f1b4 <(anonymous namespace)::workerRoutine(void*)+0x8e4>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%rsi,%rdx,8), %rax
+               	movq	(%r9,%rdx,8), %rax
@@@@
-               	movq	(%rsi,%rdx,8), %rax
+               	movq	(%r9,%rdx,8), %rax
@@@@
-               	jne	0x43e329 <(anonymous namespace)::workerRoutine(void*)+0x879>
-               	movq	(%r8), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%r8)
-               	movq	%r8, (%rsi,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x43e339 <(anonymous namespace)::workerRoutine(void*)+0x889>
-               	movq	%rcx, (%rsi,%rdi,8)
-               	jmp	0x43e339 <(anonymous namespace)::workerRoutine(void*)+0x889>
+               	jne	0x43f171 <(anonymous namespace)::workerRoutine(void*)+0x8a1>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r9,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x43f181 <(anonymous namespace)::workerRoutine(void*)+0x8b1>
+               	movq	%rsi, (%r9,%rbp,8)
+               	jmp	0x43f181 <(anonymous namespace)::workerRoutine(void*)+0x8b1>
+               	movq	%r14, %rax
@@@@
-               	je	0x43e3af <(anonymous namespace)::workerRoutine(void*)+0x8ff>
-               	callq	0x413730 <free@plt>
-               	movq	%rbx, %rsi
-               	movq	48(%rsp), %r10
+               	je	0x43f200 <(anonymous namespace)::workerRoutine(void*)+0x930>
+               	callq	0x413710 <free@plt>
+               	movq	72(%rsp), %r9
+               	movq	48(%rsp), %r8
+               	movq	%r14, %rax
@@@@
-               	movq	%rsi, 200(%r14)
+               	movq	%r9, 200(%r14)
@@@@
-               	je	0x43e3d8 <(anonymous namespace)::workerRoutine(void*)+0x928>
+               	movq	88(%rsp), %r10
+               	je	0x43f231 <(anonymous namespace)::workerRoutine(void*)+0x961>
@@@@
-               	movq	%rdx, %rbp
-               	jmp	0x43e3e2 <(anonymous namespace)::workerRoutine(void*)+0x932>
+               	movq	%rdx, %rbx
+               	jmp	0x43f23b <(anonymous namespace)::workerRoutine(void*)+0x96b>
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
-               	jmp	0x43e450 <(anonymous namespace)::workerRoutine(void*)+0x9a0>
-               	leaq	216(%r14), %rcx
+               	movq	%rax, (%r8)
+               	movq	(%r9,%rbx,8), %rax
+               	movq	%r8, (%rax)
+               	jmp	0x43f2ac <(anonymous namespace)::workerRoutine(void*)+0x9dc>
+               	leaq	216(%r14), %rsi
@@@@
-               	movq	%rax, (%r10)
-               	movq	%r10, 216(%r14)
-               	movq	(%r10), %rax
+               	movq	%rax, (%r8)
+               	movq	%r8, 216(%r14)
+               	movq	(%r8), %rax
@@@@
-               	je	0x43e44c <(anonymous namespace)::workerRoutine(void*)+0x99c>
+               	je	0x43f2a8 <(anonymous namespace)::workerRoutine(void*)+0x9d8>
+               	movq	%r14, %rcx
@@@@
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x43e43d <(anonymous namespace)::workerRoutine(void*)+0x98d>
+               	je	0x43f299 <(anonymous namespace)::workerRoutine(void*)+0x9c9>
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
-               	je	0x43e484 <(anonymous namespace)::workerRoutine(void*)+0x9d4>
+               	movl	8(%r13), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rbp, %rdx
+               	shrq	$32, %rdx
+               	je	0x43f2f3 <(anonymous namespace)::workerRoutine(void*)+0xa23>
+               	movq	%rcx, %rax
@@@@
-               	movq	(%r9,%rcx,8), %rbx
+               	movq	(%rdi,%rcx,8), %rbx
@@@@
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
@@@@
-               	je	0x43e530 <(anonymous namespace)::workerRoutine(void*)+0xa80>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43f39f <(anonymous namespace)::workerRoutine(void*)+0xacf>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbx
+               	movq	%rbx, %rdx
@@@@
-               	je	0x43e4f0 <(anonymous namespace)::workerRoutine(void*)+0xa40>
+               	je	0x43f35f <(anonymous namespace)::workerRoutine(void*)+0xa8f>
+               	movq	%rbx, %rax
@@@@
-               	je	0x43e517 <(anonymous namespace)::workerRoutine(void*)+0xa67>
-               	movslq	8(%r8), %rax
-               	movq	%rax, %rdx
+               	je	0x43f386 <(anonymous namespace)::workerRoutine(void*)+0xab6>
+               	movl	8(%r8), %eax
+               	movslq	%eax, %r9
+               	movq	%r9, %rdx
@@@@
-               	je	0x43e4ff <(anonymous namespace)::workerRoutine(void*)+0xa4f>
+               	je	0x43f36e <(anonymous namespace)::workerRoutine(void*)+0xa9e>
+               	movq	%r9, %rax
@@@@
-               	je	0x43e530 <(anonymous namespace)::workerRoutine(void*)+0xa80>
-               	movq	%rsi, (%r9,%rdx,8)
-               	jmp	0x43e530 <(anonymous namespace)::workerRoutine(void*)+0xa80>
+               	je	0x43f39f <(anonymous namespace)::workerRoutine(void*)+0xacf>
+               	movq	%rsi, (%rdi,%rdx,8)
+               	jmp	0x43f39f <(anonymous namespace)::workerRoutine(void*)+0xacf>
@@@@
-               	je	0x43e530 <(anonymous namespace)::workerRoutine(void*)+0xa80>
-               	movq	%rbx, (%r9,%rdx,8)
-               	movq	144(%r14), %r9
-               	movq	(%r9,%rcx,8), %rbx
+               	je	0x43f39f <(anonymous namespace)::workerRoutine(void*)+0xacf>
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

@@ -44493,29 +45318,31 @@
@@@[(3, 7)]@@@
-               	leaq	248(%r14), %rbx
+               	movq	%r14, %rax
+               	leaq	248(%r14), %rcx
+               	movq	%rcx, 72(%rsp)

@@ -44524,37 +45351,37 @@
@@@[(47, 49)]@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -44574,32 +45401,32 @@
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
-               	jne	0x43e9bc <Worker::waitForQueueLocked(long, long*)+0x2cc>
+               	movq	40(%rbx), %rdx
+               	subq	24(%rbx), %rdx
+               	leaq	(%rcx,%rax,4), %rax
+               	addq	$-12, %rax
+               	sarq	$3, %rdx
+               	movabsq	$3689348814741910323, %rcx # imm = 0x3333333333333333
+               	imulq	%rcx, %rdx
+               	cmpq	%rdx, %rax
+               	jne	0x43f84d <Worker::waitForQueueLocked(long, long*)+0x2dd>

@@ -44650,31 +45477,33 @@
@@@[(29, 35)]@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 128(%rbx)
+               	callq	0x413710 <free@plt>
+               	movq	128(%rbx), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 128(%rbx)

@@ -44683,17 +45512,19 @@
@@@[(3, 9)]@@@
-               	addq	$40, 56(%rbx)
-               	jmp	0x43e74f <Worker::waitForQueueLocked(long, long*)+0x5f>
+               	movq	56(%rbx), %rax
+               	addq	$40, %rax
+               	movq	%rax, 56(%rbx)
+               	jmp	0x43f5cf <Worker::waitForQueueLocked(long, long*)+0x5f>

@@ -44701,10 +45532,10 @@
@@@[(3, 5), (7, 9)]@@@
-               	movl	8(%rsp), %ecx
-               	movl	%ecx, 12(%rax)
@@@@
+               	movl	8(%rsp), %ecx
+               	movl	%ecx, 12(%rax)

@@ -44727,21 +45558,21 @@
@@@[(23, 25)]@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)

@@ -44821,56 +45652,58 @@
@@@[(20, 26)]@@@
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	addl	$1, 264(%r15)
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	264(%r15), %eax
+               	addl	$1, %eax
+               	movl	%eax, 264(%r15)

@@ -44886,8 +45719,8 @@
@@@[(3, 7)]@@@
-               	jmp	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax,%rax)
+               	jmp	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopw	%cs:(%rax,%rax)

@@ -44999,39 +45832,38 @@
@@@[(18, 32), (35, 40)]@@@
-               	je	0x43f26b <Kotlin_Worker_consumeFuture+0x5ab>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x43edd0 <Kotlin_Worker_consumeFuture+0x110>
-               	movq	%rsi, %rax
+               	je	0x440101 <Kotlin_Worker_consumeFuture+0x5a1>
+               	movl	8(%rbx), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x43fc60 <Kotlin_Worker_consumeFuture+0x100>
@@@@
-               	je	0x43eddf <Kotlin_Worker_consumeFuture+0x11f>
-               	jmp	0x43f26b <Kotlin_Worker_consumeFuture+0x5ab>
-               	nopl	(%rax)
+               	je	0x43fc6f <Kotlin_Worker_consumeFuture+0x10f>
+               	jmp	0x440101 <Kotlin_Worker_consumeFuture+0x5a1>

@@ -45159,121 +45991,126 @@
@@@[(18, 32), (35, 40), (63, 70), (72, 75), (78, 93), (95, 98), (124, 128), (131, 137)]@@@
-               	je	0x43f209 <Kotlin_Worker_consumeFuture+0x549>
-               	movslq	8(%rdi), %rsi
-               	movq	%rsi, %rax
-               	orq	%rbx, %rax
-               	shrq	$32, %rax
-               	je	0x43f030 <Kotlin_Worker_consumeFuture+0x370>
-               	movq	%rsi, %rax
+               	je	0x44009f <Kotlin_Worker_consumeFuture+0x53f>
+               	movl	8(%rdi), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rbx, %rdx
+               	shrq	$32, %rdx
+               	je	0x43feb0 <Kotlin_Worker_consumeFuture+0x350>
@@@@
-               	je	0x43f03f <Kotlin_Worker_consumeFuture+0x37f>
-               	jmp	0x43f209 <Kotlin_Worker_consumeFuture+0x549>
-               	nopl	(%rax)
+               	je	0x43febf <Kotlin_Worker_consumeFuture+0x35f>
+               	jmp	0x44009f <Kotlin_Worker_consumeFuture+0x53f>
@@@@
-               	je	0x43f0e3 <Kotlin_Worker_consumeFuture+0x423>
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	je	0x43ff72 <Kotlin_Worker_consumeFuture+0x412>
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43f0a8 <Kotlin_Worker_consumeFuture+0x3e8>
+               	je	0x43ff37 <Kotlin_Worker_consumeFuture+0x3d7>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43f0b1 <Kotlin_Worker_consumeFuture+0x3f1>
-               	jmp	0x43f0e3 <Kotlin_Worker_consumeFuture+0x423>
-               	movq	(%rdi), %rbp
-               	testq	%rbp, %rbp
-               	je	0x43f0cc <Kotlin_Worker_consumeFuture+0x40c>
-               	movslq	8(%rbp), %rax
-               	movq	%rax, %rdx
+               	jne	0x43ff40 <Kotlin_Worker_consumeFuture+0x3e0>
+               	jmp	0x43ff72 <Kotlin_Worker_consumeFuture+0x412>
+               	movq	(%rdi), %r10
+               	testq	%r10, %r10
+               	je	0x43ff5b <Kotlin_Worker_consumeFuture+0x3fb>
+               	movl	8(%r10), %eax
+               	movslq	%eax, %rbp
+               	movq	%rbp, %rdx
@@@@
-               	je	0x43f0b7 <Kotlin_Worker_consumeFuture+0x3f7>
+               	je	0x43ff46 <Kotlin_Worker_consumeFuture+0x3e6>
+               	movq	%rbp, %rax
@@@@
-               	jne	0x43f0db <Kotlin_Worker_consumeFuture+0x41b>
-               	movq	%rbp, (%r9)
+               	jne	0x43ff6a <Kotlin_Worker_consumeFuture+0x40a>
+               	movq	%r10, (%r9)
@@@@
-               	callq	0x413730 <free@plt>
-               	addq	$-1, 112(%r13)
+               	callq	0x413710 <free@plt>
+               	movq	112(%r13), %rax
+               	addq	$-1, %rax
+               	movq	%rax, 112(%r13)

@@ -45382,21 +46219,22 @@
@@@[(24, 25)]@@@
+               	nopw	%cs:(%rax,%rax)

@@ -45420,23 +46258,24 @@
@@@[(6, 7)]@@@
+               	movq	$0, (%rsp)

@@ -45450,34 +46289,35 @@
@@@[(29, 31), (34, 35)]@@@
-               	movl	%ebp, %edi
+               	movl	24(%rcx), %edi
@@@@
+               	nopl	(%rax)

@@ -45530,93 +46370,157 @@
@@@[(3, 5), (10, 16), (18, 60), (62, 123), (126, 141), (150, 173), (177, 179), (180, 183), (189, 191), (200, 206), (207, 213)]@@@
-               	movq	%rdi, %rbx
+               	movq	%rdi, %r14
@@@@
-               	jne	0x43f670 <Kotlin_io_Console_print+0x180>
-               	leaq	24(%rsp), %r15
-               	movq	%r15, 8(%rsp)
+               	jne	0x44061f <Kotlin_io_Console_print+0x27f>
+               	leaq	24(%rsp), %r13
+               	movq	%r13, 8(%rsp)
@@@@
-               	movl	8(%rbx), %ebp
-               	cmpq	$16, %rbp
-               	jb	0x43f55e <Kotlin_io_Console_print+0x6e>
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
+               	je	0x4404aa <Kotlin_io_Console_print+0x10a>
+               	cmpq	$15, %rbp
+               	ja	0x44043f <Kotlin_io_Console_print+0x9f>
+               	cmpq	%rax, %rbp
+               	ja	0x44043f <Kotlin_io_Console_print+0x9f>
+               	cmpq	%r13, %r15
+               	je	0x4404aa <Kotlin_io_Console_print+0x10a>
+               	cmpq	$-1, %r12
+               	je	0x440584 <Kotlin_io_Console_print+0x1e4>
+               	testq	%r12, %r12
+               	jne	0x440572 <Kotlin_io_Console_print+0x1d2>
+               	movb	(%r15), %al
+               	movb	%al, 24(%rsp)
+               	jmp	0x440584 <Kotlin_io_Console_print+0x1e4>
+               	testq	%rbp, %rbp
+               	js	0x44062e <Kotlin_io_Console_print+0x28e>
+               	movq	%r13, %rbx
+               	cmpq	%rax, %rbp
+               	jbe	0x440469 <Kotlin_io_Console_print+0xc9>
+               	addq	%rax, %rax
+               	cmpq	%rax, %rbp
+               	jae	0x440469 <Kotlin_io_Console_print+0xc9>
+               	movabsq	$9223372036854775807, %rbp # imm = 0x7FFFFFFFFFFFFFFF
+               	cmpq	%rbp, %rax
+               	cmovbq	%rax, %rbp
+               	leaq	1(%rbp), %rdi
@@@@
-               	movq	%rax, 8(%rsp)
-               	movq	%r14, 24(%rsp)
-               	movq	%rbp, %rax
-               	addq	%rbp, %rax
-               	je	0x43f5f4 <Kotlin_io_Console_print+0x104>
-               	addq	$16, %rbx
-               	leaq	(%rbx,%rbp,2), %r12
-               	movl	$65533, %r13d           # imm = 0xFFFD
-               	leaq	8(%rsp), %r14
-               	jmp	0x43f5bd <Kotlin_io_Console_print+0xcd>
-               	nop
-               	cmpq	%r12, %rbp
-               	je	0x43f5e5 <Kotlin_io_Console_print+0xf5>
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
-               	callq	0x43a130 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
-               	movq	%rbp, %rbx
-               	cmpq	%r12, %rbp
-               	je	0x43f5f4 <Kotlin_io_Console_print+0x104>
-               	leaq	2(%rbx), %rbp
-               	movzwl	(%rbx), %eax
+               	movq	%rax, %r13
+               	cmpq	$-1, %r12
+               	je	0x440490 <Kotlin_io_Console_print+0xf0>
+               	testq	%r12, %r12
+               	jne	0x440552 <Kotlin_io_Console_print+0x1b2>
+               	movb	(%r15), %al
+               	movb	%al, (%r13)
+               	cmpq	%rbx, %r15
+               	je	0x44049d <Kotlin_io_Console_print+0xfd>
+               	movq	%r15, %rdi
+               	callq	0x413710 <free@plt>
+               	movq	%r13, 8(%rsp)
+               	movq	%rbp, 24(%rsp)
+               	movq	%rbx, %r13
+               	movl	8(%r14), %eax
+               	movq	%rax, %rcx
+               	addq	%rax, %rcx
+               	je	0x4405a1 <Kotlin_io_Console_print+0x201>
+               	addq	$16, %r14
+               	leaq	(%r14,%rax,2), %rbp
+               	leaq	8(%rsp), %r15
+               	jmp	0x4404e9 <Kotlin_io_Console_print+0x149>
+               	nopl	(%rax)
+               	movl	$65533, %edi            # imm = 0xFFFD
+               	movq	%r15, %rsi
+               	callq	0x43aea0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	movq	%rbx, %r14
+               	cmpq	%rbp, %rbx
+               	je	0x4405a1 <Kotlin_io_Console_print+0x201>
+               	leaq	2(%r14), %rbx
+               	movzwl	(%r14), %eax
@@@@
-               	je	0x43f580 <Kotlin_io_Console_print+0x90>
+               	jne	0x440530 <Kotlin_io_Console_print+0x190>
+               	cmpq	%rbp, %rbx
+               	je	0x440541 <Kotlin_io_Console_print+0x1a1>
+               	movzwl	2(%r14), %ecx
+               	movl	%ecx, %edx
+               	andl	$64512, %edx            # imm = 0xFC00
+               	cmpl	$56320, %edx            # imm = 0xDC00
+               	jne	0x4404d0 <Kotlin_io_Console_print+0x130>
+               	shll	$10, %eax
+               	addq	$4, %r14
+               	leal	(%rax,%rcx), %edi
+               	addl	$4238353408, %edi       # imm = 0xFCA02400
+               	movq	%r14, %rbx
+               	jmp	0x4404d5 <Kotlin_io_Console_print+0x135>
@@@@
-               	callq	0x43a130 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	callq	0x43aea0 <std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > utf8::unchecked::append<std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > > >(unsigned int, std::back_insert_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, kotlin::std_support::allocator<char> > >)>
+               	jmp	0x4405a1 <Kotlin_io_Console_print+0x201>
+               	addq	$1, %r12
+               	movq	%r13, %rdi
+               	movq	%r15, %rsi
+               	movq	%r12, %rdx
+               	callq	0x413730 <memcpy@plt>
+               	cmpq	%rbx, %r15
+               	jne	0x440495 <Kotlin_io_Console_print+0xf5>
+               	jmp	0x44049d <Kotlin_io_Console_print+0xfd>
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
+               	jne	0x4404ba <Kotlin_io_Console_print+0x11a>
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
-               	je	0x43f652 <Kotlin_io_Console_print+0x162>
-               	movq	%r12, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x440601 <Kotlin_io_Console_print+0x261>
+               	movq	%r14, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x43f661 <Kotlin_io_Console_print+0x171>
-               	callq	0x413730 <free@plt>
+               	cmpq	%r13, %rdi
+               	je	0x440610 <Kotlin_io_Console_print+0x270>
+               	callq	0x413710 <free@plt>

@@ -45625,31 +46529,33 @@
@@@[(3, 13), (17, 25), (27, 29), (38, 48)]@@@
-               	leaq	123753(%rip), %rsi      # 0x45d9e0 <ktypeglobal:kotlin.String#internal>
-               	movq	%rbx, %rdi
-               	callq	0x41ab90 <ThrowClassCastException>
-               	movq	%rax, %r14
+               	leaq	121658(%rip), %rsi      # 0x45e160 <ktypeglobal:kotlin.String#internal>
+               	movq	%r14, %rdi
+               	callq	0x41ad30 <ThrowClassCastException>
+               	leaq	42259(%rip), %rdi       # 0x44ab48 <typeinfo name for kotlin::gc::GCSchedulerData+0x1997>
+               	callq	0x43a4d0 <std::__throw_length_error(char const*)>
+               	movq	%rax, %r15
@@@@
-               	cmpq	%r15, %rdi
-               	je	0x43f696 <Kotlin_io_Console_print+0x1a6>
-               	callq	0x413730 <free@plt>
-               	movq	%r14, %rdi
+               	cmpq	%r13, %rdi
+               	je	0x440651 <Kotlin_io_Console_print+0x2b1>
+               	callq	0x413710 <free@plt>
+               	movq	%r15, %rdi
@@@@
-               	xchgl	%eax, (%r12)
+               	xchgl	%eax, (%r14)
@@@@
-               	je	0x43f687 <Kotlin_io_Console_print+0x197>
-               	movq	%r12, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x43f687 <Kotlin_io_Console_print+0x197>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x440642 <Kotlin_io_Console_print+0x2a2>
+               	movq	%r14, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x440642 <Kotlin_io_Console_print+0x2a2>
+               	nopl	(%rax,%rax)

@@ -45751,40 +46657,39 @@
@@@[(21, 24), (28, 29), (32, 34), (35, 36)]@@@
-               	movq	288(%rax), %rcx
-               	jmp	0x43f91c <Init_and_run_start+0x18c>
+               	jmp	0x4408c3 <Init_and_run_start+0x183>
@@@@
-               	movq	288(%rax), %rcx
@@@@
-               	nopl	(%rax,%rax)
+               	nopl	(%rax)
@@@@
+               	movq	288(%rax), %rcx

@@ -45793,33 +46698,34 @@
@@@[(6, 7), (8, 10)]@@@
-               	movaps	%xmm0, 16(%rsp)
@@@@
+               	movaps	%xmm0, 16(%rsp)
+               	movq	288(%rax), %rcx

@@ -45861,12 +46767,12 @@
@@@[(3, 5)]@@@
-               	nopl	(%rax)
+               	nopl	(%rax,%rax)
