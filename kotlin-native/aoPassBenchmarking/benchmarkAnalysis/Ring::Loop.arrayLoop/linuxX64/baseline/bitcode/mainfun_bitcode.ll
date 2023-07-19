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
  %13 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !11
  %14 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %15 = bitcast [4 x %struct.ObjHeader*]* %7 to %struct.FrameOverlay.6*
  %16 = bitcast %"class.kotlin::mm::ShadowStack"* %14 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !29
  %18 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %7, i64 0, i64 1
  %19 = bitcast %struct.ObjHeader** %18 to i64*
  store i64 %17, i64* %19, align 8, !tbaa !31
  %20 = bitcast %"class.kotlin::mm::ShadowStack"* %14 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %20, align 8, !tbaa !29
  %21 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %7, i64 0, i64 2
  %22 = bitcast %struct.ObjHeader** %21 to i32*
  store i32 0, i32* %22, align 8, !tbaa !33
  %23 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %15, i64 0, i32 3
  store i32 4, i32* %23, align 4, !tbaa !34
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
  %39 = load i64, i64* %38, align 8, !tbaa !29
  %40 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %41 = bitcast %struct.ObjHeader** %40 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !31
  %42 = bitcast %"class.kotlin::mm::ShadowStack"* %36 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %42, align 8, !tbaa !29
  %43 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %44 = bitcast %struct.ObjHeader** %43 to i32*
  store i32 0, i32* %44, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %37, i64 0, i32 3
  store i32 11, i32* %45, align 4, !tbaa !34
  %46 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %47 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %46 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %48 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %47, align 8, !tbaa !11
  %49 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %48, i64 0, i32 2, i32 1
  %50 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %49, i64 64) #37
  %51 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50, i64 1
  %52 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50, i64 2
  %53 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to %struct.ObjHeader*
  %54 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to %struct.TypeInfo**
  %55 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51 to i64*
  store i64 0, i64* %55, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %54, align 8, !tbaa !35
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
  %63 = load i64, i64* %62, align 8, !tbaa !29
  %64 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %65 = bitcast %struct.ObjHeader** %64 to i64*
  store i64 %63, i64* %65, align 8, !tbaa !31
  %66 = bitcast %"class.kotlin::mm::ShadowStack"* %60 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i3, %struct.ObjHeader*** %66, align 8, !tbaa !29
  %67 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %68 = bitcast %struct.ObjHeader** %67 to i32*
  store i32 0, i32* %68, align 8, !tbaa !33
  %69 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %61, i64 0, i32 3
  store i32 8, i32* %69, align 4, !tbaa !34
  %70 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %71 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %70 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %72 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %71, align 8, !tbaa !11
  %73 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %72, i64 0, i32 2, i32 1
  %74 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %73, i64 32) #37
  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 1
  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74, i64 2
  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.ObjHeader*
  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to %struct.TypeInfo**
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i64*
  store i64 0, i64* %79, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %78, align 8, !tbaa !35
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
  %85 = load i64, i64* %84, align 8, !tbaa !29
  %86 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %87 = bitcast %struct.ObjHeader** %86 to i64*
  store i64 %85, i64* %87, align 8, !tbaa !31
  %88 = bitcast %"class.kotlin::mm::ShadowStack"* %82 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %88, align 8, !tbaa !29
  %89 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %90 = bitcast %struct.ObjHeader** %89 to i32*
  store i32 0, i32* %90, align 8, !tbaa !33
  %91 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %83, i64 0, i32 3
  store i32 4, i32* %91, align 4, !tbaa !34
  %92 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %78 monotonic, align 8
  %93 = ptrtoint %struct.TypeInfo* %92 to i64
  %94 = and i64 %93, -4
  %95 = inttoptr i64 %94 to %struct.TypeInfo*
  %96 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %95, i64 0, i32 0
  %97 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %96 monotonic, align 8
  %98 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %97, i64 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %97, i64 0, i32 10
  %101 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %100, align 8
  %102 = and i32 %99, 18
  %103 = zext i32 %102 to i64
  %104 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %101, i64 %103, i32 0
  %105 = load i32, i32* %104, align 4
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
  %116 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %115, align 8, !tbaa !11
  %117 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %116, i64 0, i32 2, i32 1
  %118 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %117, i64 24) #37
  %119 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, i64 1
  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, i64 2
  %121 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to %struct.ObjHeader*
  %122 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to %struct.TypeInfo**
  %123 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119 to i64*
  store i64 0, i64* %123, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.internal.KClassImpl#internal", i64 0, i32 0), %struct.TypeInfo** %122, align 8, !tbaa !35
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
  %131 = load i64, i64* %87, align 8, !tbaa !31
  %132 = bitcast %"class.kotlin::mm::ShadowStack"* %130 to i64*
  store i64 %131, i64* %132, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %81)
  %133 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %134 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %133 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %135 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %134, align 8, !tbaa !11
  %136 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %135, i64 0, i32 2, i32 1
  %137 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %136, i64 64) #37
  %138 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 1
  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 2
  %140 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to %struct.ObjHeader*
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to %struct.TypeInfo**
  %142 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138 to i64*
  store i64 0, i64* %142, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %141, align 8, !tbaa !35
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
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %206, i64 0, i32 10
  %210 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %209, align 8
  %211 = and i32 %208, 160
  %212 = zext i32 %211 to i64
  %213 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %210, i64 %212, i32 2
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr i8*, i8** %214, i64 1
  %216 = bitcast i8** %215 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %217 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %216, align 8
  %218 = call %struct.ObjHeader* %217(%struct.ObjHeader* nonnull %144, %struct.ObjHeader** nonnull %59)
  %219 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %218, i64 1
  %220 = bitcast %struct.ObjHeader* %219 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %223 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %222 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %224 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %223, align 8, !tbaa !11
  %225 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %224, i64 0, i32 2, i32 1
  %226 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %225, i64 32) #37
  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 1
  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 2
  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to %struct.ObjHeader*
  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to %struct.TypeInfo**
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to i64*
  store i64 0, i64* %231, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Value#internal", i64 0, i32 0), %struct.TypeInfo** %230, align 8, !tbaa !35
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %146, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %147)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %147, i8 0, i32 48, i1 immarg false) #50
  %232 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %233 = bitcast %"class.kotlin::mm::ShadowStack"* %232 to i64*
  %234 = load i64, i64* %233, align 8, !tbaa !29
  store i64 %234, i64* %153, align 8, !tbaa !31
  %235 = bitcast %"class.kotlin::mm::ShadowStack"* %232 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i1.i.i, %struct.ObjHeader*** %235, align 8, !tbaa !29
  store i32 0, i32* %155, align 8, !tbaa !33
  store i32 6, i32* %156, align 4, !tbaa !34
  %236 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 4
  %237 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %236 to i32*
  store i32 %221, i32* %237, align 8
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %157) #37
  call void (i8*, i64, i8*, ...) @_ZN5konan8snprintfEPcmPKcz(i8* nonnull %157, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.849, i64 0, i64 0), i32 %221)
  %238 = call fastcc %struct.ObjHeader* @CreateStringFromCString(i8* nonnull %157, %struct.ObjHeader** nonnull %148)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %157) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %158)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %158, i8 0, i32 32, i1 immarg false) #50
  %239 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %240 = bitcast %"class.kotlin::mm::ShadowStack"* %239 to i64*
  %241 = load i64, i64* %240, align 8, !tbaa !29
  store i64 %241, i64* %162, align 8, !tbaa !31
  %242 = bitcast %"class.kotlin::mm::ShadowStack"* %239 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i, %struct.ObjHeader*** %242, align 8, !tbaa !29
  store i32 0, i32* %164, align 8, !tbaa !33
  store i32 4, i32* %165, align 4, !tbaa !34
  %243 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %244 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %243 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %245 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %244, align 8, !tbaa !11
  %246 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %245, i64 0, i32 2, i32 1
  %247 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %246, i64 32) #37
  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 1
  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 2
  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to %struct.ObjHeader*
  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to %struct.TypeInfo**
  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to i64*
  store i64 0, i64* %252, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.text.StringBuilder#internal", i64 0, i32 0), %struct.TypeInfo** %251, align 8, !tbaa !35
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %166, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %81)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %81, i8 0, i32 32, i1 immarg false) #50
  %253 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %254 = bitcast %"class.kotlin::mm::ShadowStack"* %253 to i64*
  %255 = load i64, i64* %254, align 8, !tbaa !29
  store i64 %255, i64* %87, align 8, !tbaa !31
  %256 = bitcast %"class.kotlin::mm::ShadowStack"* %253 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %256, align 8, !tbaa !29
  store i32 0, i32* %90, align 8, !tbaa !33
  store i32 4, i32* %91, align 4, !tbaa !34
  %257 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %238, i64 0, i32 0
  %258 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %257 monotonic, align 8
  %259 = ptrtoint %struct.TypeInfo* %258 to i64
  %260 = and i64 %259, -4
  %261 = inttoptr i64 %260 to %struct.TypeInfo*
  %262 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %261, i64 0, i32 0
  %263 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %262 monotonic, align 8
  %264 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %263, i64 0, i32 9
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %263, i64 0, i32 10
  %267 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %266, align 8
  %268 = and i32 %265, 25
  %269 = zext i32 %268 to i64
  %270 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %267, i64 %269, i32 2
  %271 = bitcast i8*** %270 to i32 (%struct.ObjHeader*)***
  %272 = load i32 (%struct.ObjHeader*)**, i32 (%struct.ObjHeader*)*** %271, align 8
  %273 = load i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %272, align 8
  %274 = call i32 %273(%struct.ObjHeader* %238)
  call fastcc void @"kfun:kotlin.text.StringBuilder#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %250, i32 %274)
  %275 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?){}kotlin.text.StringBuilder"(%struct.ObjHeader* nonnull %250, %struct.ObjHeader* %238, %struct.ObjHeader** nonnull %167)
  %276 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %277 = load i64, i64* %87, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %81)
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %168)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(160) %168, i8 0, i32 160, i1 immarg false) #50
  store i64 %277, i64* %187, align 8, !tbaa !31
  %278 = bitcast %"class.kotlin::mm::ShadowStack"* %276 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i.i, %struct.ObjHeader*** %278, align 8, !tbaa !29
  store i32 0, i32* %189, align 8, !tbaa !33
  store i32 20, i32* %190, align 4, !tbaa !34
  %279 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 4
  %280 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279 to i32*
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %281, 2
  br i1 %282, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit.i.i.i.i.i

