define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [20 x %struct.ObjHeader*], align 8
  %1 = alloca [16 x i8], align 16
  %2 = alloca [4 x %struct.ObjHeader*], align 8
  %3 = alloca [8 x %struct.ObjHeader*], align 8
  %4 = alloca [11 x %struct.ObjHeader*], align 8
  %5 = alloca [4 x %struct.ObjHeader*], align 8
  %6 = alloca [6 x %struct.ObjHeader*], align 8
  %7 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %7, i64 0, i64 0
  %8 = bitcast [4 x %struct.ObjHeader*]* %7 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %8, i8 0, i32 32, i1 immarg false) #50
  %9 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %7, i64 0, i64 3
  %10 = alloca %"kclassbody:LoopBenchmark#internal", align 8
  %11 = getelementptr inbounds %"kclassbody:LoopBenchmark#internal", %"kclassbody:LoopBenchmark#internal"* %10, i64 0, i32 1
  %12 = bitcast %struct.ObjHeader** %11 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(24) %12, i8 0, i32 16, i1 immarg false) #50
  %objHeader = getelementptr inbounds %"kclassbody:LoopBenchmark#internal", %"kclassbody:LoopBenchmark#internal"* %10, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:LoopBenchmark#internal", %"kclassbody:LoopBenchmark#internal"* %10, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:LoopBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %13 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !11
  %14 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %15 = bitcast [4 x %struct.ObjHeader*]* %7 to %struct.FrameOverlay.6*
  %16 = bitcast %"class.kotlin::mm::ShadowStack"* %14 to i64*
  %17 = load atomic i64, i64* %16 unordered, align 8, !tbaa !14
  %18 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %7, i64 0, i64 1
  %19 = bitcast %struct.ObjHeader** %18 to i64*
  store i64 %17, i64* %19, align 8, !tbaa !16
  %20 = bitcast %"class.kotlin::mm::ShadowStack"* %14 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %20, align 8, !tbaa !14
  %21 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %7, i64 0, i64 2
  %22 = bitcast %struct.ObjHeader** %21 to i32*
  store i32 0, i32* %22, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %15, i64 0, i32 3
  store i32 4, i32* %23, align 4, !tbaa !19
  %24 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %Kotlin_mm_safePointFunctionPrologue.exit, label %27

27:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %27, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %9, align 8, !tbaa !11
  %28 = bitcast [11 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %28)
  %.sub.i2 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(88) %28, i8 0, i32 88, i1 immarg false) #50
  %29 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %30 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %31 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %32 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %33 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 8
  %34 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 9
  %35 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 10
  %36 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %37 = bitcast [11 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %38 = bitcast %"class.kotlin::mm::ShadowStack"* %36 to i64*
  %39 = load atomic i64, i64* %38 unordered, align 8, !tbaa !14
  %40 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %41 = bitcast %struct.ObjHeader** %40 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !16
  %42 = bitcast %"class.kotlin::mm::ShadowStack"* %36 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %42, align 8, !tbaa !14
  %43 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %44 = bitcast %struct.ObjHeader** %43 to i32*
  store i32 0, i32* %44, align 8, !tbaa !18
  %45 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %37, i64 0, i32 3
  store i32 11, i32* %45, align 4, !tbaa !19
  %46 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %47 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %46 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %48 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %47 unordered, align 8, !tbaa !11
  %49 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %48, i64 0, i32 2, i32 1
  %50 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %49, i64 64) #37
  %51 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50, i64 1
  %52 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50, i64 2
  %53 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to %struct.ObjHeader*
  %54 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to %struct.TypeInfo**
  %55 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51 to i64*
  store i64 0, i64* %55, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %54, align 8, !tbaa !20
  %56 = bitcast %struct.ObjHeader** %29 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %56, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %53, i32 10000)
  %57 = bitcast [8 x %struct.ObjHeader*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %57)
  %.sub.i.i3 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(64) %57, i8 0, i32 64, i1 immarg false) #50
  %58 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 3
  %59 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 6
  %60 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %61 = bitcast [8 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
  %62 = bitcast %"class.kotlin::mm::ShadowStack"* %60 to i64*
  %63 = load atomic i64, i64* %62 unordered, align 8, !tbaa !14
  %64 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %65 = bitcast %struct.ObjHeader** %64 to i64*
  store i64 %63, i64* %65, align 8, !tbaa !16
  %66 = bitcast %"class.kotlin::mm::ShadowStack"* %60 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i3, %struct.ObjHeader*** %66, align 8, !tbaa !14
  %67 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %68 = bitcast %struct.ObjHeader** %67 to i32*
  store i32 0, i32* %68, align 8, !tbaa !18
  %69 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %61, i64 0, i32 3
  store i32 8, i32* %69, align 4, !tbaa !19
  %70 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %71 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %70 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %72 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %71 unordered, align 8, !tbaa !11
  %73 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %72, i64 0, i32 2, i32 1
  %74 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %73, i64 32) #37
  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 1
  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 2
  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.ObjHeader*
  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.TypeInfo**
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i64*
  store i64 0, i64* %79, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %78, align 8, !tbaa !20
  %80 = bitcast %struct.ObjHeader** %58 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %80, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}"(%struct.ObjHeader* nonnull %77, i32 10000) #37
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %80, align 8, !tbaa !11
  %81 = bitcast [4 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %81)
  %.sub.i.i.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %81, i8 0, i32 32, i1 immarg false) #50
  %82 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %83 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %84 = bitcast %"class.kotlin::mm::ShadowStack"* %82 to i64*
  %85 = load atomic i64, i64* %84 unordered, align 8, !tbaa !14
  %86 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %87 = bitcast %struct.ObjHeader** %86 to i64*
  store i64 %85, i64* %87, align 8, !tbaa !16
  %88 = bitcast %"class.kotlin::mm::ShadowStack"* %82 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %88, align 8, !tbaa !14
  %89 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %90 = bitcast %struct.ObjHeader** %89 to i32*
  store i32 0, i32* %90, align 8, !tbaa !18
  %91 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %83, i64 0, i32 3
  store i32 4, i32* %91, align 4, !tbaa !19
  %92 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %78 monotonic, align 8
  %93 = ptrtoint %struct.TypeInfo* %92 to i64
  %94 = and i64 %93, -4
  %95 = inttoptr i64 %94 to %struct.TypeInfo*
  %96 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %95, i64 0, i32 0
  %97 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %96 monotonic, align 8
  %98 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %97, i64 0, i32 9
  %99 = load atomic i32, i32* %98 unordered, align 4
  %100 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %97, i64 0, i32 10
  %101 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %100 unordered, align 8
  %102 = and i32 %99, 18
  %103 = zext i32 %102 to i64
  %104 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %101, i64 %103, i32 0
  %105 = load atomic i32, i32* %104 unordered, align 4
  %106 = icmp eq i32 %105, 18
  br i1 %106, label %when_case.i.i.i, label %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"

