--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.updateSharedStructCounter100Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:47:55.430642558 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.updateSharedStructCounter100Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 02:59:47.540419518 +0200
@@ -17,11 +17,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %8, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %8, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %11 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %11 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %12 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
   %13 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
   %14 = bitcast %"class.kotlin::mm::ShadowStack"* %12 to i64*
-  %15 = load i64, i64* %14, align 8, !tbaa !7
+  %15 = load atomic i64, i64* %14 unordered, align 8, !tbaa !7
   %16 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 1
   %17 = bitcast %struct.ObjHeader** %16 to i64*
   store i64 %15, i64* %17, align 8, !tbaa !9
@@ -47,1124 +47,1158 @@
   call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %26)
   %.sub.i2 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 0
   call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(56) %26, i8 0, i32 56, i1 immarg false) #49
-  %27 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 4
-  %28 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 5
-  %29 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 6
-  %30 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %31 = bitcast [7 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
-  %32 = bitcast %"class.kotlin::mm::ShadowStack"* %30 to i64*
-  %33 = load i64, i64* %32, align 8, !tbaa !7
-  %34 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 1
-  %35 = bitcast %struct.ObjHeader** %34 to i64*
-  store i64 %33, i64* %35, align 8, !tbaa !9
-  %36 = bitcast %"class.kotlin::mm::ShadowStack"* %30 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %36, align 8, !tbaa !7
-  %37 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 2
-  %38 = bitcast %struct.ObjHeader** %37 to i32*
-  store i32 0, i32* %38, align 8, !tbaa !12
-  %39 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %31, i64 0, i32 3
-  store i32 7, i32* %39, align 4, !tbaa !13
-  %40 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
-  %41 = bitcast %struct.ObjHeader* %40 to i32*
-  store i32 100, i32* %41, align 8
+  %27 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %28 = bitcast [7 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
+  %29 = bitcast %"class.kotlin::mm::ShadowStack"* %27 to i64*
+  %30 = load atomic i64, i64* %29 unordered, align 8, !tbaa !7
+  %31 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 1
+  %32 = bitcast %struct.ObjHeader** %31 to i64*
+  store i64 %30, i64* %32, align 8, !tbaa !9
+  %33 = bitcast %"class.kotlin::mm::ShadowStack"* %27 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %33, align 8, !tbaa !7
+  %34 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 2
+  %35 = bitcast %struct.ObjHeader** %34 to i32*
+  store i32 0, i32* %35, align 8, !tbaa !12
+  %36 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %28, i64 0, i32 3
+  store i32 7, i32* %36, align 4, !tbaa !13
+  %37 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
+  %38 = bitcast %struct.ObjHeader* %37 to i32*
+  store i32 100, i32* %38, align 8
+  %39 = load atomic i32, i32* %38 unordered, align 8
+  %40 = icmp slt i32 %39, 0
+  br i1 %40, label %when_case.i3, label %AllocArrayInstance.exit.i5
+
+when_case.i3:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %41 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 3
   %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
   %43 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %42 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %44 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %43, align 8, !tbaa !3
+  %44 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %43 unordered, align 8, !tbaa !3
   %45 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %44, i64 0, i32 2, i32 1
-  %46 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %45, i64 824) #37
+  %46 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %45, i64 56) #37
   %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 1
   %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 2
-  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.TypeInfo**
-  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %49, align 8, !tbaa !16
-  %51 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 3
-  %52 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51 to i32*
-  store i32 100, i32* %52, align 8, !tbaa !18
-  %53 = bitcast %struct.ObjHeader** %27 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %53, align 8, !tbaa !3
-  %54 = bitcast %struct.ObjHeader** %28 to i64*
-  %55 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  %.sub.i.i7 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %56 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %57 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %58 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %59 = bitcast %struct.ObjHeader** %58 to i64*
-  %60 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %61 = bitcast %struct.ObjHeader** %60 to i32*
-  %62 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %57, i64 0, i32 3
-  %63 = bitcast %struct.ObjHeader** %56 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %64 = bitcast %struct.ObjHeader** %29 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i64*
-  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 4
-  br label %loop_check.i10
+  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.ObjHeader*
+  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.TypeInfo**
+  %51 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i64*
+  store i64 0, i64* %51, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %50, align 8, !tbaa !14
+  %52 = bitcast %struct.ObjHeader** %41 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %52, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %49, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @116 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %49) #50
+  unreachable
 
-while_loop.i4:                                    ; preds = %loop_check.i10
-  %67 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %68 = and i8 %67, 1
-  %69 = icmp eq i8 %68, 0
-  br i1 %69, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %70
+AllocArrayInstance.exit.i5:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %53 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 6
+  %54 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 5
+  %55 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 4
+  %56 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %57 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %56 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %58 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %57 unordered, align 8, !tbaa !3
+  %59 = zext i32 %39 to i64
+  %60 = shl nuw nsw i64 %59, 3
+  %61 = add nuw nsw i64 %60, 31
+  %62 = and i64 %61, 68719476728
+  %63 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %58, i64 0, i32 2, i32 1
+  %64 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %63, i64 %62) #37
+  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 1
+  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 2
+  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to %struct.TypeInfo**
+  %68 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %67, align 8, !tbaa !16
+  %69 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 3
+  %70 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69 to i32*
+  store i32 %39, i32* %70, align 8, !tbaa !18
+  %71 = bitcast %struct.ObjHeader** %55 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %71, align 8, !tbaa !3
+  %72 = bitcast %struct.ObjHeader** %54 to i64*
+  %73 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %.sub.i.i9 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
+  %74 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %75 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %76 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %77 = bitcast %struct.ObjHeader** %76 to i64*
+  %78 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %79 = bitcast %struct.ObjHeader** %78 to i32*
+  %80 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %75, i64 0, i32 3
+  %81 = bitcast %struct.ObjHeader** %74 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %82 = bitcast %struct.ObjHeader** %53 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to i64*
+  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 4
+  %wide.trip.count55 = zext i32 %39 to i64
+  br label %loop_check.i12
 
-70:                                               ; preds = %while_loop.i4
+while_loop.i6:                                    ; preds = %loop_check.i12
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
-  %71 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %71, i64* %54, align 8, !tbaa !3
-  %72 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %73 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %72, i32 0)
-  %74 = icmp eq %class.Worker* %73, null
-  br i1 %74, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %75
+Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %88, %while_loop.i6
+  %89 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %89, i64* %72, align 8, !tbaa !3
+  %90 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %91 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %90, i32 0)
+  %92 = icmp eq %class.Worker* %91, null
+  br i1 %92, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %93
 
-75:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %76 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %77 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %76, i64 328
-  %78 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %77 to i32*
-  %79 = atomicrmw xchg i32* %78, i32 1 seq_cst, align 4
-  %80 = getelementptr inbounds %class.Worker, %class.Worker* %73, i64 0, i32 9
-  %81 = bitcast %class.Worker* %73 to i8*
-  %82 = call i32 @pthread_create(i64* nonnull %80, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %81) #37
-  %83 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %76, null
-  br i1 %83, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6, label %84
+93:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i7
+  %94 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %95 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %94, i64 328
+  %96 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %95 to i32*
+  %97 = atomicrmw xchg i32* %96, i32 1 seq_cst, align 4
+  %98 = getelementptr inbounds %class.Worker, %class.Worker* %91, i64 0, i32 9
+  %99 = bitcast %class.Worker* %91 to i8*
+  %100 = call i32 @pthread_create(i64* nonnull %98, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %99) #37
+  %101 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %94, null
+  br i1 %101, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8, label %102
 
-84:                                               ; preds = %75
-  %85 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %77 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %86 = atomicrmw xchg i32* %78, i32 %79 seq_cst, align 4
-  %87 = icmp eq i32 %86, 1
-  %88 = icmp eq i32 %79, 0
-  %89 = and i1 %88, %87
-  br i1 %89, label %90, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6
+102:                                              ; preds = %93
+  %103 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %95 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %104 = atomicrmw xchg i32* %96, i32 %97 seq_cst, align 4
+  %105 = icmp eq i32 %104, 1
+  %106 = icmp eq i32 %97, 0
+  %107 = and i1 %106, %105
+  br i1 %107, label %108, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8
 
-90:                                               ; preds = %84
-  %91 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %92 = and i8 %91, 1
-  %93 = icmp eq i8 %92, 0
-  br i1 %93, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6, label %94
+108:                                              ; preds = %102
+  %109 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %110 = and i8 %109, 1
+  %111 = icmp eq i8 %110, 0
+  br i1 %111, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8, label %112
 
-94:                                               ; preds = %90
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %85) #37
-  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6
+112:                                              ; preds = %108
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %103) #37
+  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6: ; preds = %94, %90, %84, %75
-  %95 = getelementptr inbounds %class.Worker, %class.Worker* %73, i64 0, i32 0
-  %96 = load i32, i32* %95, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8: ; preds = %112, %108, %102, %93
+  %113 = getelementptr inbounds %class.Worker, %class.Worker* %91, i64 0, i32 0
+  %114 = load atomic i32, i32* %113 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
-"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6, %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %97 = phi i32 [ %96, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %55, i8 0, i32 32, i1 immarg false) #49
-  %98 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %99 = bitcast %"class.kotlin::mm::ShadowStack"* %98 to i64*
-  %100 = load i64, i64* %99, align 8, !tbaa !7
-  store i64 %100, i64* %59, align 8, !tbaa !9
-  %101 = bitcast %"class.kotlin::mm::ShadowStack"* %98 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i7, %struct.ObjHeader*** %101, align 8, !tbaa !7
-  store i32 0, i32* %61, align 8, !tbaa !12
-  store i32 4, i32* %62, align 4, !tbaa !13
-  %102 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %103 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %102 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %104 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %103, align 8, !tbaa !3
-  %105 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %104, i64 0, i32 2, i32 1
-  %106 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %105, i64 24) #37
-  %107 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 1
-  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 2
-  %109 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to %struct.TypeInfo**
-  %110 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107 to i64*
-  store i64 0, i64* %110, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %109, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %111 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 3
-  %112 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %111 to i32*
-  store i32 %97, i32* %112, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %64, align 8, !tbaa !3
-  %113 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %114 = load i64, i64* %59, align 8, !tbaa !9
-  %115 = bitcast %"class.kotlin::mm::ShadowStack"* %113 to i64*
-  store i64 %114, i64* %115, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55)
-  %116 = load i32, i32* %52, align 8, !tbaa !18
-  %117 = zext i32 %116 to i64
-  %118 = icmp ult i64 %indvars.iv51, %117
-  br i1 %118, label %Kotlin_Array_set.exit.i8, label %119
+"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8, %Kotlin_mm_safePointWhileLoopBody.exit.i7
+  %115 = phi i32 [ %114, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %73, i8 0, i32 32, i1 immarg false) #49
+  %116 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %117 = bitcast %"class.kotlin::mm::ShadowStack"* %116 to i64*
+  %118 = load atomic i64, i64* %117 unordered, align 8, !tbaa !7
+  store i64 %118, i64* %77, align 8, !tbaa !9
+  %119 = bitcast %"class.kotlin::mm::ShadowStack"* %116 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i9, %struct.ObjHeader*** %119, align 8, !tbaa !7
+  store i32 0, i32* %79, align 8, !tbaa !12
+  store i32 4, i32* %80, align 4, !tbaa !13
+  %120 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %121 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %120 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %122 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %121 unordered, align 8, !tbaa !3
+  %123 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %122, i64 0, i32 2, i32 1
+  %124 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %123, i64 24) #37
+  %125 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %124, i64 1
+  %126 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %124, i64 2
+  %127 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126 to %struct.TypeInfo**
+  %128 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125 to i64*
+  store i64 0, i64* %128, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %127, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
+  %129 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %124, i64 3
+  %130 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to i32*
+  store i32 %115, i32* %130, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %82, align 8, !tbaa !3
+  %131 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %132 = load atomic i64, i64* %77 unordered, align 8, !tbaa !9
+  %133 = bitcast %"class.kotlin::mm::ShadowStack"* %131 to i64*
+  store i64 %132, i64* %133, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73)
+  %134 = load atomic i32, i32* %70 unordered, align 8, !tbaa !18
+  %135 = zext i32 %134 to i64
+  %136 = icmp ult i64 %indvars.iv53, %135
+  br i1 %136, label %Kotlin_Array_set.exit.i10, label %137
 
