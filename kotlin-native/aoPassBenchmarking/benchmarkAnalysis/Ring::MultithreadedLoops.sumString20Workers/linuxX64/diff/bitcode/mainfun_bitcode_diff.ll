--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString20Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:51:06.570584484 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString20Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:44.290366531 +0200
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
   %27 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %26, i64 48) #37
   %28 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 1
@@ -52,1367 +52,1401 @@
   call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33)
   %.sub.i2 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 0
   call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(112) %33, i8 0, i32 112, i1 immarg false) #49
-  %34 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 4
-  %35 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 5
-  %36 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 7
-  %37 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 8
-  %38 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 9
-  %39 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 11
-  %40 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 12
-  %41 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 13
-  %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %43 = bitcast [14 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
-  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %42 to i64*
-  %45 = load i64, i64* %44, align 8, !tbaa !7
-  %46 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 1
-  %47 = bitcast %struct.ObjHeader** %46 to i64*
-  store i64 %45, i64* %47, align 8, !tbaa !9
-  %48 = bitcast %"class.kotlin::mm::ShadowStack"* %42 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %48, align 8, !tbaa !7
-  %49 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 2
-  %50 = bitcast %struct.ObjHeader** %49 to i32*
-  store i32 0, i32* %50, align 8, !tbaa !12
-  %51 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %43, i64 0, i32 3
-  store i32 14, i32* %51, align 4, !tbaa !13
-  %52 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 6
-  %53 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to i32*
-  store i32 20, i32* %53, align 8
-  %54 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %55 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %54 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %56 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %55, align 8, !tbaa !3
-  %57 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %56, i64 0, i32 2, i32 1
-  %58 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %57, i64 184) #37
-  %59 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, i64 1
-  %60 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, i64 2
-  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60 to %struct.TypeInfo**
-  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %61, align 8, !tbaa !16
-  %63 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, i64 3
-  %64 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63 to i32*
-  store i32 20, i32* %64, align 8, !tbaa !18
-  %65 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %65, align 8, !tbaa !3
-  %66 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60 to i64*
-  %68 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, i64 4
-  br label %loop_check.i7
+  %34 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 7
+  %35 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 8
+  %36 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 9
+  %37 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 11
+  %38 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 12
+  %39 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 13
+  %40 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %41 = bitcast [14 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
+  %42 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to i64*
+  %43 = load atomic i64, i64* %42 unordered, align 8, !tbaa !7
+  %44 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 1
+  %45 = bitcast %struct.ObjHeader** %44 to i64*
+  store i64 %43, i64* %45, align 8, !tbaa !9
+  %46 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %46, align 8, !tbaa !7
+  %47 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 2
+  %48 = bitcast %struct.ObjHeader** %47 to i32*
+  store i32 0, i32* %48, align 8, !tbaa !12
+  %49 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %41, i64 0, i32 3
+  store i32 14, i32* %49, align 4, !tbaa !13
+  %50 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 6
+  %51 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50 to i32*
+  store i32 20, i32* %51, align 8
+  %52 = load atomic i32, i32* %51 unordered, align 8
+  %53 = icmp slt i32 %52, 0
+  br i1 %53, label %when_case.i3, label %AllocArrayInstance.exit.i5
 
-while_loop.i4:                                    ; preds = %loop_check.i7
-  %69 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %70 = and i8 %69, 1
-  %71 = icmp eq i8 %70, 0
-  br i1 %71, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %72
+when_case.i3:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %54 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 3
+  %55 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %56 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %55 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %57 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %56 unordered, align 8, !tbaa !3
+  %58 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %57, i64 0, i32 2, i32 1
+  %59 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %58, i64 56) #37
+  %60 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, i64 1
+  %61 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, i64 2
+  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61 to %struct.ObjHeader*
+  %63 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61 to %struct.TypeInfo**
+  %64 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60 to i64*
+  store i64 0, i64* %64, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %63, align 8, !tbaa !14
+  %65 = bitcast %struct.ObjHeader** %54 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %65, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %62, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %62) #50
+  unreachable
 
-72:                                               ; preds = %while_loop.i4
+AllocArrayInstance.exit.i5:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %66 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 5
+  %67 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 4
+  %68 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %69 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %68 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %70 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %69 unordered, align 8, !tbaa !3
+  %71 = zext i32 %52 to i64
+  %72 = shl nuw nsw i64 %71, 3
+  %73 = add nuw nsw i64 %72, 31
+  %74 = and i64 %73, 68719476728
+  %75 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %70, i64 0, i32 2, i32 1
+  %76 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %75, i64 %74) #37
+  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 1
+  %78 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 2
+  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78 to %struct.TypeInfo**
+  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %79, align 8, !tbaa !16
+  %81 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 3
+  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81 to i32*
+  store i32 %52, i32* %82, align 8, !tbaa !18
+  %83 = bitcast %struct.ObjHeader** %67 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %83, align 8, !tbaa !3
+  %84 = bitcast %struct.ObjHeader** %66 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %85 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78 to i64*
+  %86 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 4
+  %wide.trip.count67 = zext i32 %52 to i64
+  br label %loop_check.i9
+
+while_loop.i6:                                    ; preds = %loop_check.i9
+  %87 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %88 = and i8 %87, 1
+  %89 = icmp eq i8 %88, 0
+  br i1 %89, label %Kotlin_mm_safePointWhileLoopBody.exit.i7, label %90
+
+90:                                               ; preds = %while_loop.i6
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5
+  br label %Kotlin_mm_safePointWhileLoopBody.exit.i7
 
-Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %72, %while_loop.i4
-  %73 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %74 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %73 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %75 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %74, align 8, !tbaa !3
-  %76 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %75, i64 0, i32 2, i32 1
-  %77 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %76, i64 20024) #37
-  %78 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, i64 1
-  %79 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, i64 2
-  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to %struct.TypeInfo**
-  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %81, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %80, align 8, !tbaa !16
-  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, i64 3
-  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to i32*
-  store i32 10000, i32* %83, align 8, !tbaa !18
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %66, align 8, !tbaa !3
-  %84 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to i64*
-  %85 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, i64 4
-  %86 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %85 to i16*
+Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %90, %while_loop.i6
+  %91 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %92 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %91 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %93 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %92 unordered, align 8, !tbaa !3
+  %94 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %93, i64 0, i32 2, i32 1
+  %95 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %94, i64 20024) #37
+  %96 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, i64 1
+  %97 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, i64 2
+  %98 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97 to %struct.TypeInfo**
+  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %96 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %99, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %98, align 8, !tbaa !16
+  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, i64 3
+  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to i32*
+  store i32 10000, i32* %101, align 8, !tbaa !18
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !3
+  %102 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97 to i64*
+  %103 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, i64 4
+  %104 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103 to i16*
   br label %loop_check12.i
 
 while_loop13.i:                                   ; preds = %loop_check12.i
-  %87 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %88 = and i8 %87, 1
-  %89 = icmp eq i8 %88, 0
-  br i1 %89, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %90
+  %105 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %106 = and i8 %105, 1
+  %107 = icmp eq i8 %106, 0
+  br i1 %107, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %108
 
-90:                                               ; preds = %while_loop13.i
+108:                                              ; preds = %while_loop13.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit1.i
 
-Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %90, %while_loop13.i
-  %91 = load i32, i32* %83, align 8, !tbaa !18
-  %92 = zext i32 %91 to i64
-  %93 = icmp ult i64 %indvars.iv61, %92
-  br i1 %93, label %Kotlin_CharArray_set.exit.i, label %94
+Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %108, %while_loop13.i
+  %109 = load atomic i32, i32* %101 unordered, align 8, !tbaa !18
+  %110 = zext i32 %109 to i64
+  %111 = icmp ult i64 %indvars.iv62, %110
+  br i1 %111, label %Kotlin_CharArray_set.exit.i, label %112
 
-94:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
+112:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
-  %95 = trunc i32 %tmp8.0.i to i16
-  %96 = load atomic volatile i64, i64* %84 monotonic, align 8
-  %97 = getelementptr inbounds i16, i16* %86, i64 %indvars.iv61
-  store i16 %95, i16* %97, align 2, !tbaa !34
-  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
-  %98 = add nuw nsw i32 %tmp8.0.i, 1
+  %113 = trunc i32 %tmp8.0.i to i16
+  %114 = load atomic volatile i64, i64* %102 monotonic, align 8
+  %115 = getelementptr inbounds i16, i16* %104, i64 %indvars.iv62
+  store i16 %113, i16* %115, align 2, !tbaa !27
+  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
+  %116 = add nuw nsw i32 %tmp8.0.i, 1
   br label %loop_check12.i
 
-loop_check12.i:                                   ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  %tmp8.0.i = phi i32 [ %98, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
-  %exitcond63.not = icmp eq i64 %indvars.iv61, 10000
-  br i1 %exitcond63.not, label %loop_exit11.i, label %while_loop13.i
+loop_check12.i:                                   ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i7
+  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  %tmp8.0.i = phi i32 [ %116, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
+  %exitcond64.not = icmp eq i64 %indvars.iv62, 10000
+  br i1 %exitcond64.not, label %loop_exit11.i, label %while_loop13.i
 
 loop_exit11.i:                                    ; preds = %loop_check12.i
-  %99 = load i32, i32* %64, align 8, !tbaa !18
-  %100 = zext i32 %99 to i64
-  %101 = icmp ult i64 %indvars.iv64, %100
-  br i1 %101, label %Kotlin_Array_set.exit2.i, label %102
+  %117 = load atomic i32, i32* %82 unordered, align 8, !tbaa !18
+  %118 = zext i32 %117 to i64
+  %119 = icmp ult i64 %indvars.iv65, %118
+  br i1 %119, label %Kotlin_Array_set.exit2.i, label %120
 
-102:                                              ; preds = %loop_exit11.i
+120:                                              ; preds = %loop_exit11.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit2.i:                         ; preds = %loop_exit11.i
-  %103 = load atomic volatile i64, i64* %67 monotonic, align 8
-  %104 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %68, i64 %indvars.iv64
-  %105 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %104, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %105, align 8, !tbaa !3
-  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
-  br label %loop_check.i7
+  %121 = load atomic volatile i64, i64* %85 monotonic, align 8
+  %122 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %86, i64 %indvars.iv65
+  %123 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %122, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %123, align 8, !tbaa !3
+  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
+  br label %loop_check.i9
 
-loop_check.i7:                                    ; preds = %Kotlin_Array_set.exit2.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %Kotlin_Array_set.exit2.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond66.not = icmp eq i64 %indvars.iv64, 20
-  br i1 %exitcond66.not, label %loop_exit.i8, label %while_loop.i4
+loop_check.i9:                                    ; preds = %Kotlin_Array_set.exit2.i, %AllocArrayInstance.exit.i5
+  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %Kotlin_Array_set.exit2.i ], [ 0, %AllocArrayInstance.exit.i5 ]
+  %exitcond68.not = icmp eq i64 %indvars.iv65, %wide.trip.count67
+  br i1 %exitcond68.not, label %loop_exit.i10, label %while_loop.i6
 
-loop_exit.i8:                                     ; preds = %loop_check.i7
-  %106 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %60, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %106, align 8, !tbaa !3
-  %107 = load i32, i32* %53, align 8
-  %108 = icmp slt i32 %107, 0
-  br i1 %108, label %when_case20.i, label %AllocArrayInstance.exit.i9
+loop_exit.i10:                                    ; preds = %loop_check.i9
+  %124 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
+  %125 = load atomic i32, i32* %51 unordered, align 8
+  %126 = icmp slt i32 %125, 0
+  br i1 %126, label %when_case20.i, label %AllocArrayInstance.exit3.i
 
-when_case20.i:                                    ; preds = %loop_exit.i8
-  %109 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 6
-  %110 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %111 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %110 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %112 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %111, align 8, !tbaa !3
-  %113 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %112, i64 0, i32 2, i32 1
-  %114 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %113, i64 56) #37
-  %115 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114, i64 1
-  %116 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114, i64 2
-  %117 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116 to %struct.ObjHeader*
-  %118 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116 to %struct.TypeInfo**
-  %119 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115 to i64*
-  store i64 0, i64* %119, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %118, align 8, !tbaa !14
-  %120 = bitcast %struct.ObjHeader** %109 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %120, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %117, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %117) #50
+when_case20.i:                                    ; preds = %loop_exit.i10
+  %127 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 6
+  %128 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %129 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %128 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %130 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %129 unordered, align 8, !tbaa !3
+  %131 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %130, i64 0, i32 2, i32 1
+  %132 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %131, i64 56) #37
+  %133 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132, i64 1
+  %134 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %132, i64 2
+  %135 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %134 to %struct.ObjHeader*
+  %136 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %134 to %struct.TypeInfo**
+  %137 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to i64*
+  store i64 0, i64* %137, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %136, align 8, !tbaa !14
+  %138 = bitcast %struct.ObjHeader** %127 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %134, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %138, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %135, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %135) #50
   unreachable
 
-AllocArrayInstance.exit.i9:                       ; preds = %loop_exit.i8
-  %121 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %122 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %121 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %123 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %122, align 8, !tbaa !3
-  %124 = zext i32 %107 to i64
-  %125 = shl nuw nsw i64 %124, 3
-  %126 = add nuw nsw i64 %125, 31
-  %127 = and i64 %126, 68719476728
-  %128 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %123, i64 0, i32 2, i32 1
-  %129 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %128, i64 %127) #37
-  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 1
-  %131 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 2
-  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.TypeInfo**
-  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %133, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %132, align 8, !tbaa !16
-  %134 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 3
-  %135 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %134 to i32*
-  store i32 %107, i32* %135, align 8, !tbaa !18
-  %136 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %136, align 8, !tbaa !3
-  %137 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3
-  %138 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137 to %struct.ObjHeader**
-  %139 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to i64*
-  %140 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 4
-  %wide.trip.count59 = zext i32 %107 to i64
+AllocArrayInstance.exit3.i:                       ; preds = %loop_exit.i10
+  %139 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %140 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %139 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %141 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %140 unordered, align 8, !tbaa !3
+  %142 = zext i32 %125 to i64
+  %143 = shl nuw nsw i64 %142, 3
+  %144 = add nuw nsw i64 %143, 31
+  %145 = and i64 %144, 68719476728
+  %146 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %141, i64 0, i32 2, i32 1
+  %147 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %146, i64 %145) #37
+  %148 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 1
+  %149 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 2
+  %150 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149 to %struct.TypeInfo**
+  %151 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %151, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %150, align 8, !tbaa !16
+  %152 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 3
+  %153 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %152 to i32*
+  store i32 %125, i32* %153, align 8, !tbaa !18
+  %154 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %154, align 8, !tbaa !3
+  %155 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3
+  %156 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %155 to %struct.ObjHeader**
+  %157 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149 to i64*
+  %158 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 4
+  %wide.trip.count60 = zext i32 %125 to i64
   br label %loop_check31.i
 
 while_loop32.i:                                   ; preds = %loop_check31.i
