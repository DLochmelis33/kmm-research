--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedString20Workers/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:50:51.100589085 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedString20Workers/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:29.530370968 +0200
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
@@ -59,7 +59,7 @@
   %38 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %39 = bitcast [9 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %40 = bitcast %"class.kotlin::mm::ShadowStack"* %38 to i64*
-  %41 = load i64, i64* %40, align 8, !tbaa !7
+  %41 = load atomic i64, i64* %40 unordered, align 8, !tbaa !7
   %42 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %43 = bitcast %struct.ObjHeader** %42 to i64*
   store i64 %41, i64* %43, align 8, !tbaa !9
@@ -76,233 +76,247 @@
   %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29 to %"kclassbody:MultithreadedLoopsBenchmark#internal"*
   %51 = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %50, i64 0, i32 5
   store i32 10000, i32* %51, align 4
-  %52 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
-  %53 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %54 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %53 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %55 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %54, align 8, !tbaa !3
-  %56 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %55, i64 0, i32 2, i32 1
-  %57 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %56, i64 20024) #37
-  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 1
-  %59 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 2
-  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to %struct.TypeInfo**
-  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %60, align 8, !tbaa !16
-  %62 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 3
-  %63 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62 to i32*
-  store i32 10000, i32* %63, align 8, !tbaa !18
-  %64 = bitcast %struct.ObjHeader** %52 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %64, align 8, !tbaa !3
-  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to i64*
-  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 4
-  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to i16*
+  %52 = load atomic i32, i32* %51 unordered, align 4
+  %53 = icmp slt i32 %52, 0
+  br i1 %53, label %54, label %AllocArrayInstance.exit.i3
+
+54:                                               ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  call fastcc void @ThrowIllegalArgumentException() #50
+  unreachable
+
+AllocArrayInstance.exit.i3:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
+  %55 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
+  %56 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %57 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %56 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %58 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %57 unordered, align 8, !tbaa !3
+  %59 = zext i32 %52 to i64
+  %60 = shl nuw nsw i64 %59, 1
+  %61 = add nuw nsw i64 %60, 31
+  %62 = and i64 %61, 17179869176
+  %63 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %58, i64 0, i32 2, i32 1
+  %64 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %63, i64 %62) #37
+  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 1
+  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 2
+  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to %struct.TypeInfo**
+  %68 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %67, align 8, !tbaa !16
+  %69 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 3
+  %70 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69 to i32*
+  store i32 %52, i32* %70, align 8, !tbaa !18
+  %71 = bitcast %struct.ObjHeader** %55 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %71, align 8, !tbaa !3
+  %72 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to i64*
+  %73 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 4
+  %74 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73 to i16*
+  %wide.trip.count59 = zext i32 %52 to i64
   br label %loop_check.i7
 
 while_loop.i4:                                    ; preds = %loop_check.i7
-  %68 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %69 = and i8 %68, 1
-  %70 = icmp eq i8 %69, 0
-  br i1 %70, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %71
+  %75 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %76 = and i8 %75, 1
+  %77 = icmp eq i8 %76, 0
+  br i1 %77, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %78
 
-71:                                               ; preds = %while_loop.i4
+78:                                               ; preds = %while_loop.i4
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i5
 
-Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %71, %while_loop.i4
-  %72 = load i32, i32* %63, align 8, !tbaa !18
-  %73 = zext i32 %72 to i64
-  %74 = icmp ult i64 %indvars.iv57, %73
-  br i1 %74, label %Kotlin_CharArray_set.exit.i, label %75
+Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %78, %while_loop.i4
+  %79 = load atomic i32, i32* %70 unordered, align 8, !tbaa !18
+  %80 = zext i32 %79 to i64
+  %81 = icmp ult i64 %indvars.iv57, %80
+  br i1 %81, label %Kotlin_CharArray_set.exit.i, label %82
 
-75:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
+82:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
-  %76 = trunc i32 %tmp.0.i6 to i16
-  %77 = load atomic volatile i64, i64* %65 monotonic, align 8
-  %78 = getelementptr inbounds i16, i16* %67, i64 %indvars.iv57
-  store i16 %76, i16* %78, align 2, !tbaa !34
+  %83 = trunc i64 %indvars.iv57 to i16
+  %84 = load atomic volatile i64, i64* %72 monotonic, align 8
+  %85 = getelementptr inbounds i16, i16* %74, i64 %indvars.iv57
+  store i16 %83, i16* %85, align 2, !tbaa !27
   %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
-  %79 = add nuw nsw i32 %tmp.0.i6, 1
   br label %loop_check.i7
 
-loop_check.i7:                                    ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %tmp.0.i6 = phi i32 [ %79, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
-  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
-  br i1 %exitcond59.not, label %loop_exit.i8, label %while_loop.i4
+loop_check.i7:                                    ; preds = %Kotlin_CharArray_set.exit.i, %AllocArrayInstance.exit.i3
+  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_CharArray_set.exit.i ], [ 0, %AllocArrayInstance.exit.i3 ]
+  %exitcond60.not = icmp eq i64 %indvars.iv57, %wide.trip.count59
+  br i1 %exitcond60.not, label %loop_exit.i8, label %while_loop.i4
 
 loop_exit.i8:                                     ; preds = %loop_check.i7
-  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %80, align 8, !tbaa !3
-  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to %struct.ObjHeader*
-  %82 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* nonnull %81, %struct.ObjHeader** nonnull %34)
-  store %struct.ObjHeader* %82, %struct.ObjHeader** %34, align 8, !tbaa !3
-  %83 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
-  %84 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83 to %struct.ObjHeader**
-  store %struct.ObjHeader* %82, %struct.ObjHeader** %84, align 8, !tbaa !3
-  %85 = load i32, i32* %49, align 8
-  %86 = icmp slt i32 %85, 0
-  br i1 %86, label %when_case.i9, label %AllocArrayInstance.exit1.i
+  %86 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %86, align 8, !tbaa !3
+  %87 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3
+  %88 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %87 to %struct.ObjHeader**
+  %89 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %88 unordered, align 8
+  %90 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* %89, %struct.ObjHeader** nonnull %34)
+  store %struct.ObjHeader* %90, %struct.ObjHeader** %34, align 8, !tbaa !3
+  %91 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
+  %92 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91 to %struct.ObjHeader**
+  store %struct.ObjHeader* %90, %struct.ObjHeader** %92, align 8, !tbaa !3
+  %93 = load atomic i32, i32* %49 unordered, align 8
+  %94 = icmp slt i32 %93, 0
+  br i1 %94, label %when_case.i9, label %AllocArrayInstance.exit1.i
 
 when_case.i9:                                     ; preds = %loop_exit.i8
-  %87 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
-  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %90 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89, align 8, !tbaa !3
-  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
-  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 56) #37
-  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
-  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
-  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.ObjHeader*
-  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
-  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i64*
-  store i64 0, i64* %97, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !14
-  %98 = bitcast %struct.ObjHeader** %87 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %95, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %95) #50
+  %95 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
+  %96 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %97 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %96 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %98 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %97 unordered, align 8, !tbaa !3
+  %99 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %98, i64 0, i32 2, i32 1
+  %100 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %99, i64 56) #37
+  %101 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 1
+  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100, i64 2
+  %103 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to %struct.ObjHeader*
+  %104 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to %struct.TypeInfo**
+  %105 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %101 to i64*
+  store i64 0, i64* %105, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %104, align 8, !tbaa !14
+  %106 = bitcast %struct.ObjHeader** %95 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %106, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %103, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %103) #50
   unreachable
 
 AllocArrayInstance.exit1.i:                       ; preds = %loop_exit.i8
-  %99 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %100 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %99 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %101 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %100, align 8, !tbaa !3
-  %102 = zext i32 %85 to i64
-  %103 = shl nuw nsw i64 %102, 3
-  %104 = add nuw nsw i64 %103, 31
-  %105 = and i64 %104, 68719476728
-  %106 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %101, i64 0, i32 2, i32 1
-  %107 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %106, i64 %105) #37
-  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 1
-  %109 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 2
-  %110 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to %struct.TypeInfo**
-  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %111, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %110, align 8, !tbaa !16
-  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 3
-  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to i32*
-  store i32 %85, i32* %113, align 8, !tbaa !18
-  %114 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !3
-  %115 = bitcast %struct.ObjHeader** %36 to i64*
-  %116 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  %107 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %108 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %107 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %109 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %108 unordered, align 8, !tbaa !3
+  %110 = zext i32 %93 to i64
+  %111 = shl nuw nsw i64 %110, 3
+  %112 = add nuw nsw i64 %111, 31
+  %113 = and i64 %112, 68719476728
+  %114 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %109, i64 0, i32 2, i32 1
+  %115 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %114, i64 %113) #37
+  %116 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115, i64 1
+  %117 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115, i64 2
+  %118 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117 to %struct.TypeInfo**
+  %119 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %119, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %118, align 8, !tbaa !16
+  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115, i64 3
+  %121 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to i32*
+  store i32 %93, i32* %121, align 8, !tbaa !18
+  %122 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %122, align 8, !tbaa !3
+  %123 = bitcast %struct.ObjHeader** %36 to i64*
+  %124 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
   %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  %117 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %118 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %119 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %120 = bitcast %struct.ObjHeader** %119 to i64*
-  %121 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %122 = bitcast %struct.ObjHeader** %121 to i32*
-  %123 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %118, i64 0, i32 3
-  %124 = bitcast %struct.ObjHeader** %117 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %125 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %126 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i64*
-  %127 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 4
-  %wide.trip.count55 = zext i32 %85 to i64
+  %125 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %126 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %127 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %128 = bitcast %struct.ObjHeader** %127 to i64*
+  %129 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %130 = bitcast %struct.ObjHeader** %129 to i32*
+  %131 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %126, i64 0, i32 3
+  %132 = bitcast %struct.ObjHeader** %125 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %133 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117 to i64*
+  %135 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %115, i64 4
+  %wide.trip.count55 = zext i32 %93 to i64
   br label %loop_check15.i
 
 while_loop16.i:                                   ; preds = %loop_check15.i
-  %128 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %129 = and i8 %128, 1
-  %130 = icmp eq i8 %129, 0
-  br i1 %130, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %131
+  %136 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %137 = and i8 %136, 1
+  %138 = icmp eq i8 %137, 0
+  br i1 %138, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %139
 
-131:                                              ; preds = %while_loop16.i
+139:                                              ; preds = %while_loop16.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit2.i
 
-Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %131, %while_loop16.i
-  %132 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
-  store i64 %132, i64* %115, align 8, !tbaa !3
-  %133 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  %134 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %133, i32 0)
-  %135 = icmp eq %class.Worker* %134, null
-  br i1 %135, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %136
+Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %139, %while_loop16.i
+  %140 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
+  store i64 %140, i64* %123, align 8, !tbaa !3
+  %141 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  %142 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %141, i32 0)
+  %143 = icmp eq %class.Worker* %142, null
+  br i1 %143, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %144
 
-136:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
-  %137 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %138 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %137, i64 328
-  %139 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138 to i32*
-  %140 = atomicrmw xchg i32* %139, i32 1 seq_cst, align 4
-  %141 = getelementptr inbounds %class.Worker, %class.Worker* %134, i64 0, i32 9
-  %142 = bitcast %class.Worker* %134 to i8*
-  %143 = call i32 @pthread_create(i64* nonnull %141, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %142) #37
-  %144 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %137, null
-  br i1 %144, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %145
+144:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
+  %145 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %146 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %145, i64 328
+  %147 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %146 to i32*
+  %148 = atomicrmw xchg i32* %147, i32 1 seq_cst, align 4
+  %149 = getelementptr inbounds %class.Worker, %class.Worker* %142, i64 0, i32 9
+  %150 = bitcast %class.Worker* %142 to i8*
+  %151 = call i32 @pthread_create(i64* nonnull %149, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %150) #37
+  %152 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %145, null
+  br i1 %152, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %153
 
-145:                                              ; preds = %136
-  %146 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %147 = atomicrmw xchg i32* %139, i32 %140 seq_cst, align 4
-  %148 = icmp eq i32 %147, 1
-  %149 = icmp eq i32 %140, 0
-  %150 = and i1 %149, %148
-  br i1 %150, label %151, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
+153:                                              ; preds = %144
+  %154 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %146 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %155 = atomicrmw xchg i32* %147, i32 %148 seq_cst, align 4
+  %156 = icmp eq i32 %155, 1
+  %157 = icmp eq i32 %148, 0
+  %158 = and i1 %157, %156
+  br i1 %158, label %159, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-151:                                              ; preds = %145
-  %152 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %153 = and i8 %152, 1
-  %154 = icmp eq i8 %153, 0
-  br i1 %154, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %155
+159:                                              ; preds = %153
+  %160 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %161 = and i8 %160, 1
+  %162 = icmp eq i8 %161, 0
+  br i1 %162, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %163
 
