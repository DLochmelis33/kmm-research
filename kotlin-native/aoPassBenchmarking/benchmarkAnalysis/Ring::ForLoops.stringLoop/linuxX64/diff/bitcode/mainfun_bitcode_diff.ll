--- ../../benchmarkAnalysis/Ring::ForLoops.stringLoop/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:53:06.680540852 +0200
+++ ../../benchmarkAnalysis/Ring::ForLoops.stringLoop/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:04:35.270333160 +0200
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
@@ -48,7 +48,7 @@
   %25 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
   %26 = bitcast [5 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %27 = bitcast %"class.kotlin::mm::ShadowStack"* %25 to i64*
-  %28 = load i64, i64* %27, align 8, !tbaa !7
+  %28 = load atomic i64, i64* %27 unordered, align 8, !tbaa !7
   %29 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %30 = bitcast %struct.ObjHeader** %29 to i64*
   store i64 %28, i64* %30, align 8, !tbaa !9
@@ -61,7 +61,7 @@
   store i32 5, i32* %34, align 4, !tbaa !13
   %35 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
   %36 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %35 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %37 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %36, align 8, !tbaa !3
+  %37 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %36 unordered, align 8, !tbaa !3
   %38 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %37, i64 0, i32 2, i32 1
   %39 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %38, i64 20024) #37
   %40 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 1
@@ -91,7 +91,7 @@
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i3
 
 Kotlin_mm_safePointWhileLoopBody.exit.i3:         ; preds = %53, %while_loop.i2
-  %54 = load i32, i32* %45, align 8, !tbaa !18
+  %54 = load atomic i32, i32* %45 unordered, align 8, !tbaa !18
   %55 = zext i32 %54 to i64
   %56 = icmp ult i64 %indvars.iv, %55
   br i1 %56, label %Kotlin_CharArray_set.exit.i, label %57
@@ -104,7 +104,7 @@
   %58 = trunc i32 %tmp.0.i to i16
   %59 = load atomic volatile i64, i64* %47 monotonic, align 8
   %60 = getelementptr inbounds i16, i16* %49, i64 %indvars.iv
-  store i16 %58, i16* %60, align 2, !tbaa !34
+  store i16 %58, i16* %60, align 2, !tbaa !27
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
   %61 = add nuw nsw i32 %tmp.0.i, 1
   br label %loop_check.i4
@@ -119,57 +119,58 @@
   %62 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
   %63 = bitcast %struct.ObjHeader* %62 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
-  %.cast = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to %struct.ObjHeader*
-  %64 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* nonnull %.cast, %struct.ObjHeader** nonnull %24)
-  store %struct.ObjHeader* %64, %struct.ObjHeader** %24, align 8, !tbaa !3
-  %65 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
-  %66 = bitcast %struct.ObjHeader* %65 to %struct.ObjHeader**
-  store %struct.ObjHeader* %64, %struct.ObjHeader** %66, align 8, !tbaa !3
-  %67 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %68 = load i64, i64* %30, align 8, !tbaa !9
-  %69 = bitcast %"class.kotlin::mm::ShadowStack"* %67 to i64*
-  store i64 %68, i64* %69, align 8, !tbaa !7
+  %64 = bitcast %struct.ObjHeader* %62 to %struct.ObjHeader**
+  %65 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %64 unordered, align 8
+  %66 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* %65, %struct.ObjHeader** nonnull %24)
+  store %struct.ObjHeader* %66, %struct.ObjHeader** %24, align 8, !tbaa !3
+  %67 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
+  %68 = bitcast %struct.ObjHeader* %67 to %struct.ObjHeader**
+  store %struct.ObjHeader* %66, %struct.ObjHeader** %68, align 8, !tbaa !3
+  %69 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
+  %70 = load atomic i64, i64* %30 unordered, align 8, !tbaa !9
+  %71 = bitcast %"class.kotlin::mm::ShadowStack"* %69 to i64*
+  store i64 %70, i64* %71, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22)
-  %70 = load %struct.ObjHeader*, %struct.ObjHeader** %66, align 8
-  %71 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %70, i64 1
-  %72 = bitcast %struct.ObjHeader* %71 to i32*
-  %73 = load i32, i32* %72, align 8, !tbaa !18
-  %74 = icmp sgt i32 %73, 0
-  %smax = select i1 %74, i32 %73, i32 0
+  %72 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %68 unordered, align 8
+  %73 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %72, i64 1
+  %74 = bitcast %struct.ObjHeader* %73 to i32*
+  %75 = load atomic i32, i32* %74 unordered, align 8, !tbaa !18
+  %76 = icmp sgt i32 %75, 0
+  %smax = select i1 %76, i32 %75, i32 0
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %75 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %76 = and i8 %75, 1
-  %77 = icmp eq i8 %76, 0
-  br i1 %77, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %78
+  %77 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %78 = and i8 %77, 1
+  %79 = icmp eq i8 %78, 0
+  br i1 %79, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %80
 
-78:                                               ; preds = %while_loop.i
+80:                                               ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %78, %while_loop.i
-  %79 = load i32, i32* %72, align 8, !tbaa !18
-  %80 = icmp ugt i32 %79, %inductionVariable.0.i
-  br i1 %80, label %Kotlin_String_get.exit.i, label %81
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %80, %while_loop.i
+  %81 = load atomic i32, i32* %74 unordered, align 8, !tbaa !18
+  %82 = icmp ugt i32 %81, %inductionVariable.0.i
+  br i1 %82, label %Kotlin_String_get.exit.i, label %83
 
-81:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
+83:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
   call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
   unreachable
 
 Kotlin_String_get.exit.i:                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %82 = add nuw i32 %inductionVariable.0.i, 1
+  %84 = add nuw i32 %inductionVariable.0.i, 1
   br label %loop_check.i
 
 loop_check.i:                                     ; preds = %Kotlin_String_get.exit.i, %call_success
-  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %82, %Kotlin_String_get.exit.i ]
+  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %84, %Kotlin_String_get.exit.i ]
   %exitcond.not = icmp eq i32 %inductionVariable.0.i, %smax
   br i1 %exitcond.not, label %epilogue, label %while_loop.i
 
 epilogue:                                         ; preds = %loop_check.i
-  %83 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %84 = load i64, i64* %13, align 8, !tbaa !9
-  %85 = bitcast %"class.kotlin::mm::ShadowStack"* %83 to i64*
-  store i64 %84, i64* %85, align 8, !tbaa !7
+  %85 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
+  %86 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
+  %87 = bitcast %"class.kotlin::mm::ShadowStack"* %85 to i64*
+  store i64 %86, i64* %87, align 8, !tbaa !7
   ret void
 }
