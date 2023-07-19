--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedIntArray100Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:52:42.670548621 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedIntArray100Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:04:12.950340002 +0200
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
   %38 = bitcast [8 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %39 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to i64*
-  %40 = load i64, i64* %39, align 8, !tbaa !7
+  %40 = load atomic i64, i64* %39 unordered, align 8, !tbaa !7
   %41 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %42 = bitcast %struct.ObjHeader** %41 to i64*
   store i64 %40, i64* %42, align 8, !tbaa !9
@@ -75,225 +75,239 @@
   %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29 to %"kclassbody:MultithreadedLoopsBenchmark#internal"*
   %50 = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %49, i64 0, i32 4
   store i32 10000, i32* %50, align 4
-  %51 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %0, i64 0, i64 3
-  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %53 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %52 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %54 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %53, align 8, !tbaa !3
-  %55 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %54, i64 0, i32 2, i32 1
-  %56 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %55, i64 40024) #37
-  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 1
-  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 2
-  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.TypeInfo**
-  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %59, align 8, !tbaa !16
-  %61 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 3
-  %62 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %61 to i32*
-  store i32 10000, i32* %62, align 8, !tbaa !18
-  %63 = bitcast %struct.ObjHeader** %51 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %64 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to i64*
-  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 4
-  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i32*
+  %51 = load atomic i32, i32* %50 unordered, align 4
+  %52 = icmp slt i32 %51, 0
+  br i1 %52, label %53, label %AllocArrayInstance.exit.i3
+
+53:                                               ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  call fastcc void @ThrowIllegalArgumentException() #50
+  unreachable
+
+AllocArrayInstance.exit.i3:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %54 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %0, i64 0, i64 3
+  %55 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %56 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %55 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %57 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %56 unordered, align 8, !tbaa !3
+  %58 = zext i32 %51 to i64
+  %59 = shl nuw nsw i64 %58, 2
+  %60 = add nuw nsw i64 %59, 31
+  %61 = and i64 %60, 34359738360
+  %62 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %57, i64 0, i32 2, i32 1
+  %63 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %62, i64 %61) #37
+  %64 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 1
+  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 2
+  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to %struct.TypeInfo**
+  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %66, align 8, !tbaa !16
+  %68 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 3
+  %69 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %68 to i32*
+  store i32 %51, i32* %69, align 8, !tbaa !18
+  %70 = bitcast %struct.ObjHeader** %54 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %70, align 8, !tbaa !3
+  %71 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i64*
+  %72 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 4
+  %73 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %72 to i32*
+  %wide.trip.count59 = zext i32 %51 to i64
   br label %loop_check.i7
 
 while_loop.i4:                                    ; preds = %loop_check.i7
-  %67 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %68 = and i8 %67, 1
-  %69 = icmp eq i8 %68, 0
-  br i1 %69, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %70
+  %74 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %75 = and i8 %74, 1
+  %76 = icmp eq i8 %75, 0
+  br i1 %76, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %77
 
-70:                                               ; preds = %while_loop.i4
+77:                                               ; preds = %while_loop.i4
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i5
 
-Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %70, %while_loop.i4
-  %71 = load i32, i32* %62, align 8, !tbaa !18
-  %72 = zext i32 %71 to i64
-  %73 = icmp ult i64 %indvars.iv57, %72
-  br i1 %73, label %Kotlin_IntArray_set.exit.i, label %74
+Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %77, %while_loop.i4
+  %78 = load atomic i32, i32* %69 unordered, align 8, !tbaa !18
+  %79 = zext i32 %78 to i64
+  %80 = icmp ult i64 %indvars.iv57, %79
+  br i1 %80, label %Kotlin_IntArray_set.exit.i, label %81
 
-74:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
+81:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_IntArray_set.exit.i:                       ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %75 = load atomic volatile i64, i64* %64 monotonic, align 8
-  %76 = getelementptr inbounds i32, i32* %66, i64 %indvars.iv57
-  %77 = trunc i64 %indvars.iv57 to i32
-  store i32 %77, i32* %76, align 4, !tbaa !74
+  %82 = load atomic volatile i64, i64* %71 monotonic, align 8
+  %83 = getelementptr inbounds i32, i32* %73, i64 %indvars.iv57
+  %84 = trunc i64 %indvars.iv57 to i32
+  store i32 %84, i32* %83, align 4, !tbaa !66
   %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
   br label %loop_check.i7
 
-loop_check.i7:                                    ; preds = %Kotlin_IntArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_IntArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
-  br i1 %exitcond59.not, label %loop_exit.i8, label %while_loop.i4
+loop_check.i7:                                    ; preds = %Kotlin_IntArray_set.exit.i, %AllocArrayInstance.exit.i3
+  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_IntArray_set.exit.i ], [ 0, %AllocArrayInstance.exit.i3 ]
+  %exitcond60.not = icmp eq i64 %indvars.iv57, %wide.trip.count59
+  br i1 %exitcond60.not, label %loop_exit.i8, label %while_loop.i4
 
 loop_exit.i8:                                     ; preds = %loop_check.i7
-  %78 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %78, align 8, !tbaa !3
-  %79 = load i32, i32* %48, align 8
-  %80 = icmp slt i32 %79, 0
-  br i1 %80, label %when_case.i9, label %AllocArrayInstance.exit1.i
+  %85 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %85, align 8, !tbaa !3
+  %86 = load atomic i32, i32* %48 unordered, align 8
+  %87 = icmp slt i32 %86, 0
+  br i1 %87, label %when_case.i9, label %AllocArrayInstance.exit1.i
 
 when_case.i9:                                     ; preds = %loop_exit.i8
-  %81 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %0, i64 0, i64 4
-  %82 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %83 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %82 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %84 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %83, align 8, !tbaa !3
-  %85 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %84, i64 0, i32 2, i32 1
-  %86 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %85, i64 56) #37
-  %87 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %86, i64 1
-  %88 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %86, i64 2
-  %89 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88 to %struct.ObjHeader*
-  %90 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88 to %struct.TypeInfo**
-  %91 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %87 to i64*
-  store i64 0, i64* %91, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %90, align 8, !tbaa !14
-  %92 = bitcast %struct.ObjHeader** %81 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %92, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %89, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %89) #50
+  %88 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %0, i64 0, i64 4
+  %89 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %90 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %89 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %91 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %90 unordered, align 8, !tbaa !3
+  %92 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %91, i64 0, i32 2, i32 1
+  %93 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %92, i64 56) #37
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 1
+  %95 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 2
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.ObjHeader*
+  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.TypeInfo**
+  %98 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
+  store i64 0, i64* %98, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %97, align 8, !tbaa !14
+  %99 = bitcast %struct.ObjHeader** %88 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %99, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %96, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %96) #50
   unreachable
 
 AllocArrayInstance.exit1.i:                       ; preds = %loop_exit.i8
-  %93 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %94 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %93 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %95 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %94, align 8, !tbaa !3
-  %96 = zext i32 %79 to i64
-  %97 = shl nuw nsw i64 %96, 3
-  %98 = add nuw nsw i64 %97, 31
-  %99 = and i64 %98, 68719476728
-  %100 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %95, i64 0, i32 2, i32 1
-  %101 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %100, i64 %99) #37
-  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101, i64 1
-  %103 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101, i64 2
-  %104 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103 to %struct.TypeInfo**
-  %105 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %105, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %104, align 8, !tbaa !16
-  %106 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101, i64 3
-  %107 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106 to i32*
-  store i32 %79, i32* %107, align 8, !tbaa !18
-  %108 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %108, align 8, !tbaa !3
-  %109 = bitcast %struct.ObjHeader** %35 to i64*
-  %110 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %100 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %101 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %100 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %102 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %101 unordered, align 8, !tbaa !3
+  %103 = zext i32 %86 to i64
+  %104 = shl nuw nsw i64 %103, 3
+  %105 = add nuw nsw i64 %104, 31
+  %106 = and i64 %105, 68719476728
+  %107 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %102, i64 0, i32 2, i32 1
+  %108 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %107, i64 %106) #37
+  %109 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 1
+  %110 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 2
+  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to %struct.TypeInfo**
+  %112 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %112, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %111, align 8, !tbaa !16
+  %113 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 3
+  %114 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %113 to i32*
+  store i32 %86, i32* %114, align 8, !tbaa !18
+  %115 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %115, align 8, !tbaa !3
+  %116 = bitcast %struct.ObjHeader** %35 to i64*
+  %117 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
   %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %111 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %112 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %113 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %114 = bitcast %struct.ObjHeader** %113 to i64*
-  %115 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %116 = bitcast %struct.ObjHeader** %115 to i32*
-  %117 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %112, i64 0, i32 3
-  %118 = bitcast %struct.ObjHeader** %111 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %119 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %120 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103 to i64*
-  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101, i64 4
-  %wide.trip.count55 = zext i32 %79 to i64
+  %118 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %119 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %120 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %121 = bitcast %struct.ObjHeader** %120 to i64*
+  %122 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %123 = bitcast %struct.ObjHeader** %122 to i32*
+  %124 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %119, i64 0, i32 3
+  %125 = bitcast %struct.ObjHeader** %118 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %126 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %127 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to i64*
+  %128 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 4
+  %wide.trip.count55 = zext i32 %86 to i64
   br label %loop_check14.i
 
 while_loop15.i:                                   ; preds = %loop_check14.i
-  %122 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %123 = and i8 %122, 1
-  %124 = icmp eq i8 %123, 0
-  br i1 %124, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %125
+  %129 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %130 = and i8 %129, 1
+  %131 = icmp eq i8 %130, 0
+  br i1 %131, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %132
 
-125:                                              ; preds = %while_loop15.i
+132:                                              ; preds = %while_loop15.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit2.i
 
-Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %125, %while_loop15.i
-  %126 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %126, i64* %109, align 8, !tbaa !3
-  %127 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %128 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %127, i32 0)
-  %129 = icmp eq %class.Worker* %128, null
-  br i1 %129, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %130
+Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %132, %while_loop15.i
+  %133 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %133, i64* %116, align 8, !tbaa !3
+  %134 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %135 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %134, i32 0)
+  %136 = icmp eq %class.Worker* %135, null
+  br i1 %136, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %137
 
-130:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
-  %131 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %132 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %131, i64 328
-  %133 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %132 to i32*
-  %134 = atomicrmw xchg i32* %133, i32 1 seq_cst, align 4
-  %135 = getelementptr inbounds %class.Worker, %class.Worker* %128, i64 0, i32 9
-  %136 = bitcast %class.Worker* %128 to i8*
-  %137 = call i32 @pthread_create(i64* nonnull %135, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %136) #37
-  %138 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %131, null
-  br i1 %138, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %139
+137:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
+  %138 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %139 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138, i64 328
+  %140 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %139 to i32*
+  %141 = atomicrmw xchg i32* %140, i32 1 seq_cst, align 4
+  %142 = getelementptr inbounds %class.Worker, %class.Worker* %135, i64 0, i32 9
+  %143 = bitcast %class.Worker* %135 to i8*
+  %144 = call i32 @pthread_create(i64* nonnull %142, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %143) #37
+  %145 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138, null
+  br i1 %145, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %146
 
-139:                                              ; preds = %130
-  %140 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %132 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %141 = atomicrmw xchg i32* %133, i32 %134 seq_cst, align 4
-  %142 = icmp eq i32 %141, 1
-  %143 = icmp eq i32 %134, 0
-  %144 = and i1 %143, %142
-  br i1 %144, label %145, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
+146:                                              ; preds = %137
+  %147 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %139 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %148 = atomicrmw xchg i32* %140, i32 %141 seq_cst, align 4
+  %149 = icmp eq i32 %148, 1
+  %150 = icmp eq i32 %141, 0
+  %151 = and i1 %150, %149
+  br i1 %151, label %152, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-145:                                              ; preds = %139
-  %146 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %147 = and i8 %146, 1
-  %148 = icmp eq i8 %147, 0
-  br i1 %148, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %149
+152:                                              ; preds = %146
+  %153 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %154 = and i8 %153, 1
+  %155 = icmp eq i8 %154, 0
+  br i1 %155, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %156
 
