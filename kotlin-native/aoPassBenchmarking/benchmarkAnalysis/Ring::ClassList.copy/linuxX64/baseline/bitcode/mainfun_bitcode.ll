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
  %17 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !11
  %18 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %19 = bitcast [5 x %struct.ObjHeader*]* %10 to %struct.FrameOverlay.6*
  %20 = bitcast %"class.kotlin::mm::ShadowStack"* %18 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !29
  %22 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 1
  %23 = bitcast %struct.ObjHeader** %22 to i64*
  store i64 %21, i64* %23, align 8, !tbaa !31
  %24 = bitcast %"class.kotlin::mm::ShadowStack"* %18 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %24, align 8, !tbaa !29
  %25 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %10, i64 0, i64 2
  %26 = bitcast %struct.ObjHeader** %25 to i32*
  store i32 0, i32* %26, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %19, i64 0, i32 3
  store i32 5, i32* %27, align 4, !tbaa !34
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
  %40 = load i64, i64* %39, align 8, !tbaa !29
  %41 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %42 = bitcast %struct.ObjHeader** %41 to i64*
  store i64 %40, i64* %42, align 8, !tbaa !31
  %43 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %43, align 8, !tbaa !29
  %44 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %45 = bitcast %struct.ObjHeader** %44 to i32*
  store i32 0, i32* %45, align 8, !tbaa !33
  %46 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %38, i64 0, i32 3
  store i32 7, i32* %46, align 4, !tbaa !34
  %47 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %48 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %47 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %49 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %48, align 8, !tbaa !11
  %50 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %49, i64 0, i32 2, i32 1
  %51 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %50, i64 64) #37
  %52 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 1
  %53 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 2
  %54 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %struct.ObjHeader*
  %55 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %struct.TypeInfo**
  %56 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to i64*
  store i64 0, i64* %56, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %55, align 8, !tbaa !35
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
  %64 = load i64, i64* %63, align 8, !tbaa !29
  %65 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %66 = bitcast %struct.ObjHeader** %65 to i64*
  store i64 %64, i64* %66, align 8, !tbaa !31
  %67 = bitcast %"class.kotlin::mm::ShadowStack"* %61 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i3, %struct.ObjHeader*** %67, align 8, !tbaa !29
  %68 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %69 = bitcast %struct.ObjHeader** %68 to i32*
  store i32 0, i32* %69, align 8, !tbaa !33
  %70 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %62, i64 0, i32 3
  store i32 8, i32* %70, align 4, !tbaa !34
  %71 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %72 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %71 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %73 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %72, align 8, !tbaa !11
  %74 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %73, i64 0, i32 2, i32 1
  %75 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %74, i64 32) #37
  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 1
  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 2
  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.ObjHeader*
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.TypeInfo**
  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i64*
  store i64 0, i64* %80, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %79, align 8, !tbaa !35
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
  %86 = load i64, i64* %85, align 8, !tbaa !29
  %87 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 1
  %88 = bitcast %struct.ObjHeader** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !31
  %89 = bitcast %"class.kotlin::mm::ShadowStack"* %83 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i4, %struct.ObjHeader*** %89, align 8, !tbaa !29
  %90 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %9, i64 0, i64 2
  %91 = bitcast %struct.ObjHeader** %90 to i32*
  store i32 0, i32* %91, align 8, !tbaa !33
  %92 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %84, i64 0, i32 3
  store i32 4, i32* %92, align 4, !tbaa !34
  %93 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %79 monotonic, align 8
  %94 = ptrtoint %struct.TypeInfo* %93 to i64
  %95 = and i64 %94, -4
  %96 = inttoptr i64 %95 to %struct.TypeInfo*
  %97 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %96, i64 0, i32 0
  %98 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %97 monotonic, align 8
  %99 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %98, i64 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %98, i64 0, i32 10
  %102 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %101, align 8
  %103 = and i32 %100, 18
  %104 = zext i32 %103 to i64
  %105 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %102, i64 %104, i32 0
  %106 = load i32, i32* %105, align 4
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
  %117 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %116, align 8, !tbaa !11
  %118 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %117, i64 0, i32 2, i32 1
  %119 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %118, i64 24) #37
  %120 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 1
  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 2
  %122 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121 to %struct.ObjHeader*
  %123 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121 to %struct.TypeInfo**
  %124 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %120 to i64*
  store i64 0, i64* %124, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.internal.KClassImpl#internal", i64 0, i32 0), %struct.TypeInfo** %123, align 8, !tbaa !35
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
  %132 = load i64, i64* %88, align 8, !tbaa !31
  %133 = bitcast %"class.kotlin::mm::ShadowStack"* %131 to i64*
  store i64 %132, i64* %133, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %82)
  %134 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %135 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %134 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %136 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %135, align 8, !tbaa !11
  %137 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %136, i64 0, i32 2, i32 1
  %138 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %137, i64 64) #37
  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138, i64 1
  %140 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138, i64 2
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140 to %struct.ObjHeader*
  %142 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140 to %struct.TypeInfo**
  %143 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to i64*
  store i64 0, i64* %143, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %142, align 8, !tbaa !35
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
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %207, i64 0, i32 10
  %211 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %210, align 8
  %212 = and i32 %209, 160
  %213 = zext i32 %212 to i64
  %214 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %211, i64 %213, i32 2
  %215 = load i8**, i8*** %214, align 8
  %216 = getelementptr i8*, i8** %215, i64 1
  %217 = bitcast i8** %216 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %218 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %217, align 8
  %219 = call %struct.ObjHeader* %218(%struct.ObjHeader* nonnull %145, %struct.ObjHeader** nonnull %60)
  %220 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %219, i64 1
  %221 = bitcast %struct.ObjHeader* %220 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %224 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %223 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %225 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %224, align 8, !tbaa !11
  %226 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %225, i64 0, i32 2, i32 1
  %227 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %226, i64 32) #37
  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 1
  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 2
  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.ObjHeader*
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.TypeInfo**
  %232 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to i64*
  store i64 0, i64* %232, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Value#internal", i64 0, i32 0), %struct.TypeInfo** %231, align 8, !tbaa !35
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %147, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %148)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %148, i8 0, i32 48, i1 immarg false) #50
  %233 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %234 = bitcast %"class.kotlin::mm::ShadowStack"* %233 to i64*
  %235 = load i64, i64* %234, align 8, !tbaa !29
  store i64 %235, i64* %154, align 8, !tbaa !31
  %236 = bitcast %"class.kotlin::mm::ShadowStack"* %233 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i1.i.i, %struct.ObjHeader*** %236, align 8, !tbaa !29
  store i32 0, i32* %156, align 8, !tbaa !33
  store i32 6, i32* %157, align 4, !tbaa !34
  %237 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 4
  %238 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %237 to i32*
  store i32 %222, i32* %238, align 8
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %158) #37
  call void (i8*, i64, i8*, ...) @_ZN5konan8snprintfEPcmPKcz(i8* nonnull %158, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.849, i64 0, i64 0), i32 %222)
  %239 = call fastcc %struct.ObjHeader* @CreateStringFromCString(i8* nonnull %158, %struct.ObjHeader** nonnull %149)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %158) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %159)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %159, i8 0, i32 32, i1 immarg false) #50
  %240 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %241 = bitcast %"class.kotlin::mm::ShadowStack"* %240 to i64*
  %242 = load i64, i64* %241, align 8, !tbaa !29
  store i64 %242, i64* %163, align 8, !tbaa !31
  %243 = bitcast %"class.kotlin::mm::ShadowStack"* %240 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i6, %struct.ObjHeader*** %243, align 8, !tbaa !29
  store i32 0, i32* %165, align 8, !tbaa !33
  store i32 4, i32* %166, align 4, !tbaa !34
  %244 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %245 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %244 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %246 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %245, align 8, !tbaa !11
  %247 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %246, i64 0, i32 2, i32 1
  %248 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %247, i64 32) #37
  %249 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 1
  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 2
  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to %struct.ObjHeader*
  %252 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250 to %struct.TypeInfo**
  %253 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %249 to i64*
  store i64 0, i64* %253, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.text.StringBuilder#internal", i64 0, i32 0), %struct.TypeInfo** %252, align 8, !tbaa !35
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %167, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %82)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %82, i8 0, i32 32, i1 immarg false) #50
  %254 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %255 = bitcast %"class.kotlin::mm::ShadowStack"* %254 to i64*
  %256 = load i64, i64* %255, align 8, !tbaa !29
  store i64 %256, i64* %88, align 8, !tbaa !31
  %257 = bitcast %"class.kotlin::mm::ShadowStack"* %254 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i4, %struct.ObjHeader*** %257, align 8, !tbaa !29
  store i32 0, i32* %91, align 8, !tbaa !33
  store i32 4, i32* %92, align 4, !tbaa !34
  %258 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %239, i64 0, i32 0
  %259 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %258 monotonic, align 8
  %260 = ptrtoint %struct.TypeInfo* %259 to i64
  %261 = and i64 %260, -4
  %262 = inttoptr i64 %261 to %struct.TypeInfo*
  %263 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %262, i64 0, i32 0
  %264 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %263 monotonic, align 8
  %265 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %264, i64 0, i32 9
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %264, i64 0, i32 10
  %268 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %267, align 8
  %269 = and i32 %266, 25
  %270 = zext i32 %269 to i64
  %271 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %268, i64 %270, i32 2
  %272 = bitcast i8*** %271 to i32 (%struct.ObjHeader*)***
  %273 = load i32 (%struct.ObjHeader*)**, i32 (%struct.ObjHeader*)*** %272, align 8
  %274 = load i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %273, align 8
  %275 = call i32 %274(%struct.ObjHeader* %239)
  call fastcc void @"kfun:kotlin.text.StringBuilder#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %251, i32 %275)
  %276 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#append(kotlin.CharSequence?){}kotlin.text.StringBuilder"(%struct.ObjHeader* nonnull %251, %struct.ObjHeader* %239, %struct.ObjHeader** nonnull %168)
  %277 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %278 = load i64, i64* %88, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %82)
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %169)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(160) %169, i8 0, i32 160, i1 immarg false) #50
  store i64 %278, i64* %188, align 8, !tbaa !31
  %279 = bitcast %"class.kotlin::mm::ShadowStack"* %277 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i.i, %struct.ObjHeader*** %279, align 8, !tbaa !29
  store i32 0, i32* %190, align 8, !tbaa !33
  store i32 20, i32* %191, align 4, !tbaa !34
  %280 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 4
  %281 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %280 to i32*
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %282, 2
  br i1 %283, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit.i.i.i.i.i

