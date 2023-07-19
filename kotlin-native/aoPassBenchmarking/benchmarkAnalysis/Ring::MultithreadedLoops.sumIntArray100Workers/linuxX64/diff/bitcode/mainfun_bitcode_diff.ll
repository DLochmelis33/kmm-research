--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumIntArray100Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:52:50.580545955 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumIntArray100Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:04:20.360337777 +0200
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
@@ -52,1254 +52,1288 @@
   call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %33)
   %.sub.i2 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 0
   call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(80) %33, i8 0, i32 80, i1 immarg false) #49
-  %34 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 4
-  %35 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 5
-  %36 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 7
-  %37 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 8
-  %38 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 9
-  %39 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %40 = bitcast [10 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
-  %41 = bitcast %"class.kotlin::mm::ShadowStack"* %39 to i64*
-  %42 = load i64, i64* %41, align 8, !tbaa !7
-  %43 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 1
-  %44 = bitcast %struct.ObjHeader** %43 to i64*
-  store i64 %42, i64* %44, align 8, !tbaa !9
-  %45 = bitcast %"class.kotlin::mm::ShadowStack"* %39 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %45, align 8, !tbaa !7
-  %46 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 2
-  %47 = bitcast %struct.ObjHeader** %46 to i32*
-  store i32 0, i32* %47, align 8, !tbaa !12
-  %48 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %40, i64 0, i32 3
-  store i32 10, i32* %48, align 4, !tbaa !13
-  %49 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
-  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %49 to i32*
-  store i32 100, i32* %50, align 8
-  %51 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %52 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %51 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %53 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52, align 8, !tbaa !3
-  %54 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %53, i64 0, i32 2, i32 1
-  %55 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %54, i64 824) #37
-  %56 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 1
-  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 2
-  %58 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to %struct.TypeInfo**
-  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %58, align 8, !tbaa !16
-  %60 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 3
-  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60 to i32*
-  store i32 100, i32* %61, align 8, !tbaa !18
-  %62 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
-  %63 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %64 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i64*
-  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 4
-  br label %loop_check.i7
+  %34 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 7
+  %35 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 8
+  %36 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 9
+  %37 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %38 = bitcast [10 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
+  %39 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to i64*
+  %40 = load atomic i64, i64* %39 unordered, align 8, !tbaa !7
+  %41 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 1
+  %42 = bitcast %struct.ObjHeader** %41 to i64*
+  store i64 %40, i64* %42, align 8, !tbaa !9
+  %43 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %43, align 8, !tbaa !7
+  %44 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 2
+  %45 = bitcast %struct.ObjHeader** %44 to i32*
+  store i32 0, i32* %45, align 8, !tbaa !12
+  %46 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %38, i64 0, i32 3
+  store i32 10, i32* %46, align 4, !tbaa !13
+  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
+  %48 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i32*
+  store i32 100, i32* %48, align 8
+  %49 = load atomic i32, i32* %48 unordered, align 8
+  %50 = icmp slt i32 %49, 0
+  br i1 %50, label %when_case.i3, label %AllocArrayInstance.exit.i5
 
-while_loop.i4:                                    ; preds = %loop_check.i7
-  %66 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %67 = and i8 %66, 1
-  %68 = icmp eq i8 %67, 0
-  br i1 %68, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %69
+when_case.i3:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %51 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 3
+  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %53 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %52 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %54 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %53 unordered, align 8, !tbaa !3
+  %55 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %54, i64 0, i32 2, i32 1
+  %56 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %55, i64 56) #37
+  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 1
+  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 2
+  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.ObjHeader*
+  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.TypeInfo**
+  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i64*
+  store i64 0, i64* %61, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %60, align 8, !tbaa !14
+  %62 = bitcast %struct.ObjHeader** %51 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %59, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %59) #50
+  unreachable
 
-69:                                               ; preds = %while_loop.i4
+AllocArrayInstance.exit.i5:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %63 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 5
+  %64 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 4
+  %65 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %66 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %65 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %67 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %66 unordered, align 8, !tbaa !3
+  %68 = zext i32 %49 to i64
+  %69 = shl nuw nsw i64 %68, 3
+  %70 = add nuw nsw i64 %69, 31
+  %71 = and i64 %70, 68719476728
+  %72 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %67, i64 0, i32 2, i32 1
+  %73 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %72, i64 %71) #37
+  %74 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 1
+  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 2
+  %76 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to %struct.TypeInfo**
+  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %77, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %76, align 8, !tbaa !16
+  %78 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 3
+  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78 to i32*
+  store i32 %49, i32* %79, align 8, !tbaa !18
+  %80 = bitcast %struct.ObjHeader** %64 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %80, align 8, !tbaa !3
+  %81 = bitcast %struct.ObjHeader** %63 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i64*
+  %83 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 4
+  %wide.trip.count62 = zext i32 %49 to i64
+  br label %loop_check.i9
+
+while_loop.i6:                                    ; preds = %loop_check.i9
+  %84 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %85 = and i8 %84, 1
+  %86 = icmp eq i8 %85, 0
+  br i1 %86, label %Kotlin_mm_safePointWhileLoopBody.exit.i7, label %87
+
+87:                                               ; preds = %while_loop.i6
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5
+  br label %Kotlin_mm_safePointWhileLoopBody.exit.i7
 
-Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %69, %while_loop.i4
-  %70 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %71 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %70 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %72 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %71, align 8, !tbaa !3
-  %73 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %72, i64 0, i32 2, i32 1
-  %74 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %73, i64 40024) #37
-  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 1
-  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 2
-  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.TypeInfo**
-  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %78, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %77, align 8, !tbaa !16
-  %79 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 3
-  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to i32*
-  store i32 10000, i32* %80, align 8, !tbaa !18
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i64*
-  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 4
-  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to i32*
+Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %87, %while_loop.i6
+  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %90 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89 unordered, align 8, !tbaa !3
+  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
+  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 40024) #37
+  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
+  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %95, align 8, !tbaa !16
+  %97 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 3
+  %98 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97 to i32*
+  store i32 10000, i32* %98, align 8, !tbaa !18
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
+  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
+  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 4
+  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to i32*
   br label %loop_check12.i
 
 while_loop13.i:                                   ; preds = %loop_check12.i
-  %84 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %85 = and i8 %84, 1
-  %86 = icmp eq i8 %85, 0
-  br i1 %86, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %87
+  %102 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %103 = and i8 %102, 1
+  %104 = icmp eq i8 %103, 0
+  br i1 %104, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %105
 
-87:                                               ; preds = %while_loop13.i
+105:                                              ; preds = %while_loop13.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit1.i
 
-Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %87, %while_loop13.i
-  %88 = load i32, i32* %80, align 8, !tbaa !18
-  %89 = zext i32 %88 to i64
-  %90 = icmp ult i64 %indvars.iv56, %89
-  br i1 %90, label %Kotlin_IntArray_set.exit.i, label %91
+Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %105, %while_loop13.i
+  %106 = load atomic i32, i32* %98 unordered, align 8, !tbaa !18
+  %107 = zext i32 %106 to i64
+  %108 = icmp ult i64 %indvars.iv57, %107
+  br i1 %108, label %Kotlin_IntArray_set.exit.i, label %109
 
-91:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
+109:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_IntArray_set.exit.i:                       ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
-  %92 = load atomic volatile i64, i64* %81 monotonic, align 8
-  %93 = getelementptr inbounds i32, i32* %83, i64 %indvars.iv56
-  %94 = trunc i64 %indvars.iv56 to i32
-  store i32 %94, i32* %93, align 4, !tbaa !74
-  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
+  %110 = load atomic volatile i64, i64* %99 monotonic, align 8
+  %111 = getelementptr inbounds i32, i32* %101, i64 %indvars.iv57
+  %112 = trunc i64 %indvars.iv57 to i32
+  store i32 %112, i32* %111, align 4, !tbaa !66
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
-  %95 = load i32, i32* %61, align 8, !tbaa !18
-  %96 = zext i32 %95 to i64
-  %97 = icmp ult i64 %indvars.iv59, %96
-  br i1 %97, label %Kotlin_Array_set.exit2.i, label %98
+  %113 = load atomic i32, i32* %79 unordered, align 8, !tbaa !18
+  %114 = zext i32 %113 to i64
+  %115 = icmp ult i64 %indvars.iv60, %114
+  br i1 %115, label %Kotlin_Array_set.exit2.i, label %116
 
-98:                                               ; preds = %loop_exit11.i
+116:                                              ; preds = %loop_exit11.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit2.i:                         ; preds = %loop_exit11.i
-  %99 = load atomic volatile i64, i64* %64 monotonic, align 8
-  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, i64 %indvars.iv59
-  %101 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %101, align 8, !tbaa !3
-  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
-  br label %loop_check.i7
+  %117 = load atomic volatile i64, i64* %82 monotonic, align 8
+  %118 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83, i64 %indvars.iv60
+  %119 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %119, align 8, !tbaa !3
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
-  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %102, align 8, !tbaa !3
-  %103 = load i32, i32* %50, align 8
-  %104 = icmp slt i32 %103, 0
-  br i1 %104, label %when_case20.i, label %AllocArrayInstance.exit.i9
+loop_exit.i10:                                    ; preds = %loop_check.i9
+  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %120, align 8, !tbaa !3
+  %121 = load atomic i32, i32* %48 unordered, align 8
+  %122 = icmp slt i32 %121, 0
+  br i1 %122, label %when_case20.i, label %AllocArrayInstance.exit3.i
 
-when_case20.i:                                    ; preds = %loop_exit.i8
-  %105 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 6
-  %106 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %107 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %106 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %108 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %107, align 8, !tbaa !3
-  %109 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %108, i64 0, i32 2, i32 1
-  %110 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %109, i64 56) #37
-  %111 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, i64 1
-  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, i64 2
-  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to %struct.ObjHeader*
-  %114 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to %struct.TypeInfo**
-  %115 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %111 to i64*
-  store i64 0, i64* %115, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %114, align 8, !tbaa !14
-  %116 = bitcast %struct.ObjHeader** %105 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %116, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %113, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %113) #50
+when_case20.i:                                    ; preds = %loop_exit.i10
+  %123 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 6
+  %124 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %125 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %124 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %126 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %125 unordered, align 8, !tbaa !3
+  %127 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %126, i64 0, i32 2, i32 1
+  %128 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %127, i64 56) #37
+  %129 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 1
+  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 2
+  %131 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to %struct.ObjHeader*
+  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to %struct.TypeInfo**
+  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to i64*
+  store i64 0, i64* %133, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %132, align 8, !tbaa !14
+  %134 = bitcast %struct.ObjHeader** %123 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %134, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %131, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %131) #50
   unreachable
 
-AllocArrayInstance.exit.i9:                       ; preds = %loop_exit.i8
-  %117 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %118 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %117 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %119 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %118, align 8, !tbaa !3
-  %120 = zext i32 %103 to i64
-  %121 = shl nuw nsw i64 %120, 3
-  %122 = add nuw nsw i64 %121, 31
-  %123 = and i64 %122, 68719476728
-  %124 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %119, i64 0, i32 2, i32 1
-  %125 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %124, i64 %123) #37
-  %126 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125, i64 1
-  %127 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125, i64 2
-  %128 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127 to %struct.TypeInfo**
-  %129 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %129, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %128, align 8, !tbaa !16
-  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125, i64 3
-  %131 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to i32*
-  store i32 %103, i32* %131, align 8, !tbaa !18
-  %132 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %132, align 8, !tbaa !3
-  %133 = bitcast %struct.ObjHeader** %37 to i64*
-  %134 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  %.sub.i.i11 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %135 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %136 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %137 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %138 = bitcast %struct.ObjHeader** %137 to i64*
-  %139 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %140 = bitcast %struct.ObjHeader** %139 to i32*
-  %141 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %136, i64 0, i32 3
-  %142 = bitcast %struct.ObjHeader** %135 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %143 = bitcast %struct.ObjHeader** %38 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %144 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127 to i64*
-  %145 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125, i64 4
-  %wide.trip.count54 = zext i32 %103 to i64
+AllocArrayInstance.exit3.i:                       ; preds = %loop_exit.i10
+  %135 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %136 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %135 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %137 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %136 unordered, align 8, !tbaa !3
+  %138 = zext i32 %121 to i64
+  %139 = shl nuw nsw i64 %138, 3
+  %140 = add nuw nsw i64 %139, 31
+  %141 = and i64 %140, 68719476728
+  %142 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %137, i64 0, i32 2, i32 1
+  %143 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %142, i64 %141) #37
+  %144 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %143, i64 1
+  %145 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %143, i64 2
+  %146 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145 to %struct.TypeInfo**
+  %147 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %147, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %146, align 8, !tbaa !16
+  %148 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %143, i64 3
+  %149 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148 to i32*
+  store i32 %121, i32* %149, align 8, !tbaa !18
+  %150 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %150, align 8, !tbaa !3
+  %151 = bitcast %struct.ObjHeader** %35 to i64*
+  %152 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
+  %153 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %154 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %155 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %156 = bitcast %struct.ObjHeader** %155 to i64*
+  %157 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %158 = bitcast %struct.ObjHeader** %157 to i32*
+  %159 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %154, i64 0, i32 3
+  %160 = bitcast %struct.ObjHeader** %153 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %161 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %162 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145 to i64*
+  %163 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %143, i64 4
+  %wide.trip.count55 = zext i32 %121 to i64
   br label %loop_check31.i
 
 while_loop32.i:                                   ; preds = %loop_check31.i
