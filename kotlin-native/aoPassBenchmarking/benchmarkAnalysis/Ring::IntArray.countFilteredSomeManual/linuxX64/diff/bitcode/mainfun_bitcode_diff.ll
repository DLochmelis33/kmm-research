--- ../../benchmarkAnalysis/Ring::IntArray.countFilteredSomeManual/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:47:46.760644990 +0200
+++ ../../benchmarkAnalysis/Ring::IntArray.countFilteredSomeManual/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 02:59:39.970421448 +0200
@@ -15,11 +15,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:IntArrayBenchmark#internal", %"kclassbody:IntArrayBenchmark#internal"* %6, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:IntArrayBenchmark#internal", %"kclassbody:IntArrayBenchmark#internal"* %6, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:IntArrayBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %9 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %9 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %10 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
   %11 = bitcast [4 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
   %12 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to i64*
-  %13 = load i64, i64* %12, align 8, !tbaa !7
+  %13 = load atomic i64, i64* %12 unordered, align 8, !tbaa !7
   %14 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 1
   %15 = bitcast %struct.ObjHeader** %14 to i64*
   store i64 %13, i64* %15, align 8, !tbaa !9
@@ -52,7 +52,7 @@
   %29 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
   %30 = bitcast [7 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %31 = bitcast %"class.kotlin::mm::ShadowStack"* %29 to i64*
-  %32 = load i64, i64* %31, align 8, !tbaa !7
+  %32 = load atomic i64, i64* %31 unordered, align 8, !tbaa !7
   %33 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %34 = bitcast %struct.ObjHeader** %33 to i64*
   store i64 %32, i64* %34, align 8, !tbaa !9
@@ -65,7 +65,7 @@
   store i32 7, i32* %38, align 4, !tbaa !13
   %39 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
   %40 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %39 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %41 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %40, align 8, !tbaa !3
+  %41 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %40 unordered, align 8, !tbaa !3
   %42 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %41, i64 0, i32 2, i32 1
   %43 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %42, i64 40024) #37
   %44 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 1
@@ -81,7 +81,7 @@
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %50, align 8, !tbaa !3
   %51 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
   %52 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %51 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %53 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52, align 8, !tbaa !3
+  %53 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52 unordered, align 8, !tbaa !3
   %54 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %53, i64 0, i32 2, i32 1
   %55 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %54, i64 32) #37
   %56 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 1
@@ -120,18 +120,18 @@
   %75 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %74, i64 0, i32 0
   %76 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %75 monotonic, align 8
   %77 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %76, i64 0, i32 9
-  %78 = load i32, i32* %77, align 4
+  %78 = load atomic i32, i32* %77 unordered, align 4
   %79 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %76, i64 0, i32 10
-  %80 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %79, align 8
+  %80 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %79 unordered, align 8
   %81 = and i32 %78, 160
   %82 = zext i32 %81 to i64
   %83 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %80, i64 %82, i32 2
-  %84 = load i8**, i8*** %83, align 8
+  %84 = load atomic i8**, i8*** %83 unordered, align 8
   %85 = getelementptr i8*, i8** %84, i64 1
   %86 = bitcast i8** %85 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
-  %87 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %86, align 8
+  %87 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %86 unordered, align 8
   %88 = call %struct.ObjHeader* %87(%struct.ObjHeader* nonnull %62, %struct.ObjHeader** nonnull %28)
-  %89 = load i32, i32* %49, align 8, !tbaa !18
+  %89 = load atomic i32, i32* %49 unordered, align 8, !tbaa !18
   %90 = icmp ugt i32 %89, %index.0.i
   br i1 %90, label %Kotlin_IntArray_set.exit.i, label %91
 
@@ -142,11 +142,11 @@
 Kotlin_IntArray_set.exit.i:                       ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i4
   %92 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %88, i64 1
   %93 = bitcast %struct.ObjHeader* %92 to i32*
-  %94 = load i32, i32* %93, align 4
+  %94 = load atomic i32, i32* %93 unordered, align 4
   %95 = load atomic volatile i64, i64* %64 monotonic, align 8
   %96 = sext i32 %index.0.i to i64
   %97 = getelementptr inbounds i32, i32* %66, i64 %96
-  store i32 %94, i32* %97, align 4, !tbaa !73
+  store i32 %94, i32* %97, align 4, !tbaa !66
   %98 = add i32 %index.0.i, 1
   br label %loop_check.i5
 
