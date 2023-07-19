define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [16 x i8], align 16
  %1 = alloca [8 x %struct.ObjHeader*], align 8
  %2 = alloca [15 x %struct.ObjHeader*], align 8
  %3 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 0
  %4 = bitcast [4 x %struct.ObjHeader*]* %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %4, i8 0, i32 32, i1 immarg false) #51
  %5 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 3
  %6 = alloca %"kclassbody:StringBenchmark#internal", align 8
  %7 = getelementptr inbounds %"kclassbody:StringBenchmark#internal", %"kclassbody:StringBenchmark#internal"* %6, i64 0, i32 1
  %8 = bitcast %struct.ObjHeader** %7 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(24) %8, i8 0, i32 16, i1 immarg false) #51
  %objHeader = getelementptr inbounds %"kclassbody:StringBenchmark#internal", %"kclassbody:StringBenchmark#internal"* %6, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:StringBenchmark#internal", %"kclassbody:StringBenchmark#internal"* %6, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [4 x i8*] }* @"ktypeglobal:StringBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %9 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !11
  %10 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %11 = bitcast [4 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.7*
  %12 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !29
  %14 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %15 = bitcast %struct.ObjHeader** %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !31
  %16 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %16, align 8, !tbaa !29
  %17 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %18 = bitcast %struct.ObjHeader** %17 to i32*
  store i32 0, i32* %18, align 8, !tbaa !33
  %19 = getelementptr inbounds %struct.FrameOverlay.7, %struct.FrameOverlay.7* %11, i64 0, i32 3
  store i32 4, i32* %19, align 4, !tbaa !34
  %20 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %Kotlin_mm_safePointFunctionPrologue.exit, label %23

23:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %23, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %5, align 8, !tbaa !11
  %24 = bitcast [15 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %24)
  %.sub.i = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(120) %24, i8 0, i32 120, i1 immarg false) #51
  %25 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %26 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 4
  %27 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 5
  %28 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 6
  %29 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 7
  %30 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 8
  %31 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 9
  %32 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 10
  %33 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 11
  %34 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 12
  %35 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %36 = bitcast [15 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.7*
  %37 = bitcast %"class.kotlin::mm::ShadowStack"* %35 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !29
  %39 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %40 = bitcast %struct.ObjHeader** %39 to i64*
  store i64 %38, i64* %40, align 8, !tbaa !31
  %41 = bitcast %"class.kotlin::mm::ShadowStack"* %35 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %41, align 8, !tbaa !29
  %42 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %43 = bitcast %struct.ObjHeader** %42 to i32*
  store i32 0, i32* %43, align 8, !tbaa !33
  %44 = getelementptr inbounds %struct.FrameOverlay.7, %struct.FrameOverlay.7* %36, i64 0, i32 3
  store i32 15, i32* %44, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %46 = bitcast %struct.ObjHeader* %45 to %struct.ObjHeader**
  store %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [0 x i8] }* @471 to %struct.ObjHeader*), %struct.ObjHeader** %46, align 8, !tbaa !11
  %47 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %48 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %47 to %"class.kotlin::gc::GC::ThreadData::Impl.116"**
  %49 = load %"class.kotlin::gc::GC::ThreadData::Impl.116"*, %"class.kotlin::gc::GC::ThreadData::Impl.116"** %48, align 8, !tbaa !11
  %50 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.116", %"class.kotlin::gc::GC::ThreadData::Impl.116"* %49, i64 0, i32 2, i32 1
  %51 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %50, i64 64) #37
  %52 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 1
  %53 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 2
  %54 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %struct.ObjHeader*
  %55 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %struct.TypeInfo**
  %56 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %52 to i64*
  store i64 0, i64* %56, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %55, align 8, !tbaa !35
  %57 = bitcast %struct.ObjHeader** %25 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %57, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %54, i32 10000)
  %58 = bitcast [8 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %58)
  %.sub.i.i = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(64) %58, i8 0, i32 64, i1 immarg false) #51
  %59 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %60 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 4
  %61 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 5
  %62 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 6
  %63 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 7
  %64 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %65 = bitcast [8 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.7*
  %66 = bitcast %"class.kotlin::mm::ShadowStack"* %64 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !29
  %68 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %69 = bitcast %struct.ObjHeader** %68 to i64*
  store i64 %67, i64* %69, align 8, !tbaa !31
  %70 = bitcast %"class.kotlin::mm::ShadowStack"* %64 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %70, align 8, !tbaa !29
  %71 = getelementptr inbounds [8 x %struct.ObjHeader*], [8 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %72 = bitcast %struct.ObjHeader** %71 to i32*
  store i32 0, i32* %72, align 8, !tbaa !33
  %73 = getelementptr inbounds %struct.FrameOverlay.7, %struct.FrameOverlay.7* %65, i64 0, i32 3
  store i32 8, i32* %73, align 4, !tbaa !34
  %74 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %75 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %74 to %"class.kotlin::gc::GC::ThreadData::Impl.116"**
  %76 = load %"class.kotlin::gc::GC::ThreadData::Impl.116"*, %"class.kotlin::gc::GC::ThreadData::Impl.116"** %75, align 8, !tbaa !11
  %77 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.116", %"class.kotlin::gc::GC::ThreadData::Impl.116"* %76, i64 0, i32 2, i32 1
  %78 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %77, i64 32) #37
  %79 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, i64 1
  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, i64 2
  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to %struct.ObjHeader*
  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to %struct.TypeInfo**
  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to i64*
  store i64 0, i64* %83, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %82, align 8, !tbaa !35
  %84 = bitcast %struct.ObjHeader** %59 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.ranges.IntProgression#<init>(kotlin.Int;kotlin.Int;kotlin.Int){}"(%struct.ObjHeader* nonnull %81, i32 1, i32 10000, i32 1)
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !11
  %85 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %82 monotonic, align 8
  %86 = ptrtoint %struct.TypeInfo* %85 to i64
  %87 = and i64 %86, -4
  %88 = inttoptr i64 %87 to %struct.TypeInfo*
  %89 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %88, i64 0, i32 0
  %90 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %89 monotonic, align 8
  %91 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %90, i64 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %90, i64 0, i32 10
  %94 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %93, align 8
  %95 = and i32 %92, 18
  %96 = zext i32 %95 to i64
  %97 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %94, i64 %96, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 18
  br i1 %99, label %when_case.i.i.i, label %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"

when_case.i.i.i:                                  ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %100 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %101 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %100, i64 0, i32 6
  %102 = load i32, i32* %101, align 4
  br label %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"

"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i": ; preds = %when_case.i.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %103 = phi i32 [ %102, %when_case.i.i.i ], [ 10, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %104 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %105 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %104 to %"class.kotlin::gc::GC::ThreadData::Impl.116"**
  %106 = load %"class.kotlin::gc::GC::ThreadData::Impl.116"*, %"class.kotlin::gc::GC::ThreadData::Impl.116"** %105, align 8, !tbaa !11
  %107 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.116", %"class.kotlin::gc::GC::ThreadData::Impl.116"* %106, i64 0, i32 2, i32 1
  %108 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %107, i64 64) #37
  %109 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 1
  %110 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 2
  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to %struct.ObjHeader*
  %112 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to %struct.TypeInfo**
  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i64*
  store i64 0, i64* %113, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %112, align 8, !tbaa !35
  %114 = bitcast %struct.ObjHeader** %60 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList#<init>(kotlin.Int){}"(%struct.ObjHeader* nonnull %111, i32 %103)
  %115 = call %struct.ObjHeader* @"kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator"(%struct.ObjHeader* nonnull %81, %struct.ObjHeader** nonnull %61)
  %116 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %115, i64 0, i32 0
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %0, i64 0, i64 0
  %118 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 7
  %119 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118 to i32*
  %120 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %121 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %120, i64 0, i32 6
  br label %loop_check.i.i

while_loop.i.i:                                   ; preds = %loop_check.i.i
  %122 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %125

125:                                              ; preds = %while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %125, %while_loop.i.i
  %126 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %116 monotonic, align 8
  %127 = ptrtoint %struct.TypeInfo* %126 to i64
  %128 = and i64 %127, -4
  %129 = inttoptr i64 %128 to %struct.TypeInfo*
  %130 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %129, i64 0, i32 0
  %131 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %130 monotonic, align 8
  %132 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %131, i64 0, i32 9
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %131, i64 0, i32 10
  %135 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %134, align 8
  %136 = and i32 %133, 160
  %137 = zext i32 %136 to i64
  %138 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %135, i64 %137, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr i8*, i8** %139, i64 1
  %141 = bitcast i8** %140 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %142 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %141, align 8
  %143 = call %struct.ObjHeader* %142(%struct.ObjHeader* nonnull %115, %struct.ObjHeader** nonnull %62)
  %144 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %143, i64 1
  %145 = bitcast %struct.ObjHeader* %144 to i32*
  %146 = load i32, i32* %145, align 4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %117) #37
  call void (i8*, i64, i8*, ...) @_ZN5konan8snprintfEPcmPKcz(i8* nonnull %117, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157.884, i64 0, i64 0), i32 %146)
  %147 = call fastcc %struct.ObjHeader* @CreateStringFromCString(i8* nonnull %117, %struct.ObjHeader** nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %117) #37
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %111)
  %148 = load i32, i32* %119, align 8
  %149 = load i32, i32* %121, align 4
  %150 = add i32 %148, %149
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %111, i32 %150, %struct.ObjHeader* %147)
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i, %"kfun:kotlin.collections#collectionSizeOrDefault__at__kotlin.collections.Iterable<0:0>(kotlin.Int){0\C2\A7<kotlin.Any?>}kotlin.Int.exit.i.i"
  %151 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %116 monotonic, align 8
  %152 = ptrtoint %struct.TypeInfo* %151 to i64
  %153 = and i64 %152, -4
  %154 = inttoptr i64 %153 to %struct.TypeInfo*
  %155 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %154, i64 0, i32 0
  %156 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %155 monotonic, align 8
  %157 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %156, i64 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %156, i64 0, i32 10
  %160 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %159, align 8
  %161 = and i32 %158, 160
  %162 = zext i32 %161 to i64
  %163 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %160, i64 %162, i32 2
  %164 = bitcast i8*** %163 to i1 (%struct.ObjHeader*)***
  %165 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %164, align 8
  %166 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %165, align 8
  %167 = call zeroext i1 %166(%struct.ObjHeader* nonnull %115)
  br i1 %167, label %while_loop.i.i, label %"kfun:#stringValues(kotlin.Int){}kotlin.collections.Iterable<kotlin.String>.exit.i"