-  %141 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %142 = and i8 %141, 1
-  %143 = icmp eq i8 %142, 0
-  br i1 %143, label %Kotlin_mm_safePointWhileLoopBody.exit3.i, label %144
+  %159 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %160 = and i8 %159, 1
+  %161 = icmp eq i8 %160, 0
+  br i1 %161, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %162
 
-144:                                              ; preds = %while_loop32.i
+162:                                              ; preds = %while_loop32.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit3.i
+  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i
 
-Kotlin_mm_safePointWhileLoopBody.exit3.i:         ; preds = %144, %while_loop32.i
-  %145 = load %struct.ObjHeader*, %struct.ObjHeader** %138, align 8
-  %146 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %145, i64 1
-  %147 = bitcast %struct.ObjHeader* %146 to i32*
-  %148 = load i32, i32* %147, align 8, !tbaa !18
-  %149 = zext i32 %148 to i64
-  %150 = icmp ult i64 %indvars.iv57, %149
-  br i1 %150, label %Kotlin_Array_get.exit.i10, label %151
+Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %162, %while_loop32.i
+  %163 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %156 unordered, align 8
+  %164 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %163, i64 1
+  %165 = bitcast %struct.ObjHeader* %164 to i32*
+  %166 = load atomic i32, i32* %165 unordered, align 8, !tbaa !18
+  %167 = zext i32 %166 to i64
+  %168 = icmp ult i64 %indvars.iv58, %167
+  br i1 %168, label %Kotlin_Array_get.exit.i11, label %169
 
-151:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit3.i
+169:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_get.exit.i10:                        ; preds = %Kotlin_mm_safePointWhileLoopBody.exit3.i
-  %152 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %145, i64 2
-  %153 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %152, i64 %indvars.iv57
-  %154 = bitcast %struct.ObjHeader* %153 to %struct.ObjHeader**
-  %155 = load %struct.ObjHeader*, %struct.ObjHeader** %154, align 8, !tbaa !3
-  store %struct.ObjHeader* %155, %struct.ObjHeader** %37, align 8, !tbaa !3
-  %156 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* %155, %struct.ObjHeader** nonnull %38)
-  store %struct.ObjHeader* %156, %struct.ObjHeader** %38, align 8, !tbaa !3
-  %157 = load i32, i32* %135, align 8, !tbaa !18
-  %158 = zext i32 %157 to i64
-  %159 = icmp ult i64 %indvars.iv57, %158
-  br i1 %159, label %Kotlin_Array_set.exit4.i, label %160
+Kotlin_Array_get.exit.i11:                        ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
+  %170 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %163, i64 2
+  %171 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %170, i64 %indvars.iv58
+  %172 = bitcast %struct.ObjHeader* %171 to %struct.ObjHeader**
+  %173 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %172 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %173, %struct.ObjHeader** %35, align 8, !tbaa !3
+  %174 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* %173, %struct.ObjHeader** nonnull %36)
+  store %struct.ObjHeader* %174, %struct.ObjHeader** %36, align 8, !tbaa !3
+  %175 = load atomic i32, i32* %153 unordered, align 8, !tbaa !18
+  %176 = zext i32 %175 to i64
+  %177 = icmp ult i64 %indvars.iv58, %176
+  br i1 %177, label %Kotlin_Array_set.exit5.i, label %178
 
-160:                                              ; preds = %Kotlin_Array_get.exit.i10
+178:                                              ; preds = %Kotlin_Array_get.exit.i11
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit4.i:                         ; preds = %Kotlin_Array_get.exit.i10
-  %161 = load atomic volatile i64, i64* %139 monotonic, align 8
-  %162 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140, i64 %indvars.iv57
-  %163 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to %struct.ObjHeader**
-  store %struct.ObjHeader* %156, %struct.ObjHeader** %163, align 8, !tbaa !3
-  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
+Kotlin_Array_set.exit5.i:                         ; preds = %Kotlin_Array_get.exit.i11
+  %179 = load atomic volatile i64, i64* %157 monotonic, align 8
+  %180 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %158, i64 %indvars.iv58
+  %181 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180 to %struct.ObjHeader**
+  store %struct.ObjHeader* %174, %struct.ObjHeader** %181, align 8, !tbaa !3
+  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
   br label %loop_check31.i
 
-loop_check31.i:                                   ; preds = %Kotlin_Array_set.exit4.i, %AllocArrayInstance.exit.i9
-  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_Array_set.exit4.i ], [ 0, %AllocArrayInstance.exit.i9 ]
-  %exitcond60.not = icmp eq i64 %indvars.iv57, %wide.trip.count59
-  br i1 %exitcond60.not, label %loop_exit30.i, label %while_loop32.i
+loop_check31.i:                                   ; preds = %Kotlin_Array_set.exit5.i, %AllocArrayInstance.exit3.i
+  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %Kotlin_Array_set.exit5.i ], [ 0, %AllocArrayInstance.exit3.i ]
+  %exitcond61.not = icmp eq i64 %indvars.iv58, %wide.trip.count60
+  br i1 %exitcond61.not, label %loop_exit30.i, label %while_loop32.i
 
 loop_exit30.i:                                    ; preds = %loop_check31.i
-  %164 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %164, align 8, !tbaa !3
-  %165 = load i32, i32* %53, align 8
-  %166 = icmp slt i32 %165, 0
-  br i1 %166, label %when_case39.i, label %AllocArrayInstance.exit5.i
+  %182 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %182, align 8, !tbaa !3
+  %183 = load atomic i32, i32* %51 unordered, align 8
+  %184 = icmp slt i32 %183, 0
+  br i1 %184, label %when_case39.i, label %AllocArrayInstance.exit6.i
 
 when_case39.i:                                    ; preds = %loop_exit30.i
-  %167 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 10
-  %168 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %169 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %168 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %170 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %169, align 8, !tbaa !3
-  %171 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %170, i64 0, i32 2, i32 1
-  %172 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %171, i64 56) #37
-  %173 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %172, i64 1
-  %174 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %172, i64 2
-  %175 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %174 to %struct.ObjHeader*
-  %176 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %174 to %struct.TypeInfo**
-  %177 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %173 to i64*
-  store i64 0, i64* %177, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %176, align 8, !tbaa !14
-  %178 = bitcast %struct.ObjHeader** %167 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %174, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %178, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %175, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %175) #50
+  %185 = getelementptr inbounds [14 x %struct.ObjHeader*], [14 x %struct.ObjHeader*]* %0, i64 0, i64 10
+  %186 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %187 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %186 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %188 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %187 unordered, align 8, !tbaa !3
+  %189 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %188, i64 0, i32 2, i32 1
+  %190 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %189, i64 56) #37
+  %191 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190, i64 1
+  %192 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190, i64 2
+  %193 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %192 to %struct.ObjHeader*
+  %194 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %192 to %struct.TypeInfo**
+  %195 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %191 to i64*
+  store i64 0, i64* %195, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %194, align 8, !tbaa !14
+  %196 = bitcast %struct.ObjHeader** %185 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %192, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %196, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %193, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %193) #50
   unreachable
 
-AllocArrayInstance.exit5.i:                       ; preds = %loop_exit30.i
-  %179 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %180 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %179 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %181 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %180, align 8, !tbaa !3
-  %182 = zext i32 %165 to i64
-  %183 = shl nuw nsw i64 %182, 3
-  %184 = add nuw nsw i64 %183, 31
-  %185 = and i64 %184, 68719476728
-  %186 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %181, i64 0, i32 2, i32 1
-  %187 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %186, i64 %185) #37
-  %188 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 1
-  %189 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 2
-  %190 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189 to %struct.TypeInfo**
-  %191 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %191, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %190, align 8, !tbaa !16
-  %192 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 3
-  %193 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %192 to i32*
-  store i32 %165, i32* %193, align 8, !tbaa !18
-  %194 = bitcast %struct.ObjHeader** %39 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %194, align 8, !tbaa !3
-  %195 = bitcast %struct.ObjHeader** %40 to i64*
-  %196 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %197 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %198 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %199 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %200 = bitcast %struct.ObjHeader** %199 to i64*
-  %201 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %202 = bitcast %struct.ObjHeader** %201 to i32*
-  %203 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %198, i64 0, i32 3
-  %204 = bitcast %struct.ObjHeader** %197 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %205 = bitcast %struct.ObjHeader** %41 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %206 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189 to i64*
-  %207 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %187, i64 4
-  %wide.trip.count55 = zext i32 %165 to i64
+AllocArrayInstance.exit6.i:                       ; preds = %loop_exit30.i
+  %197 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %198 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %197 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %199 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %198 unordered, align 8, !tbaa !3
+  %200 = zext i32 %183 to i64
+  %201 = shl nuw nsw i64 %200, 3
+  %202 = add nuw nsw i64 %201, 31
+  %203 = and i64 %202, 68719476728
+  %204 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %199, i64 0, i32 2, i32 1
+  %205 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %204, i64 %203) #37
+  %206 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 1
+  %207 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 2
+  %208 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207 to %struct.TypeInfo**
+  %209 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %209, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %208, align 8, !tbaa !16
+  %210 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 3
+  %211 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %210 to i32*
+  store i32 %183, i32* %211, align 8, !tbaa !18
+  %212 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %212, align 8, !tbaa !3
+  %213 = bitcast %struct.ObjHeader** %38 to i64*
+  %214 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %.sub.i.i13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
+  %215 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %216 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %217 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %218 = bitcast %struct.ObjHeader** %217 to i64*
+  %219 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %220 = bitcast %struct.ObjHeader** %219 to i32*
+  %221 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %216, i64 0, i32 3
+  %222 = bitcast %struct.ObjHeader** %215 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %223 = bitcast %struct.ObjHeader** %39 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %224 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207 to i64*
+  %225 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205, i64 4
+  %wide.trip.count56 = zext i32 %183 to i64
   br label %loop_check50.i
 
 while_loop51.i:                                   ; preds = %loop_check50.i
-  %208 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %209 = and i8 %208, 1
-  %210 = icmp eq i8 %209, 0
-  br i1 %210, label %Kotlin_mm_safePointWhileLoopBody.exit6.i, label %211
+  %226 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %227 = and i8 %226, 1
+  %228 = icmp eq i8 %227, 0
+  br i1 %228, label %Kotlin_mm_safePointWhileLoopBody.exit7.i, label %229
 
-211:                                              ; preds = %while_loop51.i
+229:                                              ; preds = %while_loop51.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
-  br label %Kotlin_mm_safePointWhileLoopBody.exit6.i
+  br label %Kotlin_mm_safePointWhileLoopBody.exit7.i
 
-Kotlin_mm_safePointWhileLoopBody.exit6.i:         ; preds = %211, %while_loop51.i
-  %212 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %212, i64* %195, align 8, !tbaa !3
-  %213 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %214 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %213, i32 0)
-  %215 = icmp eq %class.Worker* %214, null
-  br i1 %215, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %216
+Kotlin_mm_safePointWhileLoopBody.exit7.i:         ; preds = %229, %while_loop51.i
+  %230 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %230, i64* %213, align 8, !tbaa !3
+  %231 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %232 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %231, i32 0)
+  %233 = icmp eq %class.Worker* %232, null
+  br i1 %233, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %234
 
-216:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit6.i
-  %217 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %218 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %217, i64 328
-  %219 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %218 to i32*
-  %220 = atomicrmw xchg i32* %219, i32 1 seq_cst, align 4
-  %221 = getelementptr inbounds %class.Worker, %class.Worker* %214, i64 0, i32 9
-  %222 = bitcast %class.Worker* %214 to i8*
-  %223 = call i32 @pthread_create(i64* nonnull %221, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %222) #37
-  %224 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %217, null
-  br i1 %224, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %225
+234:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit7.i
+  %235 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %236 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %235, i64 328
+  %237 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %236 to i32*
+  %238 = atomicrmw xchg i32* %237, i32 1 seq_cst, align 4
+  %239 = getelementptr inbounds %class.Worker, %class.Worker* %232, i64 0, i32 9
+  %240 = bitcast %class.Worker* %232 to i8*
+  %241 = call i32 @pthread_create(i64* nonnull %239, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %240) #37
+  %242 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %235, null
+  br i1 %242, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12, label %243
 
-225:                                              ; preds = %216
-  %226 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %218 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %227 = atomicrmw xchg i32* %219, i32 %220 seq_cst, align 4
-  %228 = icmp eq i32 %227, 1
-  %229 = icmp eq i32 %220, 0
-  %230 = and i1 %229, %228
-  br i1 %230, label %231, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
+243:                                              ; preds = %234
+  %244 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %236 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %245 = atomicrmw xchg i32* %237, i32 %238 seq_cst, align 4
+  %246 = icmp eq i32 %245, 1
+  %247 = icmp eq i32 %238, 0
+  %248 = and i1 %247, %246
+  br i1 %248, label %249, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12
 
-231:                                              ; preds = %225
-  %232 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %233 = and i8 %232, 1
-  %234 = icmp eq i8 %233, 0
-  br i1 %234, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %235
+249:                                              ; preds = %243
+  %250 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %251 = and i8 %250, 1
+  %252 = icmp eq i8 %251, 0
+  br i1 %252, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12, label %253
 