when_case.i.i.i:                                  ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %107 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %108 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i64*
  %109 = load atomic volatile i64, i64* %108 monotonic, align 8
  %110 = and i64 %109, -4
  %111 = inttoptr i64 %110 to i64*
  %112 = load atomic volatile i64, i64* %111 monotonic, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %115 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %114 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %116 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %115 unordered, align 8, !tbaa !11
  %117 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %116, i64 0, i32 2, i32 1
  %118 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %117, i64 24) #37
  %119 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, i64 1
  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, i64 2
  %121 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to %struct.ObjHeader*
  %122 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to %struct.TypeInfo**
  %123 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119 to i64*
  store i64 0, i64* %123, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.internal.KClassImpl#internal", i64 0, i32 0), %struct.TypeInfo** %122, align 8, !tbaa !20
  %124 = bitcast %struct.ObjHeader** %107 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !11
  %125 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, i64 3
  %126 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125 to i8**
  store i8* %113, i8** %126, align 8
  call fastcc void @ThrowInvalidReceiverTypeException(%struct.ObjHeader* nonnull %121) #49
  unreachable

"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i": ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %127 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 7
  %128 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 5
  %129 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 4
  %130 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %131 = load atomic i64, i64* %87 unordered, align 8, !tbaa !16
  %132 = bitcast %"class.kotlin::mm::ShadowStack"* %130 to i64*
  store i64 %131, i64* %132, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %81)
  %133 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %134 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %133 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %135 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %134 unordered, align 8, !tbaa !11
  %136 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %135, i64 0, i32 2, i32 1
  %137 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %136, i64 64) #37
  %138 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 1
  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 2
  %140 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to %struct.ObjHeader*
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to %struct.TypeInfo**
  %142 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138 to i64*
  store i64 0, i64* %142, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %141, align 8, !tbaa !20
  %143 = bitcast %struct.ObjHeader** %129 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %143, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %140, i32 10)
  %144 = call %struct.ObjHeader* @"kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator"(%struct.ObjHeader* nonnull %77, %struct.ObjHeader** nonnull %128)
  %145 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %144, i64 0, i32 0
  %146 = bitcast %struct.ObjHeader** %127 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %147 = bitcast [6 x %struct.ObjHeader*]* %6 to i8*
  %.sub.i1.i.i = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %6, i64 0, i64 0
  %148 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %6, i64 0, i64 3
  %149 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %6, i64 0, i64 4
  %150 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %6, i64 0, i64 5
  %151 = bitcast [6 x %struct.ObjHeader*]* %6 to %struct.FrameOverlay.6*
  %152 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %6, i64 0, i64 1
  %153 = bitcast %struct.ObjHeader** %152 to i64*
  %154 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %6, i64 0, i64 2
  %155 = bitcast %struct.ObjHeader** %154 to i32*
  %156 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %151, i64 0, i32 3
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %158 = bitcast [4 x %struct.ObjHeader*]* %5 to i8*
  %.sub.i.i.i.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 0
  %159 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 3
  %160 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %161 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 1
  %162 = bitcast %struct.ObjHeader** %161 to i64*
  %163 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 2
  %164 = bitcast %struct.ObjHeader** %163 to i32*
  %165 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %160, i64 0, i32 3
  %166 = bitcast %struct.ObjHeader** %159 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %167 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %168 = bitcast [20 x %struct.ObjHeader*]* %0 to i8*
  %.sub.i.i.i.i.i = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 0
  %169 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %170 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %171 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %172 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %173 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %174 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 9
  %175 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 10
  %176 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 11
  %177 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 12
  %178 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 13
  %179 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 14
  %180 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 15
  %181 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 16
  %182 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 17
  %183 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 18
  %184 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 19
  %185 = bitcast [20 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %186 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %187 = bitcast %struct.ObjHeader** %186 to i64*
  %188 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %189 = bitcast %struct.ObjHeader** %188 to i32*
  %190 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %185, i64 0, i32 3
  %191 = getelementptr inbounds [20 x %struct.ObjHeader*], [20 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %192 = bitcast %struct.ObjHeader** %149 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %193 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 7
  %194 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %193 to i32*
  %195 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %196 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %195, i64 0, i32 6
  br label %loop_check.i.i

while_loop.i.i:                                   ; preds = %loop_check.i.i
  %197 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %200

200:                                              ; preds = %while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %200, %while_loop.i.i
  %201 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %145 monotonic, align 8
  %202 = ptrtoint %struct.TypeInfo* %201 to i64
  %203 = and i64 %202, -4
  %204 = inttoptr i64 %203 to %struct.TypeInfo*
  %205 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %204, i64 0, i32 0
  %206 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %205 monotonic, align 8
  %207 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %206, i64 0, i32 9
  %208 = load atomic i32, i32* %207 unordered, align 4
  %209 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %206, i64 0, i32 10
  %210 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %209 unordered, align 8
  %211 = and i32 %208, 160
  %212 = zext i32 %211 to i64
  %213 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %210, i64 %212, i32 2
  %214 = load atomic i8**, i8*** %213 unordered, align 8
  %215 = getelementptr i8*, i8** %214, i64 1
  %216 = bitcast i8** %215 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %217 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %216 unordered, align 8
  %218 = call %struct.ObjHeader* %217(%struct.ObjHeader* nonnull %144, %struct.ObjHeader** nonnull %59)
  %219 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %218, i64 1
  %220 = bitcast %struct.ObjHeader* %219 to i32*
  %221 = load atomic i32, i32* %220 unordered, align 4
  %222 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %223 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %222 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %224 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %223 unordered, align 8, !tbaa !11
  %225 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %224, i64 0, i32 2, i32 1
  %226 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %225, i64 32) #37
  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 1
  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 2
  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to %struct.ObjHeader*
  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to %struct.TypeInfo**
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to i64*
  store i64 0, i64* %231, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Value#internal", i64 0, i32 0), %struct.TypeInfo** %230, align 8, !tbaa !20
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %146, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %147)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %147, i8 0, i32 48, i1 immarg false) #50
  %232 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %233 = bitcast %"class.kotlin::mm::ShadowStack"* %232 to i64*
  %234 = load atomic i64, i64* %233 unordered, align 8, !tbaa !14
  store i64 %234, i64* %153, align 8, !tbaa !16
  %235 = bitcast %"class.kotlin::mm::ShadowStack"* %232 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i1.i.i, %struct.ObjHeader*** %235, align 8, !tbaa !14
  store i32 0, i32* %155, align 8, !tbaa !18
  store i32 6, i32* %156, align 4, !tbaa !19
  %236 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 4
  %237 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %236 to i32*
  store i32 %221, i32* %237, align 8
  %238 = load atomic i32, i32* %237 unordered, align 8
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %157) #37
  call void (i8*, i64, i8*, ...) @_ZN5konan8snprintfEPcmPKcz(i8* nonnull %157, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.849, i64 0, i64 0), i32 %238)
  %239 = call fastcc %struct.ObjHeader* @CreateStringFromCString(i8* nonnull %157, %struct.ObjHeader** nonnull %148)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %157) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %158)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %158, i8 0, i32 32, i1 immarg false) #50
  %240 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %241 = bitcast %"class.kotlin::mm::ShadowStack"* %240 to i64*
  %242 = load atomic i64, i64* %241 unordered, align 8, !tbaa !14
  store i64 %242, i64* %162, align 8, !tbaa !16
  %243 = bitcast %"class.kotlin::mm::ShadowStack"* %240 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i, %struct.ObjHeader*** %243, align 8, !tbaa !14
  store i32 0, i32* %164, align 8, !tbaa !18
  store i32 4, i32* %165, align 4, !tbaa !19
  %244 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %245 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %244 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %246 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %245 unordered, align 8, !tbaa !11
  %247 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %246, i64 0, i32 2, i32 1
  %248 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %247, i64 32) #37
  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 1
  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 2
  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to %struct.ObjHeader*
  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to %struct.TypeInfo**
  %253 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to i64*
  store i64 0, i64* %253, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.text.StringBuilder#internal", i64 0, i32 0), %struct.TypeInfo** %252, align 8, !tbaa !20
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %166, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %81)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %81, i8 0, i32 32, i1 immarg false) #50
  %254 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %255 = bitcast %"class.kotlin::mm::ShadowStack"* %254 to i64*
  %256 = load atomic i64, i64* %255 unordered, align 8, !tbaa !14
  store i64 %256, i64* %87, align 8, !tbaa !16
  %257 = bitcast %"class.kotlin::mm::ShadowStack"* %254 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %257, align 8, !tbaa !14
  store i32 0, i32* %90, align 8, !tbaa !18
  store i32 4, i32* %91, align 4, !tbaa !19
  %258 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %239, i64 0, i32 0
  %259 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %258 monotonic, align 8
  %260 = ptrtoint %struct.TypeInfo* %259 to i64
  %261 = and i64 %260, -4
  %262 = inttoptr i64 %261 to %struct.TypeInfo*
  %263 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %262, i64 0, i32 0
  %264 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %263 monotonic, align 8
  %265 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %264, i64 0, i32 9
  %266 = load atomic i32, i32* %265 unordered, align 4
  %267 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %264, i64 0, i32 10
  %268 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %267 unordered, align 8
  %269 = and i32 %266, 25
  %270 = zext i32 %269 to i64
  %271 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %268, i64 %270, i32 2
  %272 = bitcast i8*** %271 to i32 (%struct.ObjHeader*)***
  %273 = load atomic i32 (%struct.ObjHeader*)**, i32 (%struct.ObjHeader*)*** %272 unordered, align 8
  %274 = load atomic i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %273 unordered, align 8
  %275 = call i32 %274(%struct.ObjHeader* %239)
  call fastcc void @"kfun:kotlin.text.StringBuilder#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %251, i32 %275)
  %276 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?){}kotlin.text.StringBuilder"(%struct.ObjHeader* nonnull %251, %struct.ObjHeader* %239, %struct.ObjHeader** nonnull %167)
  %277 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %278 = load atomic i64, i64* %87 unordered, align 8, !tbaa !16
  %279 = bitcast %"class.kotlin::mm::ShadowStack"* %277 to i64*
  store i64 %278, i64* %279, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %81)
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %168)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(160) %168, i8 0, i32 160, i1 immarg false) #50
  %280 = load atomic i64, i64* %279 unordered, align 8, !tbaa !14
  store i64 %280, i64* %187, align 8, !tbaa !16
  %281 = bitcast %"class.kotlin::mm::ShadowStack"* %277 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i.i, %struct.ObjHeader*** %281, align 8, !tbaa !14
  store i32 0, i32* %189, align 8, !tbaa !18
  store i32 20, i32* %190, align 4, !tbaa !19
  %282 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 4
  %283 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %282 to i32*
  %284 = load atomic i32, i32* %283 unordered, align 8
  %285 = icmp slt i32 %284, 2
  br i1 %285, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit.i.i.i.i.i

