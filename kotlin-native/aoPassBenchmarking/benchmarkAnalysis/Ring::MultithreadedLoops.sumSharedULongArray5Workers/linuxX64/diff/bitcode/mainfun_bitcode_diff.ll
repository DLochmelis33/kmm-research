--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedULongArray5Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:49:54.350606838 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedULongArray5Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:01:37.400386602 +0200
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
@@ -58,7 +58,7 @@
   %37 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %38 = bitcast [9 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %39 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to i64*
-  %40 = load i64, i64* %39, align 8, !tbaa !7
+  %40 = load atomic i64, i64* %39 unordered, align 8, !tbaa !7
   %41 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %42 = bitcast %struct.ObjHeader** %41 to i64*
   store i64 %40, i64* %42, align 8, !tbaa !9
@@ -75,224 +75,238 @@
   %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29 to %"kclassbody:MultithreadedLoopsBenchmark#internal"*
   %50 = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %49, i64 0, i32 4
   store i32 10000, i32* %50, align 4
-  %51 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
-  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %53 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %52 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %54 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %53, align 8, !tbaa !3
-  %55 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %54, i64 0, i32 2, i32 1
-  %56 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %55, i64 80024) #37
-  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 1
-  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 2
-  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.TypeInfo**
-  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.LongArray#internal", i64 0, i32 0), %struct.TypeInfo** %59, align 8, !tbaa !16
-  %61 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 3
-  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61 to i32*
-  store i32 10000, i32* %62, align 8, !tbaa !18
-  %63 = bitcast %struct.ObjHeader** %51 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %64 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to i64*
-  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 4
+  %51 = load atomic i32, i32* %50 unordered, align 4
+  %52 = icmp slt i32 %51, 0
+  br i1 %52, label %53, label %AllocArrayInstance.exit.i3
+
+53:                                               ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  call fastcc void @ThrowIllegalArgumentException() #50
+  unreachable
+
+AllocArrayInstance.exit.i3:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %54 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
+  %55 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %56 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %55 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %57 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %56 unordered, align 8, !tbaa !3
+  %58 = zext i32 %51 to i64
+  %59 = shl nuw nsw i64 %58, 3
+  %60 = add nuw nsw i64 %59, 31
+  %61 = and i64 %60, 68719476728
+  %62 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %57, i64 0, i32 2, i32 1
+  %63 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %62, i64 %61) #37
+  %64 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 1
+  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 2
+  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to %struct.TypeInfo**
+  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.LongArray#internal", i64 0, i32 0), %struct.TypeInfo** %66, align 8, !tbaa !16
+  %68 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 3
+  %69 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %68 to i32*
+  store i32 %51, i32* %69, align 8, !tbaa !18
+  %70 = bitcast %struct.ObjHeader** %54 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %70, align 8, !tbaa !3
+  %71 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i64*
+  %72 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 4
+  %wide.trip.count59 = zext i32 %51 to i64
   br label %loop_check.i7
 
 while_loop.i4:                                    ; preds = %loop_check.i7
-  %66 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %67 = and i8 %66, 1
-  %68 = icmp eq i8 %67, 0
-  br i1 %68, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %69
+  %73 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %74 = and i8 %73, 1
+  %75 = icmp eq i8 %74, 0
+  br i1 %75, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %76
 
-69:                                               ; preds = %while_loop.i4
+76:                                               ; preds = %while_loop.i4
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i5
 
-Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %69, %while_loop.i4
-  %70 = load i32, i32* %62, align 8, !tbaa !18
-  %71 = zext i32 %70 to i64
-  %72 = icmp ult i64 %indvars.iv57, %71
-  br i1 %72, label %Kotlin_LongArray_set.exit.i, label %73
+Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %76, %while_loop.i4
+  %77 = load atomic i32, i32* %69 unordered, align 8, !tbaa !18
+  %78 = zext i32 %77 to i64
+  %79 = icmp ult i64 %indvars.iv57, %78
+  br i1 %79, label %Kotlin_LongArray_set.exit.i, label %80
 
-73:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
+80:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_LongArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %74 = load atomic volatile i64, i64* %64 monotonic, align 8
-  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, i64 %indvars.iv57
-  %76 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i64*
-  store i64 %indvars.iv57, i64* %76, align 8, !tbaa !89
+  %81 = load atomic volatile i64, i64* %71 monotonic, align 8
+  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %72, i64 %indvars.iv57
+  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to i64*
+  store i64 %indvars.iv57, i64* %83, align 8, !tbaa !87
   %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
   br label %loop_check.i7
 
-loop_check.i7:                                    ; preds = %Kotlin_LongArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_LongArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
-  br i1 %exitcond59.not, label %loop_exit.i8, label %while_loop.i4
+loop_check.i7:                                    ; preds = %Kotlin_LongArray_set.exit.i, %AllocArrayInstance.exit.i3
+  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_LongArray_set.exit.i ], [ 0, %AllocArrayInstance.exit.i3 ]
+  %exitcond60.not = icmp eq i64 %indvars.iv57, %wide.trip.count59
+  br i1 %exitcond60.not, label %loop_exit.i8, label %while_loop.i4
 
 loop_exit.i8:                                     ; preds = %loop_check.i7
-  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %77, align 8, !tbaa !3
-  %78 = load i32, i32* %48, align 8
-  %79 = icmp slt i32 %78, 0
-  br i1 %79, label %when_case.i9, label %AllocArrayInstance.exit1.i
+  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !3
+  %85 = load atomic i32, i32* %48 unordered, align 8
+  %86 = icmp slt i32 %85, 0
+  br i1 %86, label %when_case.i9, label %AllocArrayInstance.exit1.i
 
 when_case.i9:                                     ; preds = %loop_exit.i8
-  %80 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
-  %81 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %82 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %81 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %83 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %82, align 8, !tbaa !3
-  %84 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %83, i64 0, i32 2, i32 1
-  %85 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %84, i64 56) #37
-  %86 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %85, i64 1
-  %87 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %85, i64 2
-  %88 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %87 to %struct.ObjHeader*
-  %89 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %87 to %struct.TypeInfo**
-  %90 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %86 to i64*
-  store i64 0, i64* %90, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %89, align 8, !tbaa !14
-  %91 = bitcast %struct.ObjHeader** %80 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %87, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %91, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %88, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %88) #50
+  %87 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
+  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %90 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89 unordered, align 8, !tbaa !3
+  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
+  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 56) #37
+  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
+  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.ObjHeader*
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
+  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i64*
+  store i64 0, i64* %97, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !14
+  %98 = bitcast %struct.ObjHeader** %87 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %95, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %95) #50
   unreachable
 
 AllocArrayInstance.exit1.i:                       ; preds = %loop_exit.i8
-  %92 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %93 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %92 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %94 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %93, align 8, !tbaa !3
-  %95 = zext i32 %78 to i64
-  %96 = shl nuw nsw i64 %95, 3
-  %97 = add nuw nsw i64 %96, 31
-  %98 = and i64 %97, 68719476728
-  %99 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %94, i64 0, i32 2, i32 1
-  %100 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %99, i64 %98) #37
-  %101 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 1
-  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 2
-  %103 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to %struct.TypeInfo**
-  %104 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %104, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %103, align 8, !tbaa !16
-  %105 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 3
-  %106 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105 to i32*
-  store i32 %78, i32* %106, align 8, !tbaa !18
-  %107 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %107, align 8, !tbaa !3
-  %108 = bitcast %struct.ObjHeader** %35 to i64*
-  %109 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %99 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %100 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %99 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %101 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %100 unordered, align 8, !tbaa !3
+  %102 = zext i32 %85 to i64
+  %103 = shl nuw nsw i64 %102, 3
+  %104 = add nuw nsw i64 %103, 31
+  %105 = and i64 %104, 68719476728
+  %106 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %101, i64 0, i32 2, i32 1
+  %107 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %106, i64 %105) #37
+  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 1
+  %109 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 2
+  %110 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to %struct.TypeInfo**
+  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %111, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %110, align 8, !tbaa !16
+  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 3
+  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to i32*
+  store i32 %85, i32* %113, align 8, !tbaa !18
+  %114 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !3
+  %115 = bitcast %struct.ObjHeader** %35 to i64*
+  %116 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
   %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %110 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %111 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %112 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %113 = bitcast %struct.ObjHeader** %112 to i64*
-  %114 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %115 = bitcast %struct.ObjHeader** %114 to i32*
-  %116 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %111, i64 0, i32 3
-  %117 = bitcast %struct.ObjHeader** %110 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %118 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %119 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to i64*
-  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 4
-  %wide.trip.count55 = zext i32 %78 to i64
+  %117 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %118 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %119 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %120 = bitcast %struct.ObjHeader** %119 to i64*
+  %121 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %122 = bitcast %struct.ObjHeader** %121 to i32*
+  %123 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %118, i64 0, i32 3
+  %124 = bitcast %struct.ObjHeader** %117 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %125 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %126 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i64*
+  %127 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 4
+  %wide.trip.count55 = zext i32 %85 to i64
   br label %loop_check25.i
 
 while_loop26.i:                                   ; preds = %loop_check25.i
-  %121 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %122 = and i8 %121, 1
-  %123 = icmp eq i8 %122, 0
-  br i1 %123, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %124
+  %128 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %129 = and i8 %128, 1
+  %130 = icmp eq i8 %129, 0
+  br i1 %130, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %131
 
-124:                                              ; preds = %while_loop26.i
+131:                                              ; preds = %while_loop26.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit2.i
 
-Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %124, %while_loop26.i
-  %125 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %125, i64* %108, align 8, !tbaa !3
-  %126 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %127 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %126, i32 0)
-  %128 = icmp eq %class.Worker* %127, null
-  br i1 %128, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %129
+Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %131, %while_loop26.i
+  %132 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %132, i64* %115, align 8, !tbaa !3
+  %133 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %134 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %133, i32 0)
+  %135 = icmp eq %class.Worker* %134, null
+  br i1 %135, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %136
 
-129:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
-  %130 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %131 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %130, i64 328
-  %132 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %131 to i32*
-  %133 = atomicrmw xchg i32* %132, i32 1 seq_cst, align 4
-  %134 = getelementptr inbounds %class.Worker, %class.Worker* %127, i64 0, i32 9
-  %135 = bitcast %class.Worker* %127 to i8*
-  %136 = call i32 @pthread_create(i64* nonnull %134, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %135) #37
-  %137 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %130, null
-  br i1 %137, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %138
+136:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
+  %137 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %138 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %137, i64 328
+  %139 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138 to i32*
+  %140 = atomicrmw xchg i32* %139, i32 1 seq_cst, align 4
+  %141 = getelementptr inbounds %class.Worker, %class.Worker* %134, i64 0, i32 9
+  %142 = bitcast %class.Worker* %134 to i8*
+  %143 = call i32 @pthread_create(i64* nonnull %141, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %142) #37
+  %144 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %137, null
+  br i1 %144, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %145
 
-138:                                              ; preds = %129
-  %139 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %131 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %140 = atomicrmw xchg i32* %132, i32 %133 seq_cst, align 4
-  %141 = icmp eq i32 %140, 1
-  %142 = icmp eq i32 %133, 0
-  %143 = and i1 %142, %141
-  br i1 %143, label %144, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
+145:                                              ; preds = %136
+  %146 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %147 = atomicrmw xchg i32* %139, i32 %140 seq_cst, align 4
+  %148 = icmp eq i32 %147, 1
+  %149 = icmp eq i32 %140, 0
+  %150 = and i1 %149, %148
+  br i1 %150, label %151, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-144:                                              ; preds = %138
-  %145 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %146 = and i8 %145, 1
-  %147 = icmp eq i8 %146, 0
-  br i1 %147, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %148
+151:                                              ; preds = %145
+  %152 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %153 = and i8 %152, 1
+  %154 = icmp eq i8 %153, 0
+  br i1 %154, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %155
 
-148:                                              ; preds = %144
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %139) #37
+155:                                              ; preds = %151
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %146) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %148, %144, %138, %129
-  %149 = getelementptr inbounds %class.Worker, %class.Worker* %127, i64 0, i32 0
-  %150 = load i32, i32* %149, align 8, !tbaa !93
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %155, %151, %145, %136
+  %156 = getelementptr inbounds %class.Worker, %class.Worker* %134, i64 0, i32 0
+  %157 = load atomic i32, i32* %156 unordered, align 8, !tbaa !91
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
 "kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit2.i
