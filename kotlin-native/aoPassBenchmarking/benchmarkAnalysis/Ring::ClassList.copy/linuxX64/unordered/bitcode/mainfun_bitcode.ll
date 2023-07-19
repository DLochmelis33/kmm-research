define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [20 x %struct.ObjHeader*], align 8
  %1 = alloca [16 x i8], align 16
  %2 = alloca [6 x %struct.ObjHeader*], align 8
  %3 = alloca [8 x %struct.ObjHeader*], align 8
  %4 = alloca [7 x %struct.ObjHeader*], align 8
  %5 = alloca [5 x %struct.ObjHeader*], align 8
  %6 = alloca [4 x %struct.ObjHeader*], align 8
  %7 = alloca [10 x %struct.ObjHeader*], align 8
  %8 = alloca [13 x %struct.ObjHeader*], align 8
  %9 = alloca [4 x %struct.ObjHeader*], align 8
  %10 = alloca [5 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 0
  %11 = bitcast [5 x %struct.ObjHeader*]* %10 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %11, i8 0, i32 40, i1 immarg false) #50
  %12 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 3
  %13 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 4
  %14 = alloca %"kclassbody:ClassListBenchmark#internal", align 8
  %15 = getelementptr inbounds %"kclassbody:ClassListBenchmark#internal", %"kclassbody:ClassListBenchmark#internal"* %14, i64 0, i32 1
  %16 = bitcast %struct.ObjHeader** %15 to i64*
  store i64 0, i64* %16, align 8
  %objHeader = getelementptr inbounds %"kclassbody:ClassListBenchmark#internal", %"kclassbody:ClassListBenchmark#internal"* %14, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ClassListBenchmark#internal", %"kclassbody:ClassListBenchmark#internal"* %14, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ClassListBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %17 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !11
  %18 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %19 = bitcast [5 x %struct.ObjHeader*]* %10 to %struct.FrameOverlay.6*
  %20 = bitcast %"class.kotlin::mm::ShadowStack"* %18 to i64*
  %21 = load atomic i64, i64* %20 unordered, align 8, !tbaa !14
  %22 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 1
  %23 = bitcast %struct.ObjHeader** %22 to i64*
  store i64 %21, i64* %23, align 8, !tbaa !16
  %24 = bitcast %"class.kotlin::mm::ShadowStack"* %18 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %24, align 8, !tbaa !14
  %25 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 2
  %26 = bitcast %struct.ObjHeader** %25 to i32*
  store i32 0, i32* %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %19, i64 0, i32 3
  store i32 5, i32* %27, align 4, !tbaa !19
  %28 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %Kotlin_mm_safePointFunctionPrologue.exit, label %31

31:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %31, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %12, align 8, !tbaa !11
  %32 = bitcast [7 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %32)
  %.sub.i2 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(56) %32, i8 0, i32 56, i1 immarg false) #50
  %33 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %34 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %35 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %36 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %37 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %38 = bitcast [7 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %39 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to i64*
  %40 = load atomic i64, i64* %39 unordered, align 8, !tbaa !14
  %41 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %42 = bitcast %struct.ObjHeader** %41 to i64*
  store i64 %40, i64* %42, align 8, !tbaa !16
  %43 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %43, align 8, !tbaa !14
  %44 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %45 = bitcast %struct.ObjHeader** %44 to i32*
  store i32 0, i32* %45, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %38, i64 0, i32 3
  store i32 7, i32* %46, align 4, !tbaa !19
  %47 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %48 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %47 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %49 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %48 unordered, align 8, !tbaa !11
  %50 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %49, i64 0, i32 2, i32 1
  %51 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %50, i64 64) #37
  %52 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 1
  %53 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 2
  %54 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %struct.ObjHeader*
  %55 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %struct.TypeInfo**
  %56 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to i64*
  store i64 0, i64* %56, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %55, align 8, !tbaa !20
  %57 = bitcast %struct.ObjHeader** %33 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %57, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %54, i32 10000)
  %58 = bitcast [8 x %struct.ObjHeader*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %58)
  %.sub.i.i3 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(64) %58, i8 0, i32 64, i1 immarg false) #50
  %59 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 3
  %60 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 6
  %61 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %62 = bitcast [8 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
  %63 = bitcast %"class.kotlin::mm::ShadowStack"* %61 to i64*
  %64 = load atomic i64, i64* %63 unordered, align 8, !tbaa !14
  %65 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %66 = bitcast %struct.ObjHeader** %65 to i64*
  store i64 %64, i64* %66, align 8, !tbaa !16
  %67 = bitcast %"class.kotlin::mm::ShadowStack"* %61 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i3, %struct.ObjHeader*** %67, align 8, !tbaa !14
  %68 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %69 = bitcast %struct.ObjHeader** %68 to i32*
  store i32 0, i32* %69, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %62, i64 0, i32 3
  store i32 8, i32* %70, align 4, !tbaa !19
  %71 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %72 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %71 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %73 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %72 unordered, align 8, !tbaa !11
  %74 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %73, i64 0, i32 2, i32 1
  %75 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %74, i64 32) #37
  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 1
  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 2
  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.ObjHeader*
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.TypeInfo**
  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i64*
  store i64 0, i64* %80, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %79, align 8, !tbaa !20
  %81 = bitcast %struct.ObjHeader** %59 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}"(%struct.ObjHeader* nonnull %78, i32 10000) #37
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !11
  %82 = bitcast [4 x %struct.ObjHeader*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %82)
  %.sub.i.i.i4 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %82, i8 0, i32 32, i1 immarg false) #50
  %83 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %84 = bitcast [4 x %struct.ObjHeader*]* %9 to %struct.FrameOverlay.6*
  %85 = bitcast %"class.kotlin::mm::ShadowStack"* %83 to i64*
  %86 = load atomic i64, i64* %85 unordered, align 8, !tbaa !14
  %87 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 1
  %88 = bitcast %struct.ObjHeader** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !16
  %89 = bitcast %"class.kotlin::mm::ShadowStack"* %83 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i4, %struct.ObjHeader*** %89, align 8, !tbaa !14
  %90 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 2
  %91 = bitcast %struct.ObjHeader** %90 to i32*
  store i32 0, i32* %91, align 8, !tbaa !18
  %92 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %84, i64 0, i32 3
  store i32 4, i32* %92, align 4, !tbaa !19
  %93 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %79 monotonic, align 8
  %94 = ptrtoint %struct.TypeInfo* %93 to i64
  %95 = and i64 %94, -4
  %96 = inttoptr i64 %95 to %struct.TypeInfo*
  %97 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %96, i64 0, i32 0
  %98 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %97 monotonic, align 8
  %99 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %98, i64 0, i32 9
  %100 = load atomic i32, i32* %99 unordered, align 4
  %101 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %98, i64 0, i32 10
  %102 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %101 unordered, align 8
  %103 = and i32 %100, 18
  %104 = zext i32 %103 to i64
  %105 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %102, i64 %104, i32 0
  %106 = load atomic i32, i32* %105 unordered, align 4
  %107 = icmp eq i32 %106, 18
  br i1 %107, label %when_case.i.i.i5, label %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"

when_case.i.i.i5:                                 ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %108 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 3
  %109 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i64*
  %110 = load atomic volatile i64, i64* %109 monotonic, align 8
  %111 = and i64 %110, -4
  %112 = inttoptr i64 %111 to i64*
  %113 = load atomic volatile i64, i64* %112 monotonic, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %116 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %115 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %117 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %116 unordered, align 8, !tbaa !11
  %118 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %117, i64 0, i32 2, i32 1
  %119 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %118, i64 24) #37
  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 1
  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 2
  %122 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121 to %struct.ObjHeader*
  %123 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121 to %struct.TypeInfo**
  %124 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to i64*
  store i64 0, i64* %124, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.internal.KClassImpl#internal", i64 0, i32 0), %struct.TypeInfo** %123, align 8, !tbaa !20
  %125 = bitcast %struct.ObjHeader** %108 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %125, align 8, !tbaa !11
  %126 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 3
  %127 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126 to i8**
  store i8* %114, i8** %127, align 8
  call fastcc void @ThrowInvalidReceiverTypeException(%struct.ObjHeader* nonnull %122) #49
  unreachable