-  %146 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %147 = and i8 %146, 1
-  %148 = icmp eq i8 %147, 0
-  br i1 %148, label %Kotlin_mm_safePointWhileLoopBody.exit3.i, label %149
+  %164 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %165 = and i8 %164, 1
+  %166 = icmp eq i8 %165, 0
+  br i1 %166, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %167
 
-149:                                              ; preds = %while_loop32.i
+167:                                              ; preds = %while_loop32.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit3.i
+  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i
 
-Kotlin_mm_safePointWhileLoopBody.exit3.i:         ; preds = %149, %while_loop32.i
-  %150 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %150, i64* %133, align 8, !tbaa !3
-  %151 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %152 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %151, i32 0)
-  %153 = icmp eq %class.Worker* %152, null
-  br i1 %153, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %154
+Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %167, %while_loop32.i
+  %168 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %168, i64* %151, align 8, !tbaa !3
+  %169 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %170 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %169, i32 0)
+  %171 = icmp eq %class.Worker* %170, null
+  br i1 %171, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %172
 
-154:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %155 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %156 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %155, i64 328
-  %157 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %156 to i32*
-  %158 = atomicrmw xchg i32* %157, i32 1 seq_cst, align 4
-  %159 = getelementptr inbounds %class.Worker, %class.Worker* %152, i64 0, i32 9
-  %160 = bitcast %class.Worker* %152 to i8*
-  %161 = call i32 @pthread_create(i64* nonnull %159, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %160) #37
-  %162 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %155, null
-  br i1 %162, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %163
+172:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %173 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %174 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %173, i64 328
+  %175 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %174 to i32*
+  %176 = atomicrmw xchg i32* %175, i32 1 seq_cst, align 4
+  %177 = getelementptr inbounds %class.Worker, %class.Worker* %170, i64 0, i32 9
+  %178 = bitcast %class.Worker* %170 to i8*
+  %179 = call i32 @pthread_create(i64* nonnull %177, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %178) #37
+  %180 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %173, null
+  br i1 %180, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %181
 
-163:                                              ; preds = %154
-  %164 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %156 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %165 = atomicrmw xchg i32* %157, i32 %158 seq_cst, align 4
-  %166 = icmp eq i32 %165, 1
-  %167 = icmp eq i32 %158, 0
-  %168 = and i1 %167, %166
-  br i1 %168, label %169, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+181:                                              ; preds = %172
+  %182 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %174 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %183 = atomicrmw xchg i32* %175, i32 %176 seq_cst, align 4
+  %184 = icmp eq i32 %183, 1
+  %185 = icmp eq i32 %176, 0
+  %186 = and i1 %185, %184
+  br i1 %186, label %187, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-169:                                              ; preds = %163
-  %170 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %171 = and i8 %170, 1
-  %172 = icmp eq i8 %171, 0
-  br i1 %172, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %173
+187:                                              ; preds = %181
+  %188 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %189 = and i8 %188, 1
+  %190 = icmp eq i8 %189, 0
+  br i1 %190, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %191
 
-173:                                              ; preds = %169
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %164) #37
-  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+191:                                              ; preds = %187
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %182) #37
+  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10: ; preds = %173, %169, %163, %154
-  %174 = getelementptr inbounds %class.Worker, %class.Worker* %152, i64 0, i32 0
-  %175 = load i32, i32* %174, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %191, %187, %181, %172
+  %192 = getelementptr inbounds %class.Worker, %class.Worker* %170, i64 0, i32 0
+  %193 = load atomic i32, i32* %192 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
-"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %176 = phi i32 [ %175, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit3.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %134)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %134, i8 0, i32 32, i1 immarg false) #49
-  %177 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %178 = bitcast %"class.kotlin::mm::ShadowStack"* %177 to i64*
-  %179 = load i64, i64* %178, align 8, !tbaa !7
-  store i64 %179, i64* %138, align 8, !tbaa !9
-  %180 = bitcast %"class.kotlin::mm::ShadowStack"* %177 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %180, align 8, !tbaa !7
-  store i32 0, i32* %140, align 8, !tbaa !12
-  store i32 4, i32* %141, align 4, !tbaa !13
-  %181 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %182 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %181 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %183 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %182, align 8, !tbaa !3
-  %184 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %183, i64 0, i32 2, i32 1
-  %185 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %184, i64 24) #37
-  %186 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %185, i64 1
-  %187 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %185, i64 2
-  %188 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187 to %struct.TypeInfo**
-  %189 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %186 to i64*
-  store i64 0, i64* %189, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %188, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %142, align 8, !tbaa !3
-  %190 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %185, i64 3
-  %191 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190 to i32*
-  store i32 %176, i32* %191, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %143, align 8, !tbaa !3
-  %192 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %193 = load i64, i64* %138, align 8, !tbaa !9
-  %194 = bitcast %"class.kotlin::mm::ShadowStack"* %192 to i64*
-  store i64 %193, i64* %194, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %134)
-  %195 = load i32, i32* %131, align 8, !tbaa !18
-  %196 = zext i32 %195 to i64
-  %197 = icmp ult i64 %indvars.iv52, %196
-  br i1 %197, label %Kotlin_Array_set.exit.i12, label %198
+"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %194 = phi i32 [ %193, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit4.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %152)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %152, i8 0, i32 32, i1 immarg false) #49
+  %195 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %196 = bitcast %"class.kotlin::mm::ShadowStack"* %195 to i64*
+  %197 = load atomic i64, i64* %196 unordered, align 8, !tbaa !7
+  store i64 %197, i64* %156, align 8, !tbaa !9
+  %198 = bitcast %"class.kotlin::mm::ShadowStack"* %195 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %198, align 8, !tbaa !7
+  store i32 0, i32* %158, align 8, !tbaa !12
+  store i32 4, i32* %159, align 4, !tbaa !13
+  %199 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %200 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %199 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %201 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %200 unordered, align 8, !tbaa !3
+  %202 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %201, i64 0, i32 2, i32 1
+  %203 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %202, i64 24) #37
+  %204 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203, i64 1
+  %205 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203, i64 2
+  %206 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205 to %struct.TypeInfo**
+  %207 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204 to i64*
+  store i64 0, i64* %207, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %206, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %160, align 8, !tbaa !3
+  %208 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203, i64 3
+  %209 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208 to i32*
+  store i32 %194, i32* %209, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %161, align 8, !tbaa !3
+  %210 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %211 = load atomic i64, i64* %156 unordered, align 8, !tbaa !9
+  %212 = bitcast %"class.kotlin::mm::ShadowStack"* %210 to i64*
+  store i64 %211, i64* %212, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %152)
+  %213 = load atomic i32, i32* %149 unordered, align 8, !tbaa !18
+  %214 = zext i32 %213 to i64
+  %215 = icmp ult i64 %indvars.iv53, %214
+  br i1 %215, label %Kotlin_Array_set.exit.i13, label %216
 
-198:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+216:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit.i12:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %199 = load atomic volatile i64, i64* %144 monotonic, align 8
-  %200 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 %indvars.iv52
-  %201 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %201, align 8, !tbaa !3
-  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
+Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+  %217 = load atomic volatile i64, i64* %162 monotonic, align 8
+  %218 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %163, i64 %indvars.iv53
+  %219 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %219, align 8, !tbaa !3
+  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
   br label %loop_check31.i
 
-loop_check31.i:                                   ; preds = %Kotlin_Array_set.exit.i12, %AllocArrayInstance.exit.i9
-  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %Kotlin_Array_set.exit.i12 ], [ 0, %AllocArrayInstance.exit.i9 ]
-  %exitcond55.not = icmp eq i64 %indvars.iv52, %wide.trip.count54
-  br i1 %exitcond55.not, label %call_success, label %while_loop32.i
+loop_check31.i:                                   ; preds = %Kotlin_Array_set.exit.i13, %AllocArrayInstance.exit3.i
+  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i13 ], [ 0, %AllocArrayInstance.exit3.i ]
+  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
+  br i1 %exitcond56.not, label %call_success, label %while_loop32.i
 
 call_success:                                     ; preds = %loop_check31.i
-  %202 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %202, align 8, !tbaa !3
-  %203 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %204 = load i64, i64* %44, align 8, !tbaa !3
+  %220 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %220, align 8, !tbaa !3
+  %221 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %222 = load atomic i64, i64* %42 unordered, align 8, !tbaa !9
+  %223 = bitcast %"class.kotlin::mm::ShadowStack"* %221 to i64*
+  store i64 %222, i64* %223, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %33)
-  %205 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %205)
+  %224 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %224)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %205, i8 0, i32 136, i1 immarg false) #49
-  %206 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %207 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %208 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %209 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %210 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %211 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %212 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %213 = bitcast %struct.ObjHeader** %212 to i64*
-  store i64 %204, i64* %213, align 8, !tbaa !9
-  %214 = bitcast %"class.kotlin::mm::ShadowStack"* %203 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %214, align 8, !tbaa !7
-  %215 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %216 = bitcast %struct.ObjHeader** %215 to i32*
-  store i32 0, i32* %216, align 8, !tbaa !12
-  %217 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %211, i64 0, i32 3
-  store i32 17, i32* %217, align 4, !tbaa !13
-  %218 = load i32, i32* %50, align 8
-  %219 = icmp slt i32 %218, 0
-  br i1 %219, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %224, i8 0, i32 136, i1 immarg false) #49
+  %225 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %226 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %227 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %228 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %229 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %230 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %231 = load atomic i64, i64* %223 unordered, align 8, !tbaa !7
+  %232 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %233 = bitcast %struct.ObjHeader** %232 to i64*
+  store i64 %231, i64* %233, align 8, !tbaa !9
+  %234 = bitcast %"class.kotlin::mm::ShadowStack"* %221 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %234, align 8, !tbaa !7
+  %235 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %236 = bitcast %struct.ObjHeader** %235 to i32*
+  store i32 0, i32* %236, align 8, !tbaa !12
+  %237 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %230, i64 0, i32 3
+  store i32 17, i32* %237, align 4, !tbaa !13
+  %238 = load atomic i32, i32* %48 unordered, align 8
+  %239 = icmp slt i32 %238, 0
+  br i1 %239, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %220 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %221 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %222 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %221 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %223 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %222, align 8, !tbaa !3
-  %224 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %223, i64 0, i32 2, i32 1
-  %225 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %224, i64 56) #37
-  %226 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 1
-  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 2
-  %228 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to %struct.ObjHeader*
-  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to %struct.TypeInfo**
-  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226 to i64*
-  store i64 0, i64* %230, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %229, align 8, !tbaa !14
-  %231 = bitcast %struct.ObjHeader** %220 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %231, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %228, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %228) #50
+  %240 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %241 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %242 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %241 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %243 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %242 unordered, align 8, !tbaa !3
+  %244 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %243, i64 0, i32 2, i32 1
+  %245 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %244, i64 56) #37
+  %246 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, i64 1
+  %247 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, i64 2
+  %248 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to %struct.ObjHeader*
+  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to %struct.TypeInfo**
+  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246 to i64*
+  store i64 0, i64* %250, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %249, align 8, !tbaa !14
+  %251 = bitcast %struct.ObjHeader** %240 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %251, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %248, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %248) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %232 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %233 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %234 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %235 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %236 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %235 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %237 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %236, align 8, !tbaa !3
-  %238 = zext i32 %218 to i64
-  %239 = shl nuw nsw i64 %238, 3
-  %240 = add nuw nsw i64 %239, 31
-  %241 = and i64 %240, 68719476728
-  %242 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %237, i64 0, i32 2, i32 1
-  %243 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %242, i64 %241) #37
-  %244 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243, i64 1
-  %245 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243, i64 2
-  %246 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245 to %struct.TypeInfo**
-  %247 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %247, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %246, align 8, !tbaa !16
-  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243, i64 3
-  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to i32*
-  store i32 %218, i32* %249, align 8, !tbaa !18
-  %250 = bitcast %struct.ObjHeader** %234 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %250, align 8, !tbaa !3
-  %251 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251 to %struct.ObjHeader**
-  %253 = bitcast %struct.ObjHeader** %233 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %254 = bitcast %class.ObjHolder* %3 to i8*
-  %255 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %256 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %257 = bitcast %struct.FrameOverlay.6** %256 to i64*
-  %258 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %259 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %260 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %261 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %262 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %263 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %264 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %265 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %266 = bitcast %struct.ObjHeader** %232 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %267 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245 to i64*
-  %268 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243, i64 4
-  %wide.trip.count50 = zext i32 %218 to i64
+  %252 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %253 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %254 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %255 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %256 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %255 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %257 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %256 unordered, align 8, !tbaa !3
+  %258 = zext i32 %238 to i64
+  %259 = shl nuw nsw i64 %258, 3
+  %260 = add nuw nsw i64 %259, 31
+  %261 = and i64 %260, 68719476728
+  %262 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %257, i64 0, i32 2, i32 1
+  %263 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %262, i64 %261) #37
+  %264 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %263, i64 1
+  %265 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %263, i64 2
+  %266 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265 to %struct.TypeInfo**
+  %267 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %267, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %266, align 8, !tbaa !16
+  %268 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %263, i64 3
+  %269 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %268 to i32*
+  store i32 %238, i32* %269, align 8, !tbaa !18
+  %270 = bitcast %struct.ObjHeader** %254 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %270, align 8, !tbaa !3
+  %271 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %272 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %271 to %struct.ObjHeader**
+  %273 = bitcast %struct.ObjHeader** %253 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %274 = bitcast %class.ObjHolder* %3 to i8*
+  %275 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %276 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %277 = bitcast %struct.FrameOverlay.6** %276 to i64*
+  %278 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %279 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %280 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %281 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %282 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %283 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %284 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %285 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %286 = bitcast %struct.ObjHeader** %252 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %287 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265 to i64*
+  %288 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %263, i64 4
+  %wide.trip.count51 = zext i32 %238 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %269 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %270 = and i8 %269, 1
-  %271 = icmp eq i8 %270, 0
-  br i1 %271, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %272
+  %289 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %290 = and i8 %289, 1
+  %291 = icmp eq i8 %290, 0
+  br i1 %291, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %292
 
