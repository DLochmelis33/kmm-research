--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:50:27.520596043 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:07.660377603 +0200
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
@@ -52,1257 +52,1291 @@
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
-  store i32 100, i32* %51, align 8
-  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %53 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %52 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %54 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %53, align 8, !tbaa !3
-  %55 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %54, i64 0, i32 2, i32 1
-  %56 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %55, i64 824) #37
-  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 1
-  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 2
-  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.TypeInfo**
-  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %59, align 8, !tbaa !16
-  %61 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 3
-  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61 to i32*
-  store i32 100, i32* %62, align 8, !tbaa !18
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
+  store i32 100, i32* %49, align 8
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
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %60, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @128 to %struct.ObjHeader*))
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
-  %75 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %74, i64 40024) #37
-  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 1
-  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 2
-  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.TypeInfo**
-  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %79, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %78, align 8, !tbaa !16
-  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 3
-  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to i32*
-  store i32 10000, i32* %81, align 8, !tbaa !18
-  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.ObjHeader*
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %64, align 8, !tbaa !3
-  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i64*
-  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 4
-  %85 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84 to i32*
+Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %88, %while_loop.i6
+  %89 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %90 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %89 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %91 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %90 unordered, align 8, !tbaa !3
+  %92 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %91, i64 0, i32 2, i32 1
+  %93 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %92, i64 40024) #37
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 1
+  %95 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 2
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.TypeInfo**
+  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %97, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !16
+  %98 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 3
+  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %98 to i32*
+  store i32 10000, i32* %99, align 8, !tbaa !18
+  %100 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.ObjHeader*
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %82, align 8, !tbaa !3
+  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to i64*
+  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 4
+  %103 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to i32*
   br label %loop_check12.i
 
 while_loop13.i:                                   ; preds = %loop_check12.i
-  %86 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %87 = and i8 %86, 1
-  %88 = icmp eq i8 %87, 0
-  br i1 %88, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %89
+  %104 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %105 = and i8 %104, 1
+  %106 = icmp eq i8 %105, 0
+  br i1 %106, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %107
 
-89:                                               ; preds = %while_loop13.i
+107:                                              ; preds = %while_loop13.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit1.i
 
-Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %89, %while_loop13.i
-  %90 = load i32, i32* %81, align 8, !tbaa !18
-  %91 = zext i32 %90 to i64
-  %92 = icmp ult i64 %indvars.iv56, %91
-  br i1 %92, label %Kotlin_IntArray_set.exit.i, label %93
+Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %107, %while_loop13.i
+  %108 = load atomic i32, i32* %99 unordered, align 8, !tbaa !18
+  %109 = zext i32 %108 to i64
+  %110 = icmp ult i64 %indvars.iv57, %109
+  br i1 %110, label %Kotlin_IntArray_set.exit.i, label %111
 
-93:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
+111:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_IntArray_set.exit.i:                       ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
-  %94 = load atomic volatile i64, i64* %83 monotonic, align 8
-  %95 = getelementptr inbounds i32, i32* %85, i64 %indvars.iv56
-  %96 = trunc i64 %indvars.iv56 to i32
-  store i32 %96, i32* %95, align 4, !tbaa !74
-  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
+  %112 = load atomic volatile i64, i64* %101 monotonic, align 8
+  %113 = getelementptr inbounds i32, i32* %103, i64 %indvars.iv57
+  %114 = trunc i64 %indvars.iv57 to i32
+  store i32 %114, i32* %113, align 4, !tbaa !66
+  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
   br label %loop_check12.i
 
-loop_check12.i:                                   ; preds = %Kotlin_IntArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %Kotlin_IntArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  %exitcond58.not = icmp eq i64 %indvars.iv56, 10000
-  br i1 %exitcond58.not, label %loop_exit11.i, label %while_loop13.i
+loop_check12.i:                                   ; preds = %Kotlin_IntArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i7
+  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_IntArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
+  br i1 %exitcond59.not, label %loop_exit11.i, label %while_loop13.i
 
 loop_exit11.i:                                    ; preds = %loop_check12.i
-  %97 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<UIntArray-box>(kotlin.UIntArray?){}kotlin.Any?"(%struct.ObjHeader* nonnull %82, %struct.ObjHeader** nonnull %36)
-  %98 = load i32, i32* %62, align 8, !tbaa !18
-  %99 = zext i32 %98 to i64
-  %100 = icmp ult i64 %indvars.iv59, %99
-  br i1 %100, label %Kotlin_Array_set.exit2.i, label %101
+  %115 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<UIntArray-box>(kotlin.UIntArray?){}kotlin.Any?"(%struct.ObjHeader* nonnull %100, %struct.ObjHeader** nonnull %34)
+  %116 = load atomic i32, i32* %80 unordered, align 8, !tbaa !18
+  %117 = zext i32 %116 to i64
+  %118 = icmp ult i64 %indvars.iv60, %117
+  br i1 %118, label %Kotlin_Array_set.exit2.i, label %119
 
-101:                                              ; preds = %loop_exit11.i
+119:                                              ; preds = %loop_exit11.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit2.i:                         ; preds = %loop_exit11.i
-  %102 = load atomic volatile i64, i64* %65 monotonic, align 8
-  %103 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, i64 %indvars.iv59
-  %104 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103 to %struct.ObjHeader**
-  store %struct.ObjHeader* %97, %struct.ObjHeader** %104, align 8, !tbaa !3
-  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
-  br label %loop_check.i7
+  %120 = load atomic volatile i64, i64* %83 monotonic, align 8
+  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84, i64 %indvars.iv60
+  %122 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121 to %struct.ObjHeader**
+  store %struct.ObjHeader* %115, %struct.ObjHeader** %122, align 8, !tbaa !3
+  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
+  br label %loop_check.i9
 
-loop_check.i7:                                    ; preds = %Kotlin_Array_set.exit2.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %Kotlin_Array_set.exit2.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond61.not = icmp eq i64 %indvars.iv59, 100
-  br i1 %exitcond61.not, label %loop_exit.i8, label %while_loop.i4
+loop_check.i9:                                    ; preds = %Kotlin_Array_set.exit2.i, %AllocArrayInstance.exit.i5
+  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %Kotlin_Array_set.exit2.i ], [ 0, %AllocArrayInstance.exit.i5 ]
+  %exitcond63.not = icmp eq i64 %indvars.iv60, %wide.trip.count62
+  br i1 %exitcond63.not, label %loop_exit.i10, label %while_loop.i6
 
-loop_exit.i8:                                     ; preds = %loop_check.i7
-  %105 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %105, align 8, !tbaa !3
-  %106 = load i32, i32* %51, align 8
-  %107 = icmp slt i32 %106, 0
-  br i1 %107, label %when_case34.i, label %AllocArrayInstance.exit.i9
+loop_exit.i10:                                    ; preds = %loop_check.i9
+  %123 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %123, align 8, !tbaa !3
+  %124 = load atomic i32, i32* %49 unordered, align 8
+  %125 = icmp slt i32 %124, 0
+  br i1 %125, label %when_case34.i, label %AllocArrayInstance.exit3.i
 
-when_case34.i:                                    ; preds = %loop_exit.i8
-  %108 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 9
-  %109 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %110 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %109 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %111 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %110, align 8, !tbaa !3
-  %112 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %111, i64 0, i32 2, i32 1
-  %113 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %112, i64 56) #37
-  %114 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113, i64 1
-  %115 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113, i64 2
-  %116 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115 to %struct.ObjHeader*
-  %117 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115 to %struct.TypeInfo**
-  %118 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114 to i64*
-  store i64 0, i64* %118, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %117, align 8, !tbaa !14
-  %119 = bitcast %struct.ObjHeader** %108 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %119, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %116, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @128 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %116) #50
+when_case34.i:                                    ; preds = %loop_exit.i10
+  %126 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %0, i64 0, i64 9
+  %127 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %128 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %127 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %129 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %128 unordered, align 8, !tbaa !3
+  %130 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %129, i64 0, i32 2, i32 1
+  %131 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %130, i64 56) #37
+  %132 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, i64 1
+  %133 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, i64 2
+  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to %struct.ObjHeader*
+  %135 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to %struct.TypeInfo**
+  %136 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132 to i64*
+  store i64 0, i64* %136, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %135, align 8, !tbaa !14
+  %137 = bitcast %struct.ObjHeader** %126 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %137, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %134, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @128 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %134) #50
   unreachable
 
-AllocArrayInstance.exit.i9:                       ; preds = %loop_exit.i8
-  %120 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %121 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %120 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %122 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %121, align 8, !tbaa !3
-  %123 = zext i32 %106 to i64
-  %124 = shl nuw nsw i64 %123, 3
-  %125 = add nuw nsw i64 %124, 31
-  %126 = and i64 %125, 68719476728
-  %127 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %122, i64 0, i32 2, i32 1
-  %128 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %127, i64 %126) #37
-  %129 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 1
-  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 2
-  %131 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to %struct.TypeInfo**
-  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %132, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %131, align 8, !tbaa !16
-  %133 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 3
-  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to i32*
-  store i32 %106, i32* %134, align 8, !tbaa !18
-  %135 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %135, align 8, !tbaa !3
-  %136 = bitcast %struct.ObjHeader** %38 to i64*
-  %137 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  %.sub.i.i11 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %138 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %139 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %140 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %141 = bitcast %struct.ObjHeader** %140 to i64*
-  %142 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %143 = bitcast %struct.ObjHeader** %142 to i32*
-  %144 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %139, i64 0, i32 3
-  %145 = bitcast %struct.ObjHeader** %138 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %146 = bitcast %struct.ObjHeader** %39 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %147 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to i64*
-  %148 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 4
-  %wide.trip.count54 = zext i32 %106 to i64
+AllocArrayInstance.exit3.i:                       ; preds = %loop_exit.i10
+  %138 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %139 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %138 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %140 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %139 unordered, align 8, !tbaa !3
+  %141 = zext i32 %124 to i64
+  %142 = shl nuw nsw i64 %141, 3
+  %143 = add nuw nsw i64 %142, 31
+  %144 = and i64 %143, 68719476728
+  %145 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %140, i64 0, i32 2, i32 1
+  %146 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %145, i64 %144) #37
+  %147 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, i64 1
+  %148 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, i64 2
+  %149 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148 to %struct.TypeInfo**
+  %150 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %150, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %149, align 8, !tbaa !16
+  %151 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, i64 3
+  %152 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %151 to i32*
+  store i32 %124, i32* %152, align 8, !tbaa !18
+  %153 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %153, align 8, !tbaa !3
+  %154 = bitcast %struct.ObjHeader** %36 to i64*
+  %155 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
+  %156 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %157 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %158 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %159 = bitcast %struct.ObjHeader** %158 to i64*
+  %160 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %161 = bitcast %struct.ObjHeader** %160 to i32*
+  %162 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %157, i64 0, i32 3
+  %163 = bitcast %struct.ObjHeader** %156 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %164 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %165 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148 to i64*
+  %166 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, i64 4
+  %wide.trip.count55 = zext i32 %124 to i64
   br label %loop_check45.i
 
 while_loop46.i:                                   ; preds = %loop_check45.i
-  %149 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %150 = and i8 %149, 1
-  %151 = icmp eq i8 %150, 0
-  br i1 %151, label %Kotlin_mm_safePointWhileLoopBody.exit3.i, label %152
+  %167 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %168 = and i8 %167, 1
+  %169 = icmp eq i8 %168, 0
+  br i1 %169, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %170
 
-152:                                              ; preds = %while_loop46.i
+170:                                              ; preds = %while_loop46.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit3.i
+  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i
 
-Kotlin_mm_safePointWhileLoopBody.exit3.i:         ; preds = %152, %while_loop46.i
-  %153 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %153, i64* %136, align 8, !tbaa !3
-  %154 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %155 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %154, i32 0)
-  %156 = icmp eq %class.Worker* %155, null
-  br i1 %156, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %157
+Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %170, %while_loop46.i
+  %171 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %171, i64* %154, align 8, !tbaa !3
+  %172 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %173 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %172, i32 0)
+  %174 = icmp eq %class.Worker* %173, null
+  br i1 %174, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %175
 