"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i": ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %128 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 7
  %129 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 5
  %130 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 4
  %131 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %132 = load atomic i64, i64* %88 unordered, align 8, !tbaa !16
  %133 = bitcast %"class.kotlin::mm::ShadowStack"* %131 to i64*
  store i64 %132, i64* %133, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %82)
  %134 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %135 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %134 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %136 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %135 unordered, align 8, !tbaa !11
  %137 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %136, i64 0, i32 2, i32 1
  %138 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %137, i64 64) #37
  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138, i64 1
  %140 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138, i64 2
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140 to %struct.ObjHeader*
  %142 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140 to %struct.TypeInfo**
  %143 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to i64*
  store i64 0, i64* %143, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %142, align 8, !tbaa !20
  %144 = bitcast %struct.ObjHeader** %130 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %144, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %141, i32 10)
  %145 = call %struct.ObjHeader* @"kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator"(%struct.ObjHeader* nonnull %78, %struct.ObjHeader** nonnull %129)
  %146 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %145, i64 0, i32 0
  %147 = bitcast %struct.ObjHeader** %128 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %148 = bitcast [6 x %struct.ObjHeader*]* %2 to i8*
  %.sub.i1.i.i = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 0
  %149 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %150 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 4
  %151 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 5
  %152 = bitcast [6 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %153 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %154 = bitcast %struct.ObjHeader** %153 to i64*
  %155 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %156 = bitcast %struct.ObjHeader** %155 to i32*
  %157 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %152, i64 0, i32 3
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %159 = bitcast [4 x %struct.ObjHeader*]* %6 to i8*
  %.sub.i.i.i.i6 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %6, i64 0, i64 0
  %160 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %6, i64 0, i64 3
  %161 = bitcast [4 x %struct.ObjHeader*]* %6 to %struct.FrameOverlay.6*
  %162 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %6, i64 0, i64 1
  %163 = bitcast %struct.ObjHeader** %162 to i64*
  %164 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %6, i64 0, i64 2
  %165 = bitcast %struct.ObjHeader** %164 to i32*
  %166 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %161, i64 0, i32 3
  %167 = bitcast %struct.ObjHeader** %160 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %168 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 3
  %169 = bitcast [20 x %struct.ObjHeader*]* %0 to i8*
  %.sub.i.i.i.i.i = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 0
  %170 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %171 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %172 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %173 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %174 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %175 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 9
  %176 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 10
  %177 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 11
  %178 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 12
  %179 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 13
  %180 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 14
  %181 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 15
  %182 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 16
  %183 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 17
  %184 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 18
  %185 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 19
  %186 = bitcast [20 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %187 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %188 = bitcast %struct.ObjHeader** %187 to i64*
  %189 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %190 = bitcast %struct.ObjHeader** %189 to i32*
  %191 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %186, i64 0, i32 3
  %192 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %193 = bitcast %struct.ObjHeader** %150 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %194 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138, i64 7
  %195 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %194 to i32*
  %196 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %197 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %196, i64 0, i32 6
  br label %loop_check.i.i

while_loop.i.i:                                   ; preds = %loop_check.i.i
  %198 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %201

201:                                              ; preds = %while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %201, %while_loop.i.i
  %202 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %146 monotonic, align 8
  %203 = ptrtoint %struct.TypeInfo* %202 to i64
  %204 = and i64 %203, -4
  %205 = inttoptr i64 %204 to %struct.TypeInfo*
  %206 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %205, i64 0, i32 0
  %207 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %206 monotonic, align 8
  %208 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %207, i64 0, i32 9
  %209 = load atomic i32, i32* %208 unordered, align 4
  %210 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %207, i64 0, i32 10
  %211 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %210 unordered, align 8
  %212 = and i32 %209, 160
  %213 = zext i32 %212 to i64
  %214 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %211, i64 %213, i32 2
  %215 = load atomic i8**, i8*** %214 unordered, align 8
  %216 = getelementptr i8*, i8** %215, i64 1
  %217 = bitcast i8** %216 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %218 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %217 unordered, align 8
  %219 = call %struct.ObjHeader* %218(%struct.ObjHeader* nonnull %145, %struct.ObjHeader** nonnull %60)
  %220 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %219, i64 1
  %221 = bitcast %struct.ObjHeader* %220 to i32*
  %222 = load atomic i32, i32* %221 unordered, align 4
  %223 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %224 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %223 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %225 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %224 unordered, align 8, !tbaa !11
  %226 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %225, i64 0, i32 2, i32 1
  %227 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %226, i64 32) #37
  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 1
  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 2
  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.ObjHeader*
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.TypeInfo**
  %232 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to i64*
  store i64 0, i64* %232, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Value#internal", i64 0, i32 0), %struct.TypeInfo** %231, align 8, !tbaa !20
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %147, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %148)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %148, i8 0, i32 48, i1 immarg false) #50
  %233 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %234 = bitcast %"class.kotlin::mm::ShadowStack"* %233 to i64*
  %235 = load atomic i64, i64* %234 unordered, align 8, !tbaa !14
  store i64 %235, i64* %154, align 8, !tbaa !16
  %236 = bitcast %"class.kotlin::mm::ShadowStack"* %233 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i1.i.i, %struct.ObjHeader*** %236, align 8, !tbaa !14
  store i32 0, i32* %156, align 8, !tbaa !18
  store i32 6, i32* %157, align 4, !tbaa !19
  %237 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 4
  %238 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %237 to i32*
  store i32 %222, i32* %238, align 8
  %239 = load atomic i32, i32* %238 unordered, align 8
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %158) #37
  call void (i8*, i64, i8*, ...) @_ZN5konan8snprintfEPcmPKcz(i8* nonnull %158, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.849, i64 0, i64 0), i32 %239)
  %240 = call fastcc %struct.ObjHeader* @CreateStringFromCString(i8* nonnull %158, %struct.ObjHeader** nonnull %149)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %158) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %159)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %159, i8 0, i32 32, i1 immarg false) #50
  %241 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %242 = bitcast %"class.kotlin::mm::ShadowStack"* %241 to i64*
  %243 = load atomic i64, i64* %242 unordered, align 8, !tbaa !14
  store i64 %243, i64* %163, align 8, !tbaa !16
  %244 = bitcast %"class.kotlin::mm::ShadowStack"* %241 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i6, %struct.ObjHeader*** %244, align 8, !tbaa !14
  store i32 0, i32* %165, align 8, !tbaa !18
  store i32 4, i32* %166, align 4, !tbaa !19
  %245 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %246 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %245 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %247 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %246 unordered, align 8, !tbaa !11
  %248 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %247, i64 0, i32 2, i32 1
  %249 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %248, i64 32) #37
  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, i64 1
  %251 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, i64 2
  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251 to %struct.ObjHeader*
  %253 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251 to %struct.TypeInfo**
  %254 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to i64*
  store i64 0, i64* %254, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.text.StringBuilder#internal", i64 0, i32 0), %struct.TypeInfo** %253, align 8, !tbaa !20
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %167, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %82)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %82, i8 0, i32 32, i1 immarg false) #50
  %255 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %256 = bitcast %"class.kotlin::mm::ShadowStack"* %255 to i64*
  %257 = load atomic i64, i64* %256 unordered, align 8, !tbaa !14
  store i64 %257, i64* %88, align 8, !tbaa !16
  %258 = bitcast %"class.kotlin::mm::ShadowStack"* %255 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i4, %struct.ObjHeader*** %258, align 8, !tbaa !14
  store i32 0, i32* %91, align 8, !tbaa !18
  store i32 4, i32* %92, align 4, !tbaa !19
  %259 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %240, i64 0, i32 0
  %260 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %259 monotonic, align 8
  %261 = ptrtoint %struct.TypeInfo* %260 to i64
  %262 = and i64 %261, -4
  %263 = inttoptr i64 %262 to %struct.TypeInfo*
  %264 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %263, i64 0, i32 0
  %265 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %264 monotonic, align 8
  %266 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %265, i64 0, i32 9
  %267 = load atomic i32, i32* %266 unordered, align 4
  %268 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %265, i64 0, i32 10
  %269 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %268 unordered, align 8
  %270 = and i32 %267, 25
  %271 = zext i32 %270 to i64
  %272 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %269, i64 %271, i32 2
  %273 = bitcast i8*** %272 to i32 (%struct.ObjHeader*)***
  %274 = load atomic i32 (%struct.ObjHeader*)**, i32 (%struct.ObjHeader*)*** %273 unordered, align 8
  %275 = load atomic i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %274 unordered, align 8
  %276 = call i32 %275(%struct.ObjHeader* %240)
  call fastcc void @"kfun:kotlin.text.StringBuilder#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %252, i32 %276)
  %277 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?){}kotlin.text.StringBuilder"(%struct.ObjHeader* nonnull %252, %struct.ObjHeader* %240, %struct.ObjHeader** nonnull %168)
  %278 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %279 = load atomic i64, i64* %88 unordered, align 8, !tbaa !16
  %280 = bitcast %"class.kotlin::mm::ShadowStack"* %278 to i64*
  store i64 %279, i64* %280, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %82)
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %169)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(160) %169, i8 0, i32 160, i1 immarg false) #50
  %281 = load atomic i64, i64* %280 unordered, align 8, !tbaa !14
  store i64 %281, i64* %188, align 8, !tbaa !16
  %282 = bitcast %"class.kotlin::mm::ShadowStack"* %278 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i.i, %struct.ObjHeader*** %282, align 8, !tbaa !14
  store i32 0, i32* %190, align 8, !tbaa !18
  store i32 20, i32* %191, align 4, !tbaa !19
  %283 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, i64 4
  %284 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283 to i32*
  %285 = load atomic i32, i32* %284 unordered, align 8
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit.i.i.i.i.i

