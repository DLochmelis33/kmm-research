--- ../../benchmarkAnalysis/Ring::Calls.interfaceMethodHexamorphic/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:47:36.400647977 +0200
+++ ../../benchmarkAnalysis/Ring::Calls.interfaceMethodHexamorphic/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 02:59:32.510423396 +0200
@@ -13,11 +13,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:CallsBenchmark#internal", %"kclassbody:CallsBenchmark#internal"* %4, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:CallsBenchmark#internal", %"kclassbody:CallsBenchmark#internal"* %4, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:CallsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
@@ -52,7 +52,7 @@
   %29 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
   %30 = bitcast [9 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %31 = bitcast %"class.kotlin::mm::ShadowStack"* %29 to i64*
-  %32 = load i64, i64* %31, align 8, !tbaa !7
+  %32 = load atomic i64, i64* %31 unordered, align 8, !tbaa !7
   %33 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %34 = bitcast %struct.ObjHeader** %33 to i64*
   store i64 %32, i64* %34, align 8, !tbaa !9
@@ -65,7 +65,7 @@
   store i32 9, i32* %38, align 4, !tbaa !13
   %39 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
   %40 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %39 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %41 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %40, align 8, !tbaa !3
+  %41 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %40 unordered, align 8, !tbaa !3
   %42 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %41, i64 0, i32 2, i32 1
   %43 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %42, i64 16) #37
   %44 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 1
@@ -81,7 +81,7 @@
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %50, align 8, !tbaa !3
   %51 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
   %52 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %51 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %53 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52, align 8, !tbaa !3
+  %53 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52 unordered, align 8, !tbaa !3
   %54 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %53, i64 0, i32 2, i32 1
   %55 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %54, i64 16) #37
   %56 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 1
@@ -97,7 +97,7 @@
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
   %63 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
   %64 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %63 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %65 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %64, align 8, !tbaa !3
+  %65 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %64 unordered, align 8, !tbaa !3
   %66 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %65, i64 0, i32 2, i32 1
   %67 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %66, i64 16) #37
   %68 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %67, i64 1
@@ -112,102 +112,103 @@
   %74 = bitcast %struct.ObjHeader* %73 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
   store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %74, align 8, !tbaa !3
   %75 = bitcast %struct.ObjHeader* %49 to i64*
-  %76 = load i64, i64* %75, align 8
+  %76 = load atomic i64, i64* %75 unordered, align 8
   %77 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 4
   %78 = bitcast %struct.ObjHeader* %77 to i64*
   store i64 %76, i64* %78, align 8, !tbaa !3
   %79 = bitcast %struct.ObjHeader* %61 to i64*
-  %80 = load i64, i64* %79, align 8
+  %80 = load atomic i64, i64* %79 unordered, align 8
   %81 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 5
   %82 = bitcast %struct.ObjHeader* %81 to i64*
   store i64 %80, i64* %82, align 8, !tbaa !3