-155:                                              ; preds = %151
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %146) #37
+163:                                              ; preds = %159
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %154) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %155, %151, %145, %136
-  %156 = getelementptr inbounds %class.Worker, %class.Worker* %134, i64 0, i32 0
-  %157 = load i32, i32* %156, align 8, !tbaa !92
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %163, %159, %153, %144
+  %164 = getelementptr inbounds %class.Worker, %class.Worker* %142, i64 0, i32 0
+  %165 = load atomic i32, i32* %164 unordered, align 8, !tbaa !90
   br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
 
 "kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit2.i
-  %158 = phi i32 [ %157, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
-  %159 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %160 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to i64*
-  %161 = load i64, i64* %160, align 8, !tbaa !7
-  store i64 %161, i64* %120, align 8, !tbaa !9
-  %162 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %162, align 8, !tbaa !7
-  store i32 0, i32* %122, align 8, !tbaa !12
-  store i32 4, i32* %123, align 4, !tbaa !13
-  %163 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %164 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %163 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %165 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %164, align 8, !tbaa !3
-  %166 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %165, i64 0, i32 2, i32 1
-  %167 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %166, i64 24) #37
-  %168 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 1
-  %169 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 2
-  %170 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169 to %struct.TypeInfo**
-  %171 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168 to i64*
-  store i64 0, i64* %171, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %170, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
-  %172 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 3
-  %173 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %172 to i32*
-  store i32 %158, i32* %173, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %125, align 8, !tbaa !3
-  %174 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %175 = load i64, i64* %120, align 8, !tbaa !9
-  %176 = bitcast %"class.kotlin::mm::ShadowStack"* %174 to i64*
-  store i64 %175, i64* %176, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
-  %177 = load i32, i32* %113, align 8, !tbaa !18
-  %178 = zext i32 %177 to i64
-  %179 = icmp ult i64 %indvars.iv53, %178
-  br i1 %179, label %Kotlin_Array_set.exit.i13, label %180
+  %166 = phi i32 [ %165, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %124)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %124, i8 0, i32 32, i1 immarg false) #49
+  %167 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %168 = bitcast %"class.kotlin::mm::ShadowStack"* %167 to i64*
+  %169 = load atomic i64, i64* %168 unordered, align 8, !tbaa !7
+  store i64 %169, i64* %128, align 8, !tbaa !9
+  %170 = bitcast %"class.kotlin::mm::ShadowStack"* %167 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %170, align 8, !tbaa !7
+  store i32 0, i32* %130, align 8, !tbaa !12
+  store i32 4, i32* %131, align 4, !tbaa !13
+  %171 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %172 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %171 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %173 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %172 unordered, align 8, !tbaa !3
+  %174 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %173, i64 0, i32 2, i32 1
+  %175 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %174, i64 24) #37
+  %176 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %175, i64 1
+  %177 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %175, i64 2
+  %178 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %177 to %struct.TypeInfo**
+  %179 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %176 to i64*
+  store i64 0, i64* %179, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %178, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %177, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %132, align 8, !tbaa !3
+  %180 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %175, i64 3
+  %181 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180 to i32*
+  store i32 %166, i32* %181, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %177, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %133, align 8, !tbaa !3
+  %182 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %183 = load atomic i64, i64* %128 unordered, align 8, !tbaa !9
+  %184 = bitcast %"class.kotlin::mm::ShadowStack"* %182 to i64*
+  store i64 %183, i64* %184, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %124)
+  %185 = load atomic i32, i32* %121 unordered, align 8, !tbaa !18
+  %186 = zext i32 %185 to i64
+  %187 = icmp ult i64 %indvars.iv53, %186
+  br i1 %187, label %Kotlin_Array_set.exit.i13, label %188
 
-180:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
+188:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
-  %181 = load atomic volatile i64, i64* %126 monotonic, align 8
-  %182 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 %indvars.iv53
-  %183 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %183, align 8, !tbaa !3
+  %189 = load atomic volatile i64, i64* %134 monotonic, align 8
+  %190 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %135, i64 %indvars.iv53
+  %191 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %190, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %177, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %191, align 8, !tbaa !3
   %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
   br label %loop_check15.i
 
@@ -312,697 +326,701 @@
   br i1 %exitcond56.not, label %call_success, label %while_loop16.i
 
 call_success:                                     ; preds = %loop_check15.i
-  %184 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %184, align 8, !tbaa !3
-  %185 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %186 = load i64, i64* %43, align 8, !tbaa !3
+  %192 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %192, align 8, !tbaa !3
+  %193 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %194 = load atomic i64, i64* %43 unordered, align 8, !tbaa !9
+  %195 = bitcast %"class.kotlin::mm::ShadowStack"* %193 to i64*
+  store i64 %194, i64* %195, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %33)
-  %187 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %187)
+  %196 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %196)
   %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %187, i8 0, i32 136, i1 immarg false) #49
-  %188 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
-  %189 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
-  %190 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
-  %191 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
-  %192 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
-  %193 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
-  %194 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
-  %195 = bitcast %struct.ObjHeader** %194 to i64*
-  store i64 %186, i64* %195, align 8, !tbaa !9
-  %196 = bitcast %"class.kotlin::mm::ShadowStack"* %185 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %196, align 8, !tbaa !7
-  %197 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
-  %198 = bitcast %struct.ObjHeader** %197 to i32*
-  store i32 0, i32* %198, align 8, !tbaa !12
-  %199 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %193, i64 0, i32 3
-  store i32 17, i32* %199, align 4, !tbaa !13
-  %200 = load i32, i32* %49, align 8
-  %201 = icmp slt i32 %200, 0
-  br i1 %201, label %when_case.i, label %AllocArrayInstance.exit.i
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %196, i8 0, i32 136, i1 immarg false) #49
+  %197 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
+  %198 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
+  %199 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
+  %200 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
+  %201 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
+  %202 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
+  %203 = load atomic i64, i64* %195 unordered, align 8, !tbaa !7
+  %204 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
+  %205 = bitcast %struct.ObjHeader** %204 to i64*
+  store i64 %203, i64* %205, align 8, !tbaa !9
+  %206 = bitcast %"class.kotlin::mm::ShadowStack"* %193 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %206, align 8, !tbaa !7
+  %207 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
+  %208 = bitcast %struct.ObjHeader** %207 to i32*
+  store i32 0, i32* %208, align 8, !tbaa !12
+  %209 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %202, i64 0, i32 3
+  store i32 17, i32* %209, align 4, !tbaa !13
+  %210 = load atomic i32, i32* %49 unordered, align 8
+  %211 = icmp slt i32 %210, 0
+  br i1 %211, label %when_case.i, label %AllocArrayInstance.exit.i
 
 when_case.i:                                      ; preds = %call_success
-  %202 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
-  %203 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %204 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %203 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %205 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %204, align 8, !tbaa !3
-  %206 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %205, i64 0, i32 2, i32 1
-  %207 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %206, i64 56) #37
-  %208 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, i64 1
-  %209 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, i64 2
-  %210 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209 to %struct.ObjHeader*
-  %211 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209 to %struct.TypeInfo**
-  %212 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208 to i64*
-  store i64 0, i64* %212, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %211, align 8, !tbaa !14
-  %213 = bitcast %struct.ObjHeader** %202 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %213, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %210, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %210) #50
+  %212 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
+  %213 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %214 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %213 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %215 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %214 unordered, align 8, !tbaa !3
+  %216 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %215, i64 0, i32 2, i32 1
+  %217 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %216, i64 56) #37
+  %218 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %217, i64 1
+  %219 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %217, i64 2
+  %220 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219 to %struct.ObjHeader*
+  %221 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219 to %struct.TypeInfo**
+  %222 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %218 to i64*
+  store i64 0, i64* %222, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %221, align 8, !tbaa !14
+  %223 = bitcast %struct.ObjHeader** %212 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %223, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %220, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %220) #50
   unreachable
 
 AllocArrayInstance.exit.i:                        ; preds = %call_success
-  %214 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
-  %215 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
-  %216 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
-  %217 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %218 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %217 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %219 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %218, align 8, !tbaa !3
-  %220 = zext i32 %200 to i64
-  %221 = shl nuw nsw i64 %220, 3
-  %222 = add nuw nsw i64 %221, 31
-  %223 = and i64 %222, 68719476728
-  %224 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %219, i64 0, i32 2, i32 1
-  %225 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %224, i64 %223) #37
-  %226 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 1
-  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 2
-  %228 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to %struct.TypeInfo**
-  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226 to i8*
-  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false) #37
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %228, align 8, !tbaa !16
-  %230 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 3
-  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230 to i32*
-  store i32 %200, i32* %231, align 8, !tbaa !18
-  %232 = bitcast %struct.ObjHeader** %216 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %232, align 8, !tbaa !3
-  %233 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
-  %234 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to %struct.ObjHeader**
-  %235 = bitcast %struct.ObjHeader** %215 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %236 = bitcast %class.ObjHolder* %3 to i8*
-  %237 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
-  %238 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
-  %239 = bitcast %struct.FrameOverlay.6** %238 to i64*
-  %240 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
-  %241 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
-  %242 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
-  %243 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
-  %244 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
-  %245 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
-  %246 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
-  %247 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
-  %248 = bitcast %struct.ObjHeader** %214 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to i64*
-  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 4
-  %wide.trip.count51 = zext i32 %200 to i64
+  %224 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
+  %225 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
+  %226 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
+  %227 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %228 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %227 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %229 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %228 unordered, align 8, !tbaa !3
+  %230 = zext i32 %210 to i64
+  %231 = shl nuw nsw i64 %230, 3
+  %232 = add nuw nsw i64 %231, 31
+  %233 = and i64 %232, 68719476728
+  %234 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %229, i64 0, i32 2, i32 1
+  %235 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %234, i64 %233) #37
+  %236 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %235, i64 1
+  %237 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %235, i64 2
+  %238 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %237 to %struct.TypeInfo**
+  %239 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %236 to i8*
+  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %239, i8 0, i64 24, i1 false) #37
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %238, align 8, !tbaa !16
+  %240 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %235, i64 3
+  %241 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %240 to i32*
+  store i32 %210, i32* %241, align 8, !tbaa !18
+  %242 = bitcast %struct.ObjHeader** %226 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %237, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %242, align 8, !tbaa !3
+  %243 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
+  %244 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %243 to %struct.ObjHeader**
+  %245 = bitcast %struct.ObjHeader** %225 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %246 = bitcast %class.ObjHolder* %3 to i8*
+  %247 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
+  %248 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
+  %249 = bitcast %struct.FrameOverlay.6** %248 to i64*
+  %250 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
+  %251 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
+  %252 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
+  %253 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
+  %254 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
+  %255 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
+  %256 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
+  %257 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
+  %258 = bitcast %struct.ObjHeader** %224 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  %259 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %237 to i64*
+  %260 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %235, i64 4
+  %wide.trip.count51 = zext i32 %210 to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %251 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %252 = and i8 %251, 1
-  %253 = icmp eq i8 %252, 0
-  br i1 %253, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %254
+  %261 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %262 = and i8 %261, 1
+  %263 = icmp eq i8 %262, 0
+  br i1 %263, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %264
 
-254:                                              ; preds = %while_loop.i
+264:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %254, %while_loop.i
-  %255 = load %struct.ObjHeader*, %struct.ObjHeader** %234, align 8
-  %256 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %255, i64 1
-  %257 = bitcast %struct.ObjHeader* %256 to i32*
-  %258 = load i32, i32* %257, align 8, !tbaa !18
-  %259 = zext i32 %258 to i64
-  %260 = icmp ult i64 %indvars.iv49, %259
-  br i1 %260, label %Kotlin_Array_get.exit.i, label %261
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %264, %while_loop.i
+  %265 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %244 unordered, align 8
+  %266 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %265, i64 1
+  %267 = bitcast %struct.ObjHeader* %266 to i32*
+  %268 = load atomic i32, i32* %267 unordered, align 8, !tbaa !18
+  %269 = zext i32 %268 to i64
+  %270 = icmp ult i64 %indvars.iv49, %269
+  br i1 %270, label %Kotlin_Array_get.exit.i, label %271
 