-  %151 = phi i32 [ %150, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %109)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %109, i8 0, i32 32, i1 immarg false) #49
-  %152 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %153 = bitcast %"class.kotlin::mm::ShadowStack"* %152 to i64*
-  %154 = load i64, i64* %153, align 8, !tbaa !7
-  store i64 %154, i64* %113, align 8, !tbaa !9
-  %155 = bitcast %"class.kotlin::mm::ShadowStack"* %152 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %155, align 8, !tbaa !7
-  store i32 0, i32* %115, align 8, !tbaa !12
-  store i32 4, i32* %116, align 4, !tbaa !13
-  %156 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %157 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %156 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %158 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %157, align 8, !tbaa !3
-  %159 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %158, i64 0, i32 2, i32 1
-  %160 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %159, i64 24) #37
-  %161 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 1
-  %162 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 2
-  %163 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to %struct.TypeInfo**
-  %164 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %161 to i64*
-  store i64 0, i64* %164, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %163, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !3
-  %165 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 3
-  %166 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165 to i32*
-  store i32 %151, i32* %166, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %118, align 8, !tbaa !3
-  %167 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %168 = load i64, i64* %113, align 8, !tbaa !9
-  %169 = bitcast %"class.kotlin::mm::ShadowStack"* %167 to i64*
-  store i64 %168, i64* %169, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %109)
-  %170 = load i32, i32* %106, align 8, !tbaa !18
-  %171 = zext i32 %170 to i64
-  %172 = icmp ult i64 %indvars.iv53, %171
-  br i1 %172, label %Kotlin_Array_set.exit.i13, label %173
+  %158 = phi i32 [ %157, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
+  %159 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %160 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to i64*
+  %161 = load atomic i64, i64* %160 unordered, align 8, !tbaa !7
+  store i64 %161, i64* %120, align 8, !tbaa !9
+  %162 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %162, align 8, !tbaa !7
+  store i32 0, i32* %122, align 8, !tbaa !12
+  store i32 4, i32* %123, align 4, !tbaa !13
+  %163 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %164 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %163 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %165 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %164 unordered, align 8, !tbaa !3
+  %166 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %165, i64 0, i32 2, i32 1
+  %167 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %166, i64 24) #37
+  %168 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 1
+  %169 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 2
+  %170 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169 to %struct.TypeInfo**
+  %171 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168 to i64*
+  store i64 0, i64* %171, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %170, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
+  %172 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 3
+  %173 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %172 to i32*
+  store i32 %158, i32* %173, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %125, align 8, !tbaa !3
+  %174 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %175 = load atomic i64, i64* %120 unordered, align 8, !tbaa !9
+  %176 = bitcast %"class.kotlin::mm::ShadowStack"* %174 to i64*
+  store i64 %175, i64* %176, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
+  %177 = load atomic i32, i32* %113 unordered, align 8, !tbaa !18
+  %178 = zext i32 %177 to i64
+  %179 = icmp ult i64 %indvars.iv53, %178
+  br i1 %179, label %Kotlin_Array_set.exit.i13, label %180
 
-173:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+180:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %174 = load atomic volatile i64, i64* %119 monotonic, align 8
-  %175 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120, i64 %indvars.iv53
-  %176 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %175, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %176, align 8, !tbaa !3
+  %181 = load atomic volatile i64, i64* %126 monotonic, align 8
+  %182 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 %indvars.iv53
+  %183 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %183, align 8, !tbaa !3
   %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
   br label %loop_check25.i
 
@@ -302,697 +316,701 @@
   br i1 %exitcond56.not, label %call_success, label %while_loop26.i
 
 call_success:                                     ; preds = %loop_check25.i
-  %177 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %177, align 8, !tbaa !3
-  %178 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %179 = load i64, i64* %42, align 8, !tbaa !3
+  %184 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %184, align 8, !tbaa !3
+  %185 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %186 = load atomic i64, i64* %42 unordered, align 8, !tbaa !9
+  %187 = bitcast %"class.kotlin::mm::ShadowStack"* %185 to i64*
+  store i64 %186, i64* %187, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %33)
-  %180 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %180)
+  %188 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %188)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %180, i8 0, i32 136, i1 immarg false) #49
-  %181 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %182 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %183 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %184 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %185 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %186 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %187 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %188 = bitcast %struct.ObjHeader** %187 to i64*
-  store i64 %179, i64* %188, align 8, !tbaa !9
-  %189 = bitcast %"class.kotlin::mm::ShadowStack"* %178 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %189, align 8, !tbaa !7
-  %190 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %191 = bitcast %struct.ObjHeader** %190 to i32*
-  store i32 0, i32* %191, align 8, !tbaa !12
-  %192 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %186, i64 0, i32 3
-  store i32 17, i32* %192, align 4, !tbaa !13
-  %193 = load i32, i32* %48, align 8
-  %194 = icmp slt i32 %193, 0
-  br i1 %194, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %188, i8 0, i32 136, i1 immarg false) #49
+  %189 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %190 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %191 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %192 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %193 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %194 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %195 = load atomic i64, i64* %187 unordered, align 8, !tbaa !7
+  %196 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %197 = bitcast %struct.ObjHeader** %196 to i64*
+  store i64 %195, i64* %197, align 8, !tbaa !9
+  %198 = bitcast %"class.kotlin::mm::ShadowStack"* %185 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %198, align 8, !tbaa !7
+  %199 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %200 = bitcast %struct.ObjHeader** %199 to i32*
+  store i32 0, i32* %200, align 8, !tbaa !12
+  %201 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %194, i64 0, i32 3
+  store i32 17, i32* %201, align 4, !tbaa !13
+  %202 = load atomic i32, i32* %48 unordered, align 8
+  %203 = icmp slt i32 %202, 0
+  br i1 %203, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %195 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %196 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %197 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %196 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %198 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %197, align 8, !tbaa !3
-  %199 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %198, i64 0, i32 2, i32 1
-  %200 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %199, i64 56) #37
-  %201 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200, i64 1
-  %202 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200, i64 2
-  %203 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202 to %struct.ObjHeader*
-  %204 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202 to %struct.TypeInfo**
-  %205 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %201 to i64*
-  store i64 0, i64* %205, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %204, align 8, !tbaa !14
-  %206 = bitcast %struct.ObjHeader** %195 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %206, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %203, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %203) #50
+  %204 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %205 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %206 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %205 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %207 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %206 unordered, align 8, !tbaa !3
+  %208 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %207, i64 0, i32 2, i32 1
+  %209 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %208, i64 56) #37
+  %210 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209, i64 1
+  %211 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209, i64 2
+  %212 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211 to %struct.ObjHeader*
+  %213 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211 to %struct.TypeInfo**
+  %214 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %210 to i64*
+  store i64 0, i64* %214, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %213, align 8, !tbaa !14
+  %215 = bitcast %struct.ObjHeader** %204 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %215, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %212, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %212) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %207 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %208 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %209 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %210 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %211 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %210 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %212 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %211, align 8, !tbaa !3
-  %213 = zext i32 %193 to i64
-  %214 = shl nuw nsw i64 %213, 3
-  %215 = add nuw nsw i64 %214, 31
-  %216 = and i64 %215, 68719476728
-  %217 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %212, i64 0, i32 2, i32 1
-  %218 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %217, i64 %216) #37
-  %219 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %218, i64 1
-  %220 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %218, i64 2
-  %221 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %220 to %struct.TypeInfo**
-  %222 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %222, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %221, align 8, !tbaa !16
-  %223 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %218, i64 3
-  %224 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %223 to i32*
-  store i32 %193, i32* %224, align 8, !tbaa !18
-  %225 = bitcast %struct.ObjHeader** %209 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %220, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %225, align 8, !tbaa !3
-  %226 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %227 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226 to %struct.ObjHeader**
-  %228 = bitcast %struct.ObjHeader** %208 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %229 = bitcast %class.ObjHolder* %3 to i8*
-  %230 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %231 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %232 = bitcast %struct.FrameOverlay.6** %231 to i64*
-  %233 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %234 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %235 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %236 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %237 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %238 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %239 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %240 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %241 = bitcast %struct.ObjHeader** %207 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %242 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %220 to i64*
-  %243 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %218, i64 4
-  %wide.trip.count51 = zext i32 %193 to i64
+  %216 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %217 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %218 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %219 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %220 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %219 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %221 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %220 unordered, align 8, !tbaa !3
+  %222 = zext i32 %202 to i64
+  %223 = shl nuw nsw i64 %222, 3
+  %224 = add nuw nsw i64 %223, 31
+  %225 = and i64 %224, 68719476728
+  %226 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %221, i64 0, i32 2, i32 1
+  %227 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %226, i64 %225) #37
+  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 1
+  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 2
+  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.TypeInfo**
+  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %231, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %230, align 8, !tbaa !16
+  %232 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 3
+  %233 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %232 to i32*
+  store i32 %202, i32* %233, align 8, !tbaa !18
+  %234 = bitcast %struct.ObjHeader** %218 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %234, align 8, !tbaa !3
+  %235 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %236 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %235 to %struct.ObjHeader**
+  %237 = bitcast %struct.ObjHeader** %217 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %238 = bitcast %class.ObjHolder* %3 to i8*
+  %239 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %240 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %241 = bitcast %struct.FrameOverlay.6** %240 to i64*
+  %242 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %243 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %244 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %245 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %246 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %247 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %248 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %249 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %250 = bitcast %struct.ObjHeader** %216 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to i64*
+  %252 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 4
+  %wide.trip.count51 = zext i32 %202 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %244 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %245 = and i8 %244, 1
-  %246 = icmp eq i8 %245, 0
-  br i1 %246, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %247
+  %253 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %254 = and i8 %253, 1
+  %255 = icmp eq i8 %254, 0
+  br i1 %255, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %256
 
-247:                                              ; preds = %while_loop.i
+256:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %247, %while_loop.i
-  %248 = load %struct.ObjHeader*, %struct.ObjHeader** %227, align 8
-  %249 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %248, i64 1
-  %250 = bitcast %struct.ObjHeader* %249 to i32*
-  %251 = load i32, i32* %250, align 8, !tbaa !18
-  %252 = zext i32 %251 to i64
-  %253 = icmp ult i64 %indvars.iv49, %252
-  br i1 %253, label %Kotlin_Array_get.exit.i, label %254
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %256, %while_loop.i
+  %257 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %236 unordered, align 8
+  %258 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %257, i64 1
+  %259 = bitcast %struct.ObjHeader* %258 to i32*
+  %260 = load atomic i32, i32* %259 unordered, align 8, !tbaa !18
+  %261 = zext i32 %260 to i64
+  %262 = icmp ult i64 %indvars.iv49, %261
+  br i1 %262, label %Kotlin_Array_get.exit.i, label %263
 