when_exit.i.i.i.i.i:                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %286 = add i32 %284, -1
  %287 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 3
  %288 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %287 to %struct.ObjHeader**
  %289 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %289, %struct.ObjHeader** %191, align 8, !tbaa !11
  %290 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %289, i64 1
  %291 = bitcast %struct.ObjHeader* %290 to i32*
  %292 = load atomic i32, i32* %291 unordered, align 8, !tbaa !9
  %.not = icmp eq i32 %292, 0
  br i1 %.not, label %293, label %Kotlin_CharArray_get.exit.i.i.i.i.i

293:                                              ; preds = %when_exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit.i.i.i.i.i:              ; preds = %when_exit.i.i.i.i.i
  %294 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %289, i64 2
  %295 = bitcast %struct.ObjHeader* %294 to i16*
  %296 = load atomic i16, i16* %295 unordered, align 2, !tbaa !27
  %297 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %297, %struct.ObjHeader** %169, align 8, !tbaa !11
  %298 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %297, i64 1
  %299 = bitcast %struct.ObjHeader* %298 to i32*
  %300 = load atomic i32, i32* %299 unordered, align 8, !tbaa !9
  %301 = icmp ugt i32 %300, %286
  br i1 %301, label %Kotlin_CharArray_get.exit80.i.i.i.i.i, label %302

302:                                              ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit80.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  %303 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %297, i64 2
  %304 = bitcast %struct.ObjHeader* %303 to i16*
  %305 = sext i32 %286 to i64
  %306 = getelementptr inbounds i16, i16* %304, i64 %305
  %307 = load atomic i16, i16* %306 unordered, align 2, !tbaa !27
  br label %loop_check.i.i.i.i.i

while_loop.i.i.i.i.i:                             ; preds = %loop_check.i.i.i.i.i
  %308 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %309 = and i8 %308, 1
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i, label %311

311:                                              ; preds = %while_loop.i.i.i.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i:  ; preds = %311, %while_loop.i.i.i.i.i
  %312 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %312, %struct.ObjHeader** %170, align 8, !tbaa !11
  %313 = add i32 %front.1.i.i.i.i.i, 1
  %314 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %312, i64 1
  %315 = bitcast %struct.ObjHeader* %314 to i32*
  %316 = load atomic i32, i32* %315 unordered, align 8, !tbaa !9
  %317 = icmp ugt i32 %316, %313
  br i1 %317, label %Kotlin_CharArray_get.exit82.i.i.i.i.i, label %318

318:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit82.i.i.i.i.i:            ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  %319 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %312, i64 2
  %320 = bitcast %struct.ObjHeader* %319 to i16*
  %321 = sext i32 %313 to i64
  %322 = getelementptr inbounds i16, i16* %320, i64 %321
  %323 = load atomic i16, i16* %322 unordered, align 2, !tbaa !27
  %324 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %324, %struct.ObjHeader** %171, align 8, !tbaa !11
  %325 = add i32 %end.1.i.i.i.i.i, -1
  %326 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %324, i64 1
  %327 = bitcast %struct.ObjHeader* %326 to i32*
  %328 = load atomic i32, i32* %327 unordered, align 8, !tbaa !9
  %329 = icmp ugt i32 %328, %325
  br i1 %329, label %Kotlin_CharArray_get.exit84.i.i.i.i.i, label %330

330:                                              ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit84.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  %331 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %324, i64 2
  %332 = bitcast %struct.ObjHeader* %331 to i16*
  %333 = sext i32 %325 to i64
  %334 = getelementptr inbounds i16, i16* %332, i64 %333
  %335 = load atomic i16, i16* %334 unordered, align 2, !tbaa !27
  %336 = and i16 %323, -1024
  %337 = icmp eq i16 %336, -9216
  %or.cond = and i1 %allowFrontSurrogate.1.i.i.i.i.i, %337
  %338 = and i16 %frontLeadingChar.1.i.i.i.i.i, -1024
  %339 = icmp eq i16 %338, -10240
  %or.cond175 = and i1 %or.cond, %339
  br i1 %or.cond175, label %when_exit19.i.i.i.i.i, label %when_exit20.i.i.i.i.i.thread

when_exit19.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %340 = load atomic i32, i32* %283 unordered, align 8
  %341 = icmp slt i32 %340, 3
  br i1 %341, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit20.i.i.i.i.i

when_exit20.i.i.i.i.i:                            ; preds = %when_exit19.i.i.i.i.i
  %342 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %343 = icmp eq i16 %342, -9216
  %or.cond177 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %343
  br i1 %or.cond177, label %when_exit38.i.i.i.i.i, label %when_exit38.i.i.i.i.i.thread

when_exit20.i.i.i.i.i.thread:                     ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %344 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %345 = icmp eq i16 %344, -9216
  %or.cond177178 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %345
  br i1 %or.cond177178, label %when_exit48.i.i.i.i.i, label %when_exit48.i.i.i.i.i.thread

when_exit48.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i.thread
  %346 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  br label %when_case31.i.i.i.i.i

when_exit38.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i
  %347 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  br label %when_case33.i.i.i.i.i

when_exit38.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i
  %348 = and i16 %335, -1024
  %349 = icmp eq i16 %348, -10240
  %350 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  br i1 %349, label %when_case29.i.i.i.i.i, label %when_case33.i.i.i.i.i

when_case29.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i
  store %struct.ObjHeader* %350, %struct.ObjHeader** %172, align 8, !tbaa !11
  %351 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %350, i64 1
  %352 = bitcast %struct.ObjHeader* %351 to i32*
  %353 = load atomic i32, i32* %352 unordered, align 8, !tbaa !9
  %354 = icmp ugt i32 %353, %end.1.i.i.i.i.i
  br i1 %354, label %Kotlin_CharArray_set.exit90.i.i.i.i.i, label %355

355:                                              ; preds = %when_case29.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit90.i.i.i.i.i:            ; preds = %when_case29.i.i.i.i.i
  %356 = bitcast %struct.ObjHeader* %350 to i64*
  %357 = load atomic volatile i64, i64* %356 monotonic, align 8
  %358 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %350, i64 2
  %359 = bitcast %struct.ObjHeader* %358 to i16*
  %360 = sext i32 %end.1.i.i.i.i.i to i64
  %361 = getelementptr inbounds i16, i16* %359, i64 %360
  store i16 %323, i16* %361, align 2, !tbaa !27
  %362 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %362, %struct.ObjHeader** %173, align 8, !tbaa !11
  %363 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %362, i64 1
  %364 = bitcast %struct.ObjHeader* %363 to i32*
  %365 = load atomic i32, i32* %364 unordered, align 8, !tbaa !9
  %366 = icmp ugt i32 %365, %325
  br i1 %366, label %Kotlin_CharArray_set.exit92.i.i.i.i.i, label %367

367:                                              ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit92.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  %368 = bitcast %struct.ObjHeader* %362 to i64*
  %369 = load atomic volatile i64, i64* %368 monotonic, align 8
  %370 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %362, i64 2
  %371 = bitcast %struct.ObjHeader* %370 to i16*
  %372 = getelementptr inbounds i16, i16* %371, i64 %333
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %372, align 2, !tbaa !27
  %373 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %373, %struct.ObjHeader** %174, align 8, !tbaa !11
  %374 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %373, i64 1
  %375 = bitcast %struct.ObjHeader* %374 to i32*
  %376 = load atomic i32, i32* %375 unordered, align 8, !tbaa !9
  %377 = icmp ugt i32 %376, %front.1.i.i.i.i.i
  br i1 %377, label %Kotlin_CharArray_set.exit91.i.i.i.i.i, label %378

378:                                              ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit91.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  %379 = bitcast %struct.ObjHeader* %373 to i64*
  %380 = load atomic volatile i64, i64* %379 monotonic, align 8
  %381 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %373, i64 2
  %382 = bitcast %struct.ObjHeader* %381 to i16*
  %383 = sext i32 %front.1.i.i.i.i.i to i64
  %384 = getelementptr inbounds i16, i16* %382, i64 %383
  store i16 %335, i16* %384, align 2, !tbaa !27
  %385 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %385, %struct.ObjHeader** %175, align 8, !tbaa !11
  %386 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %385, i64 1
  %387 = bitcast %struct.ObjHeader* %386 to i32*
  %388 = load atomic i32, i32* %387 unordered, align 8, !tbaa !9
  %389 = icmp ugt i32 %388, %313
  br i1 %389, label %Kotlin_CharArray_set.exit89.i.i.i.i.i, label %390

390:                                              ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit89.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  %391 = bitcast %struct.ObjHeader* %385 to i64*
  %392 = load atomic volatile i64, i64* %391 monotonic, align 8
  %393 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %385, i64 2
  %394 = bitcast %struct.ObjHeader* %393 to i16*
  %395 = getelementptr inbounds i16, i16* %394, i64 %321
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %395, align 2, !tbaa !27
  %396 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %396, %struct.ObjHeader** %176, align 8, !tbaa !11
  %397 = add i32 %front.1.i.i.i.i.i, 2
  %398 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %396, i64 1
  %399 = bitcast %struct.ObjHeader* %398 to i32*
  %400 = load atomic i32, i32* %399 unordered, align 8, !tbaa !9
  %401 = icmp ugt i32 %400, %397
  br i1 %401, label %Kotlin_CharArray_get.exit88.i.i.i.i.i, label %402

