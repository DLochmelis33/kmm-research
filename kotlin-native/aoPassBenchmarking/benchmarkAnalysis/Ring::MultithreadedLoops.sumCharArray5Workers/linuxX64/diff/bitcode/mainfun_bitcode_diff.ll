--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumCharArray5Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:49:38.620611352 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumCharArray5Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:01:22.560390818 +0200
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
-  store i32 5, i32* %50, align 8
-  %51 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %52 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %51 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %53 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52, align 8, !tbaa !3
-  %54 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %53, i64 0, i32 2, i32 1
-  %55 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %54, i64 64) #37
-  %56 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 1
-  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 2
-  %58 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to %struct.TypeInfo**
-  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %58, align 8, !tbaa !16
-  %60 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 3
-  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60 to i32*
-  store i32 5, i32* %61, align 8, !tbaa !18
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
+  store i32 5, i32* %48, align 8
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
-  %74 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %73, i64 20024) #37
-  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 1
-  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 2
-  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.TypeInfo**
-  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %78, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %77, align 8, !tbaa !16
-  %79 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 3
-  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to i32*
-  store i32 10000, i32* %80, align 8, !tbaa !18
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i64*
-  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 4
-  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to i16*
+Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %87, %while_loop.i6
+  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %90 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89 unordered, align 8, !tbaa !3
+  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
+  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 20024) #37
+  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
+  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %95, align 8, !tbaa !16
+  %97 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 3
+  %98 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97 to i32*
+  store i32 10000, i32* %98, align 8, !tbaa !18
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
+  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
+  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 4
+  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to i16*
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
-  br i1 %90, label %Kotlin_CharArray_set.exit.i, label %91
+Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %105, %while_loop13.i
+  %106 = load atomic i32, i32* %98 unordered, align 8, !tbaa !18
+  %107 = zext i32 %106 to i64
+  %108 = icmp ult i64 %indvars.iv57, %107
+  br i1 %108, label %Kotlin_CharArray_set.exit.i, label %109
 
-91:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
+109:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
-  %92 = trunc i32 %tmp8.0.i to i16
-  %93 = load atomic volatile i64, i64* %81 monotonic, align 8
-  %94 = getelementptr inbounds i16, i16* %83, i64 %indvars.iv56
-  store i16 %92, i16* %94, align 2, !tbaa !34
-  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
-  %95 = add nuw nsw i32 %tmp8.0.i, 1
+  %110 = trunc i32 %tmp8.0.i to i16
+  %111 = load atomic volatile i64, i64* %99 monotonic, align 8
+  %112 = getelementptr inbounds i16, i16* %101, i64 %indvars.iv57
+  store i16 %110, i16* %112, align 2, !tbaa !27
+  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
+  %113 = add nuw nsw i32 %tmp8.0.i, 1
   br label %loop_check12.i
 
-loop_check12.i:                                   ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  %tmp8.0.i = phi i32 [ %95, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  %exitcond58.not = icmp eq i64 %indvars.iv56, 10000
-  br i1 %exitcond58.not, label %loop_exit11.i, label %while_loop13.i
+loop_check12.i:                                   ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i7
+  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  %tmp8.0.i = phi i32 [ %113, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
+  br i1 %exitcond59.not, label %loop_exit11.i, label %while_loop13.i
 
 loop_exit11.i:                                    ; preds = %loop_check12.i
-  %96 = load i32, i32* %61, align 8, !tbaa !18
-  %97 = zext i32 %96 to i64
-  %98 = icmp ult i64 %indvars.iv59, %97
-  br i1 %98, label %Kotlin_Array_set.exit2.i, label %99
+  %114 = load atomic i32, i32* %79 unordered, align 8, !tbaa !18
+  %115 = zext i32 %114 to i64
+  %116 = icmp ult i64 %indvars.iv60, %115
+  br i1 %116, label %Kotlin_Array_set.exit2.i, label %117
 
-99:                                               ; preds = %loop_exit11.i
+117:                                              ; preds = %loop_exit11.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit2.i:                         ; preds = %loop_exit11.i
-  %100 = load atomic volatile i64, i64* %64 monotonic, align 8
-  %101 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, i64 %indvars.iv59
-  %102 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %102, align 8, !tbaa !3
-  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
-  br label %loop_check.i7
+  %118 = load atomic volatile i64, i64* %82 monotonic, align 8
+  %119 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83, i64 %indvars.iv60
+  %120 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %120, align 8, !tbaa !3
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
-  %103 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %103, align 8, !tbaa !3
-  %104 = load i32, i32* %50, align 8
-  %105 = icmp slt i32 %104, 0
-  br i1 %105, label %when_case20.i, label %AllocArrayInstance.exit.i9
+loop_exit.i10:                                    ; preds = %loop_check.i9
+  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %121, align 8, !tbaa !3
+  %122 = load atomic i32, i32* %48 unordered, align 8
+  %123 = icmp slt i32 %122, 0
+  br i1 %123, label %when_case20.i, label %AllocArrayInstance.exit3.i
 
-when_case20.i:                                    ; preds = %loop_exit.i8
-  %106 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 6
-  %107 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %108 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %107 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %109 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %108, align 8, !tbaa !3
-  %110 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %109, i64 0, i32 2, i32 1
-  %111 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %110, i64 56) #37
-  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %111, i64 1
-  %113 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %111, i64 2
-  %114 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113 to %struct.ObjHeader*
-  %115 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113 to %struct.TypeInfo**
-  %116 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to i64*
-  store i64 0, i64* %116, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %115, align 8, !tbaa !14
-  %117 = bitcast %struct.ObjHeader** %106 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %114, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %114) #50
+when_case20.i:                                    ; preds = %loop_exit.i10
+  %124 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 6
+  %125 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %126 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %125 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %127 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %126 unordered, align 8, !tbaa !3
+  %128 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %127, i64 0, i32 2, i32 1
+  %129 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %128, i64 56) #37
+  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 1
+  %131 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 2
+  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.ObjHeader*
+  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.TypeInfo**
+  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to i64*
+  store i64 0, i64* %134, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %133, align 8, !tbaa !14
+  %135 = bitcast %struct.ObjHeader** %124 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %135, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %132, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %132) #50
   unreachable
 
-AllocArrayInstance.exit.i9:                       ; preds = %loop_exit.i8
-  %118 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %119 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %118 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %120 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %119, align 8, !tbaa !3
-  %121 = zext i32 %104 to i64
-  %122 = shl nuw nsw i64 %121, 3
-  %123 = add nuw nsw i64 %122, 31
-  %124 = and i64 %123, 68719476728
-  %125 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %120, i64 0, i32 2, i32 1
-  %126 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %125, i64 %124) #37
-  %127 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, i64 1
-  %128 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, i64 2
-  %129 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128 to %struct.TypeInfo**
-  %130 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %130, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %129, align 8, !tbaa !16
-  %131 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, i64 3
-  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to i32*
-  store i32 %104, i32* %132, align 8, !tbaa !18
-  %133 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %133, align 8, !tbaa !3
-  %134 = bitcast %struct.ObjHeader** %37 to i64*
-  %135 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  %.sub.i.i11 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %136 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %137 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %138 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %139 = bitcast %struct.ObjHeader** %138 to i64*
-  %140 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %141 = bitcast %struct.ObjHeader** %140 to i32*
-  %142 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %137, i64 0, i32 3
-  %143 = bitcast %struct.ObjHeader** %136 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %144 = bitcast %struct.ObjHeader** %38 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %145 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128 to i64*
-  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, i64 4
-  %wide.trip.count54 = zext i32 %104 to i64
+AllocArrayInstance.exit3.i:                       ; preds = %loop_exit.i10
+  %136 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %137 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %136 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %138 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %137 unordered, align 8, !tbaa !3
+  %139 = zext i32 %122 to i64
+  %140 = shl nuw nsw i64 %139, 3
+  %141 = add nuw nsw i64 %140, 31
+  %142 = and i64 %141, 68719476728
+  %143 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %138, i64 0, i32 2, i32 1
+  %144 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %143, i64 %142) #37
+  %145 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 1
+  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 2
+  %147 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to %struct.TypeInfo**
+  %148 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %148, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %147, align 8, !tbaa !16
+  %149 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 3
+  %150 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149 to i32*
+  store i32 %122, i32* %150, align 8, !tbaa !18
+  %151 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %151, align 8, !tbaa !3
+  %152 = bitcast %struct.ObjHeader** %35 to i64*
+  %153 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
+  %154 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %155 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %156 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %157 = bitcast %struct.ObjHeader** %156 to i64*
+  %158 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %159 = bitcast %struct.ObjHeader** %158 to i32*
+  %160 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %155, i64 0, i32 3
+  %161 = bitcast %struct.ObjHeader** %154 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %162 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %163 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to i64*
+  %164 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 4
+  %wide.trip.count55 = zext i32 %122 to i64
   br label %loop_check31.i
 
 while_loop32.i:                                   ; preds = %loop_check31.i
-  %147 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %148 = and i8 %147, 1
-  %149 = icmp eq i8 %148, 0
-  br i1 %149, label %Kotlin_mm_safePointWhileLoopBody.exit3.i, label %150
+  %165 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %166 = and i8 %165, 1
+  %167 = icmp eq i8 %166, 0
+  br i1 %167, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %168
 
-150:                                              ; preds = %while_loop32.i
+168:                                              ; preds = %while_loop32.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit3.i
+  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i
 
-Kotlin_mm_safePointWhileLoopBody.exit3.i:         ; preds = %150, %while_loop32.i
-  %151 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %151, i64* %134, align 8, !tbaa !3
-  %152 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %153 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %152, i32 0)
-  %154 = icmp eq %class.Worker* %153, null
-  br i1 %154, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %155
+Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %168, %while_loop32.i
+  %169 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %169, i64* %152, align 8, !tbaa !3
+  %170 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %171 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %170, i32 0)
+  %172 = icmp eq %class.Worker* %171, null
+  br i1 %172, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %173
 
-155:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %156 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %157 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %156, i64 328
-  %158 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %157 to i32*
-  %159 = atomicrmw xchg i32* %158, i32 1 seq_cst, align 4
-  %160 = getelementptr inbounds %class.Worker, %class.Worker* %153, i64 0, i32 9
-  %161 = bitcast %class.Worker* %153 to i8*
-  %162 = call i32 @pthread_create(i64* nonnull %160, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %161) #37
-  %163 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %156, null
-  br i1 %163, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %164
+173:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %174 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %175 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %174, i64 328
+  %176 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %175 to i32*
+  %177 = atomicrmw xchg i32* %176, i32 1 seq_cst, align 4
+  %178 = getelementptr inbounds %class.Worker, %class.Worker* %171, i64 0, i32 9
+  %179 = bitcast %class.Worker* %171 to i8*
+  %180 = call i32 @pthread_create(i64* nonnull %178, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %179) #37
+  %181 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %174, null
+  br i1 %181, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %182
 
-164:                                              ; preds = %155
-  %165 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %157 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %166 = atomicrmw xchg i32* %158, i32 %159 seq_cst, align 4
-  %167 = icmp eq i32 %166, 1
-  %168 = icmp eq i32 %159, 0
-  %169 = and i1 %168, %167
-  br i1 %169, label %170, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+182:                                              ; preds = %173
+  %183 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %175 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %184 = atomicrmw xchg i32* %176, i32 %177 seq_cst, align 4
+  %185 = icmp eq i32 %184, 1
+  %186 = icmp eq i32 %177, 0
+  %187 = and i1 %186, %185
+  br i1 %187, label %188, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-170:                                              ; preds = %164
-  %171 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %172 = and i8 %171, 1
-  %173 = icmp eq i8 %172, 0
-  br i1 %173, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, label %174
+188:                                              ; preds = %182
+  %189 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %190 = and i8 %189, 1
+  %191 = icmp eq i8 %190, 0
+  br i1 %191, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %192
 