-261:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+271:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %262 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %255, i64 2
-  %263 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %262, i64 %indvars.iv49
-  %264 = bitcast %struct.ObjHeader* %263 to %struct.ObjHeader**
-  %265 = load %struct.ObjHeader*, %struct.ObjHeader** %264, align 8, !tbaa !3
-  store %struct.ObjHeader* %265, %struct.ObjHeader** %188, align 8, !tbaa !3
-  %266 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %265, i64 1
-  %267 = bitcast %struct.ObjHeader* %266 to i32*
-  %268 = load i32, i32* %267, align 4
-  %269 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
-  %270 = icmp eq i32 %269, 2
-  br i1 %270, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
+  %272 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %265, i64 2
+  %273 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %272, i64 %indvars.iv49
+  %274 = bitcast %struct.ObjHeader* %273 to %struct.ObjHeader**
+  %275 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %274 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %275, %struct.ObjHeader** %197, align 8, !tbaa !3
+  %276 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %275, i64 1
+  %277 = bitcast %struct.ObjHeader* %276 to i32*
+  %278 = load atomic i32, i32* %277 unordered, align 4
+  %279 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
+  %280 = icmp eq i32 %279, 2
+  br i1 %280, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i
 
 label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
 
 "kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
-  %271 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
-  %272 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %271, i64 2
-  %273 = bitcast %struct.ObjHeader* %272 to %struct.ObjHeader**
-  %274 = load %struct.ObjHeader*, %struct.ObjHeader** %273, align 8, !tbaa !3
-  store %struct.ObjHeader* %274, %struct.ObjHeader** %189, align 8, !tbaa !3
-  %275 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %276 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %275 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %277 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %276, align 8, !tbaa !3
-  %278 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %277, i64 0, i32 2, i32 1
-  %279 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %278, i64 24) #37
-  %280 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279, i64 1
-  %281 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279, i64 2
-  %282 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281 to %struct.ObjHeader*
-  %283 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281 to %struct.TypeInfo**
-  %284 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %280 to i64*
-  store i64 0, i64* %284, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedStringWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %283, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %235, align 8, !tbaa !3
-  %285 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %285, align 8, !tbaa !3
-  %286 = bitcast %struct.ObjHeader* %274 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
-  %287 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %286, i64 0, i32 3
-  %288 = load i32, i32* %287, align 4
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %236) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %237, align 8, !tbaa !61
-  %289 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %290 = bitcast %"class.kotlin::mm::ShadowStack"* %289 to i64*
-  %291 = load i64, i64* %290, align 8, !tbaa !7
-  store i64 %291, i64* %239, align 8, !tbaa !9
-  %292 = bitcast %"class.kotlin::mm::ShadowStack"* %289 to %class.ObjHolder**
-  store %class.ObjHolder* %3, %class.ObjHolder** %292, align 8, !tbaa !7
-  store i32 0, i32* %240, align 8, !tbaa !12
-  store i32 4, i32* %241, align 4, !tbaa !13
-  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %282, %struct.ObjHeader** nonnull %237)
-          to label %293 unwind label %577
+  %281 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
+  %282 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %281, i64 2
+  %283 = bitcast %struct.ObjHeader* %282 to %struct.ObjHeader**
+  %284 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %283 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %284, %struct.ObjHeader** %198, align 8, !tbaa !3
+  %285 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %286 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %285 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %287 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %286 unordered, align 8, !tbaa !3
+  %288 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %287, i64 0, i32 2, i32 1
+  %289 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %288, i64 24) #37
+  %290 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 1
+  %291 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 2
+  %292 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %291 to %struct.ObjHeader*
+  %293 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %291 to %struct.TypeInfo**
+  %294 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %290 to i64*
+  store i64 0, i64* %294, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedStringWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %293, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %291, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %245, align 8, !tbaa !3
+  %295 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %295, align 8, !tbaa !3
+  %296 = bitcast %struct.ObjHeader* %284 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
+  %297 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %296, i64 0, i32 3
+  %298 = load atomic i32, i32* %297 unordered, align 4
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %246) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %247, align 8, !tbaa !60
+  %299 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %300 = bitcast %"class.kotlin::mm::ShadowStack"* %299 to i64*
+  %301 = load atomic i64, i64* %300 unordered, align 8, !tbaa !7
+  store i64 %301, i64* %249, align 8, !tbaa !9
+  %302 = bitcast %"class.kotlin::mm::ShadowStack"* %299 to %class.ObjHolder**
+  store %class.ObjHolder* %3, %class.ObjHolder** %302, align 8, !tbaa !7
+  store i32 0, i32* %250, align 8, !tbaa !12
+  store i32 4, i32* %251, align 4, !tbaa !13
+  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %292, %struct.ObjHeader** nonnull %247)
+          to label %303 unwind label %589
 
-293:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %294 = load %struct.ObjHeader*, %struct.ObjHeader** %237, align 8, !tbaa !61
-  %295 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %294) #37
-  store %struct.ObjHeader* null, %struct.ObjHeader** %237, align 8, !tbaa !3
-  %296 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
-  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %242)
-  %297 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 0
-  %298 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %299 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %298, i64 328
-  %300 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %299 to i32*
-  %301 = atomicrmw xchg i32* %300, i32 1 seq_cst, align 4
-  %302 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %297) #37
-  %303 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %298, null
-  br i1 %303, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %304
+303:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %304 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %247 unordered, align 8, !tbaa !60
+  %305 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %304) #37
+  store %struct.ObjHeader* null, %struct.ObjHeader** %247, align 8, !tbaa !3
+  %306 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
+  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %252)
+  %307 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 0
+  %308 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %309 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %308, i64 328
+  %310 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %309 to i32*
+  %311 = atomicrmw xchg i32* %310, i32 1 seq_cst, align 4
+  %312 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %307) #37
+  %313 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %308, null
+  br i1 %313, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %314
 
-304:                                              ; preds = %293
-  %305 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %299 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %306 = atomicrmw xchg i32* %300, i32 %301 seq_cst, align 4
-  %307 = icmp eq i32 %306, 1
-  %308 = icmp eq i32 %301, 0
-  %309 = and i1 %308, %307
-  br i1 %309, label %310, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+314:                                              ; preds = %303
+  %315 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %309 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %316 = atomicrmw xchg i32* %310, i32 %311 seq_cst, align 4
+  %317 = icmp eq i32 %316, 1
+  %318 = icmp eq i32 %311, 0
+  %319 = and i1 %318, %317
+  br i1 %319, label %320, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-310:                                              ; preds = %304
-  %311 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %312 = and i8 %311, 1
-  %313 = icmp eq i8 %312, 0
-  br i1 %313, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %314
+320:                                              ; preds = %314
+  %321 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %322 = and i8 %321, 1
+  %323 = icmp eq i8 %322, 0
+  br i1 %323, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %324
 
-314:                                              ; preds = %310
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %305) #37
+324:                                              ; preds = %320
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %315) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %314, %310, %304, %293
-  %315 = sext i32 %268 to i64
-  %316 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 3, i32 0, i32 1
-  %317 = load i64, i64* %316, align 8, !tbaa !67
-  %318 = urem i64 %315, %317
-  %319 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 3, i32 0, i32 0
-  %320 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %319, align 8, !tbaa !72
-  %321 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %320, i64 %318
-  %322 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %321, align 8, !tbaa !3
-  %323 = icmp eq %"struct.std::__detail::_Hash_node_base"* %322, null
-  br i1 %323, label %.loopexit17, label %324
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %324, %320, %314, %303
+  %325 = sext i32 %278 to i64
+  %326 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 3, i32 0, i32 1
+  %327 = load atomic i64, i64* %326 unordered, align 8, !tbaa !67
+  %328 = urem i64 %325, %327
+  %329 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 3, i32 0, i32 0
+  %330 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %329 unordered, align 8, !tbaa !72
+  %331 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %330, i64 %328
+  %332 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %331 unordered, align 8, !tbaa !3
+  %333 = icmp eq %"struct.std::__detail::_Hash_node_base"* %332, null
+  br i1 %333, label %.loopexit17, label %334
 
-324:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %325 = bitcast %"struct.std::__detail::_Hash_node_base"* %322 to %"struct.std::__detail::_Hash_node.203"**
-  %326 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %325, align 8, !tbaa !73
-  %327 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %326, i64 0, i32 0, i32 1
-  %328 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %327 to i32*
-  %329 = load i32, i32* %328, align 4, !tbaa !74
-  %330 = icmp eq i32 %329, %268
-  br i1 %330, label %347, label %.preheader16
+334:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %335 = bitcast %"struct.std::__detail::_Hash_node_base"* %332 to %"struct.std::__detail::_Hash_node.203"**
+  %336 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %335 unordered, align 8, !tbaa !73
+  %337 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %336, i64 0, i32 0, i32 1
+  %338 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %337 to i32*
+  %339 = load atomic i32, i32* %338 unordered, align 4, !tbaa !66
+  %340 = icmp eq i32 %339, %278
+  br i1 %340, label %357, label %.preheader16
 
-331:                                              ; preds = %338
-  %332 = icmp eq i32 %341, %268
-  br i1 %332, label %345, label %.preheader16
+341:                                              ; preds = %348
+  %342 = icmp eq i32 %351, %278
+  br i1 %342, label %355, label %.preheader16
 
-.preheader16:                                     ; preds = %331, %324
-  %333 = phi %"struct.std::__detail::_Hash_node.203"* [ %337, %331 ], [ %326, %324 ]
-  %334 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %333, i64 0, i32 0, i32 0, i32 0
-  %335 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %334, align 8, !tbaa !73
-  %336 = icmp eq %"struct.std::__detail::_Hash_node_base"* %335, null
-  %337 = bitcast %"struct.std::__detail::_Hash_node_base"* %335 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %336, label %.loopexit17, label %338
+.preheader16:                                     ; preds = %341, %334
+  %343 = phi %"struct.std::__detail::_Hash_node.203"* [ %347, %341 ], [ %336, %334 ]
+  %344 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %343, i64 0, i32 0, i32 0, i32 0
+  %345 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %344 unordered, align 8, !tbaa !73
+  %346 = icmp eq %"struct.std::__detail::_Hash_node_base"* %345, null
+  %347 = bitcast %"struct.std::__detail::_Hash_node_base"* %345 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %346, label %.loopexit17, label %348
 
-338:                                              ; preds = %.preheader16
-  %339 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %335, i64 1
-  %340 = bitcast %"struct.std::__detail::_Hash_node_base"* %339 to i32*
-  %341 = load i32, i32* %340, align 4, !tbaa !74
-  %342 = sext i32 %341 to i64
-  %343 = urem i64 %342, %317
-  %344 = icmp eq i64 %343, %318
-  br i1 %344, label %331, label %.loopexit17
+348:                                              ; preds = %.preheader16
+  %349 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %345, i64 1
+  %350 = bitcast %"struct.std::__detail::_Hash_node_base"* %349 to i32*
+  %351 = load atomic i32, i32* %350 unordered, align 4, !tbaa !66
+  %352 = sext i32 %351 to i64
+  %353 = urem i64 %352, %327
+  %354 = icmp eq i64 %353, %328
+  br i1 %354, label %341, label %.loopexit17
 
-345:                                              ; preds = %331
-  %346 = icmp eq %"struct.std::__detail::_Hash_node.203"* %333, null
-  br i1 %346, label %.loopexit17, label %349
+355:                                              ; preds = %341
+  %356 = icmp eq %"struct.std::__detail::_Hash_node.203"* %343, null
+  br i1 %356, label %.loopexit17, label %359
 
-347:                                              ; preds = %324
-  %348 = icmp eq %"struct.std::__detail::_Hash_node.203"* %326, null
-  br i1 %348, label %.loopexit17, label %349
+357:                                              ; preds = %334
+  %358 = icmp eq %"struct.std::__detail::_Hash_node.203"* %336, null
+  br i1 %358, label %.loopexit17, label %359
 
-349:                                              ; preds = %347, %345
-  %350 = phi %"struct.std::__detail::_Hash_node.203"* [ %337, %345 ], [ %326, %347 ]
-  %351 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %350, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %352 = bitcast i8* %351 to %class.Worker**
-  %353 = load %class.Worker*, %class.Worker** %352, align 8, !tbaa !75
-  %354 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
-  %355 = icmp eq i8* %354, null
-  br i1 %355, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %356
+359:                                              ; preds = %357, %355
+  %360 = phi %"struct.std::__detail::_Hash_node.203"* [ %347, %355 ], [ %336, %357 ]
+  %361 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %360, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %362 = bitcast i8* %361 to %class.Worker**
+  %363 = load atomic %class.Worker*, %class.Worker** %362 unordered, align 8, !tbaa !74
+  %364 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
+  %365 = icmp eq i8* %364, null
+  br i1 %365, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %366
 