when_exit.i.i.i.i.i:                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %284 = add i32 %282, -1
  %285 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, i64 3
  %286 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %285 to %struct.ObjHeader**
  %287 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %287, %struct.ObjHeader** %192, align 8, !tbaa !11
  %288 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %287, i64 1
  %289 = bitcast %struct.ObjHeader* %288 to i32*
  %290 = load i32, i32* %289, align 8, !tbaa !9
  %.not = icmp eq i32 %290, 0
  br i1 %.not, label %291, label %Kotlin_CharArray_get.exit.i.i.i.i.i

291:                                              ; preds = %when_exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit.i.i.i.i.i:              ; preds = %when_exit.i.i.i.i.i
  %292 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %287, i64 2
  %293 = bitcast %struct.ObjHeader* %292 to i16*
  %294 = load i16, i16* %293, align 2, !tbaa !41
  %295 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %295, %struct.ObjHeader** %170, align 8, !tbaa !11
  %296 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %295, i64 1
  %297 = bitcast %struct.ObjHeader* %296 to i32*
  %298 = load i32, i32* %297, align 8, !tbaa !9
  %299 = icmp ugt i32 %298, %284
  br i1 %299, label %Kotlin_CharArray_get.exit80.i.i.i.i.i, label %300

300:                                              ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit80.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit.i.i.i.i.i
  %301 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %295, i64 2
  %302 = bitcast %struct.ObjHeader* %301 to i16*
  %303 = sext i32 %284 to i64
  %304 = getelementptr inbounds i16, i16* %302, i64 %303
  %305 = load i16, i16* %304, align 2, !tbaa !41
  br label %loop_check.i.i.i.i.i

while_loop.i.i.i.i.i:                             ; preds = %loop_check.i.i.i.i.i
  %306 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i, label %309

309:                                              ; preds = %while_loop.i.i.i.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i:  ; preds = %309, %while_loop.i.i.i.i.i
  %310 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %310, %struct.ObjHeader** %171, align 8, !tbaa !11
  %311 = add i32 %front.1.i.i.i.i.i, 1
  %312 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %310, i64 1
  %313 = bitcast %struct.ObjHeader* %312 to i32*
  %314 = load i32, i32* %313, align 8, !tbaa !9
  %315 = icmp ugt i32 %314, %311
  br i1 %315, label %Kotlin_CharArray_get.exit82.i.i.i.i.i, label %316

316:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit82.i.i.i.i.i:            ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i.i
  %317 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %310, i64 2
  %318 = bitcast %struct.ObjHeader* %317 to i16*
  %319 = sext i32 %311 to i64
  %320 = getelementptr inbounds i16, i16* %318, i64 %319
  %321 = load i16, i16* %320, align 2, !tbaa !41
  %322 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %322, %struct.ObjHeader** %172, align 8, !tbaa !11
  %323 = add i32 %end.1.i.i.i.i.i, -1
  %324 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %322, i64 1
  %325 = bitcast %struct.ObjHeader* %324 to i32*
  %326 = load i32, i32* %325, align 8, !tbaa !9
  %327 = icmp ugt i32 %326, %323
  br i1 %327, label %Kotlin_CharArray_get.exit84.i.i.i.i.i, label %328

328:                                              ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit84.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit82.i.i.i.i.i
  %329 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %322, i64 2
  %330 = bitcast %struct.ObjHeader* %329 to i16*
  %331 = sext i32 %323 to i64
  %332 = getelementptr inbounds i16, i16* %330, i64 %331
  %333 = load i16, i16* %332, align 2, !tbaa !41
  %334 = and i16 %321, -1024
  %335 = icmp eq i16 %334, -9216
  %or.cond = and i1 %allowFrontSurrogate.1.i.i.i.i.i, %335
  %336 = and i16 %frontLeadingChar.1.i.i.i.i.i, -1024
  %337 = icmp eq i16 %336, -10240
  %or.cond175 = and i1 %or.cond, %337
  br i1 %or.cond175, label %when_exit19.i.i.i.i.i, label %when_exit20.i.i.i.i.i.thread

when_exit19.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %338 = load i32, i32* %281, align 8
  %339 = icmp slt i32 %338, 3
  br i1 %339, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_exit20.i.i.i.i.i

when_exit20.i.i.i.i.i:                            ; preds = %when_exit19.i.i.i.i.i
  %340 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %341 = icmp eq i16 %340, -9216
  %or.cond177 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %341
  br i1 %or.cond177, label %when_exit38.i.i.i.i.i, label %when_exit38.i.i.i.i.i.thread

when_exit20.i.i.i.i.i.thread:                     ; preds = %Kotlin_CharArray_get.exit84.i.i.i.i.i
  %342 = and i16 %endTrailingChar.1.i.i.i.i.i, -1024
  %343 = icmp eq i16 %342, -9216
  %or.cond177178 = and i1 %allowEndSurrogate.1.i.i.i.i.i, %343
  br i1 %or.cond177178, label %when_exit48.i.i.i.i.i, label %when_exit48.i.i.i.i.i.thread