-157:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %158 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %159 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %158, i64 328
-  %160 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %159 to i32*
-  %161 = atomicrmw xchg i32* %160, i32 1 seq_cst, align 4
-  %162 = getelementptr inbounds %class.Worker, %class.Worker* %155, i64 0, i32 9
-  %163 = bitcast %class.Worker* %155 to i8*
-  %164 = call i32 @pthread_create(i64* nonnull %162, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %163) #37
-  %165 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %158, null
-  br i1 %165, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %166
+175:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %176 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %177 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %176, i64 328
+  %178 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %177 to i32*
+  %179 = atomicrmw xchg i32* %178, i32 1 seq_cst, align 4
+  %180 = getelementptr inbounds %class.Worker, %class.Worker* %173, i64 0, i32 9
+  %181 = bitcast %class.Worker* %173 to i8*
+  %182 = call i32 @pthread_create(i64* nonnull %180, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %181) #37
+  %183 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %176, null
+  br i1 %183, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %184
 
-166:                                              ; preds = %157
-  %167 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %159 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %168 = atomicrmw xchg i32* %160, i32 %161 seq_cst, align 4
-  %169 = icmp eq i32 %168, 1
-  %170 = icmp eq i32 %161, 0
-  %171 = and i1 %170, %169
-  br i1 %171, label %172, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+184:                                              ; preds = %175
+  %185 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %177 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %186 = atomicrmw xchg i32* %178, i32 %179 seq_cst, align 4
+  %187 = icmp eq i32 %186, 1
+  %188 = icmp eq i32 %179, 0
+  %189 = and i1 %188, %187
+  br i1 %189, label %190, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-172:                                              ; preds = %166
-  %173 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %174 = and i8 %173, 1
-  %175 = icmp eq i8 %174, 0
-  br i1 %175, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %176
+190:                                              ; preds = %184
+  %191 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %192 = and i8 %191, 1
+  %193 = icmp eq i8 %192, 0
+  br i1 %193, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %194
 
-176:                                              ; preds = %172
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %167) #37
-  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+194:                                              ; preds = %190
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %185) #37
+  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10: ; preds = %176, %172, %166, %157
-  %177 = getelementptr inbounds %class.Worker, %class.Worker* %155, i64 0, i32 0
-  %178 = load i32, i32* %177, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %194, %190, %184, %175
+  %195 = getelementptr inbounds %class.Worker, %class.Worker* %173, i64 0, i32 0
+  %196 = load atomic i32, i32* %195 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
-"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %179 = phi i32 [ %178, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit3.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %137)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %137, i8 0, i32 32, i1 immarg false) #49
-  %180 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %181 = bitcast %"class.kotlin::mm::ShadowStack"* %180 to i64*
-  %182 = load i64, i64* %181, align 8, !tbaa !7
-  store i64 %182, i64* %141, align 8, !tbaa !9
-  %183 = bitcast %"class.kotlin::mm::ShadowStack"* %180 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %183, align 8, !tbaa !7
-  store i32 0, i32* %143, align 8, !tbaa !12
-  store i32 4, i32* %144, align 4, !tbaa !13
-  %184 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %185 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %184 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %186 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %185, align 8, !tbaa !3
-  %187 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %186, i64 0, i32 2, i32 1
-  %188 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %187, i64 24) #37
-  %189 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188, i64 1
-  %190 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188, i64 2
-  %191 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190 to %struct.TypeInfo**
-  %192 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189 to i64*
-  store i64 0, i64* %192, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %191, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %145, align 8, !tbaa !3
-  %193 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188, i64 3
-  %194 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %193 to i32*
-  store i32 %179, i32* %194, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %146, align 8, !tbaa !3
-  %195 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %196 = load i64, i64* %141, align 8, !tbaa !9
-  %197 = bitcast %"class.kotlin::mm::ShadowStack"* %195 to i64*
-  store i64 %196, i64* %197, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %137)
-  %198 = load i32, i32* %134, align 8, !tbaa !18
-  %199 = zext i32 %198 to i64
-  %200 = icmp ult i64 %indvars.iv52, %199
-  br i1 %200, label %Kotlin_Array_set.exit.i12, label %201
+"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %197 = phi i32 [ %196, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit4.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %155)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %155, i8 0, i32 32, i1 immarg false) #49
+  %198 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %199 = bitcast %"class.kotlin::mm::ShadowStack"* %198 to i64*
+  %200 = load atomic i64, i64* %199 unordered, align 8, !tbaa !7
+  store i64 %200, i64* %159, align 8, !tbaa !9
+  %201 = bitcast %"class.kotlin::mm::ShadowStack"* %198 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %201, align 8, !tbaa !7
+  store i32 0, i32* %161, align 8, !tbaa !12
+  store i32 4, i32* %162, align 4, !tbaa !13
+  %202 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %203 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %202 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %204 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %203 unordered, align 8, !tbaa !3
+  %205 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %204, i64 0, i32 2, i32 1
+  %206 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %205, i64 24) #37
+  %207 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, i64 1
+  %208 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, i64 2
+  %209 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208 to %struct.TypeInfo**
+  %210 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207 to i64*
+  store i64 0, i64* %210, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %209, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %163, align 8, !tbaa !3
+  %211 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, i64 3
+  %212 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211 to i32*
+  store i32 %197, i32* %212, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %164, align 8, !tbaa !3
+  %213 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %214 = load atomic i64, i64* %159 unordered, align 8, !tbaa !9
+  %215 = bitcast %"class.kotlin::mm::ShadowStack"* %213 to i64*
+  store i64 %214, i64* %215, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %155)
+  %216 = load atomic i32, i32* %152 unordered, align 8, !tbaa !18
+  %217 = zext i32 %216 to i64
+  %218 = icmp ult i64 %indvars.iv53, %217
+  br i1 %218, label %Kotlin_Array_set.exit.i13, label %219
 
-201:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+219:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit.i12:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %202 = load atomic volatile i64, i64* %147 monotonic, align 8
-  %203 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148, i64 %indvars.iv52
-  %204 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %204, align 8, !tbaa !3
-  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
+Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+  %220 = load atomic volatile i64, i64* %165 monotonic, align 8
+  %221 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166, i64 %indvars.iv53
+  %222 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %221, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %222, align 8, !tbaa !3
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
-  %205 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %205, align 8, !tbaa !3
-  %206 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %207 = load i64, i64* %45, align 8, !tbaa !3
+  %223 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %223, align 8, !tbaa !3
+  %224 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %225 = load atomic i64, i64* %43 unordered, align 8, !tbaa !9
+  %226 = bitcast %"class.kotlin::mm::ShadowStack"* %224 to i64*
+  store i64 %225, i64* %226, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %33)
-  %208 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %208)
+  %227 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %227)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %208, i8 0, i32 136, i1 immarg false) #49
-  %209 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %210 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %211 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %212 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %213 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %214 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %215 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %216 = bitcast %struct.ObjHeader** %215 to i64*
-  store i64 %207, i64* %216, align 8, !tbaa !9
-  %217 = bitcast %"class.kotlin::mm::ShadowStack"* %206 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %217, align 8, !tbaa !7
-  %218 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %219 = bitcast %struct.ObjHeader** %218 to i32*
-  store i32 0, i32* %219, align 8, !tbaa !12
-  %220 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %214, i64 0, i32 3
-  store i32 17, i32* %220, align 4, !tbaa !13
-  %221 = load i32, i32* %51, align 8
-  %222 = icmp slt i32 %221, 0
-  br i1 %222, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %227, i8 0, i32 136, i1 immarg false) #49
+  %228 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %229 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %230 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %231 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %232 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %233 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %234 = load atomic i64, i64* %226 unordered, align 8, !tbaa !7
+  %235 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %236 = bitcast %struct.ObjHeader** %235 to i64*
+  store i64 %234, i64* %236, align 8, !tbaa !9
+  %237 = bitcast %"class.kotlin::mm::ShadowStack"* %224 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %237, align 8, !tbaa !7
+  %238 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %239 = bitcast %struct.ObjHeader** %238 to i32*
+  store i32 0, i32* %239, align 8, !tbaa !12
+  %240 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %233, i64 0, i32 3
+  store i32 17, i32* %240, align 4, !tbaa !13
+  %241 = load atomic i32, i32* %49 unordered, align 8
+  %242 = icmp slt i32 %241, 0
+  br i1 %242, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %223 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %224 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %225 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %224 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %226 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %225, align 8, !tbaa !3
-  %227 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %226, i64 0, i32 2, i32 1
-  %228 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %227, i64 56) #37
-  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, i64 1
-  %230 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, i64 2
-  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230 to %struct.ObjHeader*
-  %232 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230 to %struct.TypeInfo**
-  %233 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to i64*
-  store i64 0, i64* %233, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %232, align 8, !tbaa !14
-  %234 = bitcast %struct.ObjHeader** %223 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %234, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %231, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @128 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %231) #50
+  %243 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %244 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %245 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %244 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %246 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %245 unordered, align 8, !tbaa !3
+  %247 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %246, i64 0, i32 2, i32 1
+  %248 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %247, i64 56) #37
+  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 1
+  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 2
+  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to %struct.ObjHeader*
+  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to %struct.TypeInfo**
+  %253 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to i64*
+  store i64 0, i64* %253, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %252, align 8, !tbaa !14
+  %254 = bitcast %struct.ObjHeader** %243 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %254, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %251, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @128 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %251) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %235 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %236 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %237 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %238 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %239 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %238 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %240 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %239, align 8, !tbaa !3
-  %241 = zext i32 %221 to i64
-  %242 = shl nuw nsw i64 %241, 3
-  %243 = add nuw nsw i64 %242, 31
-  %244 = and i64 %243, 68719476728
-  %245 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %240, i64 0, i32 2, i32 1
-  %246 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %245, i64 %244) #37
-  %247 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 1
-  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 2
-  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to %struct.TypeInfo**
-  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %250, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %249, align 8, !tbaa !16
-  %251 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 3
-  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251 to i32*
-  store i32 %221, i32* %252, align 8, !tbaa !18
-  %253 = bitcast %struct.ObjHeader** %237 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %253, align 8, !tbaa !3
-  %254 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %255 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %254 to %struct.ObjHeader**
-  %256 = bitcast %struct.ObjHeader** %236 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %257 = bitcast %class.ObjHolder* %3 to i8*
-  %258 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %259 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %260 = bitcast %struct.FrameOverlay.6** %259 to i64*
-  %261 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %262 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %263 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %264 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %265 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %266 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %267 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %268 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %269 = bitcast %struct.ObjHeader** %235 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %270 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to i64*
-  %271 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 4
-  %wide.trip.count50 = zext i32 %221 to i64
+  %255 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %256 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %257 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %258 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %259 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %258 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %260 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %259 unordered, align 8, !tbaa !3
+  %261 = zext i32 %241 to i64
+  %262 = shl nuw nsw i64 %261, 3
+  %263 = add nuw nsw i64 %262, 31
+  %264 = and i64 %263, 68719476728
+  %265 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %260, i64 0, i32 2, i32 1
+  %266 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %265, i64 %264) #37
+  %267 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266, i64 1
+  %268 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266, i64 2
+  %269 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %268 to %struct.TypeInfo**
+  %270 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %270, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %269, align 8, !tbaa !16
+  %271 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266, i64 3
+  %272 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %271 to i32*
+  store i32 %241, i32* %272, align 8, !tbaa !18
+  %273 = bitcast %struct.ObjHeader** %257 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %268, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %273, align 8, !tbaa !3
+  %274 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %275 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %274 to %struct.ObjHeader**
+  %276 = bitcast %struct.ObjHeader** %256 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %277 = bitcast %class.ObjHolder* %3 to i8*
+  %278 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %279 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %280 = bitcast %struct.FrameOverlay.6** %279 to i64*
+  %281 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %282 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %283 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %284 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %285 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %286 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %287 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %288 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %289 = bitcast %struct.ObjHeader** %255 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %290 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %268 to i64*
+  %291 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266, i64 4
+  %wide.trip.count51 = zext i32 %241 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %272 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %273 = and i8 %272, 1
-  %274 = icmp eq i8 %273, 0
-  br i1 %274, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %275
+  %292 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %293 = and i8 %292, 1
+  %294 = icmp eq i8 %293, 0
+  br i1 %294, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %295
 
-275:                                              ; preds = %while_loop.i
+295:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %275, %while_loop.i
-  %276 = load %struct.ObjHeader*, %struct.ObjHeader** %255, align 8
-  %277 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %276, i64 1
-  %278 = bitcast %struct.ObjHeader* %277 to i32*
-  %279 = load i32, i32* %278, align 8, !tbaa !18
-  %280 = zext i32 %279 to i64
-  %281 = icmp ult i64 %indvars.iv48, %280
-  br i1 %281, label %Kotlin_Array_get.exit.i, label %282
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %295, %while_loop.i
+  %296 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %275 unordered, align 8
+  %297 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %296, i64 1
+  %298 = bitcast %struct.ObjHeader* %297 to i32*
+  %299 = load atomic i32, i32* %298 unordered, align 8, !tbaa !18
+  %300 = zext i32 %299 to i64
+  %301 = icmp ult i64 %indvars.iv49, %300
+  br i1 %301, label %Kotlin_Array_get.exit.i, label %302
 