when_exit.i.i.i.i.i:                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %287 = add i32 %285, -1
  %288 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, i64 3
  %289 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %288 to %struct.ObjHeader**
  %290 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %290, %struct.ObjHeader** %192, align 8, !tbaa !11
  %291 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %290, i64 1
  %292 = bitcast %struct.ObjHeader* %291 to i32*
  %293 = load atomic i32, i32* %292 unordered, align 8, !tbaa !9
  %.not = icmp eq i32 %293, 0
  br i1 %.not, label %294, label %Kotlin_CharArray_get.exit.i.i.i.i.i

294:                                              ; preds = %when_exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit.i.i.i.i.i:              ; preds = %when_exit.i.i.i.i.i
  %295 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %290, i64 2
  %296 = bitcast %struct.ObjHeader* %295 to i16*
  %297 = load atomic i16, i16* %296 unordered, align 2, !tbaa !27
  %298 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %298, %struct.ObjHeader** %170, align 8, !tbaa !11
  %299 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %298, i64 1
  %300 = bitcast %struct.ObjHeader* %299 to i32*
  %301 = load atomic i32, i32* %300 unordered, align 8, !tbaa !9
  %302 = icmp ugt i32 %301, %287
  br i1 %302, label %Kotlin_CharArray_get.exit80.i.i.i.i.i, label %303

303:                                              ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit80.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  %304 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %298, i64 2
  %305 = bitcast %struct.ObjHeader* %304 to i16*
  %306 = sext i32 %287 to i64
  %307 = getelementptr inbounds i16, i16* %305, i64 %306
  %308 = load atomic i16, i16* %307 unordered, align 2, !tbaa !27
  br label %loop_check.i.i.i.i.i

while_loop.i.i.i.i.i:                             ; preds = %loop_check.i.i.i.i.i
  %309 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i, label %312

312:                                              ; preds = %while_loop.i.i.i.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i:  ; preds = %312, %while_loop.i.i.i.i.i
  %313 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %313, %struct.ObjHeader** %171, align 8, !tbaa !11
  %314 = add i32 %front.1.i.i.i.i.i, 1
  %315 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %313, i64 1
  %316 = bitcast %struct.ObjHeader* %315 to i32*
  %317 = load atomic i32, i32* %316 unordered, align 8, !tbaa !9
  %318 = icmp ugt i32 %317, %314
  br i1 %318, label %Kotlin_CharArray_get.exit82.i.i.i.i.i, label %319

319:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit82.i.i.i.i.i:            ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  %320 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %313, i64 2
  %321 = bitcast %struct.ObjHeader* %320 to i16*
  %322 = sext i32 %314 to i64
  %323 = getelementptr inbounds i16, i16* %321, i64 %322
  %324 = load atomic i16, i16* %323 unordered, align 2, !tbaa !27
  %325 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %325, %struct.ObjHeader** %172, align 8, !tbaa !11
  %326 = add i32 %end.1.i.i.i.i.i, -1
  %327 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %325, i64 1
  %328 = bitcast %struct.ObjHeader* %327 to i32*
  %329 = load atomic i32, i32* %328 unordered, align 8, !tbaa !9
  %330 = icmp ugt i32 %329, %326
  br i1 %330, label %Kotlin_CharArray_get.exit84.i.i.i.i.i, label %331

331:                                              ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit84.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  %332 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %325, i64 2
  %333 = bitcast %struct.ObjHeader* %332 to i16*
  %334 = sext i32 %326 to i64
  %335 = getelementptr inbounds i16, i16* %333, i64 %334
  %336 = load atomic i16, i16* %335 unordered, align 2, !tbaa !27
  %337 = and i16 %324, -1024
  %338 = icmp eq i16 %337, -9216
  %or.cond = and i1 %allowFrontSurrogate.1.i.i.i.i.i, %338
  %339 = and i16 %frontLeadingChar.1.i.i.i.i.i, -1024
  %340 = icmp eq i16 %339, -10240
  %or.cond175 = and i1 %or.cond, %340
  br i1 %or.cond175, label %when_exit19.i.i.i.i.i, label %when_exit20.i.i.i.i.i.thread

when_exit19.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %341 = load atomic i32, i32* %284 unordered, align 8
  %342 = icmp slt i32 %341, 3
  br i1 %342, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit20.i.i.i.i.i

when_exit20.i.i.i.i.i:                            ; preds = %when_exit19.i.i.i.i.i
  %343 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %344 = icmp eq i16 %343, -9216
  %or.cond177 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %344
  br i1 %or.cond177, label %when_exit38.i.i.i.i.i, label %when_exit38.i.i.i.i.i.thread

when_exit20.i.i.i.i.i.thread:                     ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %345 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %346 = icmp eq i16 %345, -9216
  %or.cond177178 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %346
  br i1 %or.cond177178, label %when_exit48.i.i.i.i.i, label %when_exit48.i.i.i.i.i.thread

when_exit48.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i.thread
  %347 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  br label %when_case31.i.i.i.i.i

when_exit38.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i
  %348 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  br label %when_case33.i.i.i.i.i

when_exit38.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i
  %349 = and i16 %336, -1024
  %350 = icmp eq i16 %349, -10240
  %351 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  br i1 %350, label %when_case29.i.i.i.i.i, label %when_case33.i.i.i.i.i

when_case29.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i
  store %struct.ObjHeader* %351, %struct.ObjHeader** %173, align 8, !tbaa !11
  %352 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %351, i64 1
  %353 = bitcast %struct.ObjHeader* %352 to i32*
  %354 = load atomic i32, i32* %353 unordered, align 8, !tbaa !9
  %355 = icmp ugt i32 %354, %end.1.i.i.i.i.i
  br i1 %355, label %Kotlin_CharArray_set.exit90.i.i.i.i.i, label %356

356:                                              ; preds = %when_case29.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit90.i.i.i.i.i:            ; preds = %when_case29.i.i.i.i.i
  %357 = bitcast %struct.ObjHeader* %351 to i64*
  %358 = load atomic volatile i64, i64* %357 monotonic, align 8
  %359 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %351, i64 2
  %360 = bitcast %struct.ObjHeader* %359 to i16*
  %361 = sext i32 %end.1.i.i.i.i.i to i64
  %362 = getelementptr inbounds i16, i16* %360, i64 %361
  store i16 %324, i16* %362, align 2, !tbaa !27
  %363 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %363, %struct.ObjHeader** %174, align 8, !tbaa !11
  %364 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %363, i64 1
  %365 = bitcast %struct.ObjHeader* %364 to i32*
  %366 = load atomic i32, i32* %365 unordered, align 8, !tbaa !9
  %367 = icmp ugt i32 %366, %326
  br i1 %367, label %Kotlin_CharArray_set.exit92.i.i.i.i.i, label %368

368:                                              ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit92.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  %369 = bitcast %struct.ObjHeader* %363 to i64*
  %370 = load atomic volatile i64, i64* %369 monotonic, align 8
  %371 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %363, i64 2
  %372 = bitcast %struct.ObjHeader* %371 to i16*
  %373 = getelementptr inbounds i16, i16* %372, i64 %334
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %373, align 2, !tbaa !27
  %374 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %374, %struct.ObjHeader** %175, align 8, !tbaa !11
  %375 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %374, i64 1
  %376 = bitcast %struct.ObjHeader* %375 to i32*
  %377 = load atomic i32, i32* %376 unordered, align 8, !tbaa !9
  %378 = icmp ugt i32 %377, %front.1.i.i.i.i.i
  br i1 %378, label %Kotlin_CharArray_set.exit91.i.i.i.i.i, label %379

