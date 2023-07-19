--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumULongArray5Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:50:10.800600788 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumULongArray5Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:01:52.610382113 +0200
@@ -10,11 +10,11 @@
   %6 = bitcast [4 x %struct.ObjHeader*]* %5 to i8*
   call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %6, i8 0, i32 32, i1 immarg false) #49
   %7 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 3
-  %8 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %8 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %10 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
   %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
-  %12 = load i64, i64* %11, align 8, !tbaa !7
+  %12 = load atomic i64, i64* %11 unordered, align 8, !tbaa !7
   %13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 1
   %14 = bitcast %struct.ObjHeader** %13 to i64*
   store i64 %12, i64* %14, align 8, !tbaa !9
@@ -37,7 +37,7 @@
 Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %22, %entry
   %23 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
   %24 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %23 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %25 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %24, align 8, !tbaa !3
+  %25 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %24 unordered, align 8, !tbaa !3
   %26 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %25, i64 0, i32 2, i32 1
   %27 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %26, i64 40) #37
   %28 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 1
@@ -52,1256 +52,1290 @@
   call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %33)
   %.sub.i2 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 0
   call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(104) %33, i8 0, i32 104, i1 immarg false) #49
-  %34 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 4
-  %35 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 5
-  %36 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 8
-  %37 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 10
-  %38 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 11
-  %39 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 12
-  %40 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %41 = bitcast [13 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
-  %42 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to i64*
-  %43 = load i64, i64* %42, align 8, !tbaa !7
-  %44 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 1
-  %45 = bitcast %struct.ObjHeader** %44 to i64*
-  store i64 %43, i64* %45, align 8, !tbaa !9
-  %46 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %46, align 8, !tbaa !7
-  %47 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 2
-  %48 = bitcast %struct.ObjHeader** %47 to i32*
-  store i32 0, i32* %48, align 8, !tbaa !12
-  %49 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %41, i64 0, i32 3
-  store i32 13, i32* %49, align 4, !tbaa !13
-  %50 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
-  %51 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50 to i32*
-  store i32 5, i32* %51, align 8
-  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %53 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %52 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %54 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %53, align 8, !tbaa !3
-  %55 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %54, i64 0, i32 2, i32 1
-  %56 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %55, i64 64) #37
-  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 1
-  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 2
-  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.TypeInfo**
-  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %59, align 8, !tbaa !16
-  %61 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 3
-  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61 to i32*
-  store i32 5, i32* %62, align 8, !tbaa !18
-  %63 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %64 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to i64*
-  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 4
-  br label %loop_check.i7
+  %34 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 8
+  %35 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 10
+  %36 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 11
+  %37 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 12
+  %38 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %39 = bitcast [13 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
+  %40 = bitcast %"class.kotlin::mm::ShadowStack"* %38 to i64*
+  %41 = load atomic i64, i64* %40 unordered, align 8, !tbaa !7
+  %42 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 1
+  %43 = bitcast %struct.ObjHeader** %42 to i64*
+  store i64 %41, i64* %43, align 8, !tbaa !9
+  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %38 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %44, align 8, !tbaa !7
+  %45 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 2
+  %46 = bitcast %struct.ObjHeader** %45 to i32*
+  store i32 0, i32* %46, align 8, !tbaa !12
+  %47 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %39, i64 0, i32 3
+  store i32 13, i32* %47, align 4, !tbaa !13
+  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
+  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i32*
+  store i32 5, i32* %49, align 8
+  %50 = load atomic i32, i32* %49 unordered, align 8
+  %51 = icmp slt i32 %50, 0
+  br i1 %51, label %when_case.i3, label %AllocArrayInstance.exit.i5
 
-while_loop.i4:                                    ; preds = %loop_check.i7
-  %67 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %68 = and i8 %67, 1
-  %69 = icmp eq i8 %68, 0
-  br i1 %69, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %70
+when_case.i3:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %52 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 3
+  %53 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %54 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %53 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %55 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %54 unordered, align 8, !tbaa !3
+  %56 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %55, i64 0, i32 2, i32 1
+  %57 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %56, i64 56) #37
+  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 1
+  %59 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 2
+  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to %struct.ObjHeader*
+  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to %struct.TypeInfo**
+  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to i64*
+  store i64 0, i64* %62, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %61, align 8, !tbaa !14
+  %63 = bitcast %struct.ObjHeader** %52 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %60, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %60) #50
+  unreachable
 
-70:                                               ; preds = %while_loop.i4
+AllocArrayInstance.exit.i5:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %64 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 5
+  %65 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 4
+  %66 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %67 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %66 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %68 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %67 unordered, align 8, !tbaa !3
+  %69 = zext i32 %50 to i64
+  %70 = shl nuw nsw i64 %69, 3
+  %71 = add nuw nsw i64 %70, 31
+  %72 = and i64 %71, 68719476728
+  %73 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %68, i64 0, i32 2, i32 1
+  %74 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %73, i64 %72) #37
+  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 1
+  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 2
+  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.TypeInfo**
+  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %78, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %77, align 8, !tbaa !16
+  %79 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 3
+  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to i32*
+  store i32 %50, i32* %80, align 8, !tbaa !18
+  %81 = bitcast %struct.ObjHeader** %65 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
+  %82 = bitcast %struct.ObjHeader** %64 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i64*
+  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 4
+  %wide.trip.count62 = zext i32 %50 to i64
+  br label %loop_check.i9
+
+while_loop.i6:                                    ; preds = %loop_check.i9
+  %85 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %86 = and i8 %85, 1
+  %87 = icmp eq i8 %86, 0
+  br i1 %87, label %Kotlin_mm_safePointWhileLoopBody.exit.i7, label %88
+
+88:                                               ; preds = %while_loop.i6
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5
+  br label %Kotlin_mm_safePointWhileLoopBody.exit.i7
 
-Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %70, %while_loop.i4
-  %71 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %72 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %71 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %73 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %72, align 8, !tbaa !3
-  %74 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %73, i64 0, i32 2, i32 1
-  %75 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %74, i64 80024) #37
-  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 1
-  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 2
-  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.TypeInfo**
-  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %79, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.LongArray#internal", i64 0, i32 0), %struct.TypeInfo** %78, align 8, !tbaa !16
-  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 3
-  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to i32*
-  store i32 10000, i32* %81, align 8, !tbaa !18
-  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.ObjHeader*
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %64, align 8, !tbaa !3
-  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i64*
-  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 4
+Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %88, %while_loop.i6
+  %89 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %90 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %89 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %91 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %90 unordered, align 8, !tbaa !3
+  %92 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %91, i64 0, i32 2, i32 1
+  %93 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %92, i64 80024) #37
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 1
+  %95 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 2
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.TypeInfo**
+  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %97, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.LongArray#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !16
+  %98 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 3
+  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %98 to i32*
+  store i32 10000, i32* %99, align 8, !tbaa !18
+  %100 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.ObjHeader*
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %82, align 8, !tbaa !3
+  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to i64*
+  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 4
   br label %loop_check12.i
 
 while_loop13.i:                                   ; preds = %loop_check12.i
-  %85 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %86 = and i8 %85, 1
-  %87 = icmp eq i8 %86, 0
-  br i1 %87, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %88
+  %103 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %104 = and i8 %103, 1
+  %105 = icmp eq i8 %104, 0
+  br i1 %105, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %106
 
-88:                                               ; preds = %while_loop13.i
+106:                                              ; preds = %while_loop13.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit1.i
 
-Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %88, %while_loop13.i
-  %89 = load i32, i32* %81, align 8, !tbaa !18
-  %90 = zext i32 %89 to i64
-  %91 = icmp ult i64 %indvars.iv56, %90
-  br i1 %91, label %Kotlin_LongArray_set.exit.i, label %92
+Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %106, %while_loop13.i
+  %107 = load atomic i32, i32* %99 unordered, align 8, !tbaa !18
+  %108 = zext i32 %107 to i64
+  %109 = icmp ult i64 %indvars.iv57, %108
+  br i1 %109, label %Kotlin_LongArray_set.exit.i, label %110
 
-92:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
+110:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_LongArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
-  %93 = load atomic volatile i64, i64* %83 monotonic, align 8
-  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84, i64 %indvars.iv56
-  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
-  store i64 %indvars.iv56, i64* %95, align 8, !tbaa !89
-  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
+  %111 = load atomic volatile i64, i64* %101 monotonic, align 8
+  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102, i64 %indvars.iv57
+  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to i64*
+  store i64 %indvars.iv57, i64* %113, align 8, !tbaa !87
+  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
   br label %loop_check12.i
 
-loop_check12.i:                                   ; preds = %Kotlin_LongArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %Kotlin_LongArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  %exitcond58.not = icmp eq i64 %indvars.iv56, 10000
-  br i1 %exitcond58.not, label %loop_exit11.i, label %while_loop13.i
+loop_check12.i:                                   ; preds = %Kotlin_LongArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i7
+  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_LongArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
+  br i1 %exitcond59.not, label %loop_exit11.i, label %while_loop13.i
 
 loop_exit11.i:                                    ; preds = %loop_check12.i
-  %96 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<ULongArray-box>(kotlin.ULongArray?){}kotlin.Any?"(%struct.ObjHeader* nonnull %82, %struct.ObjHeader** nonnull %36)
-  %97 = load i32, i32* %62, align 8, !tbaa !18
-  %98 = zext i32 %97 to i64
-  %99 = icmp ult i64 %indvars.iv59, %98
-  br i1 %99, label %Kotlin_Array_set.exit2.i, label %100
+  %114 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<ULongArray-box>(kotlin.ULongArray?){}kotlin.Any?"(%struct.ObjHeader* nonnull %100, %struct.ObjHeader** nonnull %34)
+  %115 = load atomic i32, i32* %80 unordered, align 8, !tbaa !18
+  %116 = zext i32 %115 to i64
+  %117 = icmp ult i64 %indvars.iv60, %116
+  br i1 %117, label %Kotlin_Array_set.exit2.i, label %118
 
-100:                                              ; preds = %loop_exit11.i
+118:                                              ; preds = %loop_exit11.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit2.i:                         ; preds = %loop_exit11.i
-  %101 = load atomic volatile i64, i64* %65 monotonic, align 8
-  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, i64 %indvars.iv59
-  %103 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to %struct.ObjHeader**
-  store %struct.ObjHeader* %96, %struct.ObjHeader** %103, align 8, !tbaa !3
-  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
-  br label %loop_check.i7
+  %119 = load atomic volatile i64, i64* %83 monotonic, align 8
+  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84, i64 %indvars.iv60
+  %121 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to %struct.ObjHeader**
+  store %struct.ObjHeader* %114, %struct.ObjHeader** %121, align 8, !tbaa !3
+  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
+  br label %loop_check.i9
 
-loop_check.i7:                                    ; preds = %Kotlin_Array_set.exit2.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %Kotlin_Array_set.exit2.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond61.not = icmp eq i64 %indvars.iv59, 5
-  br i1 %exitcond61.not, label %loop_exit.i8, label %while_loop.i4
+loop_check.i9:                                    ; preds = %Kotlin_Array_set.exit2.i, %AllocArrayInstance.exit.i5
+  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %Kotlin_Array_set.exit2.i ], [ 0, %AllocArrayInstance.exit.i5 ]
+  %exitcond63.not = icmp eq i64 %indvars.iv60, %wide.trip.count62
+  br i1 %exitcond63.not, label %loop_exit.i10, label %while_loop.i6
 
-loop_exit.i8:                                     ; preds = %loop_check.i7
-  %104 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %104, align 8, !tbaa !3
-  %105 = load i32, i32* %51, align 8
-  %106 = icmp slt i32 %105, 0
-  br i1 %106, label %when_case34.i, label %AllocArrayInstance.exit.i9
+loop_exit.i10:                                    ; preds = %loop_check.i9
+  %122 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %122, align 8, !tbaa !3
+  %123 = load atomic i32, i32* %49 unordered, align 8
+  %124 = icmp slt i32 %123, 0
+  br i1 %124, label %when_case34.i, label %AllocArrayInstance.exit3.i
 
-when_case34.i:                                    ; preds = %loop_exit.i8
-  %107 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 9
-  %108 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %109 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %108 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %110 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %109, align 8, !tbaa !3
-  %111 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %110, i64 0, i32 2, i32 1
-  %112 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %111, i64 56) #37
-  %113 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112, i64 1
-  %114 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112, i64 2
-  %115 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114 to %struct.ObjHeader*
-  %116 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114 to %struct.TypeInfo**
-  %117 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113 to i64*
-  store i64 0, i64* %117, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %116, align 8, !tbaa !14
-  %118 = bitcast %struct.ObjHeader** %107 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %118, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %115, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %115) #50
+when_case34.i:                                    ; preds = %loop_exit.i10
+  %125 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 9
+  %126 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %127 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %126 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %128 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %127 unordered, align 8, !tbaa !3
+  %129 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %128, i64 0, i32 2, i32 1
+  %130 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %129, i64 56) #37
+  %131 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130, i64 1
+  %132 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130, i64 2
+  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132 to %struct.ObjHeader*
+  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132 to %struct.TypeInfo**
+  %135 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to i64*
+  store i64 0, i64* %135, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %134, align 8, !tbaa !14
+  %136 = bitcast %struct.ObjHeader** %125 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %136, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %133, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %133) #50
   unreachable
 