-356:                                              ; preds = %349
-  %357 = bitcast i8* %354 to %"class.(anonymous namespace)::Future"*
-  %358 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 6
-  %359 = load i32, i32* %358, align 4, !tbaa !93
-  %360 = add nsw i32 %359, 1
-  store i32 %360, i32* %358, align 4, !tbaa !93
-  %361 = bitcast i8* %354 to i32*
-  store i32 1, i32* %361, align 8, !tbaa !100
-  %362 = getelementptr inbounds i8, i8* %354, i64 4
-  %363 = bitcast i8* %362 to i32*
-  store i32 %359, i32* %363, align 4, !tbaa !102
-  %364 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %365 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %364, i64 328
-  %366 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %365 to i32*
-  %367 = atomicrmw xchg i32* %366, i32 1 seq_cst, align 4
-  %368 = getelementptr inbounds i8, i8* %354, i64 16
-  %369 = bitcast i8* %368 to %union.pthread_mutex_t*
-  %370 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %369, %"struct.std::atomic"* null) #37
-  %371 = getelementptr inbounds i8, i8* %354, i64 56
-  %372 = bitcast i8* %371 to %union.pthread_cond_t*
-  %373 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %372, %"struct.std::atomic"* null) #37
-  %374 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %364, null
-  br i1 %374, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %375
+366:                                              ; preds = %359
+  %367 = bitcast i8* %364 to %"class.(anonymous namespace)::Future"*
+  %368 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 6
+  %369 = load atomic i32, i32* %368 unordered, align 4, !tbaa !91
+  %370 = add nsw i32 %369, 1
+  store i32 %370, i32* %368, align 4, !tbaa !91
+  %371 = bitcast i8* %364 to i32*
+  store i32 1, i32* %371, align 8, !tbaa !98
+  %372 = getelementptr inbounds i8, i8* %364, i64 4
+  %373 = bitcast i8* %372 to i32*
+  store i32 %369, i32* %373, align 4, !tbaa !100
+  %374 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %375 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %374, i64 328
+  %376 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %375 to i32*
+  %377 = atomicrmw xchg i32* %376, i32 1 seq_cst, align 4
+  %378 = getelementptr inbounds i8, i8* %364, i64 16
+  %379 = bitcast i8* %378 to %union.pthread_mutex_t*
+  %380 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %379, %"struct.std::atomic"* null) #37
+  %381 = getelementptr inbounds i8, i8* %364, i64 56
+  %382 = bitcast i8* %381 to %union.pthread_cond_t*
+  %383 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %382, %"struct.std::atomic"* null) #37
+  %384 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %374, null
+  br i1 %384, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %385
 
-375:                                              ; preds = %356
-  %376 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %365 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %377 = atomicrmw xchg i32* %366, i32 %367 seq_cst, align 4
-  %378 = icmp eq i32 %377, 1
-  %379 = icmp eq i32 %367, 0
-  %380 = and i1 %379, %378
-  br i1 %380, label %381, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+385:                                              ; preds = %366
+  %386 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %375 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %387 = atomicrmw xchg i32* %376, i32 %377 seq_cst, align 4
+  %388 = icmp eq i32 %387, 1
+  %389 = icmp eq i32 %377, 0
+  %390 = and i1 %389, %388
+  br i1 %390, label %391, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-381:                                              ; preds = %375
-  %382 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %383 = and i8 %382, 1
-  %384 = icmp eq i8 %383, 0
-  br i1 %384, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %385
+391:                                              ; preds = %385
+  %392 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %393 = and i8 %392, 1
+  %394 = icmp eq i8 %393, 0
+  br i1 %394, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %395
 
-385:                                              ; preds = %381
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %376) #37
+395:                                              ; preds = %391
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %386) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %385, %381, %375, %356, %349
-  %386 = phi %"class.(anonymous namespace)::Future"* [ null, %349 ], [ %357, %356 ], [ %357, %385 ], [ %357, %381 ], [ %357, %375 ]
-  %387 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %386, i64 0, i32 1
-  %388 = load i32, i32* %387, align 4, !tbaa !102
-  %389 = sext i32 %388 to i64
-  %390 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 1
-  %391 = load i64, i64* %390, align 8, !tbaa !103
-  %392 = urem i64 %389, %391
-  %393 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 0
-  %394 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
-  %395 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %394, i64 %392
-  %396 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %395, align 8, !tbaa !3
-  %397 = icmp eq %"struct.std::__detail::_Hash_node_base"* %396, null
-  br i1 %397, label %.loopexit15, label %398
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %395, %391, %385, %366, %359
+  %396 = phi %"class.(anonymous namespace)::Future"* [ null, %359 ], [ %367, %366 ], [ %367, %395 ], [ %367, %391 ], [ %367, %385 ]
+  %397 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %396, i64 0, i32 1
+  %398 = load atomic i32, i32* %397 unordered, align 4, !tbaa !100
+  %399 = sext i32 %398 to i64
+  %400 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 1
+  %401 = load atomic i64, i64* %400 unordered, align 8, !tbaa !101
+  %402 = urem i64 %399, %401
+  %403 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 0
+  %404 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %403 unordered, align 8, !tbaa !102
+  %405 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %404, i64 %402
+  %406 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %405 unordered, align 8, !tbaa !3
+  %407 = icmp eq %"struct.std::__detail::_Hash_node_base"* %406, null
+  br i1 %407, label %.loopexit15, label %408
 
-398:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %399 = bitcast %"struct.std::__detail::_Hash_node_base"* %396 to %"struct.std::__detail::_Hash_node.203"**
-  %400 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %399, align 8, !tbaa !73
-  %401 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %400, i64 0, i32 0, i32 1
-  %402 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %401 to i32*
-  %403 = load i32, i32* %402, align 4, !tbaa !74
-  %404 = icmp eq i32 %388, %403
-  br i1 %404, label %421, label %.preheader14
+408:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %409 = bitcast %"struct.std::__detail::_Hash_node_base"* %406 to %"struct.std::__detail::_Hash_node.203"**
+  %410 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %409 unordered, align 8, !tbaa !73
+  %411 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %410, i64 0, i32 0, i32 1
+  %412 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %411 to i32*
+  %413 = load atomic i32, i32* %412 unordered, align 4, !tbaa !66
+  %414 = icmp eq i32 %398, %413
+  br i1 %414, label %431, label %.preheader14
 
-405:                                              ; preds = %412
-  %406 = icmp eq i32 %388, %415
-  br i1 %406, label %419, label %.preheader14
+415:                                              ; preds = %422
+  %416 = icmp eq i32 %398, %425
+  br i1 %416, label %429, label %.preheader14
 
-.preheader14:                                     ; preds = %405, %398
-  %407 = phi %"struct.std::__detail::_Hash_node.203"* [ %411, %405 ], [ %400, %398 ]
-  %408 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %407, i64 0, i32 0, i32 0, i32 0
-  %409 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %408, align 8, !tbaa !73
-  %410 = icmp eq %"struct.std::__detail::_Hash_node_base"* %409, null
-  %411 = bitcast %"struct.std::__detail::_Hash_node_base"* %409 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %410, label %.loopexit15, label %412
+.preheader14:                                     ; preds = %415, %408
+  %417 = phi %"struct.std::__detail::_Hash_node.203"* [ %421, %415 ], [ %410, %408 ]
+  %418 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %417, i64 0, i32 0, i32 0, i32 0
+  %419 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %418 unordered, align 8, !tbaa !73
+  %420 = icmp eq %"struct.std::__detail::_Hash_node_base"* %419, null
+  %421 = bitcast %"struct.std::__detail::_Hash_node_base"* %419 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %420, label %.loopexit15, label %422
 
-412:                                              ; preds = %.preheader14
-  %413 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %409, i64 1
-  %414 = bitcast %"struct.std::__detail::_Hash_node_base"* %413 to i32*
-  %415 = load i32, i32* %414, align 4, !tbaa !74
-  %416 = sext i32 %415 to i64
-  %417 = urem i64 %416, %391
-  %418 = icmp eq i64 %417, %392
-  br i1 %418, label %405, label %.loopexit15
+422:                                              ; preds = %.preheader14
+  %423 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %419, i64 1
+  %424 = bitcast %"struct.std::__detail::_Hash_node_base"* %423 to i32*
+  %425 = load atomic i32, i32* %424 unordered, align 4, !tbaa !66
+  %426 = sext i32 %425 to i64
+  %427 = urem i64 %426, %401
+  %428 = icmp eq i64 %427, %402
+  br i1 %428, label %415, label %.loopexit15
 
-419:                                              ; preds = %405
-  %420 = icmp eq %"struct.std::__detail::_Hash_node.203"* %407, null
-  br i1 %420, label %.loopexit15, label %530
+429:                                              ; preds = %415
+  %430 = icmp eq %"struct.std::__detail::_Hash_node.203"* %417, null
+  br i1 %430, label %.loopexit15, label %542
 
-421:                                              ; preds = %398
-  %422 = icmp eq %"struct.std::__detail::_Hash_node.203"* %400, null
-  br i1 %422, label %.loopexit15, label %530
+431:                                              ; preds = %408
+  %432 = icmp eq %"struct.std::__detail::_Hash_node.203"* %410, null
+  br i1 %432, label %.loopexit15, label %542
 
-.loopexit15:                                      ; preds = %421, %419, %412, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
-  %423 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
-  %424 = getelementptr inbounds i8, i8* %423, i64 8
-  %425 = bitcast i8* %424 to i32*
-  store i32 %388, i32* %425, align 8, !tbaa !105
-  %426 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 4
-  %427 = load i64, i64* %390, align 8, !tbaa !103
-  %428 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 3
-  %429 = load i64, i64* %428, align 8, !tbaa !107
-  %430 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %426, i64 %427, i64 %429, i64 1)
-          to label %431 unwind label %537
+.loopexit15:                                      ; preds = %431, %429, %422, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
+  %433 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
+  %434 = bitcast i8* %433 to %"struct.std::__detail::_Hash_node_base"**
+  %435 = getelementptr inbounds i8, i8* %433, i64 8
+  %436 = bitcast i8* %435 to i32*
+  store i32 %398, i32* %436, align 8, !tbaa !103
+  %437 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 4
+  %438 = load atomic i64, i64* %400 unordered, align 8, !tbaa !101
+  %439 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 3
+  %440 = load atomic i64, i64* %439 unordered, align 8, !tbaa !105
+  %441 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %437, i64 %438, i64 %440, i64 1)
+          to label %442 unwind label %549
 
-431:                                              ; preds = %.loopexit15
-  %432 = extractvalue { i8, i64 } %430, 0
-  %433 = and i8 %432, 1
-  %434 = icmp eq i8 %433, 0
-  br i1 %434, label %435, label %437
+442:                                              ; preds = %.loopexit15
+  %443 = extractvalue { i8, i64 } %441, 0
+  %444 = and i8 %443, 1
+  %445 = icmp eq i8 %444, 0
+  br i1 %445, label %446, label %448
 
-435:                                              ; preds = %431
-  %436 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
-  br label %494
+446:                                              ; preds = %442
+  %447 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %403 unordered, align 8, !tbaa !102
+  br label %505
 
-437:                                              ; preds = %431
-  %438 = extractvalue { i8, i64 } %430, 1
-  %439 = icmp eq i64 %438, 1
-  br i1 %439, label %440, label %442, !prof !108, !misexpect !109
+448:                                              ; preds = %442
+  %449 = extractvalue { i8, i64 } %441, 1
+  %450 = icmp eq i64 %449, 1
+  br i1 %450, label %451, label %453, !prof !106, !misexpect !107
 
-440:                                              ; preds = %437
-  %441 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 5
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %441, align 8, !tbaa !110
-  br label %446
+451:                                              ; preds = %448
+  %452 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 5
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %452, align 8, !tbaa !108
+  br label %457
 
-442:                                              ; preds = %437
-  %443 = call noalias i8* @calloc(i64 %438, i64 8) #37
-  %444 = bitcast i8* %443 to %"struct.std::__detail::_Hash_node_base"**
-  %445 = shl i64 %438, 3
-  call void @llvm.memset.p0i8.i64(i8* align 8 %443, i8 0, i64 %445, i1 false) #37
-  br label %446
+453:                                              ; preds = %448
+  %454 = call noalias i8* @calloc(i64 %449, i64 8) #37
+  %455 = bitcast i8* %454 to %"struct.std::__detail::_Hash_node_base"**
+  %456 = shl i64 %449, 3
+  call void @llvm.memset.p0i8.i64(i8* align 8 %454, i8 0, i64 %456, i1 false) #37
+  br label %457
 
-446:                                              ; preds = %442, %440
-  %447 = phi %"struct.std::__detail::_Hash_node_base"** [ %441, %440 ], [ %444, %442 ]
-  %448 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 2
-  %449 = bitcast %"struct.std::__detail::_Hash_node_base"* %448 to %"struct.std::__detail::_Hash_node.203"**
-  %450 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %449, align 8, !tbaa !111
-  %451 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %448, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %451, align 8, !tbaa !111
-  %452 = icmp eq %"struct.std::__detail::_Hash_node.203"* %450, null
-  br i1 %452, label %.loopexit, label %453
+457:                                              ; preds = %453, %451
+  %458 = phi %"struct.std::__detail::_Hash_node_base"** [ %452, %451 ], [ %455, %453 ]
+  %459 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 2
+  %460 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to %"struct.std::__detail::_Hash_node.203"**
+  %461 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %460 unordered, align 8, !tbaa !109
+  %462 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %459, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %462, align 8, !tbaa !109
+  %463 = icmp eq %"struct.std::__detail::_Hash_node.203"* %461, null
+  br i1 %463, label %.loopexit, label %464
 