-119:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+137:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit.i8:                         ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %120 = load atomic volatile i64, i64* %65 monotonic, align 8
-  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, i64 %indvars.iv51
-  %122 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %122, align 8, !tbaa !3
-  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
-  br label %loop_check.i10
+Kotlin_Array_set.exit.i10:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+  %138 = load atomic volatile i64, i64* %83 monotonic, align 8
+  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84, i64 %indvars.iv53
+  %140 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %140, align 8, !tbaa !3
+  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
+  br label %loop_check.i12
 
-loop_check.i10:                                   ; preds = %Kotlin_Array_set.exit.i8, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %Kotlin_Array_set.exit.i8 ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond53.not = icmp eq i64 %indvars.iv51, 100
-  br i1 %exitcond53.not, label %call_success, label %while_loop.i4
+loop_check.i12:                                   ; preds = %Kotlin_Array_set.exit.i10, %AllocArrayInstance.exit.i5
+  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i10 ], [ 0, %AllocArrayInstance.exit.i5 ]
+  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
+  br i1 %exitcond56.not, label %call_success, label %while_loop.i6
 
-call_success:                                     ; preds = %loop_check.i10
-  %123 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
-  %124 = bitcast %struct.ObjHeader* %123 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
-  %125 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %126 = load i64, i64* %35, align 8, !tbaa !3
+call_success:                                     ; preds = %loop_check.i12
+  %141 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
+  %142 = bitcast %struct.ObjHeader* %141 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %142, align 8, !tbaa !3
+  %143 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %144 = load atomic i64, i64* %32 unordered, align 8, !tbaa !9
+  %145 = bitcast %"class.kotlin::mm::ShadowStack"* %143 to i64*
+  store i64 %144, i64* %145, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %26)
-  %127 = bitcast [18 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %127)
+  %146 = bitcast [18 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %146)
   %.sub.i = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(144) %127, i8 0, i32 144, i1 immarg false) #49
-  %128 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %129 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %130 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %131 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %132 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %133 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %134 = bitcast [18 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %135 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %136 = bitcast %struct.ObjHeader** %135 to i64*
-  store i64 %126, i64* %136, align 8, !tbaa !9
-  %137 = bitcast %"class.kotlin::mm::ShadowStack"* %125 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %137, align 8, !tbaa !7
-  %138 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %139 = bitcast %struct.ObjHeader** %138 to i32*
-  store i32 0, i32* %139, align 8, !tbaa !12
-  %140 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %134, i64 0, i32 3
-  store i32 18, i32* %140, align 4, !tbaa !13
-  %141 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %142 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %141 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %143 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %142, align 8, !tbaa !3
-  %144 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %143, i64 0, i32 2, i32 1
-  %145 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %144, i64 24) #37
-  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 1
-  %147 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 2
-  %148 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to %struct.TypeInfo**
-  %149 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to i64*
-  store i64 0, i64* %149, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.Counter#internal", i64 0, i32 0), %struct.TypeInfo** %148, align 8, !tbaa !14
-  %150 = bitcast %struct.ObjHeader** %128 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %150, align 8, !tbaa !3
-  %151 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 3
-  %152 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %151 to i64*
-  store i64 0, i64* %152, align 8
-  %153 = load i32, i32* %41, align 8
-  %154 = icmp slt i32 %153, 0
-  br i1 %154, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(144) %146, i8 0, i32 144, i1 immarg false) #49
+  %147 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %148 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %149 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %150 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %151 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %152 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %153 = bitcast [18 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %154 = load atomic i64, i64* %145 unordered, align 8, !tbaa !7
+  %155 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %156 = bitcast %struct.ObjHeader** %155 to i64*
+  store i64 %154, i64* %156, align 8, !tbaa !9
+  %157 = bitcast %"class.kotlin::mm::ShadowStack"* %143 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %157, align 8, !tbaa !7
+  %158 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %159 = bitcast %struct.ObjHeader** %158 to i32*
+  store i32 0, i32* %159, align 8, !tbaa !12
+  %160 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %153, i64 0, i32 3
+  store i32 18, i32* %160, align 4, !tbaa !13
+  %161 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %162 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %161 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %163 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %162 unordered, align 8, !tbaa !3
+  %164 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %163, i64 0, i32 2, i32 1
+  %165 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %164, i64 24) #37
+  %166 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 1
+  %167 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 2
+  %168 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167 to %struct.TypeInfo**
+  %169 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166 to i64*
+  store i64 0, i64* %169, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.Counter#internal", i64 0, i32 0), %struct.TypeInfo** %168, align 8, !tbaa !14
+  %170 = bitcast %struct.ObjHeader** %147 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %170, align 8, !tbaa !3
+  %171 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 3
+  %172 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %171 to i64*
+  store i64 0, i64* %172, align 8
+  %173 = load atomic i32, i32* %38 unordered, align 8
+  %174 = icmp slt i32 %173, 0
+  br i1 %174, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %155 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %156 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %157 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %156 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %158 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %157, align 8, !tbaa !3
-  %159 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %158, i64 0, i32 2, i32 1
-  %160 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %159, i64 56) #37
-  %161 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 1
-  %162 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 2
-  %163 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to %struct.ObjHeader*
-  %164 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to %struct.TypeInfo**
-  %165 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %161 to i64*
-  store i64 0, i64* %165, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %164, align 8, !tbaa !14
-  %166 = bitcast %struct.ObjHeader** %155 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %166, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %163, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @116 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %163) #50
+  %175 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %176 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %177 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %176 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %178 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %177 unordered, align 8, !tbaa !3
+  %179 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %178, i64 0, i32 2, i32 1
+  %180 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %179, i64 56) #37
+  %181 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180, i64 1
+  %182 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180, i64 2
+  %183 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182 to %struct.ObjHeader*
+  %184 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182 to %struct.TypeInfo**
+  %185 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %181 to i64*
+  store i64 0, i64* %185, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %184, align 8, !tbaa !14
+  %186 = bitcast %struct.ObjHeader** %175 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %186, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %183, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @116 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %183) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %167 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %168 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %169 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %170 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %171 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %170 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %172 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %171, align 8, !tbaa !3
-  %173 = zext i32 %153 to i64
-  %174 = shl nuw nsw i64 %173, 3
-  %175 = add nuw nsw i64 %174, 31
-  %176 = and i64 %175, 68719476728
-  %177 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %172, i64 0, i32 2, i32 1
-  %178 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %177, i64 %176) #37
-  %179 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 1
-  %180 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 2
-  %181 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180 to %struct.TypeInfo**
-  %182 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %179 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %182, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %181, align 8, !tbaa !16
-  %183 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 3
-  %184 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %183 to i32*
-  store i32 %153, i32* %184, align 8, !tbaa !18
-  %185 = bitcast %struct.ObjHeader** %169 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %185, align 8, !tbaa !3
-  %186 = bitcast %struct.ObjHeader* %123 to %struct.ObjHeader**
-  %187 = bitcast %struct.ObjHeader** %168 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %188 = bitcast %class.ObjHolder* %3 to i8*
-  %189 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %190 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %191 = bitcast %struct.FrameOverlay.6** %190 to i64*
-  %192 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %193 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %194 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %195 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %196 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %197 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %198 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %199 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %200 = bitcast %struct.ObjHeader** %167 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %201 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180 to i64*
-  %202 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 4
-  %wide.trip.count49 = zext i32 %153 to i64
+  %187 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %188 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %189 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %190 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %191 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %190 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %192 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %191 unordered, align 8, !tbaa !3
+  %193 = zext i32 %173 to i64
+  %194 = shl nuw nsw i64 %193, 3
+  %195 = add nuw nsw i64 %194, 31
+  %196 = and i64 %195, 68719476728
+  %197 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %192, i64 0, i32 2, i32 1
+  %198 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %197, i64 %196) #37
+  %199 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 1
+  %200 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 2
+  %201 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200 to %struct.TypeInfo**
+  %202 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %199 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %202, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %201, align 8, !tbaa !16
+  %203 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 3
+  %204 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203 to i32*
+  store i32 %173, i32* %204, align 8, !tbaa !18
+  %205 = bitcast %struct.ObjHeader** %189 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %205, align 8, !tbaa !3
+  %206 = bitcast %struct.ObjHeader* %141 to %struct.ObjHeader**
+  %207 = bitcast %struct.ObjHeader** %188 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %208 = bitcast %class.ObjHolder* %3 to i8*
+  %209 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %210 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %211 = bitcast %struct.FrameOverlay.6** %210 to i64*
+  %212 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %213 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %214 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %215 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %216 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %217 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %218 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %219 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %220 = bitcast %struct.ObjHeader** %187 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %221 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200 to i64*
+  %222 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 4
+  %wide.trip.count51 = zext i32 %173 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %203 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %204 = and i8 %203, 1
-  %205 = icmp eq i8 %204, 0
-  br i1 %205, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %206
+  %223 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %224 = and i8 %223, 1
+  %225 = icmp eq i8 %224, 0
+  br i1 %225, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %226
 
-206:                                              ; preds = %while_loop.i
+226:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %206, %while_loop.i
-  %207 = load %struct.ObjHeader*, %struct.ObjHeader** %186, align 8
-  %208 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %207, i64 1
-  %209 = bitcast %struct.ObjHeader* %208 to i32*
-  %210 = load i32, i32* %209, align 8, !tbaa !18
-  %211 = zext i32 %210 to i64
-  %212 = icmp ult i64 %indvars.iv47, %211
-  br i1 %212, label %Kotlin_Array_get.exit.i, label %213
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %226, %while_loop.i
+  %227 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %206 unordered, align 8
+  %228 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %227, i64 1
+  %229 = bitcast %struct.ObjHeader* %228 to i32*
+  %230 = load atomic i32, i32* %229 unordered, align 8, !tbaa !18
+  %231 = zext i32 %230 to i64
+  %232 = icmp ult i64 %indvars.iv49, %231
+  br i1 %232, label %Kotlin_Array_get.exit.i, label %233
 