-AllocArrayInstance.exit.i9:                       ; preds = %loop_exit.i8
-  %119 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %120 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %119 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %121 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %120, align 8, !tbaa !3
-  %122 = zext i32 %105 to i64
-  %123 = shl nuw nsw i64 %122, 3
-  %124 = add nuw nsw i64 %123, 31
-  %125 = and i64 %124, 68719476728
-  %126 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %121, i64 0, i32 2, i32 1
-  %127 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %126, i64 %125) #37
-  %128 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 1
-  %129 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 2
-  %130 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to %struct.TypeInfo**
-  %131 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %131, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %130, align 8, !tbaa !16
-  %132 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 3
-  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132 to i32*
-  store i32 %105, i32* %133, align 8, !tbaa !18
-  %134 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %134, align 8, !tbaa !3
-  %135 = bitcast %struct.ObjHeader** %38 to i64*
-  %136 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  %.sub.i.i11 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %137 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %138 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %139 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %140 = bitcast %struct.ObjHeader** %139 to i64*
-  %141 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %142 = bitcast %struct.ObjHeader** %141 to i32*
-  %143 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %138, i64 0, i32 3
-  %144 = bitcast %struct.ObjHeader** %137 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %145 = bitcast %struct.ObjHeader** %39 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %146 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to i64*
-  %147 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 4
-  %wide.trip.count54 = zext i32 %105 to i64
+AllocArrayInstance.exit3.i:                       ; preds = %loop_exit.i10
+  %137 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %138 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %137 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %139 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %138 unordered, align 8, !tbaa !3
+  %140 = zext i32 %123 to i64
+  %141 = shl nuw nsw i64 %140, 3
+  %142 = add nuw nsw i64 %141, 31
+  %143 = and i64 %142, 68719476728
+  %144 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %139, i64 0, i32 2, i32 1
+  %145 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %144, i64 %143) #37
+  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 1
+  %147 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 2
+  %148 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to %struct.TypeInfo**
+  %149 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %149, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %148, align 8, !tbaa !16
+  %150 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 3
+  %151 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %150 to i32*
+  store i32 %123, i32* %151, align 8, !tbaa !18
+  %152 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %152, align 8, !tbaa !3
+  %153 = bitcast %struct.ObjHeader** %36 to i64*
+  %154 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
+  %155 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %156 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %157 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %158 = bitcast %struct.ObjHeader** %157 to i64*
+  %159 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %160 = bitcast %struct.ObjHeader** %159 to i32*
+  %161 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %156, i64 0, i32 3
+  %162 = bitcast %struct.ObjHeader** %155 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %163 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %164 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to i64*
+  %165 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 4
+  %wide.trip.count55 = zext i32 %123 to i64
   br label %loop_check45.i
 
 while_loop46.i:                                   ; preds = %loop_check45.i
-  %148 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %149 = and i8 %148, 1
-  %150 = icmp eq i8 %149, 0
-  br i1 %150, label %Kotlin_mm_safePointWhileLoopBody.exit3.i, label %151
+  %166 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %167 = and i8 %166, 1
+  %168 = icmp eq i8 %167, 0
+  br i1 %168, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %169
 
-151:                                              ; preds = %while_loop46.i
+169:                                              ; preds = %while_loop46.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit3.i
+  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i
 
-Kotlin_mm_safePointWhileLoopBody.exit3.i:         ; preds = %151, %while_loop46.i
-  %152 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %152, i64* %135, align 8, !tbaa !3
-  %153 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %154 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %153, i32 0)
-  %155 = icmp eq %class.Worker* %154, null
-  br i1 %155, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %156
+Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %169, %while_loop46.i
+  %170 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %170, i64* %153, align 8, !tbaa !3
+  %171 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %172 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %171, i32 0)
+  %173 = icmp eq %class.Worker* %172, null
+  br i1 %173, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %174
 
-156:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %157 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %158 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %157, i64 328
-  %159 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %158 to i32*
-  %160 = atomicrmw xchg i32* %159, i32 1 seq_cst, align 4
-  %161 = getelementptr inbounds %class.Worker, %class.Worker* %154, i64 0, i32 9
-  %162 = bitcast %class.Worker* %154 to i8*
-  %163 = call i32 @pthread_create(i64* nonnull %161, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %162) #37
-  %164 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %157, null
-  br i1 %164, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %165
+174:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %175 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %176 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %175, i64 328
+  %177 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %176 to i32*
+  %178 = atomicrmw xchg i32* %177, i32 1 seq_cst, align 4
+  %179 = getelementptr inbounds %class.Worker, %class.Worker* %172, i64 0, i32 9
+  %180 = bitcast %class.Worker* %172 to i8*
+  %181 = call i32 @pthread_create(i64* nonnull %179, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %180) #37
+  %182 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %175, null
+  br i1 %182, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %183
 
-165:                                              ; preds = %156
-  %166 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %158 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %167 = atomicrmw xchg i32* %159, i32 %160 seq_cst, align 4
-  %168 = icmp eq i32 %167, 1
-  %169 = icmp eq i32 %160, 0
-  %170 = and i1 %169, %168
-  br i1 %170, label %171, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+183:                                              ; preds = %174
+  %184 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %176 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %185 = atomicrmw xchg i32* %177, i32 %178 seq_cst, align 4
+  %186 = icmp eq i32 %185, 1
+  %187 = icmp eq i32 %178, 0
+  %188 = and i1 %187, %186
+  br i1 %188, label %189, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-171:                                              ; preds = %165
-  %172 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %173 = and i8 %172, 1
-  %174 = icmp eq i8 %173, 0
-  br i1 %174, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %175
+189:                                              ; preds = %183
+  %190 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %191 = and i8 %190, 1
+  %192 = icmp eq i8 %191, 0
+  br i1 %192, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %193
 
-175:                                              ; preds = %171
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %166) #37
-  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+193:                                              ; preds = %189
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %184) #37
+  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10: ; preds = %175, %171, %165, %156
-  %176 = getelementptr inbounds %class.Worker, %class.Worker* %154, i64 0, i32 0
-  %177 = load i32, i32* %176, align 8, !tbaa !93
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %193, %189, %183, %174
+  %194 = getelementptr inbounds %class.Worker, %class.Worker* %172, i64 0, i32 0
+  %195 = load atomic i32, i32* %194 unordered, align 8, !tbaa !91
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
-"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %178 = phi i32 [ %177, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit3.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %136)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %136, i8 0, i32 32, i1 immarg false) #49
-  %179 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %180 = bitcast %"class.kotlin::mm::ShadowStack"* %179 to i64*
-  %181 = load i64, i64* %180, align 8, !tbaa !7
-  store i64 %181, i64* %140, align 8, !tbaa !9
-  %182 = bitcast %"class.kotlin::mm::ShadowStack"* %179 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %182, align 8, !tbaa !7
-  store i32 0, i32* %142, align 8, !tbaa !12
-  store i32 4, i32* %143, align 4, !tbaa !13
-  %183 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %184 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %183 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %185 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %184, align 8, !tbaa !3
-  %186 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %185, i64 0, i32 2, i32 1
-  %187 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %186, i64 24) #37
-  %188 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 1
-  %189 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 2
-  %190 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189 to %struct.TypeInfo**
-  %191 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188 to i64*
-  store i64 0, i64* %191, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %190, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %144, align 8, !tbaa !3
-  %192 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 3
-  %193 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %192 to i32*
-  store i32 %178, i32* %193, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %145, align 8, !tbaa !3
-  %194 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %195 = load i64, i64* %140, align 8, !tbaa !9
-  %196 = bitcast %"class.kotlin::mm::ShadowStack"* %194 to i64*
-  store i64 %195, i64* %196, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %136)
-  %197 = load i32, i32* %133, align 8, !tbaa !18
-  %198 = zext i32 %197 to i64
-  %199 = icmp ult i64 %indvars.iv52, %198
-  br i1 %199, label %Kotlin_Array_set.exit.i12, label %200
+"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %196 = phi i32 [ %195, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit4.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %154)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %154, i8 0, i32 32, i1 immarg false) #49
+  %197 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %198 = bitcast %"class.kotlin::mm::ShadowStack"* %197 to i64*
+  %199 = load atomic i64, i64* %198 unordered, align 8, !tbaa !7
+  store i64 %199, i64* %158, align 8, !tbaa !9
+  %200 = bitcast %"class.kotlin::mm::ShadowStack"* %197 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %200, align 8, !tbaa !7
+  store i32 0, i32* %160, align 8, !tbaa !12
+  store i32 4, i32* %161, align 4, !tbaa !13
+  %201 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %202 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %201 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %203 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %202 unordered, align 8, !tbaa !3
+  %204 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %203, i64 0, i32 2, i32 1
+  %205 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %204, i64 24) #37
+  %206 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 1
+  %207 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 2
+  %208 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207 to %struct.TypeInfo**
+  %209 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206 to i64*
+  store i64 0, i64* %209, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %208, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %162, align 8, !tbaa !3
+  %210 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 3
+  %211 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %210 to i32*
+  store i32 %196, i32* %211, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %163, align 8, !tbaa !3
+  %212 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %213 = load atomic i64, i64* %158 unordered, align 8, !tbaa !9
+  %214 = bitcast %"class.kotlin::mm::ShadowStack"* %212 to i64*
+  store i64 %213, i64* %214, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %154)
+  %215 = load atomic i32, i32* %151 unordered, align 8, !tbaa !18
+  %216 = zext i32 %215 to i64
+  %217 = icmp ult i64 %indvars.iv53, %216
+  br i1 %217, label %Kotlin_Array_set.exit.i13, label %218
 
-200:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+218:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit.i12:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %201 = load atomic volatile i64, i64* %146 monotonic, align 8
-  %202 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 %indvars.iv52
-  %203 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %203, align 8, !tbaa !3
-  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
+Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+  %219 = load atomic volatile i64, i64* %164 monotonic, align 8
+  %220 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 %indvars.iv53
+  %221 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %220, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %221, align 8, !tbaa !3
+  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
   br label %loop_check45.i
 
-loop_check45.i:                                   ; preds = %Kotlin_Array_set.exit.i12, %AllocArrayInstance.exit.i9
-  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %Kotlin_Array_set.exit.i12 ], [ 0, %AllocArrayInstance.exit.i9 ]
-  %exitcond55.not = icmp eq i64 %indvars.iv52, %wide.trip.count54
-  br i1 %exitcond55.not, label %call_success, label %while_loop46.i
+loop_check45.i:                                   ; preds = %Kotlin_Array_set.exit.i13, %AllocArrayInstance.exit3.i
+  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i13 ], [ 0, %AllocArrayInstance.exit3.i ]
+  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
+  br i1 %exitcond56.not, label %call_success, label %while_loop46.i
 
 call_success:                                     ; preds = %loop_check45.i