-272:                                              ; preds = %while_loop.i
+292:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %272, %while_loop.i
-  %273 = load %struct.ObjHeader*, %struct.ObjHeader** %252, align 8
-  %274 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %273, i64 1
-  %275 = bitcast %struct.ObjHeader* %274 to i32*
-  %276 = load i32, i32* %275, align 8, !tbaa !18
-  %277 = zext i32 %276 to i64
-  %278 = icmp ult i64 %indvars.iv48, %277
-  br i1 %278, label %Kotlin_Array_get.exit.i, label %279
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %292, %while_loop.i
+  %293 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %272 unordered, align 8
+  %294 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %293, i64 1
+  %295 = bitcast %struct.ObjHeader* %294 to i32*
+  %296 = load atomic i32, i32* %295 unordered, align 8, !tbaa !18
+  %297 = zext i32 %296 to i64
+  %298 = icmp ult i64 %indvars.iv49, %297
+  br i1 %298, label %Kotlin_Array_get.exit.i, label %299
 
-279:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+299:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %280 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %273, i64 2
-  %281 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %280, i64 %indvars.iv48
-  %282 = bitcast %struct.ObjHeader* %281 to %struct.ObjHeader**
-  %283 = load %struct.ObjHeader*, %struct.ObjHeader** %282, align 8, !tbaa !3
-  store %struct.ObjHeader* %283, %struct.ObjHeader** %206, align 8, !tbaa !3
-  %284 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %283, i64 1
-  %285 = bitcast %struct.ObjHeader* %284 to i32*
-  %286 = load i32, i32* %285, align 4
-  %287 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %288 = icmp eq i32 %287, 2
-  br i1 %288, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %300 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %293, i64 2
+  %301 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %300, i64 %indvars.iv49
+  %302 = bitcast %struct.ObjHeader* %301 to %struct.ObjHeader**
+  %303 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %302 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %303, %struct.ObjHeader** %225, align 8, !tbaa !3
+  %304 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %303, i64 1
+  %305 = bitcast %struct.ObjHeader* %304 to i32*
+  %306 = load atomic i32, i32* %305 unordered, align 4
+  %307 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %308 = icmp eq i32 %307, 2
+  br i1 %308, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %289 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %290 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %289, i64 2
-  %291 = bitcast %struct.ObjHeader* %290 to %struct.ObjHeader**
-  %292 = load %struct.ObjHeader*, %struct.ObjHeader** %291, align 8, !tbaa !3
-  store %struct.ObjHeader* %292, %struct.ObjHeader** %207, align 8, !tbaa !3
-  %293 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %294 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %293 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %295 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %294, align 8, !tbaa !3
-  %296 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %295, i64 0, i32 2, i32 1
-  %297 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %296, i64 32) #37
-  %298 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %297, i64 1
-  %299 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %297, i64 2
-  %300 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299 to %struct.ObjHeader*
-  %301 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299 to %struct.TypeInfo**
-  %302 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %298 to i64*
-  store i64 0, i64* %302, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumIntArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %301, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %253, align 8, !tbaa !3
-  %303 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %297, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %303, align 8, !tbaa !3
-  %304 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %297, i64 4
-  %305 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %304 to i32*
-  %306 = trunc i64 %indvars.iv48 to i32
-  store i32 %306, i32* %305, align 8
-  %307 = bitcast %struct.ObjHeader* %292 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %308 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %307, i64 0, i32 3
-  %309 = load i32, i32* %308, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %254) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %255, align 8, !tbaa !61
-  %310 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %311 = bitcast %"class.kotlin::mm::ShadowStack"* %310 to i64*
-  %312 = load i64, i64* %311, align 8, !tbaa !7
-  store i64 %312, i64* %257, align 8, !tbaa !9
-  %313 = bitcast %"class.kotlin::mm::ShadowStack"* %310 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %313, align 8, !tbaa !7
-  store i32 0, i32* %258, align 8, !tbaa !12
-  store i32 4, i32* %259, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %300, %struct.ObjHeader** nonnull %255)
-          to label %314 unwind label %598
+  %309 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %310 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %309, i64 2
+  %311 = bitcast %struct.ObjHeader* %310 to %struct.ObjHeader**
+  %312 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %311 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %312, %struct.ObjHeader** %226, align 8, !tbaa !3
+  %313 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %314 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %313 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %315 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %314 unordered, align 8, !tbaa !3
+  %316 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %315, i64 0, i32 2, i32 1
+  %317 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %316, i64 32) #37
+  %318 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %317, i64 1
+  %319 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %317, i64 2
+  %320 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319 to %struct.ObjHeader*
+  %321 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319 to %struct.TypeInfo**
+  %322 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318 to i64*
+  store i64 0, i64* %322, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumIntArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %321, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %273, align 8, !tbaa !3
+  %323 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %317, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %323, align 8, !tbaa !3
+  %324 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %317, i64 4
+  %325 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %324 to i32*
+  %326 = trunc i64 %indvars.iv49 to i32
+  store i32 %326, i32* %325, align 8
+  %327 = bitcast %struct.ObjHeader* %312 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %328 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %327, i64 0, i32 3
+  %329 = load atomic i32, i32* %328 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %274) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %275, align 8, !tbaa !60
+  %330 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %331 = bitcast %"class.kotlin::mm::ShadowStack"* %330 to i64*
+  %332 = load atomic i64, i64* %331 unordered, align 8, !tbaa !7
+  store i64 %332, i64* %277, align 8, !tbaa !9
+  %333 = bitcast %"class.kotlin::mm::ShadowStack"* %330 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %333, align 8, !tbaa !7
+  store i32 0, i32* %278, align 8, !tbaa !12
+  store i32 4, i32* %279, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %320, %struct.ObjHeader** nonnull %275)
+          to label %334 unwind label %620
 
-314:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %315 = load %struct.ObjHeader*, %struct.ObjHeader** %255, align 8, !tbaa !61
-  %316 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %315) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %255, align 8, !tbaa !3
-  %317 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %260)
-  %318 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 0
-  %319 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %320 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %319, i64 328
-  %321 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %320 to i32*
-  %322 = atomicrmw xchg i32* %321, i32 1 seq_cst, align 4
-  %323 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %318) #37
-  %324 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %319, null
-  br i1 %324, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %325
+334:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %335 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %275 unordered, align 8, !tbaa !60
+  %336 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %335) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %275, align 8, !tbaa !3
+  %337 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %280)
+  %338 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 0
+  %339 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %340 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %339, i64 328
+  %341 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %340 to i32*
+  %342 = atomicrmw xchg i32* %341, i32 1 seq_cst, align 4
+  %343 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %338) #37
+  %344 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %339, null
+  br i1 %344, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %345
 
-325:                                              ; preds = %314
-  %326 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %320 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %327 = atomicrmw xchg i32* %321, i32 %322 seq_cst, align 4
-  %328 = icmp eq i32 %327, 1
-  %329 = icmp eq i32 %322, 0
-  %330 = and i1 %329, %328
-  br i1 %330, label %331, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+345:                                              ; preds = %334
+  %346 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %340 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %347 = atomicrmw xchg i32* %341, i32 %342 seq_cst, align 4
+  %348 = icmp eq i32 %347, 1
+  %349 = icmp eq i32 %342, 0
+  %350 = and i1 %349, %348
+  br i1 %350, label %351, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-331:                                              ; preds = %325
-  %332 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %333 = and i8 %332, 1
-  %334 = icmp eq i8 %333, 0
-  br i1 %334, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %335
+351:                                              ; preds = %345
+  %352 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %353 = and i8 %352, 1
+  %354 = icmp eq i8 %353, 0
+  br i1 %354, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %355
 
-335:                                              ; preds = %331
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %326) #37
+355:                                              ; preds = %351
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %346) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %335, %331, %325, %314
-  %336 = sext i32 %286 to i64
-  %337 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 3, i32 0, i32 1
-  %338 = load i64, i64* %337, align 8, !tbaa !67
-  %339 = urem i64 %336, %338
-  %340 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 3, i32 0, i32 0
-  %341 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %340, align 8, !tbaa !72
-  %342 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %341, i64 %339
-  %343 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %342, align 8, !tbaa !3
-  %344 = icmp eq %"struct.std::__detail::_Hash_node_base"* %343, null
-  br i1 %344, label %.loopexit16, label %345
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %355, %351, %345, %334
+  %356 = sext i32 %306 to i64
+  %357 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 3, i32 0, i32 1
+  %358 = load atomic i64, i64* %357 unordered, align 8, !tbaa !67
+  %359 = urem i64 %356, %358
+  %360 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 3, i32 0, i32 0
+  %361 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %360 unordered, align 8, !tbaa !72
+  %362 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %361, i64 %359
+  %363 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %362 unordered, align 8, !tbaa !3
+  %364 = icmp eq %"struct.std::__detail::_Hash_node_base"* %363, null
+  br i1 %364, label %.loopexit17, label %365
 
-345:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %346 = bitcast %"struct.std::__detail::_Hash_node_base"* %343 to %"struct.std::__detail::_Hash_node.203"**
-  %347 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %346, align 8, !tbaa !73
-  %348 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %347, i64 0, i32 0, i32 1
-  %349 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %348 to i32*
-  %350 = load i32, i32* %349, align 4, !tbaa !74
-  %351 = icmp eq i32 %350, %286
-  br i1 %351, label %368, label %.preheader15
+365:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %366 = bitcast %"struct.std::__detail::_Hash_node_base"* %363 to %"struct.std::__detail::_Hash_node.203"**
+  %367 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %366 unordered, align 8, !tbaa !73
+  %368 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %367, i64 0, i32 0, i32 1
+  %369 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %368 to i32*
+  %370 = load atomic i32, i32* %369 unordered, align 4, !tbaa !66
+  %371 = icmp eq i32 %370, %306
+  br i1 %371, label %388, label %.preheader16
 
-352:                                              ; preds = %359
-  %353 = icmp eq i32 %362, %286
-  br i1 %353, label %366, label %.preheader15
+372:                                              ; preds = %379
+  %373 = icmp eq i32 %382, %306
+  br i1 %373, label %386, label %.preheader16
 
-.preheader15:                                     ; preds = %352, %345
-  %354 = phi %"struct.std::__detail::_Hash_node.203"* [ %358, %352 ], [ %347, %345 ]
-  %355 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %354, i64 0, i32 0, i32 0, i32 0
-  %356 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %355, align 8, !tbaa !73
-  %357 = icmp eq %"struct.std::__detail::_Hash_node_base"* %356, null
-  %358 = bitcast %"struct.std::__detail::_Hash_node_base"* %356 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %357, label %.loopexit16, label %359
+.preheader16:                                     ; preds = %372, %365
+  %374 = phi %"struct.std::__detail::_Hash_node.203"* [ %378, %372 ], [ %367, %365 ]
+  %375 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %374, i64 0, i32 0, i32 0, i32 0
+  %376 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %375 unordered, align 8, !tbaa !73
+  %377 = icmp eq %"struct.std::__detail::_Hash_node_base"* %376, null
+  %378 = bitcast %"struct.std::__detail::_Hash_node_base"* %376 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %377, label %.loopexit17, label %379
 