when_exit48.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i.thread
  %344 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  br label %when_case31.i.i.i.i.i

when_exit38.i.i.i.i.i.thread:                     ; preds = %when_exit20.i.i.i.i.i
  %345 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  br label %when_case33.i.i.i.i.i

when_exit38.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i
  %346 = and i16 %333, -1024
  %347 = icmp eq i16 %346, -10240
  %348 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  br i1 %347, label %when_case29.i.i.i.i.i, label %when_case33.i.i.i.i.i

when_case29.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i
  store %struct.ObjHeader* %348, %struct.ObjHeader** %173, align 8, !tbaa !11
  %349 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %348, i64 1
  %350 = bitcast %struct.ObjHeader* %349 to i32*
  %351 = load i32, i32* %350, align 8, !tbaa !9
  %352 = icmp ugt i32 %351, %end.1.i.i.i.i.i
  br i1 %352, label %Kotlin_CharArray_set.exit90.i.i.i.i.i, label %353

353:                                              ; preds = %when_case29.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit90.i.i.i.i.i:            ; preds = %when_case29.i.i.i.i.i
  %354 = bitcast %struct.ObjHeader* %348 to i64*
  %355 = load atomic volatile i64, i64* %354 monotonic, align 8
  %356 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %348, i64 2
  %357 = bitcast %struct.ObjHeader* %356 to i16*
  %358 = sext i32 %end.1.i.i.i.i.i to i64
  %359 = getelementptr inbounds i16, i16* %357, i64 %358
  store i16 %321, i16* %359, align 2, !tbaa !41
  %360 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %360, %struct.ObjHeader** %174, align 8, !tbaa !11
  %361 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %360, i64 1
  %362 = bitcast %struct.ObjHeader* %361 to i32*
  %363 = load i32, i32* %362, align 8, !tbaa !9
  %364 = icmp ugt i32 %363, %323
  br i1 %364, label %Kotlin_CharArray_set.exit92.i.i.i.i.i, label %365

365:                                              ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit92.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit90.i.i.i.i.i
  %366 = bitcast %struct.ObjHeader* %360 to i64*
  %367 = load atomic volatile i64, i64* %366 monotonic, align 8
  %368 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %360, i64 2
  %369 = bitcast %struct.ObjHeader* %368 to i16*
  %370 = getelementptr inbounds i16, i16* %369, i64 %331
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %370, align 2, !tbaa !41
  %371 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %371, %struct.ObjHeader** %175, align 8, !tbaa !11
  %372 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %371, i64 1
  %373 = bitcast %struct.ObjHeader* %372 to i32*
  %374 = load i32, i32* %373, align 8, !tbaa !9
  %375 = icmp ugt i32 %374, %front.1.i.i.i.i.i
  br i1 %375, label %Kotlin_CharArray_set.exit91.i.i.i.i.i, label %376

376:                                              ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit91.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit92.i.i.i.i.i
  %377 = bitcast %struct.ObjHeader* %371 to i64*
  %378 = load atomic volatile i64, i64* %377 monotonic, align 8
  %379 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %371, i64 2
  %380 = bitcast %struct.ObjHeader* %379 to i16*
  %381 = sext i32 %front.1.i.i.i.i.i to i64
  %382 = getelementptr inbounds i16, i16* %380, i64 %381
  store i16 %333, i16* %382, align 2, !tbaa !41
  %383 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %383, %struct.ObjHeader** %176, align 8, !tbaa !11
  %384 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %383, i64 1
  %385 = bitcast %struct.ObjHeader* %384 to i32*
  %386 = load i32, i32* %385, align 8, !tbaa !9
  %387 = icmp ugt i32 %386, %311
  br i1 %387, label %Kotlin_CharArray_set.exit89.i.i.i.i.i, label %388

388:                                              ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit89.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit91.i.i.i.i.i
  %389 = bitcast %struct.ObjHeader* %383 to i64*
  %390 = load atomic volatile i64, i64* %389 monotonic, align 8
  %391 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %383, i64 2
  %392 = bitcast %struct.ObjHeader* %391 to i16*
  %393 = getelementptr inbounds i16, i16* %392, i64 %319
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %393, align 2, !tbaa !41
  %394 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %394, %struct.ObjHeader** %177, align 8, !tbaa !11
  %395 = add i32 %front.1.i.i.i.i.i, 2
  %396 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %394, i64 1
  %397 = bitcast %struct.ObjHeader* %396 to i32*
  %398 = load i32, i32* %397, align 8, !tbaa !9
  %399 = icmp ugt i32 %398, %395
  br i1 %399, label %Kotlin_CharArray_get.exit88.i.i.i.i.i, label %400

400:                                              ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit88.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit89.i.i.i.i.i
  %401 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %394, i64 2
  %402 = bitcast %struct.ObjHeader* %401 to i16*
  %403 = sext i32 %395 to i64
  %404 = getelementptr inbounds i16, i16* %402, i64 %403
  %405 = load i16, i16* %404, align 2, !tbaa !41
  %406 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %406, %struct.ObjHeader** %178, align 8, !tbaa !11
  %407 = add i32 %end.1.i.i.i.i.i, -2
  %408 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %406, i64 1
  %409 = bitcast %struct.ObjHeader* %408 to i32*
  %410 = load i32, i32* %409, align 8, !tbaa !9
  %411 = icmp ugt i32 %410, %407
  br i1 %411, label %Kotlin_CharArray_get.exit87.i.i.i.i.i, label %412

412:                                              ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_get.exit87.i.i.i.i.i:            ; preds = %Kotlin_CharArray_get.exit88.i.i.i.i.i
  %413 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %406, i64 2
  %414 = bitcast %struct.ObjHeader* %413 to i16*
  %415 = sext i32 %407 to i64
  %416 = getelementptr inbounds i16, i16* %414, i64 %415
  %417 = load i16, i16* %416, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_exit48.i.i.i.i.i:                            ; preds = %when_exit20.i.i.i.i.i.thread
  %418 = and i16 %333, -1024
  %419 = icmp eq i16 %418, -10240
  %420 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  br i1 %419, label %when_case35.i.i.i.i.i, label %when_case31.i.i.i.i.i

when_case31.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i, %when_exit48.i.i.i.i.i.thread
  %421 = phi %struct.ObjHeader* [ %344, %when_exit48.i.i.i.i.i.thread ], [ %420, %when_exit48.i.i.i.i.i ]
  store %struct.ObjHeader* %421, %struct.ObjHeader** %179, align 8, !tbaa !11
  %422 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %421, i64 1
  %423 = bitcast %struct.ObjHeader* %422 to i32*
  %424 = load i32, i32* %423, align 8, !tbaa !9
  %425 = icmp ugt i32 %424, %end.1.i.i.i.i.i
  br i1 %425, label %Kotlin_CharArray_set.exit86.i.i.i.i.i, label %426

426:                                              ; preds = %when_case31.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit86.i.i.i.i.i:            ; preds = %when_case31.i.i.i.i.i
  %427 = bitcast %struct.ObjHeader* %421 to i64*
  %428 = load atomic volatile i64, i64* %427 monotonic, align 8
  %429 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %421, i64 2
  %430 = bitcast %struct.ObjHeader* %429 to i16*
  %431 = sext i32 %end.1.i.i.i.i.i to i64
  %432 = getelementptr inbounds i16, i16* %430, i64 %431
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %432, align 2, !tbaa !41
  %433 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %433, %struct.ObjHeader** %180, align 8, !tbaa !11
  %434 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %433, i64 1
  %435 = bitcast %struct.ObjHeader* %434 to i32*
  %436 = load i32, i32* %435, align 8, !tbaa !9
  %437 = icmp ugt i32 %436, %front.1.i.i.i.i.i
  br i1 %437, label %Kotlin_CharArray_set.exit85.i.i.i.i.i, label %438