-  %204 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %204, align 8, !tbaa !3
-  %205 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %206 = load i64, i64* %45, align 8, !tbaa !3
+  %222 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %222, align 8, !tbaa !3
+  %223 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %224 = load atomic i64, i64* %43 unordered, align 8, !tbaa !9
+  %225 = bitcast %"class.kotlin::mm::ShadowStack"* %223 to i64*
+  store i64 %224, i64* %225, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %33)
-  %207 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %207)
+  %226 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %226)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %207, i8 0, i32 136, i1 immarg false) #49
-  %208 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %209 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %210 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %211 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %212 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %213 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %214 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %215 = bitcast %struct.ObjHeader** %214 to i64*
-  store i64 %206, i64* %215, align 8, !tbaa !9
-  %216 = bitcast %"class.kotlin::mm::ShadowStack"* %205 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %216, align 8, !tbaa !7
-  %217 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %218 = bitcast %struct.ObjHeader** %217 to i32*
-  store i32 0, i32* %218, align 8, !tbaa !12
-  %219 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %213, i64 0, i32 3
-  store i32 17, i32* %219, align 4, !tbaa !13
-  %220 = load i32, i32* %51, align 8
-  %221 = icmp slt i32 %220, 0
-  br i1 %221, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %226, i8 0, i32 136, i1 immarg false) #49
+  %227 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %228 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %229 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %230 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %231 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %232 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %233 = load atomic i64, i64* %225 unordered, align 8, !tbaa !7
+  %234 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %235 = bitcast %struct.ObjHeader** %234 to i64*
+  store i64 %233, i64* %235, align 8, !tbaa !9
+  %236 = bitcast %"class.kotlin::mm::ShadowStack"* %223 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %236, align 8, !tbaa !7
+  %237 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %238 = bitcast %struct.ObjHeader** %237 to i32*
+  store i32 0, i32* %238, align 8, !tbaa !12
+  %239 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %232, i64 0, i32 3
+  store i32 17, i32* %239, align 4, !tbaa !13
+  %240 = load atomic i32, i32* %49 unordered, align 8
+  %241 = icmp slt i32 %240, 0
+  br i1 %241, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %222 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %223 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %224 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %223 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %225 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %224, align 8, !tbaa !3
-  %226 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %225, i64 0, i32 2, i32 1
-  %227 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %226, i64 56) #37
-  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 1
-  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 2
-  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.ObjHeader*
-  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.TypeInfo**
-  %232 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to i64*
-  store i64 0, i64* %232, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %231, align 8, !tbaa !14
-  %233 = bitcast %struct.ObjHeader** %222 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %233, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %230, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %230) #50
+  %242 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %243 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %244 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %243 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %245 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %244 unordered, align 8, !tbaa !3
+  %246 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %245, i64 0, i32 2, i32 1
+  %247 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %246, i64 56) #37
+  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 1
+  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 2
+  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to %struct.ObjHeader*
+  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to %struct.TypeInfo**
+  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to i64*
+  store i64 0, i64* %252, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %251, align 8, !tbaa !14
+  %253 = bitcast %struct.ObjHeader** %242 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %253, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %250, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %250) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %234 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %235 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %236 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %237 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %238 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %237 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %239 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %238, align 8, !tbaa !3
-  %240 = zext i32 %220 to i64
-  %241 = shl nuw nsw i64 %240, 3
-  %242 = add nuw nsw i64 %241, 31
-  %243 = and i64 %242, 68719476728
-  %244 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %239, i64 0, i32 2, i32 1
-  %245 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %244, i64 %243) #37
-  %246 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, i64 1
-  %247 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, i64 2
-  %248 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to %struct.TypeInfo**
-  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %249, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %248, align 8, !tbaa !16
-  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, i64 3
-  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to i32*
-  store i32 %220, i32* %251, align 8, !tbaa !18
-  %252 = bitcast %struct.ObjHeader** %236 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %252, align 8, !tbaa !3
-  %253 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %254 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253 to %struct.ObjHeader**
-  %255 = bitcast %struct.ObjHeader** %235 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %256 = bitcast %class.ObjHolder* %3 to i8*
-  %257 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %258 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %259 = bitcast %struct.FrameOverlay.6** %258 to i64*
-  %260 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %261 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %262 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %263 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %264 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %265 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %266 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %267 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %268 = bitcast %struct.ObjHeader** %234 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %269 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to i64*
-  %270 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, i64 4
-  %wide.trip.count50 = zext i32 %220 to i64
+  %254 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %255 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %256 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %257 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %258 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %257 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %259 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %258 unordered, align 8, !tbaa !3
+  %260 = zext i32 %240 to i64
+  %261 = shl nuw nsw i64 %260, 3
+  %262 = add nuw nsw i64 %261, 31
+  %263 = and i64 %262, 68719476728
+  %264 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %259, i64 0, i32 2, i32 1
+  %265 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %264, i64 %263) #37
+  %266 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 1
+  %267 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 2
+  %268 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267 to %struct.TypeInfo**
+  %269 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %269, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %268, align 8, !tbaa !16
+  %270 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 3
+  %271 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %270 to i32*
+  store i32 %240, i32* %271, align 8, !tbaa !18
+  %272 = bitcast %struct.ObjHeader** %256 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %272, align 8, !tbaa !3
+  %273 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %274 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %273 to %struct.ObjHeader**
+  %275 = bitcast %struct.ObjHeader** %255 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %276 = bitcast %class.ObjHolder* %3 to i8*
+  %277 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %278 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %279 = bitcast %struct.FrameOverlay.6** %278 to i64*
+  %280 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %281 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %282 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %283 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %284 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %285 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %286 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %287 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %288 = bitcast %struct.ObjHeader** %254 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %289 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267 to i64*
+  %290 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 4
+  %wide.trip.count51 = zext i32 %240 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %271 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %272 = and i8 %271, 1
-  %273 = icmp eq i8 %272, 0
-  br i1 %273, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %274
+  %291 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %292 = and i8 %291, 1
+  %293 = icmp eq i8 %292, 0
+  br i1 %293, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %294
 
-274:                                              ; preds = %while_loop.i
+294:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %274, %while_loop.i
-  %275 = load %struct.ObjHeader*, %struct.ObjHeader** %254, align 8
-  %276 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %275, i64 1
-  %277 = bitcast %struct.ObjHeader* %276 to i32*
-  %278 = load i32, i32* %277, align 8, !tbaa !18
-  %279 = zext i32 %278 to i64
-  %280 = icmp ult i64 %indvars.iv48, %279
-  br i1 %280, label %Kotlin_Array_get.exit.i, label %281
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %294, %while_loop.i
+  %295 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %274 unordered, align 8
+  %296 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %295, i64 1
+  %297 = bitcast %struct.ObjHeader* %296 to i32*
+  %298 = load atomic i32, i32* %297 unordered, align 8, !tbaa !18
+  %299 = zext i32 %298 to i64
+  %300 = icmp ult i64 %indvars.iv49, %299
+  br i1 %300, label %Kotlin_Array_get.exit.i, label %301
 
-281:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+301:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %282 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %275, i64 2
-  %283 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %282, i64 %indvars.iv48
-  %284 = bitcast %struct.ObjHeader* %283 to %struct.ObjHeader**
-  %285 = load %struct.ObjHeader*, %struct.ObjHeader** %284, align 8, !tbaa !3
-  store %struct.ObjHeader* %285, %struct.ObjHeader** %208, align 8, !tbaa !3
-  %286 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %285, i64 1
-  %287 = bitcast %struct.ObjHeader* %286 to i32*
-  %288 = load i32, i32* %287, align 4
-  %289 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %290 = icmp eq i32 %289, 2
-  br i1 %290, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %302 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %295, i64 2
+  %303 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %302, i64 %indvars.iv49
+  %304 = bitcast %struct.ObjHeader* %303 to %struct.ObjHeader**
+  %305 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %304 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %305, %struct.ObjHeader** %227, align 8, !tbaa !3
+  %306 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %305, i64 1
+  %307 = bitcast %struct.ObjHeader* %306 to i32*
+  %308 = load atomic i32, i32* %307 unordered, align 4
+  %309 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %310 = icmp eq i32 %309, 2
+  br i1 %310, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %291 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %292 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %291, i64 2
-  %293 = bitcast %struct.ObjHeader* %292 to %struct.ObjHeader**
-  %294 = load %struct.ObjHeader*, %struct.ObjHeader** %293, align 8, !tbaa !3
-  store %struct.ObjHeader* %294, %struct.ObjHeader** %209, align 8, !tbaa !3
-  %295 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %296 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %295 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %297 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %296, align 8, !tbaa !3
-  %298 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %297, i64 0, i32 2, i32 1
-  %299 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %298, i64 32) #37
-  %300 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299, i64 1
-  %301 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299, i64 2
-  %302 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %301 to %struct.ObjHeader*
-  %303 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %301 to %struct.TypeInfo**
-  %304 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300 to i64*
-  store i64 0, i64* %304, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumULongArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %303, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %301, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %255, align 8, !tbaa !3
-  %305 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %305, align 8, !tbaa !3
-  %306 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299, i64 4
-  %307 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %306 to i32*
-  %308 = trunc i64 %indvars.iv48 to i32
-  store i32 %308, i32* %307, align 8
-  %309 = bitcast %struct.ObjHeader* %294 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %310 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %309, i64 0, i32 3
-  %311 = load i32, i32* %310, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %256) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %257, align 8, !tbaa !61
-  %312 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %313 = bitcast %"class.kotlin::mm::ShadowStack"* %312 to i64*
-  %314 = load i64, i64* %313, align 8, !tbaa !7
-  store i64 %314, i64* %259, align 8, !tbaa !9
-  %315 = bitcast %"class.kotlin::mm::ShadowStack"* %312 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %315, align 8, !tbaa !7
-  store i32 0, i32* %260, align 8, !tbaa !12
-  store i32 4, i32* %261, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %302, %struct.ObjHeader** nonnull %257)
-          to label %316 unwind label %600
+  %311 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %312 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %311, i64 2
+  %313 = bitcast %struct.ObjHeader* %312 to %struct.ObjHeader**
+  %314 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %313 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %314, %struct.ObjHeader** %228, align 8, !tbaa !3
+  %315 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %316 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %315 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %317 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %316 unordered, align 8, !tbaa !3
+  %318 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %317, i64 0, i32 2, i32 1
+  %319 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %318, i64 32) #37
+  %320 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319, i64 1
+  %321 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319, i64 2
+  %322 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %321 to %struct.ObjHeader*
+  %323 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %321 to %struct.TypeInfo**
+  %324 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320 to i64*
+  store i64 0, i64* %324, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumULongArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %323, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %321, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %275, align 8, !tbaa !3
+  %325 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %325, align 8, !tbaa !3
+  %326 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319, i64 4
+  %327 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %326 to i32*
+  %328 = trunc i64 %indvars.iv49 to i32
+  store i32 %328, i32* %327, align 8
+  %329 = bitcast %struct.ObjHeader* %314 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %330 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %329, i64 0, i32 3
+  %331 = load atomic i32, i32* %330 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %276) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %277, align 8, !tbaa !60
+  %332 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %333 = bitcast %"class.kotlin::mm::ShadowStack"* %332 to i64*
+  %334 = load atomic i64, i64* %333 unordered, align 8, !tbaa !7
+  store i64 %334, i64* %279, align 8, !tbaa !9
+  %335 = bitcast %"class.kotlin::mm::ShadowStack"* %332 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %335, align 8, !tbaa !7
+  store i32 0, i32* %280, align 8, !tbaa !12
+  store i32 4, i32* %281, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %322, %struct.ObjHeader** nonnull %277)
+          to label %336 unwind label %622
 
-316:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %317 = load %struct.ObjHeader*, %struct.ObjHeader** %257, align 8, !tbaa !61
-  %318 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %317) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %257, align 8, !tbaa !3
-  %319 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %262)
-  %320 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 0
-  %321 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %322 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %321, i64 328
-  %323 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %322 to i32*
-  %324 = atomicrmw xchg i32* %323, i32 1 seq_cst, align 4
-  %325 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %320) #37
-  %326 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %321, null
-  br i1 %326, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %327
+336:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %337 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %277 unordered, align 8, !tbaa !60
+  %338 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %337) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %277, align 8, !tbaa !3
+  %339 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %282)
+  %340 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 0
+  %341 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %342 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %341, i64 328
+  %343 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %342 to i32*
+  %344 = atomicrmw xchg i32* %343, i32 1 seq_cst, align 4
+  %345 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %340) #37
+  %346 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %341, null
+  br i1 %346, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %347
 
-327:                                              ; preds = %316
-  %328 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %322 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %329 = atomicrmw xchg i32* %323, i32 %324 seq_cst, align 4
-  %330 = icmp eq i32 %329, 1
-  %331 = icmp eq i32 %324, 0
-  %332 = and i1 %331, %330
-  br i1 %332, label %333, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+347:                                              ; preds = %336
+  %348 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %342 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %349 = atomicrmw xchg i32* %343, i32 %344 seq_cst, align 4
+  %350 = icmp eq i32 %349, 1
+  %351 = icmp eq i32 %344, 0
+  %352 = and i1 %351, %350
+  br i1 %352, label %353, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-333:                                              ; preds = %327
-  %334 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %335 = and i8 %334, 1
-  %336 = icmp eq i8 %335, 0
-  br i1 %336, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %337
+353:                                              ; preds = %347
+  %354 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %355 = and i8 %354, 1
+  %356 = icmp eq i8 %355, 0
+  br i1 %356, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %357
 
-337:                                              ; preds = %333
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %328) #37
+357:                                              ; preds = %353
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %348) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %337, %333, %327, %316
-  %338 = sext i32 %288 to i64
-  %339 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 3, i32 0, i32 1
-  %340 = load i64, i64* %339, align 8, !tbaa !67
-  %341 = urem i64 %338, %340
-  %342 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 3, i32 0, i32 0
-  %343 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %342, align 8, !tbaa !72
-  %344 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %343, i64 %341
-  %345 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %344, align 8, !tbaa !3
-  %346 = icmp eq %"struct.std::__detail::_Hash_node_base"* %345, null
-  br i1 %346, label %.loopexit16, label %347
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %357, %353, %347, %336
+  %358 = sext i32 %308 to i64
+  %359 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 3, i32 0, i32 1
+  %360 = load atomic i64, i64* %359 unordered, align 8, !tbaa !67
+  %361 = urem i64 %358, %360
+  %362 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 3, i32 0, i32 0
+  %363 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %362 unordered, align 8, !tbaa !72
+  %364 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %363, i64 %361
+  %365 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %364 unordered, align 8, !tbaa !3
+  %366 = icmp eq %"struct.std::__detail::_Hash_node_base"* %365, null
+  br i1 %366, label %.loopexit17, label %367
 
-347:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %348 = bitcast %"struct.std::__detail::_Hash_node_base"* %345 to %"struct.std::__detail::_Hash_node.203"**
-  %349 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %348, align 8, !tbaa !73
-  %350 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %349, i64 0, i32 0, i32 1
-  %351 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %350 to i32*
-  %352 = load i32, i32* %351, align 4, !tbaa !74
-  %353 = icmp eq i32 %352, %288
-  br i1 %353, label %370, label %.preheader15
+367:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %368 = bitcast %"struct.std::__detail::_Hash_node_base"* %365 to %"struct.std::__detail::_Hash_node.203"**
+  %369 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %368 unordered, align 8, !tbaa !73
+  %370 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %369, i64 0, i32 0, i32 1
+  %371 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %370 to i32*
+  %372 = load atomic i32, i32* %371 unordered, align 4, !tbaa !66
+  %373 = icmp eq i32 %372, %308
+  br i1 %373, label %390, label %.preheader16
 