-282:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+302:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %283 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %276, i64 2
-  %284 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %283, i64 %indvars.iv48
-  %285 = bitcast %struct.ObjHeader* %284 to %struct.ObjHeader**
-  %286 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8, !tbaa !3
-  store %struct.ObjHeader* %286, %struct.ObjHeader** %209, align 8, !tbaa !3
-  %287 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %286, i64 1
-  %288 = bitcast %struct.ObjHeader* %287 to i32*
-  %289 = load i32, i32* %288, align 4
-  %290 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %291 = icmp eq i32 %290, 2
-  br i1 %291, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %303 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %296, i64 2
+  %304 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %303, i64 %indvars.iv49
+  %305 = bitcast %struct.ObjHeader* %304 to %struct.ObjHeader**
+  %306 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %305 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %306, %struct.ObjHeader** %228, align 8, !tbaa !3
+  %307 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %306, i64 1
+  %308 = bitcast %struct.ObjHeader* %307 to i32*
+  %309 = load atomic i32, i32* %308 unordered, align 4
+  %310 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %311 = icmp eq i32 %310, 2
+  br i1 %311, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %292 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %293 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %292, i64 2
-  %294 = bitcast %struct.ObjHeader* %293 to %struct.ObjHeader**
-  %295 = load %struct.ObjHeader*, %struct.ObjHeader** %294, align 8, !tbaa !3
-  store %struct.ObjHeader* %295, %struct.ObjHeader** %210, align 8, !tbaa !3
-  %296 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %297 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %296 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %298 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %297, align 8, !tbaa !3
-  %299 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %298, i64 0, i32 2, i32 1
-  %300 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %299, i64 32) #37
-  %301 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300, i64 1
-  %302 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300, i64 2
-  %303 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %302 to %struct.ObjHeader*
-  %304 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %302 to %struct.TypeInfo**
-  %305 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %301 to i64*
-  store i64 0, i64* %305, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumUIntArrayByIndicesWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %304, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %302, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %256, align 8, !tbaa !3
-  %306 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %306, align 8, !tbaa !3
-  %307 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300, i64 4
-  %308 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %307 to i32*
-  %309 = trunc i64 %indvars.iv48 to i32
-  store i32 %309, i32* %308, align 8
-  %310 = bitcast %struct.ObjHeader* %295 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %311 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %310, i64 0, i32 3
-  %312 = load i32, i32* %311, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %257) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %258, align 8, !tbaa !61
-  %313 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %314 = bitcast %"class.kotlin::mm::ShadowStack"* %313 to i64*
-  %315 = load i64, i64* %314, align 8, !tbaa !7
-  store i64 %315, i64* %260, align 8, !tbaa !9
-  %316 = bitcast %"class.kotlin::mm::ShadowStack"* %313 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %316, align 8, !tbaa !7
-  store i32 0, i32* %261, align 8, !tbaa !12
-  store i32 4, i32* %262, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %303, %struct.ObjHeader** nonnull %258)
-          to label %317 unwind label %601
+  %312 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %313 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %312, i64 2
+  %314 = bitcast %struct.ObjHeader* %313 to %struct.ObjHeader**
+  %315 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %314 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %315, %struct.ObjHeader** %229, align 8, !tbaa !3
+  %316 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %317 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %316 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %318 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %317 unordered, align 8, !tbaa !3
+  %319 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %318, i64 0, i32 2, i32 1
+  %320 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %319, i64 32) #37
+  %321 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320, i64 1
+  %322 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320, i64 2
+  %323 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %322 to %struct.ObjHeader*
+  %324 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %322 to %struct.TypeInfo**
+  %325 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %321 to i64*
+  store i64 0, i64* %325, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumUIntArrayByIndicesWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %324, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %322, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %276, align 8, !tbaa !3
+  %326 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %326, align 8, !tbaa !3
+  %327 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320, i64 4
+  %328 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %327 to i32*
+  %329 = trunc i64 %indvars.iv49 to i32
+  store i32 %329, i32* %328, align 8
+  %330 = bitcast %struct.ObjHeader* %315 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %331 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %330, i64 0, i32 3
+  %332 = load atomic i32, i32* %331 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %277) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %278, align 8, !tbaa !60
+  %333 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %334 = bitcast %"class.kotlin::mm::ShadowStack"* %333 to i64*
+  %335 = load atomic i64, i64* %334 unordered, align 8, !tbaa !7
+  store i64 %335, i64* %280, align 8, !tbaa !9
+  %336 = bitcast %"class.kotlin::mm::ShadowStack"* %333 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %336, align 8, !tbaa !7
+  store i32 0, i32* %281, align 8, !tbaa !12
+  store i32 4, i32* %282, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %323, %struct.ObjHeader** nonnull %278)
+          to label %337 unwind label %623
 
-317:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %318 = load %struct.ObjHeader*, %struct.ObjHeader** %258, align 8, !tbaa !61
-  %319 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %318) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %258, align 8, !tbaa !3
-  %320 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %263)
-  %321 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 0
-  %322 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %323 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %322, i64 328
-  %324 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %323 to i32*
-  %325 = atomicrmw xchg i32* %324, i32 1 seq_cst, align 4
-  %326 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %321) #37
-  %327 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %322, null
-  br i1 %327, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %328
+337:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %338 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %278 unordered, align 8, !tbaa !60
+  %339 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %338) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %278, align 8, !tbaa !3
+  %340 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %283)
+  %341 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 0
+  %342 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %343 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %342, i64 328
+  %344 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %343 to i32*
+  %345 = atomicrmw xchg i32* %344, i32 1 seq_cst, align 4
+  %346 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %341) #37
+  %347 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %342, null
+  br i1 %347, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %348
 
-328:                                              ; preds = %317
-  %329 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %323 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %330 = atomicrmw xchg i32* %324, i32 %325 seq_cst, align 4
-  %331 = icmp eq i32 %330, 1
-  %332 = icmp eq i32 %325, 0
-  %333 = and i1 %332, %331
-  br i1 %333, label %334, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+348:                                              ; preds = %337
+  %349 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %343 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %350 = atomicrmw xchg i32* %344, i32 %345 seq_cst, align 4
+  %351 = icmp eq i32 %350, 1
+  %352 = icmp eq i32 %345, 0
+  %353 = and i1 %352, %351
+  br i1 %353, label %354, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-334:                                              ; preds = %328
-  %335 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %336 = and i8 %335, 1
-  %337 = icmp eq i8 %336, 0
-  br i1 %337, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %338
+354:                                              ; preds = %348
+  %355 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %356 = and i8 %355, 1
+  %357 = icmp eq i8 %356, 0
+  br i1 %357, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %358
 
-338:                                              ; preds = %334
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %329) #37
+358:                                              ; preds = %354
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %349) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %338, %334, %328, %317
-  %339 = sext i32 %289 to i64
-  %340 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 3, i32 0, i32 1
-  %341 = load i64, i64* %340, align 8, !tbaa !67
-  %342 = urem i64 %339, %341
-  %343 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 3, i32 0, i32 0
-  %344 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %343, align 8, !tbaa !72
-  %345 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %344, i64 %342
-  %346 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %345, align 8, !tbaa !3
-  %347 = icmp eq %"struct.std::__detail::_Hash_node_base"* %346, null
-  br i1 %347, label %.loopexit16, label %348
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %358, %354, %348, %337
+  %359 = sext i32 %309 to i64
+  %360 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 3, i32 0, i32 1
+  %361 = load atomic i64, i64* %360 unordered, align 8, !tbaa !67
+  %362 = urem i64 %359, %361
+  %363 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 3, i32 0, i32 0
+  %364 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %363 unordered, align 8, !tbaa !72
+  %365 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %364, i64 %362
+  %366 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %365 unordered, align 8, !tbaa !3
+  %367 = icmp eq %"struct.std::__detail::_Hash_node_base"* %366, null
+  br i1 %367, label %.loopexit17, label %368
 
-348:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %349 = bitcast %"struct.std::__detail::_Hash_node_base"* %346 to %"struct.std::__detail::_Hash_node.203"**
-  %350 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %349, align 8, !tbaa !73
-  %351 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %350, i64 0, i32 0, i32 1
-  %352 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %351 to i32*
-  %353 = load i32, i32* %352, align 4, !tbaa !74
-  %354 = icmp eq i32 %353, %289
-  br i1 %354, label %371, label %.preheader15
+368:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %369 = bitcast %"struct.std::__detail::_Hash_node_base"* %366 to %"struct.std::__detail::_Hash_node.203"**
+  %370 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %369 unordered, align 8, !tbaa !73
+  %371 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %370, i64 0, i32 0, i32 1
+  %372 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %371 to i32*
+  %373 = load atomic i32, i32* %372 unordered, align 4, !tbaa !66
+  %374 = icmp eq i32 %373, %309
+  br i1 %374, label %391, label %.preheader16
 
-355:                                              ; preds = %362
-  %356 = icmp eq i32 %365, %289
-  br i1 %356, label %369, label %.preheader15
+375:                                              ; preds = %382
+  %376 = icmp eq i32 %385, %309
+  br i1 %376, label %389, label %.preheader16
 
-.preheader15:                                     ; preds = %355, %348
-  %357 = phi %"struct.std::__detail::_Hash_node.203"* [ %361, %355 ], [ %350, %348 ]
-  %358 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %357, i64 0, i32 0, i32 0, i32 0
-  %359 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %358, align 8, !tbaa !73
-  %360 = icmp eq %"struct.std::__detail::_Hash_node_base"* %359, null
-  %361 = bitcast %"struct.std::__detail::_Hash_node_base"* %359 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %360, label %.loopexit16, label %362
+.preheader16:                                     ; preds = %375, %368
+  %377 = phi %"struct.std::__detail::_Hash_node.203"* [ %381, %375 ], [ %370, %368 ]
+  %378 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %377, i64 0, i32 0, i32 0, i32 0
+  %379 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %378 unordered, align 8, !tbaa !73
+  %380 = icmp eq %"struct.std::__detail::_Hash_node_base"* %379, null
+  %381 = bitcast %"struct.std::__detail::_Hash_node_base"* %379 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %380, label %.loopexit17, label %382
 
-362:                                              ; preds = %.preheader15
-  %363 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %359, i64 1
-  %364 = bitcast %"struct.std::__detail::_Hash_node_base"* %363 to i32*
-  %365 = load i32, i32* %364, align 4, !tbaa !74
-  %366 = sext i32 %365 to i64
-  %367 = urem i64 %366, %341
-  %368 = icmp eq i64 %367, %342
-  br i1 %368, label %355, label %.loopexit16
+382:                                              ; preds = %.preheader16
+  %383 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %379, i64 1
+  %384 = bitcast %"struct.std::__detail::_Hash_node_base"* %383 to i32*
+  %385 = load atomic i32, i32* %384 unordered, align 4, !tbaa !66
+  %386 = sext i32 %385 to i64
+  %387 = urem i64 %386, %361
+  %388 = icmp eq i64 %387, %362
+  br i1 %388, label %375, label %.loopexit17
 
-369:                                              ; preds = %355
-  %370 = icmp eq %"struct.std::__detail::_Hash_node.203"* %357, null
-  br i1 %370, label %.loopexit16, label %373
+389:                                              ; preds = %375
+  %390 = icmp eq %"struct.std::__detail::_Hash_node.203"* %377, null
+  br i1 %390, label %.loopexit17, label %393
 
-371:                                              ; preds = %348
-  %372 = icmp eq %"struct.std::__detail::_Hash_node.203"* %350, null
-  br i1 %372, label %.loopexit16, label %373
+391:                                              ; preds = %368
+  %392 = icmp eq %"struct.std::__detail::_Hash_node.203"* %370, null
+  br i1 %392, label %.loopexit17, label %393
 