379:                                              ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit91.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  %380 = bitcast %struct.ObjHeader* %374 to i64*
  %381 = load atomic volatile i64, i64* %380 monotonic, align 8
  %382 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %374, i64 2
  %383 = bitcast %struct.ObjHeader* %382 to i16*
  %384 = sext i32 %front.1.i.i.i.i.i to i64
  %385 = getelementptr inbounds i16, i16* %383, i64 %384
  store i16 %336, i16* %385, align 2, !tbaa !27
  %386 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %386, %struct.ObjHeader** %176, align 8, !tbaa !11
  %387 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %386, i64 1
  %388 = bitcast %struct.ObjHeader* %387 to i32*
  %389 = load atomic i32, i32* %388 unordered, align 8, !tbaa !9
  %390 = icmp ugt i32 %389, %314
  br i1 %390, label %Kotlin_CharArray_set.exit89.i.i.i.i.i, label %391

391:                                              ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit89.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  %392 = bitcast %struct.ObjHeader* %386 to i64*
  %393 = load atomic volatile i64, i64* %392 monotonic, align 8
  %394 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %386, i64 2
  %395 = bitcast %struct.ObjHeader* %394 to i16*
  %396 = getelementptr inbounds i16, i16* %395, i64 %322
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %396, align 2, !tbaa !27
  %397 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %397, %struct.ObjHeader** %177, align 8, !tbaa !11
  %398 = add i32 %front.1.i.i.i.i.i, 2
  %399 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %397, i64 1
  %400 = bitcast %struct.ObjHeader* %399 to i32*
  %401 = load atomic i32, i32* %400 unordered, align 8, !tbaa !9
  %402 = icmp ugt i32 %401, %398
  br i1 %402, label %Kotlin_CharArray_get.exit88.i.i.i.i.i, label %403

403:                                              ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit88.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  %404 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %397, i64 2
  %405 = bitcast %struct.ObjHeader* %404 to i16*
  %406 = sext i32 %398 to i64
  %407 = getelementptr inbounds i16, i16* %405, i64 %406
  %408 = load atomic i16, i16* %407 unordered, align 2, !tbaa !27
  %409 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %409, %struct.ObjHeader** %178, align 8, !tbaa !11
  %410 = add i32 %end.1.i.i.i.i.i, -2
  %411 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %409, i64 1
  %412 = bitcast %struct.ObjHeader* %411 to i32*
  %413 = load atomic i32, i32* %412 unordered, align 8, !tbaa !9
  %414 = icmp ugt i32 %413, %410
  br i1 %414, label %Kotlin_CharArray_get.exit87.i.i.i.i.i, label %415

415:                                              ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit87.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  %416 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %409, i64 2
  %417 = bitcast %struct.ObjHeader* %416 to i16*
  %418 = sext i32 %410 to i64
  %419 = getelementptr inbounds i16, i16* %417, i64 %418
  %420 = load atomic i16, i16* %419 unordered, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_exit48.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i.thread
  %421 = and i16 %336, -1024
  %422 = icmp eq i16 %421, -10240
  %423 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  br i1 %422, label %when_case35.i.i.i.i.i, label %when_case31.i.i.i.i.i

when_case31.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i, %when_exit48.i.i.i.i.i.thread
  %424 = phi %struct.ObjHeader* [ %347, %when_exit48.i.i.i.i.i.thread ], [ %423, %when_exit48.i.i.i.i.i ]
  store %struct.ObjHeader* %424, %struct.ObjHeader** %179, align 8, !tbaa !11
  %425 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %424, i64 1
  %426 = bitcast %struct.ObjHeader* %425 to i32*
  %427 = load atomic i32, i32* %426 unordered, align 8, !tbaa !9
  %428 = icmp ugt i32 %427, %end.1.i.i.i.i.i
  br i1 %428, label %Kotlin_CharArray_set.exit86.i.i.i.i.i, label %429

429:                                              ; preds = %when_case31.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit86.i.i.i.i.i:            ; preds = %when_case31.i.i.i.i.i
  %430 = bitcast %struct.ObjHeader* %424 to i64*
  %431 = load atomic volatile i64, i64* %430 monotonic, align 8
  %432 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %424, i64 2
  %433 = bitcast %struct.ObjHeader* %432 to i16*
  %434 = sext i32 %end.1.i.i.i.i.i to i64
  %435 = getelementptr inbounds i16, i16* %433, i64 %434
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %435, align 2, !tbaa !27
  %436 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %436, %struct.ObjHeader** %180, align 8, !tbaa !11
  %437 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %436, i64 1
  %438 = bitcast %struct.ObjHeader* %437 to i32*
  %439 = load atomic i32, i32* %438 unordered, align 8, !tbaa !9
  %440 = icmp ugt i32 %439, %front.1.i.i.i.i.i
  br i1 %440, label %Kotlin_CharArray_set.exit85.i.i.i.i.i, label %441

441:                                              ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit85.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  %442 = bitcast %struct.ObjHeader* %436 to i64*
  %443 = load atomic volatile i64, i64* %442 monotonic, align 8
  %444 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %436, i64 2
  %445 = bitcast %struct.ObjHeader* %444 to i16*
  %446 = sext i32 %front.1.i.i.i.i.i to i64
  %447 = getelementptr inbounds i16, i16* %445, i64 %446
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %447, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_case33.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i, %when_exit38.i.i.i.i.i.thread
  %448 = phi %struct.ObjHeader* [ %348, %when_exit38.i.i.i.i.i.thread ], [ %351, %when_exit38.i.i.i.i.i ]
  store %struct.ObjHeader* %448, %struct.ObjHeader** %181, align 8, !tbaa !11
  %449 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %448, i64 1
  %450 = bitcast %struct.ObjHeader* %449 to i32*
  %451 = load atomic i32, i32* %450 unordered, align 8, !tbaa !9
  %452 = icmp ugt i32 %451, %end.1.i.i.i.i.i
  br i1 %452, label %Kotlin_CharArray_set.exit83.i.i.i.i.i, label %453

453:                                              ; preds = %when_case33.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit83.i.i.i.i.i:            ; preds = %when_case33.i.i.i.i.i
  %454 = bitcast %struct.ObjHeader* %448 to i64*
  %455 = load atomic volatile i64, i64* %454 monotonic, align 8
  %456 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %448, i64 2
  %457 = bitcast %struct.ObjHeader* %456 to i16*
  %458 = sext i32 %end.1.i.i.i.i.i to i64
  %459 = getelementptr inbounds i16, i16* %457, i64 %458
  store i16 %324, i16* %459, align 2, !tbaa !27
  %460 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %460, %struct.ObjHeader** %182, align 8, !tbaa !11
  %461 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %460, i64 1
  %462 = bitcast %struct.ObjHeader* %461 to i32*
  %463 = load atomic i32, i32* %462 unordered, align 8, !tbaa !9
  %464 = icmp ugt i32 %463, %front.1.i.i.i.i.i
  br i1 %464, label %Kotlin_CharArray_set.exit81.i.i.i.i.i, label %465

465:                                              ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit81.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  %466 = bitcast %struct.ObjHeader* %460 to i64*
  %467 = load atomic volatile i64, i64* %466 monotonic, align 8
  %468 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %460, i64 2
  %469 = bitcast %struct.ObjHeader* %468 to i16*
  %470 = sext i32 %front.1.i.i.i.i.i to i64
  %471 = getelementptr inbounds i16, i16* %469, i64 %470
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %471, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_case35.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i
  store %struct.ObjHeader* %423, %struct.ObjHeader** %183, align 8, !tbaa !11
  %472 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %423, i64 1
  %473 = bitcast %struct.ObjHeader* %472 to i32*
  %474 = load atomic i32, i32* %473 unordered, align 8, !tbaa !9
  %475 = icmp ugt i32 %474, %end.1.i.i.i.i.i
  br i1 %475, label %Kotlin_CharArray_set.exit79.i.i.i.i.i, label %476