-359:                                              ; preds = %.preheader15
-  %360 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %356, i64 1
-  %361 = bitcast %"struct.std::__detail::_Hash_node_base"* %360 to i32*
-  %362 = load i32, i32* %361, align 4, !tbaa !74
-  %363 = sext i32 %362 to i64
-  %364 = urem i64 %363, %338
-  %365 = icmp eq i64 %364, %339
-  br i1 %365, label %352, label %.loopexit16
+379:                                              ; preds = %.preheader16
+  %380 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %376, i64 1
+  %381 = bitcast %"struct.std::__detail::_Hash_node_base"* %380 to i32*
+  %382 = load atomic i32, i32* %381 unordered, align 4, !tbaa !66
+  %383 = sext i32 %382 to i64
+  %384 = urem i64 %383, %358
+  %385 = icmp eq i64 %384, %359
+  br i1 %385, label %372, label %.loopexit17
 
-366:                                              ; preds = %352
-  %367 = icmp eq %"struct.std::__detail::_Hash_node.203"* %354, null
-  br i1 %367, label %.loopexit16, label %370
+386:                                              ; preds = %372
+  %387 = icmp eq %"struct.std::__detail::_Hash_node.203"* %374, null
+  br i1 %387, label %.loopexit17, label %390
 
-368:                                              ; preds = %345
-  %369 = icmp eq %"struct.std::__detail::_Hash_node.203"* %347, null
-  br i1 %369, label %.loopexit16, label %370
+388:                                              ; preds = %365
+  %389 = icmp eq %"struct.std::__detail::_Hash_node.203"* %367, null
+  br i1 %389, label %.loopexit17, label %390
 
-370:                                              ; preds = %368, %366
-  %371 = phi %"struct.std::__detail::_Hash_node.203"* [ %358, %366 ], [ %347, %368 ]
-  %372 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %371, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %373 = bitcast i8* %372 to %class.Worker**
-  %374 = load %class.Worker*, %class.Worker** %373, align 8, !tbaa !75
-  %375 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %376 = icmp eq i8* %375, null
-  br i1 %376, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %377
+390:                                              ; preds = %388, %386
+  %391 = phi %"struct.std::__detail::_Hash_node.203"* [ %378, %386 ], [ %367, %388 ]
+  %392 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %391, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %393 = bitcast i8* %392 to %class.Worker**
+  %394 = load atomic %class.Worker*, %class.Worker** %393 unordered, align 8, !tbaa !74
+  %395 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %396 = icmp eq i8* %395, null
+  br i1 %396, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %397
 
-377:                                              ; preds = %370
-  %378 = bitcast i8* %375 to %"class.(anonymous namespace)::Future"*
-  %379 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 6
-  %380 = load i32, i32* %379, align 4, !tbaa !93
-  %381 = add nsw i32 %380, 1
-  store i32 %381, i32* %379, align 4, !tbaa !93
-  %382 = bitcast i8* %375 to i32*
-  store i32 1, i32* %382, align 8, !tbaa !100
-  %383 = getelementptr inbounds i8, i8* %375, i64 4
-  %384 = bitcast i8* %383 to i32*
-  store i32 %380, i32* %384, align 4, !tbaa !102
-  %385 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %386 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %385, i64 328
-  %387 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %386 to i32*
-  %388 = atomicrmw xchg i32* %387, i32 1 seq_cst, align 4
-  %389 = getelementptr inbounds i8, i8* %375, i64 16
-  %390 = bitcast i8* %389 to %union.pthread_mutex_t*
-  %391 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %390, %"struct.std::atomic"* null) #37
-  %392 = getelementptr inbounds i8, i8* %375, i64 56
-  %393 = bitcast i8* %392 to %union.pthread_cond_t*
-  %394 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %393, %"struct.std::atomic"* null) #37
-  %395 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %385, null
-  br i1 %395, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %396
+397:                                              ; preds = %390
+  %398 = bitcast i8* %395 to %"class.(anonymous namespace)::Future"*
+  %399 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 6
+  %400 = load atomic i32, i32* %399 unordered, align 4, !tbaa !91
+  %401 = add nsw i32 %400, 1
+  store i32 %401, i32* %399, align 4, !tbaa !91
+  %402 = bitcast i8* %395 to i32*
+  store i32 1, i32* %402, align 8, !tbaa !98
+  %403 = getelementptr inbounds i8, i8* %395, i64 4
+  %404 = bitcast i8* %403 to i32*
+  store i32 %400, i32* %404, align 4, !tbaa !100
+  %405 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %406 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %405, i64 328
+  %407 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %406 to i32*
+  %408 = atomicrmw xchg i32* %407, i32 1 seq_cst, align 4
+  %409 = getelementptr inbounds i8, i8* %395, i64 16
+  %410 = bitcast i8* %409 to %union.pthread_mutex_t*
+  %411 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %410, %"struct.std::atomic"* null) #37
+  %412 = getelementptr inbounds i8, i8* %395, i64 56
+  %413 = bitcast i8* %412 to %union.pthread_cond_t*
+  %414 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %413, %"struct.std::atomic"* null) #37
+  %415 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %405, null
+  br i1 %415, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %416
 
-396:                                              ; preds = %377
-  %397 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %386 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %398 = atomicrmw xchg i32* %387, i32 %388 seq_cst, align 4
-  %399 = icmp eq i32 %398, 1
-  %400 = icmp eq i32 %388, 0
-  %401 = and i1 %400, %399
-  br i1 %401, label %402, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+416:                                              ; preds = %397
+  %417 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %406 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %418 = atomicrmw xchg i32* %407, i32 %408 seq_cst, align 4
+  %419 = icmp eq i32 %418, 1
+  %420 = icmp eq i32 %408, 0
+  %421 = and i1 %420, %419
+  br i1 %421, label %422, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-402:                                              ; preds = %396
-  %403 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %404 = and i8 %403, 1
-  %405 = icmp eq i8 %404, 0
-  br i1 %405, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %406
+422:                                              ; preds = %416
+  %423 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %424 = and i8 %423, 1
+  %425 = icmp eq i8 %424, 0
+  br i1 %425, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %426
 
-406:                                              ; preds = %402
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %397) #37
+426:                                              ; preds = %422
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %417) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %406, %402, %396, %377, %370
-  %407 = phi %"class.(anonymous namespace)::Future"* [ null, %370 ], [ %378, %377 ], [ %378, %406 ], [ %378, %402 ], [ %378, %396 ]
-  %408 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %407, i64 0, i32 1
-  %409 = load i32, i32* %408, align 4, !tbaa !102
-  %410 = sext i32 %409 to i64
-  %411 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 1
-  %412 = load i64, i64* %411, align 8, !tbaa !103
-  %413 = urem i64 %410, %412
-  %414 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 0
-  %415 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %414, align 8, !tbaa !104
-  %416 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %415, i64 %413
-  %417 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %416, align 8, !tbaa !3
-  %418 = icmp eq %"struct.std::__detail::_Hash_node_base"* %417, null
-  br i1 %418, label %.loopexit14, label %419
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %426, %422, %416, %397, %390
+  %427 = phi %"class.(anonymous namespace)::Future"* [ null, %390 ], [ %398, %397 ], [ %398, %426 ], [ %398, %422 ], [ %398, %416 ]
+  %428 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %427, i64 0, i32 1
+  %429 = load atomic i32, i32* %428 unordered, align 4, !tbaa !100
+  %430 = sext i32 %429 to i64
+  %431 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 1
+  %432 = load atomic i64, i64* %431 unordered, align 8, !tbaa !101
+  %433 = urem i64 %430, %432
+  %434 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 0
+  %435 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %434 unordered, align 8, !tbaa !102
+  %436 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %435, i64 %433
+  %437 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %436 unordered, align 8, !tbaa !3
+  %438 = icmp eq %"struct.std::__detail::_Hash_node_base"* %437, null
+  br i1 %438, label %.loopexit15, label %439
 
-419:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %420 = bitcast %"struct.std::__detail::_Hash_node_base"* %417 to %"struct.std::__detail::_Hash_node.203"**
-  %421 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %420, align 8, !tbaa !73
-  %422 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %421, i64 0, i32 0, i32 1
-  %423 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %422 to i32*
-  %424 = load i32, i32* %423, align 4, !tbaa !74
-  %425 = icmp eq i32 %409, %424
-  br i1 %425, label %442, label %.preheader13
+439:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %440 = bitcast %"struct.std::__detail::_Hash_node_base"* %437 to %"struct.std::__detail::_Hash_node.203"**
+  %441 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %440 unordered, align 8, !tbaa !73
+  %442 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %441, i64 0, i32 0, i32 1
+  %443 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %442 to i32*
+  %444 = load atomic i32, i32* %443 unordered, align 4, !tbaa !66
+  %445 = icmp eq i32 %429, %444
+  br i1 %445, label %462, label %.preheader14
 
-426:                                              ; preds = %433
-  %427 = icmp eq i32 %409, %436
-  br i1 %427, label %440, label %.preheader13
+446:                                              ; preds = %453
+  %447 = icmp eq i32 %429, %456
+  br i1 %447, label %460, label %.preheader14
 
-.preheader13:                                     ; preds = %426, %419
-  %428 = phi %"struct.std::__detail::_Hash_node.203"* [ %432, %426 ], [ %421, %419 ]
-  %429 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %428, i64 0, i32 0, i32 0, i32 0
-  %430 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %429, align 8, !tbaa !73
-  %431 = icmp eq %"struct.std::__detail::_Hash_node_base"* %430, null
-  %432 = bitcast %"struct.std::__detail::_Hash_node_base"* %430 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %431, label %.loopexit14, label %433
+.preheader14:                                     ; preds = %446, %439
+  %448 = phi %"struct.std::__detail::_Hash_node.203"* [ %452, %446 ], [ %441, %439 ]
+  %449 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %448, i64 0, i32 0, i32 0, i32 0
+  %450 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %449 unordered, align 8, !tbaa !73
+  %451 = icmp eq %"struct.std::__detail::_Hash_node_base"* %450, null
+  %452 = bitcast %"struct.std::__detail::_Hash_node_base"* %450 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %451, label %.loopexit15, label %453
 
-433:                                              ; preds = %.preheader13
-  %434 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %430, i64 1
-  %435 = bitcast %"struct.std::__detail::_Hash_node_base"* %434 to i32*
-  %436 = load i32, i32* %435, align 4, !tbaa !74
-  %437 = sext i32 %436 to i64
-  %438 = urem i64 %437, %412
-  %439 = icmp eq i64 %438, %413
-  br i1 %439, label %426, label %.loopexit14
+453:                                              ; preds = %.preheader14
+  %454 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %450, i64 1
+  %455 = bitcast %"struct.std::__detail::_Hash_node_base"* %454 to i32*
+  %456 = load atomic i32, i32* %455 unordered, align 4, !tbaa !66
+  %457 = sext i32 %456 to i64
+  %458 = urem i64 %457, %432
+  %459 = icmp eq i64 %458, %433
+  br i1 %459, label %446, label %.loopexit15
 
-440:                                              ; preds = %426
-  %441 = icmp eq %"struct.std::__detail::_Hash_node.203"* %428, null
-  br i1 %441, label %.loopexit14, label %551
+460:                                              ; preds = %446
+  %461 = icmp eq %"struct.std::__detail::_Hash_node.203"* %448, null
+  br i1 %461, label %.loopexit15, label %573
 
-442:                                              ; preds = %419
-  %443 = icmp eq %"struct.std::__detail::_Hash_node.203"* %421, null
-  br i1 %443, label %.loopexit14, label %551
+462:                                              ; preds = %439
+  %463 = icmp eq %"struct.std::__detail::_Hash_node.203"* %441, null
+  br i1 %463, label %.loopexit15, label %573
 
-.loopexit14:                                      ; preds = %442, %440, %433, %.preheader13, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %444 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %445 = getelementptr inbounds i8, i8* %444, i64 8
-  %446 = bitcast i8* %445 to i32*
-  store i32 %409, i32* %446, align 8, !tbaa !105
-  %447 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 4
-  %448 = load i64, i64* %411, align 8, !tbaa !103
-  %449 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 3
-  %450 = load i64, i64* %449, align 8, !tbaa !107
-  %451 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %447, i64 %448, i64 %450, i64 1)
-          to label %452 unwind label %558
+.loopexit15:                                      ; preds = %462, %460, %453, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %464 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %465 = bitcast i8* %464 to %"struct.std::__detail::_Hash_node_base"**
+  %466 = getelementptr inbounds i8, i8* %464, i64 8
+  %467 = bitcast i8* %466 to i32*
+  store i32 %429, i32* %467, align 8, !tbaa !103
+  %468 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 4
+  %469 = load atomic i64, i64* %431 unordered, align 8, !tbaa !101
+  %470 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 3
+  %471 = load atomic i64, i64* %470 unordered, align 8, !tbaa !105
+  %472 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %468, i64 %469, i64 %471, i64 1)
+          to label %473 unwind label %580
 
