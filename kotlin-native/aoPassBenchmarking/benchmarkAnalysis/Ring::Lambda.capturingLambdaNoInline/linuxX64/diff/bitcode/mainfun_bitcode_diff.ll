--- ../../benchmarkAnalysis/Ring::Lambda.capturingLambdaNoInline/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:51:22.060579697 +0200
+++ ../../benchmarkAnalysis/Ring::Lambda.capturingLambdaNoInline/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:58.550362369 +0200
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
@@ -43,7 +43,7 @@
   %21 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
   %22 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %23 = bitcast %"class.kotlin::mm::ShadowStack"* %21 to i64*
-  %24 = load i64, i64* %23, align 8, !tbaa !7
+  %24 = load atomic i64, i64* %23 unordered, align 8, !tbaa !7
   %25 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %26 = bitcast %struct.ObjHeader** %25 to i64*
   store i64 %24, i64* %26, align 8, !tbaa !9
@@ -54,7 +54,7 @@
   store i32 0, i32* %29, align 8, !tbaa !12
   %30 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %22, i64 0, i32 3
   store i32 4, i32* %30, align 4, !tbaa !13
-  %31 = load i32, i32* @"state_thread_local$Random", align 4
+  %31 = load atomic i32, i32* @"state_thread_local$Random" unordered, align 4
   %32 = icmp eq i32 %31, 2
   br i1 %32, label %epilogue, label %label_init.i.i
 
@@ -65,25 +65,26 @@
 epilogue:                                         ; preds = %label_init.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
   %33 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
   %34 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
-  %35 = load %struct.ObjHeader*, %struct.ObjHeader** %34, align 8
+  %35 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %34 unordered, align 8
   store %struct.ObjHeader* %35, %struct.ObjHeader** %33, align 8, !tbaa !3
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
-  %43 = load i64, i64* %26, align 8, !tbaa !9
-  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %42 to i64*
-  store i64 %43, i64* %44, align 8, !tbaa !7
+  %42 = load atomic i32, i32* %37 unordered, align 4
+  store i32 %42, i32* @"kvar:globalAddendum#internal", align 4
+  %43 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
+  %44 = load atomic i64, i64* %26 unordered, align 8, !tbaa !9
+  %45 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to i64*
+  store i64 %44, i64* %45, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
   call fastcc void @"kfun:LambdaBenchmark#capturingLambdaNoInline(){}kotlin.Int"()
-  %45 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
-  %46 = load i64, i64* %11, align 8, !tbaa !9
-  %47 = bitcast %"class.kotlin::mm::ShadowStack"* %45 to i64*
-  store i64 %46, i64* %47, align 8, !tbaa !7
+  %46 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
+  %47 = load atomic i64, i64* %11 unordered, align 8, !tbaa !9
+  %48 = bitcast %"class.kotlin::mm::ShadowStack"* %46 to i64*
+  store i64 %47, i64* %48, align 8, !tbaa !7
   ret void
 }