402:                                              ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit88.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  %403 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %396, i64 2
  %404 = bitcast %struct.ObjHeader* %403 to i16*
  %405 = sext i32 %397 to i64
  %406 = getelementptr inbounds i16, i16* %404, i64 %405
  %407 = load atomic i16, i16* %406 unordered, align 2, !tbaa !27
  %408 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %408, %struct.ObjHeader** %177, align 8, !tbaa !11
  %409 = add i32 %end.1.i.i.i.i.i, -2
  %410 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %408, i64 1
  %411 = bitcast %struct.ObjHeader* %410 to i32*
  %412 = load atomic i32, i32* %411 unordered, align 8, !tbaa !9
  %413 = icmp ugt i32 %412, %409
  br i1 %413, label %Kotlin_CharArray_get.exit87.i.i.i.i.i, label %414

414:                                              ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit87.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  %415 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %408, i64 2
  %416 = bitcast %struct.ObjHeader* %415 to i16*
  %417 = sext i32 %409 to i64
  %418 = getelementptr inbounds i16, i16* %416, i64 %417
  %419 = load atomic i16, i16* %418 unordered, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_exit48.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i.thread
  %420 = and i16 %335, -1024
  %421 = icmp eq i16 %420, -10240
  %422 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  br i1 %421, label %when_case35.i.i.i.i.i, label %when_case31.i.i.i.i.i

when_case31.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i, %when_exit48.i.i.i.i.i.thread
  %423 = phi %struct.ObjHeader* [ %346, %when_exit48.i.i.i.i.i.thread ], [ %422, %when_exit48.i.i.i.i.i ]
  store %struct.ObjHeader* %423, %struct.ObjHeader** %178, align 8, !tbaa !11
  %424 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %423, i64 1
  %425 = bitcast %struct.ObjHeader* %424 to i32*
  %426 = load atomic i32, i32* %425 unordered, align 8, !tbaa !9
  %427 = icmp ugt i32 %426, %end.1.i.i.i.i.i
  br i1 %427, label %Kotlin_CharArray_set.exit86.i.i.i.i.i, label %428

428:                                              ; preds = %when_case31.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit86.i.i.i.i.i:            ; preds = %when_case31.i.i.i.i.i
  %429 = bitcast %struct.ObjHeader* %423 to i64*
  %430 = load atomic volatile i64, i64* %429 monotonic, align 8
  %431 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %423, i64 2
  %432 = bitcast %struct.ObjHeader* %431 to i16*
  %433 = sext i32 %end.1.i.i.i.i.i to i64
  %434 = getelementptr inbounds i16, i16* %432, i64 %433
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %434, align 2, !tbaa !27
  %435 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %435, %struct.ObjHeader** %179, align 8, !tbaa !11
  %436 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %435, i64 1
  %437 = bitcast %struct.ObjHeader* %436 to i32*
  %438 = load atomic i32, i32* %437 unordered, align 8, !tbaa !9
  %439 = icmp ugt i32 %438, %front.1.i.i.i.i.i
  br i1 %439, label %Kotlin_CharArray_set.exit85.i.i.i.i.i, label %440

440:                                              ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit85.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  %441 = bitcast %struct.ObjHeader* %435 to i64*
  %442 = load atomic volatile i64, i64* %441 monotonic, align 8
  %443 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %435, i64 2
  %444 = bitcast %struct.ObjHeader* %443 to i16*
  %445 = sext i32 %front.1.i.i.i.i.i to i64
  %446 = getelementptr inbounds i16, i16* %444, i64 %445
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %446, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_case33.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i, %when_exit38.i.i.i.i.i.thread
  %447 = phi %struct.ObjHeader* [ %347, %when_exit38.i.i.i.i.i.thread ], [ %350, %when_exit38.i.i.i.i.i ]
  store %struct.ObjHeader* %447, %struct.ObjHeader** %180, align 8, !tbaa !11
  %448 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %447, i64 1
  %449 = bitcast %struct.ObjHeader* %448 to i32*
  %450 = load atomic i32, i32* %449 unordered, align 8, !tbaa !9
  %451 = icmp ugt i32 %450, %end.1.i.i.i.i.i
  br i1 %451, label %Kotlin_CharArray_set.exit83.i.i.i.i.i, label %452

452:                                              ; preds = %when_case33.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit83.i.i.i.i.i:            ; preds = %when_case33.i.i.i.i.i
  %453 = bitcast %struct.ObjHeader* %447 to i64*
  %454 = load atomic volatile i64, i64* %453 monotonic, align 8
  %455 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %447, i64 2
  %456 = bitcast %struct.ObjHeader* %455 to i16*
  %457 = sext i32 %end.1.i.i.i.i.i to i64
  %458 = getelementptr inbounds i16, i16* %456, i64 %457
  store i16 %323, i16* %458, align 2, !tbaa !27
  %459 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %459, %struct.ObjHeader** %181, align 8, !tbaa !11
  %460 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %459, i64 1
  %461 = bitcast %struct.ObjHeader* %460 to i32*
  %462 = load atomic i32, i32* %461 unordered, align 8, !tbaa !9
  %463 = icmp ugt i32 %462, %front.1.i.i.i.i.i
  br i1 %463, label %Kotlin_CharArray_set.exit81.i.i.i.i.i, label %464

464:                                              ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit81.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  %465 = bitcast %struct.ObjHeader* %459 to i64*
  %466 = load atomic volatile i64, i64* %465 monotonic, align 8
  %467 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %459, i64 2
  %468 = bitcast %struct.ObjHeader* %467 to i16*
  %469 = sext i32 %front.1.i.i.i.i.i to i64
  %470 = getelementptr inbounds i16, i16* %468, i64 %469
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %470, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_case35.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i
  store %struct.ObjHeader* %422, %struct.ObjHeader** %182, align 8, !tbaa !11
  %471 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %422, i64 1
  %472 = bitcast %struct.ObjHeader* %471 to i32*
  %473 = load atomic i32, i32* %472 unordered, align 8, !tbaa !9
  %474 = icmp ugt i32 %473, %end.1.i.i.i.i.i
  br i1 %474, label %Kotlin_CharArray_set.exit79.i.i.i.i.i, label %475

475:                                              ; preds = %when_case35.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit79.i.i.i.i.i:            ; preds = %when_case35.i.i.i.i.i
  %476 = bitcast %struct.ObjHeader* %422 to i64*
  %477 = load atomic volatile i64, i64* %476 monotonic, align 8
  %478 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %422, i64 2
  %479 = bitcast %struct.ObjHeader* %478 to i16*
  %480 = sext i32 %end.1.i.i.i.i.i to i64
  %481 = getelementptr inbounds i16, i16* %479, i64 %480
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %481, align 2, !tbaa !27
  %482 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %482, %struct.ObjHeader** %183, align 8, !tbaa !11
  %483 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %482, i64 1
  %484 = bitcast %struct.ObjHeader* %483 to i32*
  %485 = load atomic i32, i32* %484 unordered, align 8, !tbaa !9
  %486 = icmp ugt i32 %485, %front.1.i.i.i.i.i
  br i1 %486, label %Kotlin_CharArray_set.exit78.i.i.i.i.i, label %487