when_exit.i.i.i.i.i:                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %283 = add i32 %281, -1
  %284 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247, i64 3
  %285 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %284 to %struct.ObjHeader**
  %286 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %286, %struct.ObjHeader** %191, align 8, !tbaa !11
  %287 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %286, i64 1
  %288 = bitcast %struct.ObjHeader* %287 to i32*
  %289 = load i32, i32* %288, align 8, !tbaa !9
  %.not = icmp eq i32 %289, 0
  br i1 %.not, label %290, label %Kotlin_CharArray_get.exit.i.i.i.i.i

290:                                              ; preds = %when_exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit.i.i.i.i.i:              ; preds = %when_exit.i.i.i.i.i
  %291 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %286, i64 2
  %292 = bitcast %struct.ObjHeader* %291 to i16*
  %293 = load i16, i16* %292, align 2, !tbaa !41
  %294 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %294, %struct.ObjHeader** %169, align 8, !tbaa !11
  %295 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %294, i64 1
  %296 = bitcast %struct.ObjHeader* %295 to i32*
  %297 = load i32, i32* %296, align 8, !tbaa !9
  %298 = icmp ugt i32 %297, %283
  br i1 %298, label %Kotlin_CharArray_get.exit80.i.i.i.i.i, label %299

299:                                              ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit80.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  %300 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %294, i64 2
  %301 = bitcast %struct.ObjHeader* %300 to i16*
  %302 = sext i32 %283 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !41
  br label %loop_check.i.i.i.i.i