438:                                              ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit85.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit86.i.i.i.i.i
  %439 = bitcast %struct.ObjHeader* %433 to i64*
  %440 = load atomic volatile i64, i64* %439 monotonic, align 8
  %441 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %433, i64 2
  %442 = bitcast %struct.ObjHeader* %441 to i16*
  %443 = sext i32 %front.1.i.i.i.i.i to i64
  %444 = getelementptr inbounds i16, i16* %442, i64 %443
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %444, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_case33.i.i.i.i.i:                            ; preds = %when_exit38.i.i.i.i.i, %when_exit38.i.i.i.i.i.thread
  %445 = phi %struct.ObjHeader* [ %345, %when_exit38.i.i.i.i.i.thread ], [ %348, %when_exit38.i.i.i.i.i ]
  store %struct.ObjHeader* %445, %struct.ObjHeader** %181, align 8, !tbaa !11
  %446 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %445, i64 1
  %447 = bitcast %struct.ObjHeader* %446 to i32*
  %448 = load i32, i32* %447, align 8, !tbaa !9
  %449 = icmp ugt i32 %448, %end.1.i.i.i.i.i
  br i1 %449, label %Kotlin_CharArray_set.exit83.i.i.i.i.i, label %450

450:                                              ; preds = %when_case33.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit83.i.i.i.i.i:            ; preds = %when_case33.i.i.i.i.i
  %451 = bitcast %struct.ObjHeader* %445 to i64*
  %452 = load atomic volatile i64, i64* %451 monotonic, align 8
  %453 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %445, i64 2
  %454 = bitcast %struct.ObjHeader* %453 to i16*
  %455 = sext i32 %end.1.i.i.i.i.i to i64
  %456 = getelementptr inbounds i16, i16* %454, i64 %455
  store i16 %321, i16* %456, align 2, !tbaa !41
  %457 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %457, %struct.ObjHeader** %182, align 8, !tbaa !11
  %458 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %457, i64 1
  %459 = bitcast %struct.ObjHeader* %458 to i32*
  %460 = load i32, i32* %459, align 8, !tbaa !9
  %461 = icmp ugt i32 %460, %front.1.i.i.i.i.i
  br i1 %461, label %Kotlin_CharArray_set.exit81.i.i.i.i.i, label %462

462:                                              ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit81.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit83.i.i.i.i.i
  %463 = bitcast %struct.ObjHeader* %457 to i64*
  %464 = load atomic volatile i64, i64* %463 monotonic, align 8
  %465 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %457, i64 2
  %466 = bitcast %struct.ObjHeader* %465 to i16*
  %467 = sext i32 %front.1.i.i.i.i.i to i64
  %468 = getelementptr inbounds i16, i16* %466, i64 %467
  store i16 %endTrailingChar.1.i.i.i.i.i, i16* %468, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_case35.i.i.i.i.i:                            ; preds = %when_exit48.i.i.i.i.i
  store %struct.ObjHeader* %420, %struct.ObjHeader** %183, align 8, !tbaa !11
  %469 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %420, i64 1
  %470 = bitcast %struct.ObjHeader* %469 to i32*
  %471 = load i32, i32* %470, align 8, !tbaa !9
  %472 = icmp ugt i32 %471, %end.1.i.i.i.i.i
  br i1 %472, label %Kotlin_CharArray_set.exit79.i.i.i.i.i, label %473

473:                                              ; preds = %when_case35.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit79.i.i.i.i.i:            ; preds = %when_case35.i.i.i.i.i
  %474 = bitcast %struct.ObjHeader* %420 to i64*
  %475 = load atomic volatile i64, i64* %474 monotonic, align 8
  %476 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %420, i64 2
  %477 = bitcast %struct.ObjHeader* %476 to i16*
  %478 = sext i32 %end.1.i.i.i.i.i to i64
  %479 = getelementptr inbounds i16, i16* %477, i64 %478
  store i16 %frontLeadingChar.1.i.i.i.i.i, i16* %479, align 2, !tbaa !41
  %480 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %480, %struct.ObjHeader** %184, align 8, !tbaa !11
  %481 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %480, i64 1
  %482 = bitcast %struct.ObjHeader* %481 to i32*
  %483 = load i32, i32* %482, align 8, !tbaa !9
  %484 = icmp ugt i32 %483, %front.1.i.i.i.i.i
  br i1 %484, label %Kotlin_CharArray_set.exit78.i.i.i.i.i, label %485

485:                                              ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit78.i.i.i.i.i:            ; preds = %Kotlin_CharArray_set.exit79.i.i.i.i.i
  %486 = bitcast %struct.ObjHeader* %480 to i64*
  %487 = load atomic volatile i64, i64* %486 monotonic, align 8
  %488 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %480, i64 2
  %489 = bitcast %struct.ObjHeader* %488 to i16*
  %490 = sext i32 %front.1.i.i.i.i.i to i64
  %491 = getelementptr inbounds i16, i16* %489, i64 %490
  store i16 %333, i16* %491, align 2, !tbaa !41
  br label %when_exit45.i.i.i.i.i