-453:                                              ; preds = %446
-  %454 = bitcast %"struct.std::__detail::_Hash_node_base"* %448 to i64*
-  br label %455
+464:                                              ; preds = %457
+  %465 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to i64*
+  br label %466
 
-455:                                              ; preds = %484, %453
-  %456 = phi %"struct.std::__detail::_Hash_node.203"* [ %450, %453 ], [ %459, %484 ]
-  %457 = phi i64 [ 0, %453 ], [ %485, %484 ]
-  %458 = bitcast %"struct.std::__detail::_Hash_node.203"* %456 to %"struct.std::__detail::_Hash_node.203"**
-  %459 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %458, align 8, !tbaa !73
-  %460 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 1
-  %461 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %460 to i32*
-  %462 = load i32, i32* %461, align 4, !tbaa !74
-  %463 = sext i32 %462 to i64
-  %464 = urem i64 %463, %438
-  %465 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %464
-  %466 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !3
-  %467 = icmp eq %"struct.std::__detail::_Hash_node_base"* %466, null
-  br i1 %467, label %468, label %477
+466:                                              ; preds = %495, %464
+  %467 = phi %"struct.std::__detail::_Hash_node.203"* [ %461, %464 ], [ %470, %495 ]
+  %468 = phi i64 [ 0, %464 ], [ %496, %495 ]
+  %469 = bitcast %"struct.std::__detail::_Hash_node.203"* %467 to %"struct.std::__detail::_Hash_node.203"**
+  %470 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %469 unordered, align 8, !tbaa !73
+  %471 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %467, i64 0, i32 0, i32 1
+  %472 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %471 to i32*
+  %473 = load atomic i32, i32* %472 unordered, align 4, !tbaa !66
+  %474 = sext i32 %473 to i64
+  %475 = urem i64 %474, %449
+  %476 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %458, i64 %475
+  %477 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %476 unordered, align 8, !tbaa !3
+  %478 = icmp eq %"struct.std::__detail::_Hash_node_base"* %477, null
+  br i1 %478, label %479, label %488
 
-468:                                              ; preds = %455
-  %469 = load i64, i64* %454, align 8, !tbaa !111
-  %470 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 0
-  %471 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 0, i32 0
-  %472 = bitcast %"struct.std::__detail::_Hash_node.203"* %456 to i64*
-  store i64 %469, i64* %472, align 8, !tbaa !73
-  store %"struct.std::__detail::_Hash_node_base"* %470, %"struct.std::__detail::_Hash_node_base"** %451, align 8, !tbaa !111
-  store %"struct.std::__detail::_Hash_node_base"* %448, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !3
-  %473 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %471, align 8, !tbaa !73
-  %474 = icmp eq %"struct.std::__detail::_Hash_node_base"* %473, null
-  br i1 %474, label %484, label %475
+479:                                              ; preds = %466
+  %480 = load atomic i64, i64* %465 unordered, align 8, !tbaa !109
+  %481 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %467, i64 0, i32 0, i32 0
+  %482 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %467, i64 0, i32 0, i32 0, i32 0
+  %483 = bitcast %"struct.std::__detail::_Hash_node.203"* %467 to i64*
+  store i64 %480, i64* %483, align 8, !tbaa !73
+  store %"struct.std::__detail::_Hash_node_base"* %481, %"struct.std::__detail::_Hash_node_base"** %462, align 8, !tbaa !109
+  store %"struct.std::__detail::_Hash_node_base"* %459, %"struct.std::__detail::_Hash_node_base"** %476, align 8, !tbaa !3
+  %484 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %482 unordered, align 8, !tbaa !73
+  %485 = icmp eq %"struct.std::__detail::_Hash_node_base"* %484, null
+  br i1 %485, label %495, label %486
 
-475:                                              ; preds = %468
-  %476 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %457
-  store %"struct.std::__detail::_Hash_node_base"* %470, %"struct.std::__detail::_Hash_node_base"** %476, align 8, !tbaa !3
-  br label %484
+486:                                              ; preds = %479
+  %487 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %458, i64 %468
+  store %"struct.std::__detail::_Hash_node_base"* %481, %"struct.std::__detail::_Hash_node_base"** %487, align 8, !tbaa !3
+  br label %495
 
-477:                                              ; preds = %455
-  %478 = bitcast %"struct.std::__detail::_Hash_node_base"* %466 to i64*
-  %479 = load i64, i64* %478, align 8, !tbaa !73
-  %480 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 0
-  %481 = bitcast %"struct.std::__detail::_Hash_node.203"* %456 to i64*
-  store i64 %479, i64* %481, align 8, !tbaa !73
-  %482 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !3
-  %483 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %482, i64 0, i32 0
-  store %"struct.std::__detail::_Hash_node_base"* %480, %"struct.std::__detail::_Hash_node_base"** %483, align 8, !tbaa !73
-  br label %484
+488:                                              ; preds = %466
+  %489 = bitcast %"struct.std::__detail::_Hash_node_base"* %477 to i64*
+  %490 = load atomic i64, i64* %489 unordered, align 8, !tbaa !73
+  %491 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %467, i64 0, i32 0, i32 0
+  %492 = bitcast %"struct.std::__detail::_Hash_node.203"* %467 to i64*
+  store i64 %490, i64* %492, align 8, !tbaa !73
+  %493 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %476 unordered, align 8, !tbaa !3
+  %494 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %493, i64 0, i32 0
+  store %"struct.std::__detail::_Hash_node_base"* %491, %"struct.std::__detail::_Hash_node_base"** %494, align 8, !tbaa !73
+  br label %495
 
-484:                                              ; preds = %477, %475, %468
-  %485 = phi i64 [ %457, %477 ], [ %464, %468 ], [ %464, %475 ]
-  %486 = icmp eq %"struct.std::__detail::_Hash_node.203"* %459, null
-  br i1 %486, label %.loopexit, label %455
+495:                                              ; preds = %488, %486, %479
+  %496 = phi i64 [ %468, %488 ], [ %475, %479 ], [ %475, %486 ]
+  %497 = icmp eq %"struct.std::__detail::_Hash_node.203"* %470, null
+  br i1 %497, label %.loopexit, label %466
 
-.loopexit:                                        ; preds = %484, %446
-  %487 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
-  %488 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 5
-  %489 = icmp eq %"struct.std::__detail::_Hash_node_base"** %487, %488
-  br i1 %489, label %492, label %490
+.loopexit:                                        ; preds = %495, %457
+  %498 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %403 unordered, align 8, !tbaa !102
+  %499 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 5
+  %500 = icmp eq %"struct.std::__detail::_Hash_node_base"** %498, %499
+  br i1 %500, label %503, label %501
 
-490:                                              ; preds = %.loopexit
-  %491 = bitcast %"struct.std::__detail::_Hash_node_base"** %487 to i8*
-  call void @free(i8* %491) #37
-  br label %492
+501:                                              ; preds = %.loopexit
+  %502 = bitcast %"struct.std::__detail::_Hash_node_base"** %498 to i8*
+  call void @free(i8* %502) #37
+  br label %503
 
-492:                                              ; preds = %490, %.loopexit
-  store i64 %438, i64* %390, align 8, !tbaa !103
-  store %"struct.std::__detail::_Hash_node_base"** %447, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
-  %493 = urem i64 %389, %438
-  br label %494
+503:                                              ; preds = %501, %.loopexit
+  store i64 %449, i64* %400, align 8, !tbaa !101
+  store %"struct.std::__detail::_Hash_node_base"** %458, %"struct.std::__detail::_Hash_node_base"*** %403, align 8, !tbaa !102
+  %504 = urem i64 %399, %449
+  br label %505
 
-494:                                              ; preds = %492, %435
-  %495 = phi %"struct.std::__detail::_Hash_node_base"** [ %436, %435 ], [ %447, %492 ]
-  %496 = phi i64 [ %392, %435 ], [ %493, %492 ]
-  %497 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %495, i64 %496
-  %498 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %497, align 8, !tbaa !3
-  %499 = icmp eq %"struct.std::__detail::_Hash_node_base"* %498, null
-  br i1 %499, label %506, label %500
+505:                                              ; preds = %503, %446
+  %506 = phi %"struct.std::__detail::_Hash_node_base"** [ %447, %446 ], [ %458, %503 ]
+  %507 = phi i64 [ %402, %446 ], [ %504, %503 ]
+  %508 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %506, i64 %507
+  %509 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %508 unordered, align 8, !tbaa !3
+  %510 = icmp eq %"struct.std::__detail::_Hash_node_base"* %509, null
+  br i1 %510, label %517, label %511
 
-500:                                              ; preds = %494
-  %501 = bitcast %"struct.std::__detail::_Hash_node_base"* %498 to i64*
-  %502 = load i64, i64* %501, align 8, !tbaa !73
-  %503 = bitcast i8* %423 to i64*
-  store i64 %502, i64* %503, align 8, !tbaa !73
-  %504 = bitcast %"struct.std::__detail::_Hash_node_base"** %497 to i8***
-  %505 = load i8**, i8*** %504, align 8, !tbaa !3
-  store i8* %423, i8** %505, align 8, !tbaa !73
-  br label %526
+511:                                              ; preds = %505
+  %512 = bitcast %"struct.std::__detail::_Hash_node_base"* %509 to i64*
+  %513 = load atomic i64, i64* %512 unordered, align 8, !tbaa !73
+  %514 = bitcast i8* %433 to i64*
+  store i64 %513, i64* %514, align 8, !tbaa !73
+  %515 = bitcast %"struct.std::__detail::_Hash_node_base"** %508 to i8***
+  %516 = load atomic i8**, i8*** %515 unordered, align 8, !tbaa !3
+  store i8* %433, i8** %516, align 8, !tbaa !73
+  br label %538
 
-506:                                              ; preds = %494
-  %507 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 2
-  %508 = bitcast %"struct.std::__detail::_Hash_node_base"* %507 to i64*
-  %509 = load i64, i64* %508, align 8, !tbaa !111
-  %510 = bitcast i8* %423 to i64*
-  store i64 %509, i64* %510, align 8, !tbaa !73
-  %511 = bitcast %"struct.std::__detail::_Hash_node_base"* %507 to i8**
-  store i8* %423, i8** %511, align 8, !tbaa !111
-  %512 = icmp eq i64 %509, 0
-  br i1 %512, label %523, label %513
+517:                                              ; preds = %505
+  %518 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %306, i64 0, i32 2, i32 0, i32 2
+  %519 = bitcast %"struct.std::__detail::_Hash_node_base"* %518 to i64*
+  %520 = load atomic i64, i64* %519 unordered, align 8, !tbaa !109
+  %521 = bitcast i8* %433 to i64*
+  store i64 %520, i64* %521, align 8, !tbaa !73
+  %522 = bitcast %"struct.std::__detail::_Hash_node_base"* %518 to i8**
+  store i8* %433, i8** %522, align 8, !tbaa !109
+  %523 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %434 unordered, align 8, !tbaa !73
+  %524 = icmp eq %"struct.std::__detail::_Hash_node_base"* %523, null
+  br i1 %524, label %535, label %525
 
-513:                                              ; preds = %506
-  %.cast.i.i.i.i = inttoptr i64 %509 to %"struct.std::__detail::_Hash_node_base"*
-  %514 = load i64, i64* %390, align 8, !tbaa !103
-  %515 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
-  %516 = bitcast %"struct.std::__detail::_Hash_node_base"* %515 to i32*
-  %517 = load i32, i32* %516, align 4, !tbaa !74
-  %518 = sext i32 %517 to i64
-  %519 = urem i64 %518, %514
-  %520 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %495, i64 %519
-  %521 = bitcast %"struct.std::__detail::_Hash_node_base"** %520 to i8**
-  store i8* %423, i8** %521, align 8, !tbaa !3
-  %522 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
-  br label %523
+525:                                              ; preds = %517
+  %526 = load atomic i64, i64* %400 unordered, align 8, !tbaa !101
+  %527 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %523, i64 1
+  %528 = bitcast %"struct.std::__detail::_Hash_node_base"* %527 to i32*
+  %529 = load atomic i32, i32* %528 unordered, align 4, !tbaa !66
+  %530 = sext i32 %529 to i64
+  %531 = urem i64 %530, %526
+  %532 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %506, i64 %531
+  %533 = bitcast %"struct.std::__detail::_Hash_node_base"** %532 to i8**
+  store i8* %433, i8** %533, align 8, !tbaa !3
+  %534 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %403 unordered, align 8, !tbaa !102
+  br label %535
 