while_loop.i.i.i.i.i:                             ; preds = %loop_check.i.i.i.i.i
  %305 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %306 = and i8 %305, 1
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i, label %308

308:                                              ; preds = %while_loop.i.i.i.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i:  ; preds = %308, %while_loop.i.i.i.i.i
  %309 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %309, %struct.ObjHeader** %170, align 8, !tbaa !11
  %310 = add i32 %front.1.i.i.i.i.i, 1
  %311 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %309, i64 1
  %312 = bitcast %struct.ObjHeader* %311 to i32*
  %313 = load i32, i32* %312, align 8, !tbaa !9
  %314 = icmp ugt i32 %313, %310
  br i1 %314, label %Kotlin_CharArray_get.exit82.i.i.i.i.i, label %315

315:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit82.i.i.i.i.i:            ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  %316 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %309, i64 2
  %317 = bitcast %struct.ObjHeader* %316 to i16*
  %318 = sext i32 %310 to i64
  %319 = getelementptr inbounds i16, i16* %317, i64 %318
  %320 = load i16, i16* %319, align 2, !tbaa !41
  %321 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %321, %struct.ObjHeader** %171, align 8, !tbaa !11
  %322 = add i32 %end.1.i.i.i.i.i, -1
  %323 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %321, i64 1
  %324 = bitcast %struct.ObjHeader* %323 to i32*
  %325 = load i32, i32* %324, align 8, !tbaa !9
  %326 = icmp ugt i32 %325, %322
  br i1 %326, label %Kotlin_CharArray_get.exit84.i.i.i.i.i, label %327

327:                                              ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit84.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  %328 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %321, i64 2
  %329 = bitcast %struct.ObjHeader* %328 to i16*
  %330 = sext i32 %322 to i64
  %331 = getelementptr inbounds i16, i16* %329, i64 %330
  %332 = load i16, i16* %331, align 2, !tbaa !41
  %333 = and i16 %320, -1024
  %334 = icmp eq i16 %333, -9216
  %or.cond = and i1 %allowFrontSurrogate.1.i.i.i.i.i, %334
  %335 = and i16 %frontLeadingChar.1.i.i.i.i.i, -1024
  %336 = icmp eq i16 %335, -10240
  %or.cond175 = and i1 %or.cond, %336
  br i1 %or.cond175, label %when_exit19.i.i.i.i.i, label %when_exit20.i.i.i.i.i.thread

when_exit19.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %337 = load i32, i32* %280, align 8
  %338 = icmp slt i32 %337, 3
  br i1 %338, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit20.i.i.i.i.i

when_exit20.i.i.i.i.i:                            ; preds = %when_exit19.i.i.i.i.i
  %339 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %340 = icmp eq i16 %339, -9216
  %or.cond177 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %340
  br i1 %or.cond177, label %when_exit38.i.i.i.i.i, label %when_exit38.i.i.i.i.i.thread

when_exit20.i.i.i.i.i.thread:                     ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %341 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %342 = icmp eq i16 %341, -9216
  %or.cond177178 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %342
  br i1 %or.cond177178, label %when_exit48.i.i.i.i.i, label %when_exit48.i.i.i.i.i.thread

when_exit48.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i.thread
  %343 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  br label %when_case31.i.i.i.i.i

when_exit38.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i
  %344 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  br label %when_case33.i.i.i.i.i

when_exit38.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i
  %345 = and i16 %332, -1024
  %346 = icmp eq i16 %345, -10240
  %347 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  br i1 %346, label %when_case29.i.i.i.i.i, label %when_case33.i.i.i.i.i

when_case29.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i
  store %struct.ObjHeader* %347, %struct.ObjHeader** %172, align 8, !tbaa !11
  %348 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %347, i64 1
  %349 = bitcast %struct.ObjHeader* %348 to i32*
  %350 = load i32, i32* %349, align 8, !tbaa !9
  %351 = icmp ugt i32 %350, %end.1.i.i.i.i.i
  br i1 %351, label %Kotlin_CharArray_set.exit90.i.i.i.i.i, label %352

352:                                              ; preds = %when_case29.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit90.i.i.i.i.i:            ; preds = %when_case29.i.i.i.i.i
  %353 = bitcast %struct.ObjHeader* %347 to i64*
  %354 = load atomic volatile i64, i64* %353 monotonic, align 8
  %355 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %347, i64 2
  %356 = bitcast %struct.ObjHeader* %355 to i16*
  %357 = sext i32 %end.1.i.i.i.i.i to i64
  %358 = getelementptr inbounds i16, i16* %356, i64 %357
  store i16 %320, i16* %358, align 2, !tbaa !41
  %359 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %359, %struct.ObjHeader** %173, align 8, !tbaa !11
  %360 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %359, i64 1
  %361 = bitcast %struct.ObjHeader* %360 to i32*
  %362 = load i32, i32* %361, align 8, !tbaa !9
  %363 = icmp ugt i32 %362, %322
  br i1 %363, label %Kotlin_CharArray_set.exit92.i.i.i.i.i, label %364