-149:                                              ; preds = %145
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %140) #37
+156:                                              ; preds = %152
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %147) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %149, %145, %139, %130
-  %150 = getelementptr inbounds %class.Worker, %class.Worker* %128, i64 0, i32 0
-  %151 = load i32, i32* %150, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %156, %152, %146, %137
+  %157 = getelementptr inbounds %class.Worker, %class.Worker* %135, i64 0, i32 0
+  %158 = load atomic i32, i32* %157 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
 "kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit2.i
-  %152 = phi i32 [ %151, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %110)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %110, i8 0, i32 32, i1 immarg false) #49
-  %153 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %154 = bitcast %"class.kotlin::mm::ShadowStack"* %153 to i64*
-  %155 = load i64, i64* %154, align 8, !tbaa !7
-  store i64 %155, i64* %114, align 8, !tbaa !9
-  %156 = bitcast %"class.kotlin::mm::ShadowStack"* %153 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %156, align 8, !tbaa !7
-  store i32 0, i32* %116, align 8, !tbaa !12
-  store i32 4, i32* %117, align 4, !tbaa !13
-  %157 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %158 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %157 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %159 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %158, align 8, !tbaa !3
-  %160 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %159, i64 0, i32 2, i32 1
-  %161 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %160, i64 24) #37
-  %162 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %161, i64 1
-  %163 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %161, i64 2
-  %164 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %163 to %struct.TypeInfo**
-  %165 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to i64*
-  store i64 0, i64* %165, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %164, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %163, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %118, align 8, !tbaa !3
-  %166 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %161, i64 3
-  %167 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166 to i32*
-  store i32 %152, i32* %167, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %163, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %119, align 8, !tbaa !3
-  %168 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %169 = load i64, i64* %114, align 8, !tbaa !9
-  %170 = bitcast %"class.kotlin::mm::ShadowStack"* %168 to i64*
-  store i64 %169, i64* %170, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %110)
-  %171 = load i32, i32* %107, align 8, !tbaa !18
-  %172 = zext i32 %171 to i64
-  %173 = icmp ult i64 %indvars.iv53, %172
-  br i1 %173, label %Kotlin_Array_set.exit.i13, label %174
+  %159 = phi i32 [ %158, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %117)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %117, i8 0, i32 32, i1 immarg false) #49
+  %160 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %161 = bitcast %"class.kotlin::mm::ShadowStack"* %160 to i64*
+  %162 = load atomic i64, i64* %161 unordered, align 8, !tbaa !7
+  store i64 %162, i64* %121, align 8, !tbaa !9
+  %163 = bitcast %"class.kotlin::mm::ShadowStack"* %160 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %163, align 8, !tbaa !7
+  store i32 0, i32* %123, align 8, !tbaa !12
+  store i32 4, i32* %124, align 4, !tbaa !13
+  %164 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %165 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %164 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %166 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %165 unordered, align 8, !tbaa !3
+  %167 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %166, i64 0, i32 2, i32 1
+  %168 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %167, i64 24) #37
+  %169 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168, i64 1
+  %170 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168, i64 2
+  %171 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %170 to %struct.TypeInfo**
+  %172 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169 to i64*
+  store i64 0, i64* %172, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %171, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %170, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %125, align 8, !tbaa !3
+  %173 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168, i64 3
+  %174 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %173 to i32*
+  store i32 %159, i32* %174, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %170, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %126, align 8, !tbaa !3
+  %175 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %176 = load atomic i64, i64* %121 unordered, align 8, !tbaa !9
+  %177 = bitcast %"class.kotlin::mm::ShadowStack"* %175 to i64*
+  store i64 %176, i64* %177, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %117)
+  %178 = load atomic i32, i32* %114 unordered, align 8, !tbaa !18
+  %179 = zext i32 %178 to i64
+  %180 = icmp ult i64 %indvars.iv53, %179
+  br i1 %180, label %Kotlin_Array_set.exit.i13, label %181
 
-174:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+181:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %175 = load atomic volatile i64, i64* %120 monotonic, align 8
-  %176 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121, i64 %indvars.iv53
-  %177 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %176, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %163, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %177, align 8, !tbaa !3
+  %182 = load atomic volatile i64, i64* %127 monotonic, align 8
+  %183 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128, i64 %indvars.iv53
+  %184 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %183, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %170, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %184, align 8, !tbaa !3
   %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
   br label %loop_check14.i
 
@@ -303,697 +317,701 @@
   br i1 %exitcond56.not, label %call_success, label %while_loop15.i
 
 call_success:                                     ; preds = %loop_check14.i
-  %178 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %178, align 8, !tbaa !3
-  %179 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %180 = load i64, i64* %42, align 8, !tbaa !3
+  %185 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %185, align 8, !tbaa !3
+  %186 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %187 = load atomic i64, i64* %42 unordered, align 8, !tbaa !9
+  %188 = bitcast %"class.kotlin::mm::ShadowStack"* %186 to i64*
+  store i64 %187, i64* %188, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %33)
-  %181 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %181)
+  %189 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %189)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %181, i8 0, i32 136, i1 immarg false) #49
-  %182 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %183 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %184 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %185 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %186 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %187 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %188 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %189 = bitcast %struct.ObjHeader** %188 to i64*
-  store i64 %180, i64* %189, align 8, !tbaa !9
-  %190 = bitcast %"class.kotlin::mm::ShadowStack"* %179 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %190, align 8, !tbaa !7
-  %191 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %192 = bitcast %struct.ObjHeader** %191 to i32*
-  store i32 0, i32* %192, align 8, !tbaa !12
-  %193 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %187, i64 0, i32 3
-  store i32 17, i32* %193, align 4, !tbaa !13
-  %194 = load i32, i32* %48, align 8
-  %195 = icmp slt i32 %194, 0
-  br i1 %195, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %189, i8 0, i32 136, i1 immarg false) #49
+  %190 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %191 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %192 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %193 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %194 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %195 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %196 = load atomic i64, i64* %188 unordered, align 8, !tbaa !7
+  %197 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %198 = bitcast %struct.ObjHeader** %197 to i64*
+  store i64 %196, i64* %198, align 8, !tbaa !9
+  %199 = bitcast %"class.kotlin::mm::ShadowStack"* %186 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %199, align 8, !tbaa !7
+  %200 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %201 = bitcast %struct.ObjHeader** %200 to i32*
+  store i32 0, i32* %201, align 8, !tbaa !12
+  %202 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %195, i64 0, i32 3
+  store i32 17, i32* %202, align 4, !tbaa !13
+  %203 = load atomic i32, i32* %48 unordered, align 8
+  %204 = icmp slt i32 %203, 0
+  br i1 %204, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %196 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %197 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %198 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %197 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %199 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %198, align 8, !tbaa !3
-  %200 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %199, i64 0, i32 2, i32 1
-  %201 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %200, i64 56) #37
-  %202 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %201, i64 1
-  %203 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %201, i64 2
-  %204 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203 to %struct.ObjHeader*
-  %205 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203 to %struct.TypeInfo**
-  %206 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202 to i64*
-  store i64 0, i64* %206, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %205, align 8, !tbaa !14
-  %207 = bitcast %struct.ObjHeader** %196 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %207, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %204, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %204) #50
+  %205 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %206 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %207 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %206 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %208 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %207 unordered, align 8, !tbaa !3
+  %209 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %208, i64 0, i32 2, i32 1
+  %210 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %209, i64 56) #37
+  %211 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %210, i64 1
+  %212 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %210, i64 2
+  %213 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %212 to %struct.ObjHeader*
+  %214 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %212 to %struct.TypeInfo**
+  %215 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211 to i64*
+  store i64 0, i64* %215, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %214, align 8, !tbaa !14
+  %216 = bitcast %struct.ObjHeader** %205 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %212, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %216, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %213, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %213) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %208 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %209 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %210 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %211 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %212 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %211 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %213 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %212, align 8, !tbaa !3
-  %214 = zext i32 %194 to i64
-  %215 = shl nuw nsw i64 %214, 3
-  %216 = add nuw nsw i64 %215, 31
-  %217 = and i64 %216, 68719476728
-  %218 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %213, i64 0, i32 2, i32 1
-  %219 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %218, i64 %217) #37
-  %220 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, i64 1
-  %221 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, i64 2
-  %222 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %221 to %struct.TypeInfo**
-  %223 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %220 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %223, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %222, align 8, !tbaa !16
-  %224 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, i64 3
-  %225 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %224 to i32*
-  store i32 %194, i32* %225, align 8, !tbaa !18
-  %226 = bitcast %struct.ObjHeader** %210 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %221, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %226, align 8, !tbaa !3
-  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %228 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to %struct.ObjHeader**
-  %229 = bitcast %struct.ObjHeader** %209 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %230 = bitcast %class.ObjHolder* %3 to i8*
-  %231 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %232 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %233 = bitcast %struct.FrameOverlay.6** %232 to i64*
-  %234 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %235 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %236 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %237 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %238 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %239 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %240 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %241 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %242 = bitcast %struct.ObjHeader** %208 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %243 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %221 to i64*
-  %244 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, i64 4
-  %wide.trip.count51 = zext i32 %194 to i64
+  %217 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %218 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %219 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %220 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %221 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %220 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %222 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %221 unordered, align 8, !tbaa !3
+  %223 = zext i32 %203 to i64
+  %224 = shl nuw nsw i64 %223, 3
+  %225 = add nuw nsw i64 %224, 31
+  %226 = and i64 %225, 68719476728
+  %227 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %222, i64 0, i32 2, i32 1
+  %228 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %227, i64 %226) #37
+  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, i64 1
+  %230 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, i64 2
+  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230 to %struct.TypeInfo**
+  %232 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %232, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %231, align 8, !tbaa !16
+  %233 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, i64 3
+  %234 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to i32*
+  store i32 %203, i32* %234, align 8, !tbaa !18
+  %235 = bitcast %struct.ObjHeader** %219 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %235, align 8, !tbaa !3
+  %236 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %237 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %236 to %struct.ObjHeader**
+  %238 = bitcast %struct.ObjHeader** %218 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %239 = bitcast %class.ObjHolder* %3 to i8*
+  %240 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %241 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %242 = bitcast %struct.FrameOverlay.6** %241 to i64*
+  %243 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %244 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %245 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %246 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %247 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %248 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %249 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %250 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %251 = bitcast %struct.ObjHeader** %217 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230 to i64*
+  %253 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, i64 4
+  %wide.trip.count51 = zext i32 %203 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %245 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %246 = and i8 %245, 1
-  %247 = icmp eq i8 %246, 0
-  br i1 %247, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %248
+  %254 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %255 = and i8 %254, 1
+  %256 = icmp eq i8 %255, 0
+  br i1 %256, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %257
 
-248:                                              ; preds = %while_loop.i
+257:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %248, %while_loop.i
-  %249 = load %struct.ObjHeader*, %struct.ObjHeader** %228, align 8
-  %250 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %249, i64 1
-  %251 = bitcast %struct.ObjHeader* %250 to i32*
-  %252 = load i32, i32* %251, align 8, !tbaa !18
-  %253 = zext i32 %252 to i64
-  %254 = icmp ult i64 %indvars.iv49, %253
-  br i1 %254, label %Kotlin_Array_get.exit.i, label %255
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %257, %while_loop.i
+  %258 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %237 unordered, align 8
+  %259 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %258, i64 1
+  %260 = bitcast %struct.ObjHeader* %259 to i32*
+  %261 = load atomic i32, i32* %260 unordered, align 8, !tbaa !18
+  %262 = zext i32 %261 to i64
+  %263 = icmp ult i64 %indvars.iv49, %262
+  br i1 %263, label %Kotlin_Array_get.exit.i, label %264
 