-174:                                              ; preds = %170
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %165) #37
-  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10
+192:                                              ; preds = %188
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %183) #37
+  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10: ; preds = %174, %170, %164, %155
-  %175 = getelementptr inbounds %class.Worker, %class.Worker* %153, i64 0, i32 0
-  %176 = load i32, i32* %175, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %192, %188, %182, %173
+  %193 = getelementptr inbounds %class.Worker, %class.Worker* %171, i64 0, i32 0
+  %194 = load atomic i32, i32* %193 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
-"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10, %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %177 = phi i32 [ %176, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i10 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit3.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %135)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %135, i8 0, i32 32, i1 immarg false) #49
-  %178 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %179 = bitcast %"class.kotlin::mm::ShadowStack"* %178 to i64*
-  %180 = load i64, i64* %179, align 8, !tbaa !7
-  store i64 %180, i64* %139, align 8, !tbaa !9
-  %181 = bitcast %"class.kotlin::mm::ShadowStack"* %178 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %181, align 8, !tbaa !7
-  store i32 0, i32* %141, align 8, !tbaa !12
-  store i32 4, i32* %142, align 4, !tbaa !13
-  %182 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %183 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %182 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %184 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %183, align 8, !tbaa !3
-  %185 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %184, i64 0, i32 2, i32 1
-  %186 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %185, i64 24) #37
-  %187 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %186, i64 1
-  %188 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %186, i64 2
-  %189 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188 to %struct.TypeInfo**
-  %190 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187 to i64*
-  store i64 0, i64* %190, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %189, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %143, align 8, !tbaa !3
-  %191 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %186, i64 3
-  %192 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %191 to i32*
-  store i32 %177, i32* %192, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %144, align 8, !tbaa !3
-  %193 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %194 = load i64, i64* %139, align 8, !tbaa !9
-  %195 = bitcast %"class.kotlin::mm::ShadowStack"* %193 to i64*
-  store i64 %194, i64* %195, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %135)
-  %196 = load i32, i32* %132, align 8, !tbaa !18
-  %197 = zext i32 %196 to i64
-  %198 = icmp ult i64 %indvars.iv52, %197
-  br i1 %198, label %Kotlin_Array_set.exit.i12, label %199
+"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %195 = phi i32 [ %194, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit4.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %153)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %153, i8 0, i32 32, i1 immarg false) #49
+  %196 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %197 = bitcast %"class.kotlin::mm::ShadowStack"* %196 to i64*
+  %198 = load atomic i64, i64* %197 unordered, align 8, !tbaa !7
+  store i64 %198, i64* %157, align 8, !tbaa !9
+  %199 = bitcast %"class.kotlin::mm::ShadowStack"* %196 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %199, align 8, !tbaa !7
+  store i32 0, i32* %159, align 8, !tbaa !12
+  store i32 4, i32* %160, align 4, !tbaa !13
+  %200 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %201 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %200 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %202 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %201 unordered, align 8, !tbaa !3
+  %203 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %202, i64 0, i32 2, i32 1
+  %204 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %203, i64 24) #37
+  %205 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204, i64 1
+  %206 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204, i64 2
+  %207 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206 to %struct.TypeInfo**
+  %208 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205 to i64*
+  store i64 0, i64* %208, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %207, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %161, align 8, !tbaa !3
+  %209 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204, i64 3
+  %210 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209 to i32*
+  store i32 %195, i32* %210, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %162, align 8, !tbaa !3
+  %211 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %212 = load atomic i64, i64* %157 unordered, align 8, !tbaa !9
+  %213 = bitcast %"class.kotlin::mm::ShadowStack"* %211 to i64*
+  store i64 %212, i64* %213, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %153)
+  %214 = load atomic i32, i32* %150 unordered, align 8, !tbaa !18
+  %215 = zext i32 %214 to i64
+  %216 = icmp ult i64 %indvars.iv53, %215
+  br i1 %216, label %Kotlin_Array_set.exit.i13, label %217
 
-199:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+217:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit.i12:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %200 = load atomic volatile i64, i64* %145 monotonic, align 8
-  %201 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, i64 %indvars.iv52
-  %202 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %201, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %202, align 8, !tbaa !3
-  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
+Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+  %218 = load atomic volatile i64, i64* %163 monotonic, align 8
+  %219 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %164, i64 %indvars.iv53
+  %220 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %220, align 8, !tbaa !3
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
-  %203 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %203, align 8, !tbaa !3
-  %204 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %205 = load i64, i64* %44, align 8, !tbaa !3
+  %221 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %221, align 8, !tbaa !3
+  %222 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %223 = load atomic i64, i64* %42 unordered, align 8, !tbaa !9
+  %224 = bitcast %"class.kotlin::mm::ShadowStack"* %222 to i64*
+  store i64 %223, i64* %224, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %33)
-  %206 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %206)
+  %225 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %225)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %206, i8 0, i32 136, i1 immarg false) #49
-  %207 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %208 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %209 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %210 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %211 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %212 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %213 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %214 = bitcast %struct.ObjHeader** %213 to i64*
-  store i64 %205, i64* %214, align 8, !tbaa !9
-  %215 = bitcast %"class.kotlin::mm::ShadowStack"* %204 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %215, align 8, !tbaa !7
-  %216 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %217 = bitcast %struct.ObjHeader** %216 to i32*
-  store i32 0, i32* %217, align 8, !tbaa !12
-  %218 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %212, i64 0, i32 3
-  store i32 17, i32* %218, align 4, !tbaa !13
-  %219 = load i32, i32* %50, align 8
-  %220 = icmp slt i32 %219, 0
-  br i1 %220, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %225, i8 0, i32 136, i1 immarg false) #49
+  %226 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %227 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %228 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %229 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %230 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %231 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %232 = load atomic i64, i64* %224 unordered, align 8, !tbaa !7
+  %233 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %234 = bitcast %struct.ObjHeader** %233 to i64*
+  store i64 %232, i64* %234, align 8, !tbaa !9
+  %235 = bitcast %"class.kotlin::mm::ShadowStack"* %222 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %235, align 8, !tbaa !7
+  %236 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %237 = bitcast %struct.ObjHeader** %236 to i32*
+  store i32 0, i32* %237, align 8, !tbaa !12
+  %238 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %231, i64 0, i32 3
+  store i32 17, i32* %238, align 4, !tbaa !13
+  %239 = load atomic i32, i32* %48 unordered, align 8
+  %240 = icmp slt i32 %239, 0
+  br i1 %240, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %221 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %222 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %223 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %222 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %224 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %223, align 8, !tbaa !3
-  %225 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %224, i64 0, i32 2, i32 1
-  %226 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %225, i64 56) #37
-  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 1
-  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 2
-  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to %struct.ObjHeader*
-  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to %struct.TypeInfo**
-  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to i64*
-  store i64 0, i64* %231, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %230, align 8, !tbaa !14
-  %232 = bitcast %struct.ObjHeader** %221 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %232, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %229, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %229) #50
+  %241 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %242 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %243 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %242 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %244 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %243 unordered, align 8, !tbaa !3
+  %245 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %244, i64 0, i32 2, i32 1
+  %246 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %245, i64 56) #37
+  %247 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 1
+  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 2
+  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to %struct.ObjHeader*
+  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to %struct.TypeInfo**
+  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to i64*
+  store i64 0, i64* %251, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %250, align 8, !tbaa !14
+  %252 = bitcast %struct.ObjHeader** %241 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %252, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %249, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %249) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %233 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %234 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %235 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %236 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %237 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %236 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %238 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %237, align 8, !tbaa !3
-  %239 = zext i32 %219 to i64
-  %240 = shl nuw nsw i64 %239, 3
-  %241 = add nuw nsw i64 %240, 31
-  %242 = and i64 %241, 68719476728
-  %243 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %238, i64 0, i32 2, i32 1
-  %244 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %243, i64 %242) #37
-  %245 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244, i64 1
-  %246 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244, i64 2
-  %247 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246 to %struct.TypeInfo**
-  %248 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %245 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %248, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %247, align 8, !tbaa !16
-  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244, i64 3
-  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to i32*
-  store i32 %219, i32* %250, align 8, !tbaa !18
-  %251 = bitcast %struct.ObjHeader** %235 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %251, align 8, !tbaa !3
-  %252 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %253 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252 to %struct.ObjHeader**
-  %254 = bitcast %struct.ObjHeader** %234 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %255 = bitcast %class.ObjHolder* %3 to i8*
-  %256 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %257 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %258 = bitcast %struct.FrameOverlay.6** %257 to i64*
-  %259 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %260 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %261 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %262 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %263 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %264 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %265 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %266 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %267 = bitcast %struct.ObjHeader** %233 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %268 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246 to i64*
-  %269 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244, i64 4
-  %wide.trip.count50 = zext i32 %219 to i64
+  %253 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %254 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %255 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %256 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %257 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %256 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %258 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %257 unordered, align 8, !tbaa !3
+  %259 = zext i32 %239 to i64
+  %260 = shl nuw nsw i64 %259, 3
+  %261 = add nuw nsw i64 %260, 31
+  %262 = and i64 %261, 68719476728
+  %263 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %258, i64 0, i32 2, i32 1
+  %264 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %263, i64 %262) #37
+  %265 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 1
+  %266 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 2
+  %267 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266 to %struct.TypeInfo**
+  %268 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %268, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %267, align 8, !tbaa !16
+  %269 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 3
+  %270 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %269 to i32*
+  store i32 %239, i32* %270, align 8, !tbaa !18
+  %271 = bitcast %struct.ObjHeader** %255 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %271, align 8, !tbaa !3
+  %272 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %273 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %272 to %struct.ObjHeader**
+  %274 = bitcast %struct.ObjHeader** %254 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %275 = bitcast %class.ObjHolder* %3 to i8*
+  %276 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %277 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %278 = bitcast %struct.FrameOverlay.6** %277 to i64*
+  %279 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %280 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %281 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %282 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %283 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %284 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %285 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %286 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %287 = bitcast %struct.ObjHeader** %253 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %288 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266 to i64*
+  %289 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 4
+  %wide.trip.count51 = zext i32 %239 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %270 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %271 = and i8 %270, 1
-  %272 = icmp eq i8 %271, 0
-  br i1 %272, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %273
+  %290 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %291 = and i8 %290, 1
+  %292 = icmp eq i8 %291, 0
+  br i1 %292, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %293
 
-273:                                              ; preds = %while_loop.i
+293:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %273, %while_loop.i
-  %274 = load %struct.ObjHeader*, %struct.ObjHeader** %253, align 8
-  %275 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %274, i64 1
-  %276 = bitcast %struct.ObjHeader* %275 to i32*
-  %277 = load i32, i32* %276, align 8, !tbaa !18
-  %278 = zext i32 %277 to i64
-  %279 = icmp ult i64 %indvars.iv48, %278
-  br i1 %279, label %Kotlin_Array_get.exit.i, label %280
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %293, %while_loop.i
+  %294 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %273 unordered, align 8
+  %295 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %294, i64 1
+  %296 = bitcast %struct.ObjHeader* %295 to i32*
+  %297 = load atomic i32, i32* %296 unordered, align 8, !tbaa !18
+  %298 = zext i32 %297 to i64
+  %299 = icmp ult i64 %indvars.iv49, %298
+  br i1 %299, label %Kotlin_Array_get.exit.i, label %300
 