364:                                              ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit92.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  %365 = bitcast %struct.ObjHeader* %359 to i64*
  %366 = load atomic volatile i64, i64* %365 monotonic, align 8
  %367 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %359, i64 2
  %368 = bitcast %struct.ObjHeader* %367 to i16*
  %369 = getelementptr inbounds i16, i16* %368, i64 %330
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %369, align 2, !tbaa !41
  %370 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %370, %struct.ObjHeader** %174, align 8, !tbaa !11
  %371 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %370, i64 1
  %372 = bitcast %struct.ObjHeader* %371 to i32*
  %373 = load i32, i32* %372, align 8, !tbaa !9
  %374 = icmp ugt i32 %373, %front.1.i.i.i.i.i
  br i1 %374, label %Kotlin_CharArray_set.exit91.i.i.i.i.i, label %375

375:                                              ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit91.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  %376 = bitcast %struct.ObjHeader* %370 to i64*
  %377 = load atomic volatile i64, i64* %376 monotonic, align 8
  %378 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %370, i64 2
  %379 = bitcast %struct.ObjHeader* %378 to i16*
  %380 = sext i32 %front.1.i.i.i.i.i to i64
  %381 = getelementptr inbounds i16, i16* %379, i64 %380
  store i16 %332, i16* %381, align 2, !tbaa !41
  %382 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %382, %struct.ObjHeader** %175, align 8, !tbaa !11
  %383 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %382, i64 1
  %384 = bitcast %struct.ObjHeader* %383 to i32*
  %385 = load i32, i32* %384, align 8, !tbaa !9
  %386 = icmp ugt i32 %385, %310
  br i1 %386, label %Kotlin_CharArray_set.exit89.i.i.i.i.i, label %387

387:                                              ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit89.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  %388 = bitcast %struct.ObjHeader* %382 to i64*
  %389 = load atomic volatile i64, i64* %388 monotonic, align 8
  %390 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %382, i64 2
  %391 = bitcast %struct.ObjHeader* %390 to i16*
  %392 = getelementptr inbounds i16, i16* %391, i64 %318
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %392, align 2, !tbaa !41
  %393 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %393, %struct.ObjHeader** %176, align 8, !tbaa !11
  %394 = add i32 %front.1.i.i.i.i.i, 2
  %395 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %393, i64 1
  %396 = bitcast %struct.ObjHeader* %395 to i32*
  %397 = load i32, i32* %396, align 8, !tbaa !9
  %398 = icmp ugt i32 %397, %394
  br i1 %398, label %Kotlin_CharArray_get.exit88.i.i.i.i.i, label %399

399:                                              ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit88.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  %400 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %393, i64 2
  %401 = bitcast %struct.ObjHeader* %400 to i16*
  %402 = sext i32 %394 to i64
  %403 = getelementptr inbounds i16, i16* %401, i64 %402
  %404 = load i16, i16* %403, align 2, !tbaa !41
  %405 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %405, %struct.ObjHeader** %177, align 8, !tbaa !11
  %406 = add i32 %end.1.i.i.i.i.i, -2
  %407 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %405, i64 1
  %408 = bitcast %struct.ObjHeader* %407 to i32*
  %409 = load i32, i32* %408, align 8, !tbaa !9
  %410 = icmp ugt i32 %409, %406
  br i1 %410, label %Kotlin_CharArray_get.exit87.i.i.i.i.i, label %411

411:                                              ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit87.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  %412 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %405, i64 2
  %413 = bitcast %struct.ObjHeader* %412 to i16*
  %414 = sext i32 %406 to i64
  %415 = getelementptr inbounds i16, i16* %413, i64 %414
  %416 = load i16, i16* %415, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_exit48.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i.thread
  %417 = and i16 %332, -1024
  %418 = icmp eq i16 %417, -10240
  %419 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  br i1 %418, label %when_case35.i.i.i.i.i, label %when_case31.i.i.i.i.i

when_case31.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i, %when_exit48.i.i.i.i.i.thread
  %420 = phi %struct.ObjHeader* [ %343, %when_exit48.i.i.i.i.i.thread ], [ %419, %when_exit48.i.i.i.i.i ]
  store %struct.ObjHeader* %420, %struct.ObjHeader** %178, align 8, !tbaa !11
  %421 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %420, i64 1
  %422 = bitcast %struct.ObjHeader* %421 to i32*
  %423 = load i32, i32* %422, align 8, !tbaa !9
  %424 = icmp ugt i32 %423, %end.1.i.i.i.i.i
  br i1 %424, label %Kotlin_CharArray_set.exit86.i.i.i.i.i, label %425

425:                                              ; preds = %when_case31.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit86.i.i.i.i.i:            ; preds = %when_case31.i.i.i.i.i
  %426 = bitcast %struct.ObjHeader* %420 to i64*
  %427 = load atomic volatile i64, i64* %426 monotonic, align 8
  %428 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %420, i64 2
  %429 = bitcast %struct.ObjHeader* %428 to i16*
  %430 = sext i32 %end.1.i.i.i.i.i to i64
  %431 = getelementptr inbounds i16, i16* %429, i64 %430
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %431, align 2, !tbaa !41
  %432 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %432, %struct.ObjHeader** %179, align 8, !tbaa !11
  %433 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %432, i64 1
  %434 = bitcast %struct.ObjHeader* %433 to i32*
  %435 = load i32, i32* %434, align 8, !tbaa !9
  %436 = icmp ugt i32 %435, %front.1.i.i.i.i.i
  br i1 %436, label %Kotlin_CharArray_set.exit85.i.i.i.i.i, label %437

437:                                              ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit85.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  %438 = bitcast %struct.ObjHeader* %432 to i64*
  %439 = load atomic volatile i64, i64* %438 monotonic, align 8
  %440 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %432, i64 2
  %441 = bitcast %struct.ObjHeader* %440 to i16*
  %442 = sext i32 %front.1.i.i.i.i.i to i64
  %443 = getelementptr inbounds i16, i16* %441, i64 %442
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %443, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_case33.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i, %when_exit38.i.i.i.i.i.thread
  %444 = phi %struct.ObjHeader* [ %344, %when_exit38.i.i.i.i.i.thread ], [ %347, %when_exit38.i.i.i.i.i ]
  store %struct.ObjHeader* %444, %struct.ObjHeader** %180, align 8, !tbaa !11
  %445 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %444, i64 1
  %446 = bitcast %struct.ObjHeader* %445 to i32*
  %447 = load i32, i32* %446, align 8, !tbaa !9
  %448 = icmp ugt i32 %447, %end.1.i.i.i.i.i
  br i1 %448, label %Kotlin_CharArray_set.exit83.i.i.i.i.i, label %449