-  %83 = ptrtoint %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69 to i64
-  %84 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 6
-  %85 = bitcast %struct.ObjHeader* %84 to i64*
-  store i64 %83, i64* %85, align 8, !tbaa !3
-  %86 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 7
-  %87 = bitcast %struct.ObjHeader* %86 to i64*
-  store i64 %76, i64* %87, align 8, !tbaa !3
-  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
-  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %90 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89, align 8, !tbaa !3
-  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
-  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 16) #37
-  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
-  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
-  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
-  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i64*
-  store i64 0, i64* %96, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.X#internal", i64 0, i32 0), %struct.TypeInfo** %95, align 8, !tbaa !14
-  %97 = bitcast %struct.ObjHeader** %26 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %97, align 8, !tbaa !3
-  %98 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 8
-  %99 = bitcast %struct.ObjHeader* %98 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %99, align 8, !tbaa !3
-  %100 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
-  %101 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %100 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %102 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %101, align 8, !tbaa !3
-  %103 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %102, i64 0, i32 2, i32 1
-  %104 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %103, i64 16) #37
-  %105 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %104, i64 1
-  %106 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %104, i64 2
-  %107 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106 to %struct.TypeInfo**
-  %108 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105 to i64*
-  store i64 0, i64* %108, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.Y#internal", i64 0, i32 0), %struct.TypeInfo** %107, align 8, !tbaa !14
-  %109 = bitcast %struct.ObjHeader** %27 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %109, align 8, !tbaa !3
-  %110 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 9
-  %111 = bitcast %struct.ObjHeader* %110 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %111, align 8, !tbaa !3
-  %112 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
-  %113 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %112 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
-  %114 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %113, align 8, !tbaa !3
-  %115 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %114, i64 0, i32 2, i32 1
-  %116 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %115, i64 16) #37
-  %117 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116, i64 1
-  %118 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116, i64 2
-  %119 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118 to %struct.TypeInfo**
-  %120 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117 to i64*
-  store i64 0, i64* %120, align 8
-  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.Z#internal", i64 0, i32 0), %struct.TypeInfo** %119, align 8, !tbaa !14
-  %121 = bitcast %struct.ObjHeader** %28 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %121, align 8, !tbaa !3
-  %122 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 10
-  %123 = bitcast %struct.ObjHeader* %122 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
-  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %123, align 8, !tbaa !3
-  %124 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %125 = load i64, i64* %34, align 8, !tbaa !9
-  %126 = bitcast %"class.kotlin::mm::ShadowStack"* %124 to i64*
-  store i64 %125, i64* %126, align 8, !tbaa !7
+  %83 = bitcast %struct.ObjHeader* %73 to i64*
+  %84 = load atomic i64, i64* %83 unordered, align 8
+  %85 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 6
+  %86 = bitcast %struct.ObjHeader* %85 to i64*
+  store i64 %84, i64* %86, align 8, !tbaa !3
+  %87 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 7
+  %88 = bitcast %struct.ObjHeader* %87 to i64*
+  store i64 %76, i64* %88, align 8, !tbaa !3
+  %89 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
+  %90 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %89 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %91 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %90 unordered, align 8, !tbaa !3
+  %92 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %91, i64 0, i32 2, i32 1
+  %93 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %92, i64 16) #37
+  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 1
+  %95 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 2
+  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.TypeInfo**
+  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
+  store i64 0, i64* %97, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.X#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !14
+  %98 = bitcast %struct.ObjHeader** %26 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
+  %99 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 8
+  %100 = bitcast %struct.ObjHeader* %99 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %100, align 8, !tbaa !3
+  %101 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
+  %102 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %101 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %103 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %102 unordered, align 8, !tbaa !3
+  %104 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %103, i64 0, i32 2, i32 1
+  %105 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %104, i64 16) #37
+  %106 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105, i64 1
+  %107 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105, i64 2
+  %108 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107 to %struct.TypeInfo**
+  %109 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106 to i64*
+  store i64 0, i64* %109, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.Y#internal", i64 0, i32 0), %struct.TypeInfo** %108, align 8, !tbaa !14
+  %110 = bitcast %struct.ObjHeader** %27 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %110, align 8, !tbaa !3
+  %111 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 9
+  %112 = bitcast %struct.ObjHeader* %111 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %112, align 8, !tbaa !3
+  %113 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
+  %114 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %113 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
+  %115 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %114 unordered, align 8, !tbaa !3
+  %116 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %115, i64 0, i32 2, i32 1
+  %117 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %116, i64 16) #37
+  %118 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117, i64 1
+  %119 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117, i64 2
+  %120 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119 to %struct.TypeInfo**
+  %121 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118 to i64*
+  store i64 0, i64* %121, align 8
+  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.Z#internal", i64 0, i32 0), %struct.TypeInfo** %120, align 8, !tbaa !14
+  %122 = bitcast %struct.ObjHeader** %28 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %122, align 8, !tbaa !3
+  %123 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 10
+  %124 = bitcast %struct.ObjHeader* %123 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
+  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
+  %125 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
+  %126 = load atomic i64, i64* %34 unordered, align 8, !tbaa !9
+  %127 = bitcast %"class.kotlin::mm::ShadowStack"* %125 to i64*
+  store i64 %126, i64* %127, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %22)
-  %127 = bitcast %struct.ObjHeader* %81 to %struct.ObjHeader**
-  %128 = load %struct.ObjHeader*, %struct.ObjHeader** %127, align 8
-  %129 = bitcast %struct.ObjHeader* %84 to %struct.ObjHeader**
-  %130 = load %struct.ObjHeader*, %struct.ObjHeader** %129, align 8
-  %131 = bitcast %struct.ObjHeader* %86 to %struct.ObjHeader**
-  %132 = load %struct.ObjHeader*, %struct.ObjHeader** %131, align 8
-  %133 = bitcast %struct.ObjHeader* %98 to %struct.ObjHeader**
-  %134 = load %struct.ObjHeader*, %struct.ObjHeader** %133, align 8
-  %135 = bitcast %struct.ObjHeader* %110 to %struct.ObjHeader**
-  %136 = load %struct.ObjHeader*, %struct.ObjHeader** %135, align 8
-  %137 = bitcast %struct.ObjHeader* %122 to %struct.ObjHeader**
-  %138 = load %struct.ObjHeader*, %struct.ObjHeader** %137, align 8
+  %128 = bitcast %struct.ObjHeader* %81 to %struct.ObjHeader**
+  %129 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %128 unordered, align 8
+  %130 = bitcast %struct.ObjHeader* %85 to %struct.ObjHeader**
+  %131 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %130 unordered, align 8
+  %132 = bitcast %struct.ObjHeader* %87 to %struct.ObjHeader**
+  %133 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %132 unordered, align 8
+  %134 = bitcast %struct.ObjHeader* %99 to %struct.ObjHeader**
+  %135 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %134 unordered, align 8
+  %136 = bitcast %struct.ObjHeader* %111 to %struct.ObjHeader**
+  %137 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %136 unordered, align 8
+  %138 = bitcast %struct.ObjHeader* %123 to %struct.ObjHeader**
+  %139 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %138 unordered, align 8
   br label %do_while_loop.i
 
 do_while_loop.i:                                  ; preds = %when_exit13.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %inductionVariable.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %143, %when_exit13.i ]