-523:                                              ; preds = %513, %506
-  %524 = phi %"struct.std::__detail::_Hash_node_base"** [ %495, %506 ], [ %522, %513 ]
-  %525 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %524, i64 %496
-  store %"struct.std::__detail::_Hash_node_base"* %507, %"struct.std::__detail::_Hash_node_base"** %525, align 8, !tbaa !3
-  br label %526
+535:                                              ; preds = %525, %517
+  %536 = phi %"struct.std::__detail::_Hash_node_base"** [ %506, %517 ], [ %534, %525 ]
+  %537 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %536, i64 %507
+  store %"struct.std::__detail::_Hash_node_base"* %518, %"struct.std::__detail::_Hash_node_base"** %537, align 8, !tbaa !3
+  br label %538
 
-526:                                              ; preds = %523, %500
-  %527 = load i64, i64* %428, align 8, !tbaa !107
-  %528 = add i64 %527, 1
-  store i64 %528, i64* %428, align 8, !tbaa !107
-  %529 = bitcast i8* %424 to %"struct.std::pair.50"*
-  br label %534
+538:                                              ; preds = %535, %511
+  %539 = load atomic i64, i64* %439 unordered, align 8, !tbaa !105
+  %540 = add i64 %539, 1
+  store i64 %540, i64* %439, align 8, !tbaa !105
+  %541 = bitcast i8* %435 to %"struct.std::pair.50"*
+  br label %546
 
-530:                                              ; preds = %421, %419
-  %531 = phi %"struct.std::__detail::_Hash_node.203"* [ %400, %421 ], [ %411, %419 ]
-  %532 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %531, i64 0, i32 0, i32 1
-  %533 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %532 to %"struct.std::pair.50"*
-  br label %534
+542:                                              ; preds = %431, %429
+  %543 = phi %"struct.std::__detail::_Hash_node.203"* [ %410, %431 ], [ %421, %429 ]
+  %544 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %543, i64 0, i32 0, i32 1
+  %545 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %544 to %"struct.std::pair.50"*
+  br label %546
 
-534:                                              ; preds = %530, %526
-  %535 = phi %"struct.std::pair.50"* [ %533, %530 ], [ %529, %526 ]
-  %536 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %535, i64 0, i32 1
-  store %"class.(anonymous namespace)::Future"* %386, %"class.(anonymous namespace)::Future"** %536, align 8, !tbaa !3
-  store i32 2, i32* %243, align 8, !tbaa.struct !112
-  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %244, align 8, !tbaa.struct !112
-  store i8* %295, i8** %245, align 8, !tbaa.struct !112
-  store %"class.(anonymous namespace)::Future"* %386, %"class.(anonymous namespace)::Future"** %246, align 8, !tbaa.struct !112
-  store i32 %288, i32* %247, align 8, !tbaa.struct !112
-  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %353, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
+546:                                              ; preds = %542, %538
+  %547 = phi %"struct.std::pair.50"* [ %545, %542 ], [ %541, %538 ]
+  %548 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %547, i64 0, i32 1
+  store %"class.(anonymous namespace)::Future"* %396, %"class.(anonymous namespace)::Future"** %548, align 8, !tbaa !3
+  store i32 2, i32* %253, align 8, !tbaa.struct !110
+  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %254, align 8, !tbaa.struct !110
+  store i8* %305, i8** %255, align 8, !tbaa.struct !110
+  store %"class.(anonymous namespace)::Future"* %396, %"class.(anonymous namespace)::Future"** %256, align 8, !tbaa.struct !110
+  store i32 %298, i32* %257, align 8, !tbaa.struct !110
+  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %363, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
   br label %.loopexit17
 
-537:                                              ; preds = %.loopexit15
-  %538 = landingpad { i8*, i32 }
+549:                                              ; preds = %.loopexit15
+  %550 = landingpad { i8*, i32 }
           cleanup
-  %539 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %540 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %539, i64 328
-  %541 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540 to i32*
-  %542 = atomicrmw xchg i32* %541, i32 1 seq_cst, align 4
-  %543 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %297) #37
-  %544 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %539, null
-  br i1 %544, label %.body.i.i.i, label %563
+  %551 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %552 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551, i64 328
+  %553 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %552 to i32*
+  %554 = atomicrmw xchg i32* %553, i32 1 seq_cst, align 4
+  %555 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %307) #37
+  %556 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551, null
+  br i1 %556, label %.body.i.i.i, label %575
 
-.loopexit17:                                      ; preds = %534, %347, %345, %338, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
-  %545 = phi %"class.(anonymous namespace)::Future"* [ %386, %534 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %345 ], [ null, %347 ], [ null, %.preheader16 ], [ null, %338 ]
-  %546 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %547 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %546, i64 328
-  %548 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %547 to i32*
-  %549 = atomicrmw xchg i32* %548, i32 1 seq_cst, align 4
-  %550 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %297) #37
-  %551 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %546, null
-  br i1 %551, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %552
+.loopexit17:                                      ; preds = %546, %357, %355, %348, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
+  %557 = phi %"class.(anonymous namespace)::Future"* [ %396, %546 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %355 ], [ null, %357 ], [ null, %.preheader16 ], [ null, %348 ]
+  %558 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %559 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %558, i64 328
+  %560 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %559 to i32*
+  %561 = atomicrmw xchg i32* %560, i32 1 seq_cst, align 4
+  %562 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %307) #37
+  %563 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %558, null
+  br i1 %563, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %564
 
-552:                                              ; preds = %.loopexit17
-  %553 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %547 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %554 = atomicrmw xchg i32* %548, i32 %549 seq_cst, align 4
-  %555 = icmp eq i32 %554, 1
-  %556 = icmp eq i32 %549, 0
-  %557 = and i1 %556, %555
-  br i1 %557, label %558, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+564:                                              ; preds = %.loopexit17
+  %565 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %559 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %566 = atomicrmw xchg i32* %560, i32 %561 seq_cst, align 4
+  %567 = icmp eq i32 %566, 1
+  %568 = icmp eq i32 %561, 0
+  %569 = and i1 %568, %567
+  br i1 %569, label %570, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-558:                                              ; preds = %552
-  %559 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %560 = and i8 %559, 1
-  %561 = icmp eq i8 %560, 0
-  br i1 %561, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %562
+570:                                              ; preds = %564
+  %571 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %572 = and i8 %571, 1
+  %573 = icmp eq i8 %572, 0
+  br i1 %573, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %574
 
-562:                                              ; preds = %558
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %553) #37
+574:                                              ; preds = %570
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %565) #37
   br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
 
-563:                                              ; preds = %537
-  %564 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %565 = atomicrmw xchg i32* %541, i32 %542 seq_cst, align 4
-  %566 = icmp eq i32 %565, 1
-  %567 = icmp eq i32 %542, 0
-  %568 = and i1 %567, %566
-  br i1 %568, label %569, label %.body.i.i.i
+575:                                              ; preds = %549
+  %576 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %552 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %577 = atomicrmw xchg i32* %553, i32 %554 seq_cst, align 4
+  %578 = icmp eq i32 %577, 1
+  %579 = icmp eq i32 %554, 0
+  %580 = and i1 %579, %578
+  br i1 %580, label %581, label %.body.i.i.i
 
-569:                                              ; preds = %563
-  %570 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %571 = and i8 %570, 1
-  %572 = icmp eq i8 %571, 0
-  br i1 %572, label %.body.i.i.i, label %573
+581:                                              ; preds = %575
+  %582 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %583 = and i8 %582, 1
+  %584 = icmp eq i8 %583, 0
+  br i1 %584, label %.body.i.i.i, label %585
 
-573:                                              ; preds = %569
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %564) #37
+585:                                              ; preds = %581
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %576) #37
   br label %.body.i.i.i
 
-_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %562, %558, %552, %.loopexit17
-  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %242)
-  %574 = icmp eq %"class.(anonymous namespace)::Future"* %545, null
-  br i1 %574, label %575, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %574, %570, %564, %.loopexit17
+  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %252)
+  %586 = icmp eq %"class.(anonymous namespace)::Future"* %557, null
+  br i1 %586, label %587, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
 
-575:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
+587:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
   invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
-          to label %576 unwind label %579
+          to label %588 unwind label %591
 
-576:                                              ; preds = %575
+588:                                              ; preds = %587
   unreachable
 
-577:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
-  %578 = landingpad { i8*, i32 }
+589:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
+  %590 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-579:                                              ; preds = %575
-  %580 = landingpad { i8*, i32 }
+591:                                              ; preds = %587
+  %592 = landingpad { i8*, i32 }
           cleanup
   br label %.body.i.i.i
 
-.body.i.i.i:                                      ; preds = %579, %577, %573, %569, %563, %537
-  %581 = phi { i8*, i32 } [ %578, %577 ], [ %580, %579 ], [ %538, %563 ], [ %538, %569 ], [ %538, %573 ], [ %538, %537 ]
-  %582 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %583 = load i64, i64* %239, align 8, !tbaa !9
-  %584 = bitcast %"class.kotlin::mm::ShadowStack"* %582 to i64*
-  store i64 %583, i64* %584, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %236) #37
-  resume { i8*, i32 } %581
+.body.i.i.i:                                      ; preds = %591, %589, %585, %581, %575, %549
+  %593 = phi { i8*, i32 } [ %590, %589 ], [ %592, %591 ], [ %550, %575 ], [ %550, %581 ], [ %550, %585 ], [ %550, %549 ]
+  %594 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %595 = load atomic i64, i64* %249 unordered, align 8, !tbaa !9
+  %596 = bitcast %"class.kotlin::mm::ShadowStack"* %594 to i64*
+  store i64 %595, i64* %596, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %246) #37
+  resume { i8*, i32 } %593
 
 "kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
-  %585 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %545, i64 0, i32 1
-  %586 = load i32, i32* %585, align 4, !tbaa !102
-  %587 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %588 = load i64, i64* %239, align 8, !tbaa !9
-  %589 = bitcast %"class.kotlin::mm::ShadowStack"* %587 to i64*
-  store i64 %588, i64* %589, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %236) #37
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
-  %590 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %591 = bitcast %"class.kotlin::mm::ShadowStack"* %590 to i64*
-  %592 = load i64, i64* %591, align 8, !tbaa !7
-  store i64 %592, i64* %120, align 8, !tbaa !9
-  %593 = bitcast %"class.kotlin::mm::ShadowStack"* %590 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %593, align 8, !tbaa !7
-  store i32 0, i32* %122, align 8, !tbaa !12
-  store i32 4, i32* %123, align 4, !tbaa !13
-  %594 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %595 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %594 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %596 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %595, align 8, !tbaa !3
-  %597 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %596, i64 0, i32 2, i32 1
-  %598 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %597, i64 24) #37
-  %599 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %598, i64 1
-  %600 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %598, i64 2
-  %601 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600 to %struct.TypeInfo**
-  %602 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %599 to i64*
-  store i64 0, i64* %602, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %601, align 8, !tbaa !14
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
-  %603 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %598, i64 3
-  %604 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603 to i32*
-  store i32 %586, i32* %604, align 8
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %248, align 8, !tbaa !3
-  %605 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %606 = load i64, i64* %120, align 8, !tbaa !9
-  %607 = bitcast %"class.kotlin::mm::ShadowStack"* %605 to i64*
-  store i64 %606, i64* %607, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
-  %608 = load i32, i32* %231, align 8, !tbaa !18
-  %609 = zext i32 %608 to i64
-  %610 = icmp ult i64 %indvars.iv49, %609
-  br i1 %610, label %Kotlin_Array_set.exit.i, label %611
+  %597 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %557, i64 0, i32 1
+  %598 = load atomic i32, i32* %597 unordered, align 4, !tbaa !100
+  %599 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %600 = load atomic i64, i64* %249 unordered, align 8, !tbaa !9
+  %601 = bitcast %"class.kotlin::mm::ShadowStack"* %599 to i64*
+  store i64 %600, i64* %601, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %246) #37
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %124)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %124, i8 0, i32 32, i1 immarg false) #49
+  %602 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %603 = bitcast %"class.kotlin::mm::ShadowStack"* %602 to i64*
+  %604 = load atomic i64, i64* %603 unordered, align 8, !tbaa !7
+  store i64 %604, i64* %128, align 8, !tbaa !9
+  %605 = bitcast %"class.kotlin::mm::ShadowStack"* %602 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %605, align 8, !tbaa !7
+  store i32 0, i32* %130, align 8, !tbaa !12
+  store i32 4, i32* %131, align 4, !tbaa !13
+  %606 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %607 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %606 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %608 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %607 unordered, align 8, !tbaa !3
+  %609 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %608, i64 0, i32 2, i32 1
+  %610 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %609, i64 24) #37
+  %611 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %610, i64 1
+  %612 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %610, i64 2
+  %613 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %612 to %struct.TypeInfo**
+  %614 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %611 to i64*
+  store i64 0, i64* %614, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %613, align 8, !tbaa !14
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %612, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %132, align 8, !tbaa !3
+  %615 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %610, i64 3
+  %616 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %615 to i32*
+  store i32 %598, i32* %616, align 8
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %612, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %258, align 8, !tbaa !3
+  %617 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %618 = load atomic i64, i64* %128 unordered, align 8, !tbaa !9
+  %619 = bitcast %"class.kotlin::mm::ShadowStack"* %617 to i64*
+  store i64 %618, i64* %619, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %124)
+  %620 = load atomic i32, i32* %241 unordered, align 8, !tbaa !18
+  %621 = zext i32 %620 to i64
+  %622 = icmp ult i64 %indvars.iv49, %621
+  br i1 %622, label %Kotlin_Array_set.exit.i, label %623
 
