--- ../../benchmarkAnalysis/Ring::Fibonacci.calcClassic/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:47:19.490652391 +0200
+++ ../../benchmarkAnalysis/Ring::Fibonacci.calcClassic/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 02:59:16.110428293 +0200
@@ -8,11 +8,11 @@
   %3 = alloca %"kclassbody:FibonacciBenchmark#internal", align 8
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:FibonacciBenchmark#internal", %"kclassbody:FibonacciBenchmark#internal"* %3, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:FibonacciBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
@@ -55,7 +55,7 @@
 
 epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   %24 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %4, i64 0, i32 1, i32 5
-  %25 = load i64, i64* %10, align 8, !tbaa !9
+  %25 = load atomic i64, i64* %10 unordered, align 8, !tbaa !9
   %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
   store i64 %25, i64* %26, align 8, !tbaa !7
   ret void