-280:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+300:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %281 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %274, i64 2
-  %282 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %281, i64 %indvars.iv48
-  %283 = bitcast %struct.ObjHeader* %282 to %struct.ObjHeader**
-  %284 = load %struct.ObjHeader*, %struct.ObjHeader** %283, align 8, !tbaa !3
-  store %struct.ObjHeader* %284, %struct.ObjHeader** %207, align 8, !tbaa !3
-  %285 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %284, i64 1
-  %286 = bitcast %struct.ObjHeader* %285 to i32*
-  %287 = load i32, i32* %286, align 4
-  %288 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %289 = icmp eq i32 %288, 2
-  br i1 %289, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %301 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %294, i64 2
+  %302 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %301, i64 %indvars.iv49
+  %303 = bitcast %struct.ObjHeader* %302 to %struct.ObjHeader**
+  %304 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %303 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %304, %struct.ObjHeader** %226, align 8, !tbaa !3
+  %305 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %304, i64 1
+  %306 = bitcast %struct.ObjHeader* %305 to i32*
+  %307 = load atomic i32, i32* %306 unordered, align 4
+  %308 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %309 = icmp eq i32 %308, 2
+  br i1 %309, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %290 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %291 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %290, i64 2
-  %292 = bitcast %struct.ObjHeader* %291 to %struct.ObjHeader**
-  %293 = load %struct.ObjHeader*, %struct.ObjHeader** %292, align 8, !tbaa !3
-  store %struct.ObjHeader* %293, %struct.ObjHeader** %208, align 8, !tbaa !3
-  %294 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %295 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %294 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %296 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %295, align 8, !tbaa !3
-  %297 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %296, i64 0, i32 2, i32 1
-  %298 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %297, i64 32) #37
-  %299 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %298, i64 1
-  %300 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %298, i64 2
-  %301 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300 to %struct.ObjHeader*
-  %302 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300 to %struct.TypeInfo**
-  %303 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %299 to i64*
-  store i64 0, i64* %303, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumCharArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %302, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %300, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %254, align 8, !tbaa !3
-  %304 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %298, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %304, align 8, !tbaa !3
-  %305 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %298, i64 4
-  %306 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %305 to i32*
-  %307 = trunc i64 %indvars.iv48 to i32
-  store i32 %307, i32* %306, align 8
-  %308 = bitcast %struct.ObjHeader* %293 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %309 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %308, i64 0, i32 3
-  %310 = load i32, i32* %309, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %255) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %256, align 8, !tbaa !61
-  %311 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %312 = bitcast %"class.kotlin::mm::ShadowStack"* %311 to i64*
-  %313 = load i64, i64* %312, align 8, !tbaa !7
-  store i64 %313, i64* %258, align 8, !tbaa !9
-  %314 = bitcast %"class.kotlin::mm::ShadowStack"* %311 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %314, align 8, !tbaa !7
-  store i32 0, i32* %259, align 8, !tbaa !12
-  store i32 4, i32* %260, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %301, %struct.ObjHeader** nonnull %256)
-          to label %315 unwind label %599
+  %310 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %311 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %310, i64 2
+  %312 = bitcast %struct.ObjHeader* %311 to %struct.ObjHeader**
+  %313 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %312 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %313, %struct.ObjHeader** %227, align 8, !tbaa !3
+  %314 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %315 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %314 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %316 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %315 unordered, align 8, !tbaa !3
+  %317 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %316, i64 0, i32 2, i32 1
+  %318 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %317, i64 32) #37
+  %319 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 1
+  %320 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 2
+  %321 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320 to %struct.ObjHeader*
+  %322 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320 to %struct.TypeInfo**
+  %323 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319 to i64*
+  store i64 0, i64* %323, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumCharArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %322, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %274, align 8, !tbaa !3
+  %324 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %324, align 8, !tbaa !3
+  %325 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 4
+  %326 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %325 to i32*
+  %327 = trunc i64 %indvars.iv49 to i32
+  store i32 %327, i32* %326, align 8
+  %328 = bitcast %struct.ObjHeader* %313 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %329 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %328, i64 0, i32 3
+  %330 = load atomic i32, i32* %329 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %275) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %276, align 8, !tbaa !60
+  %331 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %332 = bitcast %"class.kotlin::mm::ShadowStack"* %331 to i64*
+  %333 = load atomic i64, i64* %332 unordered, align 8, !tbaa !7
+  store i64 %333, i64* %278, align 8, !tbaa !9
+  %334 = bitcast %"class.kotlin::mm::ShadowStack"* %331 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %334, align 8, !tbaa !7
+  store i32 0, i32* %279, align 8, !tbaa !12
+  store i32 4, i32* %280, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %321, %struct.ObjHeader** nonnull %276)
+          to label %335 unwind label %621
 
-315:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %316 = load %struct.ObjHeader*, %struct.ObjHeader** %256, align 8, !tbaa !61
-  %317 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %316) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %256, align 8, !tbaa !3
-  %318 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %261)
-  %319 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 0
-  %320 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %321 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %320, i64 328
-  %322 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %321 to i32*
-  %323 = atomicrmw xchg i32* %322, i32 1 seq_cst, align 4
-  %324 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %319) #37
-  %325 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %320, null
-  br i1 %325, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %326
+335:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %336 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %276 unordered, align 8, !tbaa !60
+  %337 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %336) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %276, align 8, !tbaa !3
+  %338 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %281)
+  %339 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 0
+  %340 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %341 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %340, i64 328
+  %342 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %341 to i32*
+  %343 = atomicrmw xchg i32* %342, i32 1 seq_cst, align 4
+  %344 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %339) #37
+  %345 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %340, null
+  br i1 %345, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %346
 
-326:                                              ; preds = %315
-  %327 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %321 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %328 = atomicrmw xchg i32* %322, i32 %323 seq_cst, align 4
-  %329 = icmp eq i32 %328, 1
-  %330 = icmp eq i32 %323, 0
-  %331 = and i1 %330, %329
-  br i1 %331, label %332, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+346:                                              ; preds = %335
+  %347 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %341 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %348 = atomicrmw xchg i32* %342, i32 %343 seq_cst, align 4
+  %349 = icmp eq i32 %348, 1
+  %350 = icmp eq i32 %343, 0
+  %351 = and i1 %350, %349
+  br i1 %351, label %352, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-332:                                              ; preds = %326
-  %333 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %334 = and i8 %333, 1
-  %335 = icmp eq i8 %334, 0
-  br i1 %335, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %336
+352:                                              ; preds = %346
+  %353 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %354 = and i8 %353, 1
+  %355 = icmp eq i8 %354, 0
+  br i1 %355, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %356
 
-336:                                              ; preds = %332
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %327) #37
+356:                                              ; preds = %352
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %347) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %336, %332, %326, %315
-  %337 = sext i32 %287 to i64
-  %338 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 3, i32 0, i32 1
-  %339 = load i64, i64* %338, align 8, !tbaa !67
-  %340 = urem i64 %337, %339
-  %341 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 3, i32 0, i32 0
-  %342 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %341, align 8, !tbaa !72
-  %343 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %342, i64 %340
-  %344 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %343, align 8, !tbaa !3
-  %345 = icmp eq %"struct.std::__detail::_Hash_node_base"* %344, null
-  br i1 %345, label %.loopexit16, label %346
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %356, %352, %346, %335
+  %357 = sext i32 %307 to i64
+  %358 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 3, i32 0, i32 1
+  %359 = load atomic i64, i64* %358 unordered, align 8, !tbaa !67
+  %360 = urem i64 %357, %359
+  %361 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 3, i32 0, i32 0
+  %362 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %361 unordered, align 8, !tbaa !72
+  %363 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %362, i64 %360
+  %364 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %363 unordered, align 8, !tbaa !3
+  %365 = icmp eq %"struct.std::__detail::_Hash_node_base"* %364, null
+  br i1 %365, label %.loopexit17, label %366
 
-346:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %347 = bitcast %"struct.std::__detail::_Hash_node_base"* %344 to %"struct.std::__detail::_Hash_node.203"**
-  %348 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %347, align 8, !tbaa !73
-  %349 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %348, i64 0, i32 0, i32 1
-  %350 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %349 to i32*
-  %351 = load i32, i32* %350, align 4, !tbaa !74
-  %352 = icmp eq i32 %351, %287
-  br i1 %352, label %369, label %.preheader15
+366:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %367 = bitcast %"struct.std::__detail::_Hash_node_base"* %364 to %"struct.std::__detail::_Hash_node.203"**
+  %368 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %367 unordered, align 8, !tbaa !73
+  %369 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %368, i64 0, i32 0, i32 1
+  %370 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %369 to i32*
+  %371 = load atomic i32, i32* %370 unordered, align 4, !tbaa !66
+  %372 = icmp eq i32 %371, %307
+  br i1 %372, label %389, label %.preheader16
 
-353:                                              ; preds = %360
-  %354 = icmp eq i32 %363, %287
-  br i1 %354, label %367, label %.preheader15
+373:                                              ; preds = %380
+  %374 = icmp eq i32 %383, %307
+  br i1 %374, label %387, label %.preheader16
 
-.preheader15:                                     ; preds = %353, %346
-  %355 = phi %"struct.std::__detail::_Hash_node.203"* [ %359, %353 ], [ %348, %346 ]
-  %356 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %355, i64 0, i32 0, i32 0, i32 0
-  %357 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %356, align 8, !tbaa !73
-  %358 = icmp eq %"struct.std::__detail::_Hash_node_base"* %357, null
-  %359 = bitcast %"struct.std::__detail::_Hash_node_base"* %357 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %358, label %.loopexit16, label %360
+.preheader16:                                     ; preds = %373, %366
+  %375 = phi %"struct.std::__detail::_Hash_node.203"* [ %379, %373 ], [ %368, %366 ]
+  %376 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %375, i64 0, i32 0, i32 0, i32 0
+  %377 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %376 unordered, align 8, !tbaa !73
+  %378 = icmp eq %"struct.std::__detail::_Hash_node_base"* %377, null
+  %379 = bitcast %"struct.std::__detail::_Hash_node_base"* %377 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %378, label %.loopexit17, label %380
 
-360:                                              ; preds = %.preheader15
-  %361 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %357, i64 1
-  %362 = bitcast %"struct.std::__detail::_Hash_node_base"* %361 to i32*
-  %363 = load i32, i32* %362, align 4, !tbaa !74
-  %364 = sext i32 %363 to i64
-  %365 = urem i64 %364, %339
-  %366 = icmp eq i64 %365, %340
-  br i1 %366, label %353, label %.loopexit16
+380:                                              ; preds = %.preheader16
+  %381 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %377, i64 1
+  %382 = bitcast %"struct.std::__detail::_Hash_node_base"* %381 to i32*
+  %383 = load atomic i32, i32* %382 unordered, align 4, !tbaa !66
+  %384 = sext i32 %383 to i64
+  %385 = urem i64 %384, %359
+  %386 = icmp eq i64 %385, %360
+  br i1 %386, label %373, label %.loopexit17
 
-367:                                              ; preds = %353
-  %368 = icmp eq %"struct.std::__detail::_Hash_node.203"* %355, null
-  br i1 %368, label %.loopexit16, label %371
+387:                                              ; preds = %373
+  %388 = icmp eq %"struct.std::__detail::_Hash_node.203"* %375, null
+  br i1 %388, label %.loopexit17, label %391
 
-369:                                              ; preds = %346
-  %370 = icmp eq %"struct.std::__detail::_Hash_node.203"* %348, null
-  br i1 %370, label %.loopexit16, label %371
+389:                                              ; preds = %366
+  %390 = icmp eq %"struct.std::__detail::_Hash_node.203"* %368, null
+  br i1 %390, label %.loopexit17, label %391
 
-371:                                              ; preds = %369, %367
-  %372 = phi %"struct.std::__detail::_Hash_node.203"* [ %359, %367 ], [ %348, %369 ]
-  %373 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %372, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %374 = bitcast i8* %373 to %class.Worker**
-  %375 = load %class.Worker*, %class.Worker** %374, align 8, !tbaa !75
-  %376 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %377 = icmp eq i8* %376, null
-  br i1 %377, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %378
+391:                                              ; preds = %389, %387
+  %392 = phi %"struct.std::__detail::_Hash_node.203"* [ %379, %387 ], [ %368, %389 ]
+  %393 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %392, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %394 = bitcast i8* %393 to %class.Worker**
+  %395 = load atomic %class.Worker*, %class.Worker** %394 unordered, align 8, !tbaa !74
+  %396 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %397 = icmp eq i8* %396, null
+  br i1 %397, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %398
 