when_exit45.i.i.i.i.i:                            ; preds = %Kotlin_CharArray_set.exit78.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i, %Kotlin_CharArray_get.exit87.i.i.i.i.i
  %allowEndSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %allowFrontSurrogate.0.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ false, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ true, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %endTrailingChar.0.i.i.i.i.i = phi i16 [ %417, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %333, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %333, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %endTrailingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %frontLeadingChar.0.i.i.i.i.i = phi i16 [ %405, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %321, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %frontLeadingChar.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %321, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %front.0.i.i.i.i.i = phi i32 [ %311, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %front.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %end.0.i.i.i.i.i = phi i32 [ %323, %Kotlin_CharArray_get.exit87.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit85.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit81.i.i.i.i.i ], [ %end.1.i.i.i.i.i, %Kotlin_CharArray_set.exit78.i.i.i.i.i ]
  %492 = add i32 %front.0.i.i.i.i.i, 1
  %493 = add i32 %end.0.i.i.i.i.i, -1
  br label %loop_check.i.i.i.i.i

loop_check.i.i.i.i.i:                             ; preds = %when_exit45.i.i.i.i.i, %Kotlin_CharArray_get.exit80.i.i.i.i.i
  %allowEndSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowEndSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %allowFrontSurrogate.1.i.i.i.i.i = phi i1 [ true, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %allowFrontSurrogate.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %endTrailingChar.1.i.i.i.i.i = phi i16 [ %305, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %endTrailingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %frontLeadingChar.1.i.i.i.i.i = phi i16 [ %294, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %frontLeadingChar.0.i.i.i.i.i, %when_exit45.i.i.i.i.i ]
  %front.1.i.i.i.i.i = phi i32 [ 0, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %492, %when_exit45.i.i.i.i.i ]
  %end.1.i.i.i.i.i = phi i32 [ %284, %Kotlin_CharArray_get.exit80.i.i.i.i.i ], [ %493, %when_exit45.i.i.i.i.i ]
  %494 = load i32, i32* %281, align 8
  %495 = sdiv i32 %494, 2
  %496 = icmp slt i32 %front.1.i.i.i.i.i, %495
  br i1 %496, label %while_loop.i.i.i.i.i, label %loop_exit.i.i.i.i.i

loop_exit.i.i.i.i.i:                              ; preds = %loop_check.i.i.i.i.i
  %497 = srem i32 %494, 2
  %498 = icmp ne i32 %497, 1
  %brmerge.demorgan = and i1 %allowEndSurrogate.1.i.i.i.i.i, %allowFrontSurrogate.1.i.i.i.i.i
  %or.cond180 = or i1 %498, %brmerge.demorgan
  br i1 %or.cond180, label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", label %when_case61.i.i.i.i.i

when_case61.i.i.i.i.i:                            ; preds = %loop_exit.i.i.i.i.i
  %499 = load %struct.ObjHeader*, %struct.ObjHeader** %286, align 8
  store %struct.ObjHeader* %499, %struct.ObjHeader** %185, align 8, !tbaa !11
  %500 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %499, i64 1
  %501 = bitcast %struct.ObjHeader* %500 to i32*
  %502 = load i32, i32* %501, align 8, !tbaa !9
  %503 = icmp ugt i32 %502, %end.1.i.i.i.i.i
  br i1 %503, label %Kotlin_CharArray_set.exit.i.i.i.i.i, label %504

504:                                              ; preds = %when_case61.i.i.i.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #49
  unreachable

Kotlin_CharArray_set.exit.i.i.i.i.i:              ; preds = %when_case61.i.i.i.i.i
  %spec.select = select i1 %allowFrontSurrogate.1.i.i.i.i.i, i16 %endTrailingChar.1.i.i.i.i.i, i16 %frontLeadingChar.1.i.i.i.i.i
  %505 = bitcast %struct.ObjHeader* %499 to i64*
  %506 = load atomic volatile i64, i64* %505 monotonic, align 8
  %507 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %499, i64 2
  %508 = bitcast %struct.ObjHeader* %507 to i16*
  %509 = sext i32 %end.1.i.i.i.i.i to i64
  %510 = getelementptr inbounds i16, i16* %508, i64 %509
  store i16 %spec.select, i16* %510, align 2, !tbaa !41
  br label %"kfun:Value#<init>(kotlin.Int){}.exit.i.i"

"kfun:Value#<init>(kotlin.Int){}.exit.i.i":       ; preds = %Kotlin_CharArray_set.exit.i.i.i.i.i, %loop_exit.i.i.i.i.i, %when_exit19.i.i.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %511 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %512 = bitcast %"class.kotlin::mm::ShadowStack"* %511 to i64*
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %169)
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %193, align 8, !tbaa !11
  %513 = load i64, i64* %163, align 8, !tbaa !31
  store i64 %513, i64* %512, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %159)
  %514 = call %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder#toString(){}kotlin.String"(%struct.ObjHeader* nonnull %251, %struct.ObjHeader** nonnull %151)
  %515 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 3
  %516 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %515 to %struct.ObjHeader**
  store %struct.ObjHeader* %514, %struct.ObjHeader** %516, align 8, !tbaa !11
  %517 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %518 = load i64, i64* %154, align 8, !tbaa !31
  %519 = bitcast %"class.kotlin::mm::ShadowStack"* %517 to i64*
  store i64 %518, i64* %519, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %148)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %141)
  %520 = load i32, i32* %195, align 8
  %521 = load i32, i32* %197, align 4
  %522 = add i32 %520, %521
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %141, i32 %522, %struct.ObjHeader* nonnull %230)
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %"kfun:Value#<init>(kotlin.Int){}.exit.i.i", %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"
  %523 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %146 monotonic, align 8
  %524 = ptrtoint %struct.TypeInfo* %523 to i64
  %525 = and i64 %524, -4
  %526 = inttoptr i64 %525 to %struct.TypeInfo*
  %527 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %526, i64 0, i32 0
  %528 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %527 monotonic, align 8
  %529 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %528, i64 0, i32 9
  %530 = load i32, i32* %529, align 4
  %531 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %528, i64 0, i32 10
  %532 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %531, align 8
  %533 = and i32 %530, 160
  %534 = zext i32 %533 to i64
  %535 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %532, i64 %534, i32 2
  %536 = bitcast i8*** %535 to i1 (%struct.ObjHeader*)***
  %537 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %536, align 8
  %538 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %537, align 8
  %539 = call zeroext i1 %538(%struct.ObjHeader* nonnull %145)
  br i1 %539, label %while_loop.i.i, label %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"

"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i": ; preds = %loop_check.i.i
  %540 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %540, align 8, !tbaa !11
  %541 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %542 = load i64, i64* %66, align 8, !tbaa !31
  %543 = bitcast %"class.kotlin::mm::ShadowStack"* %541 to i64*
  store i64 %542, i64* %543, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %58)
  %544 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %545 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %544 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %546 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %545, align 8, !tbaa !11
  %547 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %546, i64 0, i32 2, i32 1
  %548 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %547, i64 32) #37
  %549 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %548, i64 1
  %550 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %548, i64 2
  %551 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550 to %struct.ObjHeader*
  %552 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550 to %struct.TypeInfo**
  %553 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %549 to i64*
  store i64 0, i64* %553, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %552, align 8, !tbaa !35
  %554 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %554, align 8, !tbaa !11
  %555 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %548, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %140, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %555, align 8, !tbaa !11
  %556 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %548, i64 4
  %557 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %556 to i32*
  store i32 0, i32* %557, align 8
  %558 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %559 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %558, i64 0, i32 3
  store i32 -1, i32* %559, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %554, align 8, !tbaa !11
  %560 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 7
  %561 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %560 to i32*
  %562 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %563 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %562, i64 0, i32 6
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %564 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %565 = and i8 %564, 1
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %567

567:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %567, %while_loop.i
  %568 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %552 monotonic, align 8
  %569 = ptrtoint %struct.TypeInfo* %568 to i64
  %570 = and i64 %569, -4
  %571 = inttoptr i64 %570 to %struct.TypeInfo*
  %572 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %571, i64 0, i32 0
  %573 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %572 monotonic, align 8
  %574 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %573, i64 0, i32 9
  %575 = load i32, i32* %574, align 4
  %576 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %573, i64 0, i32 10
  %577 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %576, align 8
  %578 = and i32 %575, 160
  %579 = zext i32 %578 to i64
  %580 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %577, i64 %579, i32 2
  %581 = load i8**, i8*** %580, align 8
  %582 = getelementptr i8*, i8** %581, i64 1
  %583 = bitcast i8** %582 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %584 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %583, align 8
  %585 = call %struct.ObjHeader* %584(%struct.ObjHeader* nonnull %551, %struct.ObjHeader** nonnull %36)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %54)
  %586 = load i32, i32* %561, align 8
  %587 = load i32, i32* %563, align 4
  %588 = add i32 %586, %587
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %54, i32 %588, %struct.ObjHeader* %585)
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %"kfun:#classValues(kotlin.Int){}kotlin.collections.Iterable<Value>.exit.i"
  %589 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %552 monotonic, align 8
  %590 = ptrtoint %struct.TypeInfo* %589 to i64
  %591 = and i64 %590, -4
  %592 = inttoptr i64 %591 to %struct.TypeInfo*
  %593 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %592, i64 0, i32 0
  %594 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %593 monotonic, align 8
  %595 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %594, i64 0, i32 9
  %596 = load i32, i32* %595, align 4
  %597 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %594, i64 0, i32 10
  %598 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %597, align 8
  %599 = and i32 %596, 160
  %600 = zext i32 %599 to i64
  %601 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %598, i64 %600, i32 2
  %602 = bitcast i8*** %601 to i1 (%struct.ObjHeader*)***
  %603 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %602, align 8
  %604 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %603, align 8
  %605 = call zeroext i1 %604(%struct.ObjHeader* nonnull %551)
  br i1 %605, label %while_loop.i, label %call_success