-255:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+264:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %256 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %249, i64 2
-  %257 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %256, i64 %indvars.iv49
-  %258 = bitcast %struct.ObjHeader* %257 to %struct.ObjHeader**
-  %259 = load %struct.ObjHeader*, %struct.ObjHeader** %258, align 8, !tbaa !3
-  store %struct.ObjHeader* %259, %struct.ObjHeader** %182, align 8, !tbaa !3
-  %260 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %259, i64 1
-  %261 = bitcast %struct.ObjHeader* %260 to i32*
-  %262 = load i32, i32* %261, align 4
-  %263 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %264 = icmp eq i32 %263, 2
-  br i1 %264, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %265 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %258, i64 2
+  %266 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %265, i64 %indvars.iv49
+  %267 = bitcast %struct.ObjHeader* %266 to %struct.ObjHeader**
+  %268 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %267 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %268, %struct.ObjHeader** %190, align 8, !tbaa !3
+  %269 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %268, i64 1
+  %270 = bitcast %struct.ObjHeader* %269 to i32*
+  %271 = load atomic i32, i32* %270 unordered, align 4
+  %272 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %273 = icmp eq i32 %272, 2
+  br i1 %273, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %265 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %266 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %265, i64 2
-  %267 = bitcast %struct.ObjHeader* %266 to %struct.ObjHeader**
-  %268 = load %struct.ObjHeader*, %struct.ObjHeader** %267, align 8, !tbaa !3
-  store %struct.ObjHeader* %268, %struct.ObjHeader** %183, align 8, !tbaa !3
-  %269 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %270 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %269 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %271 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %270, align 8, !tbaa !3
-  %272 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %271, i64 0, i32 2, i32 1
-  %273 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %272, i64 24) #37
-  %274 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %273, i64 1
-  %275 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %273, i64 2
-  %276 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %275 to %struct.ObjHeader*
-  %277 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %275 to %struct.TypeInfo**
-  %278 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %274 to i64*
-  store i64 0, i64* %278, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedIntArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %277, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %275, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %229, align 8, !tbaa !3
-  %279 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %273, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %279, align 8, !tbaa !3
-  %280 = bitcast %struct.ObjHeader* %268 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %281 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %280, i64 0, i32 3
-  %282 = load i32, i32* %281, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %230) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %231, align 8, !tbaa !61
-  %283 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %284 = bitcast %"class.kotlin::mm::ShadowStack"* %283 to i64*
-  %285 = load i64, i64* %284, align 8, !tbaa !7
-  store i64 %285, i64* %233, align 8, !tbaa !9
-  %286 = bitcast %"class.kotlin::mm::ShadowStack"* %283 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %286, align 8, !tbaa !7
-  store i32 0, i32* %234, align 8, !tbaa !12
-  store i32 4, i32* %235, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %276, %struct.ObjHeader** nonnull %231)
-          to label %287 unwind label %571
+  %274 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %275 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %274, i64 2
+  %276 = bitcast %struct.ObjHeader* %275 to %struct.ObjHeader**
+  %277 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %276 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %277, %struct.ObjHeader** %191, align 8, !tbaa !3
+  %278 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %279 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %278 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %280 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %279 unordered, align 8, !tbaa !3
+  %281 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %280, i64 0, i32 2, i32 1
+  %282 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %281, i64 24) #37
+  %283 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %282, i64 1
+  %284 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %282, i64 2
+  %285 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %284 to %struct.ObjHeader*
+  %286 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %284 to %struct.TypeInfo**
+  %287 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283 to i64*
+  store i64 0, i64* %287, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedIntArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %286, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %284, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %238, align 8, !tbaa !3
+  %288 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %282, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %288, align 8, !tbaa !3
+  %289 = bitcast %struct.ObjHeader* %277 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %290 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %289, i64 0, i32 3
+  %291 = load atomic i32, i32* %290 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %239) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %240, align 8, !tbaa !60
+  %292 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %293 = bitcast %"class.kotlin::mm::ShadowStack"* %292 to i64*
+  %294 = load atomic i64, i64* %293 unordered, align 8, !tbaa !7
+  store i64 %294, i64* %242, align 8, !tbaa !9
+  %295 = bitcast %"class.kotlin::mm::ShadowStack"* %292 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %295, align 8, !tbaa !7
+  store i32 0, i32* %243, align 8, !tbaa !12
+  store i32 4, i32* %244, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %285, %struct.ObjHeader** nonnull %240)
+          to label %296 unwind label %582
 
-287:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %288 = load %struct.ObjHeader*, %struct.ObjHeader** %231, align 8, !tbaa !61
-  %289 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %288) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %231, align 8, !tbaa !3
-  %290 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %236)
-  %291 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 0
-  %292 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %293 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %292, i64 328
-  %294 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %293 to i32*
-  %295 = atomicrmw xchg i32* %294, i32 1 seq_cst, align 4
-  %296 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %291) #37
-  %297 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %292, null
-  br i1 %297, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %298
+296:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %297 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %240 unordered, align 8, !tbaa !60
+  %298 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %297) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %240, align 8, !tbaa !3
+  %299 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %245)
+  %300 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 0
+  %301 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %302 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %301, i64 328
+  %303 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %302 to i32*
+  %304 = atomicrmw xchg i32* %303, i32 1 seq_cst, align 4
+  %305 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %300) #37
+  %306 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %301, null
+  br i1 %306, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %307
 
-298:                                              ; preds = %287
-  %299 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %293 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %300 = atomicrmw xchg i32* %294, i32 %295 seq_cst, align 4
-  %301 = icmp eq i32 %300, 1
-  %302 = icmp eq i32 %295, 0
-  %303 = and i1 %302, %301
-  br i1 %303, label %304, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+307:                                              ; preds = %296
+  %308 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %302 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %309 = atomicrmw xchg i32* %303, i32 %304 seq_cst, align 4
+  %310 = icmp eq i32 %309, 1
+  %311 = icmp eq i32 %304, 0
+  %312 = and i1 %311, %310
+  br i1 %312, label %313, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-304:                                              ; preds = %298
-  %305 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %306 = and i8 %305, 1
-  %307 = icmp eq i8 %306, 0
-  br i1 %307, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %308
+313:                                              ; preds = %307
+  %314 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %315 = and i8 %314, 1
+  %316 = icmp eq i8 %315, 0
+  br i1 %316, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %317
 
-308:                                              ; preds = %304
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %299) #37
+317:                                              ; preds = %313
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %308) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %308, %304, %298, %287
-  %309 = sext i32 %262 to i64
-  %310 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 3, i32 0, i32 1
-  %311 = load i64, i64* %310, align 8, !tbaa !67
-  %312 = urem i64 %309, %311
-  %313 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 3, i32 0, i32 0
-  %314 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %313, align 8, !tbaa !72
-  %315 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %314, i64 %312
-  %316 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %315, align 8, !tbaa !3
-  %317 = icmp eq %"struct.std::__detail::_Hash_node_base"* %316, null
-  br i1 %317, label %.loopexit17, label %318
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %317, %313, %307, %296
+  %318 = sext i32 %271 to i64
+  %319 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 3, i32 0, i32 1
+  %320 = load atomic i64, i64* %319 unordered, align 8, !tbaa !67
+  %321 = urem i64 %318, %320
+  %322 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 3, i32 0, i32 0
+  %323 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %322 unordered, align 8, !tbaa !72
+  %324 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %323, i64 %321
+  %325 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %324 unordered, align 8, !tbaa !3
+  %326 = icmp eq %"struct.std::__detail::_Hash_node_base"* %325, null
+  br i1 %326, label %.loopexit17, label %327
 
-318:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %319 = bitcast %"struct.std::__detail::_Hash_node_base"* %316 to %"struct.std::__detail::_Hash_node.203"**
-  %320 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %319, align 8, !tbaa !73
-  %321 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %320, i64 0, i32 0, i32 1
-  %322 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %321 to i32*
-  %323 = load i32, i32* %322, align 4, !tbaa !74
-  %324 = icmp eq i32 %323, %262
-  br i1 %324, label %341, label %.preheader16
+327:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %328 = bitcast %"struct.std::__detail::_Hash_node_base"* %325 to %"struct.std::__detail::_Hash_node.203"**
+  %329 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %328 unordered, align 8, !tbaa !73
+  %330 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %329, i64 0, i32 0, i32 1
+  %331 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %330 to i32*
+  %332 = load atomic i32, i32* %331 unordered, align 4, !tbaa !66
+  %333 = icmp eq i32 %332, %271
+  br i1 %333, label %350, label %.preheader16
 
-325:                                              ; preds = %332
-  %326 = icmp eq i32 %335, %262
-  br i1 %326, label %339, label %.preheader16
+334:                                              ; preds = %341
+  %335 = icmp eq i32 %344, %271
+  br i1 %335, label %348, label %.preheader16
 
-.preheader16:                                     ; preds = %325, %318
-  %327 = phi %"struct.std::__detail::_Hash_node.203"* [ %331, %325 ], [ %320, %318 ]
-  %328 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %327, i64 0, i32 0, i32 0, i32 0
-  %329 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %328, align 8, !tbaa !73
-  %330 = icmp eq %"struct.std::__detail::_Hash_node_base"* %329, null
-  %331 = bitcast %"struct.std::__detail::_Hash_node_base"* %329 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %330, label %.loopexit17, label %332
+.preheader16:                                     ; preds = %334, %327
+  %336 = phi %"struct.std::__detail::_Hash_node.203"* [ %340, %334 ], [ %329, %327 ]
+  %337 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %336, i64 0, i32 0, i32 0, i32 0
+  %338 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %337 unordered, align 8, !tbaa !73
+  %339 = icmp eq %"struct.std::__detail::_Hash_node_base"* %338, null
+  %340 = bitcast %"struct.std::__detail::_Hash_node_base"* %338 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %339, label %.loopexit17, label %341
 
-332:                                              ; preds = %.preheader16
-  %333 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %329, i64 1
-  %334 = bitcast %"struct.std::__detail::_Hash_node_base"* %333 to i32*
-  %335 = load i32, i32* %334, align 4, !tbaa !74
-  %336 = sext i32 %335 to i64
-  %337 = urem i64 %336, %311
-  %338 = icmp eq i64 %337, %312
-  br i1 %338, label %325, label %.loopexit17
+341:                                              ; preds = %.preheader16
+  %342 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %338, i64 1
+  %343 = bitcast %"struct.std::__detail::_Hash_node_base"* %342 to i32*
+  %344 = load atomic i32, i32* %343 unordered, align 4, !tbaa !66
+  %345 = sext i32 %344 to i64
+  %346 = urem i64 %345, %320
+  %347 = icmp eq i64 %346, %321
+  br i1 %347, label %334, label %.loopexit17
 
-339:                                              ; preds = %325
-  %340 = icmp eq %"struct.std::__detail::_Hash_node.203"* %327, null
-  br i1 %340, label %.loopexit17, label %343
+348:                                              ; preds = %334
+  %349 = icmp eq %"struct.std::__detail::_Hash_node.203"* %336, null
+  br i1 %349, label %.loopexit17, label %352
 
-341:                                              ; preds = %318
-  %342 = icmp eq %"struct.std::__detail::_Hash_node.203"* %320, null
-  br i1 %342, label %.loopexit17, label %343
+350:                                              ; preds = %327
+  %351 = icmp eq %"struct.std::__detail::_Hash_node.203"* %329, null
+  br i1 %351, label %.loopexit17, label %352
 
-343:                                              ; preds = %341, %339
-  %344 = phi %"struct.std::__detail::_Hash_node.203"* [ %331, %339 ], [ %320, %341 ]
-  %345 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %344, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %346 = bitcast i8* %345 to %class.Worker**
-  %347 = load %class.Worker*, %class.Worker** %346, align 8, !tbaa !75
-  %348 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %349 = icmp eq i8* %348, null
-  br i1 %349, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %350
+352:                                              ; preds = %350, %348
+  %353 = phi %"struct.std::__detail::_Hash_node.203"* [ %340, %348 ], [ %329, %350 ]
+  %354 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %353, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %355 = bitcast i8* %354 to %class.Worker**
+  %356 = load atomic %class.Worker*, %class.Worker** %355 unordered, align 8, !tbaa !74
+  %357 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %358 = icmp eq i8* %357, null
+  br i1 %358, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %359
 