-378:                                              ; preds = %371
-  %379 = bitcast i8* %376 to %"class.(anonymous namespace)::Future"*
-  %380 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 6
-  %381 = load i32, i32* %380, align 4, !tbaa !93
-  %382 = add nsw i32 %381, 1
-  store i32 %382, i32* %380, align 4, !tbaa !93
-  %383 = bitcast i8* %376 to i32*
-  store i32 1, i32* %383, align 8, !tbaa !100
-  %384 = getelementptr inbounds i8, i8* %376, i64 4
-  %385 = bitcast i8* %384 to i32*
-  store i32 %381, i32* %385, align 4, !tbaa !102
-  %386 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %387 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %386, i64 328
-  %388 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %387 to i32*
-  %389 = atomicrmw xchg i32* %388, i32 1 seq_cst, align 4
-  %390 = getelementptr inbounds i8, i8* %376, i64 16
-  %391 = bitcast i8* %390 to %union.pthread_mutex_t*
-  %392 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %391, %"struct.std::atomic"* null) #37
-  %393 = getelementptr inbounds i8, i8* %376, i64 56
-  %394 = bitcast i8* %393 to %union.pthread_cond_t*
-  %395 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %394, %"struct.std::atomic"* null) #37
-  %396 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %386, null
-  br i1 %396, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %397
+398:                                              ; preds = %391
+  %399 = bitcast i8* %396 to %"class.(anonymous namespace)::Future"*
+  %400 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 6
+  %401 = load atomic i32, i32* %400 unordered, align 4, !tbaa !91
+  %402 = add nsw i32 %401, 1
+  store i32 %402, i32* %400, align 4, !tbaa !91
+  %403 = bitcast i8* %396 to i32*
+  store i32 1, i32* %403, align 8, !tbaa !98
+  %404 = getelementptr inbounds i8, i8* %396, i64 4
+  %405 = bitcast i8* %404 to i32*
+  store i32 %401, i32* %405, align 4, !tbaa !100
+  %406 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %407 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %406, i64 328
+  %408 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %407 to i32*
+  %409 = atomicrmw xchg i32* %408, i32 1 seq_cst, align 4
+  %410 = getelementptr inbounds i8, i8* %396, i64 16
+  %411 = bitcast i8* %410 to %union.pthread_mutex_t*
+  %412 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %411, %"struct.std::atomic"* null) #37
+  %413 = getelementptr inbounds i8, i8* %396, i64 56
+  %414 = bitcast i8* %413 to %union.pthread_cond_t*
+  %415 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %414, %"struct.std::atomic"* null) #37
+  %416 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %406, null
+  br i1 %416, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %417
 
-397:                                              ; preds = %378
-  %398 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %387 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %399 = atomicrmw xchg i32* %388, i32 %389 seq_cst, align 4
-  %400 = icmp eq i32 %399, 1
-  %401 = icmp eq i32 %389, 0
-  %402 = and i1 %401, %400
-  br i1 %402, label %403, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+417:                                              ; preds = %398
+  %418 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %407 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %419 = atomicrmw xchg i32* %408, i32 %409 seq_cst, align 4
+  %420 = icmp eq i32 %419, 1
+  %421 = icmp eq i32 %409, 0
+  %422 = and i1 %421, %420
+  br i1 %422, label %423, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-403:                                              ; preds = %397
-  %404 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %405 = and i8 %404, 1
-  %406 = icmp eq i8 %405, 0
-  br i1 %406, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %407
+423:                                              ; preds = %417
+  %424 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %425 = and i8 %424, 1
+  %426 = icmp eq i8 %425, 0
+  br i1 %426, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %427
 
-407:                                              ; preds = %403
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %398) #37
+427:                                              ; preds = %423
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %418) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %407, %403, %397, %378, %371
-  %408 = phi %"class.(anonymous namespace)::Future"* [ null, %371 ], [ %379, %378 ], [ %379, %407 ], [ %379, %403 ], [ %379, %397 ]
-  %409 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %408, i64 0, i32 1
-  %410 = load i32, i32* %409, align 4, !tbaa !102
-  %411 = sext i32 %410 to i64
-  %412 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 1
-  %413 = load i64, i64* %412, align 8, !tbaa !103
-  %414 = urem i64 %411, %413
-  %415 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 0
-  %416 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %415, align 8, !tbaa !104
-  %417 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %416, i64 %414
-  %418 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
-  %419 = icmp eq %"struct.std::__detail::_Hash_node_base"* %418, null
-  br i1 %419, label %.loopexit14, label %420
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %427, %423, %417, %398, %391
+  %428 = phi %"class.(anonymous namespace)::Future"* [ null, %391 ], [ %399, %398 ], [ %399, %427 ], [ %399, %423 ], [ %399, %417 ]
+  %429 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %428, i64 0, i32 1
+  %430 = load atomic i32, i32* %429 unordered, align 4, !tbaa !100
+  %431 = sext i32 %430 to i64
+  %432 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 1
+  %433 = load atomic i64, i64* %432 unordered, align 8, !tbaa !101
+  %434 = urem i64 %431, %433
+  %435 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 0
+  %436 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
+  %437 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %436, i64 %434
+  %438 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %437 unordered, align 8, !tbaa !3
+  %439 = icmp eq %"struct.std::__detail::_Hash_node_base"* %438, null
+  br i1 %439, label %.loopexit15, label %440
 
-420:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %421 = bitcast %"struct.std::__detail::_Hash_node_base"* %418 to %"struct.std::__detail::_Hash_node.203"**
-  %422 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %421, align 8, !tbaa !73
-  %423 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %422, i64 0, i32 0, i32 1
-  %424 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %423 to i32*
-  %425 = load i32, i32* %424, align 4, !tbaa !74
-  %426 = icmp eq i32 %410, %425
-  br i1 %426, label %443, label %.preheader13
+440:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %441 = bitcast %"struct.std::__detail::_Hash_node_base"* %438 to %"struct.std::__detail::_Hash_node.203"**
+  %442 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %441 unordered, align 8, !tbaa !73
+  %443 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %442, i64 0, i32 0, i32 1
+  %444 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %443 to i32*
+  %445 = load atomic i32, i32* %444 unordered, align 4, !tbaa !66
+  %446 = icmp eq i32 %430, %445
+  br i1 %446, label %463, label %.preheader14
 
-427:                                              ; preds = %434
-  %428 = icmp eq i32 %410, %437
-  br i1 %428, label %441, label %.preheader13
+447:                                              ; preds = %454
+  %448 = icmp eq i32 %430, %457
+  br i1 %448, label %461, label %.preheader14
 
-.preheader13:                                     ; preds = %427, %420
-  %429 = phi %"struct.std::__detail::_Hash_node.203"* [ %433, %427 ], [ %422, %420 ]
-  %430 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0, i32 0
-  %431 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %430, align 8, !tbaa !73
-  %432 = icmp eq %"struct.std::__detail::_Hash_node_base"* %431, null
-  %433 = bitcast %"struct.std::__detail::_Hash_node_base"* %431 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %432, label %.loopexit14, label %434
+.preheader14:                                     ; preds = %447, %440
+  %449 = phi %"struct.std::__detail::_Hash_node.203"* [ %453, %447 ], [ %442, %440 ]
+  %450 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %449, i64 0, i32 0, i32 0, i32 0
+  %451 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %450 unordered, align 8, !tbaa !73
+  %452 = icmp eq %"struct.std::__detail::_Hash_node_base"* %451, null
+  %453 = bitcast %"struct.std::__detail::_Hash_node_base"* %451 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %452, label %.loopexit15, label %454
 
-434:                                              ; preds = %.preheader13
-  %435 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %431, i64 1
-  %436 = bitcast %"struct.std::__detail::_Hash_node_base"* %435 to i32*
-  %437 = load i32, i32* %436, align 4, !tbaa !74
-  %438 = sext i32 %437 to i64
-  %439 = urem i64 %438, %413
-  %440 = icmp eq i64 %439, %414
-  br i1 %440, label %427, label %.loopexit14
+454:                                              ; preds = %.preheader14
+  %455 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %451, i64 1
+  %456 = bitcast %"struct.std::__detail::_Hash_node_base"* %455 to i32*
+  %457 = load atomic i32, i32* %456 unordered, align 4, !tbaa !66
+  %458 = sext i32 %457 to i64
+  %459 = urem i64 %458, %433
+  %460 = icmp eq i64 %459, %434
+  br i1 %460, label %447, label %.loopexit15
 
-441:                                              ; preds = %427
-  %442 = icmp eq %"struct.std::__detail::_Hash_node.203"* %429, null
-  br i1 %442, label %.loopexit14, label %552
+461:                                              ; preds = %447
+  %462 = icmp eq %"struct.std::__detail::_Hash_node.203"* %449, null
+  br i1 %462, label %.loopexit15, label %574
 
-443:                                              ; preds = %420
-  %444 = icmp eq %"struct.std::__detail::_Hash_node.203"* %422, null
-  br i1 %444, label %.loopexit14, label %552
+463:                                              ; preds = %440
+  %464 = icmp eq %"struct.std::__detail::_Hash_node.203"* %442, null
+  br i1 %464, label %.loopexit15, label %574
 
-.loopexit14:                                      ; preds = %443, %441, %434, %.preheader13, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %445 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %446 = getelementptr inbounds i8, i8* %445, i64 8
-  %447 = bitcast i8* %446 to i32*
-  store i32 %410, i32* %447, align 8, !tbaa !105
-  %448 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 4
-  %449 = load i64, i64* %412, align 8, !tbaa !103
-  %450 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 3
-  %451 = load i64, i64* %450, align 8, !tbaa !107
-  %452 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %448, i64 %449, i64 %451, i64 1)
-          to label %453 unwind label %559
+.loopexit15:                                      ; preds = %463, %461, %454, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %465 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %466 = bitcast i8* %465 to %"struct.std::__detail::_Hash_node_base"**
+  %467 = getelementptr inbounds i8, i8* %465, i64 8
+  %468 = bitcast i8* %467 to i32*
+  store i32 %430, i32* %468, align 8, !tbaa !103
+  %469 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 4
+  %470 = load atomic i64, i64* %432 unordered, align 8, !tbaa !101
+  %471 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 3
+  %472 = load atomic i64, i64* %471 unordered, align 8, !tbaa !105
+  %473 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %469, i64 %470, i64 %472, i64 1)
+          to label %474 unwind label %581
 
-453:                                              ; preds = %.loopexit14
-  %454 = extractvalue { i8, i64 } %452, 0
-  %455 = and i8 %454, 1
-  %456 = icmp eq i8 %455, 0
-  br i1 %456, label %457, label %459
+474:                                              ; preds = %.loopexit15
+  %475 = extractvalue { i8, i64 } %473, 0
+  %476 = and i8 %475, 1
+  %477 = icmp eq i8 %476, 0
+  br i1 %477, label %478, label %480
 
-457:                                              ; preds = %453
-  %458 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %415, align 8, !tbaa !104
-  br label %516
+478:                                              ; preds = %474
+  %479 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
+  br label %537
 
-459:                                              ; preds = %453
-  %460 = extractvalue { i8, i64 } %452, 1
-  %461 = icmp eq i64 %460, 1
-  br i1 %461, label %462, label %464, !prof !108, !misexpect !109
+480:                                              ; preds = %474
+  %481 = extractvalue { i8, i64 } %473, 1
+  %482 = icmp eq i64 %481, 1
+  br i1 %482, label %483, label %485, !prof !106, !misexpect !107
 
-462:                                              ; preds = %459
-  %463 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %463, align 8, !tbaa !110
-  br label %468
+483:                                              ; preds = %480
+  %484 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %484, align 8, !tbaa !108
+  br label %489
 
-464:                                              ; preds = %459
-  %465 = call noalias i8* @calloc(i64 %460, i64 8) #37
-  %466 = bitcast i8* %465 to %"struct.std::__detail::_Hash_node_base"**
-  %467 = shl i64 %460, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %465, i8 0, i64 %467, i1 false) #37
-  br label %468
+485:                                              ; preds = %480
+  %486 = call noalias i8* @calloc(i64 %481, i64 8) #37
+  %487 = bitcast i8* %486 to %"struct.std::__detail::_Hash_node_base"**
+  %488 = shl i64 %481, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %486, i8 0, i64 %488, i1 false) #37
+  br label %489
 