-213:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+233:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %214 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %207, i64 2
-  %215 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %214, i64 %indvars.iv47
-  %216 = bitcast %struct.ObjHeader* %215 to %struct.ObjHeader**
-  %217 = load %struct.ObjHeader*, %struct.ObjHeader** %216, align 8, !tbaa !3
-  store %struct.ObjHeader* %217, %struct.ObjHeader** %129, align 8, !tbaa !3
-  %218 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %217, i64 1
-  %219 = bitcast %struct.ObjHeader* %218 to i32*
-  %220 = load i32, i32* %219, align 4
-  %221 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %222 = icmp eq i32 %221, 2
-  br i1 %222, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %234 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %227, i64 2
+  %235 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %234, i64 %indvars.iv49
+  %236 = bitcast %struct.ObjHeader* %235 to %struct.ObjHeader**
+  %237 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %236 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %237, %struct.ObjHeader** %148, align 8, !tbaa !3
+  %238 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %237, i64 1
+  %239 = bitcast %struct.ObjHeader* %238 to i32*
+  %240 = load atomic i32, i32* %239 unordered, align 4
+  %241 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %242 = icmp eq i32 %241, 2
+  br i1 %242, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %223 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %224 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %223, i64 2
-  %225 = bitcast %struct.ObjHeader* %224 to %struct.ObjHeader**
-  %226 = load %struct.ObjHeader*, %struct.ObjHeader** %225, align 8, !tbaa !3
-  store %struct.ObjHeader* %226, %struct.ObjHeader** %130, align 8, !tbaa !3
-  %227 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %228 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %227 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %229 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %228, align 8, !tbaa !3
-  %230 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %229, i64 0, i32 2, i32 1
-  %231 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %230, i64 24) #37
-  %232 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %231, i64 1
-  %233 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %231, i64 2
-  %234 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to %struct.ObjHeader*
-  %235 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to %struct.TypeInfo**
-  %236 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %232 to i64*
-  store i64 0, i64* %236, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runUpdateSharedStructCounterWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %235, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %187, align 8, !tbaa !3
-  %237 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %231, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %237, align 8, !tbaa !3
-  %238 = bitcast %struct.ObjHeader* %226 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %239 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %238, i64 0, i32 3
-  %240 = load i32, i32* %239, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %188) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %189, align 8, !tbaa !61
-  %241 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %242 = bitcast %"class.kotlin::mm::ShadowStack"* %241 to i64*
-  %243 = load i64, i64* %242, align 8, !tbaa !7
-  store i64 %243, i64* %191, align 8, !tbaa !9
-  %244 = bitcast %"class.kotlin::mm::ShadowStack"* %241 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %244, align 8, !tbaa !7
-  store i32 0, i32* %192, align 8, !tbaa !12
-  store i32 4, i32* %193, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %234, %struct.ObjHeader** nonnull %189)
-          to label %245 unwind label %529
+  %243 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %244 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %243, i64 2
+  %245 = bitcast %struct.ObjHeader* %244 to %struct.ObjHeader**
+  %246 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %245 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %246, %struct.ObjHeader** %149, align 8, !tbaa !3
+  %247 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %248 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %247 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %249 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %248 unordered, align 8, !tbaa !3
+  %250 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %249, i64 0, i32 2, i32 1
+  %251 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %250, i64 24) #37
+  %252 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, i64 1
+  %253 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, i64 2
+  %254 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253 to %struct.ObjHeader*
+  %255 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253 to %struct.TypeInfo**
+  %256 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252 to i64*
+  store i64 0, i64* %256, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runUpdateSharedStructCounterWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %255, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %207, align 8, !tbaa !3
+  %257 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %257, align 8, !tbaa !3
+  %258 = bitcast %struct.ObjHeader* %246 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %259 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %258, i64 0, i32 3
+  %260 = load atomic i32, i32* %259 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %208) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %209, align 8, !tbaa !60
+  %261 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %262 = bitcast %"class.kotlin::mm::ShadowStack"* %261 to i64*
+  %263 = load atomic i64, i64* %262 unordered, align 8, !tbaa !7
+  store i64 %263, i64* %211, align 8, !tbaa !9
+  %264 = bitcast %"class.kotlin::mm::ShadowStack"* %261 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %264, align 8, !tbaa !7
+  store i32 0, i32* %212, align 8, !tbaa !12
+  store i32 4, i32* %213, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %254, %struct.ObjHeader** nonnull %209)
+          to label %265 unwind label %551
 
-245:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %246 = load %struct.ObjHeader*, %struct.ObjHeader** %189, align 8, !tbaa !61
-  %247 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %246) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %189, align 8, !tbaa !3
-  %248 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %194)
-  %249 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 0
-  %250 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %251 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %250, i64 328
-  %252 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %251 to i32*
-  %253 = atomicrmw xchg i32* %252, i32 1 seq_cst, align 4
-  %254 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %249) #37
-  %255 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %250, null
-  br i1 %255, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %256
+265:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %266 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %209 unordered, align 8, !tbaa !60
+  %267 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %266) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %209, align 8, !tbaa !3
+  %268 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %214)
+  %269 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 0
+  %270 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %271 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %270, i64 328
+  %272 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %271 to i32*
+  %273 = atomicrmw xchg i32* %272, i32 1 seq_cst, align 4
+  %274 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %269) #37
+  %275 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %270, null
+  br i1 %275, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %276
 
-256:                                              ; preds = %245
-  %257 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %251 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %258 = atomicrmw xchg i32* %252, i32 %253 seq_cst, align 4
-  %259 = icmp eq i32 %258, 1
-  %260 = icmp eq i32 %253, 0
-  %261 = and i1 %260, %259
-  br i1 %261, label %262, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+276:                                              ; preds = %265
+  %277 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %271 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %278 = atomicrmw xchg i32* %272, i32 %273 seq_cst, align 4
+  %279 = icmp eq i32 %278, 1
+  %280 = icmp eq i32 %273, 0
+  %281 = and i1 %280, %279
+  br i1 %281, label %282, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-262:                                              ; preds = %256
-  %263 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %264 = and i8 %263, 1
-  %265 = icmp eq i8 %264, 0
-  br i1 %265, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %266
+282:                                              ; preds = %276
+  %283 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %284 = and i8 %283, 1
+  %285 = icmp eq i8 %284, 0
+  br i1 %285, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %286
 
-266:                                              ; preds = %262
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %257) #37
+286:                                              ; preds = %282
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %277) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %266, %262, %256, %245
-  %267 = sext i32 %220 to i64
-  %268 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 3, i32 0, i32 1
-  %269 = load i64, i64* %268, align 8, !tbaa !67
-  %270 = urem i64 %267, %269
-  %271 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 3, i32 0, i32 0
-  %272 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %271, align 8, !tbaa !72
-  %273 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %272, i64 %270
-  %274 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %273, align 8, !tbaa !3
-  %275 = icmp eq %"struct.std::__detail::_Hash_node_base"* %274, null
-  br i1 %275, label %.loopexit15, label %276
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %286, %282, %276, %265
+  %287 = sext i32 %240 to i64
+  %288 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 3, i32 0, i32 1
+  %289 = load atomic i64, i64* %288 unordered, align 8, !tbaa !67
+  %290 = urem i64 %287, %289
+  %291 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 3, i32 0, i32 0
+  %292 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %291 unordered, align 8, !tbaa !72
+  %293 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %292, i64 %290
+  %294 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %293 unordered, align 8, !tbaa !3
+  %295 = icmp eq %"struct.std::__detail::_Hash_node_base"* %294, null
+  br i1 %295, label %.loopexit17, label %296
 
-276:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %277 = bitcast %"struct.std::__detail::_Hash_node_base"* %274 to %"struct.std::__detail::_Hash_node.203"**
-  %278 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %277, align 8, !tbaa !73
-  %279 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %278, i64 0, i32 0, i32 1
-  %280 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %279 to i32*
-  %281 = load i32, i32* %280, align 4, !tbaa !74
-  %282 = icmp eq i32 %281, %220
-  br i1 %282, label %299, label %.preheader14
+296:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %297 = bitcast %"struct.std::__detail::_Hash_node_base"* %294 to %"struct.std::__detail::_Hash_node.203"**
+  %298 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %297 unordered, align 8, !tbaa !73
+  %299 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %298, i64 0, i32 0, i32 1
+  %300 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %299 to i32*
+  %301 = load atomic i32, i32* %300 unordered, align 4, !tbaa !66
+  %302 = icmp eq i32 %301, %240
+  br i1 %302, label %319, label %.preheader16
 
-283:                                              ; preds = %290
-  %284 = icmp eq i32 %293, %220
-  br i1 %284, label %297, label %.preheader14
+303:                                              ; preds = %310
+  %304 = icmp eq i32 %313, %240
+  br i1 %304, label %317, label %.preheader16
 
-.preheader14:                                     ; preds = %283, %276
-  %285 = phi %"struct.std::__detail::_Hash_node.203"* [ %289, %283 ], [ %278, %276 ]
-  %286 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %285, i64 0, i32 0, i32 0, i32 0
-  %287 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %286, align 8, !tbaa !73
-  %288 = icmp eq %"struct.std::__detail::_Hash_node_base"* %287, null
-  %289 = bitcast %"struct.std::__detail::_Hash_node_base"* %287 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %288, label %.loopexit15, label %290
+.preheader16:                                     ; preds = %303, %296
+  %305 = phi %"struct.std::__detail::_Hash_node.203"* [ %309, %303 ], [ %298, %296 ]
+  %306 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %305, i64 0, i32 0, i32 0, i32 0
+  %307 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %306 unordered, align 8, !tbaa !73
+  %308 = icmp eq %"struct.std::__detail::_Hash_node_base"* %307, null
+  %309 = bitcast %"struct.std::__detail::_Hash_node_base"* %307 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %308, label %.loopexit17, label %310
 
-290:                                              ; preds = %.preheader14
-  %291 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %287, i64 1
-  %292 = bitcast %"struct.std::__detail::_Hash_node_base"* %291 to i32*
-  %293 = load i32, i32* %292, align 4, !tbaa !74
-  %294 = sext i32 %293 to i64
-  %295 = urem i64 %294, %269
-  %296 = icmp eq i64 %295, %270
-  br i1 %296, label %283, label %.loopexit15
+310:                                              ; preds = %.preheader16
+  %311 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %307, i64 1
+  %312 = bitcast %"struct.std::__detail::_Hash_node_base"* %311 to i32*
+  %313 = load atomic i32, i32* %312 unordered, align 4, !tbaa !66
+  %314 = sext i32 %313 to i64
+  %315 = urem i64 %314, %289
+  %316 = icmp eq i64 %315, %290
+  br i1 %316, label %303, label %.loopexit17
 
-297:                                              ; preds = %283
-  %298 = icmp eq %"struct.std::__detail::_Hash_node.203"* %285, null
-  br i1 %298, label %.loopexit15, label %301
+317:                                              ; preds = %303
+  %318 = icmp eq %"struct.std::__detail::_Hash_node.203"* %305, null
+  br i1 %318, label %.loopexit17, label %321
 
-299:                                              ; preds = %276
-  %300 = icmp eq %"struct.std::__detail::_Hash_node.203"* %278, null
-  br i1 %300, label %.loopexit15, label %301
+319:                                              ; preds = %296
+  %320 = icmp eq %"struct.std::__detail::_Hash_node.203"* %298, null
+  br i1 %320, label %.loopexit17, label %321
 
-301:                                              ; preds = %299, %297
-  %302 = phi %"struct.std::__detail::_Hash_node.203"* [ %289, %297 ], [ %278, %299 ]
-  %303 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %302, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %304 = bitcast i8* %303 to %class.Worker**
-  %305 = load %class.Worker*, %class.Worker** %304, align 8, !tbaa !75
-  %306 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %307 = icmp eq i8* %306, null
-  br i1 %307, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %308
+321:                                              ; preds = %319, %317
+  %322 = phi %"struct.std::__detail::_Hash_node.203"* [ %309, %317 ], [ %298, %319 ]
+  %323 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %322, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %324 = bitcast i8* %323 to %class.Worker**
+  %325 = load atomic %class.Worker*, %class.Worker** %324 unordered, align 8, !tbaa !74
+  %326 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %327 = icmp eq i8* %326, null
+  br i1 %327, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %328
 
-308:                                              ; preds = %301
-  %309 = bitcast i8* %306 to %"class.(anonymous namespace)::Future"*
-  %310 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 6
-  %311 = load i32, i32* %310, align 4, !tbaa !93
-  %312 = add nsw i32 %311, 1
-  store i32 %312, i32* %310, align 4, !tbaa !93
-  %313 = bitcast i8* %306 to i32*
-  store i32 1, i32* %313, align 8, !tbaa !100
-  %314 = getelementptr inbounds i8, i8* %306, i64 4
-  %315 = bitcast i8* %314 to i32*
-  store i32 %311, i32* %315, align 4, !tbaa !102
-  %316 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %317 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %316, i64 328
-  %318 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %317 to i32*
-  %319 = atomicrmw xchg i32* %318, i32 1 seq_cst, align 4
-  %320 = getelementptr inbounds i8, i8* %306, i64 16
-  %321 = bitcast i8* %320 to %union.pthread_mutex_t*
-  %322 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %321, %"struct.std::atomic"* null) #37
-  %323 = getelementptr inbounds i8, i8* %306, i64 56
-  %324 = bitcast i8* %323 to %union.pthread_cond_t*
-  %325 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %324, %"struct.std::atomic"* null) #37
-  %326 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %316, null
-  br i1 %326, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %327
+328:                                              ; preds = %321
+  %329 = bitcast i8* %326 to %"class.(anonymous namespace)::Future"*
+  %330 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 6
+  %331 = load atomic i32, i32* %330 unordered, align 4, !tbaa !91
+  %332 = add nsw i32 %331, 1
+  store i32 %332, i32* %330, align 4, !tbaa !91
+  %333 = bitcast i8* %326 to i32*
+  store i32 1, i32* %333, align 8, !tbaa !98
+  %334 = getelementptr inbounds i8, i8* %326, i64 4
+  %335 = bitcast i8* %334 to i32*
+  store i32 %331, i32* %335, align 4, !tbaa !100
+  %336 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %337 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %336, i64 328
+  %338 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %337 to i32*
+  %339 = atomicrmw xchg i32* %338, i32 1 seq_cst, align 4
+  %340 = getelementptr inbounds i8, i8* %326, i64 16
+  %341 = bitcast i8* %340 to %union.pthread_mutex_t*
+  %342 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %341, %"struct.std::atomic"* null) #37
+  %343 = getelementptr inbounds i8, i8* %326, i64 56
+  %344 = bitcast i8* %343 to %union.pthread_cond_t*
+  %345 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %344, %"struct.std::atomic"* null) #37
+  %346 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %336, null
+  br i1 %346, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %347
 