-611:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
+623:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
-  %612 = load atomic volatile i64, i64* %249 monotonic, align 8
-  %613 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, i64 %indvars.iv49
-  %614 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %613, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %614, align 8, !tbaa !3
+  %624 = load atomic volatile i64, i64* %259 monotonic, align 8
+  %625 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %260, i64 %indvars.iv49
+  %626 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %625, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %612, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %626, align 8, !tbaa !3
   %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
   br label %loop_check.i
 
@@ -1012,247 +1030,247 @@
   br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i
 
 loop_exit.i:                                      ; preds = %loop_check.i
-  %615 = load i32, i32* %231, align 8, !tbaa !18
-  %616 = icmp sgt i32 %615, 0
-  %smax = select i1 %616, i32 %615, i32 0
+  %627 = load atomic i32, i32* %241 unordered, align 8, !tbaa !18
+  %628 = icmp sgt i32 %627, 0
+  %smax = select i1 %628, i32 %627, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check17.i
 
 while_loop18.i:                                   ; preds = %loop_check17.i
-  %617 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %618 = and i8 %617, 1
-  %619 = icmp eq i8 %618, 0
-  br i1 %619, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %620
+  %629 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %630 = and i8 %629, 1
+  %631 = icmp eq i8 %630, 0
+  br i1 %631, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %632
 
-620:                                              ; preds = %while_loop18.i
+632:                                              ; preds = %while_loop18.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit49.i
 
-Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %620, %while_loop18.i
-  %621 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, i64 %indvars.iv
-  %622 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621 to %struct.ObjHeader**
-  %623 = load %struct.ObjHeader*, %struct.ObjHeader** %622, align 8, !tbaa !3
-  store %struct.ObjHeader* %623, %struct.ObjHeader** %190, align 8, !tbaa !3
-  %624 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %623, i64 1
-  %625 = bitcast %struct.ObjHeader* %624 to i32*
-  %626 = load i32, i32* %625, align 4
+Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %632, %while_loop18.i
+  %633 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %260, i64 %indvars.iv
+  %634 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %633 to %struct.ObjHeader**
+  %635 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %634 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %635, %struct.ObjHeader** %199, align 8, !tbaa !3
+  %636 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %635, i64 1
+  %637 = bitcast %struct.ObjHeader* %636 to i32*
+  %638 = load atomic i32, i32* %637 unordered, align 4
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
-  %627 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %628 = bitcast %"class.kotlin::mm::ShadowStack"* %627 to i64*
-  %629 = load i64, i64* %628, align 8, !tbaa !7
-  store i64 %629, i64* %120, align 8, !tbaa !9
-  %630 = bitcast %"class.kotlin::mm::ShadowStack"* %627 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %630, align 8, !tbaa !7
-  store i32 0, i32* %122, align 8, !tbaa !12
-  store i32 4, i32* %123, align 4, !tbaa !13
-  %631 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
-  %632 = icmp eq i32 %631, 2
-  br i1 %632, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %124)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %124, i8 0, i32 32, i1 immarg false) #49
+  %639 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %640 = bitcast %"class.kotlin::mm::ShadowStack"* %639 to i64*
+  %641 = load atomic i64, i64* %640 unordered, align 8, !tbaa !7
+  store i64 %641, i64* %128, align 8, !tbaa !9
+  %642 = bitcast %"class.kotlin::mm::ShadowStack"* %639 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %642, align 8, !tbaa !7
+  store i32 0, i32* %130, align 8, !tbaa !12
+  store i32 4, i32* %131, align 4, !tbaa !13
+  %643 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
+  %644 = icmp eq i32 %643, 2
+  br i1 %644, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i
 
 label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
   call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
   br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
 
 "kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
-  %633 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
-  %634 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %633, %struct.ObjHeader** nonnull %117)
-  store %struct.ObjHeader* %634, %struct.ObjHeader** %117, align 8, !tbaa !3
-  %635 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
-  %636 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %635, i64 0, i32 0
-  %637 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %638 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %637, i64 328
-  %639 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %638 to i32*
-  %640 = atomicrmw xchg i32* %639, i32 1 seq_cst, align 4
-  %641 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %636) #37
-  %642 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %637, null
-  br i1 %642, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %643
+  %645 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
+  %646 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %645, %struct.ObjHeader** nonnull %125)
+  store %struct.ObjHeader* %646, %struct.ObjHeader** %125, align 8, !tbaa !3
+  %647 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
+  %648 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %647, i64 0, i32 0
+  %649 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %650 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %649, i64 328
+  %651 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %650 to i32*
+  %652 = atomicrmw xchg i32* %651, i32 1 seq_cst, align 4
+  %653 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %648) #37
+  %654 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %649, null
+  br i1 %654, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %655
 
-643:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %644 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %638 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %645 = atomicrmw xchg i32* %639, i32 %640 seq_cst, align 4
-  %646 = icmp eq i32 %645, 1
-  %647 = icmp eq i32 %640, 0
-  %648 = and i1 %647, %646
-  br i1 %648, label %649, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+655:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %656 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %650 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %657 = atomicrmw xchg i32* %651, i32 %652 seq_cst, align 4
+  %658 = icmp eq i32 %657, 1
+  %659 = icmp eq i32 %652, 0
+  %660 = and i1 %659, %658
+  br i1 %660, label %661, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-649:                                              ; preds = %643
-  %650 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %651 = and i8 %650, 1
-  %652 = icmp eq i8 %651, 0
-  br i1 %652, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %653
+661:                                              ; preds = %655
+  %662 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %663 = and i8 %662, 1
+  %664 = icmp eq i8 %663, 0
+  br i1 %664, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %665
 
-653:                                              ; preds = %649
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %644) #37
+665:                                              ; preds = %661
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %656) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %653, %649, %643, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
-  %654 = sext i32 %626 to i64
-  %655 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %635, i64 0, i32 2, i32 0, i32 1
-  %656 = load i64, i64* %655, align 8, !tbaa !103
-  %657 = urem i64 %654, %656
-  %658 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %635, i64 0, i32 2, i32 0, i32 0
-  %659 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %658, align 8, !tbaa !104
-  %660 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %659, i64 %657
-  %661 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %660, align 8, !tbaa !3
-  %662 = icmp eq %"struct.std::__detail::_Hash_node_base"* %661, null
-  br i1 %662, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %663
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %665, %661, %655, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
+  %666 = sext i32 %638 to i64
+  %667 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %647, i64 0, i32 2, i32 0, i32 1
+  %668 = load atomic i64, i64* %667 unordered, align 8, !tbaa !101
+  %669 = urem i64 %666, %668
+  %670 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %647, i64 0, i32 2, i32 0, i32 0
+  %671 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %670 unordered, align 8, !tbaa !102
+  %672 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %671, i64 %669
+  %673 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %672 unordered, align 8, !tbaa !3
+  %674 = icmp eq %"struct.std::__detail::_Hash_node_base"* %673, null
+  br i1 %674, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %675
 
-663:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %664 = bitcast %"struct.std::__detail::_Hash_node_base"* %661 to %"struct.std::__detail::_Hash_node.203"**
-  %665 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %664, align 8, !tbaa !73
-  %666 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %665, i64 0, i32 0, i32 1
-  %667 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %666 to i32*
-  %668 = load i32, i32* %667, align 4, !tbaa !74
-  %669 = icmp eq i32 %668, %626
-  br i1 %669, label %686, label %.preheader
+675:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %676 = bitcast %"struct.std::__detail::_Hash_node_base"* %673 to %"struct.std::__detail::_Hash_node.203"**
+  %677 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %676 unordered, align 8, !tbaa !73
+  %678 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %677, i64 0, i32 0, i32 1
+  %679 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %678 to i32*
+  %680 = load atomic i32, i32* %679 unordered, align 4, !tbaa !66
+  %681 = icmp eq i32 %680, %638
+  br i1 %681, label %698, label %.preheader
 
-670:                                              ; preds = %677
-  %671 = icmp eq i32 %680, %626
-  br i1 %671, label %684, label %.preheader
+682:                                              ; preds = %689
+  %683 = icmp eq i32 %692, %638
+  br i1 %683, label %696, label %.preheader
 
-.preheader:                                       ; preds = %670, %663
-  %672 = phi %"struct.std::__detail::_Hash_node.203"* [ %676, %670 ], [ %665, %663 ]
-  %673 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %672, i64 0, i32 0, i32 0, i32 0
-  %674 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %673, align 8, !tbaa !73
-  %675 = icmp eq %"struct.std::__detail::_Hash_node_base"* %674, null
-  %676 = bitcast %"struct.std::__detail::_Hash_node_base"* %674 to %"struct.std::__detail::_Hash_node.203"*
-  br i1 %675, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %677
+.preheader:                                       ; preds = %682, %675
+  %684 = phi %"struct.std::__detail::_Hash_node.203"* [ %688, %682 ], [ %677, %675 ]
+  %685 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %684, i64 0, i32 0, i32 0, i32 0
+  %686 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %685 unordered, align 8, !tbaa !73
+  %687 = icmp eq %"struct.std::__detail::_Hash_node_base"* %686, null
+  %688 = bitcast %"struct.std::__detail::_Hash_node_base"* %686 to %"struct.std::__detail::_Hash_node.203"*
+  br i1 %687, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %689
 
-677:                                              ; preds = %.preheader
-  %678 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %674, i64 1
-  %679 = bitcast %"struct.std::__detail::_Hash_node_base"* %678 to i32*
-  %680 = load i32, i32* %679, align 4, !tbaa !74
-  %681 = sext i32 %680 to i64
-  %682 = urem i64 %681, %656
-  %683 = icmp eq i64 %682, %657
-  br i1 %683, label %670, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+689:                                              ; preds = %.preheader
+  %690 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %686, i64 1
+  %691 = bitcast %"struct.std::__detail::_Hash_node_base"* %690 to i32*
+  %692 = load atomic i32, i32* %691 unordered, align 4, !tbaa !66
+  %693 = sext i32 %692 to i64
+  %694 = urem i64 %693, %668
+  %695 = icmp eq i64 %694, %669
+  br i1 %695, label %682, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-684:                                              ; preds = %670
-  %685 = icmp eq %"struct.std::__detail::_Hash_node.203"* %672, null
-  br i1 %685, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %688
+696:                                              ; preds = %682
+  %697 = icmp eq %"struct.std::__detail::_Hash_node.203"* %684, null
+  br i1 %697, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %700
 
-686:                                              ; preds = %663
-  %687 = icmp eq %"struct.std::__detail::_Hash_node.203"* %665, null
-  br i1 %687, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %688
+698:                                              ; preds = %675
+  %699 = icmp eq %"struct.std::__detail::_Hash_node.203"* %677, null
+  br i1 %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %700
 
-688:                                              ; preds = %686, %684
-  %689 = phi %"struct.std::__detail::_Hash_node.203"* [ %676, %684 ], [ %665, %686 ]
-  %690 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %689, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
-  %691 = bitcast i8* %690 to %"class.(anonymous namespace)::Future"**
-  %692 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %691, align 8, !tbaa !114
-  %693 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %692, i64 0, i32 3
-  %694 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %695 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %694, i64 328
-  %696 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %695 to i32*
-  %697 = atomicrmw xchg i32* %696, i32 1 seq_cst, align 4
-  %698 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %693) #37
-  %699 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %694, null
-  br i1 %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %700
+700:                                              ; preds = %698, %696
+  %701 = phi %"struct.std::__detail::_Hash_node.203"* [ %688, %696 ], [ %677, %698 ]
+  %702 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %701, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
+  %703 = bitcast i8* %702 to %"class.(anonymous namespace)::Future"**
+  %704 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %703 unordered, align 8, !tbaa !112
+  %705 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %704, i64 0, i32 3
+  %706 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %707 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706, i64 328
+  %708 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %707 to i32*
+  %709 = atomicrmw xchg i32* %708, i32 1 seq_cst, align 4
+  %710 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %705) #37
+  %711 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706, null
+  br i1 %711, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %712
 
