--- ../../benchmarkAnalysis/Ring::Lambda.noncapturingLambdaNoInline/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:50:35.420593744 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.noncapturingLambdaNoInline/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:14.890375387 +0200
@@ -9,11 +9,11 @@
   %4 = alloca %"kclassbody:LambdaBenchmark#internal", align 8
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:LambdaBenchmark#internal", %"kclassbody:LambdaBenchmark#internal"* %4, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:LambdaBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %5 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %5 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %6 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
   %7 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
   %8 = bitcast %"class.kotlin::mm::ShadowStack"* %6 to i64*
-  %9 = load i64, i64* %8, align 8, !tbaa !7
+  %9 = load atomic i64, i64* %8 unordered, align 8, !tbaa !7
   %10 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
   %11 = bitcast %struct.ObjHeader** %10 to i64*
   store i64 %9, i64* %11, align 8, !tbaa !9
@@ -44,7 +44,7 @@
   %22 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
   %23 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %24 = bitcast %"class.kotlin::mm::ShadowStack"* %22 to i64*
-  %25 = load i64, i64* %24, align 8, !tbaa !7
+  %25 = load atomic i64, i64* %24 unordered, align 8, !tbaa !7
   %26 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %27 = bitcast %struct.ObjHeader** %26 to i64*
   store i64 %25, i64* %27, align 8, !tbaa !9
@@ -55,7 +55,7 @@
   store i32 0, i32* %30, align 8, !tbaa !12
   %31 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %23, i64 0, i32 3
   store i32 4, i32* %31, align 4, !tbaa !13
-  %32 = load i32, i32* @"state_thread_local$Random", align 4
+  %32 = load atomic i32, i32* @"state_thread_local$Random" unordered, align 4
   %33 = icmp eq i32 %32, 2
   br i1 %33, label %call_success, label %label_init.i.i
 
@@ -65,52 +65,56 @@
 
 call_success:                                     ; preds = %label_init.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
   %34 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
-  %35 = load %struct.ObjHeader*, %struct.ObjHeader** %34, align 8
+  %35 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %34 unordered, align 8
   store %struct.ObjHeader* %35, %struct.ObjHeader** %21, align 8, !tbaa !3
   %36 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %35, i64 2
   %37 = bitcast %struct.ObjHeader* %36 to i32*
-  %38 = load i32, i32* %37, align 4
+  %38 = load atomic i32, i32* %37 unordered, align 4
   %39 = mul i32 %38, 3
   %40 = add i32 %39, 11
   %41 = srem i32 %40, 20
   store i32 %41, i32* %37, align 4
-  store i32 %41, i32* @"kvar:globalAddendum#internal", align 4
-  %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
-  %43 = load i64, i64* %27, align 8, !tbaa !3
+  %42 = load atomic i32, i32* %37 unordered, align 4
+  store i32 %42, i32* @"kvar:globalAddendum#internal", align 4
+  %43 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
+  %44 = load atomic i64, i64* %27 unordered, align 8, !tbaa !9
+  %45 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to i64*
+  store i64 %44, i64* %45, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
   call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20)
   call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %20, i8 0, i32 32, i1 immarg false) #49
-  store i64 %43, i64* %27, align 8, !tbaa !9
-  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %42 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %44, align 8, !tbaa !7
+  %46 = load atomic i64, i64* %45 unordered, align 8, !tbaa !7
+  store i64 %46, i64* %27, align 8, !tbaa !9
+  %47 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %47, align 8, !tbaa !7
   store i32 0, i32* %30, align 8, !tbaa !12
   store i32 4, i32* %31, align 4, !tbaa !13
   br label %do_while_loop.i
 
 do_while_loop.i:                                  ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %call_success
-  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %49, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
-  %45 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %46 = and i8 %45, 1
-  %47 = icmp eq i8 %46, 0
-  br i1 %47, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %48
+  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %52, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
+  %48 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %49 = and i8 %48, 1
+  %50 = icmp eq i8 %49, 0
+  br i1 %50, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %51
 
-48:                                               ; preds = %do_while_loop.i
+51:                                               ; preds = %do_while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %48, %do_while_loop.i
-  %49 = add nuw nsw i32 %inductionVariable.0.i, 1
-  %50 = load i32, i32* @"kvar:globalAddendum#internal", align 4
-  %51 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %50, %struct.ObjHeader** nonnull %21) #37
-  store %struct.ObjHeader* %51, %struct.ObjHeader** %21, align 8, !tbaa !3
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %51, %do_while_loop.i
+  %52 = add nuw nsw i32 %inductionVariable.0.i, 1
+  %53 = load atomic i32, i32* @"kvar:globalAddendum#internal" unordered, align 4
+  %54 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %53, %struct.ObjHeader** nonnull %21) #37
+  store %struct.ObjHeader* %54, %struct.ObjHeader** %21, align 8, !tbaa !3
   %.not.i = icmp eq i32 %inductionVariable.0.i, 10000
   br i1 %.not.i, label %epilogue, label %do_while_loop.i
 
 epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
-  %53 = bitcast %"class.kotlin::mm::ShadowStack"* %52 to i64*
+  %55 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
+  %56 = bitcast %"class.kotlin::mm::ShadowStack"* %55 to i64*
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
-  %54 = load i64, i64* %11, align 8, !tbaa !9
-  store i64 %54, i64* %53, align 8, !tbaa !7
+  %57 = load atomic i64, i64* %11 unordered, align 8, !tbaa !9
+  store i64 %57, i64* %56, align 8, !tbaa !7
   ret void
 }