-327:                                              ; preds = %308
-  %328 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %317 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %329 = atomicrmw xchg i32* %318, i32 %319 seq_cst, align 4
-  %330 = icmp eq i32 %329, 1
-  %331 = icmp eq i32 %319, 0
-  %332 = and i1 %331, %330
-  br i1 %332, label %333, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+347:                                              ; preds = %328
+  %348 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %337 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %349 = atomicrmw xchg i32* %338, i32 %339 seq_cst, align 4
+  %350 = icmp eq i32 %349, 1
+  %351 = icmp eq i32 %339, 0
+  %352 = and i1 %351, %350
+  br i1 %352, label %353, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-333:                                              ; preds = %327
-  %334 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %335 = and i8 %334, 1
-  %336 = icmp eq i8 %335, 0
-  br i1 %336, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %337
+353:                                              ; preds = %347
+  %354 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %355 = and i8 %354, 1
+  %356 = icmp eq i8 %355, 0
+  br i1 %356, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %357
 
-337:                                              ; preds = %333
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %328) #37
+357:                                              ; preds = %353
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %348) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %337, %333, %327, %308, %301
-  %338 = phi %"class.(anonymous namespace)::Future"* [ null, %301 ], [ %309, %308 ], [ %309, %337 ], [ %309, %333 ], [ %309, %327 ]
-  %339 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %338, i64 0, i32 1
-  %340 = load i32, i32* %339, align 4, !tbaa !102
-  %341 = sext i32 %340 to i64
-  %342 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 1
-  %343 = load i64, i64* %342, align 8, !tbaa !103
-  %344 = urem i64 %341, %343
-  %345 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 0
-  %346 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
-  %347 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %346, i64 %344
-  %348 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %347, align 8, !tbaa !3
-  %349 = icmp eq %"struct.std::__detail::_Hash_node_base"* %348, null
-  br i1 %349, label %.loopexit13, label %350
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %357, %353, %347, %328, %321
+  %358 = phi %"class.(anonymous namespace)::Future"* [ null, %321 ], [ %329, %328 ], [ %329, %357 ], [ %329, %353 ], [ %329, %347 ]
+  %359 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %358, i64 0, i32 1
+  %360 = load atomic i32, i32* %359 unordered, align 4, !tbaa !100
+  %361 = sext i32 %360 to i64
+  %362 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 1
+  %363 = load atomic i64, i64* %362 unordered, align 8, !tbaa !101
+  %364 = urem i64 %361, %363
+  %365 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 0
+  %366 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
+  %367 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %366, i64 %364
+  %368 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %367 unordered, align 8, !tbaa !3
+  %369 = icmp eq %"struct.std::__detail::_Hash_node_base"* %368, null
+  br i1 %369, label %.loopexit15, label %370
 
-350:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %351 = bitcast %"struct.std::__detail::_Hash_node_base"* %348 to %"struct.std::__detail::_Hash_node.203"**
-  %352 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %351, align 8, !tbaa !73
-  %353 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %352, i64 0, i32 0, i32 1
-  %354 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %353 to i32*
-  %355 = load i32, i32* %354, align 4, !tbaa !74
-  %356 = icmp eq i32 %340, %355
-  br i1 %356, label %373, label %.preheader12
+370:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %371 = bitcast %"struct.std::__detail::_Hash_node_base"* %368 to %"struct.std::__detail::_Hash_node.203"**
+  %372 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %371 unordered, align 8, !tbaa !73
+  %373 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %372, i64 0, i32 0, i32 1
+  %374 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %373 to i32*
+  %375 = load atomic i32, i32* %374 unordered, align 4, !tbaa !66
+  %376 = icmp eq i32 %360, %375
+  br i1 %376, label %393, label %.preheader14
 
-357:                                              ; preds = %364
-  %358 = icmp eq i32 %340, %367
-  br i1 %358, label %371, label %.preheader12
+377:                                              ; preds = %384
+  %378 = icmp eq i32 %360, %387
+  br i1 %378, label %391, label %.preheader14
 
-.preheader12:                                     ; preds = %357, %350
-  %359 = phi %"struct.std::__detail::_Hash_node.203"* [ %363, %357 ], [ %352, %350 ]
-  %360 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %359, i64 0, i32 0, i32 0, i32 0
-  %361 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %360, align 8, !tbaa !73
-  %362 = icmp eq %"struct.std::__detail::_Hash_node_base"* %361, null
-  %363 = bitcast %"struct.std::__detail::_Hash_node_base"* %361 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %362, label %.loopexit13, label %364
+.preheader14:                                     ; preds = %377, %370
+  %379 = phi %"struct.std::__detail::_Hash_node.203"* [ %383, %377 ], [ %372, %370 ]
+  %380 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %379, i64 0, i32 0, i32 0, i32 0
+  %381 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %380 unordered, align 8, !tbaa !73
+  %382 = icmp eq %"struct.std::__detail::_Hash_node_base"* %381, null
+  %383 = bitcast %"struct.std::__detail::_Hash_node_base"* %381 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %382, label %.loopexit15, label %384
 
-364:                                              ; preds = %.preheader12
-  %365 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %361, i64 1
-  %366 = bitcast %"struct.std::__detail::_Hash_node_base"* %365 to i32*
-  %367 = load i32, i32* %366, align 4, !tbaa !74
-  %368 = sext i32 %367 to i64
-  %369 = urem i64 %368, %343
-  %370 = icmp eq i64 %369, %344
-  br i1 %370, label %357, label %.loopexit13
+384:                                              ; preds = %.preheader14
+  %385 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %381, i64 1
+  %386 = bitcast %"struct.std::__detail::_Hash_node_base"* %385 to i32*
+  %387 = load atomic i32, i32* %386 unordered, align 4, !tbaa !66
+  %388 = sext i32 %387 to i64
+  %389 = urem i64 %388, %363
+  %390 = icmp eq i64 %389, %364
+  br i1 %390, label %377, label %.loopexit15
 
-371:                                              ; preds = %357
-  %372 = icmp eq %"struct.std::__detail::_Hash_node.203"* %359, null
-  br i1 %372, label %.loopexit13, label %482
+391:                                              ; preds = %377
+  %392 = icmp eq %"struct.std::__detail::_Hash_node.203"* %379, null
+  br i1 %392, label %.loopexit15, label %504
 
-373:                                              ; preds = %350
-  %374 = icmp eq %"struct.std::__detail::_Hash_node.203"* %352, null
-  br i1 %374, label %.loopexit13, label %482
+393:                                              ; preds = %370
+  %394 = icmp eq %"struct.std::__detail::_Hash_node.203"* %372, null
+  br i1 %394, label %.loopexit15, label %504
 
-.loopexit13:                                      ; preds = %373, %371, %364, %.preheader12, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %375 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %376 = getelementptr inbounds i8, i8* %375, i64 8
-  %377 = bitcast i8* %376 to i32*
-  store i32 %340, i32* %377, align 8, !tbaa !105
-  %378 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 4
-  %379 = load i64, i64* %342, align 8, !tbaa !103
-  %380 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 3
-  %381 = load i64, i64* %380, align 8, !tbaa !107
-  %382 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %378, i64 %379, i64 %381, i64 1)
-          to label %383 unwind label %489
+.loopexit15:                                      ; preds = %393, %391, %384, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %395 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %396 = bitcast i8* %395 to %"struct.std::__detail::_Hash_node_base"**
+  %397 = getelementptr inbounds i8, i8* %395, i64 8
+  %398 = bitcast i8* %397 to i32*
+  store i32 %360, i32* %398, align 8, !tbaa !103
+  %399 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 4
+  %400 = load atomic i64, i64* %362 unordered, align 8, !tbaa !101
+  %401 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 3
+  %402 = load atomic i64, i64* %401 unordered, align 8, !tbaa !105
+  %403 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %399, i64 %400, i64 %402, i64 1)
+          to label %404 unwind label %511
 
-383:                                              ; preds = %.loopexit13
-  %384 = extractvalue { i8, i64 } %382, 0
-  %385 = and i8 %384, 1
-  %386 = icmp eq i8 %385, 0
-  br i1 %386, label %387, label %389
+404:                                              ; preds = %.loopexit15
+  %405 = extractvalue { i8, i64 } %403, 0
+  %406 = and i8 %405, 1
+  %407 = icmp eq i8 %406, 0
+  br i1 %407, label %408, label %410
 
-387:                                              ; preds = %383
-  %388 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
-  br label %446
+408:                                              ; preds = %404
+  %409 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
+  br label %467
 
-389:                                              ; preds = %383
-  %390 = extractvalue { i8, i64 } %382, 1
-  %391 = icmp eq i64 %390, 1
-  br i1 %391, label %392, label %394, !prof !108, !misexpect !109
+410:                                              ; preds = %404
+  %411 = extractvalue { i8, i64 } %403, 1
+  %412 = icmp eq i64 %411, 1
+  br i1 %412, label %413, label %415, !prof !106, !misexpect !107
 
-392:                                              ; preds = %389
-  %393 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %393, align 8, !tbaa !110
-  br label %398
+413:                                              ; preds = %410
+  %414 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %414, align 8, !tbaa !108
+  br label %419
 
-394:                                              ; preds = %389
-  %395 = call noalias i8* @calloc(i64 %390, i64 8) #37
-  %396 = bitcast i8* %395 to %"struct.std::__detail::_Hash_node_base"**
-  %397 = shl i64 %390, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %395, i8 0, i64 %397, i1 false) #37
-  br label %398
+415:                                              ; preds = %410
+  %416 = call noalias i8* @calloc(i64 %411, i64 8) #37
+  %417 = bitcast i8* %416 to %"struct.std::__detail::_Hash_node_base"**
+  %418 = shl i64 %411, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %416, i8 0, i64 %418, i1 false) #37
+  br label %419
 
-398:                                              ; preds = %394, %392
-  %399 = phi %"struct.std::__detail::_Hash_node_base"** [ %393, %392 ], [ %396, %394 ]
-  %400 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 2
-  %401 = bitcast %"struct.std::__detail::_Hash_node_base"* %400 to %"struct.std::__detail::_Hash_node.203"**
-  %402 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %401, align 8, !tbaa !111
-  %403 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %400, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %403, align 8, !tbaa !111
-  %404 = icmp eq %"struct.std::__detail::_Hash_node.203"* %402, null
-  br i1 %404, label %.loopexit, label %405
+419:                                              ; preds = %415, %413
+  %420 = phi %"struct.std::__detail::_Hash_node_base"** [ %414, %413 ], [ %417, %415 ]
+  %421 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 2
+  %422 = bitcast %"struct.std::__detail::_Hash_node_base"* %421 to %"struct.std::__detail::_Hash_node.203"**
+  %423 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %422 unordered, align 8, !tbaa !109
+  %424 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %421, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %424, align 8, !tbaa !109
+  %425 = icmp eq %"struct.std::__detail::_Hash_node.203"* %423, null
+  br i1 %425, label %.loopexit, label %426
 
-405:                                              ; preds = %398
-  %406 = bitcast %"struct.std::__detail::_Hash_node_base"* %400 to i64*
-  br label %407
+426:                                              ; preds = %419
+  %427 = bitcast %"struct.std::__detail::_Hash_node_base"* %421 to i64*
+  br label %428
 