476:                                              ; preds = %when_case35.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit79.i.i.i.i.i:            ; preds = %when_case35.i.i.i.i.i
  %477 = bitcast %struct.ObjHeader* %423 to i64*
  %478 = load atomic volatile i64, i64* %477 monotonic, align 8
  %479 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %423, i64 2
  %480 = bitcast %struct.ObjHeader* %479 to i16*
  %481 = sext i32 %end.1.i.i.i.i.i to i64
  %482 = getelementptr inbounds i16, i16* %480, i64 %481
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %482, align 2, !tbaa !27
  %483 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %483, %struct.ObjHeader** %184, align 8, !tbaa !11
  %484 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %483, i64 1
  %485 = bitcast %struct.ObjHeader* %484 to i32*
  %486 = load atomic i32, i32* %485 unordered, align 8, !tbaa !9
  %487 = icmp ugt i32 %486, %front.1.i.i.i.i.i
  br i1 %487, label %Kotlin_CharArray_set.exit78.i.i.i.i.i, label %488

488:                                              ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit78.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  %489 = bitcast %struct.ObjHeader* %483 to i64*
  %490 = load atomic volatile i64, i64* %489 monotonic, align 8
  %491 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %483, i64 2
  %492 = bitcast %struct.ObjHeader* %491 to i16*
  %493 = sext i32 %front.1.i.i.i.i.i to i64
  %494 = getelementptr inbounds i16, i16* %492, i64 %493
  store i16 %336, i16* %494, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_exit45.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_set.exit78.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i, %Kotlin_CharArray_get.exit87.i.i.i.i.i
  %allowEndSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %allowFrontSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %endTrailingChar.0.i.i.i.i.i = phi i16 [ %420, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %336, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %336, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %endTrailingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %frontLeadingChar.0.i.i.i.i.i = phi i16 [ %408, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %324, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %frontLeadingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %324, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %front.0.i.i.i.i.i = phi i32 [ %314, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %end.0.i.i.i.i.i = phi i32 [ %326, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %495 = add i32 %front.0.i.i.i.i.i, 1
  %496 = add i32 %end.0.i.i.i.i.i, -1
  br label %loop_check.i.i.i.i.i

loop_check.i.i.i.i.i:                             ; preds = %when_exit45.i.i.i.i.i, %Kotlin_CharArray_get.exit80.i.i.i.i.i
  %allowEndSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowEndSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %allowFrontSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowFrontSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %endTrailingChar.1.i.i.i.i.i = phi i16 [ %308, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %endTrailingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %frontLeadingChar.1.i.i.i.i.i = phi i16 [ %297, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %frontLeadingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %front.1.i.i.i.i.i = phi i32 [ 0, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %495, %when_exit45.i.i.i.i.i ]
  %end.1.i.i.i.i.i = phi i32 [ %287, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %496, %when_exit45.i.i.i.i.i ]
  %497 = load atomic i32, i32* %284 unordered, align 8
  %498 = sdiv i32 %497, 2
  %499 = icmp slt i32 %front.1.i.i.i.i.i, %498
  br i1 %499, label %while_loop.i.i.i.i.i, label %loop_exit.i.i.i.i.i

loop_exit.i.i.i.i.i:                              ; preds = %loop_check.i.i.i.i.i
  %500 = srem i32 %497, 2
  %501 = icmp ne i32 %500, 1
  %brmerge.demorgan = and i1 %allowEndSurrogate.1.i.i.i.i.i, %allowFrontSurrogate.1.i.i.i.i.i
  %or.cond180 = or i1 %501, %brmerge.demorgan
  br i1 %or.cond180, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_case61.i.i.i.i.i

when_case61.i.i.i.i.i:                            ; preds = %loop_exit.i.i.i.i.i
  %502 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %289 unordered, align 8
  store %struct.ObjHeader* %502, %struct.ObjHeader** %185, align 8, !tbaa !11
  %503 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %502, i64 1
  %504 = bitcast %struct.ObjHeader* %503 to i32*
  %505 = load atomic i32, i32* %504 unordered, align 8, !tbaa !9
  %506 = icmp ugt i32 %505, %end.1.i.i.i.i.i
  br i1 %506, label %Kotlin_CharArray_set.exit.i.i.i.i.i, label %507

507:                                              ; preds = %when_case61.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit.i.i.i.i.i:              ; preds = %when_case61.i.i.i.i.i
  %spec.select = select i1 %allowFrontSurrogate.1.i.i.i.i.i, i16 %endTrailingChar.1.i.i.i.i.i, i16 %frontLeadingChar.1.i.i.i.i.i
  %508 = bitcast %struct.ObjHeader* %502 to i64*
  %509 = load atomic volatile i64, i64* %508 monotonic, align 8
  %510 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %502, i64 2
  %511 = bitcast %struct.ObjHeader* %510 to i16*
  %512 = sext i32 %end.1.i.i.i.i.i to i64
  %513 = getelementptr inbounds i16, i16* %511, i64 %512
  store i16 %spec.select, i16* %513, align 2, !tbaa !27
  br label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i"

"kfun:Value#<init>(kotlin.Int){}.exit.i.i":       ; preds = %Kotlin_CharArray_set.exit.i.i.i.i.i, %loop_exit.i.i.i.i.i, %when_exit19.i.i.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %514 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %515 = bitcast %"class.kotlin::mm::ShadowStack"* %514 to i64*
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %169)
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %193, align 8, !tbaa !11
  %516 = load atomic i64, i64* %163 unordered, align 8, !tbaa !16
  store i64 %516, i64* %515, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %159)
  %517 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#toString(){}kotlin.String"(%struct.ObjHeader* nonnull %252, %struct.ObjHeader** nonnull %151)
  %518 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 3
  %519 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %518 to %struct.ObjHeader**
  store %struct.ObjHeader* %517, %struct.ObjHeader** %519, align 8, !tbaa !11
  %520 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %521 = load atomic i64, i64* %154 unordered, align 8, !tbaa !16
  %522 = bitcast %"class.kotlin::mm::ShadowStack"* %520 to i64*
  store i64 %521, i64* %522, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %148)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %141)
  %523 = load atomic i32, i32* %195 unordered, align 8
  %524 = load atomic i32, i32* %197 unordered, align 4
  %525 = add i32 %523, %524
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %141, i32 %525, %struct.ObjHeader* nonnull %230)
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"
  %526 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %146 monotonic, align 8
  %527 = ptrtoint %struct.TypeInfo* %526 to i64
  %528 = and i64 %527, -4
  %529 = inttoptr i64 %528 to %struct.TypeInfo*
  %530 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %529, i64 0, i32 0
  %531 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %530 monotonic, align 8
  %532 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %531, i64 0, i32 9
  %533 = load atomic i32, i32* %532 unordered, align 4
  %534 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %531, i64 0, i32 10
  %535 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %534 unordered, align 8
  %536 = and i32 %533, 160
  %537 = zext i32 %536 to i64
  %538 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %535, i64 %537, i32 2
  %539 = bitcast i8*** %538 to i1 (%struct.ObjHeader*)***
  %540 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %539 unordered, align 8
  %541 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %540 unordered, align 8
  %542 = call zeroext i1 %541(%struct.ObjHeader* nonnull %145)
  br i1 %542, label %while_loop.i.i, label %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"

"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i": ; preds = %loop_check.i.i
  %543 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %543, align 8, !tbaa !11
  %544 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %545 = load atomic i64, i64* %66 unordered, align 8, !tbaa !16
  %546 = bitcast %"class.kotlin::mm::ShadowStack"* %544 to i64*
  store i64 %545, i64* %546, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %58)
  %547 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %548 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %547 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %549 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %548 unordered, align 8, !tbaa !11
  %550 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %549, i64 0, i32 2, i32 1
  %551 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %550, i64 32) #37
  %552 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551, i64 1
  %553 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551, i64 2
  %554 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %553 to %struct.ObjHeader*
  %555 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %553 to %struct.TypeInfo**
  %556 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552 to i64*
  store i64 0, i64* %556, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %555, align 8, !tbaa !20
  %557 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %553, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %557, align 8, !tbaa !11
  %558 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %558, align 8, !tbaa !11
  %559 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551, i64 4
  %560 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %559 to i32*
  store i32 0, i32* %560, align 8
  %561 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %553 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %562 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %561, i64 0, i32 3
  store i32 -1, i32* %562, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %553, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %557, align 8, !tbaa !11
  %563 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 7
  %564 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %563 to i32*
  %565 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %566 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %565, i64 0, i32 6
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %567 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %568 = and i8 %567, 1
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %570

570:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %570, %while_loop.i
  %571 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %555 monotonic, align 8
  %572 = ptrtoint %struct.TypeInfo* %571 to i64
  %573 = and i64 %572, -4
  %574 = inttoptr i64 %573 to %struct.TypeInfo*
  %575 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %574, i64 0, i32 0
  %576 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %575 monotonic, align 8
  %577 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %576, i64 0, i32 9
  %578 = load atomic i32, i32* %577 unordered, align 4
  %579 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %576, i64 0, i32 10
  %580 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %579 unordered, align 8
  %581 = and i32 %578, 160
  %582 = zext i32 %581 to i64
  %583 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %580, i64 %582, i32 2
  %584 = load atomic i8**, i8*** %583 unordered, align 8
  %585 = getelementptr i8*, i8** %584, i64 1
  %586 = bitcast i8** %585 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %587 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %586 unordered, align 8
  %588 = call %struct.ObjHeader* %587(%struct.ObjHeader* nonnull %554, %struct.ObjHeader** nonnull %36)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %54)
  %589 = load atomic i32, i32* %564 unordered, align 8
  %590 = load atomic i32, i32* %566 unordered, align 4
  %591 = add i32 %589, %590
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %54, i32 %591, %struct.ObjHeader* %588)
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"
  %592 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %555 monotonic, align 8
  %593 = ptrtoint %struct.TypeInfo* %592 to i64
  %594 = and i64 %593, -4
  %595 = inttoptr i64 %594 to %struct.TypeInfo*
  %596 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %595, i64 0, i32 0
  %597 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %596 monotonic, align 8
  %598 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %597, i64 0, i32 9
  %599 = load atomic i32, i32* %598 unordered, align 4
  %600 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %597, i64 0, i32 10
  %601 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %600 unordered, align 8
  %602 = and i32 %599, 160
  %603 = zext i32 %602 to i64
  %604 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %601, i64 %603, i32 2
  %605 = bitcast i8*** %604 to i1 (%struct.ObjHeader*)***
  %606 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %605 unordered, align 8
  %607 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %606 unordered, align 8
  %608 = call zeroext i1 %607(%struct.ObjHeader* nonnull %554)
  br i1 %608, label %while_loop.i, label %call_success

call_success:                                     ; preds = %loop_check.i
  %609 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %610 = bitcast %struct.ObjHeader* %609 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %610, align 8, !tbaa !11
  %611 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %612 = load atomic i64, i64* %42 unordered, align 8, !tbaa !16
  %613 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to i64*
  store i64 %612, i64* %613, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %32)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %82)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %82, i8 0, i32 32, i1 immarg false) #50
  %614 = load atomic i64, i64* %613 unordered, align 8, !tbaa !14
  store i64 %614, i64* %88, align 8, !tbaa !16
  %615 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i4, %struct.ObjHeader*** %615, align 8, !tbaa !14
  store i32 0, i32* %91, align 8, !tbaa !18
  store i32 4, i32* %92, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %159)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %159, i8 0, i32 32, i1 immarg false) #50
  %616 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %617 = bitcast %"class.kotlin::mm::ShadowStack"* %616 to i64*
  %618 = load atomic i64, i64* %617 unordered, align 8, !tbaa !14
  store i64 %618, i64* %163, align 8, !tbaa !16
  %619 = bitcast %"class.kotlin::mm::ShadowStack"* %616 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i6, %struct.ObjHeader*** %619, align 8, !tbaa !14
  store i32 0, i32* %165, align 8, !tbaa !18
  store i32 4, i32* %166, align 4, !tbaa !19
  %620 = bitcast %struct.ObjHeader* %609 to %struct.ObjHeader**
  %621 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %620 unordered, align 8
  store %struct.ObjHeader* %621, %struct.ObjHeader** %160, align 8, !tbaa !11
  %622 = icmp eq %struct.ObjHeader* %621, null
  br i1 %622, label %when_case.i2.i, label %instance_of_exit.i.i

when_case.i2.i:                                   ; preds = %call_success
  call fastcc void @ThrowNullPointerException() #49
  unreachable

instance_of_exit.i.i:                             ; preds = %call_success
  store %struct.ObjHeader* %621, %struct.ObjHeader** %168, align 8, !tbaa !11
  %623 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %624 = load atomic i64, i64* %163 unordered, align 8, !tbaa !16
  %625 = bitcast %"class.kotlin::mm::ShadowStack"* %623 to i64*
  store i64 %624, i64* %625, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %159)
  %626 = bitcast [13 x %struct.ObjHeader*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %626)
  %.sub.i.i = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(104) %626, i8 0, i32 104, i1 immarg false) #50
  %627 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 3
  %628 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 4
  %629 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 5
  %"tmp0_$elem.i.i" = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 6
  %630 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 7
  %"tmp1_$array.i.i" = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 8
  %631 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 9
  %632 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 10
  %633 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 11
  %634 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 12
  %635 = bitcast [13 x %struct.ObjHeader*]* %8 to %struct.FrameOverlay.6*
  %636 = load atomic i64, i64* %625 unordered, align 8, !tbaa !14
  %637 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 1
  %638 = bitcast %struct.ObjHeader** %637 to i64*
  store i64 %636, i64* %638, align 8, !tbaa !16
  %639 = bitcast %"class.kotlin::mm::ShadowStack"* %623 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %639, align 8, !tbaa !14
  %640 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 2
  %641 = bitcast %struct.ObjHeader** %640 to i32*
  store i32 0, i32* %641, align 8, !tbaa !18
  %642 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %635, i64 0, i32 3
  store i32 13, i32* %642, align 4, !tbaa !19
  %643 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %621, i64 0, i32 0
  %644 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %643 monotonic, align 8
  %645 = ptrtoint %struct.TypeInfo* %644 to i64
  %646 = and i64 %645, -4
  %647 = inttoptr i64 %646 to %struct.TypeInfo*
  %648 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %647, i64 0, i32 0
  %649 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %648 monotonic, align 8
  %650 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %649, i64 0, i32 9
  %651 = load atomic i32, i32* %650 unordered, align 4
  %652 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %649, i64 0, i32 10
  %653 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %652 unordered, align 8
  %654 = and i32 %651, 18
  %655 = zext i32 %654 to i64
  %656 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %653, i64 %655, i32 0
  %657 = load atomic i32, i32* %656 unordered, align 4
  %658 = icmp eq i32 %657, 18
  br i1 %658, label %when_case.i.i, label %instance_of_exit.i.i.i

when_case.i.i:                                    ; preds = %instance_of_exit.i.i
  %659 = bitcast %struct.ObjHeader* %621 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %660 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %659, i64 0, i32 6
  %661 = load atomic i32, i32* %660 unordered, align 4
  switch i32 %661, label %when_next3.i.i [
    i32 0, label %when_case1.i.i
    i32 1, label %instance_of_exit8.i.i
  ]

when_case1.i.i:                                   ; preds = %when_case.i.i
  %662 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.collections.EmptyList.$instance#internal" unordered, align 8
  store %struct.ObjHeader* %662, %struct.ObjHeader** %13, align 8, !tbaa !11
  br label %epilogue

instance_of_exit8.i.i:                            ; preds = %when_case.i.i
  %663 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %643 monotonic, align 8
  %664 = ptrtoint %struct.TypeInfo* %663 to i64
  %665 = and i64 %664, -4
  %666 = inttoptr i64 %665 to %struct.TypeInfo*
  %667 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %666, i64 0, i32 0
  %668 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %667 monotonic, align 8
  %669 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %668, i64 0, i32 9
  %670 = load atomic i32, i32* %669 unordered, align 4
  %671 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %668, i64 0, i32 10
  %672 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %671 unordered, align 8
  %673 = and i32 %670, 43
  %674 = zext i32 %673 to i64
  %675 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %672, i64 %674, i32 0
  %676 = load atomic i32, i32* %675 unordered, align 4
  %677 = icmp eq i32 %676, 43
  br i1 %677, label %when_case6.i.i, label %when_next7.i.i

when_case6.i.i:                                   ; preds = %instance_of_exit8.i.i
  %678 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList#get(kotlin.Int){}1:0"(%struct.ObjHeader* nonnull %621, i32 0, %struct.ObjHeader** nonnull %627)
  br label %when_exit12.i.i