-235:                                              ; preds = %231
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %226) #37
-  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
+253:                                              ; preds = %249
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %244) #37
+  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %235, %231, %225, %216
-  %236 = getelementptr inbounds %class.Worker, %class.Worker* %214, i64 0, i32 0
-  %237 = load i32, i32* %236, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12: ; preds = %253, %249, %243, %234
+  %254 = getelementptr inbounds %class.Worker, %class.Worker* %232, i64 0, i32 0
+  %255 = load atomic i32, i32* %254 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
-"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit6.i
-  %238 = phi i32 [ %237, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit6.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %196)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %196, i8 0, i32 32, i1 immarg false) #49
-  %239 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %240 = bitcast %"class.kotlin::mm::ShadowStack"* %239 to i64*
-  %241 = load i64, i64* %240, align 8, !tbaa !7
-  store i64 %241, i64* %200, align 8, !tbaa !9
-  %242 = bitcast %"class.kotlin::mm::ShadowStack"* %239 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %242, align 8, !tbaa !7
-  store i32 0, i32* %202, align 8, !tbaa !12
-  store i32 4, i32* %203, align 4, !tbaa !13
-  %243 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %244 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %243 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %245 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %244, align 8, !tbaa !3
-  %246 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %245, i64 0, i32 2, i32 1
-  %247 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %246, i64 24) #37
-  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 1
-  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 2
-  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to %struct.TypeInfo**
-  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to i64*
-  store i64 0, i64* %251, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %250, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %204, align 8, !tbaa !3
-  %252 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 3
-  %253 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252 to i32*
-  store i32 %238, i32* %253, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %205, align 8, !tbaa !3
-  %254 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %255 = load i64, i64* %200, align 8, !tbaa !9
-  %256 = bitcast %"class.kotlin::mm::ShadowStack"* %254 to i64*
-  store i64 %255, i64* %256, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %196)
-  %257 = load i32, i32* %193, align 8, !tbaa !18
-  %258 = zext i32 %257 to i64
-  %259 = icmp ult i64 %indvars.iv53, %258
-  br i1 %259, label %Kotlin_Array_set.exit.i13, label %260
+"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12, %Kotlin_mm_safePointWhileLoopBody.exit7.i
+  %256 = phi i32 [ %255, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i12 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit7.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %214)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %214, i8 0, i32 32, i1 immarg false) #49
+  %257 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %258 = bitcast %"class.kotlin::mm::ShadowStack"* %257 to i64*
+  %259 = load atomic i64, i64* %258 unordered, align 8, !tbaa !7
+  store i64 %259, i64* %218, align 8, !tbaa !9
+  %260 = bitcast %"class.kotlin::mm::ShadowStack"* %257 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i13, %struct.ObjHeader*** %260, align 8, !tbaa !7
+  store i32 0, i32* %220, align 8, !tbaa !12
+  store i32 4, i32* %221, align 4, !tbaa !13
+  %261 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %262 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %261 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %263 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %262 unordered, align 8, !tbaa !3
+  %264 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %263, i64 0, i32 2, i32 1
+  %265 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %264, i64 24) #37
+  %266 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 1
+  %267 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 2
+  %268 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267 to %struct.TypeInfo**
+  %269 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266 to i64*
+  store i64 0, i64* %269, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %268, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %222, align 8, !tbaa !3
+  %270 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265, i64 3
+  %271 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %270 to i32*
+  store i32 %256, i32* %271, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %223, align 8, !tbaa !3
+  %272 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %273 = load atomic i64, i64* %218 unordered, align 8, !tbaa !9
+  %274 = bitcast %"class.kotlin::mm::ShadowStack"* %272 to i64*
+  store i64 %273, i64* %274, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %214)
+  %275 = load atomic i32, i32* %211 unordered, align 8, !tbaa !18
+  %276 = zext i32 %275 to i64
+  %277 = icmp ult i64 %indvars.iv54, %276
+  br i1 %277, label %Kotlin_Array_set.exit.i14, label %278
 
-260:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+278:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
-Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %261 = load atomic volatile i64, i64* %206 monotonic, align 8
-  %262 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, i64 %indvars.iv53
-  %263 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %262, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %263, align 8, !tbaa !3
-  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
+Kotlin_Array_set.exit.i14:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+  %279 = load atomic volatile i64, i64* %224 monotonic, align 8
+  %280 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 %indvars.iv54
+  %281 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %280, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %267, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %281, align 8, !tbaa !3
+  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
   br label %loop_check50.i
 
-loop_check50.i:                                   ; preds = %Kotlin_Array_set.exit.i13, %AllocArrayInstance.exit5.i
-  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i13 ], [ 0, %AllocArrayInstance.exit5.i ]
-  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
-  br i1 %exitcond56.not, label %call_success, label %while_loop51.i
+loop_check50.i:                                   ; preds = %Kotlin_Array_set.exit.i14, %AllocArrayInstance.exit6.i
+  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %Kotlin_Array_set.exit.i14 ], [ 0, %AllocArrayInstance.exit6.i ]
+  %exitcond57.not = icmp eq i64 %indvars.iv54, %wide.trip.count56
+  br i1 %exitcond57.not, label %call_success, label %while_loop51.i
 
 call_success:                                     ; preds = %loop_check50.i
-  %264 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %189, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %264, align 8, !tbaa !3
-  %265 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %266 = load i64, i64* %47, align 8, !tbaa !3
+  %282 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %282, align 8, !tbaa !3
+  %283 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %284 = load atomic i64, i64* %45 unordered, align 8, !tbaa !9
+  %285 = bitcast %"class.kotlin::mm::ShadowStack"* %283 to i64*
+  store i64 %284, i64* %285, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33)
-  %267 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %267)
+  %286 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %286)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %267, i8 0, i32 136, i1 immarg false) #49
-  %268 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %269 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %270 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %271 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %272 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %273 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %274 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %275 = bitcast %struct.ObjHeader** %274 to i64*
-  store i64 %266, i64* %275, align 8, !tbaa !9
-  %276 = bitcast %"class.kotlin::mm::ShadowStack"* %265 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %276, align 8, !tbaa !7
-  %277 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %278 = bitcast %struct.ObjHeader** %277 to i32*
-  store i32 0, i32* %278, align 8, !tbaa !12
-  %279 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %273, i64 0, i32 3
-  store i32 17, i32* %279, align 4, !tbaa !13
-  %280 = load i32, i32* %53, align 8
-  %281 = icmp slt i32 %280, 0
-  br i1 %281, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %286, i8 0, i32 136, i1 immarg false) #49
+  %287 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %288 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %289 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %290 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %291 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %292 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %293 = load atomic i64, i64* %285 unordered, align 8, !tbaa !7
+  %294 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %295 = bitcast %struct.ObjHeader** %294 to i64*
+  store i64 %293, i64* %295, align 8, !tbaa !9
+  %296 = bitcast %"class.kotlin::mm::ShadowStack"* %283 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %296, align 8, !tbaa !7
+  %297 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %298 = bitcast %struct.ObjHeader** %297 to i32*
+  store i32 0, i32* %298, align 8, !tbaa !12
+  %299 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %292, i64 0, i32 3
+  store i32 17, i32* %299, align 4, !tbaa !13
+  %300 = load atomic i32, i32* %51 unordered, align 8
+  %301 = icmp slt i32 %300, 0
+  br i1 %301, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %282 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %283 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %284 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %283 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %285 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %284, align 8, !tbaa !3
-  %286 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %285, i64 0, i32 2, i32 1
-  %287 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %286, i64 56) #37
-  %288 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %287, i64 1
-  %289 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %287, i64 2
-  %290 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289 to %struct.ObjHeader*
-  %291 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289 to %struct.TypeInfo**
-  %292 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %288 to i64*
-  store i64 0, i64* %292, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %291, align 8, !tbaa !14
-  %293 = bitcast %struct.ObjHeader** %282 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %293, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %290, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %290) #50
+  %302 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %303 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %304 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %303 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %305 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %304 unordered, align 8, !tbaa !3
+  %306 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %305, i64 0, i32 2, i32 1
+  %307 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %306, i64 56) #37
+  %308 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %307, i64 1
+  %309 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %307, i64 2
+  %310 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %309 to %struct.ObjHeader*
+  %311 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %309 to %struct.TypeInfo**
+  %312 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %308 to i64*
+  store i64 0, i64* %312, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %311, align 8, !tbaa !14
+  %313 = bitcast %struct.ObjHeader** %302 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %309, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %313, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %310, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %310) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %294 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %295 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %296 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %297 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %298 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %297 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %299 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %298, align 8, !tbaa !3
-  %300 = zext i32 %280 to i64
-  %301 = shl nuw nsw i64 %300, 3
-  %302 = add nuw nsw i64 %301, 31
-  %303 = and i64 %302, 68719476728
-  %304 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %299, i64 0, i32 2, i32 1
-  %305 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %304, i64 %303) #37
-  %306 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %305, i64 1
-  %307 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %305, i64 2
-  %308 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %307 to %struct.TypeInfo**
-  %309 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %306 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %309, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %308, align 8, !tbaa !16
-  %310 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %305, i64 3
-  %311 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %310 to i32*
-  store i32 %280, i32* %311, align 8, !tbaa !18
-  %312 = bitcast %struct.ObjHeader** %296 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %307, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %312, align 8, !tbaa !3
-  %313 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
-  %314 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %313 to %struct.ObjHeader**
-  %315 = bitcast %struct.ObjHeader** %295 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %316 = bitcast %class.ObjHolder* %3 to i8*
-  %317 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %318 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %319 = bitcast %struct.FrameOverlay.6** %318 to i64*
-  %320 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %321 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %322 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %323 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %324 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %325 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %326 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %327 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %328 = bitcast %struct.ObjHeader** %294 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %329 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %307 to i64*
-  %330 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %305, i64 4
-  %wide.trip.count51 = zext i32 %280 to i64
+  %314 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %315 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %316 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %317 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %318 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %317 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %319 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %318 unordered, align 8, !tbaa !3
+  %320 = zext i32 %300 to i64
+  %321 = shl nuw nsw i64 %320, 3
+  %322 = add nuw nsw i64 %321, 31
+  %323 = and i64 %322, 68719476728
+  %324 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %319, i64 0, i32 2, i32 1
+  %325 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %324, i64 %323) #37
+  %326 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %325, i64 1
+  %327 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %325, i64 2
+  %328 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %327 to %struct.TypeInfo**
+  %329 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %326 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %329, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %328, align 8, !tbaa !16
+  %330 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %325, i64 3
+  %331 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %330 to i32*
+  store i32 %300, i32* %331, align 8, !tbaa !18
+  %332 = bitcast %struct.ObjHeader** %316 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %327, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %332, align 8, !tbaa !3
+  %333 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
+  %334 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %333 to %struct.ObjHeader**
+  %335 = bitcast %struct.ObjHeader** %315 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %336 = bitcast %class.ObjHolder* %3 to i8*
+  %337 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %338 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %339 = bitcast %struct.FrameOverlay.6** %338 to i64*
+  %340 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %341 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %342 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %343 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %344 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %345 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %346 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %347 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %348 = bitcast %struct.ObjHeader** %314 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %349 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %327 to i64*
+  %350 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %325, i64 4
+  %wide.trip.count52 = zext i32 %300 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %331 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %332 = and i8 %331, 1
-  %333 = icmp eq i8 %332, 0
-  br i1 %333, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %334
+  %351 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %352 = and i8 %351, 1
+  %353 = icmp eq i8 %352, 0
+  br i1 %353, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %354
 
-334:                                              ; preds = %while_loop.i
+354:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %334, %while_loop.i
-  %335 = load %struct.ObjHeader*, %struct.ObjHeader** %314, align 8
-  %336 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %335, i64 1
-  %337 = bitcast %struct.ObjHeader* %336 to i32*
-  %338 = load i32, i32* %337, align 8, !tbaa !18
-  %339 = zext i32 %338 to i64
-  %340 = icmp ult i64 %indvars.iv49, %339
-  br i1 %340, label %Kotlin_Array_get.exit.i, label %341
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %354, %while_loop.i
+  %355 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %334 unordered, align 8
+  %356 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %355, i64 1
+  %357 = bitcast %struct.ObjHeader* %356 to i32*
+  %358 = load atomic i32, i32* %357 unordered, align 8, !tbaa !18
+  %359 = zext i32 %358 to i64
+  %360 = icmp ult i64 %indvars.iv50, %359
+  br i1 %360, label %Kotlin_Array_get.exit.i, label %361
 
-341:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+361:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %342 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %335, i64 2
-  %343 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %342, i64 %indvars.iv49
-  %344 = bitcast %struct.ObjHeader* %343 to %struct.ObjHeader**
-  %345 = load %struct.ObjHeader*, %struct.ObjHeader** %344, align 8, !tbaa !3
-  store %struct.ObjHeader* %345, %struct.ObjHeader** %268, align 8, !tbaa !3
-  %346 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %345, i64 1
-  %347 = bitcast %struct.ObjHeader* %346 to i32*
-  %348 = load i32, i32* %347, align 4
-  %349 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %350 = icmp eq i32 %349, 2
-  br i1 %350, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %362 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %355, i64 2
+  %363 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %362, i64 %indvars.iv50
+  %364 = bitcast %struct.ObjHeader* %363 to %struct.ObjHeader**
+  %365 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %364 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %365, %struct.ObjHeader** %287, align 8, !tbaa !3
+  %366 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %365, i64 1
+  %367 = bitcast %struct.ObjHeader* %366 to i32*
+  %368 = load atomic i32, i32* %367 unordered, align 4
+  %369 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %370 = icmp eq i32 %369, 2
+  br i1 %370, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %351 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %352 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %351, i64 2
-  %353 = bitcast %struct.ObjHeader* %352 to %struct.ObjHeader**
-  %354 = load %struct.ObjHeader*, %struct.ObjHeader** %353, align 8, !tbaa !3
-  store %struct.ObjHeader* %354, %struct.ObjHeader** %269, align 8, !tbaa !3
-  %355 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %356 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %355 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %357 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %356, align 8, !tbaa !3
-  %358 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %357, i64 0, i32 2, i32 1
-  %359 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %358, i64 32) #37
-  %360 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %359, i64 1
-  %361 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %359, i64 2
-  %362 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %361 to %struct.ObjHeader*
-  %363 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %361 to %struct.TypeInfo**
-  %364 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %360 to i64*
-  store i64 0, i64* %364, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumStringWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %363, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %361, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %315, align 8, !tbaa !3
-  %365 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %359, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %365, align 8, !tbaa !3
-  %366 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %359, i64 4
-  %367 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %366 to i32*
-  %368 = trunc i64 %indvars.iv49 to i32
-  store i32 %368, i32* %367, align 8
-  %369 = bitcast %struct.ObjHeader* %354 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %370 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %369, i64 0, i32 3
-  %371 = load i32, i32* %370, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %316) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %317, align 8, !tbaa !61
-  %372 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %373 = bitcast %"class.kotlin::mm::ShadowStack"* %372 to i64*
-  %374 = load i64, i64* %373, align 8, !tbaa !7
-  store i64 %374, i64* %319, align 8, !tbaa !9
-  %375 = bitcast %"class.kotlin::mm::ShadowStack"* %372 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %375, align 8, !tbaa !7
-  store i32 0, i32* %320, align 8, !tbaa !12
-  store i32 4, i32* %321, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %362, %struct.ObjHeader** nonnull %317)
-          to label %376 unwind label %660
+  %371 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %372 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %371, i64 2
+  %373 = bitcast %struct.ObjHeader* %372 to %struct.ObjHeader**
+  %374 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %373 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %374, %struct.ObjHeader** %288, align 8, !tbaa !3
+  %375 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %376 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %375 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %377 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %376 unordered, align 8, !tbaa !3
+  %378 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %377, i64 0, i32 2, i32 1
+  %379 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %378, i64 32) #37
+  %380 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %379, i64 1
+  %381 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %379, i64 2
+  %382 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %381 to %struct.ObjHeader*
+  %383 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %381 to %struct.TypeInfo**
+  %384 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %380 to i64*
+  store i64 0, i64* %384, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumStringWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %383, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %381, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %335, align 8, !tbaa !3
+  %385 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %379, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %385, align 8, !tbaa !3
+  %386 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %379, i64 4
+  %387 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %386 to i32*
+  %388 = trunc i64 %indvars.iv50 to i32
+  store i32 %388, i32* %387, align 8
+  %389 = bitcast %struct.ObjHeader* %374 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %390 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %389, i64 0, i32 3
+  %391 = load atomic i32, i32* %390 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %336) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %337, align 8, !tbaa !60
+  %392 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %393 = bitcast %"class.kotlin::mm::ShadowStack"* %392 to i64*
+  %394 = load atomic i64, i64* %393 unordered, align 8, !tbaa !7
+  store i64 %394, i64* %339, align 8, !tbaa !9
+  %395 = bitcast %"class.kotlin::mm::ShadowStack"* %392 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %395, align 8, !tbaa !7
+  store i32 0, i32* %340, align 8, !tbaa !12
+  store i32 4, i32* %341, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %382, %struct.ObjHeader** nonnull %337)
+          to label %396 unwind label %682
 