-407:                                              ; preds = %436, %405
-  %408 = phi %"struct.std::__detail::_Hash_node.203"* [ %402, %405 ], [ %411, %436 ]
-  %409 = phi i64 [ 0, %405 ], [ %437, %436 ]
-  %410 = bitcast %"struct.std::__detail::_Hash_node.203"* %408 to %"struct.std::__detail::_Hash_node.203"**
-  %411 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %410, align 8, !tbaa !73
-  %412 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 1
-  %413 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %412 to i32*
-  %414 = load i32, i32* %413, align 4, !tbaa !74
-  %415 = sext i32 %414 to i64
-  %416 = urem i64 %415, %390
-  %417 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %399, i64 %416
-  %418 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
-  %419 = icmp eq %"struct.std::__detail::_Hash_node_base"* %418, null
-  br i1 %419, label %420, label %429
+428:                                              ; preds = %457, %426
+  %429 = phi %"struct.std::__detail::_Hash_node.203"* [ %423, %426 ], [ %432, %457 ]
+  %430 = phi i64 [ 0, %426 ], [ %458, %457 ]
+  %431 = bitcast %"struct.std::__detail::_Hash_node.203"* %429 to %"struct.std::__detail::_Hash_node.203"**
+  %432 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %431 unordered, align 8, !tbaa !73
+  %433 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 1
+  %434 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %433 to i32*
+  %435 = load atomic i32, i32* %434 unordered, align 4, !tbaa !66
+  %436 = sext i32 %435 to i64
+  %437 = urem i64 %436, %411
+  %438 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %420, i64 %437
+  %439 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %438 unordered, align 8, !tbaa !3
+  %440 = icmp eq %"struct.std::__detail::_Hash_node_base"* %439, null
+  br i1 %440, label %441, label %450
 
-420:                                              ; preds = %407
-  %421 = load i64, i64* %406, align 8, !tbaa !111
-  %422 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 0
-  %423 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 0, i32 0
-  %424 = bitcast %"struct.std::__detail::_Hash_node.203"* %408 to i64*
-  store i64 %421, i64* %424, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %422, %"struct.std::__detail::_Hash_node_base"** %403, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %400, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
-  %425 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %423, align 8, !tbaa !73
-  %426 = icmp eq %"struct.std::__detail::_Hash_node_base"* %425, null
-  br i1 %426, label %436, label %427
+441:                                              ; preds = %428
+  %442 = load atomic i64, i64* %427 unordered, align 8, !tbaa !109
+  %443 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0
+  %444 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0, i32 0
+  %445 = bitcast %"struct.std::__detail::_Hash_node.203"* %429 to i64*
+  store i64 %442, i64* %445, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %443, %"struct.std::__detail::_Hash_node_base"** %424, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %421, %"struct.std::__detail::_Hash_node_base"** %438, align 8, !tbaa !3
+  %446 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %444 unordered, align 8, !tbaa !73
+  %447 = icmp eq %"struct.std::__detail::_Hash_node_base"* %446, null
+  br i1 %447, label %457, label %448
 
-427:                                              ; preds = %420
-  %428 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %399, i64 %409
-  store %"struct.std::__detail::_Hash_node_base"* %422, %"struct.std::__detail::_Hash_node_base"** %428, align 8, !tbaa !3
-  br label %436
+448:                                              ; preds = %441
+  %449 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %420, i64 %430
+  store %"struct.std::__detail::_Hash_node_base"* %443, %"struct.std::__detail::_Hash_node_base"** %449, align 8, !tbaa !3
+  br label %457
 
-429:                                              ; preds = %407
-  %430 = bitcast %"struct.std::__detail::_Hash_node_base"* %418 to i64*
-  %431 = load i64, i64* %430, align 8, !tbaa !73
-  %432 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 0
-  %433 = bitcast %"struct.std::__detail::_Hash_node.203"* %408 to i64*
-  store i64 %431, i64* %433, align 8, !tbaa !73
-  %434 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
-  %435 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %434, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %432, %"struct.std::__detail::_Hash_node_base"** %435, align 8, !tbaa !73
-  br label %436
+450:                                              ; preds = %428
+  %451 = bitcast %"struct.std::__detail::_Hash_node_base"* %439 to i64*
+  %452 = load atomic i64, i64* %451 unordered, align 8, !tbaa !73
+  %453 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0
+  %454 = bitcast %"struct.std::__detail::_Hash_node.203"* %429 to i64*
+  store i64 %452, i64* %454, align 8, !tbaa !73
+  %455 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %438 unordered, align 8, !tbaa !3
+  %456 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %455, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %453, %"struct.std::__detail::_Hash_node_base"** %456, align 8, !tbaa !73
+  br label %457
 
-436:                                              ; preds = %429, %427, %420
-  %437 = phi i64 [ %409, %429 ], [ %416, %420 ], [ %416, %427 ]
-  %438 = icmp eq %"struct.std::__detail::_Hash_node.203"* %411, null
-  br i1 %438, label %.loopexit, label %407
+457:                                              ; preds = %450, %448, %441
+  %458 = phi i64 [ %430, %450 ], [ %437, %441 ], [ %437, %448 ]
+  %459 = icmp eq %"struct.std::__detail::_Hash_node.203"* %432, null
+  br i1 %459, label %.loopexit, label %428
 
-.loopexit:                                        ; preds = %436, %398
-  %439 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
-  %440 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 5
-  %441 = icmp eq %"struct.std::__detail::_Hash_node_base"** %439, %440
-  br i1 %441, label %444, label %442
+.loopexit:                                        ; preds = %457, %419
+  %460 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
+  %461 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 5
+  %462 = icmp eq %"struct.std::__detail::_Hash_node_base"** %460, %461
+  br i1 %462, label %465, label %463
 
-442:                                              ; preds = %.loopexit
-  %443 = bitcast %"struct.std::__detail::_Hash_node_base"** %439 to i8*
-  call void @free(i8* %443) #37
-  br label %444
+463:                                              ; preds = %.loopexit
+  %464 = bitcast %"struct.std::__detail::_Hash_node_base"** %460 to i8*
+  call void @free(i8* %464) #37
+  br label %465
 
-444:                                              ; preds = %442, %.loopexit
-  store i64 %390, i64* %342, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %399, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
-  %445 = urem i64 %341, %390
-  br label %446
+465:                                              ; preds = %463, %.loopexit
+  store i64 %411, i64* %362, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %420, %"struct.std::__detail::_Hash_node_base"*** %365, align 8, !tbaa !102
+  %466 = urem i64 %361, %411
+  br label %467
 
-446:                                              ; preds = %444, %387
-  %447 = phi %"struct.std::__detail::_Hash_node_base"** [ %388, %387 ], [ %399, %444 ]
-  %448 = phi i64 [ %344, %387 ], [ %445, %444 ]
-  %449 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %448
-  %450 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %449, align 8, !tbaa !3
-  %451 = icmp eq %"struct.std::__detail::_Hash_node_base"* %450, null
-  br i1 %451, label %458, label %452
+467:                                              ; preds = %465, %408
+  %468 = phi %"struct.std::__detail::_Hash_node_base"** [ %409, %408 ], [ %420, %465 ]
+  %469 = phi i64 [ %364, %408 ], [ %466, %465 ]
+  %470 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468, i64 %469
+  %471 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %470 unordered, align 8, !tbaa !3
+  %472 = icmp eq %"struct.std::__detail::_Hash_node_base"* %471, null
+  br i1 %472, label %479, label %473
 
-452:                                              ; preds = %446
-  %453 = bitcast %"struct.std::__detail::_Hash_node_base"* %450 to i64*
-  %454 = load i64, i64* %453, align 8, !tbaa !73
-  %455 = bitcast i8* %375 to i64*
-  store i64 %454, i64* %455, align 8, !tbaa !73
-  %456 = bitcast %"struct.std::__detail::_Hash_node_base"** %449 to i8***
-  %457 = load i8**, i8*** %456, align 8, !tbaa !3
-  store i8* %375, i8** %457, align 8, !tbaa !73
-  br label %478
+473:                                              ; preds = %467
+  %474 = bitcast %"struct.std::__detail::_Hash_node_base"* %471 to i64*
+  %475 = load atomic i64, i64* %474 unordered, align 8, !tbaa !73
+  %476 = bitcast i8* %395 to i64*
+  store i64 %475, i64* %476, align 8, !tbaa !73
+  %477 = bitcast %"struct.std::__detail::_Hash_node_base"** %470 to i8***
+  %478 = load atomic i8**, i8*** %477 unordered, align 8, !tbaa !3
+  store i8* %395, i8** %478, align 8, !tbaa !73
+  br label %500
 
-458:                                              ; preds = %446
-  %459 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 2
-  %460 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to i64*
-  %461 = load i64, i64* %460, align 8, !tbaa !111
-  %462 = bitcast i8* %375 to i64*
-  store i64 %461, i64* %462, align 8, !tbaa !73
-  %463 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to i8**
-  store i8* %375, i8** %463, align 8, !tbaa !111
-  %464 = icmp eq i64 %461, 0
-  br i1 %464, label %475, label %465
+479:                                              ; preds = %467
+  %480 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 2
+  %481 = bitcast %"struct.std::__detail::_Hash_node_base"* %480 to i64*
+  %482 = load atomic i64, i64* %481 unordered, align 8, !tbaa !109
+  %483 = bitcast i8* %395 to i64*
+  store i64 %482, i64* %483, align 8, !tbaa !73
+  %484 = bitcast %"struct.std::__detail::_Hash_node_base"* %480 to i8**
+  store i8* %395, i8** %484, align 8, !tbaa !109
+  %485 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %396 unordered, align 8, !tbaa !73
+  %486 = icmp eq %"struct.std::__detail::_Hash_node_base"* %485, null
+  br i1 %486, label %497, label %487
 
-465:                                              ; preds = %458
-  %.cast.i.i.i.i = inttoptr i64 %461 to %"struct.std::__detail::_Hash_node_base"*
-  %466 = load i64, i64* %342, align 8, !tbaa !103
-  %467 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %468 = bitcast %"struct.std::__detail::_Hash_node_base"* %467 to i32*
-  %469 = load i32, i32* %468, align 4, !tbaa !74
-  %470 = sext i32 %469 to i64
-  %471 = urem i64 %470, %466
-  %472 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %471
-  %473 = bitcast %"struct.std::__detail::_Hash_node_base"** %472 to i8**
-  store i8* %375, i8** %473, align 8, !tbaa !3
-  %474 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
-  br label %475
+487:                                              ; preds = %479
+  %488 = load atomic i64, i64* %362 unordered, align 8, !tbaa !101
+  %489 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %485, i64 1
+  %490 = bitcast %"struct.std::__detail::_Hash_node_base"* %489 to i32*
+  %491 = load atomic i32, i32* %490 unordered, align 4, !tbaa !66
+  %492 = sext i32 %491 to i64
+  %493 = urem i64 %492, %488
+  %494 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468, i64 %493
+  %495 = bitcast %"struct.std::__detail::_Hash_node_base"** %494 to i8**
+  store i8* %395, i8** %495, align 8, !tbaa !3
+  %496 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
+  br label %497
 
-475:                                              ; preds = %465, %458
-  %476 = phi %"struct.std::__detail::_Hash_node_base"** [ %447, %458 ], [ %474, %465 ]
-  %477 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %476, i64 %448
-  store %"struct.std::__detail::_Hash_node_base"* %459, %"struct.std::__detail::_Hash_node_base"** %477, align 8, !tbaa !3
-  br label %478
+497:                                              ; preds = %487, %479
+  %498 = phi %"struct.std::__detail::_Hash_node_base"** [ %468, %479 ], [ %496, %487 ]
+  %499 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498, i64 %469
+  store %"struct.std::__detail::_Hash_node_base"* %480, %"struct.std::__detail::_Hash_node_base"** %499, align 8, !tbaa !3
+  br label %500
 