-468:                                              ; preds = %464, %462
-  %469 = phi %"struct.std::__detail::_Hash_node_base"** [ %463, %462 ], [ %466, %464 ]
-  %470 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 2
-  %471 = bitcast %"struct.std::__detail::_Hash_node_base"* %470 to %"struct.std::__detail::_Hash_node.203"**
-  %472 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %471, align 8, !tbaa !111
-  %473 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %470, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %473, align 8, !tbaa !111
-  %474 = icmp eq %"struct.std::__detail::_Hash_node.203"* %472, null
-  br i1 %474, label %.loopexit, label %475
+489:                                              ; preds = %485, %483
+  %490 = phi %"struct.std::__detail::_Hash_node_base"** [ %484, %483 ], [ %487, %485 ]
+  %491 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 2
+  %492 = bitcast %"struct.std::__detail::_Hash_node_base"* %491 to %"struct.std::__detail::_Hash_node.203"**
+  %493 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %492 unordered, align 8, !tbaa !109
+  %494 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %491, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %494, align 8, !tbaa !109
+  %495 = icmp eq %"struct.std::__detail::_Hash_node.203"* %493, null
+  br i1 %495, label %.loopexit, label %496
 
-475:                                              ; preds = %468
-  %476 = bitcast %"struct.std::__detail::_Hash_node_base"* %470 to i64*
-  br label %477
+496:                                              ; preds = %489
+  %497 = bitcast %"struct.std::__detail::_Hash_node_base"* %491 to i64*
+  br label %498
 
-477:                                              ; preds = %506, %475
-  %478 = phi %"struct.std::__detail::_Hash_node.203"* [ %472, %475 ], [ %481, %506 ]
-  %479 = phi i64 [ 0, %475 ], [ %507, %506 ]
-  %480 = bitcast %"struct.std::__detail::_Hash_node.203"* %478 to %"struct.std::__detail::_Hash_node.203"**
-  %481 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %480, align 8, !tbaa !73
-  %482 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %478, i64 0, i32 0, i32 1
-  %483 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %482 to i32*
-  %484 = load i32, i32* %483, align 4, !tbaa !74
-  %485 = sext i32 %484 to i64
-  %486 = urem i64 %485, %460
-  %487 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %469, i64 %486
-  %488 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %487, align 8, !tbaa !3
-  %489 = icmp eq %"struct.std::__detail::_Hash_node_base"* %488, null
-  br i1 %489, label %490, label %499
+498:                                              ; preds = %527, %496
+  %499 = phi %"struct.std::__detail::_Hash_node.203"* [ %493, %496 ], [ %502, %527 ]
+  %500 = phi i64 [ 0, %496 ], [ %528, %527 ]
+  %501 = bitcast %"struct.std::__detail::_Hash_node.203"* %499 to %"struct.std::__detail::_Hash_node.203"**
+  %502 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %501 unordered, align 8, !tbaa !73
+  %503 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 1
+  %504 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %503 to i32*
+  %505 = load atomic i32, i32* %504 unordered, align 4, !tbaa !66
+  %506 = sext i32 %505 to i64
+  %507 = urem i64 %506, %481
+  %508 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %490, i64 %507
+  %509 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %508 unordered, align 8, !tbaa !3
+  %510 = icmp eq %"struct.std::__detail::_Hash_node_base"* %509, null
+  br i1 %510, label %511, label %520
 
-490:                                              ; preds = %477
-  %491 = load i64, i64* %476, align 8, !tbaa !111
-  %492 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %478, i64 0, i32 0, i32 0
-  %493 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %478, i64 0, i32 0, i32 0, i32 0
-  %494 = bitcast %"struct.std::__detail::_Hash_node.203"* %478 to i64*
-  store i64 %491, i64* %494, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %492, %"struct.std::__detail::_Hash_node_base"** %473, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %470, %"struct.std::__detail::_Hash_node_base"** %487, align 8, !tbaa !3
-  %495 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %493, align 8, !tbaa !73
-  %496 = icmp eq %"struct.std::__detail::_Hash_node_base"* %495, null
-  br i1 %496, label %506, label %497
+511:                                              ; preds = %498
+  %512 = load atomic i64, i64* %497 unordered, align 8, !tbaa !109
+  %513 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 0
+  %514 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 0, i32 0
+  %515 = bitcast %"struct.std::__detail::_Hash_node.203"* %499 to i64*
+  store i64 %512, i64* %515, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %513, %"struct.std::__detail::_Hash_node_base"** %494, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %491, %"struct.std::__detail::_Hash_node_base"** %508, align 8, !tbaa !3
+  %516 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %514 unordered, align 8, !tbaa !73
+  %517 = icmp eq %"struct.std::__detail::_Hash_node_base"* %516, null
+  br i1 %517, label %527, label %518
 
-497:                                              ; preds = %490
-  %498 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %469, i64 %479
-  store %"struct.std::__detail::_Hash_node_base"* %492, %"struct.std::__detail::_Hash_node_base"** %498, align 8, !tbaa !3
-  br label %506
+518:                                              ; preds = %511
+  %519 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %490, i64 %500
+  store %"struct.std::__detail::_Hash_node_base"* %513, %"struct.std::__detail::_Hash_node_base"** %519, align 8, !tbaa !3
+  br label %527
 
-499:                                              ; preds = %477
-  %500 = bitcast %"struct.std::__detail::_Hash_node_base"* %488 to i64*
-  %501 = load i64, i64* %500, align 8, !tbaa !73
-  %502 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %478, i64 0, i32 0, i32 0
-  %503 = bitcast %"struct.std::__detail::_Hash_node.203"* %478 to i64*
-  store i64 %501, i64* %503, align 8, !tbaa !73
-  %504 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %487, align 8, !tbaa !3
-  %505 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %504, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %502, %"struct.std::__detail::_Hash_node_base"** %505, align 8, !tbaa !73
-  br label %506
+520:                                              ; preds = %498
+  %521 = bitcast %"struct.std::__detail::_Hash_node_base"* %509 to i64*
+  %522 = load atomic i64, i64* %521 unordered, align 8, !tbaa !73
+  %523 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 0
+  %524 = bitcast %"struct.std::__detail::_Hash_node.203"* %499 to i64*
+  store i64 %522, i64* %524, align 8, !tbaa !73
+  %525 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %508 unordered, align 8, !tbaa !3
+  %526 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %525, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %523, %"struct.std::__detail::_Hash_node_base"** %526, align 8, !tbaa !73
+  br label %527
 
-506:                                              ; preds = %499, %497, %490
-  %507 = phi i64 [ %479, %499 ], [ %486, %490 ], [ %486, %497 ]
-  %508 = icmp eq %"struct.std::__detail::_Hash_node.203"* %481, null
-  br i1 %508, label %.loopexit, label %477
+527:                                              ; preds = %520, %518, %511
+  %528 = phi i64 [ %500, %520 ], [ %507, %511 ], [ %507, %518 ]
+  %529 = icmp eq %"struct.std::__detail::_Hash_node.203"* %502, null
+  br i1 %529, label %.loopexit, label %498
 
-.loopexit:                                        ; preds = %506, %468
-  %509 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %415, align 8, !tbaa !104
-  %510 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 5
-  %511 = icmp eq %"struct.std::__detail::_Hash_node_base"** %509, %510
-  br i1 %511, label %514, label %512
+.loopexit:                                        ; preds = %527, %489
+  %530 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
+  %531 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 5
+  %532 = icmp eq %"struct.std::__detail::_Hash_node_base"** %530, %531
+  br i1 %532, label %535, label %533
 
-512:                                              ; preds = %.loopexit
-  %513 = bitcast %"struct.std::__detail::_Hash_node_base"** %509 to i8*
-  call void @free(i8* %513) #37
-  br label %514
+533:                                              ; preds = %.loopexit
+  %534 = bitcast %"struct.std::__detail::_Hash_node_base"** %530 to i8*
+  call void @free(i8* %534) #37
+  br label %535
 
-514:                                              ; preds = %512, %.loopexit
-  store i64 %460, i64* %412, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %469, %"struct.std::__detail::_Hash_node_base"*** %415, align 8, !tbaa !104
-  %515 = urem i64 %411, %460
-  br label %516
+535:                                              ; preds = %533, %.loopexit
+  store i64 %481, i64* %432, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %490, %"struct.std::__detail::_Hash_node_base"*** %435, align 8, !tbaa !102
+  %536 = urem i64 %431, %481
+  br label %537
 
-516:                                              ; preds = %514, %457
-  %517 = phi %"struct.std::__detail::_Hash_node_base"** [ %458, %457 ], [ %469, %514 ]
-  %518 = phi i64 [ %414, %457 ], [ %515, %514 ]
-  %519 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %517, i64 %518
-  %520 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %519, align 8, !tbaa !3
-  %521 = icmp eq %"struct.std::__detail::_Hash_node_base"* %520, null
-  br i1 %521, label %528, label %522
+537:                                              ; preds = %535, %478
+  %538 = phi %"struct.std::__detail::_Hash_node_base"** [ %479, %478 ], [ %490, %535 ]
+  %539 = phi i64 [ %434, %478 ], [ %536, %535 ]
+  %540 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %538, i64 %539
+  %541 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %540 unordered, align 8, !tbaa !3
+  %542 = icmp eq %"struct.std::__detail::_Hash_node_base"* %541, null
+  br i1 %542, label %549, label %543
 
-522:                                              ; preds = %516
-  %523 = bitcast %"struct.std::__detail::_Hash_node_base"* %520 to i64*
-  %524 = load i64, i64* %523, align 8, !tbaa !73
-  %525 = bitcast i8* %445 to i64*
-  store i64 %524, i64* %525, align 8, !tbaa !73
-  %526 = bitcast %"struct.std::__detail::_Hash_node_base"** %519 to i8***
-  %527 = load i8**, i8*** %526, align 8, !tbaa !3
-  store i8* %445, i8** %527, align 8, !tbaa !73
-  br label %548
+543:                                              ; preds = %537
+  %544 = bitcast %"struct.std::__detail::_Hash_node_base"* %541 to i64*
+  %545 = load atomic i64, i64* %544 unordered, align 8, !tbaa !73
+  %546 = bitcast i8* %465 to i64*
+  store i64 %545, i64* %546, align 8, !tbaa !73
+  %547 = bitcast %"struct.std::__detail::_Hash_node_base"** %540 to i8***
+  %548 = load atomic i8**, i8*** %547 unordered, align 8, !tbaa !3
+  store i8* %465, i8** %548, align 8, !tbaa !73
+  br label %570
 
-528:                                              ; preds = %516
-  %529 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %318, i64 0, i32 2, i32 0, i32 2
-  %530 = bitcast %"struct.std::__detail::_Hash_node_base"* %529 to i64*
-  %531 = load i64, i64* %530, align 8, !tbaa !111
-  %532 = bitcast i8* %445 to i64*
-  store i64 %531, i64* %532, align 8, !tbaa !73
-  %533 = bitcast %"struct.std::__detail::_Hash_node_base"* %529 to i8**
-  store i8* %445, i8** %533, align 8, !tbaa !111
-  %534 = icmp eq i64 %531, 0
-  br i1 %534, label %545, label %535
+549:                                              ; preds = %537
+  %550 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 2
+  %551 = bitcast %"struct.std::__detail::_Hash_node_base"* %550 to i64*
+  %552 = load atomic i64, i64* %551 unordered, align 8, !tbaa !109
+  %553 = bitcast i8* %465 to i64*
+  store i64 %552, i64* %553, align 8, !tbaa !73
+  %554 = bitcast %"struct.std::__detail::_Hash_node_base"* %550 to i8**
+  store i8* %465, i8** %554, align 8, !tbaa !109
+  %555 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %466 unordered, align 8, !tbaa !73
+  %556 = icmp eq %"struct.std::__detail::_Hash_node_base"* %555, null
+  br i1 %556, label %567, label %557
 
-535:                                              ; preds = %528
-  %.cast.i.i.i.i = inttoptr i64 %531 to %"struct.std::__detail::_Hash_node_base"*
-  %536 = load i64, i64* %412, align 8, !tbaa !103
-  %537 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %538 = bitcast %"struct.std::__detail::_Hash_node_base"* %537 to i32*
-  %539 = load i32, i32* %538, align 4, !tbaa !74
-  %540 = sext i32 %539 to i64
-  %541 = urem i64 %540, %536
-  %542 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %517, i64 %541
-  %543 = bitcast %"struct.std::__detail::_Hash_node_base"** %542 to i8**
-  store i8* %445, i8** %543, align 8, !tbaa !3
-  %544 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %415, align 8, !tbaa !104
-  br label %545
+557:                                              ; preds = %549
+  %558 = load atomic i64, i64* %432 unordered, align 8, !tbaa !101
+  %559 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %555, i64 1
+  %560 = bitcast %"struct.std::__detail::_Hash_node_base"* %559 to i32*
+  %561 = load atomic i32, i32* %560 unordered, align 4, !tbaa !66
+  %562 = sext i32 %561 to i64
+  %563 = urem i64 %562, %558
+  %564 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %538, i64 %563
+  %565 = bitcast %"struct.std::__detail::_Hash_node_base"** %564 to i8**
+  store i8* %465, i8** %565, align 8, !tbaa !3
+  %566 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
+  br label %567
 