-373:                                              ; preds = %371, %369
-  %374 = phi %"struct.std::__detail::_Hash_node.203"* [ %361, %369 ], [ %350, %371 ]
-  %375 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %374, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %376 = bitcast i8* %375 to %class.Worker**
-  %377 = load %class.Worker*, %class.Worker** %376, align 8, !tbaa !75
-  %378 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %379 = icmp eq i8* %378, null
-  br i1 %379, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %380
+393:                                              ; preds = %391, %389
+  %394 = phi %"struct.std::__detail::_Hash_node.203"* [ %381, %389 ], [ %370, %391 ]
+  %395 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %394, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %396 = bitcast i8* %395 to %class.Worker**
+  %397 = load atomic %class.Worker*, %class.Worker** %396 unordered, align 8, !tbaa !74
+  %398 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %399 = icmp eq i8* %398, null
+  br i1 %399, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %400
 
-380:                                              ; preds = %373
-  %381 = bitcast i8* %378 to %"class.(anonymous namespace)::Future"*
-  %382 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 6
-  %383 = load i32, i32* %382, align 4, !tbaa !93
-  %384 = add nsw i32 %383, 1
-  store i32 %384, i32* %382, align 4, !tbaa !93
-  %385 = bitcast i8* %378 to i32*
-  store i32 1, i32* %385, align 8, !tbaa !100
-  %386 = getelementptr inbounds i8, i8* %378, i64 4
-  %387 = bitcast i8* %386 to i32*
-  store i32 %383, i32* %387, align 4, !tbaa !102
-  %388 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %389 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %388, i64 328
-  %390 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %389 to i32*
-  %391 = atomicrmw xchg i32* %390, i32 1 seq_cst, align 4
-  %392 = getelementptr inbounds i8, i8* %378, i64 16
-  %393 = bitcast i8* %392 to %union.pthread_mutex_t*
-  %394 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %393, %"struct.std::atomic"* null) #37
-  %395 = getelementptr inbounds i8, i8* %378, i64 56
-  %396 = bitcast i8* %395 to %union.pthread_cond_t*
-  %397 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %396, %"struct.std::atomic"* null) #37
-  %398 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %388, null
-  br i1 %398, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %399
+400:                                              ; preds = %393
+  %401 = bitcast i8* %398 to %"class.(anonymous namespace)::Future"*
+  %402 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 6
+  %403 = load atomic i32, i32* %402 unordered, align 4, !tbaa !91
+  %404 = add nsw i32 %403, 1
+  store i32 %404, i32* %402, align 4, !tbaa !91
+  %405 = bitcast i8* %398 to i32*
+  store i32 1, i32* %405, align 8, !tbaa !98
+  %406 = getelementptr inbounds i8, i8* %398, i64 4
+  %407 = bitcast i8* %406 to i32*
+  store i32 %403, i32* %407, align 4, !tbaa !100
+  %408 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %409 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %408, i64 328
+  %410 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %409 to i32*
+  %411 = atomicrmw xchg i32* %410, i32 1 seq_cst, align 4
+  %412 = getelementptr inbounds i8, i8* %398, i64 16
+  %413 = bitcast i8* %412 to %union.pthread_mutex_t*
+  %414 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %413, %"struct.std::atomic"* null) #37
+  %415 = getelementptr inbounds i8, i8* %398, i64 56
+  %416 = bitcast i8* %415 to %union.pthread_cond_t*
+  %417 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %416, %"struct.std::atomic"* null) #37
+  %418 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %408, null
+  br i1 %418, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %419
 
-399:                                              ; preds = %380
-  %400 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %389 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %401 = atomicrmw xchg i32* %390, i32 %391 seq_cst, align 4
-  %402 = icmp eq i32 %401, 1
-  %403 = icmp eq i32 %391, 0
-  %404 = and i1 %403, %402
-  br i1 %404, label %405, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+419:                                              ; preds = %400
+  %420 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %409 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %421 = atomicrmw xchg i32* %410, i32 %411 seq_cst, align 4
+  %422 = icmp eq i32 %421, 1
+  %423 = icmp eq i32 %411, 0
+  %424 = and i1 %423, %422
+  br i1 %424, label %425, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-405:                                              ; preds = %399
-  %406 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %407 = and i8 %406, 1
-  %408 = icmp eq i8 %407, 0
-  br i1 %408, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %409
+425:                                              ; preds = %419
+  %426 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %427 = and i8 %426, 1
+  %428 = icmp eq i8 %427, 0
+  br i1 %428, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %429
 
-409:                                              ; preds = %405
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %400) #37
+429:                                              ; preds = %425
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %420) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %409, %405, %399, %380, %373
-  %410 = phi %"class.(anonymous namespace)::Future"* [ null, %373 ], [ %381, %380 ], [ %381, %409 ], [ %381, %405 ], [ %381, %399 ]
-  %411 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %410, i64 0, i32 1
-  %412 = load i32, i32* %411, align 4, !tbaa !102
-  %413 = sext i32 %412 to i64
-  %414 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 1
-  %415 = load i64, i64* %414, align 8, !tbaa !103
-  %416 = urem i64 %413, %415
-  %417 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 0
-  %418 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %417, align 8, !tbaa !104
-  %419 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %418, i64 %416
-  %420 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %419, align 8, !tbaa !3
-  %421 = icmp eq %"struct.std::__detail::_Hash_node_base"* %420, null
-  br i1 %421, label %.loopexit14, label %422
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %429, %425, %419, %400, %393
+  %430 = phi %"class.(anonymous namespace)::Future"* [ null, %393 ], [ %401, %400 ], [ %401, %429 ], [ %401, %425 ], [ %401, %419 ]
+  %431 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %430, i64 0, i32 1
+  %432 = load atomic i32, i32* %431 unordered, align 4, !tbaa !100
+  %433 = sext i32 %432 to i64
+  %434 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 1
+  %435 = load atomic i64, i64* %434 unordered, align 8, !tbaa !101
+  %436 = urem i64 %433, %435
+  %437 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 0
+  %438 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %437 unordered, align 8, !tbaa !102
+  %439 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %438, i64 %436
+  %440 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %439 unordered, align 8, !tbaa !3
+  %441 = icmp eq %"struct.std::__detail::_Hash_node_base"* %440, null
+  br i1 %441, label %.loopexit15, label %442
 
-422:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %423 = bitcast %"struct.std::__detail::_Hash_node_base"* %420 to %"struct.std::__detail::_Hash_node.203"**
-  %424 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %423, align 8, !tbaa !73
-  %425 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %424, i64 0, i32 0, i32 1
-  %426 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %425 to i32*
-  %427 = load i32, i32* %426, align 4, !tbaa !74
-  %428 = icmp eq i32 %412, %427
-  br i1 %428, label %445, label %.preheader13
+442:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %443 = bitcast %"struct.std::__detail::_Hash_node_base"* %440 to %"struct.std::__detail::_Hash_node.203"**
+  %444 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %443 unordered, align 8, !tbaa !73
+  %445 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %444, i64 0, i32 0, i32 1
+  %446 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %445 to i32*
+  %447 = load atomic i32, i32* %446 unordered, align 4, !tbaa !66
+  %448 = icmp eq i32 %432, %447
+  br i1 %448, label %465, label %.preheader14
 
-429:                                              ; preds = %436
-  %430 = icmp eq i32 %412, %439
-  br i1 %430, label %443, label %.preheader13
+449:                                              ; preds = %456
+  %450 = icmp eq i32 %432, %459
+  br i1 %450, label %463, label %.preheader14
 
-.preheader13:                                     ; preds = %429, %422
-  %431 = phi %"struct.std::__detail::_Hash_node.203"* [ %435, %429 ], [ %424, %422 ]
-  %432 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %431, i64 0, i32 0, i32 0, i32 0
-  %433 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %432, align 8, !tbaa !73
-  %434 = icmp eq %"struct.std::__detail::_Hash_node_base"* %433, null
-  %435 = bitcast %"struct.std::__detail::_Hash_node_base"* %433 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %434, label %.loopexit14, label %436
+.preheader14:                                     ; preds = %449, %442
+  %451 = phi %"struct.std::__detail::_Hash_node.203"* [ %455, %449 ], [ %444, %442 ]
+  %452 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %451, i64 0, i32 0, i32 0, i32 0
+  %453 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %452 unordered, align 8, !tbaa !73
+  %454 = icmp eq %"struct.std::__detail::_Hash_node_base"* %453, null
+  %455 = bitcast %"struct.std::__detail::_Hash_node_base"* %453 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %454, label %.loopexit15, label %456
 
-436:                                              ; preds = %.preheader13
-  %437 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %433, i64 1
-  %438 = bitcast %"struct.std::__detail::_Hash_node_base"* %437 to i32*
-  %439 = load i32, i32* %438, align 4, !tbaa !74
-  %440 = sext i32 %439 to i64
-  %441 = urem i64 %440, %415
-  %442 = icmp eq i64 %441, %416
-  br i1 %442, label %429, label %.loopexit14
+456:                                              ; preds = %.preheader14
+  %457 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %453, i64 1
+  %458 = bitcast %"struct.std::__detail::_Hash_node_base"* %457 to i32*
+  %459 = load atomic i32, i32* %458 unordered, align 4, !tbaa !66
+  %460 = sext i32 %459 to i64
+  %461 = urem i64 %460, %435
+  %462 = icmp eq i64 %461, %436
+  br i1 %462, label %449, label %.loopexit15
 
-443:                                              ; preds = %429
-  %444 = icmp eq %"struct.std::__detail::_Hash_node.203"* %431, null
-  br i1 %444, label %.loopexit14, label %554
+463:                                              ; preds = %449
+  %464 = icmp eq %"struct.std::__detail::_Hash_node.203"* %451, null
+  br i1 %464, label %.loopexit15, label %576
 
-445:                                              ; preds = %422
-  %446 = icmp eq %"struct.std::__detail::_Hash_node.203"* %424, null
-  br i1 %446, label %.loopexit14, label %554
+465:                                              ; preds = %442
+  %466 = icmp eq %"struct.std::__detail::_Hash_node.203"* %444, null
+  br i1 %466, label %.loopexit15, label %576
 
-.loopexit14:                                      ; preds = %445, %443, %436, %.preheader13, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %447 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %448 = getelementptr inbounds i8, i8* %447, i64 8
-  %449 = bitcast i8* %448 to i32*
-  store i32 %412, i32* %449, align 8, !tbaa !105
-  %450 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 4
-  %451 = load i64, i64* %414, align 8, !tbaa !103
-  %452 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 3
-  %453 = load i64, i64* %452, align 8, !tbaa !107
-  %454 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %450, i64 %451, i64 %453, i64 1)
-          to label %455 unwind label %561
+.loopexit15:                                      ; preds = %465, %463, %456, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %467 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %468 = bitcast i8* %467 to %"struct.std::__detail::_Hash_node_base"**
+  %469 = getelementptr inbounds i8, i8* %467, i64 8
+  %470 = bitcast i8* %469 to i32*
+  store i32 %432, i32* %470, align 8, !tbaa !103
+  %471 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 4
+  %472 = load atomic i64, i64* %434 unordered, align 8, !tbaa !101
+  %473 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 3
+  %474 = load atomic i64, i64* %473 unordered, align 8, !tbaa !105
+  %475 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %471, i64 %472, i64 %474, i64 1)
+          to label %476 unwind label %583
 
-455:                                              ; preds = %.loopexit14
-  %456 = extractvalue { i8, i64 } %454, 0
-  %457 = and i8 %456, 1
-  %458 = icmp eq i8 %457, 0
-  br i1 %458, label %459, label %461
+476:                                              ; preds = %.loopexit15
+  %477 = extractvalue { i8, i64 } %475, 0
+  %478 = and i8 %477, 1
+  %479 = icmp eq i8 %478, 0
+  br i1 %479, label %480, label %482
 
-459:                                              ; preds = %455
-  %460 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %417, align 8, !tbaa !104
-  br label %518
+480:                                              ; preds = %476
+  %481 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %437 unordered, align 8, !tbaa !102
+  br label %539
 
-461:                                              ; preds = %455
-  %462 = extractvalue { i8, i64 } %454, 1
-  %463 = icmp eq i64 %462, 1
-  br i1 %463, label %464, label %466, !prof !108, !misexpect !109
+482:                                              ; preds = %476
+  %483 = extractvalue { i8, i64 } %475, 1
+  %484 = icmp eq i64 %483, 1
+  br i1 %484, label %485, label %487, !prof !106, !misexpect !107
 
-464:                                              ; preds = %461
-  %465 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !110
-  br label %470
+485:                                              ; preds = %482
+  %486 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %486, align 8, !tbaa !108
+  br label %491
 