-478:                                              ; preds = %475, %452
-  %479 = load i64, i64* %380, align 8, !tbaa !107
-  %480 = add i64 %479, 1
-  store i64 %480, i64* %380, align 8, !tbaa !107
-  %481 = bitcast i8* %376 to %"struct.std::pair.50"*
-  br label %486
+500:                                              ; preds = %497, %473
+  %501 = load atomic i64, i64* %401 unordered, align 8, !tbaa !105
+  %502 = add i64 %501, 1
+  store i64 %502, i64* %401, align 8, !tbaa !105
+  %503 = bitcast i8* %397 to %"struct.std::pair.50"*
+  br label %508
 
-482:                                              ; preds = %373, %371
-  %483 = phi %"struct.std::__detail::_Hash_node.203"* [ %352, %373 ], [ %363, %371 ]
-  %484 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %483, i64 0, i32 0, i32 1
-  %485 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %484 to %"struct.std::pair.50"*
-  br label %486
+504:                                              ; preds = %393, %391
+  %505 = phi %"struct.std::__detail::_Hash_node.203"* [ %372, %393 ], [ %383, %391 ]
+  %506 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %505, i64 0, i32 0, i32 1
+  %507 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %506 to %"struct.std::pair.50"*
+  br label %508
 
-486:                                              ; preds = %482, %478
-  %487 = phi %"struct.std::pair.50"* [ %485, %482 ], [ %481, %478 ]
-  %488 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %487, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %338, %"class.(anonymous namespace)::Future"** %488, align 8, !tbaa !3
-  store i32 2, i32* %195, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-UNNN>runUpdateSharedStructCounterWorkers$lambda$1#static(MultithreadedLoopsBenchmark.Counter){}#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %196, align 8, !tbaa.struct !112
-  store i8* %247, i8** %197, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %338, %"class.(anonymous namespace)::Future"** %198, align 8, !tbaa.struct !112
-  store i32 %240, i32* %199, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %305, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
-  br label %.loopexit15
+508:                                              ; preds = %504, %500
+  %509 = phi %"struct.std::pair.50"* [ %507, %504 ], [ %503, %500 ]
+  %510 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %509, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %358, %"class.(anonymous namespace)::Future"** %510, align 8, !tbaa !3
+  store i32 2, i32* %215, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-UNNN>runUpdateSharedStructCounterWorkers$lambda$1#static(MultithreadedLoopsBenchmark.Counter){}#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %216, align 8, !tbaa.struct !110
+  store i8* %267, i8** %217, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %358, %"class.(anonymous namespace)::Future"** %218, align 8, !tbaa.struct !110
+  store i32 %260, i32* %219, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %325, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+  br label %.loopexit17
 
-489:                                              ; preds = %.loopexit13
-  %490 = landingpad { i8*, i32 }
+511:                                              ; preds = %.loopexit15
+  %512 = landingpad { i8*, i32 }
           cleanup
-  %491 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %492 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %491, i64 328
-  %493 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %492 to i32*
-  %494 = atomicrmw xchg i32* %493, i32 1 seq_cst, align 4
-  %495 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %249) #37
-  %496 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %491, null
-  br i1 %496, label %.body.i.i.i, label %515
+  %513 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %514 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %513, i64 328
+  %515 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %514 to i32*
+  %516 = atomicrmw xchg i32* %515, i32 1 seq_cst, align 4
+  %517 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %269) #37
+  %518 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %513, null
+  br i1 %518, label %.body.i.i.i, label %537
 
-.loopexit15:                                      ; preds = %486, %299, %297, %290, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %497 = phi %"class.(anonymous namespace)::Future"* [ %338, %486 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %297 ], [ null, %299 ], [ null, %.preheader14 ], [ null, %290 ]
-  %498 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %499 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %498, i64 328
-  %500 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %499 to i32*
-  %501 = atomicrmw xchg i32* %500, i32 1 seq_cst, align 4
-  %502 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %249) #37
-  %503 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %498, null
-  br i1 %503, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %504
+.loopexit17:                                      ; preds = %508, %319, %317, %310, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %519 = phi %"class.(anonymous namespace)::Future"* [ %358, %508 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %317 ], [ null, %319 ], [ null, %.preheader16 ], [ null, %310 ]
+  %520 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %521 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %520, i64 328
+  %522 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %521 to i32*
+  %523 = atomicrmw xchg i32* %522, i32 1 seq_cst, align 4
+  %524 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %269) #37
+  %525 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %520, null
+  br i1 %525, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %526
 
-504:                                              ; preds = %.loopexit15
-  %505 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %499 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %506 = atomicrmw xchg i32* %500, i32 %501 seq_cst, align 4
-  %507 = icmp eq i32 %506, 1
-  %508 = icmp eq i32 %501, 0
-  %509 = and i1 %508, %507
-  br i1 %509, label %510, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+526:                                              ; preds = %.loopexit17
+  %527 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %521 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %528 = atomicrmw xchg i32* %522, i32 %523 seq_cst, align 4
+  %529 = icmp eq i32 %528, 1
+  %530 = icmp eq i32 %523, 0
+  %531 = and i1 %530, %529
+  br i1 %531, label %532, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-510:                                              ; preds = %504
-  %511 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %512 = and i8 %511, 1
-  %513 = icmp eq i8 %512, 0
-  br i1 %513, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %514
+532:                                              ; preds = %526
+  %533 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %534 = and i8 %533, 1
+  %535 = icmp eq i8 %534, 0
+  br i1 %535, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %536
 
-514:                                              ; preds = %510
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %505) #37
+536:                                              ; preds = %532
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %527) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-515:                                              ; preds = %489
-  %516 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %492 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %517 = atomicrmw xchg i32* %493, i32 %494 seq_cst, align 4
-  %518 = icmp eq i32 %517, 1
-  %519 = icmp eq i32 %494, 0
-  %520 = and i1 %519, %518
-  br i1 %520, label %521, label %.body.i.i.i
+537:                                              ; preds = %511
+  %538 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %514 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %539 = atomicrmw xchg i32* %515, i32 %516 seq_cst, align 4
+  %540 = icmp eq i32 %539, 1
+  %541 = icmp eq i32 %516, 0
+  %542 = and i1 %541, %540
+  br i1 %542, label %543, label %.body.i.i.i
 
-521:                                              ; preds = %515
-  %522 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %523 = and i8 %522, 1
-  %524 = icmp eq i8 %523, 0
-  br i1 %524, label %.body.i.i.i, label %525
+543:                                              ; preds = %537
+  %544 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %545 = and i8 %544, 1
+  %546 = icmp eq i8 %545, 0
+  br i1 %546, label %.body.i.i.i, label %547
 
-525:                                              ; preds = %521
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %516) #37
+547:                                              ; preds = %543
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %538) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %514, %510, %504, %.loopexit15
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %194)
-  %526 = icmp eq %"class.(anonymous namespace)::Future"* %497, null
-  br i1 %526, label %527, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %536, %532, %526, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %214)
+  %548 = icmp eq %"class.(anonymous namespace)::Future"* %519, null
+  br i1 %548, label %549, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-527:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+549:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %528 unwind label %531
+          to label %550 unwind label %553
 
-528:                                              ; preds = %527
+550:                                              ; preds = %549
   unreachable
 
-529:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %530 = landingpad { i8*, i32 }
+551:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %552 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-531:                                              ; preds = %527
-  %532 = landingpad { i8*, i32 }
+553:                                              ; preds = %549
+  %554 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %531, %529, %525, %521, %515, %489
-  %533 = phi { i8*, i32 } [ %530, %529 ], [ %532, %531 ], [ %490, %515 ], [ %490, %521 ], [ %490, %525 ], [ %490, %489 ]
-  %534 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %535 = load i64, i64* %191, align 8, !tbaa !9
-  %536 = bitcast %"class.kotlin::mm::ShadowStack"* %534 to i64*
-  store i64 %535, i64* %536, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %188) #37
-  resume { i8*, i32 } %533
+.body.i.i.i:                                      ; preds = %553, %551, %547, %543, %537, %511
+  %555 = phi { i8*, i32 } [ %552, %551 ], [ %554, %553 ], [ %512, %537 ], [ %512, %543 ], [ %512, %547 ], [ %512, %511 ]
+  %556 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %557 = load atomic i64, i64* %211 unordered, align 8, !tbaa !9
+  %558 = bitcast %"class.kotlin::mm::ShadowStack"* %556 to i64*
+  store i64 %557, i64* %558, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %208) #37
+  resume { i8*, i32 } %555
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %537 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %497, i64 0, i32 1
-  %538 = load i32, i32* %537, align 4, !tbaa !102
-  %539 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %540 = load i64, i64* %191, align 8, !tbaa !9
-  %541 = bitcast %"class.kotlin::mm::ShadowStack"* %539 to i64*
-  store i64 %540, i64* %541, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %188) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %55, i8 0, i32 32, i1 immarg false) #49
-  %542 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %543 = bitcast %"class.kotlin::mm::ShadowStack"* %542 to i64*
-  %544 = load i64, i64* %543, align 8, !tbaa !7
-  store i64 %544, i64* %59, align 8, !tbaa !9
-  %545 = bitcast %"class.kotlin::mm::ShadowStack"* %542 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i7, %struct.ObjHeader*** %545, align 8, !tbaa !7
-  store i32 0, i32* %61, align 8, !tbaa !12
-  store i32 4, i32* %62, align 4, !tbaa !13
-  %546 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %547 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %546 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %548 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %547, align 8, !tbaa !3
-  %549 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %548, i64 0, i32 2, i32 1
-  %550 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %549, i64 24) #37
-  %551 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 1
-  %552 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 2
-  %553 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552 to %struct.TypeInfo**
-  %554 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551 to i64*
-  store i64 0, i64* %554, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %553, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %555 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 3
-  %556 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %555 to i32*
-  store i32 %538, i32* %556, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %200, align 8, !tbaa !3
-  %557 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %558 = load i64, i64* %59, align 8, !tbaa !9
-  %559 = bitcast %"class.kotlin::mm::ShadowStack"* %557 to i64*
-  store i64 %558, i64* %559, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55)
-  %560 = load i32, i32* %184, align 8, !tbaa !18
-  %561 = zext i32 %560 to i64
-  %562 = icmp ult i64 %indvars.iv47, %561
-  br i1 %562, label %Kotlin_Array_set.exit.i, label %563
+  %559 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %519, i64 0, i32 1
+  %560 = load atomic i32, i32* %559 unordered, align 4, !tbaa !100
+  %561 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %562 = load atomic i64, i64* %211 unordered, align 8, !tbaa !9
+  %563 = bitcast %"class.kotlin::mm::ShadowStack"* %561 to i64*
+  store i64 %562, i64* %563, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %208) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %73, i8 0, i32 32, i1 immarg false) #49
+  %564 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %565 = bitcast %"class.kotlin::mm::ShadowStack"* %564 to i64*
+  %566 = load atomic i64, i64* %565 unordered, align 8, !tbaa !7
+  store i64 %566, i64* %77, align 8, !tbaa !9
+  %567 = bitcast %"class.kotlin::mm::ShadowStack"* %564 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i9, %struct.ObjHeader*** %567, align 8, !tbaa !7
+  store i32 0, i32* %79, align 8, !tbaa !12
+  store i32 4, i32* %80, align 4, !tbaa !13
+  %568 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %569 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %568 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %570 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %569 unordered, align 8, !tbaa !3
+  %571 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %570, i64 0, i32 2, i32 1
+  %572 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %571, i64 24) #37
+  %573 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %572, i64 1
+  %574 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %572, i64 2
+  %575 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574 to %struct.TypeInfo**
+  %576 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %573 to i64*
+  store i64 0, i64* %576, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %575, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
+  %577 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %572, i64 3
+  %578 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %577 to i32*
+  store i32 %560, i32* %578, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %220, align 8, !tbaa !3
+  %579 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %580 = load atomic i64, i64* %77 unordered, align 8, !tbaa !9
+  %581 = bitcast %"class.kotlin::mm::ShadowStack"* %579 to i64*
+  store i64 %580, i64* %581, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73)
+  %582 = load atomic i32, i32* %204 unordered, align 8, !tbaa !18
+  %583 = zext i32 %582 to i64
+  %584 = icmp ult i64 %indvars.iv49, %583
+  br i1 %584, label %Kotlin_Array_set.exit.i, label %585
 