-545:                                              ; preds = %535, %528
-  %546 = phi %"struct.std::__detail::_Hash_node_base"** [ %517, %528 ], [ %544, %535 ]
-  %547 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %546, i64 %518
-  store %"struct.std::__detail::_Hash_node_base"* %529, %"struct.std::__detail::_Hash_node_base"** %547, align 8, !tbaa !3
-  br label %548
+567:                                              ; preds = %557, %549
+  %568 = phi %"struct.std::__detail::_Hash_node_base"** [ %538, %549 ], [ %566, %557 ]
+  %569 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %568, i64 %539
+  store %"struct.std::__detail::_Hash_node_base"* %550, %"struct.std::__detail::_Hash_node_base"** %569, align 8, !tbaa !3
+  br label %570
 
-548:                                              ; preds = %545, %522
-  %549 = load i64, i64* %450, align 8, !tbaa !107
-  %550 = add i64 %549, 1
-  store i64 %550, i64* %450, align 8, !tbaa !107
-  %551 = bitcast i8* %446 to %"struct.std::pair.50"*
-  br label %556
+570:                                              ; preds = %567, %543
+  %571 = load atomic i64, i64* %471 unordered, align 8, !tbaa !105
+  %572 = add i64 %571, 1
+  store i64 %572, i64* %471, align 8, !tbaa !105
+  %573 = bitcast i8* %467 to %"struct.std::pair.50"*
+  br label %578
 
-552:                                              ; preds = %443, %441
-  %553 = phi %"struct.std::__detail::_Hash_node.203"* [ %422, %443 ], [ %433, %441 ]
-  %554 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %553, i64 0, i32 0, i32 1
-  %555 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %554 to %"struct.std::pair.50"*
-  br label %556
+574:                                              ; preds = %463, %461
+  %575 = phi %"struct.std::__detail::_Hash_node.203"* [ %442, %463 ], [ %453, %461 ]
+  %576 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %575, i64 0, i32 0, i32 1
+  %577 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %576 to %"struct.std::pair.50"*
+  br label %578
 
-556:                                              ; preds = %552, %548
-  %557 = phi %"struct.std::pair.50"* [ %555, %552 ], [ %551, %548 ]
-  %558 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %557, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %408, %"class.(anonymous namespace)::Future"** %558, align 8, !tbaa !3
-  store i32 2, i32* %262, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumCharArrayWorkers$lambda$1#static(kotlin.CharArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %263, align 8, !tbaa.struct !112
-  store i8* %317, i8** %264, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %408, %"class.(anonymous namespace)::Future"** %265, align 8, !tbaa.struct !112
-  store i32 %310, i32* %266, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %375, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
-  br label %.loopexit16
+578:                                              ; preds = %574, %570
+  %579 = phi %"struct.std::pair.50"* [ %577, %574 ], [ %573, %570 ]
+  %580 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %579, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %428, %"class.(anonymous namespace)::Future"** %580, align 8, !tbaa !3
+  store i32 2, i32* %282, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumCharArrayWorkers$lambda$1#static(kotlin.CharArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %283, align 8, !tbaa.struct !110
+  store i8* %337, i8** %284, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %428, %"class.(anonymous namespace)::Future"** %285, align 8, !tbaa.struct !110
+  store i32 %330, i32* %286, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %395, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+  br label %.loopexit17
 
-559:                                              ; preds = %.loopexit14
-  %560 = landingpad { i8*, i32 }
+581:                                              ; preds = %.loopexit15
+  %582 = landingpad { i8*, i32 }
           cleanup
-  %561 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %562 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %561, i64 328
-  %563 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %562 to i32*
-  %564 = atomicrmw xchg i32* %563, i32 1 seq_cst, align 4
-  %565 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %319) #37
-  %566 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %561, null
-  br i1 %566, label %.body.i.i.i, label %585
+  %583 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %584 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %583, i64 328
+  %585 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %584 to i32*
+  %586 = atomicrmw xchg i32* %585, i32 1 seq_cst, align 4
+  %587 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %339) #37
+  %588 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %583, null
+  br i1 %588, label %.body.i.i.i, label %607
 
-.loopexit16:                                      ; preds = %556, %369, %367, %360, %.preheader15, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %567 = phi %"class.(anonymous namespace)::Future"* [ %408, %556 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %367 ], [ null, %369 ], [ null, %.preheader15 ], [ null, %360 ]
-  %568 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %569 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %568, i64 328
-  %570 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %569 to i32*
-  %571 = atomicrmw xchg i32* %570, i32 1 seq_cst, align 4
-  %572 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %319) #37
-  %573 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %568, null
-  br i1 %573, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %574
+.loopexit17:                                      ; preds = %578, %389, %387, %380, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %589 = phi %"class.(anonymous namespace)::Future"* [ %428, %578 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %387 ], [ null, %389 ], [ null, %.preheader16 ], [ null, %380 ]
+  %590 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %591 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590, i64 328
+  %592 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %591 to i32*
+  %593 = atomicrmw xchg i32* %592, i32 1 seq_cst, align 4
+  %594 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %339) #37
+  %595 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590, null
+  br i1 %595, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %596
 
-574:                                              ; preds = %.loopexit16
-  %575 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %569 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %576 = atomicrmw xchg i32* %570, i32 %571 seq_cst, align 4
-  %577 = icmp eq i32 %576, 1
-  %578 = icmp eq i32 %571, 0
-  %579 = and i1 %578, %577
-  br i1 %579, label %580, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+596:                                              ; preds = %.loopexit17
+  %597 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %591 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %598 = atomicrmw xchg i32* %592, i32 %593 seq_cst, align 4
+  %599 = icmp eq i32 %598, 1
+  %600 = icmp eq i32 %593, 0
+  %601 = and i1 %600, %599
+  br i1 %601, label %602, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-580:                                              ; preds = %574
-  %581 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %582 = and i8 %581, 1
-  %583 = icmp eq i8 %582, 0
-  br i1 %583, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %584
+602:                                              ; preds = %596
+  %603 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %604 = and i8 %603, 1
+  %605 = icmp eq i8 %604, 0
+  br i1 %605, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %606
 
-584:                                              ; preds = %580
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %575) #37
+606:                                              ; preds = %602
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %597) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-585:                                              ; preds = %559
-  %586 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %562 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %587 = atomicrmw xchg i32* %563, i32 %564 seq_cst, align 4
-  %588 = icmp eq i32 %587, 1
-  %589 = icmp eq i32 %564, 0
-  %590 = and i1 %589, %588
-  br i1 %590, label %591, label %.body.i.i.i
+607:                                              ; preds = %581
+  %608 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %584 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %609 = atomicrmw xchg i32* %585, i32 %586 seq_cst, align 4
+  %610 = icmp eq i32 %609, 1
+  %611 = icmp eq i32 %586, 0
+  %612 = and i1 %611, %610
+  br i1 %612, label %613, label %.body.i.i.i
 
-591:                                              ; preds = %585
-  %592 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %593 = and i8 %592, 1
-  %594 = icmp eq i8 %593, 0
-  br i1 %594, label %.body.i.i.i, label %595
+613:                                              ; preds = %607
+  %614 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %615 = and i8 %614, 1
+  %616 = icmp eq i8 %615, 0
+  br i1 %616, label %.body.i.i.i, label %617
 
-595:                                              ; preds = %591
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %586) #37
+617:                                              ; preds = %613
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %608) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %584, %580, %574, %.loopexit16
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %261)
-  %596 = icmp eq %"class.(anonymous namespace)::Future"* %567, null
-  br i1 %596, label %597, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %606, %602, %596, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %281)
+  %618 = icmp eq %"class.(anonymous namespace)::Future"* %589, null
+  br i1 %618, label %619, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-597:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+619:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %598 unwind label %601
+          to label %620 unwind label %623
 
-598:                                              ; preds = %597
+620:                                              ; preds = %619
   unreachable
 
-599:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %600 = landingpad { i8*, i32 }
+621:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %622 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-601:                                              ; preds = %597
-  %602 = landingpad { i8*, i32 }
+623:                                              ; preds = %619
+  %624 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %601, %599, %595, %591, %585, %559
-  %603 = phi { i8*, i32 } [ %600, %599 ], [ %602, %601 ], [ %560, %585 ], [ %560, %591 ], [ %560, %595 ], [ %560, %559 ]
-  %604 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %605 = load i64, i64* %258, align 8, !tbaa !9
-  %606 = bitcast %"class.kotlin::mm::ShadowStack"* %604 to i64*
-  store i64 %605, i64* %606, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %255) #37
-  resume { i8*, i32 } %603
+.body.i.i.i:                                      ; preds = %623, %621, %617, %613, %607, %581
+  %625 = phi { i8*, i32 } [ %622, %621 ], [ %624, %623 ], [ %582, %607 ], [ %582, %613 ], [ %582, %617 ], [ %582, %581 ]
+  %626 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %627 = load atomic i64, i64* %278 unordered, align 8, !tbaa !9
+  %628 = bitcast %"class.kotlin::mm::ShadowStack"* %626 to i64*
+  store i64 %627, i64* %628, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %275) #37
+  resume { i8*, i32 } %625
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %607 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %567, i64 0, i32 1
-  %608 = load i32, i32* %607, align 4, !tbaa !102
-  %609 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %610 = load i64, i64* %258, align 8, !tbaa !9
-  %611 = bitcast %"class.kotlin::mm::ShadowStack"* %609 to i64*
-  store i64 %610, i64* %611, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %255) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %135)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %135, i8 0, i32 32, i1 immarg false) #49
-  %612 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %613 = bitcast %"class.kotlin::mm::ShadowStack"* %612 to i64*
-  %614 = load i64, i64* %613, align 8, !tbaa !7
-  store i64 %614, i64* %139, align 8, !tbaa !9
-  %615 = bitcast %"class.kotlin::mm::ShadowStack"* %612 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %615, align 8, !tbaa !7
-  store i32 0, i32* %141, align 8, !tbaa !12
-  store i32 4, i32* %142, align 4, !tbaa !13
-  %616 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %617 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %616 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %618 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %617, align 8, !tbaa !3
-  %619 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %618, i64 0, i32 2, i32 1
-  %620 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %619, i64 24) #37
-  %621 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %620, i64 1
-  %622 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %620, i64 2
-  %623 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622 to %struct.TypeInfo**
-  %624 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621 to i64*
-  store i64 0, i64* %624, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %623, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %143, align 8, !tbaa !3
-  %625 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %620, i64 3
-  %626 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %625 to i32*
-  store i32 %608, i32* %626, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %267, align 8, !tbaa !3
-  %627 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %628 = load i64, i64* %139, align 8, !tbaa !9
-  %629 = bitcast %"class.kotlin::mm::ShadowStack"* %627 to i64*
-  store i64 %628, i64* %629, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %135)
-  %630 = load i32, i32* %250, align 8, !tbaa !18
-  %631 = zext i32 %630 to i64
-  %632 = icmp ult i64 %indvars.iv48, %631
-  br i1 %632, label %Kotlin_Array_set.exit.i, label %633
+  %629 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %589, i64 0, i32 1
+  %630 = load atomic i32, i32* %629 unordered, align 4, !tbaa !100
+  %631 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %632 = load atomic i64, i64* %278 unordered, align 8, !tbaa !9
+  %633 = bitcast %"class.kotlin::mm::ShadowStack"* %631 to i64*
+  store i64 %632, i64* %633, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %275) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %153)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %153, i8 0, i32 32, i1 immarg false) #49
+  %634 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %635 = bitcast %"class.kotlin::mm::ShadowStack"* %634 to i64*
+  %636 = load atomic i64, i64* %635 unordered, align 8, !tbaa !7
+  store i64 %636, i64* %157, align 8, !tbaa !9
+  %637 = bitcast %"class.kotlin::mm::ShadowStack"* %634 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %637, align 8, !tbaa !7
+  store i32 0, i32* %159, align 8, !tbaa !12
+  store i32 4, i32* %160, align 4, !tbaa !13
+  %638 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %639 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %638 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %640 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %639 unordered, align 8, !tbaa !3
+  %641 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %640, i64 0, i32 2, i32 1
+  %642 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %641, i64 24) #37
+  %643 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642, i64 1
+  %644 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642, i64 2
+  %645 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644 to %struct.TypeInfo**
+  %646 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to i64*
+  store i64 0, i64* %646, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %645, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %161, align 8, !tbaa !3
+  %647 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642, i64 3
+  %648 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %647 to i32*
+  store i32 %630, i32* %648, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %287, align 8, !tbaa !3
+  %649 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %650 = load atomic i64, i64* %157 unordered, align 8, !tbaa !9
+  %651 = bitcast %"class.kotlin::mm::ShadowStack"* %649 to i64*
+  store i64 %650, i64* %651, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %153)
+  %652 = load atomic i32, i32* %270 unordered, align 8, !tbaa !18
+  %653 = zext i32 %652 to i64
+  %654 = icmp ult i64 %indvars.iv49, %653
+  br i1 %654, label %Kotlin_Array_set.exit.i, label %655
 