-254:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+263:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %255 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %248, i64 2
-  %256 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %255, i64 %indvars.iv49
-  %257 = bitcast %struct.ObjHeader* %256 to %struct.ObjHeader**
-  %258 = load %struct.ObjHeader*, %struct.ObjHeader** %257, align 8, !tbaa !3
-  store %struct.ObjHeader* %258, %struct.ObjHeader** %181, align 8, !tbaa !3
-  %259 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %258, i64 1
-  %260 = bitcast %struct.ObjHeader* %259 to i32*
-  %261 = load i32, i32* %260, align 4
-  %262 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %263 = icmp eq i32 %262, 2
-  br i1 %263, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %264 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %257, i64 2
+  %265 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %264, i64 %indvars.iv49
+  %266 = bitcast %struct.ObjHeader* %265 to %struct.ObjHeader**
+  %267 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %266 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %267, %struct.ObjHeader** %189, align 8, !tbaa !3
+  %268 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %267, i64 1
+  %269 = bitcast %struct.ObjHeader* %268 to i32*
+  %270 = load atomic i32, i32* %269 unordered, align 4
+  %271 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %272 = icmp eq i32 %271, 2
+  br i1 %272, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %264 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %265 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %264, i64 2
-  %266 = bitcast %struct.ObjHeader* %265 to %struct.ObjHeader**
-  %267 = load %struct.ObjHeader*, %struct.ObjHeader** %266, align 8, !tbaa !3
-  store %struct.ObjHeader* %267, %struct.ObjHeader** %182, align 8, !tbaa !3
-  %268 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %269 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %268 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %270 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %269, align 8, !tbaa !3
-  %271 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %270, i64 0, i32 2, i32 1
-  %272 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %271, i64 24) #37
-  %273 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %272, i64 1
-  %274 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %272, i64 2
-  %275 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %274 to %struct.ObjHeader*
-  %276 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %274 to %struct.TypeInfo**
-  %277 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %273 to i64*
-  store i64 0, i64* %277, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedULongArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %276, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %274, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %228, align 8, !tbaa !3
-  %278 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %272, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %278, align 8, !tbaa !3
-  %279 = bitcast %struct.ObjHeader* %267 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %280 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %279, i64 0, i32 3
-  %281 = load i32, i32* %280, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %229) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %230, align 8, !tbaa !61
-  %282 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %283 = bitcast %"class.kotlin::mm::ShadowStack"* %282 to i64*
-  %284 = load i64, i64* %283, align 8, !tbaa !7
-  store i64 %284, i64* %232, align 8, !tbaa !9
-  %285 = bitcast %"class.kotlin::mm::ShadowStack"* %282 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %285, align 8, !tbaa !7
-  store i32 0, i32* %233, align 8, !tbaa !12
-  store i32 4, i32* %234, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %275, %struct.ObjHeader** nonnull %230)
-          to label %286 unwind label %570
+  %273 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %274 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %273, i64 2
+  %275 = bitcast %struct.ObjHeader* %274 to %struct.ObjHeader**
+  %276 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %275 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %276, %struct.ObjHeader** %190, align 8, !tbaa !3
+  %277 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %278 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %277 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %279 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %278 unordered, align 8, !tbaa !3
+  %280 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %279, i64 0, i32 2, i32 1
+  %281 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %280, i64 24) #37
+  %282 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, i64 1
+  %283 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, i64 2
+  %284 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283 to %struct.ObjHeader*
+  %285 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283 to %struct.TypeInfo**
+  %286 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %282 to i64*
+  store i64 0, i64* %286, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedULongArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %285, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %237, align 8, !tbaa !3
+  %287 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %287, align 8, !tbaa !3
+  %288 = bitcast %struct.ObjHeader* %276 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %289 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %288, i64 0, i32 3
+  %290 = load atomic i32, i32* %289 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %238) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %239, align 8, !tbaa !60
+  %291 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %292 = bitcast %"class.kotlin::mm::ShadowStack"* %291 to i64*
+  %293 = load atomic i64, i64* %292 unordered, align 8, !tbaa !7
+  store i64 %293, i64* %241, align 8, !tbaa !9
+  %294 = bitcast %"class.kotlin::mm::ShadowStack"* %291 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %294, align 8, !tbaa !7
+  store i32 0, i32* %242, align 8, !tbaa !12
+  store i32 4, i32* %243, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %284, %struct.ObjHeader** nonnull %239)
+          to label %295 unwind label %581
 
-286:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %287 = load %struct.ObjHeader*, %struct.ObjHeader** %230, align 8, !tbaa !61
-  %288 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %287) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %230, align 8, !tbaa !3
-  %289 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %235)
-  %290 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 0
-  %291 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %292 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %291, i64 328
-  %293 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %292 to i32*
-  %294 = atomicrmw xchg i32* %293, i32 1 seq_cst, align 4
-  %295 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %290) #37
-  %296 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %291, null
-  br i1 %296, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %297
+295:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %296 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %239 unordered, align 8, !tbaa !60
+  %297 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %296) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %239, align 8, !tbaa !3
+  %298 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %244)
+  %299 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 0
+  %300 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %301 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %300, i64 328
+  %302 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %301 to i32*
+  %303 = atomicrmw xchg i32* %302, i32 1 seq_cst, align 4
+  %304 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %299) #37
+  %305 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %300, null
+  br i1 %305, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %306
 
-297:                                              ; preds = %286
-  %298 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %292 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %299 = atomicrmw xchg i32* %293, i32 %294 seq_cst, align 4
-  %300 = icmp eq i32 %299, 1
-  %301 = icmp eq i32 %294, 0
-  %302 = and i1 %301, %300
-  br i1 %302, label %303, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+306:                                              ; preds = %295
+  %307 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %301 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %308 = atomicrmw xchg i32* %302, i32 %303 seq_cst, align 4
+  %309 = icmp eq i32 %308, 1
+  %310 = icmp eq i32 %303, 0
+  %311 = and i1 %310, %309
+  br i1 %311, label %312, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-303:                                              ; preds = %297
-  %304 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %305 = and i8 %304, 1
-  %306 = icmp eq i8 %305, 0
-  br i1 %306, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %307
+312:                                              ; preds = %306
+  %313 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %314 = and i8 %313, 1
+  %315 = icmp eq i8 %314, 0
+  br i1 %315, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %316
 
-307:                                              ; preds = %303
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %298) #37
+316:                                              ; preds = %312
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %307) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %307, %303, %297, %286
-  %308 = sext i32 %261 to i64
-  %309 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 3, i32 0, i32 1
-  %310 = load i64, i64* %309, align 8, !tbaa !67
-  %311 = urem i64 %308, %310
-  %312 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 3, i32 0, i32 0
-  %313 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %312, align 8, !tbaa !72
-  %314 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %313, i64 %311
-  %315 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %314, align 8, !tbaa !3
-  %316 = icmp eq %"struct.std::__detail::_Hash_node_base"* %315, null
-  br i1 %316, label %.loopexit17, label %317
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %316, %312, %306, %295
+  %317 = sext i32 %270 to i64
+  %318 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 3, i32 0, i32 1
+  %319 = load atomic i64, i64* %318 unordered, align 8, !tbaa !67
+  %320 = urem i64 %317, %319
+  %321 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 3, i32 0, i32 0
+  %322 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %321 unordered, align 8, !tbaa !72
+  %323 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %322, i64 %320
+  %324 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %323 unordered, align 8, !tbaa !3
+  %325 = icmp eq %"struct.std::__detail::_Hash_node_base"* %324, null
+  br i1 %325, label %.loopexit17, label %326
 
-317:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %318 = bitcast %"struct.std::__detail::_Hash_node_base"* %315 to %"struct.std::__detail::_Hash_node.203"**
-  %319 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %318, align 8, !tbaa !73
-  %320 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %319, i64 0, i32 0, i32 1
-  %321 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %320 to i32*
-  %322 = load i32, i32* %321, align 4, !tbaa !74
-  %323 = icmp eq i32 %322, %261
-  br i1 %323, label %340, label %.preheader16
+326:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %327 = bitcast %"struct.std::__detail::_Hash_node_base"* %324 to %"struct.std::__detail::_Hash_node.203"**
+  %328 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %327 unordered, align 8, !tbaa !73
+  %329 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %328, i64 0, i32 0, i32 1
+  %330 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %329 to i32*
+  %331 = load atomic i32, i32* %330 unordered, align 4, !tbaa !66
+  %332 = icmp eq i32 %331, %270
+  br i1 %332, label %349, label %.preheader16
 
-324:                                              ; preds = %331
-  %325 = icmp eq i32 %334, %261
-  br i1 %325, label %338, label %.preheader16
+333:                                              ; preds = %340
+  %334 = icmp eq i32 %343, %270
+  br i1 %334, label %347, label %.preheader16
 
-.preheader16:                                     ; preds = %324, %317
-  %326 = phi %"struct.std::__detail::_Hash_node.203"* [ %330, %324 ], [ %319, %317 ]
-  %327 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %326, i64 0, i32 0, i32 0, i32 0
-  %328 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %327, align 8, !tbaa !73
-  %329 = icmp eq %"struct.std::__detail::_Hash_node_base"* %328, null
-  %330 = bitcast %"struct.std::__detail::_Hash_node_base"* %328 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %329, label %.loopexit17, label %331
+.preheader16:                                     ; preds = %333, %326
+  %335 = phi %"struct.std::__detail::_Hash_node.203"* [ %339, %333 ], [ %328, %326 ]
+  %336 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %335, i64 0, i32 0, i32 0, i32 0
+  %337 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %336 unordered, align 8, !tbaa !73
+  %338 = icmp eq %"struct.std::__detail::_Hash_node_base"* %337, null
+  %339 = bitcast %"struct.std::__detail::_Hash_node_base"* %337 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %338, label %.loopexit17, label %340
 
-331:                                              ; preds = %.preheader16
-  %332 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %328, i64 1
-  %333 = bitcast %"struct.std::__detail::_Hash_node_base"* %332 to i32*
-  %334 = load i32, i32* %333, align 4, !tbaa !74
-  %335 = sext i32 %334 to i64
-  %336 = urem i64 %335, %310
-  %337 = icmp eq i64 %336, %311
-  br i1 %337, label %324, label %.loopexit17
+340:                                              ; preds = %.preheader16
+  %341 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %337, i64 1
+  %342 = bitcast %"struct.std::__detail::_Hash_node_base"* %341 to i32*
+  %343 = load atomic i32, i32* %342 unordered, align 4, !tbaa !66
+  %344 = sext i32 %343 to i64
+  %345 = urem i64 %344, %319
+  %346 = icmp eq i64 %345, %320
+  br i1 %346, label %333, label %.loopexit17
 
-338:                                              ; preds = %324
-  %339 = icmp eq %"struct.std::__detail::_Hash_node.203"* %326, null
-  br i1 %339, label %.loopexit17, label %342
+347:                                              ; preds = %333
+  %348 = icmp eq %"struct.std::__detail::_Hash_node.203"* %335, null
+  br i1 %348, label %.loopexit17, label %351
 
-340:                                              ; preds = %317
-  %341 = icmp eq %"struct.std::__detail::_Hash_node.203"* %319, null
-  br i1 %341, label %.loopexit17, label %342
+349:                                              ; preds = %326
+  %350 = icmp eq %"struct.std::__detail::_Hash_node.203"* %328, null
+  br i1 %350, label %.loopexit17, label %351
 
-342:                                              ; preds = %340, %338
-  %343 = phi %"struct.std::__detail::_Hash_node.203"* [ %330, %338 ], [ %319, %340 ]
-  %344 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %343, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %345 = bitcast i8* %344 to %class.Worker**
-  %346 = load %class.Worker*, %class.Worker** %345, align 8, !tbaa !75
-  %347 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %348 = icmp eq i8* %347, null
-  br i1 %348, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %349
+351:                                              ; preds = %349, %347
+  %352 = phi %"struct.std::__detail::_Hash_node.203"* [ %339, %347 ], [ %328, %349 ]
+  %353 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %352, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %354 = bitcast i8* %353 to %class.Worker**
+  %355 = load atomic %class.Worker*, %class.Worker** %354 unordered, align 8, !tbaa !74
+  %356 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %357 = icmp eq i8* %356, null
+  br i1 %357, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %358
 
