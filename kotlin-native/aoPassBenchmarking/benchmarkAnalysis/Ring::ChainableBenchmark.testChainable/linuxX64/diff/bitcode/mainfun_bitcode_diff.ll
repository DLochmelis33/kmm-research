--- ../../benchmarkAnalysis/Ring::ChainableBenchmark.testChainable/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:54:15.330520496 +0200
+++ ../../benchmarkAnalysis/Ring::ChainableBenchmark.testChainable/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:05:41.360310954 +0200
@@ -12,11 +12,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:ChainableBenchmark#internal", %"kclassbody:ChainableBenchmark#internal"* %3, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ChainableBenchmark#internal", %"kclassbody:ChainableBenchmark#internal"* %3, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ChainableBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
@@ -43,7 +43,7 @@
   store i32 1000000, i32* %22, align 8
   call fastcc void @"kfun:ChainableBenchmark#testChainable(){}"(%struct.ObjHeader* nonnull %objHeader)
   %23 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %6, i64 0, i32 1, i32 5
-  %24 = load i64, i64* %12, align 8, !tbaa !9
+  %24 = load atomic i64, i64* %12 unordered, align 8, !tbaa !9
   %25 = bitcast %"class.kotlin::mm::ShadowStack"* %23 to i64*
   store i64 %24, i64* %25, align 8, !tbaa !7
   ret void
