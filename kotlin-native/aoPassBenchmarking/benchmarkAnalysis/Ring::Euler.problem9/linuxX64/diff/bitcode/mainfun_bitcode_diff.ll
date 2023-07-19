--- ../../benchmarkAnalysis/Ring::Euler.problem9/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:47:27.210650365 +0200
+++ ../../benchmarkAnalysis/Ring::Euler.problem9/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 02:59:24.150425688 +0200
@@ -8,11 +8,11 @@
   %3 = alloca %"kclassbody:EulerBenchmark#internal", align 8
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:EulerBenchmark#internal", %"kclassbody:EulerBenchmark#internal"* %3, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:EulerBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %4 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %4 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %5 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %4, i64 0, i32 1, i32 5
   %6 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %7 = bitcast %"class.kotlin::mm::ShadowStack"* %5 to i64*
-  %8 = load i64, i64* %7, align 8, !tbaa !7
+  %8 = load atomic i64, i64* %7 unordered, align 8, !tbaa !7
   %9 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %10 = bitcast %struct.ObjHeader** %9 to i64*
   store i64 %8, i64* %10, align 8, !tbaa !9
@@ -108,7 +108,7 @@
 
 epilogue:                                         ; preds = %when_exit11.i, %when_exit18.i
   %46 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %4, i64 0, i32 1, i32 5
-  %47 = load i64, i64* %10, align 8, !tbaa !9
+  %47 = load atomic i64, i64* %10 unordered, align 8, !tbaa !9
   %48 = bitcast %"class.kotlin::mm::ShadowStack"* %46 to i64*
   store i64 %47, i64* %48, align 8, !tbaa !7
   ret void