-466:                                              ; preds = %461
-  %467 = call noalias i8* @calloc(i64 %462, i64 8) #37
-  %468 = bitcast i8* %467 to %"struct.std::__detail::_Hash_node_base"**
-  %469 = shl i64 %462, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %467, i8 0, i64 %469, i1 false) #37
-  br label %470
+487:                                              ; preds = %482
+  %488 = call noalias i8* @calloc(i64 %483, i64 8) #37
+  %489 = bitcast i8* %488 to %"struct.std::__detail::_Hash_node_base"**
+  %490 = shl i64 %483, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %488, i8 0, i64 %490, i1 false) #37
+  br label %491
 
-470:                                              ; preds = %466, %464
-  %471 = phi %"struct.std::__detail::_Hash_node_base"** [ %465, %464 ], [ %468, %466 ]
-  %472 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 2
-  %473 = bitcast %"struct.std::__detail::_Hash_node_base"* %472 to %"struct.std::__detail::_Hash_node.203"**
-  %474 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %473, align 8, !tbaa !111
-  %475 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %472, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %475, align 8, !tbaa !111
-  %476 = icmp eq %"struct.std::__detail::_Hash_node.203"* %474, null
-  br i1 %476, label %.loopexit, label %477
+491:                                              ; preds = %487, %485
+  %492 = phi %"struct.std::__detail::_Hash_node_base"** [ %486, %485 ], [ %489, %487 ]
+  %493 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 2
+  %494 = bitcast %"struct.std::__detail::_Hash_node_base"* %493 to %"struct.std::__detail::_Hash_node.203"**
+  %495 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %494 unordered, align 8, !tbaa !109
+  %496 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %493, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %496, align 8, !tbaa !109
+  %497 = icmp eq %"struct.std::__detail::_Hash_node.203"* %495, null
+  br i1 %497, label %.loopexit, label %498
 
-477:                                              ; preds = %470
-  %478 = bitcast %"struct.std::__detail::_Hash_node_base"* %472 to i64*
-  br label %479
+498:                                              ; preds = %491
+  %499 = bitcast %"struct.std::__detail::_Hash_node_base"* %493 to i64*
+  br label %500
 
-479:                                              ; preds = %508, %477
-  %480 = phi %"struct.std::__detail::_Hash_node.203"* [ %474, %477 ], [ %483, %508 ]
-  %481 = phi i64 [ 0, %477 ], [ %509, %508 ]
-  %482 = bitcast %"struct.std::__detail::_Hash_node.203"* %480 to %"struct.std::__detail::_Hash_node.203"**
-  %483 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %482, align 8, !tbaa !73
-  %484 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %480, i64 0, i32 0, i32 1
-  %485 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %484 to i32*
-  %486 = load i32, i32* %485, align 4, !tbaa !74
-  %487 = sext i32 %486 to i64
-  %488 = urem i64 %487, %462
-  %489 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %471, i64 %488
-  %490 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %489, align 8, !tbaa !3
-  %491 = icmp eq %"struct.std::__detail::_Hash_node_base"* %490, null
-  br i1 %491, label %492, label %501
+500:                                              ; preds = %529, %498
+  %501 = phi %"struct.std::__detail::_Hash_node.203"* [ %495, %498 ], [ %504, %529 ]
+  %502 = phi i64 [ 0, %498 ], [ %530, %529 ]
+  %503 = bitcast %"struct.std::__detail::_Hash_node.203"* %501 to %"struct.std::__detail::_Hash_node.203"**
+  %504 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %503 unordered, align 8, !tbaa !73
+  %505 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %501, i64 0, i32 0, i32 1
+  %506 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %505 to i32*
+  %507 = load atomic i32, i32* %506 unordered, align 4, !tbaa !66
+  %508 = sext i32 %507 to i64
+  %509 = urem i64 %508, %483
+  %510 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %492, i64 %509
+  %511 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %510 unordered, align 8, !tbaa !3
+  %512 = icmp eq %"struct.std::__detail::_Hash_node_base"* %511, null
+  br i1 %512, label %513, label %522
 
-492:                                              ; preds = %479
-  %493 = load i64, i64* %478, align 8, !tbaa !111
-  %494 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %480, i64 0, i32 0, i32 0
-  %495 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %480, i64 0, i32 0, i32 0, i32 0
-  %496 = bitcast %"struct.std::__detail::_Hash_node.203"* %480 to i64*
-  store i64 %493, i64* %496, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %494, %"struct.std::__detail::_Hash_node_base"** %475, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %472, %"struct.std::__detail::_Hash_node_base"** %489, align 8, !tbaa !3
-  %497 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %495, align 8, !tbaa !73
-  %498 = icmp eq %"struct.std::__detail::_Hash_node_base"* %497, null
-  br i1 %498, label %508, label %499
+513:                                              ; preds = %500
+  %514 = load atomic i64, i64* %499 unordered, align 8, !tbaa !109
+  %515 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %501, i64 0, i32 0, i32 0
+  %516 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %501, i64 0, i32 0, i32 0, i32 0
+  %517 = bitcast %"struct.std::__detail::_Hash_node.203"* %501 to i64*
+  store i64 %514, i64* %517, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %515, %"struct.std::__detail::_Hash_node_base"** %496, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %493, %"struct.std::__detail::_Hash_node_base"** %510, align 8, !tbaa !3
+  %518 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %516 unordered, align 8, !tbaa !73
+  %519 = icmp eq %"struct.std::__detail::_Hash_node_base"* %518, null
+  br i1 %519, label %529, label %520
 
-499:                                              ; preds = %492
-  %500 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %471, i64 %481
-  store %"struct.std::__detail::_Hash_node_base"* %494, %"struct.std::__detail::_Hash_node_base"** %500, align 8, !tbaa !3
-  br label %508
+520:                                              ; preds = %513
+  %521 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %492, i64 %502
+  store %"struct.std::__detail::_Hash_node_base"* %515, %"struct.std::__detail::_Hash_node_base"** %521, align 8, !tbaa !3
+  br label %529
 
-501:                                              ; preds = %479
-  %502 = bitcast %"struct.std::__detail::_Hash_node_base"* %490 to i64*
-  %503 = load i64, i64* %502, align 8, !tbaa !73
-  %504 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %480, i64 0, i32 0, i32 0
-  %505 = bitcast %"struct.std::__detail::_Hash_node.203"* %480 to i64*
-  store i64 %503, i64* %505, align 8, !tbaa !73
-  %506 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %489, align 8, !tbaa !3
-  %507 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %506, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %504, %"struct.std::__detail::_Hash_node_base"** %507, align 8, !tbaa !73
-  br label %508
+522:                                              ; preds = %500
+  %523 = bitcast %"struct.std::__detail::_Hash_node_base"* %511 to i64*
+  %524 = load atomic i64, i64* %523 unordered, align 8, !tbaa !73
+  %525 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %501, i64 0, i32 0, i32 0
+  %526 = bitcast %"struct.std::__detail::_Hash_node.203"* %501 to i64*
+  store i64 %524, i64* %526, align 8, !tbaa !73
+  %527 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %510 unordered, align 8, !tbaa !3
+  %528 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %527, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %525, %"struct.std::__detail::_Hash_node_base"** %528, align 8, !tbaa !73
+  br label %529
 
-508:                                              ; preds = %501, %499, %492
-  %509 = phi i64 [ %481, %501 ], [ %488, %492 ], [ %488, %499 ]
-  %510 = icmp eq %"struct.std::__detail::_Hash_node.203"* %483, null
-  br i1 %510, label %.loopexit, label %479
+529:                                              ; preds = %522, %520, %513
+  %530 = phi i64 [ %502, %522 ], [ %509, %513 ], [ %509, %520 ]
+  %531 = icmp eq %"struct.std::__detail::_Hash_node.203"* %504, null
+  br i1 %531, label %.loopexit, label %500
 
-.loopexit:                                        ; preds = %508, %470
-  %511 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %417, align 8, !tbaa !104
-  %512 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 5
-  %513 = icmp eq %"struct.std::__detail::_Hash_node_base"** %511, %512
-  br i1 %513, label %516, label %514
+.loopexit:                                        ; preds = %529, %491
+  %532 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %437 unordered, align 8, !tbaa !102
+  %533 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 5
+  %534 = icmp eq %"struct.std::__detail::_Hash_node_base"** %532, %533
+  br i1 %534, label %537, label %535
 
-514:                                              ; preds = %.loopexit
-  %515 = bitcast %"struct.std::__detail::_Hash_node_base"** %511 to i8*
-  call void @free(i8* %515) #37
-  br label %516
+535:                                              ; preds = %.loopexit
+  %536 = bitcast %"struct.std::__detail::_Hash_node_base"** %532 to i8*
+  call void @free(i8* %536) #37
+  br label %537
 
-516:                                              ; preds = %514, %.loopexit
-  store i64 %462, i64* %414, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %471, %"struct.std::__detail::_Hash_node_base"*** %417, align 8, !tbaa !104
-  %517 = urem i64 %413, %462
-  br label %518
+537:                                              ; preds = %535, %.loopexit
+  store i64 %483, i64* %434, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %492, %"struct.std::__detail::_Hash_node_base"*** %437, align 8, !tbaa !102
+  %538 = urem i64 %433, %483
+  br label %539
 
-518:                                              ; preds = %516, %459
-  %519 = phi %"struct.std::__detail::_Hash_node_base"** [ %460, %459 ], [ %471, %516 ]
-  %520 = phi i64 [ %416, %459 ], [ %517, %516 ]
-  %521 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %519, i64 %520
-  %522 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %521, align 8, !tbaa !3
-  %523 = icmp eq %"struct.std::__detail::_Hash_node_base"* %522, null
-  br i1 %523, label %530, label %524
+539:                                              ; preds = %537, %480
+  %540 = phi %"struct.std::__detail::_Hash_node_base"** [ %481, %480 ], [ %492, %537 ]
+  %541 = phi i64 [ %436, %480 ], [ %538, %537 ]
+  %542 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %540, i64 %541
+  %543 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %542 unordered, align 8, !tbaa !3
+  %544 = icmp eq %"struct.std::__detail::_Hash_node_base"* %543, null
+  br i1 %544, label %551, label %545
 
-524:                                              ; preds = %518
-  %525 = bitcast %"struct.std::__detail::_Hash_node_base"* %522 to i64*
-  %526 = load i64, i64* %525, align 8, !tbaa !73
-  %527 = bitcast i8* %447 to i64*
-  store i64 %526, i64* %527, align 8, !tbaa !73
-  %528 = bitcast %"struct.std::__detail::_Hash_node_base"** %521 to i8***
-  %529 = load i8**, i8*** %528, align 8, !tbaa !3
-  store i8* %447, i8** %529, align 8, !tbaa !73
-  br label %550
+545:                                              ; preds = %539
+  %546 = bitcast %"struct.std::__detail::_Hash_node_base"* %543 to i64*
+  %547 = load atomic i64, i64* %546 unordered, align 8, !tbaa !73
+  %548 = bitcast i8* %467 to i64*
+  store i64 %547, i64* %548, align 8, !tbaa !73
+  %549 = bitcast %"struct.std::__detail::_Hash_node_base"** %542 to i8***
+  %550 = load atomic i8**, i8*** %549 unordered, align 8, !tbaa !3
+  store i8* %467, i8** %550, align 8, !tbaa !73
+  br label %572
 
-530:                                              ; preds = %518
-  %531 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %320, i64 0, i32 2, i32 0, i32 2
-  %532 = bitcast %"struct.std::__detail::_Hash_node_base"* %531 to i64*
-  %533 = load i64, i64* %532, align 8, !tbaa !111
-  %534 = bitcast i8* %447 to i64*
-  store i64 %533, i64* %534, align 8, !tbaa !73
-  %535 = bitcast %"struct.std::__detail::_Hash_node_base"* %531 to i8**
-  store i8* %447, i8** %535, align 8, !tbaa !111
-  %536 = icmp eq i64 %533, 0
-  br i1 %536, label %547, label %537
+551:                                              ; preds = %539
+  %552 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %340, i64 0, i32 2, i32 0, i32 2
+  %553 = bitcast %"struct.std::__detail::_Hash_node_base"* %552 to i64*
+  %554 = load atomic i64, i64* %553 unordered, align 8, !tbaa !109
+  %555 = bitcast i8* %467 to i64*
+  store i64 %554, i64* %555, align 8, !tbaa !73
+  %556 = bitcast %"struct.std::__detail::_Hash_node_base"* %552 to i8**
+  store i8* %467, i8** %556, align 8, !tbaa !109
+  %557 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468 unordered, align 8, !tbaa !73
+  %558 = icmp eq %"struct.std::__detail::_Hash_node_base"* %557, null
+  br i1 %558, label %569, label %559
 
