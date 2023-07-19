--- ../../benchmarkAnalysis/Ring::Lambda.mutatingLambda/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:53:44.360530342 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.mutatingLambda/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:05:12.530321214 +0200
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
 
@@ -65,17 +65,17 @@
 
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
   %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
-  %43 = load i64, i64* %27, align 8, !tbaa !9
+  %43 = load atomic i64, i64* %27 unordered, align 8, !tbaa !9
   %44 = bitcast %"class.kotlin::mm::ShadowStack"* %42 to i64*
   store i64 %43, i64* %44, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
@@ -99,7 +99,7 @@
 
 epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   %50 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
-  %51 = load i64, i64* %11, align 8, !tbaa !9
+  %51 = load atomic i64, i64* %11 unordered, align 8, !tbaa !9
   %52 = bitcast %"class.kotlin::mm::ShadowStack"* %50 to i64*
   store i64 %51, i64* %52, align 8, !tbaa !7
   ret void