-354:                                              ; preds = %361
-  %355 = icmp eq i32 %364, %288
-  br i1 %355, label %368, label %.preheader15
+374:                                              ; preds = %381
+  %375 = icmp eq i32 %384, %308
+  br i1 %375, label %388, label %.preheader16
 
-.preheader15:                                     ; preds = %354, %347
-  %356 = phi %"struct.std::__detail::_Hash_node.203"* [ %360, %354 ], [ %349, %347 ]
-  %357 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %356, i64 0, i32 0, i32 0, i32 0
-  %358 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %357, align 8, !tbaa !73
-  %359 = icmp eq %"struct.std::__detail::_Hash_node_base"* %358, null
-  %360 = bitcast %"struct.std::__detail::_Hash_node_base"* %358 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %359, label %.loopexit16, label %361
+.preheader16:                                     ; preds = %374, %367
+  %376 = phi %"struct.std::__detail::_Hash_node.203"* [ %380, %374 ], [ %369, %367 ]
+  %377 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %376, i64 0, i32 0, i32 0, i32 0
+  %378 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %377 unordered, align 8, !tbaa !73
+  %379 = icmp eq %"struct.std::__detail::_Hash_node_base"* %378, null
+  %380 = bitcast %"struct.std::__detail::_Hash_node_base"* %378 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %379, label %.loopexit17, label %381
 
-361:                                              ; preds = %.preheader15
-  %362 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %358, i64 1
-  %363 = bitcast %"struct.std::__detail::_Hash_node_base"* %362 to i32*
-  %364 = load i32, i32* %363, align 4, !tbaa !74
-  %365 = sext i32 %364 to i64
-  %366 = urem i64 %365, %340
-  %367 = icmp eq i64 %366, %341
-  br i1 %367, label %354, label %.loopexit16
+381:                                              ; preds = %.preheader16
+  %382 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %378, i64 1
+  %383 = bitcast %"struct.std::__detail::_Hash_node_base"* %382 to i32*
+  %384 = load atomic i32, i32* %383 unordered, align 4, !tbaa !66
+  %385 = sext i32 %384 to i64
+  %386 = urem i64 %385, %360
+  %387 = icmp eq i64 %386, %361
+  br i1 %387, label %374, label %.loopexit17
 
-368:                                              ; preds = %354
-  %369 = icmp eq %"struct.std::__detail::_Hash_node.203"* %356, null
-  br i1 %369, label %.loopexit16, label %372
+388:                                              ; preds = %374
+  %389 = icmp eq %"struct.std::__detail::_Hash_node.203"* %376, null
+  br i1 %389, label %.loopexit17, label %392
 
-370:                                              ; preds = %347
-  %371 = icmp eq %"struct.std::__detail::_Hash_node.203"* %349, null
-  br i1 %371, label %.loopexit16, label %372
+390:                                              ; preds = %367
+  %391 = icmp eq %"struct.std::__detail::_Hash_node.203"* %369, null
+  br i1 %391, label %.loopexit17, label %392
 
-372:                                              ; preds = %370, %368
-  %373 = phi %"struct.std::__detail::_Hash_node.203"* [ %360, %368 ], [ %349, %370 ]
-  %374 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %373, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %375 = bitcast i8* %374 to %class.Worker**
-  %376 = load %class.Worker*, %class.Worker** %375, align 8, !tbaa !75
-  %377 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %378 = icmp eq i8* %377, null
-  br i1 %378, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %379
+392:                                              ; preds = %390, %388
+  %393 = phi %"struct.std::__detail::_Hash_node.203"* [ %380, %388 ], [ %369, %390 ]
+  %394 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %393, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %395 = bitcast i8* %394 to %class.Worker**
+  %396 = load atomic %class.Worker*, %class.Worker** %395 unordered, align 8, !tbaa !74
+  %397 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %398 = icmp eq i8* %397, null
+  br i1 %398, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %399
 
-379:                                              ; preds = %372
-  %380 = bitcast i8* %377 to %"class.(anonymous namespace)::Future"*
-  %381 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 6
-  %382 = load i32, i32* %381, align 4, !tbaa !94
-  %383 = add nsw i32 %382, 1
-  store i32 %383, i32* %381, align 4, !tbaa !94
-  %384 = bitcast i8* %377 to i32*
-  store i32 1, i32* %384, align 8, !tbaa !101
-  %385 = getelementptr inbounds i8, i8* %377, i64 4
-  %386 = bitcast i8* %385 to i32*
-  store i32 %382, i32* %386, align 4, !tbaa !103
-  %387 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %388 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %387, i64 328
-  %389 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %388 to i32*
-  %390 = atomicrmw xchg i32* %389, i32 1 seq_cst, align 4
-  %391 = getelementptr inbounds i8, i8* %377, i64 16
-  %392 = bitcast i8* %391 to %union.pthread_mutex_t*
-  %393 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %392, %"struct.std::atomic"* null) #37
-  %394 = getelementptr inbounds i8, i8* %377, i64 56
-  %395 = bitcast i8* %394 to %union.pthread_cond_t*
-  %396 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %395, %"struct.std::atomic"* null) #37
-  %397 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %387, null
-  br i1 %397, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %398
+399:                                              ; preds = %392
+  %400 = bitcast i8* %397 to %"class.(anonymous namespace)::Future"*
+  %401 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 6
+  %402 = load atomic i32, i32* %401 unordered, align 4, !tbaa !92
+  %403 = add nsw i32 %402, 1
+  store i32 %403, i32* %401, align 4, !tbaa !92
+  %404 = bitcast i8* %397 to i32*
+  store i32 1, i32* %404, align 8, !tbaa !99
+  %405 = getelementptr inbounds i8, i8* %397, i64 4
+  %406 = bitcast i8* %405 to i32*
+  store i32 %402, i32* %406, align 4, !tbaa !101
+  %407 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %408 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %407, i64 328
+  %409 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %408 to i32*
+  %410 = atomicrmw xchg i32* %409, i32 1 seq_cst, align 4
+  %411 = getelementptr inbounds i8, i8* %397, i64 16
+  %412 = bitcast i8* %411 to %union.pthread_mutex_t*
+  %413 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %412, %"struct.std::atomic"* null) #37
+  %414 = getelementptr inbounds i8, i8* %397, i64 56
+  %415 = bitcast i8* %414 to %union.pthread_cond_t*
+  %416 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %415, %"struct.std::atomic"* null) #37
+  %417 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %407, null
+  br i1 %417, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %418
 
-398:                                              ; preds = %379
-  %399 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %388 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %400 = atomicrmw xchg i32* %389, i32 %390 seq_cst, align 4
-  %401 = icmp eq i32 %400, 1
-  %402 = icmp eq i32 %390, 0
-  %403 = and i1 %402, %401
-  br i1 %403, label %404, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+418:                                              ; preds = %399
+  %419 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %408 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %420 = atomicrmw xchg i32* %409, i32 %410 seq_cst, align 4
+  %421 = icmp eq i32 %420, 1
+  %422 = icmp eq i32 %410, 0
+  %423 = and i1 %422, %421
+  br i1 %423, label %424, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-404:                                              ; preds = %398
-  %405 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %406 = and i8 %405, 1
-  %407 = icmp eq i8 %406, 0
-  br i1 %407, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %408
+424:                                              ; preds = %418
+  %425 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %426 = and i8 %425, 1
+  %427 = icmp eq i8 %426, 0
+  br i1 %427, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %428
 
-408:                                              ; preds = %404
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %399) #37
+428:                                              ; preds = %424
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %419) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %408, %404, %398, %379, %372
-  %409 = phi %"class.(anonymous namespace)::Future"* [ null, %372 ], [ %380, %379 ], [ %380, %408 ], [ %380, %404 ], [ %380, %398 ]
-  %410 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %409, i64 0, i32 1
-  %411 = load i32, i32* %410, align 4, !tbaa !103
-  %412 = sext i32 %411 to i64
-  %413 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 1
-  %414 = load i64, i64* %413, align 8, !tbaa !104
-  %415 = urem i64 %412, %414
-  %416 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 0
-  %417 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %416, align 8, !tbaa !105
-  %418 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, i64 %415
-  %419 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %418, align 8, !tbaa !3
-  %420 = icmp eq %"struct.std::__detail::_Hash_node_base"* %419, null
-  br i1 %420, label %.loopexit14, label %421
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %428, %424, %418, %399, %392
+  %429 = phi %"class.(anonymous namespace)::Future"* [ null, %392 ], [ %400, %399 ], [ %400, %428 ], [ %400, %424 ], [ %400, %418 ]
+  %430 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %429, i64 0, i32 1
+  %431 = load atomic i32, i32* %430 unordered, align 4, !tbaa !101
+  %432 = sext i32 %431 to i64
+  %433 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 1
+  %434 = load atomic i64, i64* %433 unordered, align 8, !tbaa !102
+  %435 = urem i64 %432, %434
+  %436 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 0
+  %437 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %436 unordered, align 8, !tbaa !103
+  %438 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %437, i64 %435
+  %439 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %438 unordered, align 8, !tbaa !3
+  %440 = icmp eq %"struct.std::__detail::_Hash_node_base"* %439, null
+  br i1 %440, label %.loopexit15, label %441
 
-421:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %422 = bitcast %"struct.std::__detail::_Hash_node_base"* %419 to %"struct.std::__detail::_Hash_node.203"**
-  %423 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %422, align 8, !tbaa !73
-  %424 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %423, i64 0, i32 0, i32 1
-  %425 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %424 to i32*
-  %426 = load i32, i32* %425, align 4, !tbaa !74
-  %427 = icmp eq i32 %411, %426
-  br i1 %427, label %444, label %.preheader13
+441:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %442 = bitcast %"struct.std::__detail::_Hash_node_base"* %439 to %"struct.std::__detail::_Hash_node.203"**
+  %443 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %442 unordered, align 8, !tbaa !73
+  %444 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %443, i64 0, i32 0, i32 1
+  %445 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %444 to i32*
+  %446 = load atomic i32, i32* %445 unordered, align 4, !tbaa !66
+  %447 = icmp eq i32 %431, %446
+  br i1 %447, label %464, label %.preheader14
 
-428:                                              ; preds = %435
-  %429 = icmp eq i32 %411, %438
-  br i1 %429, label %442, label %.preheader13
+448:                                              ; preds = %455
+  %449 = icmp eq i32 %431, %458
+  br i1 %449, label %462, label %.preheader14
 
-.preheader13:                                     ; preds = %428, %421
-  %430 = phi %"struct.std::__detail::_Hash_node.203"* [ %434, %428 ], [ %423, %421 ]
-  %431 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %430, i64 0, i32 0, i32 0, i32 0
-  %432 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %431, align 8, !tbaa !73
-  %433 = icmp eq %"struct.std::__detail::_Hash_node_base"* %432, null
-  %434 = bitcast %"struct.std::__detail::_Hash_node_base"* %432 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %433, label %.loopexit14, label %435
+.preheader14:                                     ; preds = %448, %441
+  %450 = phi %"struct.std::__detail::_Hash_node.203"* [ %454, %448 ], [ %443, %441 ]
+  %451 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %450, i64 0, i32 0, i32 0, i32 0
+  %452 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %451 unordered, align 8, !tbaa !73
+  %453 = icmp eq %"struct.std::__detail::_Hash_node_base"* %452, null
+  %454 = bitcast %"struct.std::__detail::_Hash_node_base"* %452 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %453, label %.loopexit15, label %455
 
-435:                                              ; preds = %.preheader13
-  %436 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %432, i64 1
-  %437 = bitcast %"struct.std::__detail::_Hash_node_base"* %436 to i32*
-  %438 = load i32, i32* %437, align 4, !tbaa !74
-  %439 = sext i32 %438 to i64
-  %440 = urem i64 %439, %414
-  %441 = icmp eq i64 %440, %415
-  br i1 %441, label %428, label %.loopexit14
+455:                                              ; preds = %.preheader14
+  %456 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %452, i64 1
+  %457 = bitcast %"struct.std::__detail::_Hash_node_base"* %456 to i32*
+  %458 = load atomic i32, i32* %457 unordered, align 4, !tbaa !66
+  %459 = sext i32 %458 to i64
+  %460 = urem i64 %459, %434
+  %461 = icmp eq i64 %460, %435
+  br i1 %461, label %448, label %.loopexit15
 
-442:                                              ; preds = %428
-  %443 = icmp eq %"struct.std::__detail::_Hash_node.203"* %430, null
-  br i1 %443, label %.loopexit14, label %553
+462:                                              ; preds = %448
+  %463 = icmp eq %"struct.std::__detail::_Hash_node.203"* %450, null
+  br i1 %463, label %.loopexit15, label %575
 
-444:                                              ; preds = %421
-  %445 = icmp eq %"struct.std::__detail::_Hash_node.203"* %423, null
-  br i1 %445, label %.loopexit14, label %553
+464:                                              ; preds = %441
+  %465 = icmp eq %"struct.std::__detail::_Hash_node.203"* %443, null
+  br i1 %465, label %.loopexit15, label %575
 