-452:                                              ; preds = %.loopexit14
-  %453 = extractvalue { i8, i64 } %451, 0
-  %454 = and i8 %453, 1
-  %455 = icmp eq i8 %454, 0
-  br i1 %455, label %456, label %458
+473:                                              ; preds = %.loopexit15
+  %474 = extractvalue { i8, i64 } %472, 0
+  %475 = and i8 %474, 1
+  %476 = icmp eq i8 %475, 0
+  br i1 %476, label %477, label %479
 
-456:                                              ; preds = %452
-  %457 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %414, align 8, !tbaa !104
-  br label %515
+477:                                              ; preds = %473
+  %478 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %434 unordered, align 8, !tbaa !102
+  br label %536
 
-458:                                              ; preds = %452
-  %459 = extractvalue { i8, i64 } %451, 1
-  %460 = icmp eq i64 %459, 1
-  br i1 %460, label %461, label %463, !prof !108, !misexpect !109
+479:                                              ; preds = %473
+  %480 = extractvalue { i8, i64 } %472, 1
+  %481 = icmp eq i64 %480, 1
+  br i1 %481, label %482, label %484, !prof !106, !misexpect !107
 
-461:                                              ; preds = %458
-  %462 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %462, align 8, !tbaa !110
-  br label %467
+482:                                              ; preds = %479
+  %483 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %483, align 8, !tbaa !108
+  br label %488
 
-463:                                              ; preds = %458
-  %464 = call noalias i8* @calloc(i64 %459, i64 8) #37
-  %465 = bitcast i8* %464 to %"struct.std::__detail::_Hash_node_base"**
-  %466 = shl i64 %459, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %464, i8 0, i64 %466, i1 false) #37
-  br label %467
+484:                                              ; preds = %479
+  %485 = call noalias i8* @calloc(i64 %480, i64 8) #37
+  %486 = bitcast i8* %485 to %"struct.std::__detail::_Hash_node_base"**
+  %487 = shl i64 %480, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %485, i8 0, i64 %487, i1 false) #37
+  br label %488
 
-467:                                              ; preds = %463, %461
-  %468 = phi %"struct.std::__detail::_Hash_node_base"** [ %462, %461 ], [ %465, %463 ]
-  %469 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 2
-  %470 = bitcast %"struct.std::__detail::_Hash_node_base"* %469 to %"struct.std::__detail::_Hash_node.203"**
-  %471 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %470, align 8, !tbaa !111
-  %472 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %469, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %472, align 8, !tbaa !111
-  %473 = icmp eq %"struct.std::__detail::_Hash_node.203"* %471, null
-  br i1 %473, label %.loopexit, label %474
+488:                                              ; preds = %484, %482
+  %489 = phi %"struct.std::__detail::_Hash_node_base"** [ %483, %482 ], [ %486, %484 ]
+  %490 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 2
+  %491 = bitcast %"struct.std::__detail::_Hash_node_base"* %490 to %"struct.std::__detail::_Hash_node.203"**
+  %492 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %491 unordered, align 8, !tbaa !109
+  %493 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %490, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %493, align 8, !tbaa !109
+  %494 = icmp eq %"struct.std::__detail::_Hash_node.203"* %492, null
+  br i1 %494, label %.loopexit, label %495
 
-474:                                              ; preds = %467
-  %475 = bitcast %"struct.std::__detail::_Hash_node_base"* %469 to i64*
-  br label %476
+495:                                              ; preds = %488
+  %496 = bitcast %"struct.std::__detail::_Hash_node_base"* %490 to i64*
+  br label %497
 
-476:                                              ; preds = %505, %474
-  %477 = phi %"struct.std::__detail::_Hash_node.203"* [ %471, %474 ], [ %480, %505 ]
-  %478 = phi i64 [ 0, %474 ], [ %506, %505 ]
-  %479 = bitcast %"struct.std::__detail::_Hash_node.203"* %477 to %"struct.std::__detail::_Hash_node.203"**
-  %480 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %479, align 8, !tbaa !73
-  %481 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %477, i64 0, i32 0, i32 1
-  %482 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %481 to i32*
-  %483 = load i32, i32* %482, align 4, !tbaa !74
-  %484 = sext i32 %483 to i64
-  %485 = urem i64 %484, %459
-  %486 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468, i64 %485
-  %487 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %486, align 8, !tbaa !3
-  %488 = icmp eq %"struct.std::__detail::_Hash_node_base"* %487, null
-  br i1 %488, label %489, label %498
+497:                                              ; preds = %526, %495
+  %498 = phi %"struct.std::__detail::_Hash_node.203"* [ %492, %495 ], [ %501, %526 ]
+  %499 = phi i64 [ 0, %495 ], [ %527, %526 ]
+  %500 = bitcast %"struct.std::__detail::_Hash_node.203"* %498 to %"struct.std::__detail::_Hash_node.203"**
+  %501 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %500 unordered, align 8, !tbaa !73
+  %502 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %498, i64 0, i32 0, i32 1
+  %503 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %502 to i32*
+  %504 = load atomic i32, i32* %503 unordered, align 4, !tbaa !66
+  %505 = sext i32 %504 to i64
+  %506 = urem i64 %505, %480
+  %507 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %489, i64 %506
+  %508 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %507 unordered, align 8, !tbaa !3
+  %509 = icmp eq %"struct.std::__detail::_Hash_node_base"* %508, null
+  br i1 %509, label %510, label %519
 
-489:                                              ; preds = %476
-  %490 = load i64, i64* %475, align 8, !tbaa !111
-  %491 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %477, i64 0, i32 0, i32 0
-  %492 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %477, i64 0, i32 0, i32 0, i32 0
-  %493 = bitcast %"struct.std::__detail::_Hash_node.203"* %477 to i64*
-  store i64 %490, i64* %493, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %491, %"struct.std::__detail::_Hash_node_base"** %472, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %469, %"struct.std::__detail::_Hash_node_base"** %486, align 8, !tbaa !3
-  %494 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %492, align 8, !tbaa !73
-  %495 = icmp eq %"struct.std::__detail::_Hash_node_base"* %494, null
-  br i1 %495, label %505, label %496
+510:                                              ; preds = %497
+  %511 = load atomic i64, i64* %496 unordered, align 8, !tbaa !109
+  %512 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %498, i64 0, i32 0, i32 0
+  %513 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %498, i64 0, i32 0, i32 0, i32 0
+  %514 = bitcast %"struct.std::__detail::_Hash_node.203"* %498 to i64*
+  store i64 %511, i64* %514, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %512, %"struct.std::__detail::_Hash_node_base"** %493, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %490, %"struct.std::__detail::_Hash_node_base"** %507, align 8, !tbaa !3
+  %515 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %513 unordered, align 8, !tbaa !73
+  %516 = icmp eq %"struct.std::__detail::_Hash_node_base"* %515, null
+  br i1 %516, label %526, label %517
 
-496:                                              ; preds = %489
-  %497 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468, i64 %478
-  store %"struct.std::__detail::_Hash_node_base"* %491, %"struct.std::__detail::_Hash_node_base"** %497, align 8, !tbaa !3
-  br label %505
+517:                                              ; preds = %510
+  %518 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %489, i64 %499
+  store %"struct.std::__detail::_Hash_node_base"* %512, %"struct.std::__detail::_Hash_node_base"** %518, align 8, !tbaa !3
+  br label %526
 
-498:                                              ; preds = %476
-  %499 = bitcast %"struct.std::__detail::_Hash_node_base"* %487 to i64*
-  %500 = load i64, i64* %499, align 8, !tbaa !73
-  %501 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %477, i64 0, i32 0, i32 0
-  %502 = bitcast %"struct.std::__detail::_Hash_node.203"* %477 to i64*
-  store i64 %500, i64* %502, align 8, !tbaa !73
-  %503 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %486, align 8, !tbaa !3
-  %504 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %503, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %501, %"struct.std::__detail::_Hash_node_base"** %504, align 8, !tbaa !73
-  br label %505
+519:                                              ; preds = %497
+  %520 = bitcast %"struct.std::__detail::_Hash_node_base"* %508 to i64*
+  %521 = load atomic i64, i64* %520 unordered, align 8, !tbaa !73
+  %522 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %498, i64 0, i32 0, i32 0
+  %523 = bitcast %"struct.std::__detail::_Hash_node.203"* %498 to i64*
+  store i64 %521, i64* %523, align 8, !tbaa !73
+  %524 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %507 unordered, align 8, !tbaa !3
+  %525 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %524, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %522, %"struct.std::__detail::_Hash_node_base"** %525, align 8, !tbaa !73
+  br label %526
 
-505:                                              ; preds = %498, %496, %489
-  %506 = phi i64 [ %478, %498 ], [ %485, %489 ], [ %485, %496 ]
-  %507 = icmp eq %"struct.std::__detail::_Hash_node.203"* %480, null
-  br i1 %507, label %.loopexit, label %476
+526:                                              ; preds = %519, %517, %510
+  %527 = phi i64 [ %499, %519 ], [ %506, %510 ], [ %506, %517 ]
+  %528 = icmp eq %"struct.std::__detail::_Hash_node.203"* %501, null
+  br i1 %528, label %.loopexit, label %497
 
-.loopexit:                                        ; preds = %505, %467
-  %508 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %414, align 8, !tbaa !104
-  %509 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 5
-  %510 = icmp eq %"struct.std::__detail::_Hash_node_base"** %508, %509
-  br i1 %510, label %513, label %511
+.loopexit:                                        ; preds = %526, %488
+  %529 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %434 unordered, align 8, !tbaa !102
+  %530 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 5
+  %531 = icmp eq %"struct.std::__detail::_Hash_node_base"** %529, %530
+  br i1 %531, label %534, label %532
 
-511:                                              ; preds = %.loopexit
-  %512 = bitcast %"struct.std::__detail::_Hash_node_base"** %508 to i8*
-  call void @free(i8* %512) #37
-  br label %513
+532:                                              ; preds = %.loopexit
+  %533 = bitcast %"struct.std::__detail::_Hash_node_base"** %529 to i8*
+  call void @free(i8* %533) #37
+  br label %534
 
-513:                                              ; preds = %511, %.loopexit
-  store i64 %459, i64* %411, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %468, %"struct.std::__detail::_Hash_node_base"*** %414, align 8, !tbaa !104
-  %514 = urem i64 %410, %459
-  br label %515
+534:                                              ; preds = %532, %.loopexit
+  store i64 %480, i64* %431, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %489, %"struct.std::__detail::_Hash_node_base"*** %434, align 8, !tbaa !102
+  %535 = urem i64 %430, %480
+  br label %536
 
-515:                                              ; preds = %513, %456
-  %516 = phi %"struct.std::__detail::_Hash_node_base"** [ %457, %456 ], [ %468, %513 ]
-  %517 = phi i64 [ %413, %456 ], [ %514, %513 ]
-  %518 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %516, i64 %517
-  %519 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %518, align 8, !tbaa !3
-  %520 = icmp eq %"struct.std::__detail::_Hash_node_base"* %519, null
-  br i1 %520, label %527, label %521
+536:                                              ; preds = %534, %477
+  %537 = phi %"struct.std::__detail::_Hash_node_base"** [ %478, %477 ], [ %489, %534 ]
+  %538 = phi i64 [ %433, %477 ], [ %535, %534 ]
+  %539 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %537, i64 %538
+  %540 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %539 unordered, align 8, !tbaa !3
+  %541 = icmp eq %"struct.std::__detail::_Hash_node_base"* %540, null
+  br i1 %541, label %548, label %542
 
-521:                                              ; preds = %515
-  %522 = bitcast %"struct.std::__detail::_Hash_node_base"* %519 to i64*
-  %523 = load i64, i64* %522, align 8, !tbaa !73
-  %524 = bitcast i8* %444 to i64*
-  store i64 %523, i64* %524, align 8, !tbaa !73
-  %525 = bitcast %"struct.std::__detail::_Hash_node_base"** %518 to i8***
-  %526 = load i8**, i8*** %525, align 8, !tbaa !3
-  store i8* %444, i8** %526, align 8, !tbaa !73
-  br label %547
+542:                                              ; preds = %536
+  %543 = bitcast %"struct.std::__detail::_Hash_node_base"* %540 to i64*
+  %544 = load atomic i64, i64* %543 unordered, align 8, !tbaa !73
+  %545 = bitcast i8* %464 to i64*
+  store i64 %544, i64* %545, align 8, !tbaa !73
+  %546 = bitcast %"struct.std::__detail::_Hash_node_base"** %539 to i8***
+  %547 = load atomic i8**, i8*** %546 unordered, align 8, !tbaa !3
+  store i8* %464, i8** %547, align 8, !tbaa !73
+  br label %569
 