-537:                                              ; preds = %530
-  %.cast.i.i.i.i = inttoptr i64 %533 to %"struct.std::__detail::_Hash_node_base"*
-  %538 = load i64, i64* %414, align 8, !tbaa !103
-  %539 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %540 = bitcast %"struct.std::__detail::_Hash_node_base"* %539 to i32*
-  %541 = load i32, i32* %540, align 4, !tbaa !74
-  %542 = sext i32 %541 to i64
-  %543 = urem i64 %542, %538
-  %544 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %519, i64 %543
-  %545 = bitcast %"struct.std::__detail::_Hash_node_base"** %544 to i8**
-  store i8* %447, i8** %545, align 8, !tbaa !3
-  %546 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %417, align 8, !tbaa !104
-  br label %547
+559:                                              ; preds = %551
+  %560 = load atomic i64, i64* %434 unordered, align 8, !tbaa !101
+  %561 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %557, i64 1
+  %562 = bitcast %"struct.std::__detail::_Hash_node_base"* %561 to i32*
+  %563 = load atomic i32, i32* %562 unordered, align 4, !tbaa !66
+  %564 = sext i32 %563 to i64
+  %565 = urem i64 %564, %560
+  %566 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %540, i64 %565
+  %567 = bitcast %"struct.std::__detail::_Hash_node_base"** %566 to i8**
+  store i8* %467, i8** %567, align 8, !tbaa !3
+  %568 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %437 unordered, align 8, !tbaa !102
+  br label %569
 
-547:                                              ; preds = %537, %530
-  %548 = phi %"struct.std::__detail::_Hash_node_base"** [ %519, %530 ], [ %546, %537 ]
-  %549 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %548, i64 %520
-  store %"struct.std::__detail::_Hash_node_base"* %531, %"struct.std::__detail::_Hash_node_base"** %549, align 8, !tbaa !3
-  br label %550
+569:                                              ; preds = %559, %551
+  %570 = phi %"struct.std::__detail::_Hash_node_base"** [ %540, %551 ], [ %568, %559 ]
+  %571 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %570, i64 %541
+  store %"struct.std::__detail::_Hash_node_base"* %552, %"struct.std::__detail::_Hash_node_base"** %571, align 8, !tbaa !3
+  br label %572
 
-550:                                              ; preds = %547, %524
-  %551 = load i64, i64* %452, align 8, !tbaa !107
-  %552 = add i64 %551, 1
-  store i64 %552, i64* %452, align 8, !tbaa !107
-  %553 = bitcast i8* %448 to %"struct.std::pair.50"*
-  br label %558
+572:                                              ; preds = %569, %545
+  %573 = load atomic i64, i64* %473 unordered, align 8, !tbaa !105
+  %574 = add i64 %573, 1
+  store i64 %574, i64* %473, align 8, !tbaa !105
+  %575 = bitcast i8* %469 to %"struct.std::pair.50"*
+  br label %580
 
-554:                                              ; preds = %445, %443
-  %555 = phi %"struct.std::__detail::_Hash_node.203"* [ %424, %445 ], [ %435, %443 ]
-  %556 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %555, i64 0, i32 0, i32 1
-  %557 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %556 to %"struct.std::pair.50"*
-  br label %558
+576:                                              ; preds = %465, %463
+  %577 = phi %"struct.std::__detail::_Hash_node.203"* [ %444, %465 ], [ %455, %463 ]
+  %578 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %577, i64 0, i32 0, i32 1
+  %579 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %578 to %"struct.std::pair.50"*
+  br label %580
 
-558:                                              ; preds = %554, %550
-  %559 = phi %"struct.std::pair.50"* [ %557, %554 ], [ %553, %550 ]
-  %560 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %559, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %410, %"class.(anonymous namespace)::Future"** %560, align 8, !tbaa !3
-  store i32 2, i32* %264, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %265, align 8, !tbaa.struct !112
-  store i8* %319, i8** %266, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %410, %"class.(anonymous namespace)::Future"** %267, align 8, !tbaa.struct !112
-  store i32 %312, i32* %268, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %377, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
-  br label %.loopexit16
+580:                                              ; preds = %576, %572
+  %581 = phi %"struct.std::pair.50"* [ %579, %576 ], [ %575, %572 ]
+  %582 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %581, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %430, %"class.(anonymous namespace)::Future"** %582, align 8, !tbaa !3
+  store i32 2, i32* %284, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %285, align 8, !tbaa.struct !110
+  store i8* %339, i8** %286, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %430, %"class.(anonymous namespace)::Future"** %287, align 8, !tbaa.struct !110
+  store i32 %332, i32* %288, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %397, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+  br label %.loopexit17
 
-561:                                              ; preds = %.loopexit14
-  %562 = landingpad { i8*, i32 }
+583:                                              ; preds = %.loopexit15
+  %584 = landingpad { i8*, i32 }
           cleanup
-  %563 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %564 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %563, i64 328
-  %565 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %564 to i32*
-  %566 = atomicrmw xchg i32* %565, i32 1 seq_cst, align 4
-  %567 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %321) #37
-  %568 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %563, null
-  br i1 %568, label %.body.i.i.i, label %587
+  %585 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %586 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %585, i64 328
+  %587 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %586 to i32*
+  %588 = atomicrmw xchg i32* %587, i32 1 seq_cst, align 4
+  %589 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %341) #37
+  %590 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %585, null
+  br i1 %590, label %.body.i.i.i, label %609
 
-.loopexit16:                                      ; preds = %558, %371, %369, %362, %.preheader15, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %569 = phi %"class.(anonymous namespace)::Future"* [ %410, %558 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %369 ], [ null, %371 ], [ null, %.preheader15 ], [ null, %362 ]
-  %570 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %571 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %570, i64 328
-  %572 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %571 to i32*
-  %573 = atomicrmw xchg i32* %572, i32 1 seq_cst, align 4
-  %574 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %321) #37
-  %575 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %570, null
-  br i1 %575, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %576
+.loopexit17:                                      ; preds = %580, %391, %389, %382, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %591 = phi %"class.(anonymous namespace)::Future"* [ %430, %580 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %389 ], [ null, %391 ], [ null, %.preheader16 ], [ null, %382 ]
+  %592 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %593 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %592, i64 328
+  %594 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %593 to i32*
+  %595 = atomicrmw xchg i32* %594, i32 1 seq_cst, align 4
+  %596 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %341) #37
+  %597 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %592, null
+  br i1 %597, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %598
 
-576:                                              ; preds = %.loopexit16
-  %577 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %571 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %578 = atomicrmw xchg i32* %572, i32 %573 seq_cst, align 4
-  %579 = icmp eq i32 %578, 1
-  %580 = icmp eq i32 %573, 0
-  %581 = and i1 %580, %579
-  br i1 %581, label %582, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+598:                                              ; preds = %.loopexit17
+  %599 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %593 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %600 = atomicrmw xchg i32* %594, i32 %595 seq_cst, align 4
+  %601 = icmp eq i32 %600, 1
+  %602 = icmp eq i32 %595, 0
+  %603 = and i1 %602, %601
+  br i1 %603, label %604, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-582:                                              ; preds = %576
-  %583 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %584 = and i8 %583, 1
-  %585 = icmp eq i8 %584, 0
-  br i1 %585, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %586
+604:                                              ; preds = %598
+  %605 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %606 = and i8 %605, 1
+  %607 = icmp eq i8 %606, 0
+  br i1 %607, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %608
 
-586:                                              ; preds = %582
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %577) #37
+608:                                              ; preds = %604
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %599) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-587:                                              ; preds = %561
-  %588 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %564 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %589 = atomicrmw xchg i32* %565, i32 %566 seq_cst, align 4
-  %590 = icmp eq i32 %589, 1
-  %591 = icmp eq i32 %566, 0
-  %592 = and i1 %591, %590
-  br i1 %592, label %593, label %.body.i.i.i
+609:                                              ; preds = %583
+  %610 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %586 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %611 = atomicrmw xchg i32* %587, i32 %588 seq_cst, align 4
+  %612 = icmp eq i32 %611, 1
+  %613 = icmp eq i32 %588, 0
+  %614 = and i1 %613, %612
+  br i1 %614, label %615, label %.body.i.i.i
 
-593:                                              ; preds = %587
-  %594 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %595 = and i8 %594, 1
-  %596 = icmp eq i8 %595, 0
-  br i1 %596, label %.body.i.i.i, label %597
+615:                                              ; preds = %609
+  %616 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %617 = and i8 %616, 1
+  %618 = icmp eq i8 %617, 0
+  br i1 %618, label %.body.i.i.i, label %619
 
-597:                                              ; preds = %593
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %588) #37
+619:                                              ; preds = %615
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %610) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %586, %582, %576, %.loopexit16
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %263)
-  %598 = icmp eq %"class.(anonymous namespace)::Future"* %569, null
-  br i1 %598, label %599, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %608, %604, %598, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %283)
+  %620 = icmp eq %"class.(anonymous namespace)::Future"* %591, null
+  br i1 %620, label %621, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-599:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+621:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %600 unwind label %603
+          to label %622 unwind label %625
 
-600:                                              ; preds = %599
+622:                                              ; preds = %621
   unreachable
 
-601:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %602 = landingpad { i8*, i32 }
+623:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %624 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-603:                                              ; preds = %599
-  %604 = landingpad { i8*, i32 }
+625:                                              ; preds = %621
+  %626 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %603, %601, %597, %593, %587, %561
-  %605 = phi { i8*, i32 } [ %602, %601 ], [ %604, %603 ], [ %562, %587 ], [ %562, %593 ], [ %562, %597 ], [ %562, %561 ]
-  %606 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %607 = load i64, i64* %260, align 8, !tbaa !9
-  %608 = bitcast %"class.kotlin::mm::ShadowStack"* %606 to i64*
-  store i64 %607, i64* %608, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %257) #37
-  resume { i8*, i32 } %605
+.body.i.i.i:                                      ; preds = %625, %623, %619, %615, %609, %583
+  %627 = phi { i8*, i32 } [ %624, %623 ], [ %626, %625 ], [ %584, %609 ], [ %584, %615 ], [ %584, %619 ], [ %584, %583 ]
+  %628 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %629 = load atomic i64, i64* %280 unordered, align 8, !tbaa !9
+  %630 = bitcast %"class.kotlin::mm::ShadowStack"* %628 to i64*
+  store i64 %629, i64* %630, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %277) #37
+  resume { i8*, i32 } %627
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %609 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %569, i64 0, i32 1
-  %610 = load i32, i32* %609, align 4, !tbaa !102
-  %611 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %612 = load i64, i64* %260, align 8, !tbaa !9
-  %613 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to i64*
-  store i64 %612, i64* %613, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %257) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %137)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %137, i8 0, i32 32, i1 immarg false) #49
-  %614 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %615 = bitcast %"class.kotlin::mm::ShadowStack"* %614 to i64*
-  %616 = load i64, i64* %615, align 8, !tbaa !7
-  store i64 %616, i64* %141, align 8, !tbaa !9
-  %617 = bitcast %"class.kotlin::mm::ShadowStack"* %614 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %617, align 8, !tbaa !7
-  store i32 0, i32* %143, align 8, !tbaa !12
-  store i32 4, i32* %144, align 4, !tbaa !13
-  %618 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %619 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %618 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %620 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %619, align 8, !tbaa !3
-  %621 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %620, i64 0, i32 2, i32 1
-  %622 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %621, i64 24) #37
-  %623 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622, i64 1
-  %624 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622, i64 2
-  %625 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %624 to %struct.TypeInfo**
-  %626 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %623 to i64*
-  store i64 0, i64* %626, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %625, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %624, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %145, align 8, !tbaa !3
-  %627 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622, i64 3
-  %628 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %627 to i32*
-  store i32 %610, i32* %628, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %624, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %269, align 8, !tbaa !3
-  %629 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %630 = load i64, i64* %141, align 8, !tbaa !9
-  %631 = bitcast %"class.kotlin::mm::ShadowStack"* %629 to i64*
-  store i64 %630, i64* %631, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %137)
-  %632 = load i32, i32* %252, align 8, !tbaa !18
-  %633 = zext i32 %632 to i64
-  %634 = icmp ult i64 %indvars.iv48, %633
-  br i1 %634, label %Kotlin_Array_set.exit.i, label %635
+  %631 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %591, i64 0, i32 1
+  %632 = load atomic i32, i32* %631 unordered, align 4, !tbaa !100
+  %633 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %634 = load atomic i64, i64* %280 unordered, align 8, !tbaa !9
+  %635 = bitcast %"class.kotlin::mm::ShadowStack"* %633 to i64*
+  store i64 %634, i64* %635, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %277) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %155)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %155, i8 0, i32 32, i1 immarg false) #49
+  %636 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %637 = bitcast %"class.kotlin::mm::ShadowStack"* %636 to i64*
+  %638 = load atomic i64, i64* %637 unordered, align 8, !tbaa !7
+  store i64 %638, i64* %159, align 8, !tbaa !9
+  %639 = bitcast %"class.kotlin::mm::ShadowStack"* %636 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %639, align 8, !tbaa !7
+  store i32 0, i32* %161, align 8, !tbaa !12
+  store i32 4, i32* %162, align 4, !tbaa !13
+  %640 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %641 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %640 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %642 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %641 unordered, align 8, !tbaa !3
+  %643 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %642, i64 0, i32 2, i32 1
+  %644 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %643, i64 24) #37
+  %645 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 1
+  %646 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 2
+  %647 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646 to %struct.TypeInfo**
+  %648 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645 to i64*
+  store i64 0, i64* %648, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %647, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %163, align 8, !tbaa !3
+  %649 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 3
+  %650 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %649 to i32*
+  store i32 %632, i32* %650, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %289, align 8, !tbaa !3
+  %651 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %652 = load atomic i64, i64* %159 unordered, align 8, !tbaa !9
+  %653 = bitcast %"class.kotlin::mm::ShadowStack"* %651 to i64*
+  store i64 %652, i64* %653, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %155)
+  %654 = load atomic i32, i32* %272 unordered, align 8, !tbaa !18
+  %655 = zext i32 %654 to i64
+  %656 = icmp ult i64 %indvars.iv49, %655
+  br i1 %656, label %Kotlin_Array_set.exit.i, label %657
 