-376:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %377 = load %struct.ObjHeader*, %struct.ObjHeader** %317, align 8, !tbaa !61
-  %378 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %377) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %317, align 8, !tbaa !3
-  %379 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %322)
-  %380 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 0
-  %381 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %382 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %381, i64 328
-  %383 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %382 to i32*
-  %384 = atomicrmw xchg i32* %383, i32 1 seq_cst, align 4
-  %385 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %380) #37
-  %386 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %381, null
-  br i1 %386, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %387
+396:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %397 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %337 unordered, align 8, !tbaa !60
+  %398 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %397) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %337, align 8, !tbaa !3
+  %399 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %342)
+  %400 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 0
+  %401 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %402 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %401, i64 328
+  %403 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %402 to i32*
+  %404 = atomicrmw xchg i32* %403, i32 1 seq_cst, align 4
+  %405 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %400) #37
+  %406 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %401, null
+  br i1 %406, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %407
 
-387:                                              ; preds = %376
-  %388 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %382 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %389 = atomicrmw xchg i32* %383, i32 %384 seq_cst, align 4
-  %390 = icmp eq i32 %389, 1
-  %391 = icmp eq i32 %384, 0
-  %392 = and i1 %391, %390
-  br i1 %392, label %393, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+407:                                              ; preds = %396
+  %408 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %402 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %409 = atomicrmw xchg i32* %403, i32 %404 seq_cst, align 4
+  %410 = icmp eq i32 %409, 1
+  %411 = icmp eq i32 %404, 0
+  %412 = and i1 %411, %410
+  br i1 %412, label %413, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-393:                                              ; preds = %387
-  %394 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %395 = and i8 %394, 1
-  %396 = icmp eq i8 %395, 0
-  br i1 %396, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %397
+413:                                              ; preds = %407
+  %414 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %415 = and i8 %414, 1
+  %416 = icmp eq i8 %415, 0
+  br i1 %416, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %417
 
-397:                                              ; preds = %393
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %388) #37
+417:                                              ; preds = %413
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %408) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %397, %393, %387, %376
-  %398 = sext i32 %348 to i64
-  %399 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 3, i32 0, i32 1
-  %400 = load i64, i64* %399, align 8, !tbaa !67
-  %401 = urem i64 %398, %400
-  %402 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 3, i32 0, i32 0
-  %403 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %402, align 8, !tbaa !72
-  %404 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %403, i64 %401
-  %405 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %404, align 8, !tbaa !3
-  %406 = icmp eq %"struct.std::__detail::_Hash_node_base"* %405, null
-  br i1 %406, label %.loopexit17, label %407
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %417, %413, %407, %396
+  %418 = sext i32 %368 to i64
+  %419 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 3, i32 0, i32 1
+  %420 = load atomic i64, i64* %419 unordered, align 8, !tbaa !67
+  %421 = urem i64 %418, %420
+  %422 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 3, i32 0, i32 0
+  %423 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %422 unordered, align 8, !tbaa !72
+  %424 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %423, i64 %421
+  %425 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %424 unordered, align 8, !tbaa !3
+  %426 = icmp eq %"struct.std::__detail::_Hash_node_base"* %425, null
+  br i1 %426, label %.loopexit18, label %427
 
-407:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %408 = bitcast %"struct.std::__detail::_Hash_node_base"* %405 to %"struct.std::__detail::_Hash_node.203"**
-  %409 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %408, align 8, !tbaa !73
-  %410 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %409, i64 0, i32 0, i32 1
-  %411 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %410 to i32*
-  %412 = load i32, i32* %411, align 4, !tbaa !74
-  %413 = icmp eq i32 %412, %348
-  br i1 %413, label %430, label %.preheader16
+427:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %428 = bitcast %"struct.std::__detail::_Hash_node_base"* %425 to %"struct.std::__detail::_Hash_node.203"**
+  %429 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %428 unordered, align 8, !tbaa !73
+  %430 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 1
+  %431 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %430 to i32*
+  %432 = load atomic i32, i32* %431 unordered, align 4, !tbaa !66
+  %433 = icmp eq i32 %432, %368
+  br i1 %433, label %450, label %.preheader17
 
-414:                                              ; preds = %421
-  %415 = icmp eq i32 %424, %348
-  br i1 %415, label %428, label %.preheader16
+434:                                              ; preds = %441
+  %435 = icmp eq i32 %444, %368
+  br i1 %435, label %448, label %.preheader17
 
-.preheader16:                                     ; preds = %414, %407
-  %416 = phi %"struct.std::__detail::_Hash_node.203"* [ %420, %414 ], [ %409, %407 ]
-  %417 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %416, i64 0, i32 0, i32 0, i32 0
-  %418 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !73
-  %419 = icmp eq %"struct.std::__detail::_Hash_node_base"* %418, null
-  %420 = bitcast %"struct.std::__detail::_Hash_node_base"* %418 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %419, label %.loopexit17, label %421
+.preheader17:                                     ; preds = %434, %427
+  %436 = phi %"struct.std::__detail::_Hash_node.203"* [ %440, %434 ], [ %429, %427 ]
+  %437 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %436, i64 0, i32 0, i32 0, i32 0
+  %438 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %437 unordered, align 8, !tbaa !73
+  %439 = icmp eq %"struct.std::__detail::_Hash_node_base"* %438, null
+  %440 = bitcast %"struct.std::__detail::_Hash_node_base"* %438 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %439, label %.loopexit18, label %441
 
-421:                                              ; preds = %.preheader16
-  %422 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %418, i64 1
-  %423 = bitcast %"struct.std::__detail::_Hash_node_base"* %422 to i32*
-  %424 = load i32, i32* %423, align 4, !tbaa !74
-  %425 = sext i32 %424 to i64
-  %426 = urem i64 %425, %400
-  %427 = icmp eq i64 %426, %401
-  br i1 %427, label %414, label %.loopexit17
+441:                                              ; preds = %.preheader17
+  %442 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %438, i64 1
+  %443 = bitcast %"struct.std::__detail::_Hash_node_base"* %442 to i32*
+  %444 = load atomic i32, i32* %443 unordered, align 4, !tbaa !66
+  %445 = sext i32 %444 to i64
+  %446 = urem i64 %445, %420
+  %447 = icmp eq i64 %446, %421
+  br i1 %447, label %434, label %.loopexit18
 
-428:                                              ; preds = %414
-  %429 = icmp eq %"struct.std::__detail::_Hash_node.203"* %416, null
-  br i1 %429, label %.loopexit17, label %432
+448:                                              ; preds = %434
+  %449 = icmp eq %"struct.std::__detail::_Hash_node.203"* %436, null
+  br i1 %449, label %.loopexit18, label %452
 
-430:                                              ; preds = %407
-  %431 = icmp eq %"struct.std::__detail::_Hash_node.203"* %409, null
-  br i1 %431, label %.loopexit17, label %432
+450:                                              ; preds = %427
+  %451 = icmp eq %"struct.std::__detail::_Hash_node.203"* %429, null
+  br i1 %451, label %.loopexit18, label %452
 
-432:                                              ; preds = %430, %428
-  %433 = phi %"struct.std::__detail::_Hash_node.203"* [ %420, %428 ], [ %409, %430 ]
-  %434 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %433, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %435 = bitcast i8* %434 to %class.Worker**
-  %436 = load %class.Worker*, %class.Worker** %435, align 8, !tbaa !75
-  %437 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %438 = icmp eq i8* %437, null
-  br i1 %438, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %439
+452:                                              ; preds = %450, %448
+  %453 = phi %"struct.std::__detail::_Hash_node.203"* [ %440, %448 ], [ %429, %450 ]
+  %454 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %453, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %455 = bitcast i8* %454 to %class.Worker**
+  %456 = load atomic %class.Worker*, %class.Worker** %455 unordered, align 8, !tbaa !74
+  %457 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %458 = icmp eq i8* %457, null
+  br i1 %458, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %459
 
-439:                                              ; preds = %432
-  %440 = bitcast i8* %437 to %"class.(anonymous namespace)::Future"*
-  %441 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 6
-  %442 = load i32, i32* %441, align 4, !tbaa !93
-  %443 = add nsw i32 %442, 1
-  store i32 %443, i32* %441, align 4, !tbaa !93
-  %444 = bitcast i8* %437 to i32*
-  store i32 1, i32* %444, align 8, !tbaa !100
-  %445 = getelementptr inbounds i8, i8* %437, i64 4
-  %446 = bitcast i8* %445 to i32*
-  store i32 %442, i32* %446, align 4, !tbaa !102
-  %447 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %448 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %447, i64 328
-  %449 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %448 to i32*
-  %450 = atomicrmw xchg i32* %449, i32 1 seq_cst, align 4
-  %451 = getelementptr inbounds i8, i8* %437, i64 16
-  %452 = bitcast i8* %451 to %union.pthread_mutex_t*
-  %453 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %452, %"struct.std::atomic"* null) #37
-  %454 = getelementptr inbounds i8, i8* %437, i64 56
-  %455 = bitcast i8* %454 to %union.pthread_cond_t*
-  %456 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %455, %"struct.std::atomic"* null) #37
-  %457 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %447, null
-  br i1 %457, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %458
+459:                                              ; preds = %452
+  %460 = bitcast i8* %457 to %"class.(anonymous namespace)::Future"*
+  %461 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 6
+  %462 = load atomic i32, i32* %461 unordered, align 4, !tbaa !91
+  %463 = add nsw i32 %462, 1
+  store i32 %463, i32* %461, align 4, !tbaa !91
+  %464 = bitcast i8* %457 to i32*
+  store i32 1, i32* %464, align 8, !tbaa !98
+  %465 = getelementptr inbounds i8, i8* %457, i64 4
+  %466 = bitcast i8* %465 to i32*
+  store i32 %462, i32* %466, align 4, !tbaa !100
+  %467 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %468 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %467, i64 328
+  %469 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %468 to i32*
+  %470 = atomicrmw xchg i32* %469, i32 1 seq_cst, align 4
+  %471 = getelementptr inbounds i8, i8* %457, i64 16
+  %472 = bitcast i8* %471 to %union.pthread_mutex_t*
+  %473 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %472, %"struct.std::atomic"* null) #37
+  %474 = getelementptr inbounds i8, i8* %457, i64 56
+  %475 = bitcast i8* %474 to %union.pthread_cond_t*
+  %476 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %475, %"struct.std::atomic"* null) #37
+  %477 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %467, null
+  br i1 %477, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %478
 
-458:                                              ; preds = %439
-  %459 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %448 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %460 = atomicrmw xchg i32* %449, i32 %450 seq_cst, align 4
-  %461 = icmp eq i32 %460, 1
-  %462 = icmp eq i32 %450, 0
-  %463 = and i1 %462, %461
-  br i1 %463, label %464, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+478:                                              ; preds = %459
+  %479 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %468 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %480 = atomicrmw xchg i32* %469, i32 %470 seq_cst, align 4
+  %481 = icmp eq i32 %480, 1
+  %482 = icmp eq i32 %470, 0
+  %483 = and i1 %482, %481
+  br i1 %483, label %484, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-464:                                              ; preds = %458
-  %465 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %466 = and i8 %465, 1
-  %467 = icmp eq i8 %466, 0
-  br i1 %467, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %468
+484:                                              ; preds = %478
+  %485 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %486 = and i8 %485, 1
+  %487 = icmp eq i8 %486, 0
+  br i1 %487, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %488
 
-468:                                              ; preds = %464
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %459) #37
+488:                                              ; preds = %484
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %479) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %468, %464, %458, %439, %432
-  %469 = phi %"class.(anonymous namespace)::Future"* [ null, %432 ], [ %440, %439 ], [ %440, %468 ], [ %440, %464 ], [ %440, %458 ]
-  %470 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %469, i64 0, i32 1
-  %471 = load i32, i32* %470, align 4, !tbaa !102
-  %472 = sext i32 %471 to i64
-  %473 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 1
-  %474 = load i64, i64* %473, align 8, !tbaa !103
-  %475 = urem i64 %472, %474
-  %476 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 0
-  %477 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %476, align 8, !tbaa !104
-  %478 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %477, i64 %475
-  %479 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %478, align 8, !tbaa !3
-  %480 = icmp eq %"struct.std::__detail::_Hash_node_base"* %479, null
-  br i1 %480, label %.loopexit15, label %481
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %488, %484, %478, %459, %452
+  %489 = phi %"class.(anonymous namespace)::Future"* [ null, %452 ], [ %460, %459 ], [ %460, %488 ], [ %460, %484 ], [ %460, %478 ]
+  %490 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %489, i64 0, i32 1
+  %491 = load atomic i32, i32* %490 unordered, align 4, !tbaa !100
+  %492 = sext i32 %491 to i64
+  %493 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 1
+  %494 = load atomic i64, i64* %493 unordered, align 8, !tbaa !101
+  %495 = urem i64 %492, %494
+  %496 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 0
+  %497 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %496 unordered, align 8, !tbaa !102
+  %498 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %497, i64 %495
+  %499 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498 unordered, align 8, !tbaa !3
+  %500 = icmp eq %"struct.std::__detail::_Hash_node_base"* %499, null
+  br i1 %500, label %.loopexit16, label %501
 