-633:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+655:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %634 = load atomic volatile i64, i64* %268 monotonic, align 8
-  %635 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %269, i64 %indvars.iv48
-  %636 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %635, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %622, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %636, align 8, !tbaa !3
-  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
+  %656 = load atomic volatile i64, i64* %288 monotonic, align 8
+  %657 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 %indvars.iv49
+  %658 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %657, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %658, align 8, !tbaa !3
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
-  %637 = load i32, i32* %250, align 8, !tbaa !18
-  %638 = icmp sgt i32 %637, 0
-  %smax = select i1 %638, i32 %637, i32 0
+  %659 = load atomic i32, i32* %270 unordered, align 8, !tbaa !18
+  %660 = icmp sgt i32 %659, 0
+  %smax = select i1 %660, i32 %659, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %639 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %640 = and i8 %639, 1
-  %641 = icmp eq i8 %640, 0
-  br i1 %641, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %642
+  %661 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %662 = and i8 %661, 1
+  %663 = icmp eq i8 %662, 0
+  br i1 %663, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %664
 
-642:                                              ; preds = %while_loop18.i
+664:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %642, %while_loop18.i
-  %643 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %269, i64 %indvars.iv
-  %644 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to %struct.ObjHeader**
-  %645 = load %struct.ObjHeader*, %struct.ObjHeader** %644, align 8, !tbaa !3
-  store %struct.ObjHeader* %645, %struct.ObjHeader** %209, align 8, !tbaa !3
-  %646 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %645, i64 1
-  %647 = bitcast %struct.ObjHeader* %646 to i32*
-  %648 = load i32, i32* %647, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %664, %while_loop18.i
+  %665 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 %indvars.iv
+  %666 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %665 to %struct.ObjHeader**
+  %667 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %666 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %667, %struct.ObjHeader** %228, align 8, !tbaa !3
+  %668 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %667, i64 1
+  %669 = bitcast %struct.ObjHeader* %668 to i32*
+  %670 = load atomic i32, i32* %669 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %135)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %135, i8 0, i32 32, i1 immarg false) #49
-  %649 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %650 = bitcast %"class.kotlin::mm::ShadowStack"* %649 to i64*
-  %651 = load i64, i64* %650, align 8, !tbaa !7
-  store i64 %651, i64* %139, align 8, !tbaa !9
-  %652 = bitcast %"class.kotlin::mm::ShadowStack"* %649 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i11, %struct.ObjHeader*** %652, align 8, !tbaa !7
-  store i32 0, i32* %141, align 8, !tbaa !12
-  store i32 4, i32* %142, align 4, !tbaa !13
-  %653 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %654 = icmp eq i32 %653, 2
-  br i1 %654, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %153)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %153, i8 0, i32 32, i1 immarg false) #49
+  %671 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %672 = bitcast %"class.kotlin::mm::ShadowStack"* %671 to i64*
+  %673 = load atomic i64, i64* %672 unordered, align 8, !tbaa !7
+  store i64 %673, i64* %157, align 8, !tbaa !9
+  %674 = bitcast %"class.kotlin::mm::ShadowStack"* %671 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %674, align 8, !tbaa !7
+  store i32 0, i32* %159, align 8, !tbaa !12
+  store i32 4, i32* %160, align 4, !tbaa !13
+  %675 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %676 = icmp eq i32 %675, 2
+  br i1 %676, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %655 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %656 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %655, %struct.ObjHeader** nonnull %136)
-  store %struct.ObjHeader* %656, %struct.ObjHeader** %136, align 8, !tbaa !3
-  %657 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %658 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %657, i64 0, i32 0
-  %659 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %660 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %659, i64 328
-  %661 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %660 to i32*
-  %662 = atomicrmw xchg i32* %661, i32 1 seq_cst, align 4
-  %663 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %658) #37
-  %664 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %659, null
-  br i1 %664, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %665
+  %677 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %678 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %677, %struct.ObjHeader** nonnull %154)
+  store %struct.ObjHeader* %678, %struct.ObjHeader** %154, align 8, !tbaa !3
+  %679 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %680 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %679, i64 0, i32 0
+  %681 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %682 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %681, i64 328
+  %683 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %682 to i32*
+  %684 = atomicrmw xchg i32* %683, i32 1 seq_cst, align 4
+  %685 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %680) #37
+  %686 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %681, null
+  br i1 %686, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %687
 
-665:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %666 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %660 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %667 = atomicrmw xchg i32* %661, i32 %662 seq_cst, align 4
-  %668 = icmp eq i32 %667, 1
-  %669 = icmp eq i32 %662, 0
-  %670 = and i1 %669, %668
-  br i1 %670, label %671, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+687:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %688 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %682 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %689 = atomicrmw xchg i32* %683, i32 %684 seq_cst, align 4
+  %690 = icmp eq i32 %689, 1
+  %691 = icmp eq i32 %684, 0
+  %692 = and i1 %691, %690
+  br i1 %692, label %693, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-671:                                              ; preds = %665
-  %672 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %673 = and i8 %672, 1
-  %674 = icmp eq i8 %673, 0
-  br i1 %674, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %675
+693:                                              ; preds = %687
+  %694 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %695 = and i8 %694, 1
+  %696 = icmp eq i8 %695, 0
+  br i1 %696, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %697
 
-675:                                              ; preds = %671
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %666) #37
+697:                                              ; preds = %693
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %688) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %675, %671, %665, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %676 = sext i32 %648 to i64
-  %677 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %657, i64 0, i32 2, i32 0, i32 1
-  %678 = load i64, i64* %677, align 8, !tbaa !103
-  %679 = urem i64 %676, %678
-  %680 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %657, i64 0, i32 2, i32 0, i32 0
-  %681 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %680, align 8, !tbaa !104
-  %682 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %681, i64 %679
-  %683 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %682, align 8, !tbaa !3
-  %684 = icmp eq %"struct.std::__detail::_Hash_node_base"* %683, null
-  br i1 %684, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %685
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %697, %693, %687, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %698 = sext i32 %670 to i64
+  %699 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %679, i64 0, i32 2, i32 0, i32 1
+  %700 = load atomic i64, i64* %699 unordered, align 8, !tbaa !101
+  %701 = urem i64 %698, %700
+  %702 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %679, i64 0, i32 2, i32 0, i32 0
+  %703 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %702 unordered, align 8, !tbaa !102
+  %704 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %703, i64 %701
+  %705 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %704 unordered, align 8, !tbaa !3
+  %706 = icmp eq %"struct.std::__detail::_Hash_node_base"* %705, null
+  br i1 %706, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %707
 
-685:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %686 = bitcast %"struct.std::__detail::_Hash_node_base"* %683 to %"struct.std::__detail::_Hash_node.203"**
-  %687 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %686, align 8, !tbaa !73
-  %688 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %687, i64 0, i32 0, i32 1
-  %689 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %688 to i32*
-  %690 = load i32, i32* %689, align 4, !tbaa !74
-  %691 = icmp eq i32 %690, %648
-  br i1 %691, label %708, label %.preheader
+707:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %708 = bitcast %"struct.std::__detail::_Hash_node_base"* %705 to %"struct.std::__detail::_Hash_node.203"**
+  %709 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %708 unordered, align 8, !tbaa !73
+  %710 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %709, i64 0, i32 0, i32 1
+  %711 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %710 to i32*
+  %712 = load atomic i32, i32* %711 unordered, align 4, !tbaa !66
+  %713 = icmp eq i32 %712, %670
+  br i1 %713, label %730, label %.preheader
 
-692:                                              ; preds = %699
-  %693 = icmp eq i32 %702, %648
-  br i1 %693, label %706, label %.preheader
+714:                                              ; preds = %721
+  %715 = icmp eq i32 %724, %670
+  br i1 %715, label %728, label %.preheader
 
-.preheader:                                       ; preds = %692, %685
-  %694 = phi %"struct.std::__detail::_Hash_node.203"* [ %698, %692 ], [ %687, %685 ]
-  %695 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %694, i64 0, i32 0, i32 0, i32 0
-  %696 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %695, align 8, !tbaa !73
-  %697 = icmp eq %"struct.std::__detail::_Hash_node_base"* %696, null
-  %698 = bitcast %"struct.std::__detail::_Hash_node_base"* %696 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %697, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %699
+.preheader:                                       ; preds = %714, %707
+  %716 = phi %"struct.std::__detail::_Hash_node.203"* [ %720, %714 ], [ %709, %707 ]
+  %717 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %716, i64 0, i32 0, i32 0, i32 0
+  %718 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %717 unordered, align 8, !tbaa !73
+  %719 = icmp eq %"struct.std::__detail::_Hash_node_base"* %718, null
+  %720 = bitcast %"struct.std::__detail::_Hash_node_base"* %718 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %719, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %721
 
-699:                                              ; preds = %.preheader
-  %700 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %696, i64 1
-  %701 = bitcast %"struct.std::__detail::_Hash_node_base"* %700 to i32*
-  %702 = load i32, i32* %701, align 4, !tbaa !74
-  %703 = sext i32 %702 to i64
-  %704 = urem i64 %703, %678
-  %705 = icmp eq i64 %704, %679
-  br i1 %705, label %692, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+721:                                              ; preds = %.preheader
+  %722 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %718, i64 1
+  %723 = bitcast %"struct.std::__detail::_Hash_node_base"* %722 to i32*
+  %724 = load atomic i32, i32* %723 unordered, align 4, !tbaa !66
+  %725 = sext i32 %724 to i64
+  %726 = urem i64 %725, %700
+  %727 = icmp eq i64 %726, %701
+  br i1 %727, label %714, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-706:                                              ; preds = %692
-  %707 = icmp eq %"struct.std::__detail::_Hash_node.203"* %694, null
-  br i1 %707, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %710
+728:                                              ; preds = %714
+  %729 = icmp eq %"struct.std::__detail::_Hash_node.203"* %716, null
+  br i1 %729, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %732
 
-708:                                              ; preds = %685
-  %709 = icmp eq %"struct.std::__detail::_Hash_node.203"* %687, null
-  br i1 %709, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %710
+730:                                              ; preds = %707
+  %731 = icmp eq %"struct.std::__detail::_Hash_node.203"* %709, null
+  br i1 %731, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %732
 