"kfun:#stringValues(kotlin.Int){}kotlin.collections.Iterable<kotlin.String>.exit.i": ; preds = %loop_check.i.i
  %168 = bitcast %struct.ObjHeader** %26 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %168, align 8, !tbaa !11
  %169 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %170 = load i64, i64* %69, align 8, !tbaa !31
  %171 = bitcast %"class.kotlin::mm::ShadowStack"* %169 to i64*
  store i64 %170, i64* %171, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %58)
  %172 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %173 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %172 to %"class.kotlin::gc::GC::ThreadData::Impl.116"**
  %174 = load %"class.kotlin::gc::GC::ThreadData::Impl.116"*, %"class.kotlin::gc::GC::ThreadData::Impl.116"** %173, align 8, !tbaa !11
  %175 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.116", %"class.kotlin::gc::GC::ThreadData::Impl.116"* %174, i64 0, i32 2, i32 1
  %176 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %175, i64 32) #37
  %177 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %176, i64 1
  %178 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %176, i64 2
  %179 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178 to %struct.ObjHeader*
  %180 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178 to %struct.TypeInfo**
  %181 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %177 to i64*
  store i64 0, i64* %181, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %180, align 8, !tbaa !35
  %182 = bitcast %struct.ObjHeader** %27 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %182, align 8, !tbaa !11
  %183 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %176, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %183, align 8, !tbaa !11
  %184 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %176, i64 4
  %185 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %184 to i32*
  store i32 0, i32* %185, align 8
  %186 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %187 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %186, i64 0, i32 3
  store i32 -1, i32* %187, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %182, align 8, !tbaa !11
  %188 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51, i64 7
  %189 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %188 to i32*
  %190 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %191 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %190, i64 0, i32 6
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %192 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %195

195:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %195, %while_loop.i
  %196 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %180 monotonic, align 8
  %197 = ptrtoint %struct.TypeInfo* %196 to i64
  %198 = and i64 %197, -4
  %199 = inttoptr i64 %198 to %struct.TypeInfo*
  %200 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %199, i64 0, i32 0
  %201 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %200 monotonic, align 8
  %202 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %201, i64 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %201, i64 0, i32 10
  %205 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %204, align 8
  %206 = and i32 %203, 160
  %207 = zext i32 %206 to i64
  %208 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %205, i64 %207, i32 2
  %209 = load i8**, i8*** %208, align 8
  %210 = getelementptr i8*, i8** %209, i64 1
  %211 = bitcast i8** %210 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %212 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %211, align 8
  %213 = call %struct.ObjHeader* %212(%struct.ObjHeader* nonnull %179, %struct.ObjHeader** nonnull %28)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* nonnull %54)
  %214 = load i32, i32* %189, align 8
  %215 = load i32, i32* %191, align 4
  %216 = add i32 %214, %215
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* nonnull %54, i32 %216, %struct.ObjHeader* %213)
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %"kfun:#stringValues(kotlin.Int){}kotlin.collections.Iterable<kotlin.String>.exit.i"
  %217 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %180 monotonic, align 8
  %218 = ptrtoint %struct.TypeInfo* %217 to i64
  %219 = and i64 %218, -4
  %220 = inttoptr i64 %219 to %struct.TypeInfo*
  %221 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %220, i64 0, i32 0
  %222 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %221 monotonic, align 8
  %223 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %222, i64 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %222, i64 0, i32 10
  %226 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %225, align 8
  %227 = and i32 %224, 160
  %228 = zext i32 %227 to i64
  %229 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %226, i64 %228, i32 2
  %230 = bitcast i8*** %229 to i1 (%struct.ObjHeader*)***
  %231 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %230, align 8
  %232 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %231, align 8
  %233 = call zeroext i1 %232(%struct.ObjHeader* nonnull %179)
  br i1 %233, label %while_loop.i, label %loop_exit.i