call_success:                                     ; preds = %loop_check.i
  %606 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %607 = bitcast %struct.ObjHeader* %606 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %607, align 8, !tbaa !11
  %608 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %609 = load i64, i64* %42, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %32)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %82)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %82, i8 0, i32 32, i1 immarg false) #50
  store i64 %609, i64* %88, align 8, !tbaa !31
  %610 = bitcast %"class.kotlin::mm::ShadowStack"* %608 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i4, %struct.ObjHeader*** %610, align 8, !tbaa !29
  store i32 0, i32* %91, align 8, !tbaa !33
  store i32 4, i32* %92, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %159)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %159, i8 0, i32 32, i1 immarg false) #50
  %611 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %612 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to i64*
  %613 = load i64, i64* %612, align 8, !tbaa !29
  store i64 %613, i64* %163, align 8, !tbaa !31
  %614 = bitcast %"class.kotlin::mm::ShadowStack"* %611 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i6, %struct.ObjHeader*** %614, align 8, !tbaa !29
  store i32 0, i32* %165, align 8, !tbaa !33
  store i32 4, i32* %166, align 4, !tbaa !34
  %615 = bitcast %struct.ObjHeader* %606 to %struct.ObjHeader**
  %616 = load %struct.ObjHeader*, %struct.ObjHeader** %615, align 8
  store %struct.ObjHeader* %616, %struct.ObjHeader** %160, align 8, !tbaa !11
  %617 = icmp eq %struct.ObjHeader* %616, null
  br i1 %617, label %when_case.i2.i, label %instance_of_exit.i.i

when_case.i2.i:                                   ; preds = %call_success
  call fastcc void @ThrowNullPointerException() #49
  unreachable

instance_of_exit.i.i:                             ; preds = %call_success
  store %struct.ObjHeader* %616, %struct.ObjHeader** %168, align 8, !tbaa !11
  %618 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %619 = load i64, i64* %163, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %159)
  %620 = bitcast [13 x %struct.ObjHeader*]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %620)
  %.sub.i.i = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(104) %620, i8 0, i32 104, i1 immarg false) #50
  %621 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 3
  %622 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 4
  %623 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 5
  %"tmp0_$elem.i.i" = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 6
  %624 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 7
  %"tmp1_$array.i.i" = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 8
  %625 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 9
  %626 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 10
  %627 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 11
  %628 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 12
  %629 = bitcast [13 x %struct.ObjHeader*]* %8 to %struct.FrameOverlay.6*
  %630 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 1
  %631 = bitcast %struct.ObjHeader** %630 to i64*
  store i64 %619, i64* %631, align 8, !tbaa !31
  %632 = bitcast %"class.kotlin::mm::ShadowStack"* %618 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %632, align 8, !tbaa !29
  %633 = getelementptr inbounds [13 x %struct.ObjHeader*], [13 x %struct.ObjHeader*]* %8, i64 0, i64 2
  %634 = bitcast %struct.ObjHeader** %633 to i32*
  store i32 0, i32* %634, align 8, !tbaa !33
  %635 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %629, i64 0, i32 3
  store i32 13, i32* %635, align 4, !tbaa !34
  %636 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %616, i64 0, i32 0
  %637 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %636 monotonic, align 8
  %638 = ptrtoint %struct.TypeInfo* %637 to i64
  %639 = and i64 %638, -4
  %640 = inttoptr i64 %639 to %struct.TypeInfo*
  %641 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %640, i64 0, i32 0
  %642 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %641 monotonic, align 8
  %643 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %642, i64 0, i32 9
  %644 = load i32, i32* %643, align 4
  %645 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %642, i64 0, i32 10
  %646 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %645, align 8
  %647 = and i32 %644, 18
  %648 = zext i32 %647 to i64
  %649 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %646, i64 %648, i32 0
  %650 = load i32, i32* %649, align 4
  %651 = icmp eq i32 %650, 18
  br i1 %651, label %when_case.i.i, label %instance_of_exit.i.i.i

when_case.i.i:                                    ; preds = %instance_of_exit.i.i
  %652 = bitcast %struct.ObjHeader* %616 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %653 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %652, i64 0, i32 6
  %654 = load i32, i32* %653, align 4
  switch i32 %654, label %when_next3.i.i [
    i32 0, label %when_case1.i.i
    i32 1, label %instance_of_exit8.i.i
  ]

when_case1.i.i:                                   ; preds = %when_case.i.i
  %655 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.collections.EmptyList.$instance#internal", align 8
  store %struct.ObjHeader* %655, %struct.ObjHeader** %13, align 8, !tbaa !11
  br label %epilogue

instance_of_exit8.i.i:                            ; preds = %when_case.i.i
  %656 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %636 monotonic, align 8
  %657 = ptrtoint %struct.TypeInfo* %656 to i64
  %658 = and i64 %657, -4
  %659 = inttoptr i64 %658 to %struct.TypeInfo*
  %660 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %659, i64 0, i32 0
  %661 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %660 monotonic, align 8
  %662 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %661, i64 0, i32 9
  %663 = load i32, i32* %662, align 4
  %664 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %661, i64 0, i32 10
  %665 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %664, align 8
  %666 = and i32 %663, 43
  %667 = zext i32 %666 to i64
  %668 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %665, i64 %667, i32 0
  %669 = load i32, i32* %668, align 4
  %670 = icmp eq i32 %669, 43
  br i1 %670, label %when_case6.i.i, label %when_next7.i.i

when_case6.i.i:                                   ; preds = %instance_of_exit8.i.i
  %671 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList#get(kotlin.Int){}1:0"(%struct.ObjHeader* nonnull %616, i32 0, %struct.ObjHeader** nonnull %621)
  br label %when_exit12.i.i

when_next7.i.i:                                   ; preds = %instance_of_exit8.i.i
  %672 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %673 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %672 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %674 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %673, align 8, !tbaa !11
  %675 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %674, i64 0, i32 2, i32 1
  %676 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %675, i64 32) #37
  %677 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %676, i64 1
  %678 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %676, i64 2
  %679 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %678 to %struct.ObjHeader*
  %680 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %678 to %struct.TypeInfo**
  %681 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %677 to i64*
  store i64 0, i64* %681, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %680, align 8, !tbaa !35
  %682 = bitcast %struct.ObjHeader** %622 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %678, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %682, align 8, !tbaa !11
  %683 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %676, i64 3
  %684 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %683 to %struct.ObjHeader**
  store %struct.ObjHeader* %616, %struct.ObjHeader** %684, align 8, !tbaa !11
  %685 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %676, i64 4
  %686 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %685 to i32*
  store i32 0, i32* %686, align 8
  %687 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %678 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %688 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %687, i64 0, i32 3
  store i32 -1, i32* %688, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %678, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %682, align 8, !tbaa !11
  %689 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %680 monotonic, align 8
  %690 = ptrtoint %struct.TypeInfo* %689 to i64
  %691 = and i64 %690, -4
  %692 = inttoptr i64 %691 to %struct.TypeInfo*
  %693 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %692, i64 0, i32 0
  %694 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %693 monotonic, align 8
  %695 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %694, i64 0, i32 9
  %696 = load i32, i32* %695, align 4
  %697 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %694, i64 0, i32 10
  %698 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %697, align 8
  %699 = and i32 %696, 160
  %700 = zext i32 %699 to i64
  %701 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %698, i64 %700, i32 2
  %702 = load i8**, i8*** %701, align 8
  %703 = getelementptr i8*, i8** %702, i64 1
  %704 = bitcast i8** %703 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %705 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %704, align 8
  %706 = call %struct.ObjHeader* %705(%struct.ObjHeader* nonnull %679, %struct.ObjHeader** nonnull %623)
  br label %when_exit12.i.i