-.loopexit14:                                      ; preds = %444, %442, %435, %.preheader13, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %446 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %447 = getelementptr inbounds i8, i8* %446, i64 8
-  %448 = bitcast i8* %447 to i32*
-  store i32 %411, i32* %448, align 8, !tbaa !106
-  %449 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 4
-  %450 = load i64, i64* %413, align 8, !tbaa !104
-  %451 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 3
-  %452 = load i64, i64* %451, align 8, !tbaa !108
-  %453 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %449, i64 %450, i64 %452, i64 1)
-          to label %454 unwind label %560
+.loopexit15:                                      ; preds = %464, %462, %455, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %466 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %467 = bitcast i8* %466 to %"struct.std::__detail::_Hash_node_base"**
+  %468 = getelementptr inbounds i8, i8* %466, i64 8
+  %469 = bitcast i8* %468 to i32*
+  store i32 %431, i32* %469, align 8, !tbaa !104
+  %470 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 4
+  %471 = load atomic i64, i64* %433 unordered, align 8, !tbaa !102
+  %472 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 3
+  %473 = load atomic i64, i64* %472 unordered, align 8, !tbaa !106
+  %474 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %470, i64 %471, i64 %473, i64 1)
+          to label %475 unwind label %582
 
-454:                                              ; preds = %.loopexit14
-  %455 = extractvalue { i8, i64 } %453, 0
-  %456 = and i8 %455, 1
-  %457 = icmp eq i8 %456, 0
-  br i1 %457, label %458, label %460
+475:                                              ; preds = %.loopexit15
+  %476 = extractvalue { i8, i64 } %474, 0
+  %477 = and i8 %476, 1
+  %478 = icmp eq i8 %477, 0
+  br i1 %478, label %479, label %481
 
-458:                                              ; preds = %454
-  %459 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %416, align 8, !tbaa !105
-  br label %517
+479:                                              ; preds = %475
+  %480 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %436 unordered, align 8, !tbaa !103
+  br label %538
 
-460:                                              ; preds = %454
-  %461 = extractvalue { i8, i64 } %453, 1
-  %462 = icmp eq i64 %461, 1
-  br i1 %462, label %463, label %465, !prof !109, !misexpect !110
+481:                                              ; preds = %475
+  %482 = extractvalue { i8, i64 } %474, 1
+  %483 = icmp eq i64 %482, 1
+  br i1 %483, label %484, label %486, !prof !107, !misexpect !108
 
-463:                                              ; preds = %460
-  %464 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %464, align 8, !tbaa !111
-  br label %469
+484:                                              ; preds = %481
+  %485 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %485, align 8, !tbaa !109
+  br label %490
 
-465:                                              ; preds = %460
-  %466 = call noalias i8* @calloc(i64 %461, i64 8) #37
-  %467 = bitcast i8* %466 to %"struct.std::__detail::_Hash_node_base"**
-  %468 = shl i64 %461, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %466, i8 0, i64 %468, i1 false) #37
-  br label %469
+486:                                              ; preds = %481
+  %487 = call noalias i8* @calloc(i64 %482, i64 8) #37
+  %488 = bitcast i8* %487 to %"struct.std::__detail::_Hash_node_base"**
+  %489 = shl i64 %482, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %487, i8 0, i64 %489, i1 false) #37
+  br label %490
 
-469:                                              ; preds = %465, %463
-  %470 = phi %"struct.std::__detail::_Hash_node_base"** [ %464, %463 ], [ %467, %465 ]
-  %471 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 2
-  %472 = bitcast %"struct.std::__detail::_Hash_node_base"* %471 to %"struct.std::__detail::_Hash_node.203"**
-  %473 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %472, align 8, !tbaa !112
-  %474 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %471, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %474, align 8, !tbaa !112
-  %475 = icmp eq %"struct.std::__detail::_Hash_node.203"* %473, null
-  br i1 %475, label %.loopexit, label %476
+490:                                              ; preds = %486, %484
+  %491 = phi %"struct.std::__detail::_Hash_node_base"** [ %485, %484 ], [ %488, %486 ]
+  %492 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 2
+  %493 = bitcast %"struct.std::__detail::_Hash_node_base"* %492 to %"struct.std::__detail::_Hash_node.203"**
+  %494 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %493 unordered, align 8, !tbaa !110
+  %495 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %492, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %495, align 8, !tbaa !110
+  %496 = icmp eq %"struct.std::__detail::_Hash_node.203"* %494, null
+  br i1 %496, label %.loopexit, label %497
 
-476:                                              ; preds = %469
-  %477 = bitcast %"struct.std::__detail::_Hash_node_base"* %471 to i64*
-  br label %478
+497:                                              ; preds = %490
+  %498 = bitcast %"struct.std::__detail::_Hash_node_base"* %492 to i64*
+  br label %499
 
-478:                                              ; preds = %507, %476
-  %479 = phi %"struct.std::__detail::_Hash_node.203"* [ %473, %476 ], [ %482, %507 ]
-  %480 = phi i64 [ 0, %476 ], [ %508, %507 ]
-  %481 = bitcast %"struct.std::__detail::_Hash_node.203"* %479 to %"struct.std::__detail::_Hash_node.203"**
-  %482 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %481, align 8, !tbaa !73
-  %483 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %479, i64 0, i32 0, i32 1
-  %484 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %483 to i32*
-  %485 = load i32, i32* %484, align 4, !tbaa !74
-  %486 = sext i32 %485 to i64
-  %487 = urem i64 %486, %461
-  %488 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %470, i64 %487
-  %489 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %488, align 8, !tbaa !3
-  %490 = icmp eq %"struct.std::__detail::_Hash_node_base"* %489, null
-  br i1 %490, label %491, label %500
+499:                                              ; preds = %528, %497
+  %500 = phi %"struct.std::__detail::_Hash_node.203"* [ %494, %497 ], [ %503, %528 ]
+  %501 = phi i64 [ 0, %497 ], [ %529, %528 ]
+  %502 = bitcast %"struct.std::__detail::_Hash_node.203"* %500 to %"struct.std::__detail::_Hash_node.203"**
+  %503 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %502 unordered, align 8, !tbaa !73
+  %504 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %500, i64 0, i32 0, i32 1
+  %505 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %504 to i32*
+  %506 = load atomic i32, i32* %505 unordered, align 4, !tbaa !66
+  %507 = sext i32 %506 to i64
+  %508 = urem i64 %507, %482
+  %509 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %491, i64 %508
+  %510 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %509 unordered, align 8, !tbaa !3
+  %511 = icmp eq %"struct.std::__detail::_Hash_node_base"* %510, null
+  br i1 %511, label %512, label %521
 
-491:                                              ; preds = %478
-  %492 = load i64, i64* %477, align 8, !tbaa !112
-  %493 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %479, i64 0, i32 0, i32 0
-  %494 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %479, i64 0, i32 0, i32 0, i32 0
-  %495 = bitcast %"struct.std::__detail::_Hash_node.203"* %479 to i64*
-  store i64 %492, i64* %495, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %493, %"struct.std::__detail::_Hash_node_base"** %474, align 8, !tbaa !112
-  store %"struct.std::__detail::_Hash_node_base"* %471, %"struct.std::__detail::_Hash_node_base"** %488, align 8, !tbaa !3
-  %496 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %494, align 8, !tbaa !73
-  %497 = icmp eq %"struct.std::__detail::_Hash_node_base"* %496, null
-  br i1 %497, label %507, label %498
+512:                                              ; preds = %499
+  %513 = load atomic i64, i64* %498 unordered, align 8, !tbaa !110
+  %514 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %500, i64 0, i32 0, i32 0
+  %515 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %500, i64 0, i32 0, i32 0, i32 0
+  %516 = bitcast %"struct.std::__detail::_Hash_node.203"* %500 to i64*
+  store i64 %513, i64* %516, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %514, %"struct.std::__detail::_Hash_node_base"** %495, align 8, !tbaa !110
+  store %"struct.std::__detail::_Hash_node_base"* %492, %"struct.std::__detail::_Hash_node_base"** %509, align 8, !tbaa !3
+  %517 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %515 unordered, align 8, !tbaa !73
+  %518 = icmp eq %"struct.std::__detail::_Hash_node_base"* %517, null
+  br i1 %518, label %528, label %519
 
-498:                                              ; preds = %491
-  %499 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %470, i64 %480
-  store %"struct.std::__detail::_Hash_node_base"* %493, %"struct.std::__detail::_Hash_node_base"** %499, align 8, !tbaa !3
-  br label %507
+519:                                              ; preds = %512
+  %520 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %491, i64 %501
+  store %"struct.std::__detail::_Hash_node_base"* %514, %"struct.std::__detail::_Hash_node_base"** %520, align 8, !tbaa !3
+  br label %528
 
-500:                                              ; preds = %478
-  %501 = bitcast %"struct.std::__detail::_Hash_node_base"* %489 to i64*
-  %502 = load i64, i64* %501, align 8, !tbaa !73
-  %503 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %479, i64 0, i32 0, i32 0
-  %504 = bitcast %"struct.std::__detail::_Hash_node.203"* %479 to i64*
-  store i64 %502, i64* %504, align 8, !tbaa !73
-  %505 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %488, align 8, !tbaa !3
-  %506 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %505, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %503, %"struct.std::__detail::_Hash_node_base"** %506, align 8, !tbaa !73
-  br label %507
+521:                                              ; preds = %499
+  %522 = bitcast %"struct.std::__detail::_Hash_node_base"* %510 to i64*
+  %523 = load atomic i64, i64* %522 unordered, align 8, !tbaa !73
+  %524 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %500, i64 0, i32 0, i32 0
+  %525 = bitcast %"struct.std::__detail::_Hash_node.203"* %500 to i64*
+  store i64 %523, i64* %525, align 8, !tbaa !73
+  %526 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %509 unordered, align 8, !tbaa !3
+  %527 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %526, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %524, %"struct.std::__detail::_Hash_node_base"** %527, align 8, !tbaa !73
+  br label %528
 
-507:                                              ; preds = %500, %498, %491
-  %508 = phi i64 [ %480, %500 ], [ %487, %491 ], [ %487, %498 ]
-  %509 = icmp eq %"struct.std::__detail::_Hash_node.203"* %482, null
-  br i1 %509, label %.loopexit, label %478
+528:                                              ; preds = %521, %519, %512
+  %529 = phi i64 [ %501, %521 ], [ %508, %512 ], [ %508, %519 ]
+  %530 = icmp eq %"struct.std::__detail::_Hash_node.203"* %503, null
+  br i1 %530, label %.loopexit, label %499
 
-.loopexit:                                        ; preds = %507, %469
-  %510 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %416, align 8, !tbaa !105
-  %511 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 5
-  %512 = icmp eq %"struct.std::__detail::_Hash_node_base"** %510, %511
-  br i1 %512, label %515, label %513
+.loopexit:                                        ; preds = %528, %490
+  %531 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %436 unordered, align 8, !tbaa !103
+  %532 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 5
+  %533 = icmp eq %"struct.std::__detail::_Hash_node_base"** %531, %532
+  br i1 %533, label %536, label %534
 
-513:                                              ; preds = %.loopexit
-  %514 = bitcast %"struct.std::__detail::_Hash_node_base"** %510 to i8*
-  call void @free(i8* %514) #37
-  br label %515
+534:                                              ; preds = %.loopexit
+  %535 = bitcast %"struct.std::__detail::_Hash_node_base"** %531 to i8*
+  call void @free(i8* %535) #37
+  br label %536
 
-515:                                              ; preds = %513, %.loopexit
-  store i64 %461, i64* %413, align 8, !tbaa !104
-  store %"struct.std::__detail::_Hash_node_base"** %470, %"struct.std::__detail::_Hash_node_base"*** %416, align 8, !tbaa !105
-  %516 = urem i64 %412, %461
-  br label %517
+536:                                              ; preds = %534, %.loopexit
+  store i64 %482, i64* %433, align 8, !tbaa !102
+  store %"struct.std::__detail::_Hash_node_base"** %491, %"struct.std::__detail::_Hash_node_base"*** %436, align 8, !tbaa !103
+  %537 = urem i64 %432, %482
+  br label %538
 
-517:                                              ; preds = %515, %458
-  %518 = phi %"struct.std::__detail::_Hash_node_base"** [ %459, %458 ], [ %470, %515 ]
-  %519 = phi i64 [ %415, %458 ], [ %516, %515 ]
-  %520 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %518, i64 %519
-  %521 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %520, align 8, !tbaa !3
-  %522 = icmp eq %"struct.std::__detail::_Hash_node_base"* %521, null
-  br i1 %522, label %529, label %523
+538:                                              ; preds = %536, %479
+  %539 = phi %"struct.std::__detail::_Hash_node_base"** [ %480, %479 ], [ %491, %536 ]
+  %540 = phi i64 [ %435, %479 ], [ %537, %536 ]
+  %541 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %539, i64 %540
+  %542 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %541 unordered, align 8, !tbaa !3
+  %543 = icmp eq %"struct.std::__detail::_Hash_node_base"* %542, null
+  br i1 %543, label %550, label %544
 
