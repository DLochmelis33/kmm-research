--- ../../benchmarkAnalysis/Ring::Inline.calculateGeneric/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:53:37.080532652 +0200
+++ ../../benchmarkAnalysis/Ring::Inline.calculateGeneric/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:05:05.250323730 +0200
@@ -13,11 +13,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %4, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %4, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:InlineBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %7 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %7 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %8 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
   %9 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
   %10 = bitcast %"class.kotlin::mm::ShadowStack"* %8 to i64*
-  %11 = load i64, i64* %10, align 8, !tbaa !7
+  %11 = load atomic i64, i64* %10 unordered, align 8, !tbaa !7
   %12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
   %13 = bitcast %struct.ObjHeader** %12 to i64*
   store i64 %11, i64* %13, align 8, !tbaa !9
@@ -50,7 +50,7 @@
   %26 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
   %27 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %28 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to i64*
-  %29 = load i64, i64* %28, align 8, !tbaa !7
+  %29 = load atomic i64, i64* %28 unordered, align 8, !tbaa !7
   %30 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %31 = bitcast %struct.ObjHeader** %30 to i64*
   store i64 %29, i64* %31, align 8, !tbaa !9
@@ -61,7 +61,7 @@
   store i32 0, i32* %34, align 8, !tbaa !12
   %35 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %27, i64 0, i32 3
   store i32 4, i32* %35, align 4, !tbaa !13
-  %36 = load i32, i32* %23, align 8
+  %36 = load atomic i32, i32* %23 unordered, align 8
   %37 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %36, %struct.ObjHeader** nonnull %25) #37
   br label %do_while_loop.i.i
 
@@ -85,7 +85,7 @@
   %43 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
   %44 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to i64*
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
-  %45 = load i64, i64* %13, align 8, !tbaa !9
+  %45 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
   store i64 %45, i64* %44, align 8, !tbaa !7
   ret void
 }