-700:                                              ; preds = %688
-  %701 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %695 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %702 = atomicrmw xchg i32* %696, i32 %697 seq_cst, align 4
-  %703 = icmp eq i32 %702, 1
-  %704 = icmp eq i32 %697, 0
-  %705 = and i1 %704, %703
-  br i1 %705, label %706, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+712:                                              ; preds = %700
+  %713 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %707 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %714 = atomicrmw xchg i32* %708, i32 %709 seq_cst, align 4
+  %715 = icmp eq i32 %714, 1
+  %716 = icmp eq i32 %709, 0
+  %717 = and i1 %716, %715
+  br i1 %717, label %718, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-706:                                              ; preds = %700
-  %707 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %708 = and i8 %707, 1
-  %709 = icmp eq i8 %708, 0
-  br i1 %709, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %710
+718:                                              ; preds = %712
+  %719 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %720 = and i8 %719, 1
+  %721 = icmp eq i8 %720, 0
+  br i1 %721, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %722
 
-710:                                              ; preds = %706
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %701) #37
+722:                                              ; preds = %718
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %713) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %710, %706, %700, %688
-  %711 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %692, i64 0, i32 0
-  %712 = load i32, i32* %711, align 8, !tbaa !100
-  %713 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %714 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %713, i64 328
-  %715 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %714 to i32*
-  %716 = atomicrmw xchg i32* %715, i32 1 seq_cst, align 4
-  %717 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %693) #37
-  %718 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %713, null
-  br i1 %718, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %719
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %722, %718, %712, %700
+  %723 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %704, i64 0, i32 0
+  %724 = load atomic i32, i32* %723 unordered, align 8, !tbaa !98
+  %725 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %726 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %725, i64 328
+  %727 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %726 to i32*
+  %728 = atomicrmw xchg i32* %727, i32 1 seq_cst, align 4
+  %729 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %705) #37
+  %730 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %725, null
+  br i1 %730, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %731
 
-719:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
-  %720 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %714 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %721 = atomicrmw xchg i32* %715, i32 %716 seq_cst, align 4
-  %722 = icmp eq i32 %721, 1
-  %723 = icmp eq i32 %716, 0
-  %724 = and i1 %723, %722
-  br i1 %724, label %725, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+731:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
+  %732 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %726 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %733 = atomicrmw xchg i32* %727, i32 %728 seq_cst, align 4
+  %734 = icmp eq i32 %733, 1
+  %735 = icmp eq i32 %728, 0
+  %736 = and i1 %735, %734
+  br i1 %736, label %737, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-725:                                              ; preds = %719
-  %726 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %727 = and i8 %726, 1
-  %728 = icmp eq i8 %727, 0
-  br i1 %728, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %729
+737:                                              ; preds = %731
+  %738 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %739 = and i8 %738, 1
+  %740 = icmp eq i8 %739, 0
+  br i1 %740, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %741
 
-729:                                              ; preds = %725
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %720) #37
+741:                                              ; preds = %737
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %732) #37
   br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
 
-_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %729, %725, %719, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %686, %684, %677, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
-  %730 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %684 ], [ 0, %686 ], [ %712, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %712, %729 ], [ %712, %725 ], [ %712, %719 ], [ 0, %.preheader ], [ 0, %677 ]
-  %731 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
-  %732 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %731, i64 328
-  %733 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %732 to i32*
-  %734 = atomicrmw xchg i32* %733, i32 1 seq_cst, align 4
-  %735 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %636) #37
-  %736 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %731, null
-  br i1 %736, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %737
+_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %741, %737, %731, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %698, %696, %689, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
+  %742 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %696 ], [ 0, %698 ], [ %724, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %724, %741 ], [ %724, %737 ], [ %724, %731 ], [ 0, %.preheader ], [ 0, %689 ]
+  %743 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
+  %744 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %743, i64 328
+  %745 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %744 to i32*
+  %746 = atomicrmw xchg i32* %745, i32 1 seq_cst, align 4
+  %747 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %648) #37
+  %748 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %743, null
+  br i1 %748, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %749
 
-737:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %738 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %732 to %"class.kotlin::mm::ThreadSuspensionData.37"*
-  %739 = atomicrmw xchg i32* %733, i32 %734 seq_cst, align 4
-  %740 = icmp eq i32 %739, 1
-  %741 = icmp eq i32 %734, 0
-  %742 = and i1 %741, %740
-  br i1 %742, label %743, label %Kotlin_Worker_stateOfFuture.exit.i.i
+749:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %750 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %744 to %"class.kotlin::mm::ThreadSuspensionData.37"*
+  %751 = atomicrmw xchg i32* %745, i32 %746 seq_cst, align 4
+  %752 = icmp eq i32 %751, 1
+  %753 = icmp eq i32 %746, 0
+  %754 = and i1 %753, %752
+  br i1 %754, label %755, label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-743:                                              ; preds = %737
-  %744 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %745 = and i8 %744, 1
-  %746 = icmp eq i8 %745, 0
-  br i1 %746, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %747
+755:                                              ; preds = %749
+  %756 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %757 = and i8 %756, 1
+  %758 = icmp eq i8 %757, 0
+  br i1 %758, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %759
 
-747:                                              ; preds = %743
-  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %738) #37
+759:                                              ; preds = %755
+  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %750) #37
   br label %Kotlin_Worker_stateOfFuture.exit.i.i
 
-Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %747, %743, %737, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
-  %748 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %634, i64 1
-  %749 = bitcast %struct.ObjHeader* %748 to i32*
-  %750 = load i32, i32* %749, align 8, !tbaa !18
-  %751 = icmp ugt i32 %750, %730
-  br i1 %751, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %752
+Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %759, %755, %749, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
+  %760 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %646, i64 1
+  %761 = bitcast %struct.ObjHeader* %760 to i32*
+  %762 = load atomic i32, i32* %761 unordered, align 8, !tbaa !18
+  %763 = icmp ugt i32 %762, %742
+  br i1 %763, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %764
 
-752:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
+764:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 "kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
-  %753 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %634, i64 2
-  %754 = sext i32 %730 to i64
-  %755 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %753, i64 %754
-  %756 = bitcast %struct.ObjHeader* %755 to %struct.ObjHeader**
-  %757 = load %struct.ObjHeader*, %struct.ObjHeader** %756, align 8, !tbaa !3
-  store %struct.ObjHeader* %757, %struct.ObjHeader** %191, align 8, !tbaa !3
-  %758 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %759 = load i64, i64* %120, align 8, !tbaa !9
-  %760 = bitcast %"class.kotlin::mm::ShadowStack"* %758 to i64*
-  store i64 %759, i64* %760, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
-  %761 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %757, i64 2
-  %762 = bitcast %struct.ObjHeader* %761 to i32*
-  %763 = load i32, i32* %762, align 4
-  switch i32 %763, label %when_next27.i [
+  %765 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %646, i64 2
+  %766 = sext i32 %742 to i64
+  %767 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %765, i64 %766
+  %768 = bitcast %struct.ObjHeader* %767 to %struct.ObjHeader**
+  %769 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %768 unordered, align 8, !tbaa !3
+  store %struct.ObjHeader* %769, %struct.ObjHeader** %200, align 8, !tbaa !3
+  %770 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %771 = load atomic i64, i64* %128 unordered, align 8, !tbaa !9
+  %772 = bitcast %"class.kotlin::mm::ShadowStack"* %770 to i64*
+  store i64 %771, i64* %772, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %124)
+  %773 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %769, i64 2
+  %774 = bitcast %struct.ObjHeader* %773 to i32*
+  %775 = load atomic i32, i32* %774 unordered, align 4
+  switch i32 %775, label %when_next27.i [
     i32 1, label %when_case21.i
     i32 2, label %when_case21.i
     i32 0, label %when_case22.i
@@ -1261,71 +1279,71 @@
   ]
 
 when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %626, %struct.ObjHeader** nonnull %192)
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %638, %struct.ObjHeader** nonnull %201)
   br label %loop_check17.i
 
 when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %764 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
-  %765 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %766 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %765 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %767 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %766, align 8, !tbaa !3
-  %768 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %767, i64 0, i32 2, i32 1
-  %769 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %768, i64 56) #37
-  %770 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 1
-  %771 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 2
-  %772 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.ObjHeader*
-  %773 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.TypeInfo**
-  %774 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %770 to i64*
-  store i64 0, i64* %774, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %773, align 8, !tbaa !14
-  %775 = bitcast %struct.ObjHeader** %764 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %775, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %772, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %772) #50
+  %776 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
+  %777 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %778 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %777 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %779 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %778 unordered, align 8, !tbaa !3
+  %780 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %779, i64 0, i32 2, i32 1
+  %781 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %780, i64 56) #37
+  %782 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781, i64 1
+  %783 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781, i64 2
+  %784 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %783 to %struct.ObjHeader*
+  %785 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %783 to %struct.TypeInfo**
+  %786 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %782 to i64*
+  store i64 0, i64* %786, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %785, align 8, !tbaa !14
+  %787 = bitcast %struct.ObjHeader** %776 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %783, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %787, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %784, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %784) #50
   unreachable
 
 when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %776 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
-  %777 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %626, %struct.ObjHeader** nonnull %777)
-  %778 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %779 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %778 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %780 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %779, align 8, !tbaa !3
-  %781 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %780, i64 0, i32 2, i32 1
-  %782 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %781, i64 56) #37
-  %783 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %782, i64 1
-  %784 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %782, i64 2
-  %785 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %784 to %struct.ObjHeader*
-  %786 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %784 to %struct.TypeInfo**
-  %787 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %783 to i64*
-  store i64 0, i64* %787, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %786, align 8, !tbaa !14
-  %788 = bitcast %struct.ObjHeader** %776 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %784, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %788, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %785, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %785) #50
+  %788 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
+  %789 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %638, %struct.ObjHeader** nonnull %789)
+  %790 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %791 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %790 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %792 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %791 unordered, align 8, !tbaa !3
+  %793 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %792, i64 0, i32 2, i32 1
+  %794 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %793, i64 56) #37
+  %795 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %794, i64 1
+  %796 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %794, i64 2
+  %797 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %796 to %struct.ObjHeader*
+  %798 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %796 to %struct.TypeInfo**
+  %799 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795 to i64*
+  store i64 0, i64* %799, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %798, align 8, !tbaa !14
+  %800 = bitcast %struct.ObjHeader** %788 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %796, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %800, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %797, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %797) #50
   unreachable
 
 when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
-  %789 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
-  %790 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
-  call fastcc void @Kotlin_Worker_consumeFuture(i32 %626, %struct.ObjHeader** nonnull %790)
-  %791 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
-  %792 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %791 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %793 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %792, align 8, !tbaa !3
-  %794 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %793, i64 0, i32 2, i32 1
-  %795 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %794, i64 56) #37
-  %796 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795, i64 1
-  %797 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795, i64 2
-  %798 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %797 to %struct.ObjHeader*
-  %799 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %797 to %struct.TypeInfo**
-  %800 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %796 to i64*
-  store i64 0, i64* %800, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %799, align 8, !tbaa !14
-  %801 = bitcast %struct.ObjHeader** %789 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %797, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %801, align 8, !tbaa !3
-  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %798, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
-  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %798) #50
+  %801 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
+  %802 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
+  call fastcc void @Kotlin_Worker_consumeFuture(i32 %638, %struct.ObjHeader** nonnull %802)
+  %803 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
+  %804 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %803 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %805 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %804 unordered, align 8, !tbaa !3
+  %806 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %805, i64 0, i32 2, i32 1
+  %807 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %806, i64 56) #37
+  %808 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %807, i64 1
+  %809 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %807, i64 2
+  %810 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %809 to %struct.ObjHeader*
+  %811 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %809 to %struct.TypeInfo**
+  %812 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %808 to i64*
+  store i64 0, i64* %812, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %811, align 8, !tbaa !14
+  %813 = bitcast %struct.ObjHeader** %801 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %809, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %813, align 8, !tbaa !3
+  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %810, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
+  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %810) #50
   unreachable
 
 when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
@@ -1338,10 +1356,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop18.i
 
 epilogue:                                         ; preds = %loop_check17.i
-  %802 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %803 = bitcast %"class.kotlin::mm::ShadowStack"* %802 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %187)
-  %804 = load i64, i64* %14, align 8, !tbaa !9
-  store i64 %804, i64* %803, align 8, !tbaa !7
+  %814 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
+  %815 = bitcast %"class.kotlin::mm::ShadowStack"* %814 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %196)
+  %816 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
+  store i64 %816, i64* %815, align 8, !tbaa !7
   ret void
 }