-635:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+657:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %636 = load atomic volatile i64, i64* %270 monotonic, align 8
-  %637 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %271, i64 %indvars.iv48
-  %638 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %637, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %624, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %638, align 8, !tbaa !3
-  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
+  %658 = load atomic volatile i64, i64* %290 monotonic, align 8
+  %659 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %291, i64 %indvars.iv49
+  %660 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %659, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %660, align 8, !tbaa !3
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
-  %639 = load i32, i32* %252, align 8, !tbaa !18
-  %640 = icmp sgt i32 %639, 0
-  %smax = select i1 %640, i32 %639, i32 0
+  %661 = load atomic i32, i32* %272 unordered, align 8, !tbaa !18
+  %662 = icmp sgt i32 %661, 0
+  %smax = select i1 %662, i32 %661, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %641 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %642 = and i8 %641, 1
-  %643 = icmp eq i8 %642, 0
-  br i1 %643, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %644
+  %663 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %664 = and i8 %663, 1
+  %665 = icmp eq i8 %664, 0
+  br i1 %665, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %666
 
-644:                                              ; preds = %while_loop18.i
+666:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %644, %while_loop18.i
-  %645 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %271, i64 %indvars.iv
-  %646 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645 to %struct.ObjHeader**
-  %647 = load %struct.ObjHeader*, %struct.ObjHeader** %646, align 8, !tbaa !3
-  store %struct.ObjHeader* %647, %struct.ObjHeader** %211, align 8, !tbaa !3
-  %648 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %647, i64 1
-  %649 = bitcast %struct.ObjHeader* %648 to i32*
-  %650 = load i32, i32* %649, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %666, %while_loop18.i
+  %667 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %291, i64 %indvars.iv
+  %668 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %667 to %struct.ObjHeader**
+  %669 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %668 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %669, %struct.ObjHeader** %230, align 8, !tbaa !3
+  %670 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %669, i64 1
+  %671 = bitcast %struct.ObjHeader* %670 to i32*
+  %672 = load atomic i32, i32* %671 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %137)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %137, i8 0, i32 32, i1 immarg false) #49
-  %651 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %652 = bitcast %"class.kotlin::mm::ShadowStack"* %651 to i64*
-  %653 = load i64, i64* %652, align 8, !tbaa !7
-  store i64 %653, i64* %141, align 8, !tbaa !9
-  %654 = bitcast %"class.kotlin::mm::ShadowStack"* %651 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %654, align 8, !tbaa !7
-  store i32 0, i32* %143, align 8, !tbaa !12
-  store i32 4, i32* %144, align 4, !tbaa !13
-  %655 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %656 = icmp eq i32 %655, 2
-  br i1 %656, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %155)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %155, i8 0, i32 32, i1 immarg false) #49
+  %673 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %674 = bitcast %"class.kotlin::mm::ShadowStack"* %673 to i64*
+  %675 = load atomic i64, i64* %674 unordered, align 8, !tbaa !7
+  store i64 %675, i64* %159, align 8, !tbaa !9
+  %676 = bitcast %"class.kotlin::mm::ShadowStack"* %673 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %676, align 8, !tbaa !7
+  store i32 0, i32* %161, align 8, !tbaa !12
+  store i32 4, i32* %162, align 4, !tbaa !13
+  %677 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %678 = icmp eq i32 %677, 2
+  br i1 %678, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %657 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %658 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %657, %struct.ObjHeader** nonnull %138)
-  store %struct.ObjHeader* %658, %struct.ObjHeader** %138, align 8, !tbaa !3
-  %659 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %660 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %659, i64 0, i32 0
-  %661 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %662 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %661, i64 328
-  %663 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %662 to i32*
-  %664 = atomicrmw xchg i32* %663, i32 1 seq_cst, align 4
-  %665 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %660) #37
-  %666 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %661, null
-  br i1 %666, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %667
+  %679 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %680 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %679, %struct.ObjHeader** nonnull %156)
+  store %struct.ObjHeader* %680, %struct.ObjHeader** %156, align 8, !tbaa !3
+  %681 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %682 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %681, i64 0, i32 0
+  %683 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %684 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683, i64 328
+  %685 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %684 to i32*
+  %686 = atomicrmw xchg i32* %685, i32 1 seq_cst, align 4
+  %687 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %682) #37
+  %688 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683, null
+  br i1 %688, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %689
 
-667:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %668 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %662 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %669 = atomicrmw xchg i32* %663, i32 %664 seq_cst, align 4
-  %670 = icmp eq i32 %669, 1
-  %671 = icmp eq i32 %664, 0
-  %672 = and i1 %671, %670
-  br i1 %672, label %673, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+689:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %690 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %684 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %691 = atomicrmw xchg i32* %685, i32 %686 seq_cst, align 4
+  %692 = icmp eq i32 %691, 1
+  %693 = icmp eq i32 %686, 0
+  %694 = and i1 %693, %692
+  br i1 %694, label %695, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-673:                                              ; preds = %667
-  %674 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %675 = and i8 %674, 1
-  %676 = icmp eq i8 %675, 0
-  br i1 %676, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %677
+695:                                              ; preds = %689
+  %696 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %697 = and i8 %696, 1
+  %698 = icmp eq i8 %697, 0
+  br i1 %698, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %699
 
-677:                                              ; preds = %673
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %668) #37
+699:                                              ; preds = %695
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %690) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %677, %673, %667, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %678 = sext i32 %650 to i64
-  %679 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %659, i64 0, i32 2, i32 0, i32 1
-  %680 = load i64, i64* %679, align 8, !tbaa !103
-  %681 = urem i64 %678, %680
-  %682 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %659, i64 0, i32 2, i32 0, i32 0
-  %683 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %682, align 8, !tbaa !104
-  %684 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %683, i64 %681
-  %685 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %684, align 8, !tbaa !3
-  %686 = icmp eq %"struct.std::__detail::_Hash_node_base"* %685, null
-  br i1 %686, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %687
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %699, %695, %689, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %700 = sext i32 %672 to i64
+  %701 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %681, i64 0, i32 2, i32 0, i32 1
+  %702 = load atomic i64, i64* %701 unordered, align 8, !tbaa !101
+  %703 = urem i64 %700, %702
+  %704 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %681, i64 0, i32 2, i32 0, i32 0
+  %705 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %704 unordered, align 8, !tbaa !102
+  %706 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %705, i64 %703
+  %707 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %706 unordered, align 8, !tbaa !3
+  %708 = icmp eq %"struct.std::__detail::_Hash_node_base"* %707, null
+  br i1 %708, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %709
 
-687:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %688 = bitcast %"struct.std::__detail::_Hash_node_base"* %685 to %"struct.std::__detail::_Hash_node.203"**
-  %689 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %688, align 8, !tbaa !73
-  %690 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %689, i64 0, i32 0, i32 1
-  %691 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %690 to i32*
-  %692 = load i32, i32* %691, align 4, !tbaa !74
-  %693 = icmp eq i32 %692, %650
-  br i1 %693, label %710, label %.preheader
+709:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %710 = bitcast %"struct.std::__detail::_Hash_node_base"* %707 to %"struct.std::__detail::_Hash_node.203"**
+  %711 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %710 unordered, align 8, !tbaa !73
+  %712 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %711, i64 0, i32 0, i32 1
+  %713 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %712 to i32*
+  %714 = load atomic i32, i32* %713 unordered, align 4, !tbaa !66
+  %715 = icmp eq i32 %714, %672
+  br i1 %715, label %732, label %.preheader
 
-694:                                              ; preds = %701
-  %695 = icmp eq i32 %704, %650
-  br i1 %695, label %708, label %.preheader
+716:                                              ; preds = %723
+  %717 = icmp eq i32 %726, %672
+  br i1 %717, label %730, label %.preheader
 
-.preheader:                                       ; preds = %694, %687
-  %696 = phi %"struct.std::__detail::_Hash_node.203"* [ %700, %694 ], [ %689, %687 ]
-  %697 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %696, i64 0, i32 0, i32 0, i32 0
-  %698 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %697, align 8, !tbaa !73
-  %699 = icmp eq %"struct.std::__detail::_Hash_node_base"* %698, null
-  %700 = bitcast %"struct.std::__detail::_Hash_node_base"* %698 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %701
+.preheader:                                       ; preds = %716, %709
+  %718 = phi %"struct.std::__detail::_Hash_node.203"* [ %722, %716 ], [ %711, %709 ]
+  %719 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %718, i64 0, i32 0, i32 0, i32 0
+  %720 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %719 unordered, align 8, !tbaa !73
+  %721 = icmp eq %"struct.std::__detail::_Hash_node_base"* %720, null
+  %722 = bitcast %"struct.std::__detail::_Hash_node_base"* %720 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %721, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %723
 
-701:                                              ; preds = %.preheader
-  %702 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %698, i64 1
-  %703 = bitcast %"struct.std::__detail::_Hash_node_base"* %702 to i32*
-  %704 = load i32, i32* %703, align 4, !tbaa !74
-  %705 = sext i32 %704 to i64
-  %706 = urem i64 %705, %680
-  %707 = icmp eq i64 %706, %681
-  br i1 %707, label %694, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+723:                                              ; preds = %.preheader
+  %724 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %720, i64 1
+  %725 = bitcast %"struct.std::__detail::_Hash_node_base"* %724 to i32*
+  %726 = load atomic i32, i32* %725 unordered, align 4, !tbaa !66
+  %727 = sext i32 %726 to i64
+  %728 = urem i64 %727, %702
+  %729 = icmp eq i64 %728, %703
+  br i1 %729, label %716, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-708:                                              ; preds = %694
-  %709 = icmp eq %"struct.std::__detail::_Hash_node.203"* %696, null
-  br i1 %709, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %712
+730:                                              ; preds = %716
+  %731 = icmp eq %"struct.std::__detail::_Hash_node.203"* %718, null
+  br i1 %731, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %734
 
-710:                                              ; preds = %687
-  %711 = icmp eq %"struct.std::__detail::_Hash_node.203"* %689, null
-  br i1 %711, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %712
+732:                                              ; preds = %709
+  %733 = icmp eq %"struct.std::__detail::_Hash_node.203"* %711, null
+  br i1 %733, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %734
 