449:                                              ; preds = %when_case33.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit83.i.i.i.i.i:            ; preds = %when_case33.i.i.i.i.i
  %450 = bitcast %struct.ObjHeader* %444 to i64*
  %451 = load atomic volatile i64, i64* %450 monotonic, align 8
  %452 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %444, i64 2
  %453 = bitcast %struct.ObjHeader* %452 to i16*
  %454 = sext i32 %end.1.i.i.i.i.i to i64
  %455 = getelementptr inbounds i16, i16* %453, i64 %454
  store i16 %320, i16* %455, align 2, !tbaa !41
  %456 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %456, %struct.ObjHeader** %181, align 8, !tbaa !11
  %457 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %456, i64 1
  %458 = bitcast %struct.ObjHeader* %457 to i32*
  %459 = load i32, i32* %458, align 8, !tbaa !9
  %460 = icmp ugt i32 %459, %front.1.i.i.i.i.i
  br i1 %460, label %Kotlin_CharArray_set.exit81.i.i.i.i.i, label %461

461:                                              ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit81.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  %462 = bitcast %struct.ObjHeader* %456 to i64*
  %463 = load atomic volatile i64, i64* %462 monotonic, align 8
  %464 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %456, i64 2
  %465 = bitcast %struct.ObjHeader* %464 to i16*
  %466 = sext i32 %front.1.i.i.i.i.i to i64
  %467 = getelementptr inbounds i16, i16* %465, i64 %466
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %467, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_case35.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i
  store %struct.ObjHeader* %419, %struct.ObjHeader** %182, align 8, !tbaa !11
  %468 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %419, i64 1
  %469 = bitcast %struct.ObjHeader* %468 to i32*
  %470 = load i32, i32* %469, align 8, !tbaa !9
  %471 = icmp ugt i32 %470, %end.1.i.i.i.i.i
  br i1 %471, label %Kotlin_CharArray_set.exit79.i.i.i.i.i, label %472

472:                                              ; preds = %when_case35.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit79.i.i.i.i.i:            ; preds = %when_case35.i.i.i.i.i
  %473 = bitcast %struct.ObjHeader* %419 to i64*
  %474 = load atomic volatile i64, i64* %473 monotonic, align 8
  %475 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %419, i64 2
  %476 = bitcast %struct.ObjHeader* %475 to i16*
  %477 = sext i32 %end.1.i.i.i.i.i to i64
  %478 = getelementptr inbounds i16, i16* %476, i64 %477
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %478, align 2, !tbaa !41
  %479 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %479, %struct.ObjHeader** %183, align 8, !tbaa !11
  %480 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %479, i64 1
  %481 = bitcast %struct.ObjHeader* %480 to i32*
  %482 = load i32, i32* %481, align 8, !tbaa !9
  %483 = icmp ugt i32 %482, %front.1.i.i.i.i.i
  br i1 %483, label %Kotlin_CharArray_set.exit78.i.i.i.i.i, label %484