loop_exit.i:                                      ; preds = %loop_check.i
  %234 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %235 = bitcast %struct.ObjHeader* %234 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %53, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %235, align 8, !tbaa !11
  store %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [0 x i8] }* @471 to %struct.ObjHeader*), %struct.ObjHeader** %46, align 8, !tbaa !11
  br label %do_while_loop.i

do_while_loop.i:                                  ; preds = %"kfun:Random#<get-$companion>#static(){}Random.Companion.exit.i", %loop_exit.i
  %inductionVariable.0.i = phi i32 [ 1, %loop_exit.i ], [ %240, %"kfun:Random#<get-$companion>#static(){}Random.Companion.exit.i" ]
  %236 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %Kotlin_mm_safePointWhileLoopBody.exit14.i, label %239

239:                                              ; preds = %do_while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit14.i

Kotlin_mm_safePointWhileLoopBody.exit14.i:        ; preds = %239, %do_while_loop.i
  %240 = add nuw nsw i32 %inductionVariable.0.i, 1
  %241 = load i32, i32* @"state_thread_local$Random", align 4
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %"kfun:Random#<get-$companion>#static(){}Random.Companion.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit14.i
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Random", void ()* nonnull @"kfun:Random.$init_thread_local#internal")
  br label %"kfun:Random#<get-$companion>#static(){}Random.Companion.exit.i"