-712:                                              ; preds = %710, %708
-  %713 = phi %"struct.std::__detail::_Hash_node.203"* [ %700, %708 ], [ %689, %710 ]
-  %714 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %713, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %715 = bitcast i8* %714 to %"class.(anonymous namespace)::Future"**
-  %716 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %715, align 8, !tbaa !114
-  %717 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %716, i64 0, i32 3
-  %718 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %719 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718, i64 328
-  %720 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %719 to i32*
-  %721 = atomicrmw xchg i32* %720, i32 1 seq_cst, align 4
-  %722 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %717) #37
-  %723 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718, null
-  br i1 %723, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %724
+734:                                              ; preds = %732, %730
+  %735 = phi %"struct.std::__detail::_Hash_node.203"* [ %722, %730 ], [ %711, %732 ]
+  %736 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %735, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %737 = bitcast i8* %736 to %"class.(anonymous namespace)::Future"**
+  %738 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %737 unordered, align 8, !tbaa !112
+  %739 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %738, i64 0, i32 3
+  %740 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %741 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %740, i64 328
+  %742 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %741 to i32*
+  %743 = atomicrmw xchg i32* %742, i32 1 seq_cst, align 4
+  %744 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %739) #37
+  %745 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %740, null
+  br i1 %745, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %746
 
-724:                                              ; preds = %712
-  %725 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %719 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %726 = atomicrmw xchg i32* %720, i32 %721 seq_cst, align 4
-  %727 = icmp eq i32 %726, 1
-  %728 = icmp eq i32 %721, 0
-  %729 = and i1 %728, %727
-  br i1 %729, label %730, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+746:                                              ; preds = %734
+  %747 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %741 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %748 = atomicrmw xchg i32* %742, i32 %743 seq_cst, align 4
+  %749 = icmp eq i32 %748, 1
+  %750 = icmp eq i32 %743, 0
+  %751 = and i1 %750, %749
+  br i1 %751, label %752, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-730:                                              ; preds = %724
-  %731 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %732 = and i8 %731, 1
-  %733 = icmp eq i8 %732, 0
-  br i1 %733, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %734
+752:                                              ; preds = %746
+  %753 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %754 = and i8 %753, 1
+  %755 = icmp eq i8 %754, 0
+  br i1 %755, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %756
 
-734:                                              ; preds = %730
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %725) #37
+756:                                              ; preds = %752
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %747) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %734, %730, %724, %712
-  %735 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %716, i64 0, i32 0
-  %736 = load i32, i32* %735, align 8, !tbaa !100
-  %737 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %738 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737, i64 328
-  %739 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738 to i32*
-  %740 = atomicrmw xchg i32* %739, i32 1 seq_cst, align 4
-  %741 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %717) #37
-  %742 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737, null
-  br i1 %742, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %743
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %756, %752, %746, %734
+  %757 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %738, i64 0, i32 0
+  %758 = load atomic i32, i32* %757 unordered, align 8, !tbaa !98
+  %759 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %760 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %759, i64 328
+  %761 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %760 to i32*
+  %762 = atomicrmw xchg i32* %761, i32 1 seq_cst, align 4
+  %763 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %739) #37
+  %764 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %759, null
+  br i1 %764, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %765
 
-743:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %744 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %745 = atomicrmw xchg i32* %739, i32 %740 seq_cst, align 4
-  %746 = icmp eq i32 %745, 1
-  %747 = icmp eq i32 %740, 0
-  %748 = and i1 %747, %746
-  br i1 %748, label %749, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+765:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %766 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %760 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %767 = atomicrmw xchg i32* %761, i32 %762 seq_cst, align 4
+  %768 = icmp eq i32 %767, 1
+  %769 = icmp eq i32 %762, 0
+  %770 = and i1 %769, %768
+  br i1 %770, label %771, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-749:                                              ; preds = %743
-  %750 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %751 = and i8 %750, 1
-  %752 = icmp eq i8 %751, 0
-  br i1 %752, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %753
+771:                                              ; preds = %765
+  %772 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %773 = and i8 %772, 1
+  %774 = icmp eq i8 %773, 0
+  br i1 %774, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %775
 
-753:                                              ; preds = %749
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %744) #37
+775:                                              ; preds = %771
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %766) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %753, %749, %743, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %710, %708, %701, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %754 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %708 ], [ 0, %710 ], [ %736, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %736, %753 ], [ %736, %749 ], [ %736, %743 ], [ 0, %.preheader ], [ 0, %701 ]
-  %755 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %756 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %755, i64 328
-  %757 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %756 to i32*
-  %758 = atomicrmw xchg i32* %757, i32 1 seq_cst, align 4
-  %759 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %660) #37
-  %760 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %755, null
-  br i1 %760, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %761
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %775, %771, %765, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %732, %730, %723, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %776 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %730 ], [ 0, %732 ], [ %758, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %758, %775 ], [ %758, %771 ], [ %758, %765 ], [ 0, %.preheader ], [ 0, %723 ]
+  %777 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %778 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %777, i64 328
+  %779 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %778 to i32*
+  %780 = atomicrmw xchg i32* %779, i32 1 seq_cst, align 4
+  %781 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %682) #37
+  %782 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %777, null
+  br i1 %782, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %783
 
-761:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %762 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %756 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %763 = atomicrmw xchg i32* %757, i32 %758 seq_cst, align 4
-  %764 = icmp eq i32 %763, 1
-  %765 = icmp eq i32 %758, 0
-  %766 = and i1 %765, %764
-  br i1 %766, label %767, label %Kotlin_Worker_stateOfFuture.exit.i.i
+783:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %784 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %778 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %785 = atomicrmw xchg i32* %779, i32 %780 seq_cst, align 4
+  %786 = icmp eq i32 %785, 1
+  %787 = icmp eq i32 %780, 0
+  %788 = and i1 %787, %786
+  br i1 %788, label %789, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-767:                                              ; preds = %761
-  %768 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %769 = and i8 %768, 1
-  %770 = icmp eq i8 %769, 0
-  br i1 %770, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %771
+789:                                              ; preds = %783
+  %790 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %791 = and i8 %790, 1
+  %792 = icmp eq i8 %791, 0
+  br i1 %792, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %793
 
-771:                                              ; preds = %767
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %762) #37
+793:                                              ; preds = %789
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %784) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %771, %767, %761, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %772 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %658, i64 1
-  %773 = bitcast %struct.ObjHeader* %772 to i32*
-  %774 = load i32, i32* %773, align 8, !tbaa !18
-  %775 = icmp ugt i32 %774, %754
-  br i1 %775, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %776
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %793, %789, %783, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %794 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %680, i64 1
+  %795 = bitcast %struct.ObjHeader* %794 to i32*
+  %796 = load atomic i32, i32* %795 unordered, align 8, !tbaa !18
+  %797 = icmp ugt i32 %796, %776
+  br i1 %797, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %798
 
-776:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+798:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %777 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %658, i64 2
-  %778 = sext i32 %754 to i64
-  %779 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %777, i64 %778
-  %780 = bitcast %struct.ObjHeader* %779 to %struct.ObjHeader**
-  %781 = load %struct.ObjHeader*, %struct.ObjHeader** %780, align 8, !tbaa !3
-  store %struct.ObjHeader* %781, %struct.ObjHeader** %212, align 8, !tbaa !3
-  %782 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %783 = load i64, i64* %141, align 8, !tbaa !9
-  %784 = bitcast %"class.kotlin::mm::ShadowStack"* %782 to i64*
-  store i64 %783, i64* %784, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %137)
-  %785 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %781, i64 2
-  %786 = bitcast %struct.ObjHeader* %785 to i32*
-  %787 = load i32, i32* %786, align 4
-  switch i32 %787, label %when_next27.i [
+  %799 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %680, i64 2
+  %800 = sext i32 %776 to i64
+  %801 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %799, i64 %800
+  %802 = bitcast %struct.ObjHeader* %801 to %struct.ObjHeader**
+  %803 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %802 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %803, %struct.ObjHeader** %231, align 8, !tbaa !3
+  %804 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %805 = load atomic i64, i64* %159 unordered, align 8, !tbaa !9
+  %806 = bitcast %"class.kotlin::mm::ShadowStack"* %804 to i64*
+  store i64 %805, i64* %806, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %155)
+  %807 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %803, i64 2
+  %808 = bitcast %struct.ObjHeader* %807 to i32*
+  %809 = load atomic i32, i32* %808 unordered, align 4
+  switch i32 %809, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1311,71 +1345,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %650, %struct.ObjHeader** nonnull %213)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %672, %struct.ObjHeader** nonnull %232)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %788 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %789 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %790 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %789 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %791 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %790, align 8, !tbaa !3
-  %792 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %791, i64 0, i32 2, i32 1
-  %793 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %792, i64 56) #37
-  %794 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793, i64 1
-  %795 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793, i64 2
-  %796 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795 to %struct.ObjHeader*
-  %797 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795 to %struct.TypeInfo**
-  %798 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %794 to i64*
-  store i64 0, i64* %798, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %797, align 8, !tbaa !14
-  %799 = bitcast %struct.ObjHeader** %788 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %799, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %796, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @147 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %796) #50
+  %810 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %811 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %812 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %811 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %813 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %812 unordered, align 8, !tbaa !3
+  %814 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %813, i64 0, i32 2, i32 1
+  %815 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %814, i64 56) #37
+  %816 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815, i64 1
+  %817 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815, i64 2
+  %818 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %817 to %struct.ObjHeader*
+  %819 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %817 to %struct.TypeInfo**
+  %820 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %816 to i64*
+  store i64 0, i64* %820, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %819, align 8, !tbaa !14
+  %821 = bitcast %struct.ObjHeader** %810 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %817, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %821, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %818, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @147 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %818) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %800 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %801 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %650, %struct.ObjHeader** nonnull %801)
-  %802 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %803 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %802 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %804 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %803, align 8, !tbaa !3
-  %805 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %804, i64 0, i32 2, i32 1
-  %806 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %805, i64 56) #37
-  %807 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %806, i64 1
-  %808 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %806, i64 2
-  %809 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %808 to %struct.ObjHeader*
-  %810 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %808 to %struct.TypeInfo**
-  %811 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %807 to i64*
-  store i64 0, i64* %811, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %810, align 8, !tbaa !14
-  %812 = bitcast %struct.ObjHeader** %800 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %808, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %812, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %809, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @148 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %809) #50
+  %822 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %823 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %672, %struct.ObjHeader** nonnull %823)
+  %824 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %825 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %824 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %826 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %825 unordered, align 8, !tbaa !3
+  %827 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %826, i64 0, i32 2, i32 1
+  %828 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %827, i64 56) #37
+  %829 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828, i64 1
+  %830 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828, i64 2
+  %831 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %830 to %struct.ObjHeader*
+  %832 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %830 to %struct.TypeInfo**
+  %833 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %829 to i64*
+  store i64 0, i64* %833, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %832, align 8, !tbaa !14
+  %834 = bitcast %struct.ObjHeader** %822 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %830, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %834, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %831, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @148 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %831) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %813 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %814 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %650, %struct.ObjHeader** nonnull %814)
-  %815 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %816 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %815 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %817 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %816, align 8, !tbaa !3
-  %818 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %817, i64 0, i32 2, i32 1
-  %819 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %818, i64 56) #37
-  %820 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %819, i64 1
-  %821 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %819, i64 2
-  %822 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %821 to %struct.ObjHeader*
-  %823 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %821 to %struct.TypeInfo**
-  %824 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %820 to i64*
-  store i64 0, i64* %824, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %823, align 8, !tbaa !14
-  %825 = bitcast %struct.ObjHeader** %813 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %821, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %825, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %822, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @149 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %822) #50
+  %835 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %836 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %672, %struct.ObjHeader** nonnull %836)
+  %837 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %838 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %837 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %839 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %838 unordered, align 8, !tbaa !3
+  %840 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %839, i64 0, i32 2, i32 1
+  %841 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %840, i64 56) #37
+  %842 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841, i64 1
+  %843 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841, i64 2
+  %844 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %843 to %struct.ObjHeader*
+  %845 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %843 to %struct.TypeInfo**
+  %846 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %842 to i64*
+  store i64 0, i64* %846, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %845, align 8, !tbaa !14
+  %847 = bitcast %struct.ObjHeader** %835 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %843, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %847, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %844, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @149 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %844) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1388,10 +1422,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %826 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %827 = bitcast %"class.kotlin::mm::ShadowStack"* %826 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %208)
-  %828 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %828, i64* %827, align 8, !tbaa !7
+  %848 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %849 = bitcast %"class.kotlin::mm::ShadowStack"* %848 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %227)
+  %850 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %850, i64* %849, align 8, !tbaa !7
   ret void
 }