when_next7.i.i:                                   ; preds = %instance_of_exit8.i.i
  %679 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %680 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %679 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %681 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %680 unordered, align 8, !tbaa !11
  %682 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %681, i64 0, i32 2, i32 1
  %683 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %682, i64 32) #37
  %684 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, i64 1
  %685 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, i64 2
  %686 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %685 to %struct.ObjHeader*
  %687 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %685 to %struct.TypeInfo**
  %688 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %684 to i64*
  store i64 0, i64* %688, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %687, align 8, !tbaa !20
  %689 = bitcast %struct.ObjHeader** %628 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %685, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %689, align 8, !tbaa !11
  %690 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, i64 3
  %691 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %690 to %struct.ObjHeader**
  store %struct.ObjHeader* %621, %struct.ObjHeader** %691, align 8, !tbaa !11
  %692 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683, i64 4
  %693 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %692 to i32*
  store i32 0, i32* %693, align 8
  %694 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %685 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %695 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %694, i64 0, i32 3
  store i32 -1, i32* %695, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %685, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %689, align 8, !tbaa !11
  %696 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %687 monotonic, align 8
  %697 = ptrtoint %struct.TypeInfo* %696 to i64
  %698 = and i64 %697, -4
  %699 = inttoptr i64 %698 to %struct.TypeInfo*
  %700 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %699, i64 0, i32 0
  %701 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %700 monotonic, align 8
  %702 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %701, i64 0, i32 9
  %703 = load atomic i32, i32* %702 unordered, align 4
  %704 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %701, i64 0, i32 10
  %705 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %704 unordered, align 8
  %706 = and i32 %703, 160
  %707 = zext i32 %706 to i64
  %708 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %705, i64 %707, i32 2
  %709 = load atomic i8**, i8*** %708 unordered, align 8
  %710 = getelementptr i8*, i8** %709, i64 1
  %711 = bitcast i8** %710 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %712 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %711 unordered, align 8
  %713 = call %struct.ObjHeader* %712(%struct.ObjHeader* nonnull %686, %struct.ObjHeader** nonnull %629)
  br label %when_exit12.i.i

when_exit12.i.i:                                  ; preds = %when_next7.i.i, %when_case6.i.i
  %714 = phi %struct.ObjHeader* [ %678, %when_case6.i.i ], [ %713, %when_next7.i.i ]
  store %struct.ObjHeader* %714, %struct.ObjHeader** %"tmp0_$elem.i.i", align 8, !tbaa !11
  %715 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %716 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %715 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %717 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %716 unordered, align 8, !tbaa !11
  %718 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %717, i64 0, i32 2, i32 1
  %719 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %718, i64 32) #37
  %720 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %719, i64 1
  %721 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %719, i64 2
  %722 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721 to %struct.TypeInfo**
  %723 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %720 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %723, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %722, align 8, !tbaa !22
  %724 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %719, i64 3
  %725 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %724 to i32*
  store i32 1, i32* %725, align 8, !tbaa !9
  %726 = bitcast %struct.ObjHeader** %630 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %726, align 8, !tbaa !11
  %727 = bitcast %struct.ObjHeader** %"tmp1_$array.i.i" to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %727, align 8, !tbaa !11
  %728 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array.i.i" unordered, align 8
  store %struct.ObjHeader* %728, %struct.ObjHeader** %631, align 8, !tbaa !11
  %729 = bitcast %struct.ObjHeader** %"tmp0_$elem.i.i" to i64*
  %730 = load atomic i64, i64* %729 unordered, align 8
  %731 = bitcast %struct.ObjHeader** %632 to i64*
  store i64 %730, i64* %731, align 8, !tbaa !11
  %732 = bitcast %struct.ObjHeader* %728 to i64*
  %733 = load atomic volatile i64, i64* %732 monotonic, align 8
  %734 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %728, i64 2
  %735 = bitcast %struct.ObjHeader* %734 to i64*
  store i64 %730, i64* %735, align 8, !tbaa !11
  %736 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array.i.i" unordered, align 8
  store %struct.ObjHeader* %736, %struct.ObjHeader** %633, align 8, !tbaa !11
  %737 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#listOf(kotlin.Array<out|0:0>...){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>"(%struct.ObjHeader* %736, %struct.ObjHeader** nonnull %13)
  br label %epilogue

when_next3.i.i:                                   ; preds = %when_case.i.i
  %738 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Collection<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>"(%struct.ObjHeader* nonnull %621, %struct.ObjHeader** nonnull %13)
  br label %epilogue

instance_of_exit.i.i.i:                           ; preds = %instance_of_exit.i.i
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %159)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %159, i8 0, i32 32, i1 immarg false) #50
  %739 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %740 = bitcast %"class.kotlin::mm::ShadowStack"* %739 to i64*
  %741 = load atomic i64, i64* %740 unordered, align 8, !tbaa !14
  store i64 %741, i64* %163, align 8, !tbaa !16
  %742 = bitcast %"class.kotlin::mm::ShadowStack"* %739 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i6, %struct.ObjHeader*** %742, align 8, !tbaa !14
  store i32 0, i32* %165, align 8, !tbaa !18
  store i32 4, i32* %166, align 4, !tbaa !19
  %743 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %643 monotonic, align 8
  %744 = ptrtoint %struct.TypeInfo* %743 to i64
  %745 = and i64 %744, -4
  %746 = inttoptr i64 %745 to %struct.TypeInfo*
  %747 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %746, i64 0, i32 0
  %748 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %747 monotonic, align 8
  %749 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %748, i64 0, i32 9
  %750 = load atomic i32, i32* %749 unordered, align 4
  %751 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %748, i64 0, i32 10
  %752 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %751 unordered, align 8
  %753 = and i32 %750, 18
  %754 = zext i32 %753 to i64
  %755 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %752, i64 %754, i32 0
  %756 = load atomic i32, i32* %755 unordered, align 4
  %757 = icmp eq i32 %756, 18
  br i1 %757, label %when_case.i24.i.i, label %when_exit.i.i.i

when_case.i24.i.i:                                ; preds = %instance_of_exit.i.i.i
  %758 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Collection<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>"(%struct.ObjHeader* nonnull %621, %struct.ObjHeader** nonnull %634)
  br label %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"

when_exit.i.i.i:                                  ; preds = %instance_of_exit.i.i.i
  %759 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %760 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %759 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %761 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %760 unordered, align 8, !tbaa !11
  %762 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %761, i64 0, i32 2, i32 1
  %763 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %762, i64 64) #37
  %764 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %763, i64 1
  %765 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %763, i64 2
  %766 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765 to %struct.ObjHeader*
  %767 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765 to %struct.TypeInfo**
  %768 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %764 to i64*
  store i64 0, i64* %768, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %767, align 8, !tbaa !20
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %167, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %766, i32 10)
  %769 = bitcast [5 x %struct.ObjHeader*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %769)
  %.sub.i.i.i.i = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %769, i8 0, i32 40, i1 immarg false) #50
  %770 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 3
  %771 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 4
  %772 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %773 = bitcast [5 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %774 = bitcast %"class.kotlin::mm::ShadowStack"* %772 to i64*
  %775 = load atomic i64, i64* %774 unordered, align 8, !tbaa !14
  %776 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 1
  %777 = bitcast %struct.ObjHeader** %776 to i64*
  store i64 %775, i64* %777, align 8, !tbaa !16
  %778 = bitcast %"class.kotlin::mm::ShadowStack"* %772 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i, %struct.ObjHeader*** %778, align 8, !tbaa !14
  %779 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 2
  %780 = bitcast %struct.ObjHeader** %779 to i32*
  store i32 0, i32* %780, align 8, !tbaa !18
  %781 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %773, i64 0, i32 3
  store i32 5, i32* %781, align 4, !tbaa !19
  %782 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %783 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %782 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %784 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %783 unordered, align 8, !tbaa !11
  %785 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %784, i64 0, i32 2, i32 1
  %786 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %785, i64 32) #37
  %787 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 1
  %788 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 2
  %789 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %struct.ObjHeader*
  %790 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %struct.TypeInfo**
  %791 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %787 to i64*
  store i64 0, i64* %791, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %790, align 8, !tbaa !20
  %792 = bitcast %struct.ObjHeader** %770 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %792, align 8, !tbaa !11
  %793 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 3
  %794 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %793 to %struct.ObjHeader**
  store %struct.ObjHeader* %621, %struct.ObjHeader** %794, align 8, !tbaa !11
  %795 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 4
  %796 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795 to i32*
  store i32 0, i32* %796, align 8
  %797 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %798 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %797, i64 0, i32 3
  store i32 -1, i32* %798, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %792, align 8, !tbaa !11
  %799 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %763, i64 7
  %800 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %799 to i32*
  %801 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %802 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %801, i64 0, i32 6
  br label %loop_check.i.i.i.i

while_loop.i.i.i.i:                               ; preds = %loop_check.i.i.i.i
  %803 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %804 = and i8 %803, 1
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i, label %806