-481:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %482 = bitcast %"struct.std::__detail::_Hash_node_base"* %479 to %"struct.std::__detail::_Hash_node.203"**
-  %483 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %482, align 8, !tbaa !73
-  %484 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %483, i64 0, i32 0, i32 1
-  %485 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %484 to i32*
-  %486 = load i32, i32* %485, align 4, !tbaa !74
-  %487 = icmp eq i32 %471, %486
-  br i1 %487, label %504, label %.preheader14
+501:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %502 = bitcast %"struct.std::__detail::_Hash_node_base"* %499 to %"struct.std::__detail::_Hash_node.203"**
+  %503 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %502 unordered, align 8, !tbaa !73
+  %504 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %503, i64 0, i32 0, i32 1
+  %505 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %504 to i32*
+  %506 = load atomic i32, i32* %505 unordered, align 4, !tbaa !66
+  %507 = icmp eq i32 %491, %506
+  br i1 %507, label %524, label %.preheader15
 
-488:                                              ; preds = %495
-  %489 = icmp eq i32 %471, %498
-  br i1 %489, label %502, label %.preheader14
+508:                                              ; preds = %515
+  %509 = icmp eq i32 %491, %518
+  br i1 %509, label %522, label %.preheader15
 
-.preheader14:                                     ; preds = %488, %481
-  %490 = phi %"struct.std::__detail::_Hash_node.203"* [ %494, %488 ], [ %483, %481 ]
-  %491 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %490, i64 0, i32 0, i32 0, i32 0
-  %492 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %491, align 8, !tbaa !73
-  %493 = icmp eq %"struct.std::__detail::_Hash_node_base"* %492, null
-  %494 = bitcast %"struct.std::__detail::_Hash_node_base"* %492 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %493, label %.loopexit15, label %495
+.preheader15:                                     ; preds = %508, %501
+  %510 = phi %"struct.std::__detail::_Hash_node.203"* [ %514, %508 ], [ %503, %501 ]
+  %511 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %510, i64 0, i32 0, i32 0, i32 0
+  %512 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %511 unordered, align 8, !tbaa !73
+  %513 = icmp eq %"struct.std::__detail::_Hash_node_base"* %512, null
+  %514 = bitcast %"struct.std::__detail::_Hash_node_base"* %512 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %513, label %.loopexit16, label %515
 
-495:                                              ; preds = %.preheader14
-  %496 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %492, i64 1
-  %497 = bitcast %"struct.std::__detail::_Hash_node_base"* %496 to i32*
-  %498 = load i32, i32* %497, align 4, !tbaa !74
-  %499 = sext i32 %498 to i64
-  %500 = urem i64 %499, %474
-  %501 = icmp eq i64 %500, %475
-  br i1 %501, label %488, label %.loopexit15
+515:                                              ; preds = %.preheader15
+  %516 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %512, i64 1
+  %517 = bitcast %"struct.std::__detail::_Hash_node_base"* %516 to i32*
+  %518 = load atomic i32, i32* %517 unordered, align 4, !tbaa !66
+  %519 = sext i32 %518 to i64
+  %520 = urem i64 %519, %494
+  %521 = icmp eq i64 %520, %495
+  br i1 %521, label %508, label %.loopexit16
 
-502:                                              ; preds = %488
-  %503 = icmp eq %"struct.std::__detail::_Hash_node.203"* %490, null
-  br i1 %503, label %.loopexit15, label %613
+522:                                              ; preds = %508
+  %523 = icmp eq %"struct.std::__detail::_Hash_node.203"* %510, null
+  br i1 %523, label %.loopexit16, label %635
 
-504:                                              ; preds = %481
-  %505 = icmp eq %"struct.std::__detail::_Hash_node.203"* %483, null
-  br i1 %505, label %.loopexit15, label %613
+524:                                              ; preds = %501
+  %525 = icmp eq %"struct.std::__detail::_Hash_node.203"* %503, null
+  br i1 %525, label %.loopexit16, label %635
 
-.loopexit15:                                      ; preds = %504, %502, %495, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %506 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %507 = getelementptr inbounds i8, i8* %506, i64 8
-  %508 = bitcast i8* %507 to i32*
-  store i32 %471, i32* %508, align 8, !tbaa !105
-  %509 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 4
-  %510 = load i64, i64* %473, align 8, !tbaa !103
-  %511 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 3
-  %512 = load i64, i64* %511, align 8, !tbaa !107
-  %513 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %509, i64 %510, i64 %512, i64 1)
-          to label %514 unwind label %620
+.loopexit16:                                      ; preds = %524, %522, %515, %.preheader15, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %526 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %527 = bitcast i8* %526 to %"struct.std::__detail::_Hash_node_base"**
+  %528 = getelementptr inbounds i8, i8* %526, i64 8
+  %529 = bitcast i8* %528 to i32*
+  store i32 %491, i32* %529, align 8, !tbaa !103
+  %530 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 4
+  %531 = load atomic i64, i64* %493 unordered, align 8, !tbaa !101
+  %532 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 3
+  %533 = load atomic i64, i64* %532 unordered, align 8, !tbaa !105
+  %534 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %530, i64 %531, i64 %533, i64 1)
+          to label %535 unwind label %642
 
-514:                                              ; preds = %.loopexit15
-  %515 = extractvalue { i8, i64 } %513, 0
-  %516 = and i8 %515, 1
-  %517 = icmp eq i8 %516, 0
-  br i1 %517, label %518, label %520
+535:                                              ; preds = %.loopexit16
+  %536 = extractvalue { i8, i64 } %534, 0
+  %537 = and i8 %536, 1
+  %538 = icmp eq i8 %537, 0
+  br i1 %538, label %539, label %541
 
-518:                                              ; preds = %514
-  %519 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %476, align 8, !tbaa !104
-  br label %577
+539:                                              ; preds = %535
+  %540 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %496 unordered, align 8, !tbaa !102
+  br label %598
 
-520:                                              ; preds = %514
-  %521 = extractvalue { i8, i64 } %513, 1
-  %522 = icmp eq i64 %521, 1
-  br i1 %522, label %523, label %525, !prof !108, !misexpect !109
+541:                                              ; preds = %535
+  %542 = extractvalue { i8, i64 } %534, 1
+  %543 = icmp eq i64 %542, 1
+  br i1 %543, label %544, label %546, !prof !106, !misexpect !107
 
-523:                                              ; preds = %520
-  %524 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %524, align 8, !tbaa !110
-  br label %529
+544:                                              ; preds = %541
+  %545 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %545, align 8, !tbaa !108
+  br label %550
 
-525:                                              ; preds = %520
-  %526 = call noalias i8* @calloc(i64 %521, i64 8) #37
-  %527 = bitcast i8* %526 to %"struct.std::__detail::_Hash_node_base"**
-  %528 = shl i64 %521, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %526, i8 0, i64 %528, i1 false) #37
-  br label %529
+546:                                              ; preds = %541
+  %547 = call noalias i8* @calloc(i64 %542, i64 8) #37
+  %548 = bitcast i8* %547 to %"struct.std::__detail::_Hash_node_base"**
+  %549 = shl i64 %542, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %547, i8 0, i64 %549, i1 false) #37
+  br label %550
 
-529:                                              ; preds = %525, %523
-  %530 = phi %"struct.std::__detail::_Hash_node_base"** [ %524, %523 ], [ %527, %525 ]
-  %531 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 2
-  %532 = bitcast %"struct.std::__detail::_Hash_node_base"* %531 to %"struct.std::__detail::_Hash_node.203"**
-  %533 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %532, align 8, !tbaa !111
-  %534 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %531, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %534, align 8, !tbaa !111
-  %535 = icmp eq %"struct.std::__detail::_Hash_node.203"* %533, null
-  br i1 %535, label %.loopexit, label %536
+550:                                              ; preds = %546, %544
+  %551 = phi %"struct.std::__detail::_Hash_node_base"** [ %545, %544 ], [ %548, %546 ]
+  %552 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 2
+  %553 = bitcast %"struct.std::__detail::_Hash_node_base"* %552 to %"struct.std::__detail::_Hash_node.203"**
+  %554 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %553 unordered, align 8, !tbaa !109
+  %555 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %552, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %555, align 8, !tbaa !109
+  %556 = icmp eq %"struct.std::__detail::_Hash_node.203"* %554, null
+  br i1 %556, label %.loopexit, label %557
 
-536:                                              ; preds = %529
-  %537 = bitcast %"struct.std::__detail::_Hash_node_base"* %531 to i64*
-  br label %538
+557:                                              ; preds = %550
+  %558 = bitcast %"struct.std::__detail::_Hash_node_base"* %552 to i64*
+  br label %559
 
-538:                                              ; preds = %567, %536
-  %539 = phi %"struct.std::__detail::_Hash_node.203"* [ %533, %536 ], [ %542, %567 ]
-  %540 = phi i64 [ 0, %536 ], [ %568, %567 ]
-  %541 = bitcast %"struct.std::__detail::_Hash_node.203"* %539 to %"struct.std::__detail::_Hash_node.203"**
-  %542 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %541, align 8, !tbaa !73
-  %543 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %539, i64 0, i32 0, i32 1
-  %544 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %543 to i32*
-  %545 = load i32, i32* %544, align 4, !tbaa !74
-  %546 = sext i32 %545 to i64
-  %547 = urem i64 %546, %521
-  %548 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %530, i64 %547
-  %549 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %548, align 8, !tbaa !3
-  %550 = icmp eq %"struct.std::__detail::_Hash_node_base"* %549, null
-  br i1 %550, label %551, label %560
+559:                                              ; preds = %588, %557
+  %560 = phi %"struct.std::__detail::_Hash_node.203"* [ %554, %557 ], [ %563, %588 ]
+  %561 = phi i64 [ 0, %557 ], [ %589, %588 ]
+  %562 = bitcast %"struct.std::__detail::_Hash_node.203"* %560 to %"struct.std::__detail::_Hash_node.203"**
+  %563 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %562 unordered, align 8, !tbaa !73
+  %564 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %560, i64 0, i32 0, i32 1
+  %565 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %564 to i32*
+  %566 = load atomic i32, i32* %565 unordered, align 4, !tbaa !66
+  %567 = sext i32 %566 to i64
+  %568 = urem i64 %567, %542
+  %569 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %551, i64 %568
+  %570 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %569 unordered, align 8, !tbaa !3
+  %571 = icmp eq %"struct.std::__detail::_Hash_node_base"* %570, null
+  br i1 %571, label %572, label %581
 
-551:                                              ; preds = %538
-  %552 = load i64, i64* %537, align 8, !tbaa !111
-  %553 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %539, i64 0, i32 0, i32 0
-  %554 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %539, i64 0, i32 0, i32 0, i32 0
-  %555 = bitcast %"struct.std::__detail::_Hash_node.203"* %539 to i64*
-  store i64 %552, i64* %555, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %553, %"struct.std::__detail::_Hash_node_base"** %534, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %531, %"struct.std::__detail::_Hash_node_base"** %548, align 8, !tbaa !3
-  %556 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %554, align 8, !tbaa !73
-  %557 = icmp eq %"struct.std::__detail::_Hash_node_base"* %556, null
-  br i1 %557, label %567, label %558
+572:                                              ; preds = %559
+  %573 = load atomic i64, i64* %558 unordered, align 8, !tbaa !109
+  %574 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %560, i64 0, i32 0, i32 0
+  %575 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %560, i64 0, i32 0, i32 0, i32 0
+  %576 = bitcast %"struct.std::__detail::_Hash_node.203"* %560 to i64*
+  store i64 %573, i64* %576, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %574, %"struct.std::__detail::_Hash_node_base"** %555, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %552, %"struct.std::__detail::_Hash_node_base"** %569, align 8, !tbaa !3
+  %577 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %575 unordered, align 8, !tbaa !73
+  %578 = icmp eq %"struct.std::__detail::_Hash_node_base"* %577, null
+  br i1 %578, label %588, label %579
 
-558:                                              ; preds = %551
-  %559 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %530, i64 %540
-  store %"struct.std::__detail::_Hash_node_base"* %553, %"struct.std::__detail::_Hash_node_base"** %559, align 8, !tbaa !3
-  br label %567
+579:                                              ; preds = %572
+  %580 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %551, i64 %561
+  store %"struct.std::__detail::_Hash_node_base"* %574, %"struct.std::__detail::_Hash_node_base"** %580, align 8, !tbaa !3
+  br label %588
 
-560:                                              ; preds = %538
-  %561 = bitcast %"struct.std::__detail::_Hash_node_base"* %549 to i64*
-  %562 = load i64, i64* %561, align 8, !tbaa !73
-  %563 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %539, i64 0, i32 0, i32 0
-  %564 = bitcast %"struct.std::__detail::_Hash_node.203"* %539 to i64*
-  store i64 %562, i64* %564, align 8, !tbaa !73
-  %565 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %548, align 8, !tbaa !3
-  %566 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %565, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %563, %"struct.std::__detail::_Hash_node_base"** %566, align 8, !tbaa !73
-  br label %567
+581:                                              ; preds = %559
+  %582 = bitcast %"struct.std::__detail::_Hash_node_base"* %570 to i64*
+  %583 = load atomic i64, i64* %582 unordered, align 8, !tbaa !73
+  %584 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %560, i64 0, i32 0, i32 0
+  %585 = bitcast %"struct.std::__detail::_Hash_node.203"* %560 to i64*
+  store i64 %583, i64* %585, align 8, !tbaa !73
+  %586 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %569 unordered, align 8, !tbaa !3
+  %587 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %586, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %584, %"struct.std::__detail::_Hash_node_base"** %587, align 8, !tbaa !73
+  br label %588
 
