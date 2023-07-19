--- ../../benchmarkAnalysis/Ring::CompanionObject.invokeRegularFunction/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:49:06.150621190 +0200
+++ ../../benchmarkAnalysis/Ring::CompanionObject.invokeRegularFunction/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:00:52.920399230 +0200
@@ -9,11 +9,11 @@
   %4 = alloca %"kclassbody:CompanionObjectBenchmark#internal", align 8
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:CompanionObjectBenchmark#internal", %"kclassbody:CompanionObjectBenchmark#internal"* %4, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:CompanionObjectBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
@@ -59,7 +59,7 @@
   %32 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
   %33 = bitcast %"class.kotlin::mm::ShadowStack"* %32 to i64*
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
-  %34 = load i64, i64* %11, align 8, !tbaa !9
+  %34 = load atomic i64, i64* %11 unordered, align 8, !tbaa !9
   store i64 %34, i64* %33, align 8, !tbaa !7
   ret void
 }
