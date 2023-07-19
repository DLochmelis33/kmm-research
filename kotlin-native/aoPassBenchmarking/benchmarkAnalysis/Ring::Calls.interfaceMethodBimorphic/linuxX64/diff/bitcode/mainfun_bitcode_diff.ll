--- ../../benchmarkAnalysis/Ring::Calls.interfaceMethodBimorphic/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:50:18.780598569 +0200
+++ ../../benchmarkAnalysis/Ring::Calls.interfaceMethodBimorphic/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:02:00.070379922 +0200
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
@@ -112,108 +112,110 @@
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
-  %127 = bitcast %struct.ObjHeader* %81 to i64**
-  %128 = load i64*, i64** %127, align 8
-  %129 = bitcast %struct.ObjHeader* %84 to i64**
-  %130 = load i64*, i64** %129, align 8
+  %128 = bitcast %struct.ObjHeader* %81 to %struct.ObjHeader**
+  %129 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %128 unordered, align 8
+  %130 = bitcast %struct.ObjHeader* %85 to %struct.ObjHeader**
+  %131 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %130 unordered, align 8
   br label %do_while_loop.i
 
 do_while_loop.i:                                  ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
-  %inductionVariable.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %135, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
-  %131 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
-  %132 = and i8 %131, 1
-  %133 = icmp eq i8 %132, 0
-  br i1 %133, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %134
+  %inductionVariable.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %136, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
+  %132 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
+  %133 = and i8 %132, 1
+  %134 = icmp eq i8 %133, 0
+  br i1 %134, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %135
 
-134:                                              ; preds = %do_while_loop.i
+135:                                              ; preds = %do_while_loop.i
   call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
   br label %Kotlin_mm_safePointWhileLoopBody.exit.i
 
-Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %134, %do_while_loop.i
-  %135 = add nuw nsw i32 %inductionVariable.0.i, 1
-  %136 = and i32 %inductionVariable.0.i, 1
-  %137 = icmp eq i32 %136, 0
-  %spec.select = select i1 %137, i64* %128, i64* %130
-  %138 = load atomic volatile i64, i64* %spec.select monotonic, align 8
-  %139 = and i64 %138, -4
-  %140 = inttoptr i64 %139 to i64*
-  %141 = load atomic volatile i64, i64* %140 monotonic, align 8
-  %exitcond.not = icmp eq i32 %135, 1000000
+Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %135, %do_while_loop.i
+  %136 = add nuw nsw i32 %inductionVariable.0.i, 1
+  %137 = and i32 %inductionVariable.0.i, 1
+  %138 = icmp eq i32 %137, 0
+  %spec.select = select i1 %138, %struct.ObjHeader* %129, %struct.ObjHeader* %131
+  %139 = bitcast %struct.ObjHeader* %spec.select to i64*
+  %140 = load atomic volatile i64, i64* %139 monotonic, align 8
+  %141 = and i64 %140, -4
+  %142 = inttoptr i64 %141 to i64*
+  %143 = load atomic volatile i64, i64* %142 monotonic, align 8
+  %exitcond.not = icmp eq i32 %136, 1000000
   br i1 %exitcond.not, label %epilogue, label %do_while_loop.i
 
 epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
-  %142 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
-  %143 = load i64, i64* %13, align 8, !tbaa !9
-  %144 = bitcast %"class.kotlin::mm::ShadowStack"* %142 to i64*
-  store i64 %143, i64* %144, align 8, !tbaa !7
+  %144 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
+  %145 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
+  %146 = bitcast %"class.kotlin::mm::ShadowStack"* %144 to i64*
+  store i64 %145, i64* %146, align 8, !tbaa !7
   ret void
 }