-567:                                              ; preds = %560, %558, %551
-  %568 = phi i64 [ %540, %560 ], [ %547, %551 ], [ %547, %558 ]
-  %569 = icmp eq %"struct.std::__detail::_Hash_node.203"* %542, null
-  br i1 %569, label %.loopexit, label %538
+588:                                              ; preds = %581, %579, %572
+  %589 = phi i64 [ %561, %581 ], [ %568, %572 ], [ %568, %579 ]
+  %590 = icmp eq %"struct.std::__detail::_Hash_node.203"* %563, null
+  br i1 %590, label %.loopexit, label %559
 
-.loopexit:                                        ; preds = %567, %529
-  %570 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %476, align 8, !tbaa !104
-  %571 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 5
-  %572 = icmp eq %"struct.std::__detail::_Hash_node_base"** %570, %571
-  br i1 %572, label %575, label %573
+.loopexit:                                        ; preds = %588, %550
+  %591 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %496 unordered, align 8, !tbaa !102
+  %592 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 5
+  %593 = icmp eq %"struct.std::__detail::_Hash_node_base"** %591, %592
+  br i1 %593, label %596, label %594
 
-573:                                              ; preds = %.loopexit
-  %574 = bitcast %"struct.std::__detail::_Hash_node_base"** %570 to i8*
-  call void @free(i8* %574) #37
-  br label %575
+594:                                              ; preds = %.loopexit
+  %595 = bitcast %"struct.std::__detail::_Hash_node_base"** %591 to i8*
+  call void @free(i8* %595) #37
+  br label %596
 
-575:                                              ; preds = %573, %.loopexit
-  store i64 %521, i64* %473, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %530, %"struct.std::__detail::_Hash_node_base"*** %476, align 8, !tbaa !104
-  %576 = urem i64 %472, %521
-  br label %577
+596:                                              ; preds = %594, %.loopexit
+  store i64 %542, i64* %493, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %551, %"struct.std::__detail::_Hash_node_base"*** %496, align 8, !tbaa !102
+  %597 = urem i64 %492, %542
+  br label %598
 
-577:                                              ; preds = %575, %518
-  %578 = phi %"struct.std::__detail::_Hash_node_base"** [ %519, %518 ], [ %530, %575 ]
-  %579 = phi i64 [ %475, %518 ], [ %576, %575 ]
-  %580 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %578, i64 %579
-  %581 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %580, align 8, !tbaa !3
-  %582 = icmp eq %"struct.std::__detail::_Hash_node_base"* %581, null
-  br i1 %582, label %589, label %583
+598:                                              ; preds = %596, %539
+  %599 = phi %"struct.std::__detail::_Hash_node_base"** [ %540, %539 ], [ %551, %596 ]
+  %600 = phi i64 [ %495, %539 ], [ %597, %596 ]
+  %601 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %599, i64 %600
+  %602 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %601 unordered, align 8, !tbaa !3
+  %603 = icmp eq %"struct.std::__detail::_Hash_node_base"* %602, null
+  br i1 %603, label %610, label %604
 
-583:                                              ; preds = %577
-  %584 = bitcast %"struct.std::__detail::_Hash_node_base"* %581 to i64*
-  %585 = load i64, i64* %584, align 8, !tbaa !73
-  %586 = bitcast i8* %506 to i64*
-  store i64 %585, i64* %586, align 8, !tbaa !73
-  %587 = bitcast %"struct.std::__detail::_Hash_node_base"** %580 to i8***
-  %588 = load i8**, i8*** %587, align 8, !tbaa !3
-  store i8* %506, i8** %588, align 8, !tbaa !73
-  br label %609
+604:                                              ; preds = %598
+  %605 = bitcast %"struct.std::__detail::_Hash_node_base"* %602 to i64*
+  %606 = load atomic i64, i64* %605 unordered, align 8, !tbaa !73
+  %607 = bitcast i8* %526 to i64*
+  store i64 %606, i64* %607, align 8, !tbaa !73
+  %608 = bitcast %"struct.std::__detail::_Hash_node_base"** %601 to i8***
+  %609 = load atomic i8**, i8*** %608 unordered, align 8, !tbaa !3
+  store i8* %526, i8** %609, align 8, !tbaa !73
+  br label %631
 
-589:                                              ; preds = %577
-  %590 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %379, i64 0, i32 2, i32 0, i32 2
-  %591 = bitcast %"struct.std::__detail::_Hash_node_base"* %590 to i64*
-  %592 = load i64, i64* %591, align 8, !tbaa !111
-  %593 = bitcast i8* %506 to i64*
-  store i64 %592, i64* %593, align 8, !tbaa !73
-  %594 = bitcast %"struct.std::__detail::_Hash_node_base"* %590 to i8**
-  store i8* %506, i8** %594, align 8, !tbaa !111
-  %595 = icmp eq i64 %592, 0
-  br i1 %595, label %606, label %596
+610:                                              ; preds = %598
+  %611 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %399, i64 0, i32 2, i32 0, i32 2
+  %612 = bitcast %"struct.std::__detail::_Hash_node_base"* %611 to i64*
+  %613 = load atomic i64, i64* %612 unordered, align 8, !tbaa !109
+  %614 = bitcast i8* %526 to i64*
+  store i64 %613, i64* %614, align 8, !tbaa !73
+  %615 = bitcast %"struct.std::__detail::_Hash_node_base"* %611 to i8**
+  store i8* %526, i8** %615, align 8, !tbaa !109
+  %616 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %527 unordered, align 8, !tbaa !73
+  %617 = icmp eq %"struct.std::__detail::_Hash_node_base"* %616, null
+  br i1 %617, label %628, label %618
 
-596:                                              ; preds = %589
-  %.cast.i.i.i.i = inttoptr i64 %592 to %"struct.std::__detail::_Hash_node_base"*
-  %597 = load i64, i64* %473, align 8, !tbaa !103
-  %598 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %599 = bitcast %"struct.std::__detail::_Hash_node_base"* %598 to i32*
-  %600 = load i32, i32* %599, align 4, !tbaa !74
-  %601 = sext i32 %600 to i64
-  %602 = urem i64 %601, %597
-  %603 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %578, i64 %602
-  %604 = bitcast %"struct.std::__detail::_Hash_node_base"** %603 to i8**
-  store i8* %506, i8** %604, align 8, !tbaa !3
-  %605 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %476, align 8, !tbaa !104
-  br label %606
+618:                                              ; preds = %610
+  %619 = load atomic i64, i64* %493 unordered, align 8, !tbaa !101
+  %620 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %616, i64 1
+  %621 = bitcast %"struct.std::__detail::_Hash_node_base"* %620 to i32*
+  %622 = load atomic i32, i32* %621 unordered, align 4, !tbaa !66
+  %623 = sext i32 %622 to i64
+  %624 = urem i64 %623, %619
+  %625 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %599, i64 %624
+  %626 = bitcast %"struct.std::__detail::_Hash_node_base"** %625 to i8**
+  store i8* %526, i8** %626, align 8, !tbaa !3
+  %627 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %496 unordered, align 8, !tbaa !102
+  br label %628
 
-606:                                              ; preds = %596, %589
-  %607 = phi %"struct.std::__detail::_Hash_node_base"** [ %578, %589 ], [ %605, %596 ]
-  %608 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %607, i64 %579
-  store %"struct.std::__detail::_Hash_node_base"* %590, %"struct.std::__detail::_Hash_node_base"** %608, align 8, !tbaa !3
-  br label %609
+628:                                              ; preds = %618, %610
+  %629 = phi %"struct.std::__detail::_Hash_node_base"** [ %599, %610 ], [ %627, %618 ]
+  %630 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %629, i64 %600
+  store %"struct.std::__detail::_Hash_node_base"* %611, %"struct.std::__detail::_Hash_node_base"** %630, align 8, !tbaa !3
+  br label %631
 
-609:                                              ; preds = %606, %583
-  %610 = load i64, i64* %511, align 8, !tbaa !107
-  %611 = add i64 %610, 1
-  store i64 %611, i64* %511, align 8, !tbaa !107
-  %612 = bitcast i8* %507 to %"struct.std::pair.50"*
-  br label %617
+631:                                              ; preds = %628, %604
+  %632 = load atomic i64, i64* %532 unordered, align 8, !tbaa !105
+  %633 = add i64 %632, 1
+  store i64 %633, i64* %532, align 8, !tbaa !105
+  %634 = bitcast i8* %528 to %"struct.std::pair.50"*
+  br label %639
 
-613:                                              ; preds = %504, %502
-  %614 = phi %"struct.std::__detail::_Hash_node.203"* [ %483, %504 ], [ %494, %502 ]
-  %615 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %614, i64 0, i32 0, i32 1
-  %616 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %615 to %"struct.std::pair.50"*
-  br label %617
+635:                                              ; preds = %524, %522
+  %636 = phi %"struct.std::__detail::_Hash_node.203"* [ %503, %524 ], [ %514, %522 ]
+  %637 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %636, i64 0, i32 0, i32 1
+  %638 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %637 to %"struct.std::pair.50"*
+  br label %639
 
-617:                                              ; preds = %613, %609
-  %618 = phi %"struct.std::pair.50"* [ %616, %613 ], [ %612, %609 ]
-  %619 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %618, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %469, %"class.(anonymous namespace)::Future"** %619, align 8, !tbaa !3
-  store i32 2, i32* %323, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %324, align 8, !tbaa.struct !112
-  store i8* %378, i8** %325, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %469, %"class.(anonymous namespace)::Future"** %326, align 8, !tbaa.struct !112
-  store i32 %371, i32* %327, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %436, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
-  br label %.loopexit17
+639:                                              ; preds = %635, %631
+  %640 = phi %"struct.std::pair.50"* [ %638, %635 ], [ %634, %631 ]
+  %641 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %640, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %489, %"class.(anonymous namespace)::Future"** %641, align 8, !tbaa !3
+  store i32 2, i32* %343, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %344, align 8, !tbaa.struct !110
+  store i8* %398, i8** %345, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %489, %"class.(anonymous namespace)::Future"** %346, align 8, !tbaa.struct !110
+  store i32 %391, i32* %347, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %456, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+  br label %.loopexit18
 
-620:                                              ; preds = %.loopexit15
-  %621 = landingpad { i8*, i32 }
+642:                                              ; preds = %.loopexit16
+  %643 = landingpad { i8*, i32 }
           cleanup
-  %622 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %623 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %622, i64 328
-  %624 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %623 to i32*
-  %625 = atomicrmw xchg i32* %624, i32 1 seq_cst, align 4
-  %626 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %380) #37
-  %627 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %622, null
-  br i1 %627, label %.body.i.i.i, label %646
+  %644 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %645 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %644, i64 328
+  %646 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %645 to i32*
+  %647 = atomicrmw xchg i32* %646, i32 1 seq_cst, align 4
+  %648 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %400) #37
+  %649 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %644, null
+  br i1 %649, label %.body.i.i.i, label %668
 
-.loopexit17:                                      ; preds = %617, %430, %428, %421, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %628 = phi %"class.(anonymous namespace)::Future"* [ %469, %617 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %428 ], [ null, %430 ], [ null, %.preheader16 ], [ null, %421 ]
-  %629 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %630 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %629, i64 328
-  %631 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %630 to i32*
-  %632 = atomicrmw xchg i32* %631, i32 1 seq_cst, align 4
-  %633 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %380) #37
-  %634 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %629, null
-  br i1 %634, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %635
+.loopexit18:                                      ; preds = %639, %450, %448, %441, %.preheader17, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %650 = phi %"class.(anonymous namespace)::Future"* [ %489, %639 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %448 ], [ null, %450 ], [ null, %.preheader17 ], [ null, %441 ]
+  %651 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %652 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %651, i64 328
+  %653 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %652 to i32*
+  %654 = atomicrmw xchg i32* %653, i32 1 seq_cst, align 4
+  %655 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %400) #37
+  %656 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %651, null
+  br i1 %656, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %657
 
-635:                                              ; preds = %.loopexit17
-  %636 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %630 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %637 = atomicrmw xchg i32* %631, i32 %632 seq_cst, align 4
-  %638 = icmp eq i32 %637, 1
-  %639 = icmp eq i32 %632, 0
-  %640 = and i1 %639, %638
-  br i1 %640, label %641, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+657:                                              ; preds = %.loopexit18
+  %658 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %652 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %659 = atomicrmw xchg i32* %653, i32 %654 seq_cst, align 4
+  %660 = icmp eq i32 %659, 1
+  %661 = icmp eq i32 %654, 0
+  %662 = and i1 %661, %660
+  br i1 %662, label %663, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-641:                                              ; preds = %635
-  %642 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %643 = and i8 %642, 1
-  %644 = icmp eq i8 %643, 0
-  br i1 %644, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %645
+663:                                              ; preds = %657
+  %664 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %665 = and i8 %664, 1
+  %666 = icmp eq i8 %665, 0
+  br i1 %666, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %667
 
-645:                                              ; preds = %641
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %636) #37
+667:                                              ; preds = %663
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %658) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-646:                                              ; preds = %620
-  %647 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %623 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %648 = atomicrmw xchg i32* %624, i32 %625 seq_cst, align 4
-  %649 = icmp eq i32 %648, 1
-  %650 = icmp eq i32 %625, 0
-  %651 = and i1 %650, %649
-  br i1 %651, label %652, label %.body.i.i.i
+668:                                              ; preds = %642
+  %669 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %645 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %670 = atomicrmw xchg i32* %646, i32 %647 seq_cst, align 4
+  %671 = icmp eq i32 %670, 1
+  %672 = icmp eq i32 %647, 0
+  %673 = and i1 %672, %671
+  br i1 %673, label %674, label %.body.i.i.i
 
-652:                                              ; preds = %646
-  %653 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %654 = and i8 %653, 1
-  %655 = icmp eq i8 %654, 0
-  br i1 %655, label %.body.i.i.i, label %656
+674:                                              ; preds = %668
+  %675 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %676 = and i8 %675, 1
+  %677 = icmp eq i8 %676, 0
+  br i1 %677, label %.body.i.i.i, label %678
 
-656:                                              ; preds = %652
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %647) #37
+678:                                              ; preds = %674
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %669) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %645, %641, %635, %.loopexit17
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %322)
-  %657 = icmp eq %"class.(anonymous namespace)::Future"* %628, null
-  br i1 %657, label %658, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %667, %663, %657, %.loopexit18
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %342)
+  %679 = icmp eq %"class.(anonymous namespace)::Future"* %650, null
+  br i1 %679, label %680, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-658:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+680:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %659 unwind label %662
+          to label %681 unwind label %684
 