-563:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+585:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %564 = load atomic volatile i64, i64* %201 monotonic, align 8
-  %565 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202, i64 %indvars.iv47
-  %566 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %565, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %566, align 8, !tbaa !3
-  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
+  %586 = load atomic volatile i64, i64* %221 monotonic, align 8
+  %587 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %222, i64 %indvars.iv49
+  %588 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %587, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %588, align 8, !tbaa !3
+  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
   br label %loop_check.i
 
 loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
-  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
-  %exitcond50.not = icmp eq i64 %indvars.iv47, %wide.trip.count49
-  br i1 %exitcond50.not, label %loop_exit.i, label %while_loop.i
+  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
+  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
+  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i
 
 loop_exit.i:                                      ; preds = %loop_check.i
-  %567 = load i32, i32* %184, align 8, !tbaa !18
-  %568 = icmp sgt i32 %567, 0
-  %smax = select i1 %568, i32 %567, i32 0
+  %589 = load atomic i32, i32* %204 unordered, align 8, !tbaa !18
+  %590 = icmp sgt i32 %589, 0
+  %smax = select i1 %590, i32 %589, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check18.i
 
 while_loop19.i:                                   ; preds = %loop_check18.i
-  %569 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %570 = and i8 %569, 1
-  %571 = icmp eq i8 %570, 0
-  br i1 %571, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %572
+  %591 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %592 = and i8 %591, 1
+  %593 = icmp eq i8 %592, 0
+  br i1 %593, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %594
 
-572:                                              ; preds = %while_loop19.i
+594:                                              ; preds = %while_loop19.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit1.i
 
-Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %572, %while_loop19.i
-  %573 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202, i64 %indvars.iv
-  %574 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %573 to %struct.ObjHeader**
-  %575 = load %struct.ObjHeader*, %struct.ObjHeader** %574, align 8, !tbaa !3
-  store %struct.ObjHeader* %575, %struct.ObjHeader** %131, align 8, !tbaa !3
-  %576 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %575, i64 1
-  %577 = bitcast %struct.ObjHeader* %576 to i32*
-  %578 = load i32, i32* %577, align 4
+Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %594, %while_loop19.i
+  %595 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %222, i64 %indvars.iv
+  %596 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %595 to %struct.ObjHeader**
+  %597 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %596 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %597, %struct.ObjHeader** %150, align 8, !tbaa !3
+  %598 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %597, i64 1
+  %599 = bitcast %struct.ObjHeader* %598 to i32*
+  %600 = load atomic i32, i32* %599 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %55, i8 0, i32 32, i1 immarg false) #49
-  %579 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %580 = bitcast %"class.kotlin::mm::ShadowStack"* %579 to i64*
-  %581 = load i64, i64* %580, align 8, !tbaa !7
-  store i64 %581, i64* %59, align 8, !tbaa !9
-  %582 = bitcast %"class.kotlin::mm::ShadowStack"* %579 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i7, %struct.ObjHeader*** %582, align 8, !tbaa !7
-  store i32 0, i32* %61, align 8, !tbaa !12
-  store i32 4, i32* %62, align 4, !tbaa !13
-  %583 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %584 = icmp eq i32 %583, 2
-  br i1 %584, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %73, i8 0, i32 32, i1 immarg false) #49
+  %601 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %602 = bitcast %"class.kotlin::mm::ShadowStack"* %601 to i64*
+  %603 = load atomic i64, i64* %602 unordered, align 8, !tbaa !7
+  store i64 %603, i64* %77, align 8, !tbaa !9
+  %604 = bitcast %"class.kotlin::mm::ShadowStack"* %601 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i9, %struct.ObjHeader*** %604, align 8, !tbaa !7
+  store i32 0, i32* %79, align 8, !tbaa !12
+  store i32 4, i32* %80, align 4, !tbaa !13
+  %605 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %606 = icmp eq i32 %605, 2
+  br i1 %606, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit1.i
-  %585 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %586 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %585, %struct.ObjHeader** nonnull %56)
-  store %struct.ObjHeader* %586, %struct.ObjHeader** %56, align 8, !tbaa !3
-  %587 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %588 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %587, i64 0, i32 0
-  %589 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %590 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %589, i64 328
-  %591 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590 to i32*
-  %592 = atomicrmw xchg i32* %591, i32 1 seq_cst, align 4
-  %593 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %588) #37
-  %594 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %589, null
-  br i1 %594, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %595
+  %607 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %608 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %607, %struct.ObjHeader** nonnull %74)
+  store %struct.ObjHeader* %608, %struct.ObjHeader** %74, align 8, !tbaa !3
+  %609 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %610 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %609, i64 0, i32 0
+  %611 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %612 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %611, i64 328
+  %613 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %612 to i32*
+  %614 = atomicrmw xchg i32* %613, i32 1 seq_cst, align 4
+  %615 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %610) #37
+  %616 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %611, null
+  br i1 %616, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %617
 
-595:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %596 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %597 = atomicrmw xchg i32* %591, i32 %592 seq_cst, align 4
-  %598 = icmp eq i32 %597, 1
-  %599 = icmp eq i32 %592, 0
-  %600 = and i1 %599, %598
-  br i1 %600, label %601, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+617:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %618 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %612 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %619 = atomicrmw xchg i32* %613, i32 %614 seq_cst, align 4
+  %620 = icmp eq i32 %619, 1
+  %621 = icmp eq i32 %614, 0
+  %622 = and i1 %621, %620
+  br i1 %622, label %623, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-601:                                              ; preds = %595
-  %602 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %603 = and i8 %602, 1
-  %604 = icmp eq i8 %603, 0
-  br i1 %604, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %605
+623:                                              ; preds = %617
+  %624 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %625 = and i8 %624, 1
+  %626 = icmp eq i8 %625, 0
+  br i1 %626, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %627
 
-605:                                              ; preds = %601
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %596) #37
+627:                                              ; preds = %623
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %618) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %605, %601, %595, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %606 = sext i32 %578 to i64
-  %607 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %587, i64 0, i32 2, i32 0, i32 1
-  %608 = load i64, i64* %607, align 8, !tbaa !103
-  %609 = urem i64 %606, %608
-  %610 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %587, i64 0, i32 2, i32 0, i32 0
-  %611 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %610, align 8, !tbaa !104
-  %612 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %611, i64 %609
-  %613 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %612, align 8, !tbaa !3
-  %614 = icmp eq %"struct.std::__detail::_Hash_node_base"* %613, null
-  br i1 %614, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %615
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %627, %623, %617, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %628 = sext i32 %600 to i64
+  %629 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %609, i64 0, i32 2, i32 0, i32 1
+  %630 = load atomic i64, i64* %629 unordered, align 8, !tbaa !101
+  %631 = urem i64 %628, %630
+  %632 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %609, i64 0, i32 2, i32 0, i32 0
+  %633 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %632 unordered, align 8, !tbaa !102
+  %634 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %633, i64 %631
+  %635 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %634 unordered, align 8, !tbaa !3
+  %636 = icmp eq %"struct.std::__detail::_Hash_node_base"* %635, null
+  br i1 %636, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %637
 
-615:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %616 = bitcast %"struct.std::__detail::_Hash_node_base"* %613 to %"struct.std::__detail::_Hash_node.203"**
-  %617 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %616, align 8, !tbaa !73
-  %618 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %617, i64 0, i32 0, i32 1
-  %619 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %618 to i32*
-  %620 = load i32, i32* %619, align 4, !tbaa !74
-  %621 = icmp eq i32 %620, %578
-  br i1 %621, label %638, label %.preheader
+637:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %638 = bitcast %"struct.std::__detail::_Hash_node_base"* %635 to %"struct.std::__detail::_Hash_node.203"**
+  %639 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %638 unordered, align 8, !tbaa !73
+  %640 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %639, i64 0, i32 0, i32 1
+  %641 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %640 to i32*
+  %642 = load atomic i32, i32* %641 unordered, align 4, !tbaa !66
+  %643 = icmp eq i32 %642, %600
+  br i1 %643, label %660, label %.preheader
 
-622:                                              ; preds = %629
-  %623 = icmp eq i32 %632, %578
-  br i1 %623, label %636, label %.preheader
+644:                                              ; preds = %651
+  %645 = icmp eq i32 %654, %600
+  br i1 %645, label %658, label %.preheader
 
-.preheader:                                       ; preds = %622, %615
-  %624 = phi %"struct.std::__detail::_Hash_node.203"* [ %628, %622 ], [ %617, %615 ]
-  %625 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %624, i64 0, i32 0, i32 0, i32 0
-  %626 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %625, align 8, !tbaa !73
-  %627 = icmp eq %"struct.std::__detail::_Hash_node_base"* %626, null
-  %628 = bitcast %"struct.std::__detail::_Hash_node_base"* %626 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %627, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %629
+.preheader:                                       ; preds = %644, %637
+  %646 = phi %"struct.std::__detail::_Hash_node.203"* [ %650, %644 ], [ %639, %637 ]
+  %647 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %646, i64 0, i32 0, i32 0, i32 0
+  %648 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %647 unordered, align 8, !tbaa !73
+  %649 = icmp eq %"struct.std::__detail::_Hash_node_base"* %648, null
+  %650 = bitcast %"struct.std::__detail::_Hash_node_base"* %648 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %649, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %651
 
-629:                                              ; preds = %.preheader
-  %630 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %626, i64 1
-  %631 = bitcast %"struct.std::__detail::_Hash_node_base"* %630 to i32*
-  %632 = load i32, i32* %631, align 4, !tbaa !74
-  %633 = sext i32 %632 to i64
-  %634 = urem i64 %633, %608
-  %635 = icmp eq i64 %634, %609
-  br i1 %635, label %622, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+651:                                              ; preds = %.preheader
+  %652 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %648, i64 1
+  %653 = bitcast %"struct.std::__detail::_Hash_node_base"* %652 to i32*
+  %654 = load atomic i32, i32* %653 unordered, align 4, !tbaa !66
+  %655 = sext i32 %654 to i64
+  %656 = urem i64 %655, %630
+  %657 = icmp eq i64 %656, %631
+  br i1 %657, label %644, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-636:                                              ; preds = %622
-  %637 = icmp eq %"struct.std::__detail::_Hash_node.203"* %624, null
-  br i1 %637, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %640
+658:                                              ; preds = %644
+  %659 = icmp eq %"struct.std::__detail::_Hash_node.203"* %646, null
+  br i1 %659, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %662
 
-638:                                              ; preds = %615
-  %639 = icmp eq %"struct.std::__detail::_Hash_node.203"* %617, null
-  br i1 %639, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %640
+660:                                              ; preds = %637
+  %661 = icmp eq %"struct.std::__detail::_Hash_node.203"* %639, null
+  br i1 %661, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %662
 
-640:                                              ; preds = %638, %636
-  %641 = phi %"struct.std::__detail::_Hash_node.203"* [ %628, %636 ], [ %617, %638 ]
-  %642 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %641, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %643 = bitcast i8* %642 to %"class.(anonymous namespace)::Future"**
-  %644 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %643, align 8, !tbaa !114
-  %645 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %644, i64 0, i32 3
-  %646 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %647 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %646, i64 328
-  %648 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %647 to i32*
-  %649 = atomicrmw xchg i32* %648, i32 1 seq_cst, align 4
-  %650 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %645) #37
-  %651 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %646, null
-  br i1 %651, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %652
+662:                                              ; preds = %660, %658
+  %663 = phi %"struct.std::__detail::_Hash_node.203"* [ %650, %658 ], [ %639, %660 ]
+  %664 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %663, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %665 = bitcast i8* %664 to %"class.(anonymous namespace)::Future"**
+  %666 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %665 unordered, align 8, !tbaa !112
+  %667 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %666, i64 0, i32 3
+  %668 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %669 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %668, i64 328
+  %670 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %669 to i32*
+  %671 = atomicrmw xchg i32* %670, i32 1 seq_cst, align 4
+  %672 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %667) #37
+  %673 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %668, null
+  br i1 %673, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %674
 