-710:                                              ; preds = %708, %706
-  %711 = phi %"struct.std::__detail::_Hash_node.203"* [ %698, %706 ], [ %687, %708 ]
-  %712 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %711, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %713 = bitcast i8* %712 to %"class.(anonymous namespace)::Future"**
-  %714 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %713, align 8, !tbaa !114
-  %715 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %714, i64 0, i32 3
-  %716 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %717 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %716, i64 328
-  %718 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717 to i32*
-  %719 = atomicrmw xchg i32* %718, i32 1 seq_cst, align 4
-  %720 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %715) #37
-  %721 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %716, null
-  br i1 %721, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %722
+732:                                              ; preds = %730, %728
+  %733 = phi %"struct.std::__detail::_Hash_node.203"* [ %720, %728 ], [ %709, %730 ]
+  %734 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %733, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %735 = bitcast i8* %734 to %"class.(anonymous namespace)::Future"**
+  %736 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %735 unordered, align 8, !tbaa !112
+  %737 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %736, i64 0, i32 3
+  %738 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %739 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738, i64 328
+  %740 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %739 to i32*
+  %741 = atomicrmw xchg i32* %740, i32 1 seq_cst, align 4
+  %742 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %737) #37
+  %743 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738, null
+  br i1 %743, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %744
 
-722:                                              ; preds = %710
-  %723 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %724 = atomicrmw xchg i32* %718, i32 %719 seq_cst, align 4
-  %725 = icmp eq i32 %724, 1
-  %726 = icmp eq i32 %719, 0
-  %727 = and i1 %726, %725
-  br i1 %727, label %728, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+744:                                              ; preds = %732
+  %745 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %739 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %746 = atomicrmw xchg i32* %740, i32 %741 seq_cst, align 4
+  %747 = icmp eq i32 %746, 1
+  %748 = icmp eq i32 %741, 0
+  %749 = and i1 %748, %747
+  br i1 %749, label %750, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-728:                                              ; preds = %722
-  %729 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %730 = and i8 %729, 1
-  %731 = icmp eq i8 %730, 0
-  br i1 %731, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %732
+750:                                              ; preds = %744
+  %751 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %752 = and i8 %751, 1
+  %753 = icmp eq i8 %752, 0
+  br i1 %753, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %754
 
-732:                                              ; preds = %728
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %723) #37
+754:                                              ; preds = %750
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %745) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %732, %728, %722, %710
-  %733 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %714, i64 0, i32 0
-  %734 = load i32, i32* %733, align 8, !tbaa !100
-  %735 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %736 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735, i64 328
-  %737 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736 to i32*
-  %738 = atomicrmw xchg i32* %737, i32 1 seq_cst, align 4
-  %739 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %715) #37
-  %740 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735, null
-  br i1 %740, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %741
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %754, %750, %744, %732
+  %755 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %736, i64 0, i32 0
+  %756 = load atomic i32, i32* %755 unordered, align 8, !tbaa !98
+  %757 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %758 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %757, i64 328
+  %759 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %758 to i32*
+  %760 = atomicrmw xchg i32* %759, i32 1 seq_cst, align 4
+  %761 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %737) #37
+  %762 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %757, null
+  br i1 %762, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %763
 
-741:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %742 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %743 = atomicrmw xchg i32* %737, i32 %738 seq_cst, align 4
-  %744 = icmp eq i32 %743, 1
-  %745 = icmp eq i32 %738, 0
-  %746 = and i1 %745, %744
-  br i1 %746, label %747, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+763:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %764 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %758 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %765 = atomicrmw xchg i32* %759, i32 %760 seq_cst, align 4
+  %766 = icmp eq i32 %765, 1
+  %767 = icmp eq i32 %760, 0
+  %768 = and i1 %767, %766
+  br i1 %768, label %769, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-747:                                              ; preds = %741
-  %748 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %749 = and i8 %748, 1
-  %750 = icmp eq i8 %749, 0
-  br i1 %750, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %751
+769:                                              ; preds = %763
+  %770 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %771 = and i8 %770, 1
+  %772 = icmp eq i8 %771, 0
+  br i1 %772, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %773
 
-751:                                              ; preds = %747
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %742) #37
+773:                                              ; preds = %769
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %764) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %751, %747, %741, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %708, %706, %699, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %752 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %706 ], [ 0, %708 ], [ %734, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %734, %751 ], [ %734, %747 ], [ %734, %741 ], [ 0, %.preheader ], [ 0, %699 ]
-  %753 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %754 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %753, i64 328
-  %755 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %754 to i32*
-  %756 = atomicrmw xchg i32* %755, i32 1 seq_cst, align 4
-  %757 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %658) #37
-  %758 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %753, null
-  br i1 %758, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %759
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %773, %769, %763, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %730, %728, %721, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %774 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %728 ], [ 0, %730 ], [ %756, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %756, %773 ], [ %756, %769 ], [ %756, %763 ], [ 0, %.preheader ], [ 0, %721 ]
+  %775 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %776 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %775, i64 328
+  %777 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %776 to i32*
+  %778 = atomicrmw xchg i32* %777, i32 1 seq_cst, align 4
+  %779 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %680) #37
+  %780 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %775, null
+  br i1 %780, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %781
 
-759:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %760 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %754 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %761 = atomicrmw xchg i32* %755, i32 %756 seq_cst, align 4
-  %762 = icmp eq i32 %761, 1
-  %763 = icmp eq i32 %756, 0
-  %764 = and i1 %763, %762
-  br i1 %764, label %765, label %Kotlin_Worker_stateOfFuture.exit.i.i
+781:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %782 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %776 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %783 = atomicrmw xchg i32* %777, i32 %778 seq_cst, align 4
+  %784 = icmp eq i32 %783, 1
+  %785 = icmp eq i32 %778, 0
+  %786 = and i1 %785, %784
+  br i1 %786, label %787, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-765:                                              ; preds = %759
-  %766 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %767 = and i8 %766, 1
-  %768 = icmp eq i8 %767, 0
-  br i1 %768, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %769
+787:                                              ; preds = %781
+  %788 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %789 = and i8 %788, 1
+  %790 = icmp eq i8 %789, 0
+  br i1 %790, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %791
 
-769:                                              ; preds = %765
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %760) #37
+791:                                              ; preds = %787
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %782) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %769, %765, %759, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %770 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %656, i64 1
-  %771 = bitcast %struct.ObjHeader* %770 to i32*
-  %772 = load i32, i32* %771, align 8, !tbaa !18
-  %773 = icmp ugt i32 %772, %752
-  br i1 %773, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %774
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %791, %787, %781, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %792 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %678, i64 1
+  %793 = bitcast %struct.ObjHeader* %792 to i32*
+  %794 = load atomic i32, i32* %793 unordered, align 8, !tbaa !18
+  %795 = icmp ugt i32 %794, %774
+  br i1 %795, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %796
 
-774:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+796:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %775 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %656, i64 2
-  %776 = sext i32 %752 to i64
-  %777 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %775, i64 %776
-  %778 = bitcast %struct.ObjHeader* %777 to %struct.ObjHeader**
-  %779 = load %struct.ObjHeader*, %struct.ObjHeader** %778, align 8, !tbaa !3
-  store %struct.ObjHeader* %779, %struct.ObjHeader** %210, align 8, !tbaa !3
-  %780 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %781 = load i64, i64* %139, align 8, !tbaa !9
-  %782 = bitcast %"class.kotlin::mm::ShadowStack"* %780 to i64*
-  store i64 %781, i64* %782, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %135)
-  %783 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %779, i64 2
-  %784 = bitcast %struct.ObjHeader* %783 to i32*
-  %785 = load i32, i32* %784, align 4
-  switch i32 %785, label %when_next27.i [
+  %797 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %678, i64 2
+  %798 = sext i32 %774 to i64
+  %799 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %797, i64 %798
+  %800 = bitcast %struct.ObjHeader* %799 to %struct.ObjHeader**
+  %801 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %800 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %801, %struct.ObjHeader** %229, align 8, !tbaa !3
+  %802 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %803 = load atomic i64, i64* %157 unordered, align 8, !tbaa !9
+  %804 = bitcast %"class.kotlin::mm::ShadowStack"* %802 to i64*
+  store i64 %803, i64* %804, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %153)
+  %805 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %801, i64 2
+  %806 = bitcast %struct.ObjHeader* %805 to i32*
+  %807 = load atomic i32, i32* %806 unordered, align 4
+  switch i32 %807, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1310,71 +1344,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %648, %struct.ObjHeader** nonnull %211)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %670, %struct.ObjHeader** nonnull %230)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %786 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %787 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %788 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %787 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %789 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %788, align 8, !tbaa !3
-  %790 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %789, i64 0, i32 2, i32 1
-  %791 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %790, i64 56) #37
-  %792 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %791, i64 1
-  %793 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %791, i64 2
-  %794 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793 to %struct.ObjHeader*
-  %795 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793 to %struct.TypeInfo**
-  %796 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792 to i64*
-  store i64 0, i64* %796, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %795, align 8, !tbaa !14
-  %797 = bitcast %struct.ObjHeader** %786 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %797, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %794, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %794) #50
+  %808 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %809 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %810 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %809 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %811 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %810 unordered, align 8, !tbaa !3
+  %812 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %811, i64 0, i32 2, i32 1
+  %813 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %812, i64 56) #37
+  %814 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %813, i64 1
+  %815 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %813, i64 2
+  %816 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815 to %struct.ObjHeader*
+  %817 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815 to %struct.TypeInfo**
+  %818 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814 to i64*
+  store i64 0, i64* %818, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %817, align 8, !tbaa !14
+  %819 = bitcast %struct.ObjHeader** %808 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %819, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %816, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %816) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %798 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %799 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %648, %struct.ObjHeader** nonnull %799)
-  %800 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %801 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %800 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %802 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %801, align 8, !tbaa !3
-  %803 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %802, i64 0, i32 2, i32 1
-  %804 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %803, i64 56) #37
-  %805 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %804, i64 1
-  %806 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %804, i64 2
-  %807 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %806 to %struct.ObjHeader*
-  %808 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %806 to %struct.TypeInfo**
-  %809 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %805 to i64*
-  store i64 0, i64* %809, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %808, align 8, !tbaa !14
-  %810 = bitcast %struct.ObjHeader** %798 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %806, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %810, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %807, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %807) #50
+  %820 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %821 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %670, %struct.ObjHeader** nonnull %821)
+  %822 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %823 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %822 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %824 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %823 unordered, align 8, !tbaa !3
+  %825 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %824, i64 0, i32 2, i32 1
+  %826 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %825, i64 56) #37
+  %827 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %826, i64 1
+  %828 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %826, i64 2
+  %829 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828 to %struct.ObjHeader*
+  %830 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828 to %struct.TypeInfo**
+  %831 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827 to i64*
+  store i64 0, i64* %831, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %830, align 8, !tbaa !14
+  %832 = bitcast %struct.ObjHeader** %820 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %832, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %829, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %829) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %811 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %812 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %648, %struct.ObjHeader** nonnull %812)
-  %813 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %814 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %813 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %815 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %814, align 8, !tbaa !3
-  %816 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %815, i64 0, i32 2, i32 1
-  %817 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %816, i64 56) #37
-  %818 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %817, i64 1
-  %819 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %817, i64 2
-  %820 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %819 to %struct.ObjHeader*
-  %821 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %819 to %struct.TypeInfo**
-  %822 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %818 to i64*
-  store i64 0, i64* %822, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %821, align 8, !tbaa !14
-  %823 = bitcast %struct.ObjHeader** %811 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %819, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %823, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %820, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %820) #50
+  %833 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %834 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %670, %struct.ObjHeader** nonnull %834)
+  %835 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %836 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %835 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %837 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %836 unordered, align 8, !tbaa !3
+  %838 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %837, i64 0, i32 2, i32 1
+  %839 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %838, i64 56) #37
+  %840 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %839, i64 1
+  %841 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %839, i64 2
+  %842 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841 to %struct.ObjHeader*
+  %843 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841 to %struct.TypeInfo**
+  %844 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840 to i64*
+  store i64 0, i64* %844, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %843, align 8, !tbaa !14
+  %845 = bitcast %struct.ObjHeader** %833 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %845, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %842, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %842) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1387,10 +1421,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %824 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %825 = bitcast %"class.kotlin::mm::ShadowStack"* %824 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %206)
-  %826 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %826, i64* %825, align 8, !tbaa !7
+  %846 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %847 = bitcast %"class.kotlin::mm::ShadowStack"* %846 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %225)
+  %848 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %848, i64* %847, align 8, !tbaa !7
   ret void
 }