-659:                                              ; preds = %658
+681:                                              ; preds = %680
   unreachable
 
-660:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %661 = landingpad { i8*, i32 }
+682:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %683 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-662:                                              ; preds = %658
-  %663 = landingpad { i8*, i32 }
+684:                                              ; preds = %680
+  %685 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %662, %660, %656, %652, %646, %620
-  %664 = phi { i8*, i32 } [ %661, %660 ], [ %663, %662 ], [ %621, %646 ], [ %621, %652 ], [ %621, %656 ], [ %621, %620 ]
-  %665 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %666 = load i64, i64* %319, align 8, !tbaa !9
-  %667 = bitcast %"class.kotlin::mm::ShadowStack"* %665 to i64*
-  store i64 %666, i64* %667, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %316) #37
-  resume { i8*, i32 } %664
+.body.i.i.i:                                      ; preds = %684, %682, %678, %674, %668, %642
+  %686 = phi { i8*, i32 } [ %683, %682 ], [ %685, %684 ], [ %643, %668 ], [ %643, %674 ], [ %643, %678 ], [ %643, %642 ]
+  %687 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %688 = load atomic i64, i64* %339 unordered, align 8, !tbaa !9
+  %689 = bitcast %"class.kotlin::mm::ShadowStack"* %687 to i64*
+  store i64 %688, i64* %689, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %336) #37
+  resume { i8*, i32 } %686
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %668 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %628, i64 0, i32 1
-  %669 = load i32, i32* %668, align 4, !tbaa !102
-  %670 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %671 = load i64, i64* %319, align 8, !tbaa !9
-  %672 = bitcast %"class.kotlin::mm::ShadowStack"* %670 to i64*
-  store i64 %671, i64* %672, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %316) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %196)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %196, i8 0, i32 32, i1 immarg false) #49
-  %673 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %674 = bitcast %"class.kotlin::mm::ShadowStack"* %673 to i64*
-  %675 = load i64, i64* %674, align 8, !tbaa !7
-  store i64 %675, i64* %200, align 8, !tbaa !9
-  %676 = bitcast %"class.kotlin::mm::ShadowStack"* %673 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %676, align 8, !tbaa !7
-  store i32 0, i32* %202, align 8, !tbaa !12
-  store i32 4, i32* %203, align 4, !tbaa !13
-  %677 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %678 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %677 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %679 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %678, align 8, !tbaa !3
-  %680 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %679, i64 0, i32 2, i32 1
-  %681 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %680, i64 24) #37
-  %682 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %681, i64 1
-  %683 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %681, i64 2
-  %684 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683 to %struct.TypeInfo**
-  %685 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %682 to i64*
-  store i64 0, i64* %685, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %684, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %204, align 8, !tbaa !3
-  %686 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %681, i64 3
-  %687 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %686 to i32*
-  store i32 %669, i32* %687, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %328, align 8, !tbaa !3
-  %688 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %689 = load i64, i64* %200, align 8, !tbaa !9
-  %690 = bitcast %"class.kotlin::mm::ShadowStack"* %688 to i64*
-  store i64 %689, i64* %690, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %196)
-  %691 = load i32, i32* %311, align 8, !tbaa !18
-  %692 = zext i32 %691 to i64
-  %693 = icmp ult i64 %indvars.iv49, %692
-  br i1 %693, label %Kotlin_Array_set.exit.i, label %694
+  %690 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %650, i64 0, i32 1
+  %691 = load atomic i32, i32* %690 unordered, align 4, !tbaa !100
+  %692 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %693 = load atomic i64, i64* %339 unordered, align 8, !tbaa !9
+  %694 = bitcast %"class.kotlin::mm::ShadowStack"* %692 to i64*
+  store i64 %693, i64* %694, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %336) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %214)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %214, i8 0, i32 32, i1 immarg false) #49
+  %695 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %696 = bitcast %"class.kotlin::mm::ShadowStack"* %695 to i64*
+  %697 = load atomic i64, i64* %696 unordered, align 8, !tbaa !7
+  store i64 %697, i64* %218, align 8, !tbaa !9
+  %698 = bitcast %"class.kotlin::mm::ShadowStack"* %695 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i13, %struct.ObjHeader*** %698, align 8, !tbaa !7
+  store i32 0, i32* %220, align 8, !tbaa !12
+  store i32 4, i32* %221, align 4, !tbaa !13
+  %699 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %700 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %699 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %701 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %700 unordered, align 8, !tbaa !3
+  %702 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %701, i64 0, i32 2, i32 1
+  %703 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %702, i64 24) #37
+  %704 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %703, i64 1
+  %705 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %703, i64 2
+  %706 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %705 to %struct.TypeInfo**
+  %707 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %704 to i64*
+  store i64 0, i64* %707, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %706, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %705, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %222, align 8, !tbaa !3
+  %708 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %703, i64 3
+  %709 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %708 to i32*
+  store i32 %691, i32* %709, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %705, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %348, align 8, !tbaa !3
+  %710 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %711 = load atomic i64, i64* %218 unordered, align 8, !tbaa !9
+  %712 = bitcast %"class.kotlin::mm::ShadowStack"* %710 to i64*
+  store i64 %711, i64* %712, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %214)
+  %713 = load atomic i32, i32* %331 unordered, align 8, !tbaa !18
+  %714 = zext i32 %713 to i64
+  %715 = icmp ult i64 %indvars.iv50, %714
+  br i1 %715, label %Kotlin_Array_set.exit.i, label %716
 
-694:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+716:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %695 = load atomic volatile i64, i64* %329 monotonic, align 8
-  %696 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %330, i64 %indvars.iv49
-  %697 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %696, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %697, align 8, !tbaa !3
-  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
+  %717 = load atomic volatile i64, i64* %349 monotonic, align 8
+  %718 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %350, i64 %indvars.iv50
+  %719 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %718, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %705, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %719, align 8, !tbaa !3
+  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
   br label %loop_check.i
 
 loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
-  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
-  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
-  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i
+  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
+  %exitcond53.not = icmp eq i64 %indvars.iv50, %wide.trip.count52
+  br i1 %exitcond53.not, label %loop_exit.i, label %while_loop.i
 
 loop_exit.i:                                      ; preds = %loop_check.i
-  %698 = load i32, i32* %311, align 8, !tbaa !18
-  %699 = icmp sgt i32 %698, 0
-  %smax = select i1 %699, i32 %698, i32 0
+  %720 = load atomic i32, i32* %331 unordered, align 8, !tbaa !18
+  %721 = icmp sgt i32 %720, 0
+  %smax = select i1 %721, i32 %720, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %700 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %701 = and i8 %700, 1
-  %702 = icmp eq i8 %701, 0
-  br i1 %702, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %703
+  %722 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %723 = and i8 %722, 1
+  %724 = icmp eq i8 %723, 0
+  br i1 %724, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %725
 
-703:                                              ; preds = %while_loop18.i
+725:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %703, %while_loop18.i
-  %704 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %330, i64 %indvars.iv
-  %705 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %704 to %struct.ObjHeader**
-  %706 = load %struct.ObjHeader*, %struct.ObjHeader** %705, align 8, !tbaa !3
-  store %struct.ObjHeader* %706, %struct.ObjHeader** %270, align 8, !tbaa !3
-  %707 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %706, i64 1
-  %708 = bitcast %struct.ObjHeader* %707 to i32*
-  %709 = load i32, i32* %708, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %725, %while_loop18.i
+  %726 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %350, i64 %indvars.iv
+  %727 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %726 to %struct.ObjHeader**
+  %728 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %727 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %728, %struct.ObjHeader** %289, align 8, !tbaa !3
+  %729 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %728, i64 1
+  %730 = bitcast %struct.ObjHeader* %729 to i32*
+  %731 = load atomic i32, i32* %730 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %196)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %196, i8 0, i32 32, i1 immarg false) #49
-  %710 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %711 = bitcast %"class.kotlin::mm::ShadowStack"* %710 to i64*
-  %712 = load i64, i64* %711, align 8, !tbaa !7
-  store i64 %712, i64* %200, align 8, !tbaa !9
-  %713 = bitcast %"class.kotlin::mm::ShadowStack"* %710 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %713, align 8, !tbaa !7
-  store i32 0, i32* %202, align 8, !tbaa !12
-  store i32 4, i32* %203, align 4, !tbaa !13
-  %714 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %715 = icmp eq i32 %714, 2
-  br i1 %715, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %214)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %214, i8 0, i32 32, i1 immarg false) #49
+  %732 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %733 = bitcast %"class.kotlin::mm::ShadowStack"* %732 to i64*
+  %734 = load atomic i64, i64* %733 unordered, align 8, !tbaa !7
+  store i64 %734, i64* %218, align 8, !tbaa !9
+  %735 = bitcast %"class.kotlin::mm::ShadowStack"* %732 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i13, %struct.ObjHeader*** %735, align 8, !tbaa !7
+  store i32 0, i32* %220, align 8, !tbaa !12
+  store i32 4, i32* %221, align 4, !tbaa !13
+  %736 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %737 = icmp eq i32 %736, 2
+  br i1 %737, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %716 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %717 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %716, %struct.ObjHeader** nonnull %197)
-  store %struct.ObjHeader* %717, %struct.ObjHeader** %197, align 8, !tbaa !3
-  %718 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %719 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %718, i64 0, i32 0
-  %720 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %721 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %720, i64 328
-  %722 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %721 to i32*
-  %723 = atomicrmw xchg i32* %722, i32 1 seq_cst, align 4
-  %724 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %719) #37
-  %725 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %720, null
-  br i1 %725, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %726
+  %738 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %739 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %738, %struct.ObjHeader** nonnull %215)
+  store %struct.ObjHeader* %739, %struct.ObjHeader** %215, align 8, !tbaa !3
+  %740 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %741 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %740, i64 0, i32 0
+  %742 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %743 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %742, i64 328
+  %744 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %743 to i32*
+  %745 = atomicrmw xchg i32* %744, i32 1 seq_cst, align 4
+  %746 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %741) #37
+  %747 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %742, null
+  br i1 %747, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %748
 
-726:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %727 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %721 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %728 = atomicrmw xchg i32* %722, i32 %723 seq_cst, align 4
-  %729 = icmp eq i32 %728, 1
-  %730 = icmp eq i32 %723, 0
-  %731 = and i1 %730, %729
-  br i1 %731, label %732, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+748:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %749 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %743 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %750 = atomicrmw xchg i32* %744, i32 %745 seq_cst, align 4
+  %751 = icmp eq i32 %750, 1
+  %752 = icmp eq i32 %745, 0
+  %753 = and i1 %752, %751
+  br i1 %753, label %754, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-732:                                              ; preds = %726
-  %733 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %734 = and i8 %733, 1
-  %735 = icmp eq i8 %734, 0
-  br i1 %735, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %736
+754:                                              ; preds = %748
+  %755 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %756 = and i8 %755, 1
+  %757 = icmp eq i8 %756, 0
+  br i1 %757, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %758
 
-736:                                              ; preds = %732
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %727) #37
+758:                                              ; preds = %754
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %749) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %736, %732, %726, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %737 = sext i32 %709 to i64
-  %738 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %718, i64 0, i32 2, i32 0, i32 1
-  %739 = load i64, i64* %738, align 8, !tbaa !103
-  %740 = urem i64 %737, %739
-  %741 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %718, i64 0, i32 2, i32 0, i32 0
-  %742 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %741, align 8, !tbaa !104
-  %743 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %742, i64 %740
-  %744 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %743, align 8, !tbaa !3
-  %745 = icmp eq %"struct.std::__detail::_Hash_node_base"* %744, null
-  br i1 %745, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %746
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %758, %754, %748, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %759 = sext i32 %731 to i64
+  %760 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %740, i64 0, i32 2, i32 0, i32 1
+  %761 = load atomic i64, i64* %760 unordered, align 8, !tbaa !101
+  %762 = urem i64 %759, %761
+  %763 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %740, i64 0, i32 2, i32 0, i32 0
+  %764 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %763 unordered, align 8, !tbaa !102
+  %765 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %764, i64 %762
+  %766 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %765 unordered, align 8, !tbaa !3
+  %767 = icmp eq %"struct.std::__detail::_Hash_node_base"* %766, null
+  br i1 %767, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %768
 
-746:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %747 = bitcast %"struct.std::__detail::_Hash_node_base"* %744 to %"struct.std::__detail::_Hash_node.203"**
-  %748 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %747, align 8, !tbaa !73
-  %749 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %748, i64 0, i32 0, i32 1
-  %750 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %749 to i32*
-  %751 = load i32, i32* %750, align 4, !tbaa !74
-  %752 = icmp eq i32 %751, %709
-  br i1 %752, label %769, label %.preheader
+768:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %769 = bitcast %"struct.std::__detail::_Hash_node_base"* %766 to %"struct.std::__detail::_Hash_node.203"**
+  %770 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %769 unordered, align 8, !tbaa !73
+  %771 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %770, i64 0, i32 0, i32 1
+  %772 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %771 to i32*
+  %773 = load atomic i32, i32* %772 unordered, align 4, !tbaa !66
+  %774 = icmp eq i32 %773, %731
+  br i1 %774, label %791, label %.preheader
 
-753:                                              ; preds = %760
-  %754 = icmp eq i32 %763, %709
-  br i1 %754, label %767, label %.preheader
+775:                                              ; preds = %782
+  %776 = icmp eq i32 %785, %731
+  br i1 %776, label %789, label %.preheader
 
-.preheader:                                       ; preds = %753, %746
-  %755 = phi %"struct.std::__detail::_Hash_node.203"* [ %759, %753 ], [ %748, %746 ]
-  %756 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %755, i64 0, i32 0, i32 0, i32 0
-  %757 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %756, align 8, !tbaa !73
-  %758 = icmp eq %"struct.std::__detail::_Hash_node_base"* %757, null
-  %759 = bitcast %"struct.std::__detail::_Hash_node_base"* %757 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %758, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %760
+.preheader:                                       ; preds = %775, %768
+  %777 = phi %"struct.std::__detail::_Hash_node.203"* [ %781, %775 ], [ %770, %768 ]
+  %778 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %777, i64 0, i32 0, i32 0, i32 0
+  %779 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %778 unordered, align 8, !tbaa !73
+  %780 = icmp eq %"struct.std::__detail::_Hash_node_base"* %779, null
+  %781 = bitcast %"struct.std::__detail::_Hash_node_base"* %779 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %780, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %782
 