-652:                                              ; preds = %640
-  %653 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %647 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %654 = atomicrmw xchg i32* %648, i32 %649 seq_cst, align 4
-  %655 = icmp eq i32 %654, 1
-  %656 = icmp eq i32 %649, 0
-  %657 = and i1 %656, %655
-  br i1 %657, label %658, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+674:                                              ; preds = %662
+  %675 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %669 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %676 = atomicrmw xchg i32* %670, i32 %671 seq_cst, align 4
+  %677 = icmp eq i32 %676, 1
+  %678 = icmp eq i32 %671, 0
+  %679 = and i1 %678, %677
+  br i1 %679, label %680, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-658:                                              ; preds = %652
-  %659 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %660 = and i8 %659, 1
-  %661 = icmp eq i8 %660, 0
-  br i1 %661, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %662
+680:                                              ; preds = %674
+  %681 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %682 = and i8 %681, 1
+  %683 = icmp eq i8 %682, 0
+  br i1 %683, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %684
 
-662:                                              ; preds = %658
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %653) #37
+684:                                              ; preds = %680
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %675) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %662, %658, %652, %640
-  %663 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %644, i64 0, i32 0
-  %664 = load i32, i32* %663, align 8, !tbaa !100
-  %665 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %666 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %665, i64 328
-  %667 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %666 to i32*
-  %668 = atomicrmw xchg i32* %667, i32 1 seq_cst, align 4
-  %669 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %645) #37
-  %670 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %665, null
-  br i1 %670, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %671
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %684, %680, %674, %662
+  %685 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %666, i64 0, i32 0
+  %686 = load atomic i32, i32* %685 unordered, align 8, !tbaa !98
+  %687 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %688 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %687, i64 328
+  %689 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688 to i32*
+  %690 = atomicrmw xchg i32* %689, i32 1 seq_cst, align 4
+  %691 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %667) #37
+  %692 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %687, null
+  br i1 %692, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %693
 
-671:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %672 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %666 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %673 = atomicrmw xchg i32* %667, i32 %668 seq_cst, align 4
-  %674 = icmp eq i32 %673, 1
-  %675 = icmp eq i32 %668, 0
-  %676 = and i1 %675, %674
-  br i1 %676, label %677, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+693:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %694 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %695 = atomicrmw xchg i32* %689, i32 %690 seq_cst, align 4
+  %696 = icmp eq i32 %695, 1
+  %697 = icmp eq i32 %690, 0
+  %698 = and i1 %697, %696
+  br i1 %698, label %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-677:                                              ; preds = %671
-  %678 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %679 = and i8 %678, 1
-  %680 = icmp eq i8 %679, 0
-  br i1 %680, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %681
+699:                                              ; preds = %693
+  %700 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %701 = and i8 %700, 1
+  %702 = icmp eq i8 %701, 0
+  br i1 %702, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %703
 
-681:                                              ; preds = %677
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %672) #37
+703:                                              ; preds = %699
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %694) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %681, %677, %671, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %638, %636, %629, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %682 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %636 ], [ 0, %638 ], [ %664, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %664, %681 ], [ %664, %677 ], [ %664, %671 ], [ 0, %.preheader ], [ 0, %629 ]
-  %683 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %684 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683, i64 328
-  %685 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %684 to i32*
-  %686 = atomicrmw xchg i32* %685, i32 1 seq_cst, align 4
-  %687 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %588) #37
-  %688 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683, null
-  br i1 %688, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %689
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %703, %699, %693, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %660, %658, %651, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %704 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %658 ], [ 0, %660 ], [ %686, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %686, %703 ], [ %686, %699 ], [ %686, %693 ], [ 0, %.preheader ], [ 0, %651 ]
+  %705 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %706 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %705, i64 328
+  %707 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706 to i32*
+  %708 = atomicrmw xchg i32* %707, i32 1 seq_cst, align 4
+  %709 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %610) #37
+  %710 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %705, null
+  br i1 %710, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %711
 
-689:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %690 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %684 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %691 = atomicrmw xchg i32* %685, i32 %686 seq_cst, align 4
-  %692 = icmp eq i32 %691, 1
-  %693 = icmp eq i32 %686, 0
-  %694 = and i1 %693, %692
-  br i1 %694, label %695, label %Kotlin_Worker_stateOfFuture.exit.i.i
+711:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %712 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %713 = atomicrmw xchg i32* %707, i32 %708 seq_cst, align 4
+  %714 = icmp eq i32 %713, 1
+  %715 = icmp eq i32 %708, 0
+  %716 = and i1 %715, %714
+  br i1 %716, label %717, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-695:                                              ; preds = %689
-  %696 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %697 = and i8 %696, 1
-  %698 = icmp eq i8 %697, 0
-  br i1 %698, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %699
+717:                                              ; preds = %711
+  %718 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %719 = and i8 %718, 1
+  %720 = icmp eq i8 %719, 0
+  br i1 %720, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %721
 
-699:                                              ; preds = %695
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %690) #37
+721:                                              ; preds = %717
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %712) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %699, %695, %689, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %700 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %586, i64 1
-  %701 = bitcast %struct.ObjHeader* %700 to i32*
-  %702 = load i32, i32* %701, align 8, !tbaa !18
-  %703 = icmp ugt i32 %702, %682
-  br i1 %703, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %704
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %721, %717, %711, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %722 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %608, i64 1
+  %723 = bitcast %struct.ObjHeader* %722 to i32*
+  %724 = load atomic i32, i32* %723 unordered, align 8, !tbaa !18
+  %725 = icmp ugt i32 %724, %704
+  br i1 %725, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %726
 
-704:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+726:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %705 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %586, i64 2
-  %706 = sext i32 %682 to i64
-  %707 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %705, i64 %706
-  %708 = bitcast %struct.ObjHeader* %707 to %struct.ObjHeader**
-  %709 = load %struct.ObjHeader*, %struct.ObjHeader** %708, align 8, !tbaa !3
-  store %struct.ObjHeader* %709, %struct.ObjHeader** %132, align 8, !tbaa !3
-  %710 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %711 = load i64, i64* %59, align 8, !tbaa !9
-  %712 = bitcast %"class.kotlin::mm::ShadowStack"* %710 to i64*
-  store i64 %711, i64* %712, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55)
-  %713 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %709, i64 2
-  %714 = bitcast %struct.ObjHeader* %713 to i32*
-  %715 = load i32, i32* %714, align 4
-  switch i32 %715, label %when_next28.i [
+  %727 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %608, i64 2
+  %728 = sext i32 %704 to i64
+  %729 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %727, i64 %728
+  %730 = bitcast %struct.ObjHeader* %729 to %struct.ObjHeader**
+  %731 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %730 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %731, %struct.ObjHeader** %151, align 8, !tbaa !3
+  %732 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %733 = load atomic i64, i64* %77 unordered, align 8, !tbaa !9
+  %734 = bitcast %"class.kotlin::mm::ShadowStack"* %732 to i64*
+  store i64 %733, i64* %734, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73)
+  %735 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %731, i64 2
+  %736 = bitcast %struct.ObjHeader* %735 to i32*
+  %737 = load atomic i32, i32* %736 unordered, align 4
+  switch i32 %737, label %when_next28.i [
     i32 1, label %when_case22.i
     i32 2, label %when_case22.i
     i32 0, label %when_case23.i
@@ -1173,71 +1207,71 @@
   ]
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %578, %struct.ObjHeader** nonnull %133)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %600, %struct.ObjHeader** nonnull %152)
   br label %loop_check18.i
 
 when_case23.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %716 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  %717 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %718 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %717 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %719 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %718, align 8, !tbaa !3
-  %720 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %719, i64 0, i32 2, i32 1
-  %721 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %720, i64 56) #37
-  %722 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721, i64 1
-  %723 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721, i64 2
-  %724 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %723 to %struct.ObjHeader*
-  %725 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %723 to %struct.TypeInfo**
-  %726 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %722 to i64*
-  store i64 0, i64* %726, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %725, align 8, !tbaa !14
-  %727 = bitcast %struct.ObjHeader** %716 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %723, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %727, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %724, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @136 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %724) #50
+  %738 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  %739 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %740 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %739 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %741 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %740 unordered, align 8, !tbaa !3
+  %742 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %741, i64 0, i32 2, i32 1
+  %743 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %742, i64 56) #37
+  %744 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %743, i64 1
+  %745 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %743, i64 2
+  %746 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %745 to %struct.ObjHeader*
+  %747 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %745 to %struct.TypeInfo**
+  %748 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %744 to i64*
+  store i64 0, i64* %748, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %747, align 8, !tbaa !14
+  %749 = bitcast %struct.ObjHeader** %738 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %745, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %749, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %746, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @136 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %746) #50
   unreachable
 
 when_case25.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %728 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  %729 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %578, %struct.ObjHeader** nonnull %729)
-  %730 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %731 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %730 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %732 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %731, align 8, !tbaa !3
-  %733 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %732, i64 0, i32 2, i32 1
-  %734 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %733, i64 56) #37
-  %735 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %734, i64 1
-  %736 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %734, i64 2
-  %737 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %736 to %struct.ObjHeader*
-  %738 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %736 to %struct.TypeInfo**
-  %739 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %735 to i64*
-  store i64 0, i64* %739, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %738, align 8, !tbaa !14
-  %740 = bitcast %struct.ObjHeader** %728 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %736, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %740, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %737, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @137 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %737) #50
+  %750 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  %751 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %600, %struct.ObjHeader** nonnull %751)
+  %752 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %753 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %752 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %754 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %753 unordered, align 8, !tbaa !3
+  %755 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %754, i64 0, i32 2, i32 1
+  %756 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %755, i64 56) #37
+  %757 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 1
+  %758 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 2
+  %759 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %struct.ObjHeader*
+  %760 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %struct.TypeInfo**
+  %761 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %757 to i64*
+  store i64 0, i64* %761, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %760, align 8, !tbaa !14
+  %762 = bitcast %struct.ObjHeader** %750 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %762, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %759, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @137 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %759) #50
   unreachable
 
 when_case27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %741 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 17
-  %742 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %578, %struct.ObjHeader** nonnull %742)
-  %743 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
-  %744 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %743 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %745 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %744, align 8, !tbaa !3
-  %746 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %745, i64 0, i32 2, i32 1
-  %747 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %746, i64 56) #37
-  %748 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %747, i64 1
-  %749 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %747, i64 2
-  %750 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %749 to %struct.ObjHeader*
-  %751 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %749 to %struct.TypeInfo**
-  %752 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %748 to i64*
-  store i64 0, i64* %752, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %751, align 8, !tbaa !14
-  %753 = bitcast %struct.ObjHeader** %741 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %749, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %753, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %750, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @138 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %750) #50
+  %763 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 17
+  %764 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %600, %struct.ObjHeader** nonnull %764)
+  %765 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
+  %766 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %765 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %767 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %766 unordered, align 8, !tbaa !3
+  %768 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %767, i64 0, i32 2, i32 1
+  %769 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %768, i64 56) #37
+  %770 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 1
+  %771 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 2
+  %772 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.ObjHeader*
+  %773 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.TypeInfo**
+  %774 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %770 to i64*
+  store i64 0, i64* %774, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %773, align 8, !tbaa !14
+  %775 = bitcast %struct.ObjHeader** %763 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %775, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %772, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @138 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %772) #50
   unreachable
 
 when_next28.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1250,10 +1284,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop19.i
 
 epilogue:                                         ; preds = %loop_check18.i
-  %754 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
-  %755 = bitcast %"class.kotlin::mm::ShadowStack"* %754 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %127)
-  %756 = load i64, i64* %17, align 8, !tbaa !9
-  store i64 %756, i64* %755, align 8, !tbaa !7
+  %776 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
+  %777 = bitcast %"class.kotlin::mm::ShadowStack"* %776 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %146)
+  %778 = load atomic i64, i64* %17 unordered, align 8, !tbaa !9
+  store i64 %778, i64* %777, align 8, !tbaa !7
   ret void
 }
