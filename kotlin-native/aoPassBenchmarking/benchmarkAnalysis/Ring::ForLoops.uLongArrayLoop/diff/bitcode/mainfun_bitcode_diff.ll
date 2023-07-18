--- ../../benchmarkAnalysis/Ring::ForLoops.uLongArrayLoop/baseline/bitcode/mainfun_bitcode.ll	2023-07-18 05:45:53.264694372 +0200
+++ ../../benchmarkAnalysis/Ring::ForLoops.uLongArrayLoop/unordered/bitcode/mainfun_bitcode.ll	2023-07-18 05:50:07.194621960 +0200
@@ -13,11 +13,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ForLoopsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
@@ -47,7 +47,7 @@
   %24 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
   %25 = bitcast [5 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
-  %27 = load i64, i64* %26, align 8, !tbaa !7
+  %27 = load atomic i64, i64* %26 unordered, align 8, !tbaa !7
   %28 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %29 = bitcast %struct.ObjHeader** %28 to i64*
   store i64 %27, i64* %29, align 8, !tbaa !9
@@ -60,7 +60,7 @@
   store i32 5, i32* %33, align 4, !tbaa !13
   %34 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
   %35 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %34 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %36 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %35, align 8, !tbaa !3
+  %36 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %35 unordered, align 8, !tbaa !3
   %37 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %36, i64 0, i32 2, i32 1
   %38 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %37, i64 80024) #37
   %39 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %38, i64 1
@@ -89,7 +89,7 @@
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i3
 
 Kotlin_mm_safePointWhileLoopBody.exit.i3:         ; preds = %51, %while_loop.i2
-  %52 = load i32, i32* %44, align 8, !tbaa !18
+  %52 = load atomic i32, i32* %44 unordered, align 8, !tbaa !18
   %53 = zext i32 %52 to i64
   %54 = icmp ult i64 %indvars.iv, %53
   br i1 %54, label %Kotlin_LongArray_set.exit.i, label %55
@@ -102,7 +102,7 @@
   %56 = load atomic volatile i64, i64* %46 monotonic, align 8
   %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47, i64 %indvars.iv
   %58 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i64*
-  store i64 %indvars.iv, i64* %58, align 8, !tbaa !77
+  store i64 %indvars.iv, i64* %58, align 8, !tbaa !75
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
   br label %loop_check.i4
 
@@ -116,15 +116,15 @@
   %60 = bitcast %struct.ObjHeader* %59 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %60, align 8, !tbaa !3
   %61 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %62 = load i64, i64* %29, align 8, !tbaa !9
+  %62 = load atomic i64, i64* %29 unordered, align 8, !tbaa !9
   %63 = bitcast %"class.kotlin::mm::ShadowStack"* %61 to i64*
   store i64 %62, i64* %63, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22)
   %64 = bitcast %struct.ObjHeader* %59 to %struct.ObjHeader**
-  %65 = load %struct.ObjHeader*, %struct.ObjHeader** %64, align 8
+  %65 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %64 unordered, align 8
   %66 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %65, i64 1
   %67 = bitcast %struct.ObjHeader* %66 to i32*
-  %68 = load i32, i32* %67, align 8, !tbaa !18
+  %68 = load atomic i32, i32* %67 unordered, align 8, !tbaa !18
   %69 = icmp sgt i32 %68, 0
   %smax = select i1 %69, i32 %68, i32 0
   br label %loop_check.i
@@ -150,7 +150,7 @@
 
 epilogue:                                         ; preds = %loop_check.i
   %75 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %76 = load i64, i64* %13, align 8, !tbaa !9
+  %76 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
   %77 = bitcast %"class.kotlin::mm::ShadowStack"* %75 to i64*
   store i64 %76, i64* %77, align 8, !tbaa !7
   ret void