487:                                              ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit78.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  %488 = bitcast %struct.ObjHeader* %482 to i64*
  %489 = load atomic volatile i64, i64* %488 monotonic, align 8
  %490 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %482, i64 2
  %491 = bitcast %struct.ObjHeader* %490 to i16*
  %492 = sext i32 %front.1.i.i.i.i.i to i64
  %493 = getelementptr inbounds i16, i16* %491, i64 %492
  store i16 %335, i16* %493, align 2, !tbaa !27
  br label %when_exit45.i.i.i.i.i

when_exit45.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_set.exit78.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i, %Kotlin_CharArray_get.exit87.i.i.i.i.i
  %allowEndSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %allowFrontSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %endTrailingChar.0.i.i.i.i.i = phi i16 [ %419, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %335, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %335, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %endTrailingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %frontLeadingChar.0.i.i.i.i.i = phi i16 [ %407, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %323, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %frontLeadingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %323, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %front.0.i.i.i.i.i = phi i32 [ %313, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %end.0.i.i.i.i.i = phi i32 [ %325, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %494 = add i32 %front.0.i.i.i.i.i, 1
  %495 = add i32 %end.0.i.i.i.i.i, -1
  br label %loop_check.i.i.i.i.i

loop_check.i.i.i.i.i:                             ; preds = %when_exit45.i.i.i.i.i, %Kotlin_CharArray_get.exit80.i.i.i.i.i
  %allowEndSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowEndSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %allowFrontSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowFrontSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %endTrailingChar.1.i.i.i.i.i = phi i16 [ %307, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %endTrailingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %frontLeadingChar.1.i.i.i.i.i = phi i16 [ %296, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %frontLeadingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %front.1.i.i.i.i.i = phi i32 [ 0, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %494, %when_exit45.i.i.i.i.i ]
  %end.1.i.i.i.i.i = phi i32 [ %286, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %495, %when_exit45.i.i.i.i.i ]
  %496 = load atomic i32, i32* %283 unordered, align 8
  %497 = sdiv i32 %496, 2
  %498 = icmp slt i32 %front.1.i.i.i.i.i, %497
  br i1 %498, label %while_loop.i.i.i.i.i, label %loop_exit.i.i.i.i.i

loop_exit.i.i.i.i.i:                              ; preds = %loop_check.i.i.i.i.i
  %499 = srem i32 %496, 2
  %500 = icmp ne i32 %499, 1
  %brmerge.demorgan = and i1 %allowEndSurrogate.1.i.i.i.i.i, %allowFrontSurrogate.1.i.i.i.i.i
  %or.cond180 = or i1 %500, %brmerge.demorgan
  br i1 %or.cond180, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_case61.i.i.i.i.i

when_case61.i.i.i.i.i:                            ; preds = %loop_exit.i.i.i.i.i
  %501 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %288 unordered, align 8
  store %struct.ObjHeader* %501, %struct.ObjHeader** %184, align 8, !tbaa !11
  %502 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %501, i64 1
  %503 = bitcast %struct.ObjHeader* %502 to i32*
  %504 = load atomic i32, i32* %503 unordered, align 8, !tbaa !9
  %505 = icmp ugt i32 %504, %end.1.i.i.i.i.i
  br i1 %505, label %Kotlin_CharArray_set.exit.i.i.i.i.i, label %506

506:                                              ; preds = %when_case61.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit.i.i.i.i.i:              ; preds = %when_case61.i.i.i.i.i
  %spec.select = select i1 %allowFrontSurrogate.1.i.i.i.i.i, i16 %endTrailingChar.1.i.i.i.i.i, i16 %frontLeadingChar.1.i.i.i.i.i
  %507 = bitcast %struct.ObjHeader* %501 to i64*
  %508 = load atomic volatile i64, i64* %507 monotonic, align 8
  %509 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %501, i64 2
  %510 = bitcast %struct.ObjHeader* %509 to i16*
  %511 = sext i32 %end.1.i.i.i.i.i to i64
  %512 = getelementptr inbounds i16, i16* %510, i64 %511
  store i16 %spec.select, i16* %512, align 2, !tbaa !27
  br label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i"

"kfun:Value#<init>(kotlin.Int){}.exit.i.i":       ; preds = %Kotlin_CharArray_set.exit.i.i.i.i.i, %loop_exit.i.i.i.i.i, %when_exit19.i.i.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %513 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %514 = bitcast %"class.kotlin::mm::ShadowStack"* %513 to i64*
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %168)
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %192, align 8, !tbaa !11
  %515 = load atomic i64, i64* %162 unordered, align 8, !tbaa !16
  store i64 %515, i64* %514, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %158)
  %516 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#toString(){}kotlin.String"(%struct.ObjHeader* nonnull %251, %struct.ObjHeader** nonnull %150)
  %517 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 3
  %518 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %517 to %struct.ObjHeader**
  store %struct.ObjHeader* %516, %struct.ObjHeader** %518, align 8, !tbaa !11
  %519 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %520 = load atomic i64, i64* %153 unordered, align 8, !tbaa !16
  %521 = bitcast %"class.kotlin::mm::ShadowStack"* %519 to i64*
  store i64 %520, i64* %521, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %147)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %140)
  %522 = load atomic i32, i32* %194 unordered, align 8
  %523 = load atomic i32, i32* %196 unordered, align 4
  %524 = add i32 %522, %523
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %140, i32 %524, %struct.ObjHeader* nonnull %229)
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"
  %525 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %145 monotonic, align 8
  %526 = ptrtoint %struct.TypeInfo* %525 to i64
  %527 = and i64 %526, -4
  %528 = inttoptr i64 %527 to %struct.TypeInfo*
  %529 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %528, i64 0, i32 0
  %530 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %529 monotonic, align 8
  %531 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %530, i64 0, i32 9
  %532 = load atomic i32, i32* %531 unordered, align 4
  %533 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %530, i64 0, i32 10
  %534 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %533 unordered, align 8
  %535 = and i32 %532, 160
  %536 = zext i32 %535 to i64
  %537 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %534, i64 %536, i32 2
  %538 = bitcast i8*** %537 to i1 (%struct.ObjHeader*)***
  %539 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %538 unordered, align 8
  %540 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %539 unordered, align 8
  %541 = call zeroext i1 %540(%struct.ObjHeader* nonnull %144)
  br i1 %541, label %while_loop.i.i, label %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"

"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i": ; preds = %loop_check.i.i
  %542 = bitcast %struct.ObjHeader** %30 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %542, align 8, !tbaa !11
  %543 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %544 = load atomic i64, i64* %65 unordered, align 8, !tbaa !16
  %545 = bitcast %"class.kotlin::mm::ShadowStack"* %543 to i64*
  store i64 %544, i64* %545, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %57)
  %546 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %547 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %546 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %548 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %547 unordered, align 8, !tbaa !11
  %549 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %548, i64 0, i32 2, i32 1
  %550 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %549, i64 32) #37
  %551 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 1
  %552 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 2
  %553 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552 to %struct.ObjHeader*
  %554 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552 to %struct.TypeInfo**
  %555 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551 to i64*
  store i64 0, i64* %555, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %554, align 8, !tbaa !20
  %556 = bitcast %struct.ObjHeader** %31 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %556, align 8, !tbaa !11
  %557 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %557, align 8, !tbaa !11
  %558 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 4
  %559 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %558 to i32*
  store i32 0, i32* %559, align 8
  %560 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %561 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %560, i64 0, i32 3
  store i32 -1, i32* %561, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %556, align 8, !tbaa !11
  %562 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50, i64 7
  %563 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %562 to i32*
  %564 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %565 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %564, i64 0, i32 6
  br label %loop_check.i6