-350:                                              ; preds = %343
-  %351 = bitcast i8* %348 to %"class.(anonymous namespace)::Future"*
-  %352 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 6
-  %353 = load i32, i32* %352, align 4, !tbaa !93
-  %354 = add nsw i32 %353, 1
-  store i32 %354, i32* %352, align 4, !tbaa !93
-  %355 = bitcast i8* %348 to i32*
-  store i32 1, i32* %355, align 8, !tbaa !100
-  %356 = getelementptr inbounds i8, i8* %348, i64 4
-  %357 = bitcast i8* %356 to i32*
-  store i32 %353, i32* %357, align 4, !tbaa !102
-  %358 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %359 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %358, i64 328
-  %360 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %359 to i32*
-  %361 = atomicrmw xchg i32* %360, i32 1 seq_cst, align 4
-  %362 = getelementptr inbounds i8, i8* %348, i64 16
-  %363 = bitcast i8* %362 to %union.pthread_mutex_t*
-  %364 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %363, %"struct.std::atomic"* null) #37
-  %365 = getelementptr inbounds i8, i8* %348, i64 56
-  %366 = bitcast i8* %365 to %union.pthread_cond_t*
-  %367 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %366, %"struct.std::atomic"* null) #37
-  %368 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %358, null
-  br i1 %368, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %369
+359:                                              ; preds = %352
+  %360 = bitcast i8* %357 to %"class.(anonymous namespace)::Future"*
+  %361 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 6
+  %362 = load atomic i32, i32* %361 unordered, align 4, !tbaa !91
+  %363 = add nsw i32 %362, 1
+  store i32 %363, i32* %361, align 4, !tbaa !91
+  %364 = bitcast i8* %357 to i32*
+  store i32 1, i32* %364, align 8, !tbaa !98
+  %365 = getelementptr inbounds i8, i8* %357, i64 4
+  %366 = bitcast i8* %365 to i32*
+  store i32 %362, i32* %366, align 4, !tbaa !100
+  %367 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %368 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %367, i64 328
+  %369 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %368 to i32*
+  %370 = atomicrmw xchg i32* %369, i32 1 seq_cst, align 4
+  %371 = getelementptr inbounds i8, i8* %357, i64 16
+  %372 = bitcast i8* %371 to %union.pthread_mutex_t*
+  %373 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %372, %"struct.std::atomic"* null) #37
+  %374 = getelementptr inbounds i8, i8* %357, i64 56
+  %375 = bitcast i8* %374 to %union.pthread_cond_t*
+  %376 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %375, %"struct.std::atomic"* null) #37
+  %377 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %367, null
+  br i1 %377, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %378
 
-369:                                              ; preds = %350
-  %370 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %359 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %371 = atomicrmw xchg i32* %360, i32 %361 seq_cst, align 4
-  %372 = icmp eq i32 %371, 1
-  %373 = icmp eq i32 %361, 0
-  %374 = and i1 %373, %372
-  br i1 %374, label %375, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+378:                                              ; preds = %359
+  %379 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %368 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %380 = atomicrmw xchg i32* %369, i32 %370 seq_cst, align 4
+  %381 = icmp eq i32 %380, 1
+  %382 = icmp eq i32 %370, 0
+  %383 = and i1 %382, %381
+  br i1 %383, label %384, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-375:                                              ; preds = %369
-  %376 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %377 = and i8 %376, 1
-  %378 = icmp eq i8 %377, 0
-  br i1 %378, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %379
+384:                                              ; preds = %378
+  %385 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %386 = and i8 %385, 1
+  %387 = icmp eq i8 %386, 0
+  br i1 %387, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %388
 
-379:                                              ; preds = %375
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %370) #37
+388:                                              ; preds = %384
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %379) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %379, %375, %369, %350, %343
-  %380 = phi %"class.(anonymous namespace)::Future"* [ null, %343 ], [ %351, %350 ], [ %351, %379 ], [ %351, %375 ], [ %351, %369 ]
-  %381 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %380, i64 0, i32 1
-  %382 = load i32, i32* %381, align 4, !tbaa !102
-  %383 = sext i32 %382 to i64
-  %384 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 1
-  %385 = load i64, i64* %384, align 8, !tbaa !103
-  %386 = urem i64 %383, %385
-  %387 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 0
-  %388 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %387, align 8, !tbaa !104
-  %389 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %388, i64 %386
-  %390 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %389, align 8, !tbaa !3
-  %391 = icmp eq %"struct.std::__detail::_Hash_node_base"* %390, null
-  br i1 %391, label %.loopexit15, label %392
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %388, %384, %378, %359, %352
+  %389 = phi %"class.(anonymous namespace)::Future"* [ null, %352 ], [ %360, %359 ], [ %360, %388 ], [ %360, %384 ], [ %360, %378 ]
+  %390 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %389, i64 0, i32 1
+  %391 = load atomic i32, i32* %390 unordered, align 4, !tbaa !100
+  %392 = sext i32 %391 to i64
+  %393 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 1
+  %394 = load atomic i64, i64* %393 unordered, align 8, !tbaa !101
+  %395 = urem i64 %392, %394
+  %396 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 0
+  %397 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %396 unordered, align 8, !tbaa !102
+  %398 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %397, i64 %395
+  %399 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %398 unordered, align 8, !tbaa !3
+  %400 = icmp eq %"struct.std::__detail::_Hash_node_base"* %399, null
+  br i1 %400, label %.loopexit15, label %401
 
-392:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %393 = bitcast %"struct.std::__detail::_Hash_node_base"* %390 to %"struct.std::__detail::_Hash_node.203"**
-  %394 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %393, align 8, !tbaa !73
-  %395 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %394, i64 0, i32 0, i32 1
-  %396 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %395 to i32*
-  %397 = load i32, i32* %396, align 4, !tbaa !74
-  %398 = icmp eq i32 %382, %397
-  br i1 %398, label %415, label %.preheader14
+401:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %402 = bitcast %"struct.std::__detail::_Hash_node_base"* %399 to %"struct.std::__detail::_Hash_node.203"**
+  %403 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %402 unordered, align 8, !tbaa !73
+  %404 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %403, i64 0, i32 0, i32 1
+  %405 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %404 to i32*
+  %406 = load atomic i32, i32* %405 unordered, align 4, !tbaa !66
+  %407 = icmp eq i32 %391, %406
+  br i1 %407, label %424, label %.preheader14
 
-399:                                              ; preds = %406
-  %400 = icmp eq i32 %382, %409
-  br i1 %400, label %413, label %.preheader14
+408:                                              ; preds = %415
+  %409 = icmp eq i32 %391, %418
+  br i1 %409, label %422, label %.preheader14
 
-.preheader14:                                     ; preds = %399, %392
-  %401 = phi %"struct.std::__detail::_Hash_node.203"* [ %405, %399 ], [ %394, %392 ]
-  %402 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %401, i64 0, i32 0, i32 0, i32 0
-  %403 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %402, align 8, !tbaa !73
-  %404 = icmp eq %"struct.std::__detail::_Hash_node_base"* %403, null
-  %405 = bitcast %"struct.std::__detail::_Hash_node_base"* %403 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %404, label %.loopexit15, label %406
+.preheader14:                                     ; preds = %408, %401
+  %410 = phi %"struct.std::__detail::_Hash_node.203"* [ %414, %408 ], [ %403, %401 ]
+  %411 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %410, i64 0, i32 0, i32 0, i32 0
+  %412 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %411 unordered, align 8, !tbaa !73
+  %413 = icmp eq %"struct.std::__detail::_Hash_node_base"* %412, null
+  %414 = bitcast %"struct.std::__detail::_Hash_node_base"* %412 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %413, label %.loopexit15, label %415
 
-406:                                              ; preds = %.preheader14
-  %407 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %403, i64 1
-  %408 = bitcast %"struct.std::__detail::_Hash_node_base"* %407 to i32*
-  %409 = load i32, i32* %408, align 4, !tbaa !74
-  %410 = sext i32 %409 to i64
-  %411 = urem i64 %410, %385
-  %412 = icmp eq i64 %411, %386
-  br i1 %412, label %399, label %.loopexit15
+415:                                              ; preds = %.preheader14
+  %416 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %412, i64 1
+  %417 = bitcast %"struct.std::__detail::_Hash_node_base"* %416 to i32*
+  %418 = load atomic i32, i32* %417 unordered, align 4, !tbaa !66
+  %419 = sext i32 %418 to i64
+  %420 = urem i64 %419, %394
+  %421 = icmp eq i64 %420, %395
+  br i1 %421, label %408, label %.loopexit15
 
-413:                                              ; preds = %399
-  %414 = icmp eq %"struct.std::__detail::_Hash_node.203"* %401, null
-  br i1 %414, label %.loopexit15, label %524
+422:                                              ; preds = %408
+  %423 = icmp eq %"struct.std::__detail::_Hash_node.203"* %410, null
+  br i1 %423, label %.loopexit15, label %535
 
-415:                                              ; preds = %392
-  %416 = icmp eq %"struct.std::__detail::_Hash_node.203"* %394, null
-  br i1 %416, label %.loopexit15, label %524
+424:                                              ; preds = %401
+  %425 = icmp eq %"struct.std::__detail::_Hash_node.203"* %403, null
+  br i1 %425, label %.loopexit15, label %535
 
-.loopexit15:                                      ; preds = %415, %413, %406, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %417 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %418 = getelementptr inbounds i8, i8* %417, i64 8
-  %419 = bitcast i8* %418 to i32*
-  store i32 %382, i32* %419, align 8, !tbaa !105
-  %420 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 4
-  %421 = load i64, i64* %384, align 8, !tbaa !103
-  %422 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 3
-  %423 = load i64, i64* %422, align 8, !tbaa !107
-  %424 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %420, i64 %421, i64 %423, i64 1)
-          to label %425 unwind label %531
+.loopexit15:                                      ; preds = %424, %422, %415, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %426 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %427 = bitcast i8* %426 to %"struct.std::__detail::_Hash_node_base"**
+  %428 = getelementptr inbounds i8, i8* %426, i64 8
+  %429 = bitcast i8* %428 to i32*
+  store i32 %391, i32* %429, align 8, !tbaa !103
+  %430 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 4
+  %431 = load atomic i64, i64* %393 unordered, align 8, !tbaa !101
+  %432 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 3
+  %433 = load atomic i64, i64* %432 unordered, align 8, !tbaa !105
+  %434 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %430, i64 %431, i64 %433, i64 1)
+          to label %435 unwind label %542
 
-425:                                              ; preds = %.loopexit15
-  %426 = extractvalue { i8, i64 } %424, 0
-  %427 = and i8 %426, 1
-  %428 = icmp eq i8 %427, 0
-  br i1 %428, label %429, label %431
+435:                                              ; preds = %.loopexit15
+  %436 = extractvalue { i8, i64 } %434, 0
+  %437 = and i8 %436, 1
+  %438 = icmp eq i8 %437, 0
+  br i1 %438, label %439, label %441
 
-429:                                              ; preds = %425
-  %430 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %387, align 8, !tbaa !104
-  br label %488
+439:                                              ; preds = %435
+  %440 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %396 unordered, align 8, !tbaa !102
+  br label %498
 
-431:                                              ; preds = %425
-  %432 = extractvalue { i8, i64 } %424, 1
-  %433 = icmp eq i64 %432, 1
-  br i1 %433, label %434, label %436, !prof !108, !misexpect !109
+441:                                              ; preds = %435
+  %442 = extractvalue { i8, i64 } %434, 1
+  %443 = icmp eq i64 %442, 1
+  br i1 %443, label %444, label %446, !prof !106, !misexpect !107
 
-434:                                              ; preds = %431
-  %435 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %435, align 8, !tbaa !110
-  br label %440
+444:                                              ; preds = %441
+  %445 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %445, align 8, !tbaa !108
+  br label %450
 
-436:                                              ; preds = %431
-  %437 = call noalias i8* @calloc(i64 %432, i64 8) #37
-  %438 = bitcast i8* %437 to %"struct.std::__detail::_Hash_node_base"**
-  %439 = shl i64 %432, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %437, i8 0, i64 %439, i1 false) #37
-  br label %440
+446:                                              ; preds = %441
+  %447 = call noalias i8* @calloc(i64 %442, i64 8) #37
+  %448 = bitcast i8* %447 to %"struct.std::__detail::_Hash_node_base"**
+  %449 = shl i64 %442, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %447, i8 0, i64 %449, i1 false) #37
+  br label %450
 