484:                                              ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit78.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  %485 = bitcast %struct.ObjHeader* %479 to i64*
  %486 = load atomic volatile i64, i64* %485 monotonic, align 8
  %487 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %479, i64 2
  %488 = bitcast %struct.ObjHeader* %487 to i16*
  %489 = sext i32 %front.1.i.i.i.i.i to i64
  %490 = getelementptr inbounds i16, i16* %488, i64 %489
  store i16 %332, i16* %490, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_exit45.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_set.exit78.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i, %Kotlin_CharArray_get.exit87.i.i.i.i.i
  %allowEndSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %allowFrontSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %endTrailingChar.0.i.i.i.i.i = phi i16 [ %416, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %332, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %332, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %endTrailingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %frontLeadingChar.0.i.i.i.i.i = phi i16 [ %404, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %320, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %frontLeadingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %320, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %front.0.i.i.i.i.i = phi i32 [ %310, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %end.0.i.i.i.i.i = phi i32 [ %322, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %491 = add i32 %front.0.i.i.i.i.i, 1
  %492 = add i32 %end.0.i.i.i.i.i, -1
  br label %loop_check.i.i.i.i.i

loop_check.i.i.i.i.i:                             ; preds = %when_exit45.i.i.i.i.i, %Kotlin_CharArray_get.exit80.i.i.i.i.i
  %allowEndSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowEndSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %allowFrontSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowFrontSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %endTrailingChar.1.i.i.i.i.i = phi i16 [ %304, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %endTrailingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %frontLeadingChar.1.i.i.i.i.i = phi i16 [ %293, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %frontLeadingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %front.1.i.i.i.i.i = phi i32 [ 0, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %491, %when_exit45.i.i.i.i.i ]
  %end.1.i.i.i.i.i = phi i32 [ %283, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %492, %when_exit45.i.i.i.i.i ]
  %493 = load i32, i32* %280, align 8
  %494 = sdiv i32 %493, 2
  %495 = icmp slt i32 %front.1.i.i.i.i.i, %494
  br i1 %495, label %while_loop.i.i.i.i.i, label %loop_exit.i.i.i.i.i

loop_exit.i.i.i.i.i:                              ; preds = %loop_check.i.i.i.i.i
  %496 = srem i32 %493, 2
  %497 = icmp ne i32 %496, 1
  %brmerge.demorgan = and i1 %allowEndSurrogate.1.i.i.i.i.i, %allowFrontSurrogate.1.i.i.i.i.i
  %or.cond180 = or i1 %497, %brmerge.demorgan
  br i1 %or.cond180, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_case61.i.i.i.i.i

when_case61.i.i.i.i.i:                            ; preds = %loop_exit.i.i.i.i.i
  %498 = load %struct.ObjHeader*, %struct.ObjHeader** %285, align 8
  store %struct.ObjHeader* %498, %struct.ObjHeader** %184, align 8, !tbaa !11
  %499 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %498, i64 1
  %500 = bitcast %struct.ObjHeader* %499 to i32*
  %501 = load i32, i32* %500, align 8, !tbaa !9
  %502 = icmp ugt i32 %501, %end.1.i.i.i.i.i
  br i1 %502, label %Kotlin_CharArray_set.exit.i.i.i.i.i, label %503

503:                                              ; preds = %when_case61.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit.i.i.i.i.i:              ; preds = %when_case61.i.i.i.i.i
  %spec.select = select i1 %allowFrontSurrogate.1.i.i.i.i.i, i16 %endTrailingChar.1.i.i.i.i.i, i16 %frontLeadingChar.1.i.i.i.i.i
  %504 = bitcast %struct.ObjHeader* %498 to i64*
  %505 = load atomic volatile i64, i64* %504 monotonic, align 8
  %506 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %498, i64 2
  %507 = bitcast %struct.ObjHeader* %506 to i16*
  %508 = sext i32 %end.1.i.i.i.i.i to i64
  %509 = getelementptr inbounds i16, i16* %507, i64 %508
  store i16 %spec.select, i16* %509, align 2, !tbaa !41
  br label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i"

"kfun:Value#<init>(kotlin.Int){}.exit.i.i":       ; preds = %Kotlin_CharArray_set.exit.i.i.i.i.i, %loop_exit.i.i.i.i.i, %when_exit19.i.i.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %510 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %511 = bitcast %"class.kotlin::mm::ShadowStack"* %510 to i64*
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %168)
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %192, align 8, !tbaa !11
  %512 = load i64, i64* %162, align 8, !tbaa !31
  store i64 %512, i64* %511, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %158)
  %513 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#toString(){}kotlin.String"(%struct.ObjHeader* nonnull %250, %struct.ObjHeader** nonnull %150)
  %514 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226, i64 3
  %515 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %514 to %struct.ObjHeader**
  store %struct.ObjHeader* %513, %struct.ObjHeader** %515, align 8, !tbaa !11
  %516 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %517 = load i64, i64* %153, align 8, !tbaa !31
  %518 = bitcast %"class.kotlin::mm::ShadowStack"* %516 to i64*
  store i64 %517, i64* %518, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %147)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %140)
  %519 = load i32, i32* %194, align 8
  %520 = load i32, i32* %196, align 4
  %521 = add i32 %519, %520
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %140, i32 %521, %struct.ObjHeader* nonnull %229)
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"
  %522 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %145 monotonic, align 8
  %523 = ptrtoint %struct.TypeInfo* %522 to i64
  %524 = and i64 %523, -4
  %525 = inttoptr i64 %524 to %struct.TypeInfo*
  %526 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %525, i64 0, i32 0
  %527 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %526 monotonic, align 8
  %528 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %527, i64 0, i32 9
  %529 = load i32, i32* %528, align 4
  %530 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %527, i64 0, i32 10
  %531 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %530, align 8
  %532 = and i32 %529, 160
  %533 = zext i32 %532 to i64
  %534 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %531, i64 %533, i32 2
  %535 = bitcast i8*** %534 to i1 (%struct.ObjHeader*)***
  %536 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %535, align 8
  %537 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %536, align 8
  %538 = call zeroext i1 %537(%struct.ObjHeader* nonnull %144)
  br i1 %538, label %while_loop.i.i, label %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"

"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i": ; preds = %loop_check.i.i
  %539 = bitcast %struct.ObjHeader** %30 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %539, align 8, !tbaa !11
  %540 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %541 = load i64, i64* %65, align 8, !tbaa !31
  %542 = bitcast %"class.kotlin::mm::ShadowStack"* %540 to i64*
  store i64 %541, i64* %542, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %57)
  %543 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %544 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %543 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %545 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %544, align 8, !tbaa !11
  %546 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %545, i64 0, i32 2, i32 1
  %547 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %546, i64 32) #37
  %548 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %547, i64 1
  %549 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %547, i64 2
  %550 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %549 to %struct.ObjHeader*
  %551 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %549 to %struct.TypeInfo**
  %552 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %548 to i64*
  store i64 0, i64* %552, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %551, align 8, !tbaa !35
  %553 = bitcast %struct.ObjHeader** %31 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %549, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %553, align 8, !tbaa !11
  %554 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %547, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %554, align 8, !tbaa !11
  %555 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %547, i64 4
  %556 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %555 to i32*
  store i32 0, i32* %556, align 8
  %557 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %549 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %558 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %557, i64 0, i32 3
  store i32 -1, i32* %558, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %549, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %553, align 8, !tbaa !11
  %559 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %50, i64 7
  %560 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %559 to i32*
  %561 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %562 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %561, i64 0, i32 6
  br label %loop_check.i6

while_loop.i4:                                    ; preds = %loop_check.i6
  %563 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %566