-760:                                              ; preds = %.preheader
-  %761 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %757, i64 1
-  %762 = bitcast %"struct.std::__detail::_Hash_node_base"* %761 to i32*
-  %763 = load i32, i32* %762, align 4, !tbaa !74
-  %764 = sext i32 %763 to i64
-  %765 = urem i64 %764, %739
-  %766 = icmp eq i64 %765, %740
-  br i1 %766, label %753, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+782:                                              ; preds = %.preheader
+  %783 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %779, i64 1
+  %784 = bitcast %"struct.std::__detail::_Hash_node_base"* %783 to i32*
+  %785 = load atomic i32, i32* %784 unordered, align 4, !tbaa !66
+  %786 = sext i32 %785 to i64
+  %787 = urem i64 %786, %761
+  %788 = icmp eq i64 %787, %762
+  br i1 %788, label %775, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-767:                                              ; preds = %753
-  %768 = icmp eq %"struct.std::__detail::_Hash_node.203"* %755, null
-  br i1 %768, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %771
+789:                                              ; preds = %775
+  %790 = icmp eq %"struct.std::__detail::_Hash_node.203"* %777, null
+  br i1 %790, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %793
 
-769:                                              ; preds = %746
-  %770 = icmp eq %"struct.std::__detail::_Hash_node.203"* %748, null
-  br i1 %770, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %771
+791:                                              ; preds = %768
+  %792 = icmp eq %"struct.std::__detail::_Hash_node.203"* %770, null
+  br i1 %792, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %793
 
-771:                                              ; preds = %769, %767
-  %772 = phi %"struct.std::__detail::_Hash_node.203"* [ %759, %767 ], [ %748, %769 ]
-  %773 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %772, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %774 = bitcast i8* %773 to %"class.(anonymous namespace)::Future"**
-  %775 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %774, align 8, !tbaa !114
-  %776 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %775, i64 0, i32 3
-  %777 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %778 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %777, i64 328
-  %779 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %778 to i32*
-  %780 = atomicrmw xchg i32* %779, i32 1 seq_cst, align 4
-  %781 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %776) #37
-  %782 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %777, null
-  br i1 %782, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %783
+793:                                              ; preds = %791, %789
+  %794 = phi %"struct.std::__detail::_Hash_node.203"* [ %781, %789 ], [ %770, %791 ]
+  %795 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %794, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %796 = bitcast i8* %795 to %"class.(anonymous namespace)::Future"**
+  %797 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %796 unordered, align 8, !tbaa !112
+  %798 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %797, i64 0, i32 3
+  %799 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %800 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %799, i64 328
+  %801 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %800 to i32*
+  %802 = atomicrmw xchg i32* %801, i32 1 seq_cst, align 4
+  %803 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %798) #37
+  %804 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %799, null
+  br i1 %804, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %805
 
-783:                                              ; preds = %771
-  %784 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %778 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %785 = atomicrmw xchg i32* %779, i32 %780 seq_cst, align 4
-  %786 = icmp eq i32 %785, 1
-  %787 = icmp eq i32 %780, 0
-  %788 = and i1 %787, %786
-  br i1 %788, label %789, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+805:                                              ; preds = %793
+  %806 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %800 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %807 = atomicrmw xchg i32* %801, i32 %802 seq_cst, align 4
+  %808 = icmp eq i32 %807, 1
+  %809 = icmp eq i32 %802, 0
+  %810 = and i1 %809, %808
+  br i1 %810, label %811, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-789:                                              ; preds = %783
-  %790 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %791 = and i8 %790, 1
-  %792 = icmp eq i8 %791, 0
-  br i1 %792, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %793
+811:                                              ; preds = %805
+  %812 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %813 = and i8 %812, 1
+  %814 = icmp eq i8 %813, 0
+  br i1 %814, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %815
 
-793:                                              ; preds = %789
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %784) #37
+815:                                              ; preds = %811
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %806) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %793, %789, %783, %771
-  %794 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %775, i64 0, i32 0
-  %795 = load i32, i32* %794, align 8, !tbaa !100
-  %796 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %797 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %796, i64 328
-  %798 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %797 to i32*
-  %799 = atomicrmw xchg i32* %798, i32 1 seq_cst, align 4
-  %800 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %776) #37
-  %801 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %796, null
-  br i1 %801, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %802
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %815, %811, %805, %793
+  %816 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %797, i64 0, i32 0
+  %817 = load atomic i32, i32* %816 unordered, align 8, !tbaa !98
+  %818 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %819 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %818, i64 328
+  %820 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %819 to i32*
+  %821 = atomicrmw xchg i32* %820, i32 1 seq_cst, align 4
+  %822 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %798) #37
+  %823 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %818, null
+  br i1 %823, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %824
 
-802:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %803 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %797 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %804 = atomicrmw xchg i32* %798, i32 %799 seq_cst, align 4
-  %805 = icmp eq i32 %804, 1
-  %806 = icmp eq i32 %799, 0
-  %807 = and i1 %806, %805
-  br i1 %807, label %808, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+824:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %825 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %819 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %826 = atomicrmw xchg i32* %820, i32 %821 seq_cst, align 4
+  %827 = icmp eq i32 %826, 1
+  %828 = icmp eq i32 %821, 0
+  %829 = and i1 %828, %827
+  br i1 %829, label %830, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-808:                                              ; preds = %802
-  %809 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %810 = and i8 %809, 1
-  %811 = icmp eq i8 %810, 0
-  br i1 %811, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %812
+830:                                              ; preds = %824
+  %831 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %832 = and i8 %831, 1
+  %833 = icmp eq i8 %832, 0
+  br i1 %833, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %834
 
-812:                                              ; preds = %808
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %803) #37
+834:                                              ; preds = %830
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %825) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %812, %808, %802, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %769, %767, %760, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %813 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %767 ], [ 0, %769 ], [ %795, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %795, %812 ], [ %795, %808 ], [ %795, %802 ], [ 0, %.preheader ], [ 0, %760 ]
-  %814 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %815 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %814, i64 328
-  %816 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %815 to i32*
-  %817 = atomicrmw xchg i32* %816, i32 1 seq_cst, align 4
-  %818 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %719) #37
-  %819 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %814, null
-  br i1 %819, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %820
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %834, %830, %824, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %791, %789, %782, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %835 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %789 ], [ 0, %791 ], [ %817, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %817, %834 ], [ %817, %830 ], [ %817, %824 ], [ 0, %.preheader ], [ 0, %782 ]
+  %836 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %837 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %836, i64 328
+  %838 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %837 to i32*
+  %839 = atomicrmw xchg i32* %838, i32 1 seq_cst, align 4
+  %840 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %741) #37
+  %841 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %836, null
+  br i1 %841, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %842
 
-820:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %821 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %815 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %822 = atomicrmw xchg i32* %816, i32 %817 seq_cst, align 4
-  %823 = icmp eq i32 %822, 1
-  %824 = icmp eq i32 %817, 0
-  %825 = and i1 %824, %823
-  br i1 %825, label %826, label %Kotlin_Worker_stateOfFuture.exit.i.i
+842:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %843 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %837 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %844 = atomicrmw xchg i32* %838, i32 %839 seq_cst, align 4
+  %845 = icmp eq i32 %844, 1
+  %846 = icmp eq i32 %839, 0
+  %847 = and i1 %846, %845
+  br i1 %847, label %848, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-826:                                              ; preds = %820
-  %827 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %828 = and i8 %827, 1
-  %829 = icmp eq i8 %828, 0
-  br i1 %829, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %830
+848:                                              ; preds = %842
+  %849 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %850 = and i8 %849, 1
+  %851 = icmp eq i8 %850, 0
+  br i1 %851, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %852
 
-830:                                              ; preds = %826
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %821) #37
+852:                                              ; preds = %848
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %843) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %830, %826, %820, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %831 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %717, i64 1
-  %832 = bitcast %struct.ObjHeader* %831 to i32*
-  %833 = load i32, i32* %832, align 8, !tbaa !18
-  %834 = icmp ugt i32 %833, %813
-  br i1 %834, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %835
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %852, %848, %842, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %853 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %739, i64 1
+  %854 = bitcast %struct.ObjHeader* %853 to i32*
+  %855 = load atomic i32, i32* %854 unordered, align 8, !tbaa !18
+  %856 = icmp ugt i32 %855, %835
+  br i1 %856, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %857
 
-835:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+857:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %836 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %717, i64 2
-  %837 = sext i32 %813 to i64
-  %838 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %836, i64 %837
-  %839 = bitcast %struct.ObjHeader* %838 to %struct.ObjHeader**
-  %840 = load %struct.ObjHeader*, %struct.ObjHeader** %839, align 8, !tbaa !3
-  store %struct.ObjHeader* %840, %struct.ObjHeader** %271, align 8, !tbaa !3
-  %841 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %842 = load i64, i64* %200, align 8, !tbaa !9
-  %843 = bitcast %"class.kotlin::mm::ShadowStack"* %841 to i64*
-  store i64 %842, i64* %843, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %196)
-  %844 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %840, i64 2
-  %845 = bitcast %struct.ObjHeader* %844 to i32*
-  %846 = load i32, i32* %845, align 4
-  switch i32 %846, label %when_next27.i [
+  %858 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %739, i64 2
+  %859 = sext i32 %835 to i64
+  %860 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %858, i64 %859
+  %861 = bitcast %struct.ObjHeader* %860 to %struct.ObjHeader**
+  %862 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %861 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %862, %struct.ObjHeader** %290, align 8, !tbaa !3
+  %863 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %864 = load atomic i64, i64* %218 unordered, align 8, !tbaa !9
+  %865 = bitcast %"class.kotlin::mm::ShadowStack"* %863 to i64*
+  store i64 %864, i64* %865, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %214)
+  %866 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %862, i64 2
+  %867 = bitcast %struct.ObjHeader* %866 to i32*
+  %868 = load atomic i32, i32* %867 unordered, align 4
+  switch i32 %868, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1421,71 +1455,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %709, %struct.ObjHeader** nonnull %272)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %731, %struct.ObjHeader** nonnull %291)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %847 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %848 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %849 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %848 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %850 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %849, align 8, !tbaa !3
-  %851 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %850, i64 0, i32 2, i32 1
-  %852 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %851, i64 56) #37
-  %853 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %852, i64 1
-  %854 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %852, i64 2
-  %855 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %854 to %struct.ObjHeader*
-  %856 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %854 to %struct.TypeInfo**
-  %857 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %853 to i64*
-  store i64 0, i64* %857, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %856, align 8, !tbaa !14
-  %858 = bitcast %struct.ObjHeader** %847 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %854, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %858, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %855, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %855) #50
+  %869 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %870 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %871 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %870 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %872 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %871 unordered, align 8, !tbaa !3
+  %873 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %872, i64 0, i32 2, i32 1
+  %874 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %873, i64 56) #37
+  %875 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %874, i64 1
+  %876 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %874, i64 2
+  %877 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %876 to %struct.ObjHeader*
+  %878 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %876 to %struct.TypeInfo**
+  %879 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %875 to i64*
+  store i64 0, i64* %879, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %878, align 8, !tbaa !14
+  %880 = bitcast %struct.ObjHeader** %869 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %876, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %880, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %877, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %877) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %859 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %860 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %709, %struct.ObjHeader** nonnull %860)
-  %861 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %862 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %861 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %863 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %862, align 8, !tbaa !3
-  %864 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %863, i64 0, i32 2, i32 1
-  %865 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %864, i64 56) #37
-  %866 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %865, i64 1
-  %867 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %865, i64 2
-  %868 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %867 to %struct.ObjHeader*
-  %869 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %867 to %struct.TypeInfo**
-  %870 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %866 to i64*
-  store i64 0, i64* %870, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %869, align 8, !tbaa !14
-  %871 = bitcast %struct.ObjHeader** %859 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %867, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %871, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %868, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %868) #50
+  %881 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %882 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %731, %struct.ObjHeader** nonnull %882)
+  %883 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %884 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %883 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %885 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %884 unordered, align 8, !tbaa !3
+  %886 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %885, i64 0, i32 2, i32 1
+  %887 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %886, i64 56) #37
+  %888 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %887, i64 1
+  %889 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %887, i64 2
+  %890 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %889 to %struct.ObjHeader*
+  %891 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %889 to %struct.TypeInfo**
+  %892 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %888 to i64*
+  store i64 0, i64* %892, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %891, align 8, !tbaa !14
+  %893 = bitcast %struct.ObjHeader** %881 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %889, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %893, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %890, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %890) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %872 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %873 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %709, %struct.ObjHeader** nonnull %873)
-  %874 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %875 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %874 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %876 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %875, align 8, !tbaa !3
-  %877 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %876, i64 0, i32 2, i32 1
-  %878 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %877, i64 56) #37
-  %879 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %878, i64 1
-  %880 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %878, i64 2
-  %881 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %880 to %struct.ObjHeader*
-  %882 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %880 to %struct.TypeInfo**
-  %883 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %879 to i64*
-  store i64 0, i64* %883, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %882, align 8, !tbaa !14
-  %884 = bitcast %struct.ObjHeader** %872 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %880, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %884, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %881, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %881) #50
+  %894 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %895 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %731, %struct.ObjHeader** nonnull %895)
+  %896 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %897 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %896 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %898 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %897 unordered, align 8, !tbaa !3
+  %899 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %898, i64 0, i32 2, i32 1
+  %900 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %899, i64 56) #37
+  %901 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %900, i64 1
+  %902 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %900, i64 2
+  %903 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %902 to %struct.ObjHeader*
+  %904 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %902 to %struct.TypeInfo**
+  %905 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %901 to i64*
+  store i64 0, i64* %905, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %904, align 8, !tbaa !14
+  %906 = bitcast %struct.ObjHeader** %894 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %902, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %906, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %903, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %903) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1498,10 +1532,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %885 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %886 = bitcast %"class.kotlin::mm::ShadowStack"* %885 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %267)
-  %887 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %887, i64* %886, align 8, !tbaa !7
+  %907 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %908 = bitcast %"class.kotlin::mm::ShadowStack"* %907 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %286)
+  %909 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %909, i64* %908, align 8, !tbaa !7
   ret void
 }