-440:                                              ; preds = %436, %434
-  %441 = phi %"struct.std::__detail::_Hash_node_base"** [ %435, %434 ], [ %438, %436 ]
-  %442 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 2
-  %443 = bitcast %"struct.std::__detail::_Hash_node_base"* %442 to %"struct.std::__detail::_Hash_node.203"**
-  %444 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %443, align 8, !tbaa !111
-  %445 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %442, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %445, align 8, !tbaa !111
-  %446 = icmp eq %"struct.std::__detail::_Hash_node.203"* %444, null
-  br i1 %446, label %.loopexit, label %447
+450:                                              ; preds = %446, %444
+  %451 = phi %"struct.std::__detail::_Hash_node_base"** [ %445, %444 ], [ %448, %446 ]
+  %452 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 2
+  %453 = bitcast %"struct.std::__detail::_Hash_node_base"* %452 to %"struct.std::__detail::_Hash_node.203"**
+  %454 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %453 unordered, align 8, !tbaa !109
+  %455 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %452, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %455, align 8, !tbaa !109
+  %456 = icmp eq %"struct.std::__detail::_Hash_node.203"* %454, null
+  br i1 %456, label %.loopexit, label %457
 
-447:                                              ; preds = %440
-  %448 = bitcast %"struct.std::__detail::_Hash_node_base"* %442 to i64*
-  br label %449
+457:                                              ; preds = %450
+  %458 = bitcast %"struct.std::__detail::_Hash_node_base"* %452 to i64*
+  br label %459
 
-449:                                              ; preds = %478, %447
-  %450 = phi %"struct.std::__detail::_Hash_node.203"* [ %444, %447 ], [ %453, %478 ]
-  %451 = phi i64 [ 0, %447 ], [ %479, %478 ]
-  %452 = bitcast %"struct.std::__detail::_Hash_node.203"* %450 to %"struct.std::__detail::_Hash_node.203"**
-  %453 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %452, align 8, !tbaa !73
-  %454 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %450, i64 0, i32 0, i32 1
-  %455 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %454 to i32*
-  %456 = load i32, i32* %455, align 4, !tbaa !74
-  %457 = sext i32 %456 to i64
-  %458 = urem i64 %457, %432
-  %459 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %441, i64 %458
-  %460 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %459, align 8, !tbaa !3
-  %461 = icmp eq %"struct.std::__detail::_Hash_node_base"* %460, null
-  br i1 %461, label %462, label %471
+459:                                              ; preds = %488, %457
+  %460 = phi %"struct.std::__detail::_Hash_node.203"* [ %454, %457 ], [ %463, %488 ]
+  %461 = phi i64 [ 0, %457 ], [ %489, %488 ]
+  %462 = bitcast %"struct.std::__detail::_Hash_node.203"* %460 to %"struct.std::__detail::_Hash_node.203"**
+  %463 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %462 unordered, align 8, !tbaa !73
+  %464 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %460, i64 0, i32 0, i32 1
+  %465 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %464 to i32*
+  %466 = load atomic i32, i32* %465 unordered, align 4, !tbaa !66
+  %467 = sext i32 %466 to i64
+  %468 = urem i64 %467, %442
+  %469 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %451, i64 %468
+  %470 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %469 unordered, align 8, !tbaa !3
+  %471 = icmp eq %"struct.std::__detail::_Hash_node_base"* %470, null
+  br i1 %471, label %472, label %481
 
-462:                                              ; preds = %449
-  %463 = load i64, i64* %448, align 8, !tbaa !111
-  %464 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %450, i64 0, i32 0, i32 0
-  %465 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %450, i64 0, i32 0, i32 0, i32 0
-  %466 = bitcast %"struct.std::__detail::_Hash_node.203"* %450 to i64*
-  store i64 %463, i64* %466, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %464, %"struct.std::__detail::_Hash_node_base"** %445, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %442, %"struct.std::__detail::_Hash_node_base"** %459, align 8, !tbaa !3
-  %467 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !73
-  %468 = icmp eq %"struct.std::__detail::_Hash_node_base"* %467, null
-  br i1 %468, label %478, label %469
+472:                                              ; preds = %459
+  %473 = load atomic i64, i64* %458 unordered, align 8, !tbaa !109
+  %474 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %460, i64 0, i32 0, i32 0
+  %475 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %460, i64 0, i32 0, i32 0, i32 0
+  %476 = bitcast %"struct.std::__detail::_Hash_node.203"* %460 to i64*
+  store i64 %473, i64* %476, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %474, %"struct.std::__detail::_Hash_node_base"** %455, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %452, %"struct.std::__detail::_Hash_node_base"** %469, align 8, !tbaa !3
+  %477 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %475 unordered, align 8, !tbaa !73
+  %478 = icmp eq %"struct.std::__detail::_Hash_node_base"* %477, null
+  br i1 %478, label %488, label %479
 
-469:                                              ; preds = %462
-  %470 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %441, i64 %451
-  store %"struct.std::__detail::_Hash_node_base"* %464, %"struct.std::__detail::_Hash_node_base"** %470, align 8, !tbaa !3
-  br label %478
+479:                                              ; preds = %472
+  %480 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %451, i64 %461
+  store %"struct.std::__detail::_Hash_node_base"* %474, %"struct.std::__detail::_Hash_node_base"** %480, align 8, !tbaa !3
+  br label %488
 
-471:                                              ; preds = %449
-  %472 = bitcast %"struct.std::__detail::_Hash_node_base"* %460 to i64*
-  %473 = load i64, i64* %472, align 8, !tbaa !73
-  %474 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %450, i64 0, i32 0, i32 0
-  %475 = bitcast %"struct.std::__detail::_Hash_node.203"* %450 to i64*
-  store i64 %473, i64* %475, align 8, !tbaa !73
-  %476 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %459, align 8, !tbaa !3
-  %477 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %476, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %474, %"struct.std::__detail::_Hash_node_base"** %477, align 8, !tbaa !73
-  br label %478
+481:                                              ; preds = %459
+  %482 = bitcast %"struct.std::__detail::_Hash_node_base"* %470 to i64*
+  %483 = load atomic i64, i64* %482 unordered, align 8, !tbaa !73
+  %484 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %460, i64 0, i32 0, i32 0
+  %485 = bitcast %"struct.std::__detail::_Hash_node.203"* %460 to i64*
+  store i64 %483, i64* %485, align 8, !tbaa !73
+  %486 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %469 unordered, align 8, !tbaa !3
+  %487 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %486, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %484, %"struct.std::__detail::_Hash_node_base"** %487, align 8, !tbaa !73
+  br label %488
 
-478:                                              ; preds = %471, %469, %462
-  %479 = phi i64 [ %451, %471 ], [ %458, %462 ], [ %458, %469 ]
-  %480 = icmp eq %"struct.std::__detail::_Hash_node.203"* %453, null
-  br i1 %480, label %.loopexit, label %449
+488:                                              ; preds = %481, %479, %472
+  %489 = phi i64 [ %461, %481 ], [ %468, %472 ], [ %468, %479 ]
+  %490 = icmp eq %"struct.std::__detail::_Hash_node.203"* %463, null
+  br i1 %490, label %.loopexit, label %459
 
-.loopexit:                                        ; preds = %478, %440
-  %481 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %387, align 8, !tbaa !104
-  %482 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 5
-  %483 = icmp eq %"struct.std::__detail::_Hash_node_base"** %481, %482
-  br i1 %483, label %486, label %484
+.loopexit:                                        ; preds = %488, %450
+  %491 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %396 unordered, align 8, !tbaa !102
+  %492 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 5
+  %493 = icmp eq %"struct.std::__detail::_Hash_node_base"** %491, %492
+  br i1 %493, label %496, label %494
 
-484:                                              ; preds = %.loopexit
-  %485 = bitcast %"struct.std::__detail::_Hash_node_base"** %481 to i8*
-  call void @free(i8* %485) #37
-  br label %486
+494:                                              ; preds = %.loopexit
+  %495 = bitcast %"struct.std::__detail::_Hash_node_base"** %491 to i8*
+  call void @free(i8* %495) #37
+  br label %496
 
-486:                                              ; preds = %484, %.loopexit
-  store i64 %432, i64* %384, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %441, %"struct.std::__detail::_Hash_node_base"*** %387, align 8, !tbaa !104
-  %487 = urem i64 %383, %432
-  br label %488
+496:                                              ; preds = %494, %.loopexit
+  store i64 %442, i64* %393, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %451, %"struct.std::__detail::_Hash_node_base"*** %396, align 8, !tbaa !102
+  %497 = urem i64 %392, %442
+  br label %498
 
-488:                                              ; preds = %486, %429
-  %489 = phi %"struct.std::__detail::_Hash_node_base"** [ %430, %429 ], [ %441, %486 ]
-  %490 = phi i64 [ %386, %429 ], [ %487, %486 ]
-  %491 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %489, i64 %490
-  %492 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %491, align 8, !tbaa !3
-  %493 = icmp eq %"struct.std::__detail::_Hash_node_base"* %492, null
-  br i1 %493, label %500, label %494
+498:                                              ; preds = %496, %439
+  %499 = phi %"struct.std::__detail::_Hash_node_base"** [ %440, %439 ], [ %451, %496 ]
+  %500 = phi i64 [ %395, %439 ], [ %497, %496 ]
+  %501 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %499, i64 %500
+  %502 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %501 unordered, align 8, !tbaa !3
+  %503 = icmp eq %"struct.std::__detail::_Hash_node_base"* %502, null
+  br i1 %503, label %510, label %504
 
-494:                                              ; preds = %488
-  %495 = bitcast %"struct.std::__detail::_Hash_node_base"* %492 to i64*
-  %496 = load i64, i64* %495, align 8, !tbaa !73
-  %497 = bitcast i8* %417 to i64*
-  store i64 %496, i64* %497, align 8, !tbaa !73
-  %498 = bitcast %"struct.std::__detail::_Hash_node_base"** %491 to i8***
-  %499 = load i8**, i8*** %498, align 8, !tbaa !3
-  store i8* %417, i8** %499, align 8, !tbaa !73
-  br label %520
+504:                                              ; preds = %498
+  %505 = bitcast %"struct.std::__detail::_Hash_node_base"* %502 to i64*
+  %506 = load atomic i64, i64* %505 unordered, align 8, !tbaa !73
+  %507 = bitcast i8* %426 to i64*
+  store i64 %506, i64* %507, align 8, !tbaa !73
+  %508 = bitcast %"struct.std::__detail::_Hash_node_base"** %501 to i8***
+  %509 = load atomic i8**, i8*** %508 unordered, align 8, !tbaa !3
+  store i8* %426, i8** %509, align 8, !tbaa !73
+  br label %531
 
-500:                                              ; preds = %488
-  %501 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %290, i64 0, i32 2, i32 0, i32 2
-  %502 = bitcast %"struct.std::__detail::_Hash_node_base"* %501 to i64*
-  %503 = load i64, i64* %502, align 8, !tbaa !111
-  %504 = bitcast i8* %417 to i64*
-  store i64 %503, i64* %504, align 8, !tbaa !73
-  %505 = bitcast %"struct.std::__detail::_Hash_node_base"* %501 to i8**
-  store i8* %417, i8** %505, align 8, !tbaa !111
-  %506 = icmp eq i64 %503, 0
-  br i1 %506, label %517, label %507
+510:                                              ; preds = %498
+  %511 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %299, i64 0, i32 2, i32 0, i32 2
+  %512 = bitcast %"struct.std::__detail::_Hash_node_base"* %511 to i64*
+  %513 = load atomic i64, i64* %512 unordered, align 8, !tbaa !109
+  %514 = bitcast i8* %426 to i64*
+  store i64 %513, i64* %514, align 8, !tbaa !73
+  %515 = bitcast %"struct.std::__detail::_Hash_node_base"* %511 to i8**
+  store i8* %426, i8** %515, align 8, !tbaa !109
+  %516 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %427 unordered, align 8, !tbaa !73
+  %517 = icmp eq %"struct.std::__detail::_Hash_node_base"* %516, null
+  br i1 %517, label %528, label %518
 