-349:                                              ; preds = %342
-  %350 = bitcast i8* %347 to %"class.(anonymous namespace)::Future"*
-  %351 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 6
-  %352 = load i32, i32* %351, align 4, !tbaa !94
-  %353 = add nsw i32 %352, 1
-  store i32 %353, i32* %351, align 4, !tbaa !94
-  %354 = bitcast i8* %347 to i32*
-  store i32 1, i32* %354, align 8, !tbaa !101
-  %355 = getelementptr inbounds i8, i8* %347, i64 4
-  %356 = bitcast i8* %355 to i32*
-  store i32 %352, i32* %356, align 4, !tbaa !103
-  %357 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %358 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %357, i64 328
-  %359 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %358 to i32*
-  %360 = atomicrmw xchg i32* %359, i32 1 seq_cst, align 4
-  %361 = getelementptr inbounds i8, i8* %347, i64 16
-  %362 = bitcast i8* %361 to %union.pthread_mutex_t*
-  %363 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %362, %"struct.std::atomic"* null) #37
-  %364 = getelementptr inbounds i8, i8* %347, i64 56
-  %365 = bitcast i8* %364 to %union.pthread_cond_t*
-  %366 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %365, %"struct.std::atomic"* null) #37
-  %367 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %357, null
-  br i1 %367, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %368
+358:                                              ; preds = %351
+  %359 = bitcast i8* %356 to %"class.(anonymous namespace)::Future"*
+  %360 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 6
+  %361 = load atomic i32, i32* %360 unordered, align 4, !tbaa !92
+  %362 = add nsw i32 %361, 1
+  store i32 %362, i32* %360, align 4, !tbaa !92
+  %363 = bitcast i8* %356 to i32*
+  store i32 1, i32* %363, align 8, !tbaa !99
+  %364 = getelementptr inbounds i8, i8* %356, i64 4
+  %365 = bitcast i8* %364 to i32*
+  store i32 %361, i32* %365, align 4, !tbaa !101
+  %366 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %367 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %366, i64 328
+  %368 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %367 to i32*
+  %369 = atomicrmw xchg i32* %368, i32 1 seq_cst, align 4
+  %370 = getelementptr inbounds i8, i8* %356, i64 16
+  %371 = bitcast i8* %370 to %union.pthread_mutex_t*
+  %372 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %371, %"struct.std::atomic"* null) #37
+  %373 = getelementptr inbounds i8, i8* %356, i64 56
+  %374 = bitcast i8* %373 to %union.pthread_cond_t*
+  %375 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %374, %"struct.std::atomic"* null) #37
+  %376 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %366, null
+  br i1 %376, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %377
 
-368:                                              ; preds = %349
-  %369 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %358 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %370 = atomicrmw xchg i32* %359, i32 %360 seq_cst, align 4
-  %371 = icmp eq i32 %370, 1
-  %372 = icmp eq i32 %360, 0
-  %373 = and i1 %372, %371
-  br i1 %373, label %374, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+377:                                              ; preds = %358
+  %378 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %367 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %379 = atomicrmw xchg i32* %368, i32 %369 seq_cst, align 4
+  %380 = icmp eq i32 %379, 1
+  %381 = icmp eq i32 %369, 0
+  %382 = and i1 %381, %380
+  br i1 %382, label %383, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-374:                                              ; preds = %368
-  %375 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %376 = and i8 %375, 1
-  %377 = icmp eq i8 %376, 0
-  br i1 %377, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %378
+383:                                              ; preds = %377
+  %384 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %385 = and i8 %384, 1
+  %386 = icmp eq i8 %385, 0
+  br i1 %386, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %387
 
-378:                                              ; preds = %374
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %369) #37
+387:                                              ; preds = %383
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %378) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %378, %374, %368, %349, %342
-  %379 = phi %"class.(anonymous namespace)::Future"* [ null, %342 ], [ %350, %349 ], [ %350, %378 ], [ %350, %374 ], [ %350, %368 ]
-  %380 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %379, i64 0, i32 1
-  %381 = load i32, i32* %380, align 4, !tbaa !103
-  %382 = sext i32 %381 to i64
-  %383 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 1
-  %384 = load i64, i64* %383, align 8, !tbaa !104
-  %385 = urem i64 %382, %384
-  %386 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 0
-  %387 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %386, align 8, !tbaa !105
-  %388 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %387, i64 %385
-  %389 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %388, align 8, !tbaa !3
-  %390 = icmp eq %"struct.std::__detail::_Hash_node_base"* %389, null
-  br i1 %390, label %.loopexit15, label %391
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %387, %383, %377, %358, %351
+  %388 = phi %"class.(anonymous namespace)::Future"* [ null, %351 ], [ %359, %358 ], [ %359, %387 ], [ %359, %383 ], [ %359, %377 ]
+  %389 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %388, i64 0, i32 1
+  %390 = load atomic i32, i32* %389 unordered, align 4, !tbaa !101
+  %391 = sext i32 %390 to i64
+  %392 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 1
+  %393 = load atomic i64, i64* %392 unordered, align 8, !tbaa !102
+  %394 = urem i64 %391, %393
+  %395 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 0
+  %396 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
+  %397 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %396, i64 %394
+  %398 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %397 unordered, align 8, !tbaa !3
+  %399 = icmp eq %"struct.std::__detail::_Hash_node_base"* %398, null
+  br i1 %399, label %.loopexit15, label %400
 
-391:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %392 = bitcast %"struct.std::__detail::_Hash_node_base"* %389 to %"struct.std::__detail::_Hash_node.203"**
-  %393 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %392, align 8, !tbaa !73
-  %394 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %393, i64 0, i32 0, i32 1
-  %395 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %394 to i32*
-  %396 = load i32, i32* %395, align 4, !tbaa !74
-  %397 = icmp eq i32 %381, %396
-  br i1 %397, label %414, label %.preheader14
+400:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %401 = bitcast %"struct.std::__detail::_Hash_node_base"* %398 to %"struct.std::__detail::_Hash_node.203"**
+  %402 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %401 unordered, align 8, !tbaa !73
+  %403 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %402, i64 0, i32 0, i32 1
+  %404 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %403 to i32*
+  %405 = load atomic i32, i32* %404 unordered, align 4, !tbaa !66
+  %406 = icmp eq i32 %390, %405
+  br i1 %406, label %423, label %.preheader14
 
-398:                                              ; preds = %405
-  %399 = icmp eq i32 %381, %408
-  br i1 %399, label %412, label %.preheader14
+407:                                              ; preds = %414
+  %408 = icmp eq i32 %390, %417
+  br i1 %408, label %421, label %.preheader14
 
-.preheader14:                                     ; preds = %398, %391
-  %400 = phi %"struct.std::__detail::_Hash_node.203"* [ %404, %398 ], [ %393, %391 ]
-  %401 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %400, i64 0, i32 0, i32 0, i32 0
-  %402 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %401, align 8, !tbaa !73
-  %403 = icmp eq %"struct.std::__detail::_Hash_node_base"* %402, null
-  %404 = bitcast %"struct.std::__detail::_Hash_node_base"* %402 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %403, label %.loopexit15, label %405
+.preheader14:                                     ; preds = %407, %400
+  %409 = phi %"struct.std::__detail::_Hash_node.203"* [ %413, %407 ], [ %402, %400 ]
+  %410 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %409, i64 0, i32 0, i32 0, i32 0
+  %411 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %410 unordered, align 8, !tbaa !73
+  %412 = icmp eq %"struct.std::__detail::_Hash_node_base"* %411, null
+  %413 = bitcast %"struct.std::__detail::_Hash_node_base"* %411 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %412, label %.loopexit15, label %414
 
-405:                                              ; preds = %.preheader14
-  %406 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %402, i64 1
-  %407 = bitcast %"struct.std::__detail::_Hash_node_base"* %406 to i32*
-  %408 = load i32, i32* %407, align 4, !tbaa !74
-  %409 = sext i32 %408 to i64
-  %410 = urem i64 %409, %384
-  %411 = icmp eq i64 %410, %385
-  br i1 %411, label %398, label %.loopexit15
+414:                                              ; preds = %.preheader14
+  %415 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %411, i64 1
+  %416 = bitcast %"struct.std::__detail::_Hash_node_base"* %415 to i32*
+  %417 = load atomic i32, i32* %416 unordered, align 4, !tbaa !66
+  %418 = sext i32 %417 to i64
+  %419 = urem i64 %418, %393
+  %420 = icmp eq i64 %419, %394
+  br i1 %420, label %407, label %.loopexit15
 
-412:                                              ; preds = %398
-  %413 = icmp eq %"struct.std::__detail::_Hash_node.203"* %400, null
-  br i1 %413, label %.loopexit15, label %523
+421:                                              ; preds = %407
+  %422 = icmp eq %"struct.std::__detail::_Hash_node.203"* %409, null
+  br i1 %422, label %.loopexit15, label %534
 
-414:                                              ; preds = %391
-  %415 = icmp eq %"struct.std::__detail::_Hash_node.203"* %393, null
-  br i1 %415, label %.loopexit15, label %523
+423:                                              ; preds = %400
+  %424 = icmp eq %"struct.std::__detail::_Hash_node.203"* %402, null
+  br i1 %424, label %.loopexit15, label %534
 
-.loopexit15:                                      ; preds = %414, %412, %405, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %416 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %417 = getelementptr inbounds i8, i8* %416, i64 8
-  %418 = bitcast i8* %417 to i32*
-  store i32 %381, i32* %418, align 8, !tbaa !106
-  %419 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 4
-  %420 = load i64, i64* %383, align 8, !tbaa !104
-  %421 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 3
-  %422 = load i64, i64* %421, align 8, !tbaa !108
-  %423 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %419, i64 %420, i64 %422, i64 1)
-          to label %424 unwind label %530
+.loopexit15:                                      ; preds = %423, %421, %414, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %425 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %426 = bitcast i8* %425 to %"struct.std::__detail::_Hash_node_base"**
+  %427 = getelementptr inbounds i8, i8* %425, i64 8
+  %428 = bitcast i8* %427 to i32*
+  store i32 %390, i32* %428, align 8, !tbaa !104
+  %429 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 4
+  %430 = load atomic i64, i64* %392 unordered, align 8, !tbaa !102
+  %431 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 3
+  %432 = load atomic i64, i64* %431 unordered, align 8, !tbaa !106
+  %433 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %429, i64 %430, i64 %432, i64 1)
+          to label %434 unwind label %541
 
-424:                                              ; preds = %.loopexit15
-  %425 = extractvalue { i8, i64 } %423, 0
-  %426 = and i8 %425, 1
-  %427 = icmp eq i8 %426, 0
-  br i1 %427, label %428, label %430
+434:                                              ; preds = %.loopexit15
+  %435 = extractvalue { i8, i64 } %433, 0
+  %436 = and i8 %435, 1
+  %437 = icmp eq i8 %436, 0
+  br i1 %437, label %438, label %440
 
-428:                                              ; preds = %424
-  %429 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %386, align 8, !tbaa !105
-  br label %487
+438:                                              ; preds = %434
+  %439 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
+  br label %497
 
-430:                                              ; preds = %424
-  %431 = extractvalue { i8, i64 } %423, 1
-  %432 = icmp eq i64 %431, 1
-  br i1 %432, label %433, label %435, !prof !109, !misexpect !110
+440:                                              ; preds = %434
+  %441 = extractvalue { i8, i64 } %433, 1
+  %442 = icmp eq i64 %441, 1
+  br i1 %442, label %443, label %445, !prof !107, !misexpect !108
 
-433:                                              ; preds = %430
-  %434 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %434, align 8, !tbaa !111
-  br label %439
+443:                                              ; preds = %440
+  %444 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %444, align 8, !tbaa !109
+  br label %449
 
-435:                                              ; preds = %430
-  %436 = call noalias i8* @calloc(i64 %431, i64 8) #37
-  %437 = bitcast i8* %436 to %"struct.std::__detail::_Hash_node_base"**
-  %438 = shl i64 %431, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %436, i8 0, i64 %438, i1 false) #37
-  br label %439
+445:                                              ; preds = %440
+  %446 = call noalias i8* @calloc(i64 %441, i64 8) #37
+  %447 = bitcast i8* %446 to %"struct.std::__detail::_Hash_node_base"**
+  %448 = shl i64 %441, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %446, i8 0, i64 %448, i1 false) #37
+  br label %449
 
-439:                                              ; preds = %435, %433
-  %440 = phi %"struct.std::__detail::_Hash_node_base"** [ %434, %433 ], [ %437, %435 ]
-  %441 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 2
-  %442 = bitcast %"struct.std::__detail::_Hash_node_base"* %441 to %"struct.std::__detail::_Hash_node.203"**
-  %443 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %442, align 8, !tbaa !112
-  %444 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %441, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %444, align 8, !tbaa !112
-  %445 = icmp eq %"struct.std::__detail::_Hash_node.203"* %443, null
-  br i1 %445, label %.loopexit, label %446
+449:                                              ; preds = %445, %443
+  %450 = phi %"struct.std::__detail::_Hash_node_base"** [ %444, %443 ], [ %447, %445 ]
+  %451 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 2
+  %452 = bitcast %"struct.std::__detail::_Hash_node_base"* %451 to %"struct.std::__detail::_Hash_node.203"**
+  %453 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %452 unordered, align 8, !tbaa !110
+  %454 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %451, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %454, align 8, !tbaa !110
+  %455 = icmp eq %"struct.std::__detail::_Hash_node.203"* %453, null
+  br i1 %455, label %.loopexit, label %456
 