-523:                                              ; preds = %517
-  %524 = bitcast %"struct.std::__detail::_Hash_node_base"* %521 to i64*
-  %525 = load i64, i64* %524, align 8, !tbaa !73
-  %526 = bitcast i8* %446 to i64*
-  store i64 %525, i64* %526, align 8, !tbaa !73
-  %527 = bitcast %"struct.std::__detail::_Hash_node_base"** %520 to i8***
-  %528 = load i8**, i8*** %527, align 8, !tbaa !3
-  store i8* %446, i8** %528, align 8, !tbaa !73
-  br label %549
+544:                                              ; preds = %538
+  %545 = bitcast %"struct.std::__detail::_Hash_node_base"* %542 to i64*
+  %546 = load atomic i64, i64* %545 unordered, align 8, !tbaa !73
+  %547 = bitcast i8* %466 to i64*
+  store i64 %546, i64* %547, align 8, !tbaa !73
+  %548 = bitcast %"struct.std::__detail::_Hash_node_base"** %541 to i8***
+  %549 = load atomic i8**, i8*** %548 unordered, align 8, !tbaa !3
+  store i8* %466, i8** %549, align 8, !tbaa !73
+  br label %571
 
-529:                                              ; preds = %517
-  %530 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %319, i64 0, i32 2, i32 0, i32 2
-  %531 = bitcast %"struct.std::__detail::_Hash_node_base"* %530 to i64*
-  %532 = load i64, i64* %531, align 8, !tbaa !112
-  %533 = bitcast i8* %446 to i64*
-  store i64 %532, i64* %533, align 8, !tbaa !73
-  %534 = bitcast %"struct.std::__detail::_Hash_node_base"* %530 to i8**
-  store i8* %446, i8** %534, align 8, !tbaa !112
-  %535 = icmp eq i64 %532, 0
-  br i1 %535, label %546, label %536
+550:                                              ; preds = %538
+  %551 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %339, i64 0, i32 2, i32 0, i32 2
+  %552 = bitcast %"struct.std::__detail::_Hash_node_base"* %551 to i64*
+  %553 = load atomic i64, i64* %552 unordered, align 8, !tbaa !110
+  %554 = bitcast i8* %466 to i64*
+  store i64 %553, i64* %554, align 8, !tbaa !73
+  %555 = bitcast %"struct.std::__detail::_Hash_node_base"* %551 to i8**
+  store i8* %466, i8** %555, align 8, !tbaa !110
+  %556 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %467 unordered, align 8, !tbaa !73
+  %557 = icmp eq %"struct.std::__detail::_Hash_node_base"* %556, null
+  br i1 %557, label %568, label %558
 
-536:                                              ; preds = %529
-  %.cast.i.i.i.i = inttoptr i64 %532 to %"struct.std::__detail::_Hash_node_base"*
-  %537 = load i64, i64* %413, align 8, !tbaa !104
-  %538 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %539 = bitcast %"struct.std::__detail::_Hash_node_base"* %538 to i32*
-  %540 = load i32, i32* %539, align 4, !tbaa !74
-  %541 = sext i32 %540 to i64
-  %542 = urem i64 %541, %537
-  %543 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %518, i64 %542
-  %544 = bitcast %"struct.std::__detail::_Hash_node_base"** %543 to i8**
-  store i8* %446, i8** %544, align 8, !tbaa !3
-  %545 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %416, align 8, !tbaa !105
-  br label %546
+558:                                              ; preds = %550
+  %559 = load atomic i64, i64* %433 unordered, align 8, !tbaa !102
+  %560 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %556, i64 1
+  %561 = bitcast %"struct.std::__detail::_Hash_node_base"* %560 to i32*
+  %562 = load atomic i32, i32* %561 unordered, align 4, !tbaa !66
+  %563 = sext i32 %562 to i64
+  %564 = urem i64 %563, %559
+  %565 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %539, i64 %564
+  %566 = bitcast %"struct.std::__detail::_Hash_node_base"** %565 to i8**
+  store i8* %466, i8** %566, align 8, !tbaa !3
+  %567 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %436 unordered, align 8, !tbaa !103
+  br label %568
 
-546:                                              ; preds = %536, %529
-  %547 = phi %"struct.std::__detail::_Hash_node_base"** [ %518, %529 ], [ %545, %536 ]
-  %548 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %547, i64 %519
-  store %"struct.std::__detail::_Hash_node_base"* %530, %"struct.std::__detail::_Hash_node_base"** %548, align 8, !tbaa !3
-  br label %549
+568:                                              ; preds = %558, %550
+  %569 = phi %"struct.std::__detail::_Hash_node_base"** [ %539, %550 ], [ %567, %558 ]
+  %570 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %569, i64 %540
+  store %"struct.std::__detail::_Hash_node_base"* %551, %"struct.std::__detail::_Hash_node_base"** %570, align 8, !tbaa !3
+  br label %571
 
-549:                                              ; preds = %546, %523
-  %550 = load i64, i64* %451, align 8, !tbaa !108
-  %551 = add i64 %550, 1
-  store i64 %551, i64* %451, align 8, !tbaa !108
-  %552 = bitcast i8* %447 to %"struct.std::pair.50"*
-  br label %557
+571:                                              ; preds = %568, %544
+  %572 = load atomic i64, i64* %472 unordered, align 8, !tbaa !106
+  %573 = add i64 %572, 1
+  store i64 %573, i64* %472, align 8, !tbaa !106
+  %574 = bitcast i8* %468 to %"struct.std::pair.50"*
+  br label %579
 
-553:                                              ; preds = %444, %442
-  %554 = phi %"struct.std::__detail::_Hash_node.203"* [ %423, %444 ], [ %434, %442 ]
-  %555 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %554, i64 0, i32 0, i32 1
-  %556 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %555 to %"struct.std::pair.50"*
-  br label %557
+575:                                              ; preds = %464, %462
+  %576 = phi %"struct.std::__detail::_Hash_node.203"* [ %443, %464 ], [ %454, %462 ]
+  %577 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %576, i64 0, i32 0, i32 1
+  %578 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %577 to %"struct.std::pair.50"*
+  br label %579
 
-557:                                              ; preds = %553, %549
-  %558 = phi %"struct.std::pair.50"* [ %556, %553 ], [ %552, %549 ]
-  %559 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %558, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %409, %"class.(anonymous namespace)::Future"** %559, align 8, !tbaa !3
-  store i32 2, i32* %263, align 8, !tbaa.struct !113
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %264, align 8, !tbaa.struct !113
-  store i8* %318, i8** %265, align 8, !tbaa.struct !113
-  store %"class.(anonymous namespace)::Future"* %409, %"class.(anonymous namespace)::Future"** %266, align 8, !tbaa.struct !113
-  store i32 %311, i32* %267, align 8, !tbaa.struct !113
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %376, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
-  br label %.loopexit16
+579:                                              ; preds = %575, %571
+  %580 = phi %"struct.std::pair.50"* [ %578, %575 ], [ %574, %571 ]
+  %581 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %580, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %429, %"class.(anonymous namespace)::Future"** %581, align 8, !tbaa !3
+  store i32 2, i32* %283, align 8, !tbaa.struct !111
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %284, align 8, !tbaa.struct !111
+  store i8* %338, i8** %285, align 8, !tbaa.struct !111
+  store %"class.(anonymous namespace)::Future"* %429, %"class.(anonymous namespace)::Future"** %286, align 8, !tbaa.struct !111
+  store i32 %331, i32* %287, align 8, !tbaa.struct !111
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %396, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+  br label %.loopexit17
 
-560:                                              ; preds = %.loopexit14
-  %561 = landingpad { i8*, i32 }
+582:                                              ; preds = %.loopexit15
+  %583 = landingpad { i8*, i32 }
           cleanup
-  %562 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %563 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %562, i64 328
-  %564 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %563 to i32*
-  %565 = atomicrmw xchg i32* %564, i32 1 seq_cst, align 4
-  %566 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %320) #37
-  %567 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %562, null
-  br i1 %567, label %.body.i.i.i, label %586
+  %584 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %585 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %584, i64 328
+  %586 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %585 to i32*
+  %587 = atomicrmw xchg i32* %586, i32 1 seq_cst, align 4
+  %588 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %340) #37
+  %589 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %584, null
+  br i1 %589, label %.body.i.i.i, label %608
 
-.loopexit16:                                      ; preds = %557, %370, %368, %361, %.preheader15, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %568 = phi %"class.(anonymous namespace)::Future"* [ %409, %557 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %368 ], [ null, %370 ], [ null, %.preheader15 ], [ null, %361 ]
-  %569 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %570 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %569, i64 328
-  %571 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %570 to i32*
-  %572 = atomicrmw xchg i32* %571, i32 1 seq_cst, align 4
-  %573 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %320) #37
-  %574 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %569, null
-  br i1 %574, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %575
+.loopexit17:                                      ; preds = %579, %390, %388, %381, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %590 = phi %"class.(anonymous namespace)::Future"* [ %429, %579 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %388 ], [ null, %390 ], [ null, %.preheader16 ], [ null, %381 ]
+  %591 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %592 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %591, i64 328
+  %593 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %592 to i32*
+  %594 = atomicrmw xchg i32* %593, i32 1 seq_cst, align 4
+  %595 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %340) #37
+  %596 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %591, null
+  br i1 %596, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %597
 
-575:                                              ; preds = %.loopexit16
-  %576 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %570 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %577 = atomicrmw xchg i32* %571, i32 %572 seq_cst, align 4
-  %578 = icmp eq i32 %577, 1
-  %579 = icmp eq i32 %572, 0
-  %580 = and i1 %579, %578
-  br i1 %580, label %581, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+597:                                              ; preds = %.loopexit17
+  %598 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %592 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %599 = atomicrmw xchg i32* %593, i32 %594 seq_cst, align 4
+  %600 = icmp eq i32 %599, 1
+  %601 = icmp eq i32 %594, 0
+  %602 = and i1 %601, %600
+  br i1 %602, label %603, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-581:                                              ; preds = %575
-  %582 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %583 = and i8 %582, 1
-  %584 = icmp eq i8 %583, 0
-  br i1 %584, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %585
+603:                                              ; preds = %597
+  %604 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %605 = and i8 %604, 1
+  %606 = icmp eq i8 %605, 0
+  br i1 %606, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %607
 
-585:                                              ; preds = %581
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %576) #37
+607:                                              ; preds = %603
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %598) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-586:                                              ; preds = %560
-  %587 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %563 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %588 = atomicrmw xchg i32* %564, i32 %565 seq_cst, align 4
-  %589 = icmp eq i32 %588, 1
-  %590 = icmp eq i32 %565, 0
-  %591 = and i1 %590, %589
-  br i1 %591, label %592, label %.body.i.i.i
+608:                                              ; preds = %582
+  %609 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %585 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %610 = atomicrmw xchg i32* %586, i32 %587 seq_cst, align 4
+  %611 = icmp eq i32 %610, 1
+  %612 = icmp eq i32 %587, 0
+  %613 = and i1 %612, %611
+  br i1 %613, label %614, label %.body.i.i.i
 
-592:                                              ; preds = %586
-  %593 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %594 = and i8 %593, 1
-  %595 = icmp eq i8 %594, 0
-  br i1 %595, label %.body.i.i.i, label %596
+614:                                              ; preds = %608
+  %615 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %616 = and i8 %615, 1
+  %617 = icmp eq i8 %616, 0
+  br i1 %617, label %.body.i.i.i, label %618
 
-596:                                              ; preds = %592
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %587) #37
+618:                                              ; preds = %614
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %609) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %585, %581, %575, %.loopexit16
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %262)
-  %597 = icmp eq %"class.(anonymous namespace)::Future"* %568, null
-  br i1 %597, label %598, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %607, %603, %597, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %282)
+  %619 = icmp eq %"class.(anonymous namespace)::Future"* %590, null
+  br i1 %619, label %620, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-598:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+620:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %599 unwind label %602
+          to label %621 unwind label %624
 
-599:                                              ; preds = %598
+621:                                              ; preds = %620
   unreachable
 