-507:                                              ; preds = %500
-  %.cast.i.i.i.i = inttoptr i64 %503 to %"struct.std::__detail::_Hash_node_base"*
-  %508 = load i64, i64* %384, align 8, !tbaa !103
-  %509 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %510 = bitcast %"struct.std::__detail::_Hash_node_base"* %509 to i32*
-  %511 = load i32, i32* %510, align 4, !tbaa !74
-  %512 = sext i32 %511 to i64
-  %513 = urem i64 %512, %508
-  %514 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %489, i64 %513
-  %515 = bitcast %"struct.std::__detail::_Hash_node_base"** %514 to i8**
-  store i8* %417, i8** %515, align 8, !tbaa !3
-  %516 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %387, align 8, !tbaa !104
-  br label %517
+518:                                              ; preds = %510
+  %519 = load atomic i64, i64* %393 unordered, align 8, !tbaa !101
+  %520 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %516, i64 1
+  %521 = bitcast %"struct.std::__detail::_Hash_node_base"* %520 to i32*
+  %522 = load atomic i32, i32* %521 unordered, align 4, !tbaa !66
+  %523 = sext i32 %522 to i64
+  %524 = urem i64 %523, %519
+  %525 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %499, i64 %524
+  %526 = bitcast %"struct.std::__detail::_Hash_node_base"** %525 to i8**
+  store i8* %426, i8** %526, align 8, !tbaa !3
+  %527 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %396 unordered, align 8, !tbaa !102
+  br label %528
 
-517:                                              ; preds = %507, %500
-  %518 = phi %"struct.std::__detail::_Hash_node_base"** [ %489, %500 ], [ %516, %507 ]
-  %519 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %518, i64 %490
-  store %"struct.std::__detail::_Hash_node_base"* %501, %"struct.std::__detail::_Hash_node_base"** %519, align 8, !tbaa !3
-  br label %520
+528:                                              ; preds = %518, %510
+  %529 = phi %"struct.std::__detail::_Hash_node_base"** [ %499, %510 ], [ %527, %518 ]
+  %530 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %529, i64 %500
+  store %"struct.std::__detail::_Hash_node_base"* %511, %"struct.std::__detail::_Hash_node_base"** %530, align 8, !tbaa !3
+  br label %531
 
-520:                                              ; preds = %517, %494
-  %521 = load i64, i64* %422, align 8, !tbaa !107
-  %522 = add i64 %521, 1
-  store i64 %522, i64* %422, align 8, !tbaa !107
-  %523 = bitcast i8* %418 to %"struct.std::pair.50"*
-  br label %528
+531:                                              ; preds = %528, %504
+  %532 = load atomic i64, i64* %432 unordered, align 8, !tbaa !105
+  %533 = add i64 %532, 1
+  store i64 %533, i64* %432, align 8, !tbaa !105
+  %534 = bitcast i8* %428 to %"struct.std::pair.50"*
+  br label %539
 
-524:                                              ; preds = %415, %413
-  %525 = phi %"struct.std::__detail::_Hash_node.203"* [ %394, %415 ], [ %405, %413 ]
-  %526 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %525, i64 0, i32 0, i32 1
-  %527 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %526 to %"struct.std::pair.50"*
-  br label %528
+535:                                              ; preds = %424, %422
+  %536 = phi %"struct.std::__detail::_Hash_node.203"* [ %403, %424 ], [ %414, %422 ]
+  %537 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %536, i64 0, i32 0, i32 1
+  %538 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %537 to %"struct.std::pair.50"*
+  br label %539
 
-528:                                              ; preds = %524, %520
-  %529 = phi %"struct.std::pair.50"* [ %527, %524 ], [ %523, %520 ]
-  %530 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %529, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %380, %"class.(anonymous namespace)::Future"** %530, align 8, !tbaa !3
-  store i32 2, i32* %237, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedIntArrayWorkers$lambda$1#static(kotlin.IntArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %238, align 8, !tbaa.struct !112
-  store i8* %289, i8** %239, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %380, %"class.(anonymous namespace)::Future"** %240, align 8, !tbaa.struct !112
-  store i32 %282, i32* %241, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %347, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+539:                                              ; preds = %535, %531
+  %540 = phi %"struct.std::pair.50"* [ %538, %535 ], [ %534, %531 ]
+  %541 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %540, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %389, %"class.(anonymous namespace)::Future"** %541, align 8, !tbaa !3
+  store i32 2, i32* %246, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedIntArrayWorkers$lambda$1#static(kotlin.IntArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %247, align 8, !tbaa.struct !110
+  store i8* %298, i8** %248, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %389, %"class.(anonymous namespace)::Future"** %249, align 8, !tbaa.struct !110
+  store i32 %291, i32* %250, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %356, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
   br label %.loopexit17
 
-531:                                              ; preds = %.loopexit15
-  %532 = landingpad { i8*, i32 }
+542:                                              ; preds = %.loopexit15
+  %543 = landingpad { i8*, i32 }
           cleanup
-  %533 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %534 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %533, i64 328
-  %535 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %534 to i32*
-  %536 = atomicrmw xchg i32* %535, i32 1 seq_cst, align 4
-  %537 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %291) #37
-  %538 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %533, null
-  br i1 %538, label %.body.i.i.i, label %557
-
-.loopexit17:                                      ; preds = %528, %341, %339, %332, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %539 = phi %"class.(anonymous namespace)::Future"* [ %380, %528 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %339 ], [ null, %341 ], [ null, %.preheader16 ], [ null, %332 ]
-  %540 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %541 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540, i64 328
-  %542 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %541 to i32*
-  %543 = atomicrmw xchg i32* %542, i32 1 seq_cst, align 4
-  %544 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %291) #37
-  %545 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540, null
-  br i1 %545, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %546
-
-546:                                              ; preds = %.loopexit17
-  %547 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %541 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %548 = atomicrmw xchg i32* %542, i32 %543 seq_cst, align 4
-  %549 = icmp eq i32 %548, 1
-  %550 = icmp eq i32 %543, 0
-  %551 = and i1 %550, %549
-  br i1 %551, label %552, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-
-552:                                              ; preds = %546
-  %553 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %554 = and i8 %553, 1
-  %555 = icmp eq i8 %554, 0
-  br i1 %555, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %556
+  %544 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %545 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %544, i64 328
+  %546 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %545 to i32*
+  %547 = atomicrmw xchg i32* %546, i32 1 seq_cst, align 4
+  %548 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %300) #37
+  %549 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %544, null
+  br i1 %549, label %.body.i.i.i, label %568
 
-556:                                              ; preds = %552
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %547) #37
-  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+.loopexit17:                                      ; preds = %539, %350, %348, %341, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %550 = phi %"class.(anonymous namespace)::Future"* [ %389, %539 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %348 ], [ null, %350 ], [ null, %.preheader16 ], [ null, %341 ]
+  %551 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %552 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551, i64 328
+  %553 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %552 to i32*
+  %554 = atomicrmw xchg i32* %553, i32 1 seq_cst, align 4
+  %555 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %300) #37
+  %556 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551, null
+  br i1 %556, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %557
 
-557:                                              ; preds = %531
-  %558 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %534 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %559 = atomicrmw xchg i32* %535, i32 %536 seq_cst, align 4
+557:                                              ; preds = %.loopexit17
+  %558 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %552 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %559 = atomicrmw xchg i32* %553, i32 %554 seq_cst, align 4
   %560 = icmp eq i32 %559, 1
-  %561 = icmp eq i32 %536, 0
+  %561 = icmp eq i32 %554, 0
   %562 = and i1 %561, %560
-  br i1 %562, label %563, label %.body.i.i.i
+  br i1 %562, label %563, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
 563:                                              ; preds = %557
   %564 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
   %565 = and i8 %564, 1
   %566 = icmp eq i8 %565, 0
-  br i1 %566, label %.body.i.i.i, label %567
+  br i1 %566, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %567
 
 567:                                              ; preds = %563
   call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %558) #37
+  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+
+568:                                              ; preds = %542
+  %569 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %545 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %570 = atomicrmw xchg i32* %546, i32 %547 seq_cst, align 4
+  %571 = icmp eq i32 %570, 1
+  %572 = icmp eq i32 %547, 0
+  %573 = and i1 %572, %571
+  br i1 %573, label %574, label %.body.i.i.i
+
+574:                                              ; preds = %568
+  %575 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %576 = and i8 %575, 1
+  %577 = icmp eq i8 %576, 0
+  br i1 %577, label %.body.i.i.i, label %578
+
+578:                                              ; preds = %574
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %569) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %556, %552, %546, %.loopexit17
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %236)
-  %568 = icmp eq %"class.(anonymous namespace)::Future"* %539, null
-  br i1 %568, label %569, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %567, %563, %557, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %245)
+  %579 = icmp eq %"class.(anonymous namespace)::Future"* %550, null
+  br i1 %579, label %580, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-569:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+580:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %570 unwind label %573
+          to label %581 unwind label %584
 
-570:                                              ; preds = %569
+581:                                              ; preds = %580
   unreachable
 
-571:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %572 = landingpad { i8*, i32 }
+582:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %583 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-573:                                              ; preds = %569
-  %574 = landingpad { i8*, i32 }
+584:                                              ; preds = %580
+  %585 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %573, %571, %567, %563, %557, %531
-  %575 = phi { i8*, i32 } [ %572, %571 ], [ %574, %573 ], [ %532, %557 ], [ %532, %563 ], [ %532, %567 ], [ %532, %531 ]
-  %576 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %577 = load i64, i64* %233, align 8, !tbaa !9
-  %578 = bitcast %"class.kotlin::mm::ShadowStack"* %576 to i64*
-  store i64 %577, i64* %578, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %230) #37
-  resume { i8*, i32 } %575
+.body.i.i.i:                                      ; preds = %584, %582, %578, %574, %568, %542
+  %586 = phi { i8*, i32 } [ %583, %582 ], [ %585, %584 ], [ %543, %568 ], [ %543, %574 ], [ %543, %578 ], [ %543, %542 ]
+  %587 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %588 = load atomic i64, i64* %242 unordered, align 8, !tbaa !9
+  %589 = bitcast %"class.kotlin::mm::ShadowStack"* %587 to i64*
+  store i64 %588, i64* %589, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %239) #37
+  resume { i8*, i32 } %586
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %579 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %539, i64 0, i32 1
-  %580 = load i32, i32* %579, align 4, !tbaa !102
-  %581 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %582 = load i64, i64* %233, align 8, !tbaa !9
-  %583 = bitcast %"class.kotlin::mm::ShadowStack"* %581 to i64*
-  store i64 %582, i64* %583, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %230) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %110)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %110, i8 0, i32 32, i1 immarg false) #49
-  %584 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %585 = bitcast %"class.kotlin::mm::ShadowStack"* %584 to i64*
-  %586 = load i64, i64* %585, align 8, !tbaa !7
-  store i64 %586, i64* %114, align 8, !tbaa !9
-  %587 = bitcast %"class.kotlin::mm::ShadowStack"* %584 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %587, align 8, !tbaa !7
-  store i32 0, i32* %116, align 8, !tbaa !12
-  store i32 4, i32* %117, align 4, !tbaa !13
-  %588 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %589 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %588 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %590 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %589, align 8, !tbaa !3
-  %591 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %590, i64 0, i32 2, i32 1
-  %592 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %591, i64 24) #37
-  %593 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %592, i64 1
-  %594 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %592, i64 2
-  %595 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %594 to %struct.TypeInfo**
-  %596 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %593 to i64*
-  store i64 0, i64* %596, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %595, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %594, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %118, align 8, !tbaa !3
-  %597 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %592, i64 3
-  %598 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %597 to i32*
-  store i32 %580, i32* %598, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %594, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %242, align 8, !tbaa !3
-  %599 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %600 = load i64, i64* %114, align 8, !tbaa !9
-  %601 = bitcast %"class.kotlin::mm::ShadowStack"* %599 to i64*
-  store i64 %600, i64* %601, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %110)
-  %602 = load i32, i32* %225, align 8, !tbaa !18
-  %603 = zext i32 %602 to i64
-  %604 = icmp ult i64 %indvars.iv49, %603
-  br i1 %604, label %Kotlin_Array_set.exit.i, label %605
+  %590 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %550, i64 0, i32 1
+  %591 = load atomic i32, i32* %590 unordered, align 4, !tbaa !100
+  %592 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %593 = load atomic i64, i64* %242 unordered, align 8, !tbaa !9
+  %594 = bitcast %"class.kotlin::mm::ShadowStack"* %592 to i64*
+  store i64 %593, i64* %594, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %239) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %117)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %117, i8 0, i32 32, i1 immarg false) #49
+  %595 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %596 = bitcast %"class.kotlin::mm::ShadowStack"* %595 to i64*
+  %597 = load atomic i64, i64* %596 unordered, align 8, !tbaa !7
+  store i64 %597, i64* %121, align 8, !tbaa !9
+  %598 = bitcast %"class.kotlin::mm::ShadowStack"* %595 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %598, align 8, !tbaa !7
+  store i32 0, i32* %123, align 8, !tbaa !12
+  store i32 4, i32* %124, align 4, !tbaa !13
+  %599 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %600 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %599 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %601 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %600 unordered, align 8, !tbaa !3
+  %602 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %601, i64 0, i32 2, i32 1
+  %603 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %602, i64 24) #37
+  %604 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603, i64 1
+  %605 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603, i64 2
+  %606 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %605 to %struct.TypeInfo**
+  %607 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604 to i64*
+  store i64 0, i64* %607, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %606, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %605, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %125, align 8, !tbaa !3
+  %608 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603, i64 3
+  %609 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %608 to i32*
+  store i32 %591, i32* %609, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %605, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %251, align 8, !tbaa !3
+  %610 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %611 = load atomic i64, i64* %121 unordered, align 8, !tbaa !9
+  %612 = bitcast %"class.kotlin::mm::ShadowStack"* %610 to i64*
+  store i64 %611, i64* %612, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %117)
+  %613 = load atomic i32, i32* %234 unordered, align 8, !tbaa !18
+  %614 = zext i32 %613 to i64
+  %615 = icmp ult i64 %indvars.iv49, %614
+  br i1 %615, label %Kotlin_Array_set.exit.i, label %616
 
