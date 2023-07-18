--- ../../benchmarkAnalysis/Ring::ForLoops.charArrayLoop/baseline/bitcode/mainfun_bitcode.ll	2023-07-18 05:45:44.404696481 +0200
+++ ../../benchmarkAnalysis/Ring::ForLoops.charArrayLoop/unordered/bitcode/mainfun_bitcode.ll	2023-07-18 05:49:58.764627278 +0200
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
   %25 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
-  %27 = load i64, i64* %26, align 8, !tbaa !7
+  %27 = load atomic i64, i64* %26 unordered, align 8, !tbaa !7
   %28 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %29 = bitcast %struct.ObjHeader** %28 to i64*
   store i64 %27, i64* %29, align 8, !tbaa !9
@@ -60,7 +60,7 @@
   store i32 4, i32* %33, align 4, !tbaa !13
   %34 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
   %35 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %34 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %36 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %35, align 8, !tbaa !3
+  %36 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %35 unordered, align 8, !tbaa !3
   %37 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %36, i64 0, i32 2, i32 1
   %38 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %37, i64 20024) #37
   %39 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %38, i64 1
@@ -90,7 +90,7 @@
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i3
 
 Kotlin_mm_safePointWhileLoopBody.exit.i3:         ; preds = %52, %while_loop.i2
-  %53 = load i32, i32* %44, align 8, !tbaa !18
+  %53 = load atomic i32, i32* %44 unordered, align 8, !tbaa !18
   %54 = zext i32 %53 to i64
   %55 = icmp ult i64 %indvars.iv, %54
   br i1 %55, label %Kotlin_CharArray_set.exit.i, label %56
@@ -103,7 +103,7 @@
   %57 = trunc i32 %tmp.0.i to i16
   %58 = load atomic volatile i64, i64* %46 monotonic, align 8
   %59 = getelementptr inbounds i16, i16* %48, i64 %indvars.iv
-  store i16 %57, i16* %59, align 2, !tbaa !34
+  store i16 %57, i16* %59, align 2, !tbaa !27
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
   %60 = add nuw nsw i32 %tmp.0.i, 1
   br label %loop_check.i4
@@ -119,15 +119,15 @@
   %62 = bitcast %struct.ObjHeader* %61 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
   %63 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %64 = load i64, i64* %29, align 8, !tbaa !9
+  %64 = load atomic i64, i64* %29 unordered, align 8, !tbaa !9
   %65 = bitcast %"class.kotlin::mm::ShadowStack"* %63 to i64*
   store i64 %64, i64* %65, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22)
   %66 = bitcast %struct.ObjHeader* %61 to %struct.ObjHeader**
-  %67 = load %struct.ObjHeader*, %struct.ObjHeader** %66, align 8
+  %67 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %66 unordered, align 8
   %68 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %67, i64 1
   %69 = bitcast %struct.ObjHeader* %68 to i32*
-  %70 = load i32, i32* %69, align 8, !tbaa !18
+  %70 = load atomic i32, i32* %69 unordered, align 8, !tbaa !18
   %71 = icmp sgt i32 %70, 0
   %smax = select i1 %71, i32 %70, i32 0
   br label %loop_check.i
@@ -153,7 +153,7 @@
 
 epilogue:                                         ; preds = %loop_check.i
   %77 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %78 = load i64, i64* %13, align 8, !tbaa !9
+  %78 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
   %79 = bitcast %"class.kotlin::mm::ShadowStack"* %77 to i64*
   store i64 %78, i64* %79, align 8, !tbaa !7
   ret void