-527:                                              ; preds = %515
-  %528 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %317, i64 0, i32 2, i32 0, i32 2
-  %529 = bitcast %"struct.std::__detail::_Hash_node_base"* %528 to i64*
-  %530 = load i64, i64* %529, align 8, !tbaa !111
-  %531 = bitcast i8* %444 to i64*
-  store i64 %530, i64* %531, align 8, !tbaa !73
-  %532 = bitcast %"struct.std::__detail::_Hash_node_base"* %528 to i8**
-  store i8* %444, i8** %532, align 8, !tbaa !111
-  %533 = icmp eq i64 %530, 0
-  br i1 %533, label %544, label %534
+548:                                              ; preds = %536
+  %549 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %337, i64 0, i32 2, i32 0, i32 2
+  %550 = bitcast %"struct.std::__detail::_Hash_node_base"* %549 to i64*
+  %551 = load atomic i64, i64* %550 unordered, align 8, !tbaa !109
+  %552 = bitcast i8* %464 to i64*
+  store i64 %551, i64* %552, align 8, !tbaa !73
+  %553 = bitcast %"struct.std::__detail::_Hash_node_base"* %549 to i8**
+  store i8* %464, i8** %553, align 8, !tbaa !109
+  %554 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %465 unordered, align 8, !tbaa !73
+  %555 = icmp eq %"struct.std::__detail::_Hash_node_base"* %554, null
+  br i1 %555, label %566, label %556
 
-534:                                              ; preds = %527
-  %.cast.i.i.i.i = inttoptr i64 %530 to %"struct.std::__detail::_Hash_node_base"*
-  %535 = load i64, i64* %411, align 8, !tbaa !103
-  %536 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %537 = bitcast %"struct.std::__detail::_Hash_node_base"* %536 to i32*
-  %538 = load i32, i32* %537, align 4, !tbaa !74
-  %539 = sext i32 %538 to i64
-  %540 = urem i64 %539, %535
-  %541 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %516, i64 %540
-  %542 = bitcast %"struct.std::__detail::_Hash_node_base"** %541 to i8**
-  store i8* %444, i8** %542, align 8, !tbaa !3
-  %543 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %414, align 8, !tbaa !104
-  br label %544
+556:                                              ; preds = %548
+  %557 = load atomic i64, i64* %431 unordered, align 8, !tbaa !101
+  %558 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %554, i64 1
+  %559 = bitcast %"struct.std::__detail::_Hash_node_base"* %558 to i32*
+  %560 = load atomic i32, i32* %559 unordered, align 4, !tbaa !66
+  %561 = sext i32 %560 to i64
+  %562 = urem i64 %561, %557
+  %563 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %537, i64 %562
+  %564 = bitcast %"struct.std::__detail::_Hash_node_base"** %563 to i8**
+  store i8* %464, i8** %564, align 8, !tbaa !3
+  %565 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %434 unordered, align 8, !tbaa !102
+  br label %566
 
-544:                                              ; preds = %534, %527
-  %545 = phi %"struct.std::__detail::_Hash_node_base"** [ %516, %527 ], [ %543, %534 ]
-  %546 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %545, i64 %517
-  store %"struct.std::__detail::_Hash_node_base"* %528, %"struct.std::__detail::_Hash_node_base"** %546, align 8, !tbaa !3
-  br label %547
+566:                                              ; preds = %556, %548
+  %567 = phi %"struct.std::__detail::_Hash_node_base"** [ %537, %548 ], [ %565, %556 ]
+  %568 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %567, i64 %538
+  store %"struct.std::__detail::_Hash_node_base"* %549, %"struct.std::__detail::_Hash_node_base"** %568, align 8, !tbaa !3
+  br label %569
 
-547:                                              ; preds = %544, %521
-  %548 = load i64, i64* %449, align 8, !tbaa !107
-  %549 = add i64 %548, 1
-  store i64 %549, i64* %449, align 8, !tbaa !107
-  %550 = bitcast i8* %445 to %"struct.std::pair.50"*
-  br label %555
+569:                                              ; preds = %566, %542
+  %570 = load atomic i64, i64* %470 unordered, align 8, !tbaa !105
+  %571 = add i64 %570, 1
+  store i64 %571, i64* %470, align 8, !tbaa !105
+  %572 = bitcast i8* %466 to %"struct.std::pair.50"*
+  br label %577
 
-551:                                              ; preds = %442, %440
-  %552 = phi %"struct.std::__detail::_Hash_node.203"* [ %421, %442 ], [ %432, %440 ]
-  %553 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %552, i64 0, i32 0, i32 1
-  %554 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %553 to %"struct.std::pair.50"*
-  br label %555
+573:                                              ; preds = %462, %460
+  %574 = phi %"struct.std::__detail::_Hash_node.203"* [ %441, %462 ], [ %452, %460 ]
+  %575 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %574, i64 0, i32 0, i32 1
+  %576 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %575 to %"struct.std::pair.50"*
+  br label %577
 
-555:                                              ; preds = %551, %547
-  %556 = phi %"struct.std::pair.50"* [ %554, %551 ], [ %550, %547 ]
-  %557 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %556, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %407, %"class.(anonymous namespace)::Future"** %557, align 8, !tbaa !3
-  store i32 2, i32* %261, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumIntArrayWorkers$lambda$1#static(kotlin.IntArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %262, align 8, !tbaa.struct !112
-  store i8* %316, i8** %263, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %407, %"class.(anonymous namespace)::Future"** %264, align 8, !tbaa.struct !112
-  store i32 %309, i32* %265, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %374, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
-  br label %.loopexit16
+577:                                              ; preds = %573, %569
+  %578 = phi %"struct.std::pair.50"* [ %576, %573 ], [ %572, %569 ]
+  %579 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %578, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %427, %"class.(anonymous namespace)::Future"** %579, align 8, !tbaa !3
+  store i32 2, i32* %281, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumIntArrayWorkers$lambda$1#static(kotlin.IntArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %282, align 8, !tbaa.struct !110
+  store i8* %336, i8** %283, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %427, %"class.(anonymous namespace)::Future"** %284, align 8, !tbaa.struct !110
+  store i32 %329, i32* %285, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %394, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+  br label %.loopexit17
 
-558:                                              ; preds = %.loopexit14
-  %559 = landingpad { i8*, i32 }
+580:                                              ; preds = %.loopexit15
+  %581 = landingpad { i8*, i32 }
           cleanup
-  %560 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %561 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %560, i64 328
-  %562 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %561 to i32*
-  %563 = atomicrmw xchg i32* %562, i32 1 seq_cst, align 4
-  %564 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %318) #37
-  %565 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %560, null
-  br i1 %565, label %.body.i.i.i, label %584
+  %582 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %583 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %582, i64 328
+  %584 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %583 to i32*
+  %585 = atomicrmw xchg i32* %584, i32 1 seq_cst, align 4
+  %586 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %338) #37
+  %587 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %582, null
+  br i1 %587, label %.body.i.i.i, label %606
 
-.loopexit16:                                      ; preds = %555, %368, %366, %359, %.preheader15, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %566 = phi %"class.(anonymous namespace)::Future"* [ %407, %555 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %366 ], [ null, %368 ], [ null, %.preheader15 ], [ null, %359 ]
-  %567 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %568 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %567, i64 328
-  %569 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %568 to i32*
-  %570 = atomicrmw xchg i32* %569, i32 1 seq_cst, align 4
-  %571 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %318) #37
-  %572 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %567, null
-  br i1 %572, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %573
+.loopexit17:                                      ; preds = %577, %388, %386, %379, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %588 = phi %"class.(anonymous namespace)::Future"* [ %427, %577 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %386 ], [ null, %388 ], [ null, %.preheader16 ], [ null, %379 ]
+  %589 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %590 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %589, i64 328
+  %591 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590 to i32*
+  %592 = atomicrmw xchg i32* %591, i32 1 seq_cst, align 4
+  %593 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %338) #37
+  %594 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %589, null
+  br i1 %594, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %595
 
-573:                                              ; preds = %.loopexit16
-  %574 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %568 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %575 = atomicrmw xchg i32* %569, i32 %570 seq_cst, align 4
-  %576 = icmp eq i32 %575, 1
-  %577 = icmp eq i32 %570, 0
-  %578 = and i1 %577, %576
-  br i1 %578, label %579, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+595:                                              ; preds = %.loopexit17
+  %596 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %597 = atomicrmw xchg i32* %591, i32 %592 seq_cst, align 4
+  %598 = icmp eq i32 %597, 1
+  %599 = icmp eq i32 %592, 0
+  %600 = and i1 %599, %598
+  br i1 %600, label %601, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-579:                                              ; preds = %573
-  %580 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %581 = and i8 %580, 1
-  %582 = icmp eq i8 %581, 0
-  br i1 %582, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %583
+601:                                              ; preds = %595
+  %602 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %603 = and i8 %602, 1
+  %604 = icmp eq i8 %603, 0
+  br i1 %604, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %605
 
-583:                                              ; preds = %579
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %574) #37
+605:                                              ; preds = %601
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %596) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-584:                                              ; preds = %558
-  %585 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %561 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %586 = atomicrmw xchg i32* %562, i32 %563 seq_cst, align 4
-  %587 = icmp eq i32 %586, 1
-  %588 = icmp eq i32 %563, 0
-  %589 = and i1 %588, %587
-  br i1 %589, label %590, label %.body.i.i.i
+606:                                              ; preds = %580
+  %607 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %583 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %608 = atomicrmw xchg i32* %584, i32 %585 seq_cst, align 4
+  %609 = icmp eq i32 %608, 1
+  %610 = icmp eq i32 %585, 0
+  %611 = and i1 %610, %609
+  br i1 %611, label %612, label %.body.i.i.i
 
-590:                                              ; preds = %584
-  %591 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %592 = and i8 %591, 1
-  %593 = icmp eq i8 %592, 0
-  br i1 %593, label %.body.i.i.i, label %594
+612:                                              ; preds = %606
+  %613 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %614 = and i8 %613, 1
+  %615 = icmp eq i8 %614, 0
+  br i1 %615, label %.body.i.i.i, label %616
 
-594:                                              ; preds = %590
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %585) #37
+616:                                              ; preds = %612
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %607) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %583, %579, %573, %.loopexit16
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %260)
-  %595 = icmp eq %"class.(anonymous namespace)::Future"* %566, null
-  br i1 %595, label %596, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %605, %601, %595, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %280)
+  %617 = icmp eq %"class.(anonymous namespace)::Future"* %588, null
+  br i1 %617, label %618, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-596:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+618:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %597 unwind label %600
+          to label %619 unwind label %622
 
-597:                                              ; preds = %596
+619:                                              ; preds = %618
   unreachable
 