"kfun:Random#<get-$companion>#static(){}Random.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit14.i
  %243 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %244 = load %struct.ObjHeader*, %struct.ObjHeader** %243, align 8
  store %struct.ObjHeader* %244, %struct.ObjHeader** %29, align 8, !tbaa !11
  %245 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %244, i64 1
  %246 = bitcast %struct.ObjHeader* %245 to double*
  %247 = load double, double* %246, align 8
  %248 = fmul double %247, 7.000000e+00
  %249 = fadd double %248, 7.000000e+00
  %250 = frem double %249, 0x4190000000000000
  store double %250, double* %246, align 8
  %251 = load %struct.ObjHeader*, %struct.ObjHeader** %46, align 8
  store %struct.ObjHeader* %251, %struct.ObjHeader** %30, align 8, !tbaa !11
  %252 = call fastcc %struct.ObjHeader* @"kfun:kotlin.Double#toString(){}kotlin.String"(double %250, %struct.ObjHeader** nonnull %31)
  %253 = bitcast %struct.ObjHeader* %251 to %struct.ArrayHeader*
  %254 = bitcast %struct.ObjHeader* %252 to %struct.ArrayHeader*
  %255 = call fastcc %struct.ObjHeader* @Kotlin_String_plusImpl(%struct.ArrayHeader* %253, %struct.ArrayHeader* %254, %struct.ObjHeader** nonnull %32)
  store %struct.ObjHeader* %255, %struct.ObjHeader** %46, align 8, !tbaa !11
  store %struct.ObjHeader* %255, %struct.ObjHeader** %33, align 8, !tbaa !11
  %256 = bitcast %struct.ObjHeader* %255 to %struct.ArrayHeader*
  %257 = call fastcc %struct.ObjHeader* @Kotlin_String_plusImpl(%struct.ArrayHeader* nonnull %256, %struct.ArrayHeader* getelementptr inbounds ({ %struct.ArrayHeader, [1 x i16] }, { %struct.ArrayHeader, [1 x i16] }* @1274, i64 0, i32 0), %struct.ObjHeader** nonnull %34)
  store %struct.ObjHeader* %257, %struct.ObjHeader** %46, align 8, !tbaa !11
  %.not.i = icmp eq i32 %inductionVariable.0.i, 9999
  br i1 %.not.i, label %epilogue, label %do_while_loop.i

epilogue:                                         ; preds = %"kfun:Random#<get-$companion>#static(){}Random.Companion.exit.i"
  %258 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 14
  %259 = getelementptr inbounds [15 x %struct.ObjHeader*], [15 x %struct.ObjHeader*]* %2, i64 0, i64 13
  store %struct.ObjHeader* %257, %struct.ObjHeader** %259, align 8, !tbaa !11
  %260 = bitcast %struct.ObjHeader* %257 to %struct.ArrayHeader*
  %261 = call fastcc %struct.ObjHeader* @Kotlin_String_plusImpl(%struct.ArrayHeader* nonnull %260, %struct.ArrayHeader* getelementptr inbounds ({ %struct.ArrayHeader, [3 x i16] }, { %struct.ArrayHeader, [3 x i16] }* @532, i64 0, i32 0), %struct.ObjHeader** nonnull %258)
  store %struct.ObjHeader* %261, %struct.ObjHeader** %46, align 8, !tbaa !11
  %262 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %263 = load i64, i64* %40, align 8, !tbaa !31
  %264 = bitcast %"class.kotlin::mm::ShadowStack"* %262 to i64*
  store i64 %263, i64* %264, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %24)
  %265 = call double @"kfun:StringBenchmark#summarizeSplittedCsv(){}kotlin.Double"(%struct.ObjHeader* nonnull %objHeader)
  %266 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %267 = load i64, i64* %15, align 8, !tbaa !31
  %268 = bitcast %"class.kotlin::mm::ShadowStack"* %266 to i64*
  store i64 %267, i64* %268, align 8, !tbaa !29
  ret void
}