566:                                              ; preds = %while_loop.i4
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5

Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %566, %while_loop.i4
  %567 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %551 monotonic, align 8
  %568 = ptrtoint %struct.TypeInfo* %567 to i64
  %569 = and i64 %568, -4
  %570 = inttoptr i64 %569 to %struct.TypeInfo*
  %571 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %570, i64 0, i32 0
  %572 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %571 monotonic, align 8
  %573 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %572, i64 0, i32 9
  %574 = load i32, i32* %573, align 4
  %575 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %572, i64 0, i32 10
  %576 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %575, align 8
  %577 = and i32 %574, 160
  %578 = zext i32 %577 to i64
  %579 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %576, i64 %578, i32 2
  %580 = load i8**, i8*** %579, align 8
  %581 = getelementptr i8*, i8** %580, i64 1
  %582 = bitcast i8** %581 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %583 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %582, align 8
  %584 = call %struct.ObjHeader* %583(%struct.ObjHeader* nonnull %550, %struct.ObjHeader** nonnull %32)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %53)
  %585 = load i32, i32* %560, align 8
  %586 = load i32, i32* %562, align 4
  %587 = add i32 %585, %586
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %53, i32 %587, %struct.ObjHeader* %584)
  br label %loop_check.i6

loop_check.i6:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5, %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"
  %588 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %551 monotonic, align 8
  %589 = ptrtoint %struct.TypeInfo* %588 to i64
  %590 = and i64 %589, -4
  %591 = inttoptr i64 %590 to %struct.TypeInfo*
  %592 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %591, i64 0, i32 0
  %593 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %592 monotonic, align 8
  %594 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %593, i64 0, i32 9
  %595 = load i32, i32* %594, align 4
  %596 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %593, i64 0, i32 10
  %597 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %596, align 8
  %598 = and i32 %595, 160
  %599 = zext i32 %598 to i64
  %600 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %597, i64 %599, i32 2
  %601 = bitcast i8*** %600 to i1 (%struct.ObjHeader*)***
  %602 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %601, align 8
  %603 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %602, align 8
  %604 = call zeroext i1 %603(%struct.ObjHeader* nonnull %550)
  br i1 %604, label %while_loop.i4, label %loop_exit.i

loop_exit.i:                                      ; preds = %loop_check.i6
  %605 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %606 = bitcast %struct.ObjHeader* %605 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %606, align 8, !tbaa !11
  %607 = load i32, i32* %562, align 4
  %608 = icmp slt i32 %607, 0
  br i1 %608, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %loop_exit.i
  %609 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %610 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %611 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %610 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %612 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %611, align 8, !tbaa !11
  %613 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %612, i64 0, i32 2, i32 1
  %614 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %613, i64 56) #37
  %615 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %614, i64 1
  %616 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %614, i64 2
  %617 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %616 to %struct.ObjHeader*
  %618 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %616 to %struct.TypeInfo**
  %619 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %615 to i64*
  store i64 0, i64* %619, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %618, align 8, !tbaa !35
  %620 = bitcast %struct.ObjHeader** %609 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %616, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %620, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %617, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @126 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %617) #49
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %loop_exit.i
  %621 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %622 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %621 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %623 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %622, align 8, !tbaa !11
  %624 = zext i32 %607 to i64
  %625 = shl nuw nsw i64 %624, 3
  %626 = add nuw nsw i64 %625, 31
  %627 = and i64 %626, 68719476728
  %628 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %623, i64 0, i32 2, i32 1
  %629 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %628, i64 %627) #37
  %630 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %629, i64 1
  %631 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %629, i64 2
  %632 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %631 to %struct.TypeInfo**
  %633 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %630 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %633, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %632, align 8, !tbaa !37
  %634 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %629, i64 3
  %635 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %634 to i32*
  store i32 %607, i32* %635, align 8, !tbaa !9
  %636 = bitcast %struct.ObjHeader** %33 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %631, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %636, align 8, !tbaa !11
  %637 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 6
  %638 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %637 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %639 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %638, align 8, !tbaa !11
  %640 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %639, i64 0, i32 2, i32 1
  %641 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %640, i64 32) #37
  %642 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 1
  %643 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 2
  %644 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to %struct.ObjHeader*
  %645 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to %struct.TypeInfo**
  %646 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642 to i64*
  store i64 0, i64* %646, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %645, align 8, !tbaa !35
  %647 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %647, align 8, !tbaa !11
  %648 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %648, align 8, !tbaa !11
  %649 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 4
  %650 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %649 to i32*
  store i32 0, i32* %650, align 8
  %651 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %652 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %651, i64 0, i32 3
  store i32 -1, i32* %652, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %647, align 8, !tbaa !11
  %653 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %641, i64 3
  %654 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %653 to %"kclassbody:kotlin.collections.ArrayList#internal"**
  %655 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %631 to i64*
  %656 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %629, i64 4
  br label %loop_check17.i

while_loop18.i:                                   ; preds = %loop_check17.i
  %657 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %658 = and i8 %657, 1
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %Kotlin_mm_safePointWhileLoopBody.exit25.i, label %660

660:                                              ; preds = %while_loop18.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit25.i

Kotlin_mm_safePointWhileLoopBody.exit25.i:        ; preds = %660, %while_loop18.i
  %661 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList.Itr.next#internal"(%struct.ObjHeader* nonnull %644, %struct.ObjHeader** nonnull %35)
  %662 = load i32, i32* %635, align 8, !tbaa !9
  %663 = icmp ugt i32 %662, %index.0.i
  br i1 %663, label %Kotlin_Array_set.exit.i, label %664

664:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit25.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit25.i
  %665 = load atomic volatile i64, i64* %655 monotonic, align 8
  %666 = sext i32 %index.0.i to i64
  %667 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %656, i64 %666
  %668 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %667 to %struct.ObjHeader**
  store %struct.ObjHeader* %661, %struct.ObjHeader** %668, align 8, !tbaa !11
  %669 = add i32 %index.0.i, 1
  br label %loop_check17.i