while_loop.i4:                                    ; preds = %loop_check.i6
  %566 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %567 = and i8 %566, 1
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %569

569:                                              ; preds = %while_loop.i4
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5

Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %569, %while_loop.i4
  %570 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %554 monotonic, align 8
  %571 = ptrtoint %struct.TypeInfo* %570 to i64
  %572 = and i64 %571, -4
  %573 = inttoptr i64 %572 to %struct.TypeInfo*
  %574 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %573, i64 0, i32 0
  %575 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %574 monotonic, align 8
  %576 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %575, i64 0, i32 9
  %577 = load atomic i32, i32* %576 unordered, align 4
  %578 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %575, i64 0, i32 10
  %579 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %578 unordered, align 8
  %580 = and i32 %577, 160
  %581 = zext i32 %580 to i64
  %582 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %579, i64 %581, i32 2
  %583 = load atomic i8**, i8*** %582 unordered, align 8
  %584 = getelementptr i8*, i8** %583, i64 1
  %585 = bitcast i8** %584 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %586 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %585 unordered, align 8
  %587 = call %struct.ObjHeader* %586(%struct.ObjHeader* nonnull %553, %struct.ObjHeader** nonnull %32)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %53)
  %588 = load atomic i32, i32* %563 unordered, align 8
  %589 = load atomic i32, i32* %565 unordered, align 4
  %590 = add i32 %588, %589
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %53, i32 %590, %struct.ObjHeader* %587)
  br label %loop_check.i6

loop_check.i6:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5, %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"
  %591 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %554 monotonic, align 8
  %592 = ptrtoint %struct.TypeInfo* %591 to i64
  %593 = and i64 %592, -4
  %594 = inttoptr i64 %593 to %struct.TypeInfo*
  %595 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %594, i64 0, i32 0
  %596 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %595 monotonic, align 8
  %597 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %596, i64 0, i32 9
  %598 = load atomic i32, i32* %597 unordered, align 4
  %599 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %596, i64 0, i32 10
  %600 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %599 unordered, align 8
  %601 = and i32 %598, 160
  %602 = zext i32 %601 to i64
  %603 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %600, i64 %602, i32 2
  %604 = bitcast i8*** %603 to i1 (%struct.ObjHeader*)***
  %605 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %604 unordered, align 8
  %606 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %605 unordered, align 8
  %607 = call zeroext i1 %606(%struct.ObjHeader* nonnull %553)
  br i1 %607, label %while_loop.i4, label %loop_exit.i

loop_exit.i:                                      ; preds = %loop_check.i6
  %608 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %609 = bitcast %struct.ObjHeader* %608 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %609, align 8, !tbaa !11
  %610 = load atomic i32, i32* %565 unordered, align 4
  %611 = icmp slt i32 %610, 0
  br i1 %611, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %loop_exit.i
  %612 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %613 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %614 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %613 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %615 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %614 unordered, align 8, !tbaa !11
  %616 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %615, i64 0, i32 2, i32 1
  %617 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %616, i64 56) #37
  %618 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %617, i64 1
  %619 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %617, i64 2
  %620 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %619 to %struct.ObjHeader*
  %621 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %619 to %struct.TypeInfo**
  %622 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %618 to i64*
  store i64 0, i64* %622, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %621, align 8, !tbaa !20
  %623 = bitcast %struct.ObjHeader** %612 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %619, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %623, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %620, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @126 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %620) #49
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %loop_exit.i
  %624 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %625 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %624 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %626 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %625 unordered, align 8, !tbaa !11
  %627 = zext i32 %610 to i64
  %628 = shl nuw nsw i64 %627, 3
  %629 = add nuw nsw i64 %628, 31
  %630 = and i64 %629, 68719476728
  %631 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %626, i64 0, i32 2, i32 1
  %632 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %631, i64 %630) #37
  %633 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %632, i64 1
  %634 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %632, i64 2
  %635 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634 to %struct.TypeInfo**
  %636 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %633 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %636, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %635, align 8, !tbaa !22
  %637 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %632, i64 3
  %638 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %637 to i32*
  store i32 %610, i32* %638, align 8, !tbaa !9
  %639 = bitcast %struct.ObjHeader** %33 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %639, align 8, !tbaa !11
  %640 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %641 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %640 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %642 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %641 unordered, align 8, !tbaa !11
  %643 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %642, i64 0, i32 2, i32 1
  %644 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %643, i64 32) #37
  %645 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 1
  %646 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 2
  %647 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646 to %struct.ObjHeader*
  %648 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646 to %struct.TypeInfo**
  %649 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %645 to i64*
  store i64 0, i64* %649, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %648, align 8, !tbaa !20
  %650 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %650, align 8, !tbaa !11
  %651 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %651, align 8, !tbaa !11
  %652 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 4
  %653 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %652 to i32*
  store i32 0, i32* %653, align 8
  %654 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %655 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %654, i64 0, i32 3
  store i32 -1, i32* %655, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %646, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %650, align 8, !tbaa !11
  %656 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, i64 3
  %657 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %656 to %"kclassbody:kotlin.collections.ArrayList#internal"**
  %658 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634 to i64*
  %659 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %632, i64 4
  br label %loop_check17.i

while_loop18.i:                                   ; preds = %loop_check17.i
  %660 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %661 = and i8 %660, 1
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %Kotlin_mm_safePointWhileLoopBody.exit25.i, label %663

663:                                              ; preds = %while_loop18.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit25.i

Kotlin_mm_safePointWhileLoopBody.exit25.i:        ; preds = %663, %while_loop18.i
  %664 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList.Itr.next#internal"(%struct.ObjHeader* nonnull %647, %struct.ObjHeader** nonnull %35)
  %665 = load atomic i32, i32* %638 unordered, align 8, !tbaa !9
  %666 = icmp ugt i32 %665, %index.0.i
  br i1 %666, label %Kotlin_Array_set.exit.i, label %667

667:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit25.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit25.i
  %668 = load atomic volatile i64, i64* %658 monotonic, align 8
  %669 = sext i32 %index.0.i to i64
  %670 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %659, i64 %669
  %671 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %670 to %struct.ObjHeader**
  store %struct.ObjHeader* %664, %struct.ObjHeader** %671, align 8, !tbaa !11
  %672 = add i32 %index.0.i, 1
  br label %loop_check17.i

loop_check17.i:                                   ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %index.0.i = phi i32 [ 0, %AllocArrayInstance.exit.i ], [ %672, %Kotlin_Array_set.exit.i ]
  %673 = load atomic i32, i32* %653 unordered, align 8
  %674 = load atomic %"kclassbody:kotlin.collections.ArrayList#internal"*, %"kclassbody:kotlin.collections.ArrayList#internal"** %657 unordered, align 8
  %675 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %674, i64 0, i32 6
  %676 = load atomic i32, i32* %675 unordered, align 4
  %677 = icmp slt i32 %673, %676
  br i1 %677, label %while_loop18.i, label %loop_exit16.i

loop_exit16.i:                                    ; preds = %loop_check17.i
  %678 = load atomic volatile i64, i64* %658 monotonic, align 8
  %679 = and i64 %678, -4
  %680 = inttoptr i64 %679 to i64*
  %681 = load atomic volatile i64, i64* %680 monotonic, align 8
  %682 = inttoptr i64 %681 to %struct.TypeInfo*
  %683 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %682, i64 0, i32 14
  %684 = load atomic i32, i32* %683 unordered, align 4, !tbaa !3
  %685 = icmp eq i32 %684, 72
  br i1 %685, label %call_success, label %label_22.i

label_22.i:                                       ; preds = %loop_exit16.i
  %686 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634 to %struct.ObjHeader*
  call fastcc void @ThrowClassCastException(%struct.ObjHeader* nonnull %686, i8* bitcast ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal" to i8*)) #49
  unreachable

call_success:                                     ; preds = %loop_exit16.i
  %687 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %688 = bitcast %struct.ObjHeader* %687 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %688, align 8, !tbaa !11
  %689 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %690 = load atomic i64, i64* %41 unordered, align 8, !tbaa !16
  %691 = bitcast %"class.kotlin::mm::ShadowStack"* %689 to i64*
  store i64 %690, i64* %691, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %28)
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %147)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %147, i8 0, i32 48, i1 immarg false) #50
  %692 = load atomic i64, i64* %691 unordered, align 8, !tbaa !14
  store i64 %692, i64* %153, align 8, !tbaa !16
  %693 = bitcast %"class.kotlin::mm::ShadowStack"* %689 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i1.i.i, %struct.ObjHeader*** %693, align 8, !tbaa !14
  store i32 0, i32* %155, align 8, !tbaa !18
  store i32 6, i32* %156, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %158)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %158, i8 0, i32 32, i1 immarg false) #50
  %694 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %695 = bitcast %"class.kotlin::mm::ShadowStack"* %694 to i64*
  %696 = load atomic i64, i64* %695 unordered, align 8, !tbaa !14
  store i64 %696, i64* %162, align 8, !tbaa !16
  %697 = bitcast %"class.kotlin::mm::ShadowStack"* %694 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i, %struct.ObjHeader*** %697, align 8, !tbaa !14
  store i32 0, i32* %164, align 8, !tbaa !18
  store i32 4, i32* %165, align 4, !tbaa !19
  %698 = bitcast %struct.ObjHeader* %687 to %struct.ObjHeader**
  %699 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %698 unordered, align 8
  store %struct.ObjHeader* %699, %struct.ObjHeader** %159, align 8, !tbaa !11
  %.not.i.i = icmp eq %struct.ObjHeader* %699, null
  br i1 %.not.i.i, label %when_next.i.i, label %"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i"

when_next.i.i:                                    ; preds = %call_success
  call fastcc void @"kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing"() #49
  unreachable

"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i": ; preds = %call_success
  store %struct.ObjHeader* %699, %struct.ObjHeader** %148, align 8, !tbaa !11
  %700 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %701 = load atomic i64, i64* %162 unordered, align 8, !tbaa !16
  %702 = bitcast %"class.kotlin::mm::ShadowStack"* %700 to i64*
  store i64 %701, i64* %702, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %158)
  %703 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %699, i64 1
  %704 = bitcast %struct.ObjHeader* %703 to i32*
  %705 = load atomic i32, i32* %704 unordered, align 8, !tbaa !9
  %706 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %699, i64 2
  %707 = icmp sgt i32 %705, 0
  %smax = select i1 %707, i32 %705, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %708 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %709 = and i8 %708, 1
  %710 = icmp eq i8 %709, 0
  br i1 %710, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %711

711:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %711, %while_loop.i
  %712 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %706, i64 %indvars.iv
  %713 = bitcast %struct.ObjHeader* %712 to %struct.ObjHeader**
  %714 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %713 unordered, align 8, !tbaa !11
  store %struct.ObjHeader* %714, %struct.ObjHeader** %149, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %715 = load atomic i32, i32* @"state_thread_local$Blackhole" unordered, align 4
  %716 = icmp eq i32 %715, 2
  br i1 %716, label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Blackhole", void ()* nonnull @"kfun:Blackhole.$init_thread_local#internal")
  br label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"

"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %717 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %718 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %717 unordered, align 8
  store %struct.ObjHeader* %718, %struct.ObjHeader** %150, align 8, !tbaa !11
  %719 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %718, i64 1
  %720 = bitcast %struct.ObjHeader* %719 to i32*
  %721 = load atomic i32, i32* %720 unordered, align 4
  %722 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %714, i64 0, i32 0
  %723 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %722 monotonic, align 8
  %724 = ptrtoint %struct.TypeInfo* %723 to i64
  %725 = and i64 %724, -4
  %726 = inttoptr i64 %725 to %struct.TypeInfo*
  %727 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %726, i64 0, i32 0
  %728 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %727 monotonic, align 8
  %729 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %728, i64 1, i32 1
  %730 = bitcast %struct.ExtendedTypeInfo** %729 to i32 (%struct.ObjHeader*)**
  %731 = load atomic i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %730 unordered, align 8
  %732 = call i32 %731(%struct.ObjHeader* %714)
  %733 = add i32 %721, %732
  store i32 %733, i32* %720, align 4
  br label %loop_check.i

loop_check.i:                                     ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 0, %"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i" ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %734 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %735 = bitcast %"class.kotlin::mm::ShadowStack"* %734 to i64*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %147)
  %736 = load atomic i64, i64* %19 unordered, align 8, !tbaa !16
  store i64 %736, i64* %735, align 8, !tbaa !14
  ret void
}