@@ -159,15 +159,15 @@
   %103 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %102, i64 0, i32 0
   %104 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %103 monotonic, align 8
   %105 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %104, i64 0, i32 9
-  %106 = load i32, i32* %105, align 4
+  %106 = load atomic i32, i32* %105 unordered, align 4
   %107 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %104, i64 0, i32 10
-  %108 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %107, align 8
+  %108 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %107 unordered, align 8
   %109 = and i32 %106, 160
   %110 = zext i32 %109 to i64
   %111 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %108, i64 %110, i32 2
   %112 = bitcast i8*** %111 to i1 (%struct.ObjHeader*)***
-  %113 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %112, align 8
-  %114 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %113, align 8
+  %113 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %112 unordered, align 8
+  %114 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %113 unordered, align 8
   %115 = call zeroext i1 %114(%struct.ObjHeader* nonnull %62)
   br i1 %115, label %while_loop.i3, label %call_success
 
@@ -176,79 +176,82 @@
   %117 = bitcast %struct.ObjHeader* %116 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !3
   %118 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
-  %119 = load i64, i64* %34, align 8, !tbaa !3
+  %119 = load atomic i64, i64* %34 unordered, align 8, !tbaa !9
+  %120 = bitcast %"class.kotlin::mm::ShadowStack"* %118 to i64*
+  store i64 %119, i64* %120, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %24)
-  %120 = bitcast [4 x %struct.ObjHeader*]* %2 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %120)
+  %121 = bitcast [4 x %struct.ObjHeader*]* %2 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %121)
   %.sub.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %120, i8 0, i32 32, i1 immarg false) #49
-  %121 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
-  %122 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
-  %123 = bitcast %struct.ObjHeader** %122 to i64*
-  store i64 %119, i64* %123, align 8, !tbaa !9
-  %124 = bitcast %"class.kotlin::mm::ShadowStack"* %118 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %124, align 8, !tbaa !7
-  %125 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
-  %126 = bitcast %struct.ObjHeader** %125 to i32*
-  store i32 0, i32* %126, align 8, !tbaa !12
-  %127 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %121, i64 0, i32 3
-  store i32 4, i32* %127, align 4, !tbaa !13
-  %128 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
-  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %128)
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %121, i8 0, i32 32, i1 immarg false) #49
+  %122 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
+  %123 = load atomic i64, i64* %120 unordered, align 8, !tbaa !7
+  %124 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
+  %125 = bitcast %struct.ObjHeader** %124 to i64*
+  store i64 %123, i64* %125, align 8, !tbaa !9
+  %126 = bitcast %"class.kotlin::mm::ShadowStack"* %118 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %126, align 8, !tbaa !7
+  %127 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
+  %128 = bitcast %struct.ObjHeader** %127 to i32*
+  store i32 0, i32* %128, align 8, !tbaa !12
+  %129 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %122, i64 0, i32 3
+  store i32 4, i32* %129, align 4, !tbaa !13
+  %130 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
+  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %130)
   %.sub.i.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