when_exit12.i.i:                                  ; preds = %when_next7.i.i, %when_case6.i.i
  %707 = phi %struct.ObjHeader* [ %671, %when_case6.i.i ], [ %706, %when_next7.i.i ]
  store %struct.ObjHeader* %707, %struct.ObjHeader** %"tmp0_$elem.i.i", align 8, !tbaa !11
  %708 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %709 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %708 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %710 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %709, align 8, !tbaa !11
  %711 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %710, i64 0, i32 2, i32 1
  %712 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %711, i64 32) #37
  %713 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %712, i64 1
  %714 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %712, i64 2
  %715 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %714 to %struct.TypeInfo**
  %716 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %713 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %716, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %715, align 8, !tbaa !37
  %717 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %712, i64 3
  %718 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %717 to i32*
  store i32 1, i32* %718, align 8, !tbaa !9
  %719 = bitcast %struct.ObjHeader** %624 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %714, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %719, align 8, !tbaa !11
  %720 = bitcast %struct.ObjHeader** %"tmp1_$array.i.i" to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %714, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %720, align 8, !tbaa !11
  %721 = bitcast %struct.ObjHeader** %625 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %714, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %721, align 8, !tbaa !11
  %722 = bitcast %struct.ObjHeader** %"tmp0_$elem.i.i" to i64*
  %723 = load i64, i64* %722, align 8
  %724 = bitcast %struct.ObjHeader** %626 to i64*
  store i64 %723, i64* %724, align 8, !tbaa !11
  %725 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %714 to i64*
  %726 = load atomic volatile i64, i64* %725 monotonic, align 8
  %727 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %712, i64 4
  %728 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %727 to i64*
  store i64 %723, i64* %728, align 8, !tbaa !11
  %729 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array.i.i", align 8
  store %struct.ObjHeader* %729, %struct.ObjHeader** %627, align 8, !tbaa !11
  %730 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#listOf(kotlin.Array<out|0:0>...){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>"(%struct.ObjHeader* %729, %struct.ObjHeader** nonnull %13)
  br label %epilogue

when_next3.i.i:                                   ; preds = %when_case.i.i
  %731 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Collection<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>"(%struct.ObjHeader* nonnull %616, %struct.ObjHeader** nonnull %13)
  br label %epilogue

instance_of_exit.i.i.i:                           ; preds = %instance_of_exit.i.i
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %159)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %159, i8 0, i32 32, i1 immarg false) #50
  %732 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %733 = bitcast %"class.kotlin::mm::ShadowStack"* %732 to i64*
  %734 = load i64, i64* %733, align 8, !tbaa !29
  store i64 %734, i64* %163, align 8, !tbaa !31
  %735 = bitcast %"class.kotlin::mm::ShadowStack"* %732 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i6, %struct.ObjHeader*** %735, align 8, !tbaa !29
  store i32 0, i32* %165, align 8, !tbaa !33
  store i32 4, i32* %166, align 4, !tbaa !34
  %736 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %636 monotonic, align 8
  %737 = ptrtoint %struct.TypeInfo* %736 to i64
  %738 = and i64 %737, -4
  %739 = inttoptr i64 %738 to %struct.TypeInfo*
  %740 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %739, i64 0, i32 0
  %741 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %740 monotonic, align 8
  %742 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %741, i64 0, i32 9
  %743 = load i32, i32* %742, align 4
  %744 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %741, i64 0, i32 10
  %745 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %744, align 8
  %746 = and i32 %743, 18
  %747 = zext i32 %746 to i64
  %748 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %745, i64 %747, i32 0
  %749 = load i32, i32* %748, align 4
  %750 = icmp eq i32 %749, 18
  br i1 %750, label %when_case.i24.i.i, label %when_exit.i.i.i

when_case.i24.i.i:                                ; preds = %instance_of_exit.i.i.i
  %751 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Collection<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>"(%struct.ObjHeader* nonnull %616, %struct.ObjHeader** nonnull %628)
  br label %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"

when_exit.i.i.i:                                  ; preds = %instance_of_exit.i.i.i
  %752 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %753 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %752 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %754 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %753, align 8, !tbaa !11
  %755 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %754, i64 0, i32 2, i32 1
  %756 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %755, i64 64) #37
  %757 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 1
  %758 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 2
  %759 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %struct.ObjHeader*
  %760 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %struct.TypeInfo**
  %761 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %757 to i64*
  store i64 0, i64* %761, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %760, align 8, !tbaa !35
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %167, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %759, i32 10)
  %762 = bitcast [5 x %struct.ObjHeader*]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %762)
  %.sub.i.i.i.i = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %762, i8 0, i32 40, i1 immarg false) #50
  %763 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 3
  %764 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 4
  %765 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %766 = bitcast [5 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %767 = bitcast %"class.kotlin::mm::ShadowStack"* %765 to i64*
  %768 = load i64, i64* %767, align 8, !tbaa !29
  %769 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 1
  %770 = bitcast %struct.ObjHeader** %769 to i64*
  store i64 %768, i64* %770, align 8, !tbaa !31
  %771 = bitcast %"class.kotlin::mm::ShadowStack"* %765 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i.i, %struct.ObjHeader*** %771, align 8, !tbaa !29
  %772 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %5, i64 0, i64 2
  %773 = bitcast %struct.ObjHeader** %772 to i32*
  store i32 0, i32* %773, align 8, !tbaa !33
  %774 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %766, i64 0, i32 3
  store i32 5, i32* %774, align 4, !tbaa !34
  %775 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %776 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %775 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %777 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %776, align 8, !tbaa !11
  %778 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %777, i64 0, i32 2, i32 1
  %779 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %778, i64 32) #37
  %780 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %779, i64 1
  %781 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %779, i64 2
  %782 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781 to %struct.ObjHeader*
  %783 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781 to %struct.TypeInfo**
  %784 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %780 to i64*
  store i64 0, i64* %784, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %783, align 8, !tbaa !35
  %785 = bitcast %struct.ObjHeader** %763 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %785, align 8, !tbaa !11
  %786 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %779, i64 3
  %787 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786 to %struct.ObjHeader**
  store %struct.ObjHeader* %616, %struct.ObjHeader** %787, align 8, !tbaa !11
  %788 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %779, i64 4
  %789 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to i32*
  store i32 0, i32* %789, align 8
  %790 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %791 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %790, i64 0, i32 3
  store i32 -1, i32* %791, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %781, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %785, align 8, !tbaa !11
  %792 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 7
  %793 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %792 to i32*
  %794 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %795 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %794, i64 0, i32 6
  br label %loop_check.i.i.i.i

while_loop.i.i.i.i:                               ; preds = %loop_check.i.i.i.i
  %796 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %797 = and i8 %796, 1
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i, label %799

799:                                              ; preds = %while_loop.i.i.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i:    ; preds = %799, %while_loop.i.i.i.i
  %800 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %783 monotonic, align 8
  %801 = ptrtoint %struct.TypeInfo* %800 to i64
  %802 = and i64 %801, -4
  %803 = inttoptr i64 %802 to %struct.TypeInfo*
  %804 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %803, i64 0, i32 0
  %805 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %804 monotonic, align 8
  %806 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %805, i64 0, i32 9
  %807 = load i32, i32* %806, align 4
  %808 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %805, i64 0, i32 10
  %809 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %808, align 8
  %810 = and i32 %807, 160
  %811 = zext i32 %810 to i64
  %812 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %809, i64 %811, i32 2
  %813 = load i8**, i8*** %812, align 8
  %814 = getelementptr i8*, i8** %813, i64 1
  %815 = bitcast i8** %814 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %816 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %815, align 8
  %817 = call %struct.ObjHeader* %816(%struct.ObjHeader* nonnull %782, %struct.ObjHeader** nonnull %764)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %759)
  %818 = load i32, i32* %793, align 8
  %819 = load i32, i32* %795, align 4
  %820 = add i32 %818, %819
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %759, i32 %820, %struct.ObjHeader* %817)
  br label %loop_check.i.i.i.i