-446:                                              ; preds = %439
-  %447 = bitcast %"struct.std::__detail::_Hash_node_base"* %441 to i64*
-  br label %448
+456:                                              ; preds = %449
+  %457 = bitcast %"struct.std::__detail::_Hash_node_base"* %451 to i64*
+  br label %458
 
-448:                                              ; preds = %477, %446
-  %449 = phi %"struct.std::__detail::_Hash_node.203"* [ %443, %446 ], [ %452, %477 ]
-  %450 = phi i64 [ 0, %446 ], [ %478, %477 ]
-  %451 = bitcast %"struct.std::__detail::_Hash_node.203"* %449 to %"struct.std::__detail::_Hash_node.203"**
-  %452 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %451, align 8, !tbaa !73
-  %453 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %449, i64 0, i32 0, i32 1
-  %454 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %453 to i32*
-  %455 = load i32, i32* %454, align 4, !tbaa !74
-  %456 = sext i32 %455 to i64
-  %457 = urem i64 %456, %431
-  %458 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %440, i64 %457
-  %459 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %458, align 8, !tbaa !3
-  %460 = icmp eq %"struct.std::__detail::_Hash_node_base"* %459, null
-  br i1 %460, label %461, label %470
+458:                                              ; preds = %487, %456
+  %459 = phi %"struct.std::__detail::_Hash_node.203"* [ %453, %456 ], [ %462, %487 ]
+  %460 = phi i64 [ 0, %456 ], [ %488, %487 ]
+  %461 = bitcast %"struct.std::__detail::_Hash_node.203"* %459 to %"struct.std::__detail::_Hash_node.203"**
+  %462 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %461 unordered, align 8, !tbaa !73
+  %463 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 1
+  %464 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %463 to i32*
+  %465 = load atomic i32, i32* %464 unordered, align 4, !tbaa !66
+  %466 = sext i32 %465 to i64
+  %467 = urem i64 %466, %441
+  %468 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %450, i64 %467
+  %469 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468 unordered, align 8, !tbaa !3
+  %470 = icmp eq %"struct.std::__detail::_Hash_node_base"* %469, null
+  br i1 %470, label %471, label %480
 
-461:                                              ; preds = %448
-  %462 = load i64, i64* %447, align 8, !tbaa !112
-  %463 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %449, i64 0, i32 0, i32 0
-  %464 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %449, i64 0, i32 0, i32 0, i32 0
-  %465 = bitcast %"struct.std::__detail::_Hash_node.203"* %449 to i64*
-  store i64 %462, i64* %465, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %463, %"struct.std::__detail::_Hash_node_base"** %444, align 8, !tbaa !112
-  store %"struct.std::__detail::_Hash_node_base"* %441, %"struct.std::__detail::_Hash_node_base"** %458, align 8, !tbaa !3
-  %466 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %464, align 8, !tbaa !73
-  %467 = icmp eq %"struct.std::__detail::_Hash_node_base"* %466, null
-  br i1 %467, label %477, label %468
+471:                                              ; preds = %458
+  %472 = load atomic i64, i64* %457 unordered, align 8, !tbaa !110
+  %473 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 0
+  %474 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 0, i32 0
+  %475 = bitcast %"struct.std::__detail::_Hash_node.203"* %459 to i64*
+  store i64 %472, i64* %475, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %473, %"struct.std::__detail::_Hash_node_base"** %454, align 8, !tbaa !110
+  store %"struct.std::__detail::_Hash_node_base"* %451, %"struct.std::__detail::_Hash_node_base"** %468, align 8, !tbaa !3
+  %476 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %474 unordered, align 8, !tbaa !73
+  %477 = icmp eq %"struct.std::__detail::_Hash_node_base"* %476, null
+  br i1 %477, label %487, label %478
 
-468:                                              ; preds = %461
-  %469 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %440, i64 %450
-  store %"struct.std::__detail::_Hash_node_base"* %463, %"struct.std::__detail::_Hash_node_base"** %469, align 8, !tbaa !3
-  br label %477
+478:                                              ; preds = %471
+  %479 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %450, i64 %460
+  store %"struct.std::__detail::_Hash_node_base"* %473, %"struct.std::__detail::_Hash_node_base"** %479, align 8, !tbaa !3
+  br label %487
 
-470:                                              ; preds = %448
-  %471 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to i64*
-  %472 = load i64, i64* %471, align 8, !tbaa !73
-  %473 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %449, i64 0, i32 0, i32 0
-  %474 = bitcast %"struct.std::__detail::_Hash_node.203"* %449 to i64*
-  store i64 %472, i64* %474, align 8, !tbaa !73
-  %475 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %458, align 8, !tbaa !3
-  %476 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %475, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %473, %"struct.std::__detail::_Hash_node_base"** %476, align 8, !tbaa !73
-  br label %477
+480:                                              ; preds = %458
+  %481 = bitcast %"struct.std::__detail::_Hash_node_base"* %469 to i64*
+  %482 = load atomic i64, i64* %481 unordered, align 8, !tbaa !73
+  %483 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 0
+  %484 = bitcast %"struct.std::__detail::_Hash_node.203"* %459 to i64*
+  store i64 %482, i64* %484, align 8, !tbaa !73
+  %485 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468 unordered, align 8, !tbaa !3
+  %486 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %485, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %483, %"struct.std::__detail::_Hash_node_base"** %486, align 8, !tbaa !73
+  br label %487
 
-477:                                              ; preds = %470, %468, %461
-  %478 = phi i64 [ %450, %470 ], [ %457, %461 ], [ %457, %468 ]
-  %479 = icmp eq %"struct.std::__detail::_Hash_node.203"* %452, null
-  br i1 %479, label %.loopexit, label %448
+487:                                              ; preds = %480, %478, %471
+  %488 = phi i64 [ %460, %480 ], [ %467, %471 ], [ %467, %478 ]
+  %489 = icmp eq %"struct.std::__detail::_Hash_node.203"* %462, null
+  br i1 %489, label %.loopexit, label %458
 
-.loopexit:                                        ; preds = %477, %439
-  %480 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %386, align 8, !tbaa !105
-  %481 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 5
-  %482 = icmp eq %"struct.std::__detail::_Hash_node_base"** %480, %481
-  br i1 %482, label %485, label %483
+.loopexit:                                        ; preds = %487, %449
+  %490 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
+  %491 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 5
+  %492 = icmp eq %"struct.std::__detail::_Hash_node_base"** %490, %491
+  br i1 %492, label %495, label %493
 
-483:                                              ; preds = %.loopexit
-  %484 = bitcast %"struct.std::__detail::_Hash_node_base"** %480 to i8*
-  call void @free(i8* %484) #37
-  br label %485
+493:                                              ; preds = %.loopexit
+  %494 = bitcast %"struct.std::__detail::_Hash_node_base"** %490 to i8*
+  call void @free(i8* %494) #37
+  br label %495
 
-485:                                              ; preds = %483, %.loopexit
-  store i64 %431, i64* %383, align 8, !tbaa !104
-  store %"struct.std::__detail::_Hash_node_base"** %440, %"struct.std::__detail::_Hash_node_base"*** %386, align 8, !tbaa !105
-  %486 = urem i64 %382, %431
-  br label %487
+495:                                              ; preds = %493, %.loopexit
+  store i64 %441, i64* %392, align 8, !tbaa !102
+  store %"struct.std::__detail::_Hash_node_base"** %450, %"struct.std::__detail::_Hash_node_base"*** %395, align 8, !tbaa !103
+  %496 = urem i64 %391, %441
+  br label %497
 
-487:                                              ; preds = %485, %428
-  %488 = phi %"struct.std::__detail::_Hash_node_base"** [ %429, %428 ], [ %440, %485 ]
-  %489 = phi i64 [ %385, %428 ], [ %486, %485 ]
-  %490 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %488, i64 %489
-  %491 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %490, align 8, !tbaa !3
-  %492 = icmp eq %"struct.std::__detail::_Hash_node_base"* %491, null
-  br i1 %492, label %499, label %493
+497:                                              ; preds = %495, %438
+  %498 = phi %"struct.std::__detail::_Hash_node_base"** [ %439, %438 ], [ %450, %495 ]
+  %499 = phi i64 [ %394, %438 ], [ %496, %495 ]
+  %500 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498, i64 %499
+  %501 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %500 unordered, align 8, !tbaa !3
+  %502 = icmp eq %"struct.std::__detail::_Hash_node_base"* %501, null
+  br i1 %502, label %509, label %503
 
-493:                                              ; preds = %487
-  %494 = bitcast %"struct.std::__detail::_Hash_node_base"* %491 to i64*
-  %495 = load i64, i64* %494, align 8, !tbaa !73
-  %496 = bitcast i8* %416 to i64*
-  store i64 %495, i64* %496, align 8, !tbaa !73
-  %497 = bitcast %"struct.std::__detail::_Hash_node_base"** %490 to i8***
-  %498 = load i8**, i8*** %497, align 8, !tbaa !3
-  store i8* %416, i8** %498, align 8, !tbaa !73
-  br label %519
+503:                                              ; preds = %497
+  %504 = bitcast %"struct.std::__detail::_Hash_node_base"* %501 to i64*
+  %505 = load atomic i64, i64* %504 unordered, align 8, !tbaa !73
+  %506 = bitcast i8* %425 to i64*
+  store i64 %505, i64* %506, align 8, !tbaa !73
+  %507 = bitcast %"struct.std::__detail::_Hash_node_base"** %500 to i8***
+  %508 = load atomic i8**, i8*** %507 unordered, align 8, !tbaa !3
+  store i8* %425, i8** %508, align 8, !tbaa !73
+  br label %530
 
-499:                                              ; preds = %487
-  %500 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %289, i64 0, i32 2, i32 0, i32 2
-  %501 = bitcast %"struct.std::__detail::_Hash_node_base"* %500 to i64*
-  %502 = load i64, i64* %501, align 8, !tbaa !112
-  %503 = bitcast i8* %416 to i64*
-  store i64 %502, i64* %503, align 8, !tbaa !73
-  %504 = bitcast %"struct.std::__detail::_Hash_node_base"* %500 to i8**
-  store i8* %416, i8** %504, align 8, !tbaa !112
-  %505 = icmp eq i64 %502, 0
-  br i1 %505, label %516, label %506
+509:                                              ; preds = %497
+  %510 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 2
+  %511 = bitcast %"struct.std::__detail::_Hash_node_base"* %510 to i64*
+  %512 = load atomic i64, i64* %511 unordered, align 8, !tbaa !110
+  %513 = bitcast i8* %425 to i64*
+  store i64 %512, i64* %513, align 8, !tbaa !73
+  %514 = bitcast %"struct.std::__detail::_Hash_node_base"* %510 to i8**
+  store i8* %425, i8** %514, align 8, !tbaa !110
+  %515 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %426 unordered, align 8, !tbaa !73
+  %516 = icmp eq %"struct.std::__detail::_Hash_node_base"* %515, null
+  br i1 %516, label %527, label %517
 
-506:                                              ; preds = %499
-  %.cast.i.i.i.i = inttoptr i64 %502 to %"struct.std::__detail::_Hash_node_base"*
-  %507 = load i64, i64* %383, align 8, !tbaa !104
-  %508 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %509 = bitcast %"struct.std::__detail::_Hash_node_base"* %508 to i32*
-  %510 = load i32, i32* %509, align 4, !tbaa !74
-  %511 = sext i32 %510 to i64
-  %512 = urem i64 %511, %507
-  %513 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %488, i64 %512
-  %514 = bitcast %"struct.std::__detail::_Hash_node_base"** %513 to i8**
-  store i8* %416, i8** %514, align 8, !tbaa !3
-  %515 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %386, align 8, !tbaa !105
-  br label %516
+517:                                              ; preds = %509
+  %518 = load atomic i64, i64* %392 unordered, align 8, !tbaa !102
+  %519 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %515, i64 1
+  %520 = bitcast %"struct.std::__detail::_Hash_node_base"* %519 to i32*
+  %521 = load atomic i32, i32* %520 unordered, align 4, !tbaa !66
+  %522 = sext i32 %521 to i64
+  %523 = urem i64 %522, %518
+  %524 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498, i64 %523
+  %525 = bitcast %"struct.std::__detail::_Hash_node_base"** %524 to i8**
+  store i8* %425, i8** %525, align 8, !tbaa !3
+  %526 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
+  br label %527
 