-  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %128, i8 0, i32 32, i1 immarg false) #49
-  %129 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
-  %130 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
-  %131 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
-  %132 = bitcast %"class.kotlin::mm::ShadowStack"* %130 to i64*
-  %133 = load i64, i64* %132, align 8, !tbaa !7
-  %134 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
-  %135 = bitcast %struct.ObjHeader** %134 to i64*
-  store i64 %133, i64* %135, align 8, !tbaa !9
-  %136 = bitcast %"class.kotlin::mm::ShadowStack"* %130 to %struct.ObjHeader***
-  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %136, align 8, !tbaa !7
-  %137 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
-  %138 = bitcast %struct.ObjHeader** %137 to i32*
-  store i32 0, i32* %138, align 8, !tbaa !12
-  %139 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %131, i64 0, i32 3
-  store i32 4, i32* %139, align 4, !tbaa !13
-  %140 = bitcast %struct.ObjHeader* %116 to %struct.ObjHeader**
-  %141 = load %struct.ObjHeader*, %struct.ObjHeader** %140, align 8
-  store %struct.ObjHeader* %141, %struct.ObjHeader** %129, align 8, !tbaa !3
-  %142 = icmp eq %struct.ObjHeader* %141, null
-  br i1 %142, label %when_case.i1.i, label %"kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i"
+  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %130, i8 0, i32 32, i1 immarg false) #49
+  %131 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
+  %132 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
+  %133 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
+  %134 = bitcast %"class.kotlin::mm::ShadowStack"* %132 to i64*
+  %135 = load atomic i64, i64* %134 unordered, align 8, !tbaa !7
+  %136 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
+  %137 = bitcast %struct.ObjHeader** %136 to i64*
+  store i64 %135, i64* %137, align 8, !tbaa !9
+  %138 = bitcast %"class.kotlin::mm::ShadowStack"* %132 to %struct.ObjHeader***
+  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %138, align 8, !tbaa !7
+  %139 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
+  %140 = bitcast %struct.ObjHeader** %139 to i32*
+  store i32 0, i32* %140, align 8, !tbaa !12
+  %141 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %133, i64 0, i32 3
+  store i32 4, i32* %141, align 4, !tbaa !13
+  %142 = bitcast %struct.ObjHeader* %116 to %struct.ObjHeader**
+  %143 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %142 unordered, align 8
+  store %struct.ObjHeader* %143, %struct.ObjHeader** %131, align 8, !tbaa !3
+  %144 = icmp eq %struct.ObjHeader* %143, null
+  br i1 %144, label %when_case.i1.i, label %"kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i"
 
 when_case.i1.i:                                   ; preds = %call_success
   call fastcc void @ThrowNullPointerException() #50
   unreachable
 
 "kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i": ; preds = %call_success
-  %143 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
-  store %struct.ObjHeader* %141, %struct.ObjHeader** %143, align 8, !tbaa !3
-  %144 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
-  %145 = load i64, i64* %135, align 8, !tbaa !9
-  %146 = bitcast %"class.kotlin::mm::ShadowStack"* %144 to i64*
-  store i64 %145, i64* %146, align 8, !tbaa !7
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %128)
-  %147 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %141, i64 1
-  %148 = bitcast %struct.ObjHeader* %147 to i32*
-  %149 = load i32, i32* %148, align 8, !tbaa !18
-  %150 = icmp sgt i32 %149, 0
-  %smax = select i1 %150, i32 %149, i32 0
+  %145 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
+  store %struct.ObjHeader* %143, %struct.ObjHeader** %145, align 8, !tbaa !3
+  %146 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
+  %147 = load atomic i64, i64* %137 unordered, align 8, !tbaa !9
+  %148 = bitcast %"class.kotlin::mm::ShadowStack"* %146 to i64*
+  store i64 %147, i64* %148, align 8, !tbaa !7
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %130)
+  %149 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %143, i64 1
+  %150 = bitcast %struct.ObjHeader* %149 to i32*
+  %151 = load atomic i32, i32* %150 unordered, align 8, !tbaa !18
+  %152 = icmp sgt i32 %151, 0
+  %smax = select i1 %152, i32 %151, i32 0
   %wide.trip.count = zext i32 %smax to i64
   br label %loop_check.i
 
 while_loop.i:                                     ; preds = %loop_check.i
-  %151 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %152 = and i8 %151, 1
-  %153 = icmp eq i8 %152, 0
-  br i1 %153, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %154
+  %153 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %154 = and i8 %153, 1
+  %155 = icmp eq i8 %154, 0
+  br i1 %155, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %156
 
-154:                                              ; preds = %while_loop.i
+156:                                              ; preds = %while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %154, %while_loop.i
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %156, %while_loop.i
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
   br label %loop_check.i
 
@@ -258,10 +261,10 @@
   br i1 %exitcond.not, label %epilogue, label %while_loop.i
 
 epilogue:                                         ; preds = %loop_check.i
-  %155 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
-  %156 = bitcast %"class.kotlin::mm::ShadowStack"* %155 to i64*
-  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %120)
-  %157 = load i64, i64* %15, align 8, !tbaa !9
-  store i64 %157, i64* %156, align 8, !tbaa !7
+  %157 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
+  %158 = bitcast %"class.kotlin::mm::ShadowStack"* %157 to i64*
+  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %121)
+  %159 = load atomic i64, i64* %15 unordered, align 8, !tbaa !9
+  store i64 %159, i64* %158, align 8, !tbaa !7
   ret void
 }