-605:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+616:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %606 = load atomic volatile i64, i64* %243 monotonic, align 8
-  %607 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244, i64 %indvars.iv49
-  %608 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %607, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %594, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %608, align 8, !tbaa !3
+  %617 = load atomic volatile i64, i64* %252 monotonic, align 8
+  %618 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253, i64 %indvars.iv49
+  %619 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %618, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %605, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %619, align 8, !tbaa !3
   %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
   br label %loop_check.i
 
@@ -1003,247 +1021,247 @@
   br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i
 
 loop_exit.i:                                      ; preds = %loop_check.i
-  %609 = load i32, i32* %225, align 8, !tbaa !18
-  %610 = icmp sgt i32 %609, 0
-  %smax = select i1 %610, i32 %609, i32 0
+  %620 = load atomic i32, i32* %234 unordered, align 8, !tbaa !18
+  %621 = icmp sgt i32 %620, 0
+  %smax = select i1 %621, i32 %620, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %611 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %612 = and i8 %611, 1
-  %613 = icmp eq i8 %612, 0
-  br i1 %613, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %614
+  %622 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %623 = and i8 %622, 1
+  %624 = icmp eq i8 %623, 0
+  br i1 %624, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %625
 
-614:                                              ; preds = %while_loop18.i
+625:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %614, %while_loop18.i
-  %615 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %244, i64 %indvars.iv
-  %616 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %615 to %struct.ObjHeader**
-  %617 = load %struct.ObjHeader*, %struct.ObjHeader** %616, align 8, !tbaa !3
-  store %struct.ObjHeader* %617, %struct.ObjHeader** %184, align 8, !tbaa !3
-  %618 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %617, i64 1
-  %619 = bitcast %struct.ObjHeader* %618 to i32*
-  %620 = load i32, i32* %619, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %625, %while_loop18.i
+  %626 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253, i64 %indvars.iv
+  %627 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %626 to %struct.ObjHeader**
+  %628 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %627 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %628, %struct.ObjHeader** %192, align 8, !tbaa !3
+  %629 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %628, i64 1
+  %630 = bitcast %struct.ObjHeader* %629 to i32*
+  %631 = load atomic i32, i32* %630 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %110)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %110, i8 0, i32 32, i1 immarg false) #49
-  %621 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %622 = bitcast %"class.kotlin::mm::ShadowStack"* %621 to i64*
-  %623 = load i64, i64* %622, align 8, !tbaa !7
-  store i64 %623, i64* %114, align 8, !tbaa !9
-  %624 = bitcast %"class.kotlin::mm::ShadowStack"* %621 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %624, align 8, !tbaa !7
-  store i32 0, i32* %116, align 8, !tbaa !12
-  store i32 4, i32* %117, align 4, !tbaa !13
-  %625 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %626 = icmp eq i32 %625, 2
-  br i1 %626, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %117)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %117, i8 0, i32 32, i1 immarg false) #49
+  %632 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %633 = bitcast %"class.kotlin::mm::ShadowStack"* %632 to i64*
+  %634 = load atomic i64, i64* %633 unordered, align 8, !tbaa !7
+  store i64 %634, i64* %121, align 8, !tbaa !9
+  %635 = bitcast %"class.kotlin::mm::ShadowStack"* %632 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %635, align 8, !tbaa !7
+  store i32 0, i32* %123, align 8, !tbaa !12
+  store i32 4, i32* %124, align 4, !tbaa !13
+  %636 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %637 = icmp eq i32 %636, 2
+  br i1 %637, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %627 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %628 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %627, %struct.ObjHeader** nonnull %111)
-  store %struct.ObjHeader* %628, %struct.ObjHeader** %111, align 8, !tbaa !3
-  %629 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %630 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %629, i64 0, i32 0
-  %631 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %632 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %631, i64 328
-  %633 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %632 to i32*
-  %634 = atomicrmw xchg i32* %633, i32 1 seq_cst, align 4
-  %635 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %630) #37
-  %636 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %631, null
-  br i1 %636, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %637
+  %638 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %639 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %638, %struct.ObjHeader** nonnull %118)
+  store %struct.ObjHeader* %639, %struct.ObjHeader** %118, align 8, !tbaa !3
+  %640 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %641 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %640, i64 0, i32 0
+  %642 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %643 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %642, i64 328
+  %644 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %643 to i32*
+  %645 = atomicrmw xchg i32* %644, i32 1 seq_cst, align 4
+  %646 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %641) #37
+  %647 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %642, null
+  br i1 %647, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %648
 
-637:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %638 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %632 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %639 = atomicrmw xchg i32* %633, i32 %634 seq_cst, align 4
-  %640 = icmp eq i32 %639, 1
-  %641 = icmp eq i32 %634, 0
-  %642 = and i1 %641, %640
-  br i1 %642, label %643, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+648:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %649 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %643 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %650 = atomicrmw xchg i32* %644, i32 %645 seq_cst, align 4
+  %651 = icmp eq i32 %650, 1
+  %652 = icmp eq i32 %645, 0
+  %653 = and i1 %652, %651
+  br i1 %653, label %654, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-643:                                              ; preds = %637
-  %644 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %645 = and i8 %644, 1
-  %646 = icmp eq i8 %645, 0
-  br i1 %646, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %647
+654:                                              ; preds = %648
+  %655 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %656 = and i8 %655, 1
+  %657 = icmp eq i8 %656, 0
+  br i1 %657, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %658
 
-647:                                              ; preds = %643
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %638) #37
+658:                                              ; preds = %654
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %649) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %647, %643, %637, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %648 = sext i32 %620 to i64
-  %649 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %629, i64 0, i32 2, i32 0, i32 1
-  %650 = load i64, i64* %649, align 8, !tbaa !103
-  %651 = urem i64 %648, %650
-  %652 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %629, i64 0, i32 2, i32 0, i32 0
-  %653 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %652, align 8, !tbaa !104
-  %654 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %653, i64 %651
-  %655 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %654, align 8, !tbaa !3
-  %656 = icmp eq %"struct.std::__detail::_Hash_node_base"* %655, null
-  br i1 %656, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %657
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %658, %654, %648, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %659 = sext i32 %631 to i64
+  %660 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %640, i64 0, i32 2, i32 0, i32 1
+  %661 = load atomic i64, i64* %660 unordered, align 8, !tbaa !101
+  %662 = urem i64 %659, %661
+  %663 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %640, i64 0, i32 2, i32 0, i32 0
+  %664 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %663 unordered, align 8, !tbaa !102
+  %665 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %664, i64 %662
+  %666 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %665 unordered, align 8, !tbaa !3
+  %667 = icmp eq %"struct.std::__detail::_Hash_node_base"* %666, null
+  br i1 %667, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %668
 
-657:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %658 = bitcast %"struct.std::__detail::_Hash_node_base"* %655 to %"struct.std::__detail::_Hash_node.203"**
-  %659 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %658, align 8, !tbaa !73
-  %660 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %659, i64 0, i32 0, i32 1
-  %661 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %660 to i32*
-  %662 = load i32, i32* %661, align 4, !tbaa !74
-  %663 = icmp eq i32 %662, %620
-  br i1 %663, label %680, label %.preheader
+668:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %669 = bitcast %"struct.std::__detail::_Hash_node_base"* %666 to %"struct.std::__detail::_Hash_node.203"**
+  %670 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %669 unordered, align 8, !tbaa !73
+  %671 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %670, i64 0, i32 0, i32 1
+  %672 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %671 to i32*
+  %673 = load atomic i32, i32* %672 unordered, align 4, !tbaa !66
+  %674 = icmp eq i32 %673, %631
+  br i1 %674, label %691, label %.preheader
 
-664:                                              ; preds = %671
-  %665 = icmp eq i32 %674, %620
-  br i1 %665, label %678, label %.preheader
+675:                                              ; preds = %682
+  %676 = icmp eq i32 %685, %631
+  br i1 %676, label %689, label %.preheader
 
-.preheader:                                       ; preds = %664, %657
-  %666 = phi %"struct.std::__detail::_Hash_node.203"* [ %670, %664 ], [ %659, %657 ]
-  %667 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %666, i64 0, i32 0, i32 0, i32 0
-  %668 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %667, align 8, !tbaa !73
-  %669 = icmp eq %"struct.std::__detail::_Hash_node_base"* %668, null
-  %670 = bitcast %"struct.std::__detail::_Hash_node_base"* %668 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %669, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %671
+.preheader:                                       ; preds = %675, %668
+  %677 = phi %"struct.std::__detail::_Hash_node.203"* [ %681, %675 ], [ %670, %668 ]
+  %678 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %677, i64 0, i32 0, i32 0, i32 0
+  %679 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %678 unordered, align 8, !tbaa !73
+  %680 = icmp eq %"struct.std::__detail::_Hash_node_base"* %679, null
+  %681 = bitcast %"struct.std::__detail::_Hash_node_base"* %679 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %680, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %682
 
-671:                                              ; preds = %.preheader
-  %672 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %668, i64 1
-  %673 = bitcast %"struct.std::__detail::_Hash_node_base"* %672 to i32*
-  %674 = load i32, i32* %673, align 4, !tbaa !74
-  %675 = sext i32 %674 to i64
-  %676 = urem i64 %675, %650
-  %677 = icmp eq i64 %676, %651
-  br i1 %677, label %664, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+682:                                              ; preds = %.preheader
+  %683 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %679, i64 1
+  %684 = bitcast %"struct.std::__detail::_Hash_node_base"* %683 to i32*
+  %685 = load atomic i32, i32* %684 unordered, align 4, !tbaa !66
+  %686 = sext i32 %685 to i64
+  %687 = urem i64 %686, %661
+  %688 = icmp eq i64 %687, %662
+  br i1 %688, label %675, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-678:                                              ; preds = %664
-  %679 = icmp eq %"struct.std::__detail::_Hash_node.203"* %666, null
-  br i1 %679, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %682
+689:                                              ; preds = %675
+  %690 = icmp eq %"struct.std::__detail::_Hash_node.203"* %677, null
+  br i1 %690, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %693
 
-680:                                              ; preds = %657
-  %681 = icmp eq %"struct.std::__detail::_Hash_node.203"* %659, null
-  br i1 %681, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %682
+691:                                              ; preds = %668
+  %692 = icmp eq %"struct.std::__detail::_Hash_node.203"* %670, null
+  br i1 %692, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %693
 