-516:                                              ; preds = %506, %499
-  %517 = phi %"struct.std::__detail::_Hash_node_base"** [ %488, %499 ], [ %515, %506 ]
-  %518 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %517, i64 %489
-  store %"struct.std::__detail::_Hash_node_base"* %500, %"struct.std::__detail::_Hash_node_base"** %518, align 8, !tbaa !3
-  br label %519
+527:                                              ; preds = %517, %509
+  %528 = phi %"struct.std::__detail::_Hash_node_base"** [ %498, %509 ], [ %526, %517 ]
+  %529 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %528, i64 %499
+  store %"struct.std::__detail::_Hash_node_base"* %510, %"struct.std::__detail::_Hash_node_base"** %529, align 8, !tbaa !3
+  br label %530
 
-519:                                              ; preds = %516, %493
-  %520 = load i64, i64* %421, align 8, !tbaa !108
-  %521 = add i64 %520, 1
-  store i64 %521, i64* %421, align 8, !tbaa !108
-  %522 = bitcast i8* %417 to %"struct.std::pair.50"*
-  br label %527
+530:                                              ; preds = %527, %503
+  %531 = load atomic i64, i64* %431 unordered, align 8, !tbaa !106
+  %532 = add i64 %531, 1
+  store i64 %532, i64* %431, align 8, !tbaa !106
+  %533 = bitcast i8* %427 to %"struct.std::pair.50"*
+  br label %538
 
-523:                                              ; preds = %414, %412
-  %524 = phi %"struct.std::__detail::_Hash_node.203"* [ %393, %414 ], [ %404, %412 ]
-  %525 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %524, i64 0, i32 0, i32 1
-  %526 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %525 to %"struct.std::pair.50"*
-  br label %527
+534:                                              ; preds = %423, %421
+  %535 = phi %"struct.std::__detail::_Hash_node.203"* [ %402, %423 ], [ %413, %421 ]
+  %536 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %535, i64 0, i32 0, i32 1
+  %537 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %536 to %"struct.std::pair.50"*
+  br label %538
 
-527:                                              ; preds = %523, %519
-  %528 = phi %"struct.std::pair.50"* [ %526, %523 ], [ %522, %519 ]
-  %529 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %528, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %379, %"class.(anonymous namespace)::Future"** %529, align 8, !tbaa !3
-  store i32 2, i32* %236, align 8, !tbaa.struct !113
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumSharedULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %237, align 8, !tbaa.struct !113
-  store i8* %288, i8** %238, align 8, !tbaa.struct !113
-  store %"class.(anonymous namespace)::Future"* %379, %"class.(anonymous namespace)::Future"** %239, align 8, !tbaa.struct !113
-  store i32 %281, i32* %240, align 8, !tbaa.struct !113
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %346, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+538:                                              ; preds = %534, %530
+  %539 = phi %"struct.std::pair.50"* [ %537, %534 ], [ %533, %530 ]
+  %540 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %539, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %388, %"class.(anonymous namespace)::Future"** %540, align 8, !tbaa !3
+  store i32 2, i32* %245, align 8, !tbaa.struct !111
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumSharedULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %246, align 8, !tbaa.struct !111
+  store i8* %297, i8** %247, align 8, !tbaa.struct !111
+  store %"class.(anonymous namespace)::Future"* %388, %"class.(anonymous namespace)::Future"** %248, align 8, !tbaa.struct !111
+  store i32 %290, i32* %249, align 8, !tbaa.struct !111
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %355, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
   br label %.loopexit17
 
-530:                                              ; preds = %.loopexit15
-  %531 = landingpad { i8*, i32 }
+541:                                              ; preds = %.loopexit15
+  %542 = landingpad { i8*, i32 }
           cleanup
-  %532 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %533 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %532, i64 328
-  %534 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %533 to i32*
-  %535 = atomicrmw xchg i32* %534, i32 1 seq_cst, align 4
-  %536 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %290) #37
-  %537 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %532, null
-  br i1 %537, label %.body.i.i.i, label %556
-
-.loopexit17:                                      ; preds = %527, %340, %338, %331, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %538 = phi %"class.(anonymous namespace)::Future"* [ %379, %527 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %338 ], [ null, %340 ], [ null, %.preheader16 ], [ null, %331 ]
-  %539 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %540 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %539, i64 328
-  %541 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540 to i32*
-  %542 = atomicrmw xchg i32* %541, i32 1 seq_cst, align 4
-  %543 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %290) #37
-  %544 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %539, null
-  br i1 %544, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %545
-
-545:                                              ; preds = %.loopexit17
-  %546 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %547 = atomicrmw xchg i32* %541, i32 %542 seq_cst, align 4
-  %548 = icmp eq i32 %547, 1
-  %549 = icmp eq i32 %542, 0
-  %550 = and i1 %549, %548
-  br i1 %550, label %551, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-
-551:                                              ; preds = %545
-  %552 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %553 = and i8 %552, 1
-  %554 = icmp eq i8 %553, 0
-  br i1 %554, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %555
+  %543 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %544 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %543, i64 328
+  %545 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %544 to i32*
+  %546 = atomicrmw xchg i32* %545, i32 1 seq_cst, align 4
+  %547 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %299) #37
+  %548 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %543, null
+  br i1 %548, label %.body.i.i.i, label %567
 
-555:                                              ; preds = %551
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %546) #37
-  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+.loopexit17:                                      ; preds = %538, %349, %347, %340, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %549 = phi %"class.(anonymous namespace)::Future"* [ %388, %538 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %347 ], [ null, %349 ], [ null, %.preheader16 ], [ null, %340 ]
+  %550 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %551 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %550, i64 328
+  %552 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551 to i32*
+  %553 = atomicrmw xchg i32* %552, i32 1 seq_cst, align 4
+  %554 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %299) #37
+  %555 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %550, null
+  br i1 %555, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %556
 
-556:                                              ; preds = %530
-  %557 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %533 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %558 = atomicrmw xchg i32* %534, i32 %535 seq_cst, align 4
+556:                                              ; preds = %.loopexit17
+  %557 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %558 = atomicrmw xchg i32* %552, i32 %553 seq_cst, align 4
   %559 = icmp eq i32 %558, 1
-  %560 = icmp eq i32 %535, 0
+  %560 = icmp eq i32 %553, 0
   %561 = and i1 %560, %559
-  br i1 %561, label %562, label %.body.i.i.i
+  br i1 %561, label %562, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
 562:                                              ; preds = %556
   %563 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
   %564 = and i8 %563, 1
   %565 = icmp eq i8 %564, 0
-  br i1 %565, label %.body.i.i.i, label %566
+  br i1 %565, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %566
 
 566:                                              ; preds = %562
   call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %557) #37
+  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+
+567:                                              ; preds = %541
+  %568 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %544 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %569 = atomicrmw xchg i32* %545, i32 %546 seq_cst, align 4
+  %570 = icmp eq i32 %569, 1
+  %571 = icmp eq i32 %546, 0
+  %572 = and i1 %571, %570
+  br i1 %572, label %573, label %.body.i.i.i
+
+573:                                              ; preds = %567
+  %574 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %575 = and i8 %574, 1
+  %576 = icmp eq i8 %575, 0
+  br i1 %576, label %.body.i.i.i, label %577
+
+577:                                              ; preds = %573
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %568) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %555, %551, %545, %.loopexit17
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %235)
-  %567 = icmp eq %"class.(anonymous namespace)::Future"* %538, null
-  br i1 %567, label %568, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %566, %562, %556, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %244)
+  %578 = icmp eq %"class.(anonymous namespace)::Future"* %549, null
+  br i1 %578, label %579, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-568:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+579:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %569 unwind label %572
+          to label %580 unwind label %583
 
-569:                                              ; preds = %568
+580:                                              ; preds = %579
   unreachable
 
-570:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %571 = landingpad { i8*, i32 }
+581:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %582 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-572:                                              ; preds = %568
-  %573 = landingpad { i8*, i32 }
+583:                                              ; preds = %579
+  %584 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %572, %570, %566, %562, %556, %530
-  %574 = phi { i8*, i32 } [ %571, %570 ], [ %573, %572 ], [ %531, %556 ], [ %531, %562 ], [ %531, %566 ], [ %531, %530 ]
-  %575 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %576 = load i64, i64* %232, align 8, !tbaa !9
-  %577 = bitcast %"class.kotlin::mm::ShadowStack"* %575 to i64*
-  store i64 %576, i64* %577, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %229) #37
-  resume { i8*, i32 } %574
+.body.i.i.i:                                      ; preds = %583, %581, %577, %573, %567, %541
+  %585 = phi { i8*, i32 } [ %582, %581 ], [ %584, %583 ], [ %542, %567 ], [ %542, %573 ], [ %542, %577 ], [ %542, %541 ]
+  %586 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %587 = load atomic i64, i64* %241 unordered, align 8, !tbaa !9
+  %588 = bitcast %"class.kotlin::mm::ShadowStack"* %586 to i64*
+  store i64 %587, i64* %588, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %238) #37
+  resume { i8*, i32 } %585
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %578 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %538, i64 0, i32 1
-  %579 = load i32, i32* %578, align 4, !tbaa !103
-  %580 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %581 = load i64, i64* %232, align 8, !tbaa !9
-  %582 = bitcast %"class.kotlin::mm::ShadowStack"* %580 to i64*
-  store i64 %581, i64* %582, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %229) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %109)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %109, i8 0, i32 32, i1 immarg false) #49
-  %583 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %584 = bitcast %"class.kotlin::mm::ShadowStack"* %583 to i64*
-  %585 = load i64, i64* %584, align 8, !tbaa !7
-  store i64 %585, i64* %113, align 8, !tbaa !9
-  %586 = bitcast %"class.kotlin::mm::ShadowStack"* %583 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %586, align 8, !tbaa !7
-  store i32 0, i32* %115, align 8, !tbaa !12
-  store i32 4, i32* %116, align 4, !tbaa !13
-  %587 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %588 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %587 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %589 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %588, align 8, !tbaa !3
-  %590 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %589, i64 0, i32 2, i32 1
-  %591 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %590, i64 24) #37
-  %592 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %591, i64 1
-  %593 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %591, i64 2
-  %594 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %593 to %struct.TypeInfo**
-  %595 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %592 to i64*
-  store i64 0, i64* %595, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %594, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %593, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !3
-  %596 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %591, i64 3
-  %597 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %596 to i32*
-  store i32 %579, i32* %597, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %593, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %241, align 8, !tbaa !3
-  %598 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %599 = load i64, i64* %113, align 8, !tbaa !9
-  %600 = bitcast %"class.kotlin::mm::ShadowStack"* %598 to i64*
-  store i64 %599, i64* %600, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %109)
-  %601 = load i32, i32* %224, align 8, !tbaa !18
-  %602 = zext i32 %601 to i64
-  %603 = icmp ult i64 %indvars.iv49, %602
-  br i1 %603, label %Kotlin_Array_set.exit.i, label %604
+  %589 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %549, i64 0, i32 1
+  %590 = load atomic i32, i32* %589 unordered, align 4, !tbaa !101
+  %591 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %592 = load atomic i64, i64* %241 unordered, align 8, !tbaa !9
+  %593 = bitcast %"class.kotlin::mm::ShadowStack"* %591 to i64*
+  store i64 %592, i64* %593, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %238) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
+  %594 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %595 = bitcast %"class.kotlin::mm::ShadowStack"* %594 to i64*
+  %596 = load atomic i64, i64* %595 unordered, align 8, !tbaa !7
+  store i64 %596, i64* %120, align 8, !tbaa !9
+  %597 = bitcast %"class.kotlin::mm::ShadowStack"* %594 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %597, align 8, !tbaa !7
+  store i32 0, i32* %122, align 8, !tbaa !12
+  store i32 4, i32* %123, align 4, !tbaa !13
+  %598 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %599 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %598 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %600 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %599 unordered, align 8, !tbaa !3
+  %601 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %600, i64 0, i32 2, i32 1
+  %602 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %601, i64 24) #37
+  %603 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %602, i64 1
+  %604 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %602, i64 2
+  %605 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604 to %struct.TypeInfo**
+  %606 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603 to i64*
+  store i64 0, i64* %606, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %605, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
+  %607 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %602, i64 3
+  %608 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %607 to i32*
+  store i32 %590, i32* %608, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %250, align 8, !tbaa !3
+  %609 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %610 = load atomic i64, i64* %120 unordered, align 8, !tbaa !9
+  %611 = bitcast %"class.kotlin::mm::ShadowStack"* %609 to i64*
+  store i64 %610, i64* %611, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
+  %612 = load atomic i32, i32* %233 unordered, align 8, !tbaa !18
+  %613 = zext i32 %612 to i64
+  %614 = icmp ult i64 %indvars.iv49, %613
+  br i1 %614, label %Kotlin_Array_set.exit.i, label %615
 