-  %139 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %140 = and i8 %139, 1
-  %141 = icmp eq i8 %140, 0
-  br i1 %141, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %142
+  %inductionVariable.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %144, %when_exit13.i ]
+  %140 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %141 = and i8 %140, 1
+  %142 = icmp eq i8 %141, 0
+  br i1 %142, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %143
 
-142:                                              ; preds = %do_while_loop.i
+143:                                              ; preds = %do_while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %142, %do_while_loop.i
-  %143 = add nuw nsw i32 %inductionVariable.0.i, 1
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %143, %do_while_loop.i
+  %144 = add nuw nsw i32 %inductionVariable.0.i, 1
   %.urem = urem i32 %inductionVariable.0.i, 6
   switch i32 %.urem, label %when_next12.i [
     i32 1, label %when_exit13.i
@@ -233,32 +234,32 @@
   br label %when_exit13.i
 
 when_exit13.i:                                    ; preds = %when_exit13.i.fold.split4, %when_exit13.i.fold.split3, %when_exit13.i.fold.split2, %when_exit13.i.fold.split, %when_next12.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %144 = phi %struct.ObjHeader* [ %138, %when_next12.i ], [ %128, %Kotlin_mm_safePointWhileLoopBody.exit.i ], [ %130, %when_exit13.i.fold.split ], [ %132, %when_exit13.i.fold.split2 ], [ %134, %when_exit13.i.fold.split3 ], [ %136, %when_exit13.i.fold.split4 ]
-  %145 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %144, i64 0, i32 0
-  %146 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %145 monotonic, align 8
-  %147 = ptrtoint %struct.TypeInfo* %146 to i64
-  %148 = and i64 %147, -4
-  %149 = inttoptr i64 %148 to %struct.TypeInfo*
-  %150 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %149, i64 0, i32 0
-  %151 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %150 monotonic, align 8
-  %152 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %151, i64 0, i32 9
-  %153 = load i32, i32* %152, align 4
-  %154 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %151, i64 0, i32 10
-  %155 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %154, align 8
-  %156 = and i32 %153, 368
-  %157 = zext i32 %156 to i64
-  %158 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %155, i64 %157, i32 2
-  %159 = bitcast i8*** %158 to i32 (%struct.ObjHeader*)***
-  %160 = load i32 (%struct.ObjHeader*)**, i32 (%struct.ObjHeader*)*** %159, align 8
-  %161 = load i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %160, align 8
-  %162 = call i32 %161(%struct.ObjHeader* %144)
-  %exitcond.not = icmp eq i32 %143, 1000000
+  %145 = phi %struct.ObjHeader* [ %139, %when_next12.i ], [ %129, %Kotlin_mm_safePointWhileLoopBody.exit.i ], [ %131, %when_exit13.i.fold.split ], [ %133, %when_exit13.i.fold.split2 ], [ %135, %when_exit13.i.fold.split3 ], [ %137, %when_exit13.i.fold.split4 ]
+  %146 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %145, i64 0, i32 0
+  %147 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %146 monotonic, align 8
+  %148 = ptrtoint %struct.TypeInfo* %147 to i64
+  %149 = and i64 %148, -4
+  %150 = inttoptr i64 %149 to %struct.TypeInfo*
+  %151 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %150, i64 0, i32 0
+  %152 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %151 monotonic, align 8
+  %153 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %152, i64 0, i32 9
+  %154 = load atomic i32, i32* %153 unordered, align 4
+  %155 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %152, i64 0, i32 10
+  %156 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %155 unordered, align 8
+  %157 = and i32 %154, 368
+  %158 = zext i32 %157 to i64
+  %159 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %156, i64 %158, i32 2
+  %160 = bitcast i8*** %159 to i32 (%struct.ObjHeader*)***
+  %161 = load atomic i32 (%struct.ObjHeader*)**, i32 (%struct.ObjHeader*)*** %160 unordered, align 8
+  %162 = load atomic i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %161 unordered, align 8
+  %163 = call i32 %162(%struct.ObjHeader* %145)
+  %exitcond.not = icmp eq i32 %144, 1000000
   br i1 %exitcond.not, label %epilogue, label %do_while_loop.i
 
 epilogue:                                         ; preds = %when_exit13.i
-  %163 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %164 = load i64, i64* %13, align 8, !tbaa !9
-  %165 = bitcast %"class.kotlin::mm::ShadowStack"* %163 to i64*
-  store i64 %164, i64* %165, align 8, !tbaa !7
+  %164 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
+  %165 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
+  %166 = bitcast %"class.kotlin::mm::ShadowStack"* %164 to i64*
+  store i64 %165, i64* %166, align 8, !tbaa !7
   ret void
 }
