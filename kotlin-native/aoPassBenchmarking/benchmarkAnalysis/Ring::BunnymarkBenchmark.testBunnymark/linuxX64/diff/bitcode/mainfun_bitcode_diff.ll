--- ../../benchmarkAnalysis/Ring::BunnymarkBenchmark.testBunnymark/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:54:46.210512913 +0200
+++ ../../benchmarkAnalysis/Ring::BunnymarkBenchmark.testBunnymark/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:06:13.720300379 +0200
@@ -12,11 +12,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:BunnymarkBenchmark#internal", %"kclassbody:BunnymarkBenchmark#internal"* %3, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:BunnymarkBenchmark#internal", %"kclassbody:BunnymarkBenchmark#internal"* %3, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:BunnymarkBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %6 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %6 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %7 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %6, i64 0, i32 1, i32 5
   %8 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %9 = bitcast %"class.kotlin::mm::ShadowStack"* %7 to i64*
-  %10 = load i64, i64* %9, align 8, !tbaa !7
+  %10 = load atomic i64, i64* %9 unordered, align 8, !tbaa !7
   %11 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %12 = bitcast %struct.ObjHeader** %11 to i64*
   store i64 %10, i64* %12, align 8, !tbaa !9
@@ -54,7 +54,7 @@
   store i32 800000, i32* %29, align 8
   call fastcc void @"kfun:BunnymarkBenchmark#testBunnymark(){}"(%struct.ObjHeader* nonnull %objHeader)
   %30 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %6, i64 0, i32 1, i32 5
-  %31 = load i64, i64* %12, align 8, !tbaa !9
+  %31 = load atomic i64, i64* %12 unordered, align 8, !tbaa !9
   %32 = bitcast %"class.kotlin::mm::ShadowStack"* %30 to i64*
   store i64 %31, i64* %32, align 8, !tbaa !7
   ret void