-598:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %599 = landingpad { i8*, i32 }
+620:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %621 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-600:                                              ; preds = %596
-  %601 = landingpad { i8*, i32 }
+622:                                              ; preds = %618
+  %623 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %600, %598, %594, %590, %584, %558
-  %602 = phi { i8*, i32 } [ %599, %598 ], [ %601, %600 ], [ %559, %584 ], [ %559, %590 ], [ %559, %594 ], [ %559, %558 ]
-  %603 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %604 = load i64, i64* %257, align 8, !tbaa !9
-  %605 = bitcast %"class.kotlin::mm::ShadowStack"* %603 to i64*
-  store i64 %604, i64* %605, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %254) #37
-  resume { i8*, i32 } %602
+.body.i.i.i:                                      ; preds = %622, %620, %616, %612, %606, %580
+  %624 = phi { i8*, i32 } [ %621, %620 ], [ %623, %622 ], [ %581, %606 ], [ %581, %612 ], [ %581, %616 ], [ %581, %580 ]
+  %625 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %626 = load atomic i64, i64* %277 unordered, align 8, !tbaa !9
+  %627 = bitcast %"class.kotlin::mm::ShadowStack"* %625 to i64*
+  store i64 %626, i64* %627, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %274) #37
+  resume { i8*, i32 } %624
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %606 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %566, i64 0, i32 1
-  %607 = load i32, i32* %606, align 4, !tbaa !102
-  %608 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %609 = load i64, i64* %257, align 8, !tbaa !9
-  %610 = bitcast %"class.kotlin::mm::ShadowStack"* %608 to i64*
-  store i64 %609, i64* %610, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %254) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %134)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %134, i8 0, i32 32, i1 immarg false) #49
-  %611 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %612 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to i64*
-  %613 = load i64, i64* %612, align 8, !tbaa !7
-  store i64 %613, i64* %138, align 8, !tbaa !9
-  %614 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %614, align 8, !tbaa !7
-  store i32 0, i32* %140, align 8, !tbaa !12
-  store i32 4, i32* %141, align 4, !tbaa !13
-  %615 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %616 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %615 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %617 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %616, align 8, !tbaa !3
-  %618 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %617, i64 0, i32 2, i32 1
-  %619 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %618, i64 24) #37
-  %620 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %619, i64 1
-  %621 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %619, i64 2
-  %622 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621 to %struct.TypeInfo**
-  %623 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %620 to i64*
-  store i64 0, i64* %623, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %622, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %142, align 8, !tbaa !3
-  %624 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %619, i64 3
-  %625 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %624 to i32*
-  store i32 %607, i32* %625, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %266, align 8, !tbaa !3
-  %626 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %627 = load i64, i64* %138, align 8, !tbaa !9
-  %628 = bitcast %"class.kotlin::mm::ShadowStack"* %626 to i64*
-  store i64 %627, i64* %628, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %134)
-  %629 = load i32, i32* %249, align 8, !tbaa !18
-  %630 = zext i32 %629 to i64
-  %631 = icmp ult i64 %indvars.iv48, %630
-  br i1 %631, label %Kotlin_Array_set.exit.i, label %632
+  %628 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %588, i64 0, i32 1
+  %629 = load atomic i32, i32* %628 unordered, align 4, !tbaa !100
+  %630 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %631 = load atomic i64, i64* %277 unordered, align 8, !tbaa !9
+  %632 = bitcast %"class.kotlin::mm::ShadowStack"* %630 to i64*
+  store i64 %631, i64* %632, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %274) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %152)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %152, i8 0, i32 32, i1 immarg false) #49
+  %633 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %634 = bitcast %"class.kotlin::mm::ShadowStack"* %633 to i64*
+  %635 = load atomic i64, i64* %634 unordered, align 8, !tbaa !7
+  store i64 %635, i64* %156, align 8, !tbaa !9
+  %636 = bitcast %"class.kotlin::mm::ShadowStack"* %633 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %636, align 8, !tbaa !7
+  store i32 0, i32* %158, align 8, !tbaa !12
+  store i32 4, i32* %159, align 4, !tbaa !13
+  %637 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %638 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %637 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %639 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %638 unordered, align 8, !tbaa !3
+  %640 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %639, i64 0, i32 2, i32 1
+  %641 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %640, i64 24) #37
+  %642 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 1
+  %643 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 2
+  %644 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to %struct.TypeInfo**
+  %645 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642 to i64*
+  store i64 0, i64* %645, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %644, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %160, align 8, !tbaa !3
+  %646 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 3
+  %647 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646 to i32*
+  store i32 %629, i32* %647, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %286, align 8, !tbaa !3
+  %648 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %649 = load atomic i64, i64* %156 unordered, align 8, !tbaa !9
+  %650 = bitcast %"class.kotlin::mm::ShadowStack"* %648 to i64*
+  store i64 %649, i64* %650, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %152)
+  %651 = load atomic i32, i32* %269 unordered, align 8, !tbaa !18
+  %652 = zext i32 %651 to i64
+  %653 = icmp ult i64 %indvars.iv49, %652
+  br i1 %653, label %Kotlin_Array_set.exit.i, label %654
 
-632:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+654:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %633 = load atomic volatile i64, i64* %267 monotonic, align 8
-  %634 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %268, i64 %indvars.iv48
-  %635 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %635, align 8, !tbaa !3
-  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
+  %655 = load atomic volatile i64, i64* %287 monotonic, align 8
+  %656 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %288, i64 %indvars.iv49
+  %657 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %656, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %657, align 8, !tbaa !3
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
-  %636 = load i32, i32* %249, align 8, !tbaa !18
-  %637 = icmp sgt i32 %636, 0
-  %smax = select i1 %637, i32 %636, i32 0
+  %658 = load atomic i32, i32* %269 unordered, align 8, !tbaa !18
+  %659 = icmp sgt i32 %658, 0
+  %smax = select i1 %659, i32 %658, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %638 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %639 = and i8 %638, 1
-  %640 = icmp eq i8 %639, 0
-  br i1 %640, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %641
+  %660 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %661 = and i8 %660, 1
+  %662 = icmp eq i8 %661, 0
+  br i1 %662, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %663
 
-641:                                              ; preds = %while_loop18.i
+663:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %641, %while_loop18.i
-  %642 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %268, i64 %indvars.iv
-  %643 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642 to %struct.ObjHeader**
-  %644 = load %struct.ObjHeader*, %struct.ObjHeader** %643, align 8, !tbaa !3
-  store %struct.ObjHeader* %644, %struct.ObjHeader** %208, align 8, !tbaa !3
-  %645 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %644, i64 1
-  %646 = bitcast %struct.ObjHeader* %645 to i32*
-  %647 = load i32, i32* %646, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %663, %while_loop18.i
+  %664 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %288, i64 %indvars.iv
+  %665 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %664 to %struct.ObjHeader**
+  %666 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %665 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %666, %struct.ObjHeader** %227, align 8, !tbaa !3
+  %667 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %666, i64 1
+  %668 = bitcast %struct.ObjHeader* %667 to i32*
+  %669 = load atomic i32, i32* %668 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %134)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %134, i8 0, i32 32, i1 immarg false) #49
-  %648 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %649 = bitcast %"class.kotlin::mm::ShadowStack"* %648 to i64*
-  %650 = load i64, i64* %649, align 8, !tbaa !7
-  store i64 %650, i64* %138, align 8, !tbaa !9
-  %651 = bitcast %"class.kotlin::mm::ShadowStack"* %648 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %651, align 8, !tbaa !7
-  store i32 0, i32* %140, align 8, !tbaa !12
-  store i32 4, i32* %141, align 4, !tbaa !13
-  %652 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %653 = icmp eq i32 %652, 2
-  br i1 %653, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %152)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %152, i8 0, i32 32, i1 immarg false) #49
+  %670 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %671 = bitcast %"class.kotlin::mm::ShadowStack"* %670 to i64*
+  %672 = load atomic i64, i64* %671 unordered, align 8, !tbaa !7
+  store i64 %672, i64* %156, align 8, !tbaa !9
+  %673 = bitcast %"class.kotlin::mm::ShadowStack"* %670 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %673, align 8, !tbaa !7
+  store i32 0, i32* %158, align 8, !tbaa !12
+  store i32 4, i32* %159, align 4, !tbaa !13
+  %674 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %675 = icmp eq i32 %674, 2
+  br i1 %675, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %654 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %655 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %654, %struct.ObjHeader** nonnull %135)
-  store %struct.ObjHeader* %655, %struct.ObjHeader** %135, align 8, !tbaa !3
-  %656 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %657 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %656, i64 0, i32 0
-  %658 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %659 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %658, i64 328
-  %660 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %659 to i32*
-  %661 = atomicrmw xchg i32* %660, i32 1 seq_cst, align 4
-  %662 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %657) #37
-  %663 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %658, null
-  br i1 %663, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %664
+  %676 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %677 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %676, %struct.ObjHeader** nonnull %153)
+  store %struct.ObjHeader* %677, %struct.ObjHeader** %153, align 8, !tbaa !3
+  %678 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %679 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %678, i64 0, i32 0
+  %680 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %681 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %680, i64 328
+  %682 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %681 to i32*
+  %683 = atomicrmw xchg i32* %682, i32 1 seq_cst, align 4
+  %684 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %679) #37
+  %685 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %680, null
+  br i1 %685, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %686
 
-664:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %665 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %659 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %666 = atomicrmw xchg i32* %660, i32 %661 seq_cst, align 4
-  %667 = icmp eq i32 %666, 1
-  %668 = icmp eq i32 %661, 0
-  %669 = and i1 %668, %667
-  br i1 %669, label %670, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+686:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %687 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %681 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %688 = atomicrmw xchg i32* %682, i32 %683 seq_cst, align 4
+  %689 = icmp eq i32 %688, 1
+  %690 = icmp eq i32 %683, 0
+  %691 = and i1 %690, %689
+  br i1 %691, label %692, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-670:                                              ; preds = %664
-  %671 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %672 = and i8 %671, 1
-  %673 = icmp eq i8 %672, 0
-  br i1 %673, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %674
+692:                                              ; preds = %686
+  %693 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %694 = and i8 %693, 1
+  %695 = icmp eq i8 %694, 0
+  br i1 %695, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %696
 
-674:                                              ; preds = %670
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %665) #37
+696:                                              ; preds = %692
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %687) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %674, %670, %664, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %675 = sext i32 %647 to i64
-  %676 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %656, i64 0, i32 2, i32 0, i32 1
-  %677 = load i64, i64* %676, align 8, !tbaa !103
-  %678 = urem i64 %675, %677
-  %679 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %656, i64 0, i32 2, i32 0, i32 0
-  %680 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %679, align 8, !tbaa !104
-  %681 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %680, i64 %678
-  %682 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %681, align 8, !tbaa !3
-  %683 = icmp eq %"struct.std::__detail::_Hash_node_base"* %682, null
-  br i1 %683, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %684
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %696, %692, %686, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %697 = sext i32 %669 to i64
+  %698 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %678, i64 0, i32 2, i32 0, i32 1
+  %699 = load atomic i64, i64* %698 unordered, align 8, !tbaa !101
+  %700 = urem i64 %697, %699
+  %701 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %678, i64 0, i32 2, i32 0, i32 0
+  %702 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %701 unordered, align 8, !tbaa !102
+  %703 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %702, i64 %700
+  %704 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %703 unordered, align 8, !tbaa !3
+  %705 = icmp eq %"struct.std::__detail::_Hash_node_base"* %704, null
+  br i1 %705, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %706
 
-684:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %685 = bitcast %"struct.std::__detail::_Hash_node_base"* %682 to %"struct.std::__detail::_Hash_node.203"**
-  %686 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %685, align 8, !tbaa !73
-  %687 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %686, i64 0, i32 0, i32 1
-  %688 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %687 to i32*
-  %689 = load i32, i32* %688, align 4, !tbaa !74
-  %690 = icmp eq i32 %689, %647
-  br i1 %690, label %707, label %.preheader
+706:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %707 = bitcast %"struct.std::__detail::_Hash_node_base"* %704 to %"struct.std::__detail::_Hash_node.203"**
+  %708 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %707 unordered, align 8, !tbaa !73
+  %709 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %708, i64 0, i32 0, i32 1
+  %710 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %709 to i32*
+  %711 = load atomic i32, i32* %710 unordered, align 4, !tbaa !66
+  %712 = icmp eq i32 %711, %669
+  br i1 %712, label %729, label %.preheader
 
-691:                                              ; preds = %698
-  %692 = icmp eq i32 %701, %647
-  br i1 %692, label %705, label %.preheader
+713:                                              ; preds = %720
+  %714 = icmp eq i32 %723, %669
+  br i1 %714, label %727, label %.preheader
 
-.preheader:                                       ; preds = %691, %684
-  %693 = phi %"struct.std::__detail::_Hash_node.203"* [ %697, %691 ], [ %686, %684 ]
-  %694 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %693, i64 0, i32 0, i32 0, i32 0
-  %695 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %694, align 8, !tbaa !73
-  %696 = icmp eq %"struct.std::__detail::_Hash_node_base"* %695, null
-  %697 = bitcast %"struct.std::__detail::_Hash_node_base"* %695 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %696, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %698
+.preheader:                                       ; preds = %713, %706
+  %715 = phi %"struct.std::__detail::_Hash_node.203"* [ %719, %713 ], [ %708, %706 ]
+  %716 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %715, i64 0, i32 0, i32 0, i32 0
+  %717 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %716 unordered, align 8, !tbaa !73
+  %718 = icmp eq %"struct.std::__detail::_Hash_node_base"* %717, null
+  %719 = bitcast %"struct.std::__detail::_Hash_node_base"* %717 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %718, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %720
 
-698:                                              ; preds = %.preheader
-  %699 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %695, i64 1
-  %700 = bitcast %"struct.std::__detail::_Hash_node_base"* %699 to i32*
-  %701 = load i32, i32* %700, align 4, !tbaa !74
-  %702 = sext i32 %701 to i64
-  %703 = urem i64 %702, %677
-  %704 = icmp eq i64 %703, %678
-  br i1 %704, label %691, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+720:                                              ; preds = %.preheader
+  %721 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %717, i64 1
+  %722 = bitcast %"struct.std::__detail::_Hash_node_base"* %721 to i32*
+  %723 = load atomic i32, i32* %722 unordered, align 4, !tbaa !66
+  %724 = sext i32 %723 to i64
+  %725 = urem i64 %724, %699
+  %726 = icmp eq i64 %725, %700
+  br i1 %726, label %713, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-705:                                              ; preds = %691
-  %706 = icmp eq %"struct.std::__detail::_Hash_node.203"* %693, null
-  br i1 %706, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %709
+727:                                              ; preds = %713
+  %728 = icmp eq %"struct.std::__detail::_Hash_node.203"* %715, null
+  br i1 %728, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %731
 