806:                                              ; preds = %while_loop.i.i.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i:    ; preds = %806, %while_loop.i.i.i.i
  %807 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %790 monotonic, align 8
  %808 = ptrtoint %struct.TypeInfo* %807 to i64
  %809 = and i64 %808, -4
  %810 = inttoptr i64 %809 to %struct.TypeInfo*
  %811 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %810, i64 0, i32 0
  %812 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %811 monotonic, align 8
  %813 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %812, i64 0, i32 9
  %814 = load atomic i32, i32* %813 unordered, align 4
  %815 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %812, i64 0, i32 10
  %816 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %815 unordered, align 8
  %817 = and i32 %814, 160
  %818 = zext i32 %817 to i64
  %819 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %816, i64 %818, i32 2
  %820 = load atomic i8**, i8*** %819 unordered, align 8
  %821 = getelementptr i8*, i8** %820, i64 1
  %822 = bitcast i8** %821 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %823 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %822 unordered, align 8
  %824 = call %struct.ObjHeader* %823(%struct.ObjHeader* nonnull %789, %struct.ObjHeader** nonnull %771)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %766)
  %825 = load atomic i32, i32* %800 unordered, align 8
  %826 = load atomic i32, i32* %802 unordered, align 4
  %827 = add i32 %825, %826
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %766, i32 %827, %struct.ObjHeader* %824)
  br label %loop_check.i.i.i.i

loop_check.i.i.i.i:                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i, %when_exit.i.i.i
  %828 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %790 monotonic, align 8
  %829 = ptrtoint %struct.TypeInfo* %828 to i64
  %830 = and i64 %829, -4
  %831 = inttoptr i64 %830 to %struct.TypeInfo*
  %832 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %831, i64 0, i32 0
  %833 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %832 monotonic, align 8
  %834 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %833, i64 0, i32 9
  %835 = load atomic i32, i32* %834 unordered, align 4
  %836 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %833, i64 0, i32 10
  %837 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %836 unordered, align 8
  %838 = and i32 %835, 160
  %839 = zext i32 %838 to i64
  %840 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %837, i64 %839, i32 2
  %841 = bitcast i8*** %840 to i1 (%struct.ObjHeader*)***
  %842 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %841 unordered, align 8
  %843 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %842 unordered, align 8
  %844 = call zeroext i1 %843(%struct.ObjHeader* nonnull %789)
  br i1 %844, label %while_loop.i.i.i.i, label %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i"

"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i": ; preds = %loop_check.i.i.i.i
  %845 = bitcast %struct.ObjHeader** %634 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %765, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %845, align 8, !tbaa !11
  %846 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %847 = load atomic i64, i64* %777 unordered, align 8, !tbaa !16
  %848 = bitcast %"class.kotlin::mm::ShadowStack"* %846 to i64*
  store i64 %847, i64* %848, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %769)
  br label %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"

"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i": ; preds = %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i", %when_case.i24.i.i
  %849 = phi %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* [ %17, %when_case.i24.i.i ], [ %17, %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i" ]
  %850 = phi %struct.ObjHeader* [ %758, %when_case.i24.i.i ], [ %766, %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i" ]
  store %struct.ObjHeader* %850, %struct.ObjHeader** %634, align 8, !tbaa !11
  %851 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %849, i64 0, i32 1, i32 5
  %852 = load atomic i64, i64* %163 unordered, align 8, !tbaa !16
  %853 = bitcast %"class.kotlin::mm::ShadowStack"* %851 to i64*
  store i64 %852, i64* %853, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %159)
  %854 = bitcast [10 x %struct.ObjHeader*]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %854)
  %.sub.i.i.i = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(80) %854, i8 0, i32 80, i1 immarg false) #50
  %"tmp0_$elem.i.i.i" = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 4
  %"tmp1_$array.i.i.i" = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 6
  %855 = bitcast [10 x %struct.ObjHeader*]* %7 to %struct.FrameOverlay.6*
  %856 = load atomic i64, i64* %853 unordered, align 8, !tbaa !14
  %857 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 1
  %858 = bitcast %struct.ObjHeader** %857 to i64*
  store i64 %856, i64* %858, align 8, !tbaa !16
  %859 = bitcast %"class.kotlin::mm::ShadowStack"* %851 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %859, align 8, !tbaa !14
  %860 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 2
  %861 = bitcast %struct.ObjHeader** %860 to i32*
  store i32 0, i32* %861, align 8, !tbaa !18
  %862 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %855, i64 0, i32 3
  store i32 10, i32* %862, align 4, !tbaa !19
  %863 = bitcast %struct.ObjHeader* %850 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %864 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %863, i64 0, i32 6
  %865 = load atomic i32, i32* %864 unordered, align 4
  switch i32 %865, label %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i" [
    i32 0, label %when_case.i.i.i
    i32 1, label %when_case1.i.i.i
  ]

when_case.i.i.i:                                  ; preds = %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"
  %866 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.collections.EmptyList.$instance#internal" unordered, align 8
  store %struct.ObjHeader* %866, %struct.ObjHeader** %13, align 8, !tbaa !11
  br label %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i"

when_case1.i.i.i:                                 ; preds = %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"
  %867 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 9
  %868 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 8
  %869 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 7
  %870 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 5
  %871 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 3
  %872 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList#get(kotlin.Int){}1:0"(%struct.ObjHeader* %850, i32 0, %struct.ObjHeader** nonnull %871)
  store %struct.ObjHeader* %872, %struct.ObjHeader** %"tmp0_$elem.i.i.i", align 8, !tbaa !11
  %873 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %874 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %873 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %875 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %874 unordered, align 8, !tbaa !11
  %876 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %875, i64 0, i32 2, i32 1
  %877 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %876, i64 32) #37
  %878 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %877, i64 1
  %879 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %877, i64 2
  %880 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %879 to %struct.TypeInfo**
  %881 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %878 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %881, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %880, align 8, !tbaa !22
  %882 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %877, i64 3
  %883 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %882 to i32*
  store i32 1, i32* %883, align 8, !tbaa !9
  %884 = bitcast %struct.ObjHeader** %870 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %879, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %884, align 8, !tbaa !11
  %885 = bitcast %struct.ObjHeader** %"tmp1_$array.i.i.i" to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %879, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %885, align 8, !tbaa !11
  %886 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array.i.i.i" unordered, align 8
  store %struct.ObjHeader* %886, %struct.ObjHeader** %869, align 8, !tbaa !11
  %887 = bitcast %struct.ObjHeader** %"tmp0_$elem.i.i.i" to i64*
  %888 = load atomic i64, i64* %887 unordered, align 8
  %889 = bitcast %struct.ObjHeader** %868 to i64*
  store i64 %888, i64* %889, align 8, !tbaa !11
  %890 = bitcast %struct.ObjHeader* %886 to i64*
  %891 = load atomic volatile i64, i64* %890 monotonic, align 8
  %892 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %886, i64 2
  %893 = bitcast %struct.ObjHeader* %892 to i64*
  store i64 %888, i64* %893, align 8, !tbaa !11
  %894 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array.i.i.i" unordered, align 8
  store %struct.ObjHeader* %894, %struct.ObjHeader** %867, align 8, !tbaa !11
  %895 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#listOf(kotlin.Array<out|0:0>...){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>"(%struct.ObjHeader* %894, %struct.ObjHeader** nonnull %13)
  br label %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i"

"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i": ; preds = %when_case1.i.i.i, %when_case.i.i.i, %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"
  %896 = phi %struct.ObjHeader* [ %866, %when_case.i.i.i ], [ %895, %when_case1.i.i.i ], [ %850, %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i" ]
  store %struct.ObjHeader* %896, %struct.ObjHeader** %13, align 8, !tbaa !11
  %897 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %898 = load atomic i64, i64* %858 unordered, align 8, !tbaa !16
  %899 = bitcast %"class.kotlin::mm::ShadowStack"* %897 to i64*
  store i64 %898, i64* %899, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %854)
  br label %epilogue

epilogue:                                         ; preds = %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i", %when_next3.i.i, %when_exit12.i.i, %when_case1.i.i
  %900 = phi %struct.ObjHeader* [ %896, %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i" ], [ %662, %when_case1.i.i ], [ %737, %when_exit12.i.i ], [ %738, %when_next3.i.i ]
  %901 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %902 = bitcast %"class.kotlin::mm::ShadowStack"* %901 to i64*
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %626)
  store %struct.ObjHeader* %900, %struct.ObjHeader** %13, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %82)
  %903 = load atomic i64, i64* %23 unordered, align 8, !tbaa !16
  store i64 %903, i64* %902, align 8, !tbaa !14
  ret void
}