loop_check.i.i.i.i:                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i.i.i, %when_exit.i.i.i
  %821 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %783 monotonic, align 8
  %822 = ptrtoint %struct.TypeInfo* %821 to i64
  %823 = and i64 %822, -4
  %824 = inttoptr i64 %823 to %struct.TypeInfo*
  %825 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %824, i64 0, i32 0
  %826 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %825 monotonic, align 8
  %827 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %826, i64 0, i32 9
  %828 = load i32, i32* %827, align 4
  %829 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %826, i64 0, i32 10
  %830 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %829, align 8
  %831 = and i32 %828, 160
  %832 = zext i32 %831 to i64
  %833 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %830, i64 %832, i32 2
  %834 = bitcast i8*** %833 to i1 (%struct.ObjHeader*)***
  %835 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %834, align 8
  %836 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %835, align 8
  %837 = call zeroext i1 %836(%struct.ObjHeader* nonnull %782)
  br i1 %837, label %while_loop.i.i.i.i, label %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i"

"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i": ; preds = %loop_check.i.i.i.i
  %838 = bitcast %struct.ObjHeader** %628 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %838, align 8, !tbaa !11
  %839 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %840 = load i64, i64* %770, align 8, !tbaa !31
  %841 = bitcast %"class.kotlin::mm::ShadowStack"* %839 to i64*
  store i64 %840, i64* %841, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %762)
  br label %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"

"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i": ; preds = %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i", %when_case.i24.i.i
  %842 = phi %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* [ %17, %when_case.i24.i.i ], [ %17, %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i" ]
  %843 = phi %struct.ObjHeader* [ %751, %when_case.i24.i.i ], [ %759, %"kfun:kotlin.collections#toCollection__at__kotlin.collections.Iterable<0:0>(0:1){0\C2\A7<kotlin.Any?>;1\C2\A7<kotlin.collections.MutableCollection<in|0:0>>}0:1.exit.i.i.i" ]
  store %struct.ObjHeader* %843, %struct.ObjHeader** %628, align 8, !tbaa !11
  %844 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %842, i64 0, i32 1, i32 5
  %845 = load i64, i64* %163, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %159)
  %846 = bitcast [10 x %struct.ObjHeader*]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %846)
  %.sub.i.i.i = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(80) %846, i8 0, i32 80, i1 immarg false) #50
  %"tmp0_$elem.i.i.i" = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 4
  %"tmp1_$array.i.i.i" = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 6
  %847 = bitcast [10 x %struct.ObjHeader*]* %7 to %struct.FrameOverlay.6*
  %848 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 1
  %849 = bitcast %struct.ObjHeader** %848 to i64*
  store i64 %845, i64* %849, align 8, !tbaa !31
  %850 = bitcast %"class.kotlin::mm::ShadowStack"* %844 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %850, align 8, !tbaa !29
  %851 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 2
  %852 = bitcast %struct.ObjHeader** %851 to i32*
  store i32 0, i32* %852, align 8, !tbaa !33
  %853 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %847, i64 0, i32 3
  store i32 10, i32* %853, align 4, !tbaa !34
  %854 = bitcast %struct.ObjHeader* %843 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %855 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %854, i64 0, i32 6
  %856 = load i32, i32* %855, align 4
  switch i32 %856, label %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i" [
    i32 0, label %when_case.i.i.i
    i32 1, label %when_case1.i.i.i
  ]

when_case.i.i.i:                                  ; preds = %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"
  %857 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.collections.EmptyList.$instance#internal", align 8
  store %struct.ObjHeader* %857, %struct.ObjHeader** %13, align 8, !tbaa !11
  br label %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i"

when_case1.i.i.i:                                 ; preds = %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"
  %858 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 9
  %859 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 8
  %860 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 7
  %861 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 5
  %862 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %7, i64 0, i64 3
  %863 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList#get(kotlin.Int){}1:0"(%struct.ObjHeader* %843, i32 0, %struct.ObjHeader** nonnull %862)
  store %struct.ObjHeader* %863, %struct.ObjHeader** %"tmp0_$elem.i.i.i", align 8, !tbaa !11
  %864 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 6
  %865 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %864 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %866 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %865, align 8, !tbaa !11
  %867 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %866, i64 0, i32 2, i32 1
  %868 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %867, i64 32) #37
  %869 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %868, i64 1
  %870 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %868, i64 2
  %871 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %870 to %struct.TypeInfo**
  %872 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %869 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %872, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %871, align 8, !tbaa !37
  %873 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %868, i64 3
  %874 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %873 to i32*
  store i32 1, i32* %874, align 8, !tbaa !9
  %875 = bitcast %struct.ObjHeader** %861 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %870, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %875, align 8, !tbaa !11
  %876 = bitcast %struct.ObjHeader** %"tmp1_$array.i.i.i" to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %870, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %876, align 8, !tbaa !11
  %877 = bitcast %struct.ObjHeader** %860 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %870, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %877, align 8, !tbaa !11
  %878 = bitcast %struct.ObjHeader** %"tmp0_$elem.i.i.i" to i64*
  %879 = load i64, i64* %878, align 8
  %880 = bitcast %struct.ObjHeader** %859 to i64*
  store i64 %879, i64* %880, align 8, !tbaa !11
  %881 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %870 to i64*
  %882 = load atomic volatile i64, i64* %881 monotonic, align 8
  %883 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %868, i64 4
  %884 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %883 to i64*
  store i64 %879, i64* %884, align 8, !tbaa !11
  %885 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array.i.i.i", align 8
  store %struct.ObjHeader* %885, %struct.ObjHeader** %858, align 8, !tbaa !11
  %886 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#listOf(kotlin.Array<out|0:0>...){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>"(%struct.ObjHeader* %885, %struct.ObjHeader** nonnull %13)
  br label %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i"

"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i": ; preds = %when_case1.i.i.i, %when_case.i.i.i, %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i"
  %887 = phi %struct.ObjHeader* [ %857, %when_case.i.i.i ], [ %886, %when_case1.i.i.i ], [ %843, %"kfun:kotlin.collections#toMutableList__at__kotlin.collections.Iterable<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.MutableList<0:0>.exit.i.i" ]
  store %struct.ObjHeader* %887, %struct.ObjHeader** %13, align 8, !tbaa !11
  %888 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %889 = load i64, i64* %849, align 8, !tbaa !31
  %890 = bitcast %"class.kotlin::mm::ShadowStack"* %888 to i64*
  store i64 %889, i64* %890, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %846)
  br label %epilogue

epilogue:                                         ; preds = %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i", %when_next3.i.i, %when_exit12.i.i, %when_case1.i.i
  %891 = phi %struct.ObjHeader* [ %887, %"kfun:kotlin.collections#optimizeReadOnlyList__at__kotlin.collections.List<0:0>(){0\C2\A7<kotlin.Any?>}kotlin.collections.List<0:0>.exit.i.i" ], [ %655, %when_case1.i.i ], [ %730, %when_exit12.i.i ], [ %731, %when_next3.i.i ]
  %892 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %17, i64 0, i32 1, i32 5
  %893 = bitcast %"class.kotlin::mm::ShadowStack"* %892 to i64*
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %620)
  store %struct.ObjHeader* %891, %struct.ObjHeader** %13, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %82)
  %894 = load i64, i64* %23, align 8, !tbaa !31
  store i64 %894, i64* %893, align 8, !tbaa !29
  ret void
}