-707:                                              ; preds = %684
-  %708 = icmp eq %"struct.std::__detail::_Hash_node.203"* %686, null
-  br i1 %708, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %709
+729:                                              ; preds = %706
+  %730 = icmp eq %"struct.std::__detail::_Hash_node.203"* %708, null
+  br i1 %730, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %731
 
-709:                                              ; preds = %707, %705
-  %710 = phi %"struct.std::__detail::_Hash_node.203"* [ %697, %705 ], [ %686, %707 ]
-  %711 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %710, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %712 = bitcast i8* %711 to %"class.(anonymous namespace)::Future"**
-  %713 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %712, align 8, !tbaa !114
-  %714 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %713, i64 0, i32 3
-  %715 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %716 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %715, i64 328
-  %717 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %716 to i32*
-  %718 = atomicrmw xchg i32* %717, i32 1 seq_cst, align 4
-  %719 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %714) #37
-  %720 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %715, null
-  br i1 %720, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %721
+731:                                              ; preds = %729, %727
+  %732 = phi %"struct.std::__detail::_Hash_node.203"* [ %719, %727 ], [ %708, %729 ]
+  %733 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %732, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %734 = bitcast i8* %733 to %"class.(anonymous namespace)::Future"**
+  %735 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %734 unordered, align 8, !tbaa !112
+  %736 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %735, i64 0, i32 3
+  %737 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %738 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737, i64 328
+  %739 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738 to i32*
+  %740 = atomicrmw xchg i32* %739, i32 1 seq_cst, align 4
+  %741 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %736) #37
+  %742 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737, null
+  br i1 %742, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %743
 
-721:                                              ; preds = %709
-  %722 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %716 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %723 = atomicrmw xchg i32* %717, i32 %718 seq_cst, align 4
-  %724 = icmp eq i32 %723, 1
-  %725 = icmp eq i32 %718, 0
-  %726 = and i1 %725, %724
-  br i1 %726, label %727, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+743:                                              ; preds = %731
+  %744 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %745 = atomicrmw xchg i32* %739, i32 %740 seq_cst, align 4
+  %746 = icmp eq i32 %745, 1
+  %747 = icmp eq i32 %740, 0
+  %748 = and i1 %747, %746
+  br i1 %748, label %749, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-727:                                              ; preds = %721
-  %728 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %729 = and i8 %728, 1
-  %730 = icmp eq i8 %729, 0
-  br i1 %730, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %731
+749:                                              ; preds = %743
+  %750 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %751 = and i8 %750, 1
+  %752 = icmp eq i8 %751, 0
+  br i1 %752, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %753
 
-731:                                              ; preds = %727
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %722) #37
+753:                                              ; preds = %749
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %744) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %731, %727, %721, %709
-  %732 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %713, i64 0, i32 0
-  %733 = load i32, i32* %732, align 8, !tbaa !100
-  %734 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %735 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %734, i64 328
-  %736 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735 to i32*
-  %737 = atomicrmw xchg i32* %736, i32 1 seq_cst, align 4
-  %738 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %714) #37
-  %739 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %734, null
-  br i1 %739, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %740
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %753, %749, %743, %731
+  %754 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %735, i64 0, i32 0
+  %755 = load atomic i32, i32* %754 unordered, align 8, !tbaa !98
+  %756 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %757 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %756, i64 328
+  %758 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %757 to i32*
+  %759 = atomicrmw xchg i32* %758, i32 1 seq_cst, align 4
+  %760 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %736) #37
+  %761 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %756, null
+  br i1 %761, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %762
 
-740:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %741 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %742 = atomicrmw xchg i32* %736, i32 %737 seq_cst, align 4
-  %743 = icmp eq i32 %742, 1
-  %744 = icmp eq i32 %737, 0
-  %745 = and i1 %744, %743
-  br i1 %745, label %746, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+762:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %763 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %757 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %764 = atomicrmw xchg i32* %758, i32 %759 seq_cst, align 4
+  %765 = icmp eq i32 %764, 1
+  %766 = icmp eq i32 %759, 0
+  %767 = and i1 %766, %765
+  br i1 %767, label %768, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-746:                                              ; preds = %740
-  %747 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %748 = and i8 %747, 1
-  %749 = icmp eq i8 %748, 0
-  br i1 %749, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %750
+768:                                              ; preds = %762
+  %769 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %770 = and i8 %769, 1
+  %771 = icmp eq i8 %770, 0
+  br i1 %771, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %772
 
-750:                                              ; preds = %746
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %741) #37
+772:                                              ; preds = %768
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %763) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %750, %746, %740, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %707, %705, %698, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %751 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %705 ], [ 0, %707 ], [ %733, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %733, %750 ], [ %733, %746 ], [ %733, %740 ], [ 0, %.preheader ], [ 0, %698 ]
-  %752 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %753 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %752, i64 328
-  %754 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %753 to i32*
-  %755 = atomicrmw xchg i32* %754, i32 1 seq_cst, align 4
-  %756 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %657) #37
-  %757 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %752, null
-  br i1 %757, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %758
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %772, %768, %762, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %729, %727, %720, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %773 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %727 ], [ 0, %729 ], [ %755, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %755, %772 ], [ %755, %768 ], [ %755, %762 ], [ 0, %.preheader ], [ 0, %720 ]
+  %774 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %775 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %774, i64 328
+  %776 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %775 to i32*
+  %777 = atomicrmw xchg i32* %776, i32 1 seq_cst, align 4
+  %778 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %679) #37
+  %779 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %774, null
+  br i1 %779, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %780
 
-758:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %759 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %753 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %760 = atomicrmw xchg i32* %754, i32 %755 seq_cst, align 4
-  %761 = icmp eq i32 %760, 1
-  %762 = icmp eq i32 %755, 0
-  %763 = and i1 %762, %761
-  br i1 %763, label %764, label %Kotlin_Worker_stateOfFuture.exit.i.i
+780:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %781 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %775 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %782 = atomicrmw xchg i32* %776, i32 %777 seq_cst, align 4
+  %783 = icmp eq i32 %782, 1
+  %784 = icmp eq i32 %777, 0
+  %785 = and i1 %784, %783
+  br i1 %785, label %786, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-764:                                              ; preds = %758
-  %765 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %766 = and i8 %765, 1
-  %767 = icmp eq i8 %766, 0
-  br i1 %767, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %768
+786:                                              ; preds = %780
+  %787 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %788 = and i8 %787, 1
+  %789 = icmp eq i8 %788, 0
+  br i1 %789, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %790
 
-768:                                              ; preds = %764
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %759) #37
+790:                                              ; preds = %786
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %781) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %768, %764, %758, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %769 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %655, i64 1
-  %770 = bitcast %struct.ObjHeader* %769 to i32*
-  %771 = load i32, i32* %770, align 8, !tbaa !18
-  %772 = icmp ugt i32 %771, %751
-  br i1 %772, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %773
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %790, %786, %780, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %791 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %677, i64 1
+  %792 = bitcast %struct.ObjHeader* %791 to i32*
+  %793 = load atomic i32, i32* %792 unordered, align 8, !tbaa !18
+  %794 = icmp ugt i32 %793, %773
+  br i1 %794, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %795
 
-773:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+795:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %774 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %655, i64 2
-  %775 = sext i32 %751 to i64
-  %776 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %774, i64 %775
-  %777 = bitcast %struct.ObjHeader* %776 to %struct.ObjHeader**
-  %778 = load %struct.ObjHeader*, %struct.ObjHeader** %777, align 8, !tbaa !3
-  store %struct.ObjHeader* %778, %struct.ObjHeader** %209, align 8, !tbaa !3
-  %779 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %780 = load i64, i64* %138, align 8, !tbaa !9
-  %781 = bitcast %"class.kotlin::mm::ShadowStack"* %779 to i64*
-  store i64 %780, i64* %781, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %134)
-  %782 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %778, i64 2
-  %783 = bitcast %struct.ObjHeader* %782 to i32*
-  %784 = load i32, i32* %783, align 4
-  switch i32 %784, label %when_next27.i [
+  %796 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %677, i64 2
+  %797 = sext i32 %773 to i64
+  %798 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %796, i64 %797
+  %799 = bitcast %struct.ObjHeader* %798 to %struct.ObjHeader**
+  %800 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %799 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %800, %struct.ObjHeader** %228, align 8, !tbaa !3
+  %801 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %802 = load atomic i64, i64* %156 unordered, align 8, !tbaa !9
+  %803 = bitcast %"class.kotlin::mm::ShadowStack"* %801 to i64*
+  store i64 %802, i64* %803, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %152)
+  %804 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %800, i64 2
+  %805 = bitcast %struct.ObjHeader* %804 to i32*
+  %806 = load atomic i32, i32* %805 unordered, align 4
+  switch i32 %806, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1308,71 +1342,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %647, %struct.ObjHeader** nonnull %210)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %669, %struct.ObjHeader** nonnull %229)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %785 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %786 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %787 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %786 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %788 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %787, align 8, !tbaa !3
-  %789 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %788, i64 0, i32 2, i32 1
-  %790 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %789, i64 56) #37
-  %791 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %790, i64 1
-  %792 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %790, i64 2
-  %793 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792 to %struct.ObjHeader*
-  %794 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792 to %struct.TypeInfo**
-  %795 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %791 to i64*
-  store i64 0, i64* %795, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %794, align 8, !tbaa !14
-  %796 = bitcast %struct.ObjHeader** %785 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %796, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %793, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %793) #50
+  %807 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %808 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %809 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %808 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %810 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %809 unordered, align 8, !tbaa !3
+  %811 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %810, i64 0, i32 2, i32 1
+  %812 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %811, i64 56) #37
+  %813 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %812, i64 1
+  %814 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %812, i64 2
+  %815 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814 to %struct.ObjHeader*
+  %816 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814 to %struct.TypeInfo**
+  %817 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %813 to i64*
+  store i64 0, i64* %817, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %816, align 8, !tbaa !14
+  %818 = bitcast %struct.ObjHeader** %807 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %818, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %815, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %815) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %797 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %798 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %647, %struct.ObjHeader** nonnull %798)
-  %799 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %800 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %799 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %801 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %800, align 8, !tbaa !3
-  %802 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %801, i64 0, i32 2, i32 1
-  %803 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %802, i64 56) #37
-  %804 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %803, i64 1
-  %805 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %803, i64 2
-  %806 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %805 to %struct.ObjHeader*
-  %807 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %805 to %struct.TypeInfo**
-  %808 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %804 to i64*
-  store i64 0, i64* %808, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %807, align 8, !tbaa !14
-  %809 = bitcast %struct.ObjHeader** %797 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %805, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %809, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %806, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %806) #50
+  %819 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %820 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %669, %struct.ObjHeader** nonnull %820)
+  %821 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %822 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %821 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %823 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %822 unordered, align 8, !tbaa !3
+  %824 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %823, i64 0, i32 2, i32 1
+  %825 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %824, i64 56) #37
+  %826 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %825, i64 1
+  %827 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %825, i64 2
+  %828 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827 to %struct.ObjHeader*
+  %829 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827 to %struct.TypeInfo**
+  %830 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %826 to i64*
+  store i64 0, i64* %830, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %829, align 8, !tbaa !14
+  %831 = bitcast %struct.ObjHeader** %819 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %831, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %828, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %828) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %810 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %811 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %647, %struct.ObjHeader** nonnull %811)
-  %812 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %813 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %812 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %814 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %813, align 8, !tbaa !3
-  %815 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %814, i64 0, i32 2, i32 1
-  %816 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %815, i64 56) #37
-  %817 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %816, i64 1
-  %818 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %816, i64 2
-  %819 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %818 to %struct.ObjHeader*
-  %820 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %818 to %struct.TypeInfo**
-  %821 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %817 to i64*
-  store i64 0, i64* %821, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %820, align 8, !tbaa !14
-  %822 = bitcast %struct.ObjHeader** %810 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %818, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %822, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %819, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %819) #50
+  %832 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %833 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %669, %struct.ObjHeader** nonnull %833)
+  %834 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %835 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %834 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %836 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %835 unordered, align 8, !tbaa !3
+  %837 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %836, i64 0, i32 2, i32 1
+  %838 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %837, i64 56) #37
+  %839 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %838, i64 1
+  %840 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %838, i64 2
+  %841 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840 to %struct.ObjHeader*
+  %842 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840 to %struct.TypeInfo**
+  %843 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %839 to i64*
+  store i64 0, i64* %843, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %842, align 8, !tbaa !14
+  %844 = bitcast %struct.ObjHeader** %832 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %844, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %841, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %841) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1385,10 +1419,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %823 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %824 = bitcast %"class.kotlin::mm::ShadowStack"* %823 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %205)
-  %825 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %825, i64* %824, align 8, !tbaa !7
+  %845 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %846 = bitcast %"class.kotlin::mm::ShadowStack"* %845 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %224)
+  %847 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %847, i64* %846, align 8, !tbaa !7
   ret void
 }