-600:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %601 = landingpad { i8*, i32 }
+622:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %623 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-602:                                              ; preds = %598
-  %603 = landingpad { i8*, i32 }
+624:                                              ; preds = %620
+  %625 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %602, %600, %596, %592, %586, %560
-  %604 = phi { i8*, i32 } [ %601, %600 ], [ %603, %602 ], [ %561, %586 ], [ %561, %592 ], [ %561, %596 ], [ %561, %560 ]
-  %605 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %606 = load i64, i64* %259, align 8, !tbaa !9
-  %607 = bitcast %"class.kotlin::mm::ShadowStack"* %605 to i64*
-  store i64 %606, i64* %607, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %256) #37
-  resume { i8*, i32 } %604
+.body.i.i.i:                                      ; preds = %624, %622, %618, %614, %608, %582
+  %626 = phi { i8*, i32 } [ %623, %622 ], [ %625, %624 ], [ %583, %608 ], [ %583, %614 ], [ %583, %618 ], [ %583, %582 ]
+  %627 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %628 = load atomic i64, i64* %279 unordered, align 8, !tbaa !9
+  %629 = bitcast %"class.kotlin::mm::ShadowStack"* %627 to i64*
+  store i64 %628, i64* %629, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %276) #37
+  resume { i8*, i32 } %626
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %608 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %568, i64 0, i32 1
-  %609 = load i32, i32* %608, align 4, !tbaa !103
-  %610 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %611 = load i64, i64* %259, align 8, !tbaa !9
-  %612 = bitcast %"class.kotlin::mm::ShadowStack"* %610 to i64*
-  store i64 %611, i64* %612, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %256) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %136)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %136, i8 0, i32 32, i1 immarg false) #49
-  %613 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %614 = bitcast %"class.kotlin::mm::ShadowStack"* %613 to i64*
-  %615 = load i64, i64* %614, align 8, !tbaa !7
-  store i64 %615, i64* %140, align 8, !tbaa !9
-  %616 = bitcast %"class.kotlin::mm::ShadowStack"* %613 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %616, align 8, !tbaa !7
-  store i32 0, i32* %142, align 8, !tbaa !12
-  store i32 4, i32* %143, align 4, !tbaa !13
-  %617 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %618 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %617 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %619 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %618, align 8, !tbaa !3
-  %620 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %619, i64 0, i32 2, i32 1
-  %621 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %620, i64 24) #37
-  %622 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621, i64 1
-  %623 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621, i64 2
-  %624 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %623 to %struct.TypeInfo**
-  %625 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622 to i64*
-  store i64 0, i64* %625, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %624, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %623, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %144, align 8, !tbaa !3
-  %626 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621, i64 3
-  %627 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %626 to i32*
-  store i32 %609, i32* %627, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %623, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %268, align 8, !tbaa !3
-  %628 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %629 = load i64, i64* %140, align 8, !tbaa !9
-  %630 = bitcast %"class.kotlin::mm::ShadowStack"* %628 to i64*
-  store i64 %629, i64* %630, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %136)
-  %631 = load i32, i32* %251, align 8, !tbaa !18
-  %632 = zext i32 %631 to i64
-  %633 = icmp ult i64 %indvars.iv48, %632
-  br i1 %633, label %Kotlin_Array_set.exit.i, label %634
+  %630 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %590, i64 0, i32 1
+  %631 = load atomic i32, i32* %630 unordered, align 4, !tbaa !101
+  %632 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %633 = load atomic i64, i64* %279 unordered, align 8, !tbaa !9
+  %634 = bitcast %"class.kotlin::mm::ShadowStack"* %632 to i64*
+  store i64 %633, i64* %634, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %276) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %154)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %154, i8 0, i32 32, i1 immarg false) #49
+  %635 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %636 = bitcast %"class.kotlin::mm::ShadowStack"* %635 to i64*
+  %637 = load atomic i64, i64* %636 unordered, align 8, !tbaa !7
+  store i64 %637, i64* %158, align 8, !tbaa !9
+  %638 = bitcast %"class.kotlin::mm::ShadowStack"* %635 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %638, align 8, !tbaa !7
+  store i32 0, i32* %160, align 8, !tbaa !12
+  store i32 4, i32* %161, align 4, !tbaa !13
+  %639 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %640 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %639 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %641 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %640 unordered, align 8, !tbaa !3
+  %642 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %641, i64 0, i32 2, i32 1
+  %643 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %642, i64 24) #37
+  %644 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, i64 1
+  %645 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, i64 2
+  %646 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645 to %struct.TypeInfo**
+  %647 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644 to i64*
+  store i64 0, i64* %647, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %646, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %162, align 8, !tbaa !3
+  %648 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, i64 3
+  %649 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %648 to i32*
+  store i32 %631, i32* %649, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %288, align 8, !tbaa !3
+  %650 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %651 = load atomic i64, i64* %158 unordered, align 8, !tbaa !9
+  %652 = bitcast %"class.kotlin::mm::ShadowStack"* %650 to i64*
+  store i64 %651, i64* %652, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %154)
+  %653 = load atomic i32, i32* %271 unordered, align 8, !tbaa !18
+  %654 = zext i32 %653 to i64
+  %655 = icmp ult i64 %indvars.iv49, %654
+  br i1 %655, label %Kotlin_Array_set.exit.i, label %656
 
-634:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+656:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %635 = load atomic volatile i64, i64* %269 monotonic, align 8
-  %636 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %270, i64 %indvars.iv48
-  %637 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %636, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %623, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %637, align 8, !tbaa !3
-  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
+  %657 = load atomic volatile i64, i64* %289 monotonic, align 8
+  %658 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %290, i64 %indvars.iv49
+  %659 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %658, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %659, align 8, !tbaa !3
+  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
   br label %loop_check.i
 
 loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
-  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
-  %exitcond51.not = icmp eq i64 %indvars.iv48, %wide.trip.count50
-  br i1 %exitcond51.not, label %loop_exit.i, label %while_loop.i
+  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
+  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
+  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i
 
 loop_exit.i:                                      ; preds = %loop_check.i
-  %638 = load i32, i32* %251, align 8, !tbaa !18
-  %639 = icmp sgt i32 %638, 0
-  %smax = select i1 %639, i32 %638, i32 0
+  %660 = load atomic i32, i32* %271 unordered, align 8, !tbaa !18
+  %661 = icmp sgt i32 %660, 0
+  %smax = select i1 %661, i32 %660, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %640 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %641 = and i8 %640, 1
-  %642 = icmp eq i8 %641, 0
-  br i1 %642, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %643
+  %662 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %663 = and i8 %662, 1
+  %664 = icmp eq i8 %663, 0
+  br i1 %664, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %665
 
-643:                                              ; preds = %while_loop18.i
+665:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %643, %while_loop18.i
-  %644 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %270, i64 %indvars.iv
-  %645 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644 to %struct.ObjHeader**
-  %646 = load %struct.ObjHeader*, %struct.ObjHeader** %645, align 8, !tbaa !3
-  store %struct.ObjHeader* %646, %struct.ObjHeader** %210, align 8, !tbaa !3
-  %647 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %646, i64 1
-  %648 = bitcast %struct.ObjHeader* %647 to i32*
-  %649 = load i32, i32* %648, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %665, %while_loop18.i
+  %666 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %290, i64 %indvars.iv
+  %667 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %666 to %struct.ObjHeader**
+  %668 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %667 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %668, %struct.ObjHeader** %229, align 8, !tbaa !3
+  %669 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %668, i64 1
+  %670 = bitcast %struct.ObjHeader* %669 to i32*
+  %671 = load atomic i32, i32* %670 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %136)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %136, i8 0, i32 32, i1 immarg false) #49
-  %650 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %651 = bitcast %"class.kotlin::mm::ShadowStack"* %650 to i64*
-  %652 = load i64, i64* %651, align 8, !tbaa !7
-  store i64 %652, i64* %140, align 8, !tbaa !9
-  %653 = bitcast %"class.kotlin::mm::ShadowStack"* %650 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %653, align 8, !tbaa !7
-  store i32 0, i32* %142, align 8, !tbaa !12
-  store i32 4, i32* %143, align 4, !tbaa !13
-  %654 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %655 = icmp eq i32 %654, 2
-  br i1 %655, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %154)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %154, i8 0, i32 32, i1 immarg false) #49
+  %672 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %673 = bitcast %"class.kotlin::mm::ShadowStack"* %672 to i64*
+  %674 = load atomic i64, i64* %673 unordered, align 8, !tbaa !7
+  store i64 %674, i64* %158, align 8, !tbaa !9
+  %675 = bitcast %"class.kotlin::mm::ShadowStack"* %672 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %675, align 8, !tbaa !7
+  store i32 0, i32* %160, align 8, !tbaa !12
+  store i32 4, i32* %161, align 4, !tbaa !13
+  %676 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %677 = icmp eq i32 %676, 2
+  br i1 %677, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %656 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %657 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %656, %struct.ObjHeader** nonnull %137)
-  store %struct.ObjHeader* %657, %struct.ObjHeader** %137, align 8, !tbaa !3
-  %658 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %659 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %658, i64 0, i32 0
-  %660 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %661 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %660, i64 328
-  %662 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %661 to i32*
-  %663 = atomicrmw xchg i32* %662, i32 1 seq_cst, align 4
-  %664 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %659) #37
-  %665 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %660, null
-  br i1 %665, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %666
+  %678 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %679 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %678, %struct.ObjHeader** nonnull %155)
+  store %struct.ObjHeader* %679, %struct.ObjHeader** %155, align 8, !tbaa !3
+  %680 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %681 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %680, i64 0, i32 0
+  %682 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %683 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %682, i64 328
+  %684 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683 to i32*
+  %685 = atomicrmw xchg i32* %684, i32 1 seq_cst, align 4
+  %686 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %681) #37
+  %687 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %682, null
+  br i1 %687, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %688
 
-666:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %667 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %661 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %668 = atomicrmw xchg i32* %662, i32 %663 seq_cst, align 4
-  %669 = icmp eq i32 %668, 1
-  %670 = icmp eq i32 %663, 0
-  %671 = and i1 %670, %669
-  br i1 %671, label %672, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+688:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %689 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %690 = atomicrmw xchg i32* %684, i32 %685 seq_cst, align 4
+  %691 = icmp eq i32 %690, 1
+  %692 = icmp eq i32 %685, 0
+  %693 = and i1 %692, %691
+  br i1 %693, label %694, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-672:                                              ; preds = %666
-  %673 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %674 = and i8 %673, 1
-  %675 = icmp eq i8 %674, 0
-  br i1 %675, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %676
+694:                                              ; preds = %688
+  %695 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %696 = and i8 %695, 1
+  %697 = icmp eq i8 %696, 0
+  br i1 %697, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %698
 
-676:                                              ; preds = %672
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %667) #37
+698:                                              ; preds = %694
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %689) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %676, %672, %666, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %677 = sext i32 %649 to i64
-  %678 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %658, i64 0, i32 2, i32 0, i32 1
-  %679 = load i64, i64* %678, align 8, !tbaa !104
-  %680 = urem i64 %677, %679
-  %681 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %658, i64 0, i32 2, i32 0, i32 0
-  %682 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %681, align 8, !tbaa !105
-  %683 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %682, i64 %680
-  %684 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %683, align 8, !tbaa !3
-  %685 = icmp eq %"struct.std::__detail::_Hash_node_base"* %684, null
-  br i1 %685, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %686
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %698, %694, %688, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %699 = sext i32 %671 to i64
+  %700 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %680, i64 0, i32 2, i32 0, i32 1
+  %701 = load atomic i64, i64* %700 unordered, align 8, !tbaa !102
+  %702 = urem i64 %699, %701
+  %703 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %680, i64 0, i32 2, i32 0, i32 0
+  %704 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %703 unordered, align 8, !tbaa !103
+  %705 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %704, i64 %702
+  %706 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %705 unordered, align 8, !tbaa !3
+  %707 = icmp eq %"struct.std::__detail::_Hash_node_base"* %706, null
+  br i1 %707, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %708
 
-686:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %687 = bitcast %"struct.std::__detail::_Hash_node_base"* %684 to %"struct.std::__detail::_Hash_node.203"**
-  %688 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %687, align 8, !tbaa !73
-  %689 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %688, i64 0, i32 0, i32 1
-  %690 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %689 to i32*
-  %691 = load i32, i32* %690, align 4, !tbaa !74
-  %692 = icmp eq i32 %691, %649
-  br i1 %692, label %709, label %.preheader
+708:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %709 = bitcast %"struct.std::__detail::_Hash_node_base"* %706 to %"struct.std::__detail::_Hash_node.203"**
+  %710 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %709 unordered, align 8, !tbaa !73
+  %711 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %710, i64 0, i32 0, i32 1
+  %712 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %711 to i32*
+  %713 = load atomic i32, i32* %712 unordered, align 4, !tbaa !66
+  %714 = icmp eq i32 %713, %671
+  br i1 %714, label %731, label %.preheader
 
-693:                                              ; preds = %700
-  %694 = icmp eq i32 %703, %649
-  br i1 %694, label %707, label %.preheader
+715:                                              ; preds = %722
+  %716 = icmp eq i32 %725, %671
+  br i1 %716, label %729, label %.preheader
 
-.preheader:                                       ; preds = %693, %686
-  %695 = phi %"struct.std::__detail::_Hash_node.203"* [ %699, %693 ], [ %688, %686 ]
-  %696 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %695, i64 0, i32 0, i32 0, i32 0
-  %697 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %696, align 8, !tbaa !73
-  %698 = icmp eq %"struct.std::__detail::_Hash_node_base"* %697, null
-  %699 = bitcast %"struct.std::__detail::_Hash_node_base"* %697 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %698, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %700
+.preheader:                                       ; preds = %715, %708
+  %717 = phi %"struct.std::__detail::_Hash_node.203"* [ %721, %715 ], [ %710, %708 ]
+  %718 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %717, i64 0, i32 0, i32 0, i32 0
+  %719 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %718 unordered, align 8, !tbaa !73
+  %720 = icmp eq %"struct.std::__detail::_Hash_node_base"* %719, null
+  %721 = bitcast %"struct.std::__detail::_Hash_node_base"* %719 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %720, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %722
 
-700:                                              ; preds = %.preheader
-  %701 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %697, i64 1
-  %702 = bitcast %"struct.std::__detail::_Hash_node_base"* %701 to i32*
-  %703 = load i32, i32* %702, align 4, !tbaa !74
-  %704 = sext i32 %703 to i64
-  %705 = urem i64 %704, %679
-  %706 = icmp eq i64 %705, %680
-  br i1 %706, label %693, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+722:                                              ; preds = %.preheader
+  %723 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %719, i64 1
+  %724 = bitcast %"struct.std::__detail::_Hash_node_base"* %723 to i32*
+  %725 = load atomic i32, i32* %724 unordered, align 4, !tbaa !66
+  %726 = sext i32 %725 to i64
+  %727 = urem i64 %726, %701
+  %728 = icmp eq i64 %727, %702
+  br i1 %728, label %715, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-707:                                              ; preds = %693
-  %708 = icmp eq %"struct.std::__detail::_Hash_node.203"* %695, null
-  br i1 %708, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %711
+729:                                              ; preds = %715
+  %730 = icmp eq %"struct.std::__detail::_Hash_node.203"* %717, null
+  br i1 %730, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %733
 
