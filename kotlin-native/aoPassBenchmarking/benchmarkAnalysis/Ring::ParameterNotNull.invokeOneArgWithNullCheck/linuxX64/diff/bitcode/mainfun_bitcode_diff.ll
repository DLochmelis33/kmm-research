--- ../../benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:51:14.300582093 +0200
+++ ../../benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:51.340364465 +0200
@@ -7,11 +7,11 @@
   %2 = alloca %"kclassbody:ParameterNotNullAssertionBenchmark#internal", align 8
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ParameterNotNullAssertionBenchmark#internal", %"kclassbody:ParameterNotNullAssertionBenchmark#internal"* %2, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ParameterNotNullAssertionBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %3 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %3 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %4 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %3, i64 0, i32 1, i32 5
   %5 = bitcast [5 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %6 = bitcast %"class.kotlin::mm::ShadowStack"* %4 to i64*
-  %7 = load i64, i64* %6, align 8, !tbaa !7
+  %7 = load atomic i64, i64* %6 unordered, align 8, !tbaa !7
   %8 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %9 = bitcast %struct.ObjHeader** %8 to i64*
   store i64 %7, i64* %9, align 8, !tbaa !9
@@ -45,11 +45,11 @@
   %20 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 4
   %21 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 3
   store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %21, align 8, !tbaa !3
-  %22 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:OBJ#internal" to i64*), align 8
+  %22 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:OBJ#internal" to i64*) unordered, align 8
   %23 = bitcast %struct.ObjHeader** %20 to i64*
   store i64 %22, i64* %23, align 8, !tbaa !3
   %24 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %3, i64 0, i32 1, i32 5
-  %25 = load i64, i64* %9, align 8, !tbaa !9
+  %25 = load atomic i64, i64* %9 unordered, align 8, !tbaa !9
   %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
   store i64 %25, i64* %26, align 8, !tbaa !7
   ret void