-682:                                              ; preds = %680, %678
-  %683 = phi %"struct.std::__detail::_Hash_node.203"* [ %670, %678 ], [ %659, %680 ]
-  %684 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %683, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %685 = bitcast i8* %684 to %"class.(anonymous namespace)::Future"**
-  %686 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %685, align 8, !tbaa !114
-  %687 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %686, i64 0, i32 3
-  %688 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %689 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688, i64 328
-  %690 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %689 to i32*
-  %691 = atomicrmw xchg i32* %690, i32 1 seq_cst, align 4
-  %692 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %687) #37
-  %693 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688, null
-  br i1 %693, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %694
+693:                                              ; preds = %691, %689
+  %694 = phi %"struct.std::__detail::_Hash_node.203"* [ %681, %689 ], [ %670, %691 ]
+  %695 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %694, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %696 = bitcast i8* %695 to %"class.(anonymous namespace)::Future"**
+  %697 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %696 unordered, align 8, !tbaa !112
+  %698 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %697, i64 0, i32 3
+  %699 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %700 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %699, i64 328
+  %701 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %700 to i32*
+  %702 = atomicrmw xchg i32* %701, i32 1 seq_cst, align 4
+  %703 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %698) #37
+  %704 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %699, null
+  br i1 %704, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %705
 
-694:                                              ; preds = %682
-  %695 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %689 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %696 = atomicrmw xchg i32* %690, i32 %691 seq_cst, align 4
-  %697 = icmp eq i32 %696, 1
-  %698 = icmp eq i32 %691, 0
-  %699 = and i1 %698, %697
-  br i1 %699, label %700, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+705:                                              ; preds = %693
+  %706 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %700 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %707 = atomicrmw xchg i32* %701, i32 %702 seq_cst, align 4
+  %708 = icmp eq i32 %707, 1
+  %709 = icmp eq i32 %702, 0
+  %710 = and i1 %709, %708
+  br i1 %710, label %711, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-700:                                              ; preds = %694
-  %701 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %702 = and i8 %701, 1
-  %703 = icmp eq i8 %702, 0
-  br i1 %703, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %704
+711:                                              ; preds = %705
+  %712 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %713 = and i8 %712, 1
+  %714 = icmp eq i8 %713, 0
+  br i1 %714, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %715
 
-704:                                              ; preds = %700
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %695) #37
+715:                                              ; preds = %711
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %706) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %704, %700, %694, %682
-  %705 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %686, i64 0, i32 0
-  %706 = load i32, i32* %705, align 8, !tbaa !100
-  %707 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %708 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %707, i64 328
-  %709 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %708 to i32*
-  %710 = atomicrmw xchg i32* %709, i32 1 seq_cst, align 4
-  %711 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %687) #37
-  %712 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %707, null
-  br i1 %712, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %713
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %715, %711, %705, %693
+  %716 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %697, i64 0, i32 0
+  %717 = load atomic i32, i32* %716 unordered, align 8, !tbaa !98
+  %718 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %719 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718, i64 328
+  %720 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %719 to i32*
+  %721 = atomicrmw xchg i32* %720, i32 1 seq_cst, align 4
+  %722 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %698) #37
+  %723 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718, null
+  br i1 %723, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %724
 
-713:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %714 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %708 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %715 = atomicrmw xchg i32* %709, i32 %710 seq_cst, align 4
-  %716 = icmp eq i32 %715, 1
-  %717 = icmp eq i32 %710, 0
-  %718 = and i1 %717, %716
-  br i1 %718, label %719, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+724:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %725 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %719 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %726 = atomicrmw xchg i32* %720, i32 %721 seq_cst, align 4
+  %727 = icmp eq i32 %726, 1
+  %728 = icmp eq i32 %721, 0
+  %729 = and i1 %728, %727
+  br i1 %729, label %730, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-719:                                              ; preds = %713
-  %720 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %721 = and i8 %720, 1
-  %722 = icmp eq i8 %721, 0
-  br i1 %722, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %723
+730:                                              ; preds = %724
+  %731 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %732 = and i8 %731, 1
+  %733 = icmp eq i8 %732, 0
+  br i1 %733, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %734
 
-723:                                              ; preds = %719
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %714) #37
+734:                                              ; preds = %730
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %725) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %723, %719, %713, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %680, %678, %671, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %724 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %678 ], [ 0, %680 ], [ %706, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %706, %723 ], [ %706, %719 ], [ %706, %713 ], [ 0, %.preheader ], [ 0, %671 ]
-  %725 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %726 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %725, i64 328
-  %727 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %726 to i32*
-  %728 = atomicrmw xchg i32* %727, i32 1 seq_cst, align 4
-  %729 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %630) #37
-  %730 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %725, null
-  br i1 %730, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %731
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %734, %730, %724, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %691, %689, %682, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %735 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %689 ], [ 0, %691 ], [ %717, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %717, %734 ], [ %717, %730 ], [ %717, %724 ], [ 0, %.preheader ], [ 0, %682 ]
+  %736 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %737 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736, i64 328
+  %738 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737 to i32*
+  %739 = atomicrmw xchg i32* %738, i32 1 seq_cst, align 4
+  %740 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %641) #37
+  %741 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736, null
+  br i1 %741, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %742
 
-731:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %732 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %726 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %733 = atomicrmw xchg i32* %727, i32 %728 seq_cst, align 4
-  %734 = icmp eq i32 %733, 1
-  %735 = icmp eq i32 %728, 0
-  %736 = and i1 %735, %734
-  br i1 %736, label %737, label %Kotlin_Worker_stateOfFuture.exit.i.i
+742:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %743 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %737 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %744 = atomicrmw xchg i32* %738, i32 %739 seq_cst, align 4
+  %745 = icmp eq i32 %744, 1
+  %746 = icmp eq i32 %739, 0
+  %747 = and i1 %746, %745
+  br i1 %747, label %748, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-737:                                              ; preds = %731
-  %738 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %739 = and i8 %738, 1
-  %740 = icmp eq i8 %739, 0
-  br i1 %740, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %741
+748:                                              ; preds = %742
+  %749 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %750 = and i8 %749, 1
+  %751 = icmp eq i8 %750, 0
+  br i1 %751, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %752
 
-741:                                              ; preds = %737
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %732) #37
+752:                                              ; preds = %748
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %743) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %741, %737, %731, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %742 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %628, i64 1
-  %743 = bitcast %struct.ObjHeader* %742 to i32*
-  %744 = load i32, i32* %743, align 8, !tbaa !18
-  %745 = icmp ugt i32 %744, %724
-  br i1 %745, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %746
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %752, %748, %742, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %753 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %639, i64 1
+  %754 = bitcast %struct.ObjHeader* %753 to i32*
+  %755 = load atomic i32, i32* %754 unordered, align 8, !tbaa !18
+  %756 = icmp ugt i32 %755, %735
+  br i1 %756, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %757
 
-746:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+757:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %747 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %628, i64 2
-  %748 = sext i32 %724 to i64
-  %749 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %747, i64 %748
-  %750 = bitcast %struct.ObjHeader* %749 to %struct.ObjHeader**
-  %751 = load %struct.ObjHeader*, %struct.ObjHeader** %750, align 8, !tbaa !3
-  store %struct.ObjHeader* %751, %struct.ObjHeader** %185, align 8, !tbaa !3
-  %752 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %753 = load i64, i64* %114, align 8, !tbaa !9
-  %754 = bitcast %"class.kotlin::mm::ShadowStack"* %752 to i64*
-  store i64 %753, i64* %754, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %110)
-  %755 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %751, i64 2
-  %756 = bitcast %struct.ObjHeader* %755 to i32*
-  %757 = load i32, i32* %756, align 4
-  switch i32 %757, label %when_next27.i [
+  %758 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %639, i64 2
+  %759 = sext i32 %735 to i64
+  %760 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %758, i64 %759
+  %761 = bitcast %struct.ObjHeader* %760 to %struct.ObjHeader**
+  %762 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %761 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %762, %struct.ObjHeader** %193, align 8, !tbaa !3
+  %763 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %764 = load atomic i64, i64* %121 unordered, align 8, !tbaa !9
+  %765 = bitcast %"class.kotlin::mm::ShadowStack"* %763 to i64*
+  store i64 %764, i64* %765, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %117)
+  %766 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %762, i64 2
+  %767 = bitcast %struct.ObjHeader* %766 to i32*
+  %768 = load atomic i32, i32* %767 unordered, align 4
+  switch i32 %768, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1252,71 +1270,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %620, %struct.ObjHeader** nonnull %186)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %631, %struct.ObjHeader** nonnull %194)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %758 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %759 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %760 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %759 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %761 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %760, align 8, !tbaa !3
-  %762 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %761, i64 0, i32 2, i32 1
-  %763 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %762, i64 56) #37
-  %764 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %763, i64 1
-  %765 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %763, i64 2
-  %766 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765 to %struct.ObjHeader*
-  %767 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765 to %struct.TypeInfo**
-  %768 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %764 to i64*
-  store i64 0, i64* %768, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %767, align 8, !tbaa !14
-  %769 = bitcast %struct.ObjHeader** %758 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %769, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %766, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %766) #50
+  %769 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %770 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %771 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %770 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %772 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %771 unordered, align 8, !tbaa !3
+  %773 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %772, i64 0, i32 2, i32 1
+  %774 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %773, i64 56) #37
+  %775 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %774, i64 1
+  %776 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %774, i64 2
+  %777 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %776 to %struct.ObjHeader*
+  %778 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %776 to %struct.TypeInfo**
+  %779 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775 to i64*
+  store i64 0, i64* %779, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %778, align 8, !tbaa !14
+  %780 = bitcast %struct.ObjHeader** %769 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %776, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %780, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %777, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %777) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %770 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %771 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %620, %struct.ObjHeader** nonnull %771)
-  %772 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %773 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %772 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %774 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %773, align 8, !tbaa !3
-  %775 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %774, i64 0, i32 2, i32 1
-  %776 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %775, i64 56) #37
-  %777 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %776, i64 1
-  %778 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %776, i64 2
-  %779 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %778 to %struct.ObjHeader*
-  %780 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %778 to %struct.TypeInfo**
-  %781 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %777 to i64*
-  store i64 0, i64* %781, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %780, align 8, !tbaa !14
-  %782 = bitcast %struct.ObjHeader** %770 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %778, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %782, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %779, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %779) #50
+  %781 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %782 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %631, %struct.ObjHeader** nonnull %782)
+  %783 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %784 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %783 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %785 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %784 unordered, align 8, !tbaa !3
+  %786 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %785, i64 0, i32 2, i32 1
+  %787 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %786, i64 56) #37
+  %788 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %787, i64 1
+  %789 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %787, i64 2
+  %790 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %789 to %struct.ObjHeader*
+  %791 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %789 to %struct.TypeInfo**
+  %792 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to i64*
+  store i64 0, i64* %792, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %791, align 8, !tbaa !14
+  %793 = bitcast %struct.ObjHeader** %781 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %789, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %793, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %790, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %790) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %783 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %784 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %620, %struct.ObjHeader** nonnull %784)
-  %785 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %786 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %785 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %787 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %786, align 8, !tbaa !3
-  %788 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %787, i64 0, i32 2, i32 1
-  %789 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %788, i64 56) #37
-  %790 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %789, i64 1
-  %791 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %789, i64 2
-  %792 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %791 to %struct.ObjHeader*
-  %793 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %791 to %struct.TypeInfo**
-  %794 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %790 to i64*
-  store i64 0, i64* %794, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %793, align 8, !tbaa !14
-  %795 = bitcast %struct.ObjHeader** %783 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %791, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %795, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %792, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %792) #50
+  %794 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %795 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %631, %struct.ObjHeader** nonnull %795)
+  %796 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %797 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %796 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %798 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %797 unordered, align 8, !tbaa !3
+  %799 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %798, i64 0, i32 2, i32 1
+  %800 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %799, i64 56) #37
+  %801 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %800, i64 1
+  %802 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %800, i64 2
+  %803 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %802 to %struct.ObjHeader*
+  %804 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %802 to %struct.TypeInfo**
+  %805 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801 to i64*
+  store i64 0, i64* %805, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %804, align 8, !tbaa !14
+  %806 = bitcast %struct.ObjHeader** %794 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %802, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %806, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %803, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %803) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1329,10 +1347,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %796 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %797 = bitcast %"class.kotlin::mm::ShadowStack"* %796 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %181)
-  %798 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %798, i64* %797, align 8, !tbaa !7
+  %807 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %808 = bitcast %"class.kotlin::mm::ShadowStack"* %807 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %189)
+  %809 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %809, i64* %808, align 8, !tbaa !7
   ret void
 }