loop_check17.i:                                   ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %index.0.i = phi i32 [ 0, %AllocArrayInstance.exit.i ], [ %669, %Kotlin_Array_set.exit.i ]
  %670 = load i32, i32* %650, align 8
  %671 = load %"kclassbody:kotlin.collections.ArrayList#internal"*, %"kclassbody:kotlin.collections.ArrayList#internal"** %654, align 8
  %672 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %671, i64 0, i32 6
  %673 = load i32, i32* %672, align 4
  %674 = icmp slt i32 %670, %673
  br i1 %674, label %while_loop18.i, label %loop_exit16.i

loop_exit16.i:                                    ; preds = %loop_check17.i
  %675 = load atomic volatile i64, i64* %655 monotonic, align 8
  %676 = and i64 %675, -4
  %677 = inttoptr i64 %676 to i64*
  %678 = load atomic volatile i64, i64* %677 monotonic, align 8
  %679 = inttoptr i64 %678 to %struct.TypeInfo*
  %680 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %679, i64 0, i32 14
  %681 = load i32, i32* %680, align 4, !tbaa !3
  %682 = icmp eq i32 %681, 72
  br i1 %682, label %call_success, label %label_22.i

label_22.i:                                       ; preds = %loop_exit16.i
  %683 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %631 to %struct.ObjHeader*
  call fastcc void @ThrowClassCastException(%struct.ObjHeader* nonnull %683, i8* bitcast ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal" to i8*)) #49
  unreachable

call_success:                                     ; preds = %loop_exit16.i
  %684 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %685 = bitcast %struct.ObjHeader* %684 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %631, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %685, align 8, !tbaa !11
  %686 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %687 = load i64, i64* %41, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %28)
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %147)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %147, i8 0, i32 48, i1 immarg false) #50
  store i64 %687, i64* %153, align 8, !tbaa !31
  %688 = bitcast %"class.kotlin::mm::ShadowStack"* %686 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i1.i.i, %struct.ObjHeader*** %688, align 8, !tbaa !29
  store i32 0, i32* %155, align 8, !tbaa !33
  store i32 6, i32* %156, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %158)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %158, i8 0, i32 32, i1 immarg false) #50
  %689 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %690 = bitcast %"class.kotlin::mm::ShadowStack"* %689 to i64*
  %691 = load i64, i64* %690, align 8, !tbaa !29
  store i64 %691, i64* %162, align 8, !tbaa !31
  %692 = bitcast %"class.kotlin::mm::ShadowStack"* %689 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i, %struct.ObjHeader*** %692, align 8, !tbaa !29
  store i32 0, i32* %164, align 8, !tbaa !33
  store i32 4, i32* %165, align 4, !tbaa !34
  %693 = bitcast %struct.ObjHeader* %684 to %struct.ObjHeader**
  %694 = load %struct.ObjHeader*, %struct.ObjHeader** %693, align 8
  store %struct.ObjHeader* %694, %struct.ObjHeader** %159, align 8, !tbaa !11
  %.not.i.i = icmp eq %struct.ObjHeader* %694, null
  br i1 %.not.i.i, label %when_next.i.i, label %"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i"

when_next.i.i:                                    ; preds = %call_success
  call fastcc void @"kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing"() #49
  unreachable

"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i": ; preds = %call_success
  store %struct.ObjHeader* %694, %struct.ObjHeader** %148, align 8, !tbaa !11
  %695 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %696 = load i64, i64* %162, align 8, !tbaa !31
  %697 = bitcast %"class.kotlin::mm::ShadowStack"* %695 to i64*
  store i64 %696, i64* %697, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %158)
  %698 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %694, i64 1
  %699 = bitcast %struct.ObjHeader* %698 to i32*
  %700 = load i32, i32* %699, align 8, !tbaa !9
  %701 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %694, i64 2
  %702 = icmp sgt i32 %700, 0
  %smax = select i1 %702, i32 %700, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %703 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %704 = and i8 %703, 1
  %705 = icmp eq i8 %704, 0
  br i1 %705, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %706

706:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %706, %while_loop.i
  %707 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %701, i64 %indvars.iv
  %708 = bitcast %struct.ObjHeader* %707 to %struct.ObjHeader**
  %709 = load %struct.ObjHeader*, %struct.ObjHeader** %708, align 8, !tbaa !11
  store %struct.ObjHeader* %709, %struct.ObjHeader** %149, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %710 = load i32, i32* @"state_thread_local$Blackhole", align 4
  %711 = icmp eq i32 %710, 2
  br i1 %711, label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Blackhole", void ()* nonnull @"kfun:Blackhole.$init_thread_local#internal")
  br label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"

"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %712 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %713 = load %struct.ObjHeader*, %struct.ObjHeader** %712, align 8
  store %struct.ObjHeader* %713, %struct.ObjHeader** %150, align 8, !tbaa !11
  %714 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %713, i64 1
  %715 = bitcast %struct.ObjHeader* %714 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %709, i64 0, i32 0
  %718 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %717 monotonic, align 8
  %719 = ptrtoint %struct.TypeInfo* %718 to i64
  %720 = and i64 %719, -4
  %721 = inttoptr i64 %720 to %struct.TypeInfo*
  %722 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %721, i64 0, i32 0
  %723 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %722 monotonic, align 8
  %724 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %723, i64 1, i32 1
  %725 = bitcast %struct.ExtendedTypeInfo** %724 to i32 (%struct.ObjHeader*)**
  %726 = load i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %725, align 8
  %727 = call i32 %726(%struct.ObjHeader* %709)
  %728 = add i32 %716, %727
  store i32 %728, i32* %715, align 4
  br label %loop_check.i

loop_check.i:                                     ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 0, %"kfun:LoopBenchmark#<get-array>(){}kotlin.Array<Value>.exit.i" ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %729 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %13, i64 0, i32 1, i32 5
  %730 = bitcast %"class.kotlin::mm::ShadowStack"* %729 to i64*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %147)
  %731 = load i64, i64* %19, align 8, !tbaa !31
  store i64 %731, i64* %730, align 8, !tbaa !29
  ret void
}