-604:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+615:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %605 = load atomic volatile i64, i64* %242 monotonic, align 8
-  %606 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243, i64 %indvars.iv49
-  %607 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %606, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %593, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %607, align 8, !tbaa !3
+  %616 = load atomic volatile i64, i64* %251 monotonic, align 8
+  %617 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252, i64 %indvars.iv49
+  %618 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %617, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %618, align 8, !tbaa !3
   %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
   br label %loop_check.i
 
@@ -1002,247 +1020,247 @@
   br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i
 
 loop_exit.i:                                      ; preds = %loop_check.i
-  %608 = load i32, i32* %224, align 8, !tbaa !18
-  %609 = icmp sgt i32 %608, 0
-  %smax = select i1 %609, i32 %608, i32 0
+  %619 = load atomic i32, i32* %233 unordered, align 8, !tbaa !18
+  %620 = icmp sgt i32 %619, 0
+  %smax = select i1 %620, i32 %619, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %610 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %611 = and i8 %610, 1
-  %612 = icmp eq i8 %611, 0
-  br i1 %612, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %613
+  %621 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %622 = and i8 %621, 1
+  %623 = icmp eq i8 %622, 0
+  br i1 %623, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %624
 
-613:                                              ; preds = %while_loop18.i
+624:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %613, %while_loop18.i
-  %614 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243, i64 %indvars.iv
-  %615 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %614 to %struct.ObjHeader**
-  %616 = load %struct.ObjHeader*, %struct.ObjHeader** %615, align 8, !tbaa !3
-  store %struct.ObjHeader* %616, %struct.ObjHeader** %183, align 8, !tbaa !3
-  %617 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %616, i64 1
-  %618 = bitcast %struct.ObjHeader* %617 to i32*
-  %619 = load i32, i32* %618, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %624, %while_loop18.i
+  %625 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252, i64 %indvars.iv
+  %626 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %625 to %struct.ObjHeader**
+  %627 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %626 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %627, %struct.ObjHeader** %191, align 8, !tbaa !3
+  %628 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %627, i64 1
+  %629 = bitcast %struct.ObjHeader* %628 to i32*
+  %630 = load atomic i32, i32* %629 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %109)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %109, i8 0, i32 32, i1 immarg false) #49
-  %620 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %621 = bitcast %"class.kotlin::mm::ShadowStack"* %620 to i64*
-  %622 = load i64, i64* %621, align 8, !tbaa !7
-  store i64 %622, i64* %113, align 8, !tbaa !9
-  %623 = bitcast %"class.kotlin::mm::ShadowStack"* %620 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %623, align 8, !tbaa !7
-  store i32 0, i32* %115, align 8, !tbaa !12
-  store i32 4, i32* %116, align 4, !tbaa !13
-  %624 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %625 = icmp eq i32 %624, 2
-  br i1 %625, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
+  %631 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %632 = bitcast %"class.kotlin::mm::ShadowStack"* %631 to i64*
+  %633 = load atomic i64, i64* %632 unordered, align 8, !tbaa !7
+  store i64 %633, i64* %120, align 8, !tbaa !9
+  %634 = bitcast %"class.kotlin::mm::ShadowStack"* %631 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %634, align 8, !tbaa !7
+  store i32 0, i32* %122, align 8, !tbaa !12
+  store i32 4, i32* %123, align 4, !tbaa !13
+  %635 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %636 = icmp eq i32 %635, 2
+  br i1 %636, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %626 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %627 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %626, %struct.ObjHeader** nonnull %110)
-  store %struct.ObjHeader* %627, %struct.ObjHeader** %110, align 8, !tbaa !3
-  %628 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %629 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %628, i64 0, i32 0
-  %630 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %631 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %630, i64 328
-  %632 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %631 to i32*
-  %633 = atomicrmw xchg i32* %632, i32 1 seq_cst, align 4
-  %634 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %629) #37
-  %635 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %630, null
-  br i1 %635, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %636
+  %637 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %638 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %637, %struct.ObjHeader** nonnull %117)
+  store %struct.ObjHeader* %638, %struct.ObjHeader** %117, align 8, !tbaa !3
+  %639 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %640 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %639, i64 0, i32 0
+  %641 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %642 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %641, i64 328
+  %643 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %642 to i32*
+  %644 = atomicrmw xchg i32* %643, i32 1 seq_cst, align 4
+  %645 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %640) #37
+  %646 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %641, null
+  br i1 %646, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %647
 
-636:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %637 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %631 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %638 = atomicrmw xchg i32* %632, i32 %633 seq_cst, align 4
-  %639 = icmp eq i32 %638, 1
-  %640 = icmp eq i32 %633, 0
-  %641 = and i1 %640, %639
-  br i1 %641, label %642, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+647:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %648 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %642 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %649 = atomicrmw xchg i32* %643, i32 %644 seq_cst, align 4
+  %650 = icmp eq i32 %649, 1
+  %651 = icmp eq i32 %644, 0
+  %652 = and i1 %651, %650
+  br i1 %652, label %653, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-642:                                              ; preds = %636
-  %643 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %644 = and i8 %643, 1
-  %645 = icmp eq i8 %644, 0
-  br i1 %645, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %646
+653:                                              ; preds = %647
+  %654 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %655 = and i8 %654, 1
+  %656 = icmp eq i8 %655, 0
+  br i1 %656, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %657
 
-646:                                              ; preds = %642
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %637) #37
+657:                                              ; preds = %653
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %648) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %646, %642, %636, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %647 = sext i32 %619 to i64
-  %648 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %628, i64 0, i32 2, i32 0, i32 1
-  %649 = load i64, i64* %648, align 8, !tbaa !104
-  %650 = urem i64 %647, %649
-  %651 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %628, i64 0, i32 2, i32 0, i32 0
-  %652 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %651, align 8, !tbaa !105
-  %653 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %652, i64 %650
-  %654 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %653, align 8, !tbaa !3
-  %655 = icmp eq %"struct.std::__detail::_Hash_node_base"* %654, null
-  br i1 %655, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %656
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %657, %653, %647, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %658 = sext i32 %630 to i64
+  %659 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %639, i64 0, i32 2, i32 0, i32 1
+  %660 = load atomic i64, i64* %659 unordered, align 8, !tbaa !102
+  %661 = urem i64 %658, %660
+  %662 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %639, i64 0, i32 2, i32 0, i32 0
+  %663 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %662 unordered, align 8, !tbaa !103
+  %664 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %663, i64 %661
+  %665 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %664 unordered, align 8, !tbaa !3
+  %666 = icmp eq %"struct.std::__detail::_Hash_node_base"* %665, null
+  br i1 %666, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %667
 
-656:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %657 = bitcast %"struct.std::__detail::_Hash_node_base"* %654 to %"struct.std::__detail::_Hash_node.203"**
-  %658 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %657, align 8, !tbaa !73
-  %659 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %658, i64 0, i32 0, i32 1
-  %660 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %659 to i32*
-  %661 = load i32, i32* %660, align 4, !tbaa !74
-  %662 = icmp eq i32 %661, %619
-  br i1 %662, label %679, label %.preheader
+667:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %668 = bitcast %"struct.std::__detail::_Hash_node_base"* %665 to %"struct.std::__detail::_Hash_node.203"**
+  %669 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %668 unordered, align 8, !tbaa !73
+  %670 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %669, i64 0, i32 0, i32 1
+  %671 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %670 to i32*
+  %672 = load atomic i32, i32* %671 unordered, align 4, !tbaa !66
+  %673 = icmp eq i32 %672, %630
+  br i1 %673, label %690, label %.preheader
 
-663:                                              ; preds = %670
-  %664 = icmp eq i32 %673, %619
-  br i1 %664, label %677, label %.preheader
+674:                                              ; preds = %681
+  %675 = icmp eq i32 %684, %630
+  br i1 %675, label %688, label %.preheader
 
-.preheader:                                       ; preds = %663, %656
-  %665 = phi %"struct.std::__detail::_Hash_node.203"* [ %669, %663 ], [ %658, %656 ]
-  %666 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %665, i64 0, i32 0, i32 0, i32 0
-  %667 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %666, align 8, !tbaa !73
-  %668 = icmp eq %"struct.std::__detail::_Hash_node_base"* %667, null
-  %669 = bitcast %"struct.std::__detail::_Hash_node_base"* %667 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %668, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %670
+.preheader:                                       ; preds = %674, %667
+  %676 = phi %"struct.std::__detail::_Hash_node.203"* [ %680, %674 ], [ %669, %667 ]
+  %677 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %676, i64 0, i32 0, i32 0, i32 0
+  %678 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %677 unordered, align 8, !tbaa !73
+  %679 = icmp eq %"struct.std::__detail::_Hash_node_base"* %678, null
+  %680 = bitcast %"struct.std::__detail::_Hash_node_base"* %678 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %679, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %681
 
-670:                                              ; preds = %.preheader
-  %671 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %667, i64 1
-  %672 = bitcast %"struct.std::__detail::_Hash_node_base"* %671 to i32*
-  %673 = load i32, i32* %672, align 4, !tbaa !74
-  %674 = sext i32 %673 to i64
-  %675 = urem i64 %674, %649
-  %676 = icmp eq i64 %675, %650
-  br i1 %676, label %663, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+681:                                              ; preds = %.preheader
+  %682 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %678, i64 1
+  %683 = bitcast %"struct.std::__detail::_Hash_node_base"* %682 to i32*
+  %684 = load atomic i32, i32* %683 unordered, align 4, !tbaa !66
+  %685 = sext i32 %684 to i64
+  %686 = urem i64 %685, %660
+  %687 = icmp eq i64 %686, %661
+  br i1 %687, label %674, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-677:                                              ; preds = %663
-  %678 = icmp eq %"struct.std::__detail::_Hash_node.203"* %665, null
-  br i1 %678, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %681
+688:                                              ; preds = %674
+  %689 = icmp eq %"struct.std::__detail::_Hash_node.203"* %676, null
+  br i1 %689, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %692
 
-679:                                              ; preds = %656
-  %680 = icmp eq %"struct.std::__detail::_Hash_node.203"* %658, null
-  br i1 %680, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %681
+690:                                              ; preds = %667
+  %691 = icmp eq %"struct.std::__detail::_Hash_node.203"* %669, null
+  br i1 %691, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %692
 