-709:                                              ; preds = %686
-  %710 = icmp eq %"struct.std::__detail::_Hash_node.203"* %688, null
-  br i1 %710, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %711
+731:                                              ; preds = %708
+  %732 = icmp eq %"struct.std::__detail::_Hash_node.203"* %710, null
+  br i1 %732, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %733
 
-711:                                              ; preds = %709, %707
-  %712 = phi %"struct.std::__detail::_Hash_node.203"* [ %699, %707 ], [ %688, %709 ]
-  %713 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %712, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %714 = bitcast i8* %713 to %"class.(anonymous namespace)::Future"**
-  %715 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %714, align 8, !tbaa !114
-  %716 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %715, i64 0, i32 3
-  %717 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %718 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717, i64 328
-  %719 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718 to i32*
-  %720 = atomicrmw xchg i32* %719, i32 1 seq_cst, align 4
-  %721 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %716) #37
-  %722 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717, null
-  br i1 %722, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %723
+733:                                              ; preds = %731, %729
+  %734 = phi %"struct.std::__detail::_Hash_node.203"* [ %721, %729 ], [ %710, %731 ]
+  %735 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %734, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %736 = bitcast i8* %735 to %"class.(anonymous namespace)::Future"**
+  %737 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %736 unordered, align 8, !tbaa !112
+  %738 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %737, i64 0, i32 3
+  %739 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %740 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %739, i64 328
+  %741 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %740 to i32*
+  %742 = atomicrmw xchg i32* %741, i32 1 seq_cst, align 4
+  %743 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %738) #37
+  %744 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %739, null
+  br i1 %744, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %745
 
-723:                                              ; preds = %711
-  %724 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %725 = atomicrmw xchg i32* %719, i32 %720 seq_cst, align 4
-  %726 = icmp eq i32 %725, 1
-  %727 = icmp eq i32 %720, 0
-  %728 = and i1 %727, %726
-  br i1 %728, label %729, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+745:                                              ; preds = %733
+  %746 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %740 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %747 = atomicrmw xchg i32* %741, i32 %742 seq_cst, align 4
+  %748 = icmp eq i32 %747, 1
+  %749 = icmp eq i32 %742, 0
+  %750 = and i1 %749, %748
+  br i1 %750, label %751, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-729:                                              ; preds = %723
-  %730 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %731 = and i8 %730, 1
-  %732 = icmp eq i8 %731, 0
-  br i1 %732, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %733
+751:                                              ; preds = %745
+  %752 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %753 = and i8 %752, 1
+  %754 = icmp eq i8 %753, 0
+  br i1 %754, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %755
 
-733:                                              ; preds = %729
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %724) #37
+755:                                              ; preds = %751
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %746) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %733, %729, %723, %711
-  %734 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %715, i64 0, i32 0
-  %735 = load i32, i32* %734, align 8, !tbaa !101
-  %736 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %737 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736, i64 328
-  %738 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737 to i32*
-  %739 = atomicrmw xchg i32* %738, i32 1 seq_cst, align 4
-  %740 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %716) #37
-  %741 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736, null
-  br i1 %741, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %742
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %755, %751, %745, %733
+  %756 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %737, i64 0, i32 0
+  %757 = load atomic i32, i32* %756 unordered, align 8, !tbaa !99
+  %758 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %759 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %758, i64 328
+  %760 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %759 to i32*
+  %761 = atomicrmw xchg i32* %760, i32 1 seq_cst, align 4
+  %762 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %738) #37
+  %763 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %758, null
+  br i1 %763, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %764
 
-742:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %743 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %744 = atomicrmw xchg i32* %738, i32 %739 seq_cst, align 4
-  %745 = icmp eq i32 %744, 1
-  %746 = icmp eq i32 %739, 0
-  %747 = and i1 %746, %745
-  br i1 %747, label %748, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+764:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %765 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %759 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %766 = atomicrmw xchg i32* %760, i32 %761 seq_cst, align 4
+  %767 = icmp eq i32 %766, 1
+  %768 = icmp eq i32 %761, 0
+  %769 = and i1 %768, %767
+  br i1 %769, label %770, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-748:                                              ; preds = %742
-  %749 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %750 = and i8 %749, 1
-  %751 = icmp eq i8 %750, 0
-  br i1 %751, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %752
+770:                                              ; preds = %764
+  %771 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %772 = and i8 %771, 1
+  %773 = icmp eq i8 %772, 0
+  br i1 %773, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %774
 
-752:                                              ; preds = %748
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %743) #37
+774:                                              ; preds = %770
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %765) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %752, %748, %742, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %709, %707, %700, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %753 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %707 ], [ 0, %709 ], [ %735, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %735, %752 ], [ %735, %748 ], [ %735, %742 ], [ 0, %.preheader ], [ 0, %700 ]
-  %754 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %755 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %754, i64 328
-  %756 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %755 to i32*
-  %757 = atomicrmw xchg i32* %756, i32 1 seq_cst, align 4
-  %758 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %659) #37
-  %759 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %754, null
-  br i1 %759, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %760
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %774, %770, %764, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %731, %729, %722, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %775 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %729 ], [ 0, %731 ], [ %757, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %757, %774 ], [ %757, %770 ], [ %757, %764 ], [ 0, %.preheader ], [ 0, %722 ]
+  %776 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %777 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %776, i64 328
+  %778 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %777 to i32*
+  %779 = atomicrmw xchg i32* %778, i32 1 seq_cst, align 4
+  %780 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %681) #37
+  %781 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %776, null
+  br i1 %781, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %782
 
-760:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %761 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %755 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %762 = atomicrmw xchg i32* %756, i32 %757 seq_cst, align 4
-  %763 = icmp eq i32 %762, 1
-  %764 = icmp eq i32 %757, 0
-  %765 = and i1 %764, %763
-  br i1 %765, label %766, label %Kotlin_Worker_stateOfFuture.exit.i.i
+782:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %783 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %777 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %784 = atomicrmw xchg i32* %778, i32 %779 seq_cst, align 4
+  %785 = icmp eq i32 %784, 1
+  %786 = icmp eq i32 %779, 0
+  %787 = and i1 %786, %785
+  br i1 %787, label %788, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-766:                                              ; preds = %760
-  %767 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %768 = and i8 %767, 1
-  %769 = icmp eq i8 %768, 0
-  br i1 %769, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %770
+788:                                              ; preds = %782
+  %789 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %790 = and i8 %789, 1
+  %791 = icmp eq i8 %790, 0
+  br i1 %791, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %792
 
-770:                                              ; preds = %766
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %761) #37
+792:                                              ; preds = %788
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %783) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %770, %766, %760, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %771 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %657, i64 1
-  %772 = bitcast %struct.ObjHeader* %771 to i32*
-  %773 = load i32, i32* %772, align 8, !tbaa !18
-  %774 = icmp ugt i32 %773, %753
-  br i1 %774, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %775
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %792, %788, %782, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %793 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %679, i64 1
+  %794 = bitcast %struct.ObjHeader* %793 to i32*
+  %795 = load atomic i32, i32* %794 unordered, align 8, !tbaa !18
+  %796 = icmp ugt i32 %795, %775
+  br i1 %796, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %797
 
-775:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+797:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %776 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %657, i64 2
-  %777 = sext i32 %753 to i64
-  %778 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %776, i64 %777
-  %779 = bitcast %struct.ObjHeader* %778 to %struct.ObjHeader**
-  %780 = load %struct.ObjHeader*, %struct.ObjHeader** %779, align 8, !tbaa !3
-  store %struct.ObjHeader* %780, %struct.ObjHeader** %211, align 8, !tbaa !3
-  %781 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %782 = load i64, i64* %140, align 8, !tbaa !9
-  %783 = bitcast %"class.kotlin::mm::ShadowStack"* %781 to i64*
-  store i64 %782, i64* %783, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %136)
-  %784 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %780, i64 2
-  %785 = bitcast %struct.ObjHeader* %784 to i32*
-  %786 = load i32, i32* %785, align 4
-  switch i32 %786, label %when_next27.i [
+  %798 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %679, i64 2
+  %799 = sext i32 %775 to i64
+  %800 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %798, i64 %799
+  %801 = bitcast %struct.ObjHeader* %800 to %struct.ObjHeader**
+  %802 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %801 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %802, %struct.ObjHeader** %230, align 8, !tbaa !3
+  %803 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %804 = load atomic i64, i64* %158 unordered, align 8, !tbaa !9
+  %805 = bitcast %"class.kotlin::mm::ShadowStack"* %803 to i64*
+  store i64 %804, i64* %805, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %154)
+  %806 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %802, i64 2
+  %807 = bitcast %struct.ObjHeader* %806 to i32*
+  %808 = load atomic i32, i32* %807 unordered, align 4
+  switch i32 %808, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1310,71 +1344,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %649, %struct.ObjHeader** nonnull %212)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %671, %struct.ObjHeader** nonnull %231)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %787 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %788 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %789 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %788 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %790 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %789, align 8, !tbaa !3
-  %791 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %790, i64 0, i32 2, i32 1
-  %792 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %791, i64 56) #37
-  %793 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792, i64 1
-  %794 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792, i64 2
-  %795 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %794 to %struct.ObjHeader*
-  %796 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %794 to %struct.TypeInfo**
-  %797 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793 to i64*
-  store i64 0, i64* %797, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %796, align 8, !tbaa !14
-  %798 = bitcast %struct.ObjHeader** %787 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %794, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %798, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %795, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @137 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %795) #50
+  %809 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %810 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %811 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %810 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %812 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %811 unordered, align 8, !tbaa !3
+  %813 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %812, i64 0, i32 2, i32 1
+  %814 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %813, i64 56) #37
+  %815 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814, i64 1
+  %816 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814, i64 2
+  %817 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %816 to %struct.ObjHeader*
+  %818 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %816 to %struct.TypeInfo**
+  %819 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815 to i64*
+  store i64 0, i64* %819, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %818, align 8, !tbaa !14
+  %820 = bitcast %struct.ObjHeader** %809 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %816, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %820, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %817, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @137 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %817) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %799 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %800 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %649, %struct.ObjHeader** nonnull %800)
-  %801 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %802 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %801 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %803 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %802, align 8, !tbaa !3
-  %804 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %803, i64 0, i32 2, i32 1
-  %805 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %804, i64 56) #37
-  %806 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %805, i64 1
-  %807 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %805, i64 2
-  %808 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %807 to %struct.ObjHeader*
-  %809 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %807 to %struct.TypeInfo**
-  %810 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %806 to i64*
-  store i64 0, i64* %810, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %809, align 8, !tbaa !14
-  %811 = bitcast %struct.ObjHeader** %799 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %807, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %811, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %808, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @138 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %808) #50
+  %821 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %822 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %671, %struct.ObjHeader** nonnull %822)
+  %823 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %824 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %823 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %825 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %824 unordered, align 8, !tbaa !3
+  %826 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %825, i64 0, i32 2, i32 1
+  %827 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %826, i64 56) #37
+  %828 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827, i64 1
+  %829 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827, i64 2
+  %830 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %829 to %struct.ObjHeader*
+  %831 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %829 to %struct.TypeInfo**
+  %832 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828 to i64*
+  store i64 0, i64* %832, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %831, align 8, !tbaa !14
+  %833 = bitcast %struct.ObjHeader** %821 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %829, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %833, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %830, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @138 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %830) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %812 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %813 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %649, %struct.ObjHeader** nonnull %813)
-  %814 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %815 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %814 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %816 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %815, align 8, !tbaa !3
-  %817 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %816, i64 0, i32 2, i32 1
-  %818 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %817, i64 56) #37
-  %819 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %818, i64 1
-  %820 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %818, i64 2
-  %821 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %820 to %struct.ObjHeader*
-  %822 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %820 to %struct.TypeInfo**
-  %823 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %819 to i64*
-  store i64 0, i64* %823, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %822, align 8, !tbaa !14
-  %824 = bitcast %struct.ObjHeader** %812 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %820, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %824, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %821, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @139 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %821) #50
+  %834 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %835 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %671, %struct.ObjHeader** nonnull %835)
+  %836 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %837 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %836 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %838 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %837 unordered, align 8, !tbaa !3
+  %839 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %838, i64 0, i32 2, i32 1
+  %840 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %839, i64 56) #37
+  %841 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840, i64 1
+  %842 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840, i64 2
+  %843 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %842 to %struct.ObjHeader*
+  %844 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %842 to %struct.TypeInfo**
+  %845 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841 to i64*
+  store i64 0, i64* %845, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %844, align 8, !tbaa !14
+  %846 = bitcast %struct.ObjHeader** %834 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %842, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %846, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %843, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @139 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %843) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1387,10 +1421,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %825 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %826 = bitcast %"class.kotlin::mm::ShadowStack"* %825 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %207)
-  %827 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %827, i64* %826, align 8, !tbaa !7
+  %847 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %848 = bitcast %"class.kotlin::mm::ShadowStack"* %847 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %226)
+  %849 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %849, i64* %848, align 8, !tbaa !7
   ret void
 }