-681:                                              ; preds = %679, %677
-  %682 = phi %"struct.std::__detail::_Hash_node.203"* [ %669, %677 ], [ %658, %679 ]
-  %683 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %682, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %684 = bitcast i8* %683 to %"class.(anonymous namespace)::Future"**
-  %685 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %684, align 8, !tbaa !114
-  %686 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %685, i64 0, i32 3
-  %687 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %688 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %687, i64 328
-  %689 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688 to i32*
-  %690 = atomicrmw xchg i32* %689, i32 1 seq_cst, align 4
-  %691 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %686) #37
-  %692 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %687, null
-  br i1 %692, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %693
+692:                                              ; preds = %690, %688
+  %693 = phi %"struct.std::__detail::_Hash_node.203"* [ %680, %688 ], [ %669, %690 ]
+  %694 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %693, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %695 = bitcast i8* %694 to %"class.(anonymous namespace)::Future"**
+  %696 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %695 unordered, align 8, !tbaa !112
+  %697 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %696, i64 0, i32 3
+  %698 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %699 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %698, i64 328
+  %700 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %699 to i32*
+  %701 = atomicrmw xchg i32* %700, i32 1 seq_cst, align 4
+  %702 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %697) #37
+  %703 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %698, null
+  br i1 %703, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %704
 
-693:                                              ; preds = %681
-  %694 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %695 = atomicrmw xchg i32* %689, i32 %690 seq_cst, align 4
-  %696 = icmp eq i32 %695, 1
-  %697 = icmp eq i32 %690, 0
-  %698 = and i1 %697, %696
-  br i1 %698, label %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+704:                                              ; preds = %692
+  %705 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %699 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %706 = atomicrmw xchg i32* %700, i32 %701 seq_cst, align 4
+  %707 = icmp eq i32 %706, 1
+  %708 = icmp eq i32 %701, 0
+  %709 = and i1 %708, %707
+  br i1 %709, label %710, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-699:                                              ; preds = %693
-  %700 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %701 = and i8 %700, 1
-  %702 = icmp eq i8 %701, 0
-  br i1 %702, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %703
+710:                                              ; preds = %704
+  %711 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %712 = and i8 %711, 1
+  %713 = icmp eq i8 %712, 0
+  br i1 %713, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %714
 
-703:                                              ; preds = %699
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %694) #37
+714:                                              ; preds = %710
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %705) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %703, %699, %693, %681
-  %704 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %685, i64 0, i32 0
-  %705 = load i32, i32* %704, align 8, !tbaa !101
-  %706 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %707 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706, i64 328
-  %708 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %707 to i32*
-  %709 = atomicrmw xchg i32* %708, i32 1 seq_cst, align 4
-  %710 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %686) #37
-  %711 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706, null
-  br i1 %711, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %712
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %714, %710, %704, %692
+  %715 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %696, i64 0, i32 0
+  %716 = load atomic i32, i32* %715 unordered, align 8, !tbaa !99
+  %717 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %718 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717, i64 328
+  %719 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718 to i32*
+  %720 = atomicrmw xchg i32* %719, i32 1 seq_cst, align 4
+  %721 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %697) #37
+  %722 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717, null
+  br i1 %722, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %723
 
-712:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %713 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %707 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %714 = atomicrmw xchg i32* %708, i32 %709 seq_cst, align 4
-  %715 = icmp eq i32 %714, 1
-  %716 = icmp eq i32 %709, 0
-  %717 = and i1 %716, %715
-  br i1 %717, label %718, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+723:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %724 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %725 = atomicrmw xchg i32* %719, i32 %720 seq_cst, align 4
+  %726 = icmp eq i32 %725, 1
+  %727 = icmp eq i32 %720, 0
+  %728 = and i1 %727, %726
+  br i1 %728, label %729, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-718:                                              ; preds = %712
-  %719 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %720 = and i8 %719, 1
-  %721 = icmp eq i8 %720, 0
-  br i1 %721, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %722
+729:                                              ; preds = %723
+  %730 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %731 = and i8 %730, 1
+  %732 = icmp eq i8 %731, 0
+  br i1 %732, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %733
 
-722:                                              ; preds = %718
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %713) #37
+733:                                              ; preds = %729
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %724) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %722, %718, %712, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %679, %677, %670, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %723 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %677 ], [ 0, %679 ], [ %705, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %705, %722 ], [ %705, %718 ], [ %705, %712 ], [ 0, %.preheader ], [ 0, %670 ]
-  %724 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %725 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %724, i64 328
-  %726 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %725 to i32*
-  %727 = atomicrmw xchg i32* %726, i32 1 seq_cst, align 4
-  %728 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %629) #37
-  %729 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %724, null
-  br i1 %729, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %730
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %733, %729, %723, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %690, %688, %681, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %734 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %688 ], [ 0, %690 ], [ %716, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %716, %733 ], [ %716, %729 ], [ %716, %723 ], [ 0, %.preheader ], [ 0, %681 ]
+  %735 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %736 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735, i64 328
+  %737 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736 to i32*
+  %738 = atomicrmw xchg i32* %737, i32 1 seq_cst, align 4
+  %739 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %640) #37
+  %740 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735, null
+  br i1 %740, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %741
 
-730:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %731 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %725 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %732 = atomicrmw xchg i32* %726, i32 %727 seq_cst, align 4
-  %733 = icmp eq i32 %732, 1
-  %734 = icmp eq i32 %727, 0
-  %735 = and i1 %734, %733
-  br i1 %735, label %736, label %Kotlin_Worker_stateOfFuture.exit.i.i
+741:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %742 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %743 = atomicrmw xchg i32* %737, i32 %738 seq_cst, align 4
+  %744 = icmp eq i32 %743, 1
+  %745 = icmp eq i32 %738, 0
+  %746 = and i1 %745, %744
+  br i1 %746, label %747, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-736:                                              ; preds = %730
-  %737 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %738 = and i8 %737, 1
-  %739 = icmp eq i8 %738, 0
-  br i1 %739, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %740
+747:                                              ; preds = %741
+  %748 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %749 = and i8 %748, 1
+  %750 = icmp eq i8 %749, 0
+  br i1 %750, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %751
 
-740:                                              ; preds = %736
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %731) #37
+751:                                              ; preds = %747
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %742) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %740, %736, %730, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %741 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %627, i64 1
-  %742 = bitcast %struct.ObjHeader* %741 to i32*
-  %743 = load i32, i32* %742, align 8, !tbaa !18
-  %744 = icmp ugt i32 %743, %723
-  br i1 %744, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %745
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %751, %747, %741, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %752 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %638, i64 1
+  %753 = bitcast %struct.ObjHeader* %752 to i32*
+  %754 = load atomic i32, i32* %753 unordered, align 8, !tbaa !18
+  %755 = icmp ugt i32 %754, %734
+  br i1 %755, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %756
 
-745:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+756:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %746 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %627, i64 2
-  %747 = sext i32 %723 to i64
-  %748 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %746, i64 %747
-  %749 = bitcast %struct.ObjHeader* %748 to %struct.ObjHeader**
-  %750 = load %struct.ObjHeader*, %struct.ObjHeader** %749, align 8, !tbaa !3
-  store %struct.ObjHeader* %750, %struct.ObjHeader** %184, align 8, !tbaa !3
-  %751 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %752 = load i64, i64* %113, align 8, !tbaa !9
-  %753 = bitcast %"class.kotlin::mm::ShadowStack"* %751 to i64*
-  store i64 %752, i64* %753, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %109)
-  %754 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %750, i64 2
-  %755 = bitcast %struct.ObjHeader* %754 to i32*
-  %756 = load i32, i32* %755, align 4
-  switch i32 %756, label %when_next27.i [
+  %757 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %638, i64 2
+  %758 = sext i32 %734 to i64
+  %759 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %757, i64 %758
+  %760 = bitcast %struct.ObjHeader* %759 to %struct.ObjHeader**
+  %761 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %760 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %761, %struct.ObjHeader** %192, align 8, !tbaa !3
+  %762 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %763 = load atomic i64, i64* %120 unordered, align 8, !tbaa !9
+  %764 = bitcast %"class.kotlin::mm::ShadowStack"* %762 to i64*
+  store i64 %763, i64* %764, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
+  %765 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %761, i64 2
+  %766 = bitcast %struct.ObjHeader* %765 to i32*
+  %767 = load atomic i32, i32* %766 unordered, align 4
+  switch i32 %767, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1251,71 +1269,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %619, %struct.ObjHeader** nonnull %185)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %630, %struct.ObjHeader** nonnull %193)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %757 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %758 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %759 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %758 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %760 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %759, align 8, !tbaa !3
-  %761 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %760, i64 0, i32 2, i32 1
-  %762 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %761, i64 56) #37
-  %763 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %762, i64 1
-  %764 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %762, i64 2
-  %765 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %764 to %struct.ObjHeader*
-  %766 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %764 to %struct.TypeInfo**
-  %767 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %763 to i64*
-  store i64 0, i64* %767, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %766, align 8, !tbaa !14
-  %768 = bitcast %struct.ObjHeader** %757 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %764, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %768, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %765, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @137 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %765) #50
+  %768 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %769 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %770 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %769 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %771 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %770 unordered, align 8, !tbaa !3
+  %772 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %771, i64 0, i32 2, i32 1
+  %773 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %772, i64 56) #37
+  %774 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %773, i64 1
+  %775 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %773, i64 2
+  %776 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775 to %struct.ObjHeader*
+  %777 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775 to %struct.TypeInfo**
+  %778 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %774 to i64*
+  store i64 0, i64* %778, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %777, align 8, !tbaa !14
+  %779 = bitcast %struct.ObjHeader** %768 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %779, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %776, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @137 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %776) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %769 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %770 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %619, %struct.ObjHeader** nonnull %770)
-  %771 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %772 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %771 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %773 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %772, align 8, !tbaa !3
-  %774 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %773, i64 0, i32 2, i32 1
-  %775 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %774, i64 56) #37
-  %776 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775, i64 1
-  %777 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775, i64 2
-  %778 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %777 to %struct.ObjHeader*
-  %779 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %777 to %struct.TypeInfo**
-  %780 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %776 to i64*
-  store i64 0, i64* %780, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %779, align 8, !tbaa !14
-  %781 = bitcast %struct.ObjHeader** %769 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %777, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %781, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %778, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @138 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %778) #50
+  %780 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %781 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %630, %struct.ObjHeader** nonnull %781)
+  %782 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %783 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %782 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %784 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %783 unordered, align 8, !tbaa !3
+  %785 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %784, i64 0, i32 2, i32 1
+  %786 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %785, i64 56) #37
+  %787 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 1
+  %788 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 2
+  %789 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %struct.ObjHeader*
+  %790 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %struct.TypeInfo**
+  %791 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %787 to i64*
+  store i64 0, i64* %791, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %790, align 8, !tbaa !14
+  %792 = bitcast %struct.ObjHeader** %780 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %792, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %789, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @138 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %789) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %782 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %783 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %619, %struct.ObjHeader** nonnull %783)
-  %784 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %785 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %784 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %786 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %785, align 8, !tbaa !3
-  %787 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %786, i64 0, i32 2, i32 1
-  %788 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %787, i64 56) #37
-  %789 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788, i64 1
-  %790 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788, i64 2
-  %791 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %790 to %struct.ObjHeader*
-  %792 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %790 to %struct.TypeInfo**
-  %793 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %789 to i64*
-  store i64 0, i64* %793, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %792, align 8, !tbaa !14
-  %794 = bitcast %struct.ObjHeader** %782 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %790, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %794, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %791, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @139 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %791) #50
+  %793 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %794 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %630, %struct.ObjHeader** nonnull %794)
+  %795 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %796 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %795 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %797 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %796 unordered, align 8, !tbaa !3
+  %798 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %797, i64 0, i32 2, i32 1
+  %799 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %798, i64 56) #37
+  %800 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %799, i64 1
+  %801 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %799, i64 2
+  %802 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801 to %struct.ObjHeader*
+  %803 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801 to %struct.TypeInfo**
+  %804 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %800 to i64*
+  store i64 0, i64* %804, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %803, align 8, !tbaa !14
+  %805 = bitcast %struct.ObjHeader** %793 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %805, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %802, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @139 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %802) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1328,10 +1346,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %795 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %796 = bitcast %"class.kotlin::mm::ShadowStack"* %795 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %180)
-  %797 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %797, i64* %796, align 8, !tbaa !7
+  %806 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %807 = bitcast %"class.kotlin::mm::ShadowStack"* %806 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %188)
+  %808 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %808, i64* %807, align 8, !tbaa !7
   ret void
 }
