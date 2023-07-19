define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [5 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %2 = alloca [11 x %struct.ObjHeader*], align 8
  %3 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 0
  %4 = bitcast [4 x %struct.ObjHeader*]* %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %4, i8 0, i32 32, i1 immarg false) #50
  %5 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 3
  %6 = alloca %"kclassbody:PrimeListBenchmark#internal", align 8
  %7 = getelementptr inbounds %"kclassbody:PrimeListBenchmark#internal", %"kclassbody:PrimeListBenchmark#internal"* %6, i64 0, i32 1
  %8 = bitcast %struct.ObjHeader** %7 to i64*
  store i64 0, i64* %8, align 8
  %objHeader = getelementptr inbounds %"kclassbody:PrimeListBenchmark#internal", %"kclassbody:PrimeListBenchmark#internal"* %6, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:PrimeListBenchmark#internal", %"kclassbody:PrimeListBenchmark#internal"* %6, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:PrimeListBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %9 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !11
  %10 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %11 = bitcast [4 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
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
  %19 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %11, i64 0, i32 3
  store i32 4, i32* %19, align 4, !tbaa !34
  %20 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %Kotlin_mm_safePointFunctionPrologue.exit, label %23

23:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %23, %call_success
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %5, align 8, !tbaa !11
  %24 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  %.sub.i2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #50
  %25 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %26 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %27 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %28 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !29
  %30 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %31 = bitcast %struct.ObjHeader** %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !31
  %32 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %32, align 8, !tbaa !29
  %33 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %34 = bitcast %struct.ObjHeader** %33 to i32*
  store i32 0, i32* %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %27, i64 0, i32 3
  store i32 4, i32* %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %37 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %36 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %38 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %37, align 8, !tbaa !11
  %39 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %38, i64 0, i32 2, i32 1
  %40 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %39, i64 64) #37
  %41 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 1
  %42 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 2
  %43 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42 to %struct.TypeInfo**
  %44 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to i64*
  store i64 0, i64* %44, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %43, align 8, !tbaa !35
  %45 = bitcast %struct.ObjHeader** %25 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %45, align 8, !tbaa !11
  %46 = bitcast [5 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %46) #37
  %.sub.i.i.i = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %46, i8 0, i32 40, i1 immarg false) #50
  %47 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %48 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %49 = bitcast [5 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %50 = bitcast %"class.kotlin::mm::ShadowStack"* %48 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !29
  %52 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %53 = bitcast %struct.ObjHeader** %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !31
  %54 = bitcast %"class.kotlin::mm::ShadowStack"* %48 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %54, align 8, !tbaa !29
  %55 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %56 = bitcast %struct.ObjHeader** %55 to i32*
  store i32 0, i32* %56, align 8, !tbaa !33
  %57 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %49, i64 0, i32 3
  store i32 5, i32* %57, align 4, !tbaa !34
  %58 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %59 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %58 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %60 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %59, align 8, !tbaa !11
  %61 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %60, i64 0, i32 2, i32 1
  %62 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %61, i64 104) #37
  %63 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62, i64 1
  %64 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62, i64 2
  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64 to %struct.TypeInfo**
  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %65, align 8, !tbaa !37
  %67 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62, i64 3
  %68 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %67 to i32*
  store i32 10, i32* %68, align 8, !tbaa !9
  %69 = bitcast %struct.ObjHeader** %47 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %69, align 8, !tbaa !11
  %70 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %70, align 8, !tbaa !11
  %71 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 7
  %72 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %71 to i32*
  store i32 0, i32* %72, align 8
  %73 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %74 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %73, i64 0, i32 6
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 8
  %76 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i1*
  store i1 false, i1* %76, align 8
  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 5
  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  %79 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %46) #37
  %80 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %81 = bitcast %struct.ObjHeader* %80 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !11
  %82 = load i64, i64* %31, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %83 = bitcast [11 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %83)
  %.sub.i = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(88) %83, i8 0, i32 88, i1 immarg false) #50
  %84 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %85 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 4
  %86 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 5
  %87 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 6
  %88 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 7
  %89 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 8
  %90 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 9
  %91 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 10
  %92 = bitcast [11 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %93 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %94 = bitcast %struct.ObjHeader** %93 to i64*
  store i64 %82, i64* %94, align 8, !tbaa !31
  %95 = bitcast %"class.kotlin::mm::ShadowStack"* %79 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %95, align 8, !tbaa !29
  %96 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %97 = bitcast %struct.ObjHeader** %96 to i32*
  store i32 0, i32* %97, align 8, !tbaa !33
  %98 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %92, i64 0, i32 3
  store i32 11, i32* %98, align 4, !tbaa !34
  %99 = bitcast %struct.ObjHeader* %80 to %struct.ObjHeader**
  %100 = load %struct.ObjHeader*, %struct.ObjHeader** %99, align 8
  store %struct.ObjHeader* %100, %struct.ObjHeader** %84, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* %100)
  %101 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %100, i64 5
  %102 = bitcast %struct.ObjHeader* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = bitcast %struct.ObjHeader* %100 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %105 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %104, i64 0, i32 6
  %106 = load i32, i32* %105, align 4
  call fastcc void @"kfun:kotlin.collections.ArrayList.removeRangeInternal#internal"(%struct.ObjHeader* %100, i32 %103, i32 %106)
  %107 = load %struct.ObjHeader*, %struct.ObjHeader** %99, align 8
  store %struct.ObjHeader* %107, %struct.ObjHeader** %85, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* %107)
  %108 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %107, i64 5
  %109 = bitcast %struct.ObjHeader* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = bitcast %struct.ObjHeader* %107 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %112 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %111, i64 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %110, %113
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* %107, i32 %114, %struct.ObjHeader* getelementptr inbounds ([256 x { %struct.ObjHeader, i32 }], [256 x { %struct.ObjHeader, i32 }]* @INT_CACHE, i64 0, i64 130, i32 0))
  %115 = bitcast %struct.ObjHeader* %80 to i64*
  %116 = bitcast %struct.ObjHeader** %86 to i64*
  %117 = bitcast %struct.ObjHeader** %87 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %118 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %121

121:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %121, %while_loop.i
  %122 = load i64, i64* %115, align 8
  store i64 %122, i64* %116, align 8, !tbaa !11
  %123 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %124 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %123 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %125 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %124, align 8, !tbaa !11
  %126 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %125, i64 0, i32 2, i32 1
  %127 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %126, i64 32) #37
  %128 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 1
  %129 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 2
  %130 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to %struct.ObjHeader*
  %131 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to %struct.TypeInfo**
  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %128 to i64*
  store i64 0, i64* %132, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %131, align 8, !tbaa !35
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !11
  %133 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 3
  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to i64*
  store i64 %122, i64* %134, align 8, !tbaa !11
  %135 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 4
  %136 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %135 to i32*
  store i32 0, i32* %136, align 8
  %137 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %138 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %137, i64 0, i32 3
  store i32 -1, i32* %138, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !11
  %139 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to i64*
  %140 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to %"kclassbody:kotlin.collections.ArrayList#internal"**
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %133 to %struct.ObjHeader**
  br label %loop_check4.i

while_loop5.i:                                    ; preds = %when_exit.i, %when_case.i
  %142 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %Kotlin_mm_safePointWhileLoopBody.exit27.i, label %145

145:                                              ; preds = %while_loop5.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit27.i

Kotlin_mm_safePointWhileLoopBody.exit27.i:        ; preds = %145, %while_loop5.i
  %146 = load atomic volatile i64, i64* %139 monotonic, align 8
  %147 = and i64 %146, -4
  %148 = inttoptr i64 %147 to i64*
  %149 = load atomic volatile i64, i64* %148 monotonic, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = icmp eq i8* %150, bitcast ({ %struct.TypeInfo, [6 x i8*] }* @"ktypeglobal:kotlin.collections.AbstractMutableList.IteratorImpl#internal" to i8*)
  br i1 %151, label %when_case10.i, label %when_next11.i

when_case10.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit27.i
  %152 = call %struct.ObjHeader* @"kfun:kotlin.collections.AbstractMutableList.IteratorImpl.next#internal"(%struct.ObjHeader* nonnull %130, %struct.ObjHeader** nonnull %88)
  br label %when_exit13.i

when_next11.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit27.i
  %153 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList.Itr.next#internal"(%struct.ObjHeader* nonnull %130, %struct.ObjHeader** nonnull %89)
  br label %when_exit13.i

when_exit13.i:                                    ; preds = %when_next11.i, %when_case10.i
  %154 = phi %struct.ObjHeader* [ %152, %when_case10.i ], [ %153, %when_next11.i ]
  %155 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %154, i64 1
  %156 = bitcast %struct.ObjHeader* %155 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = mul i32 %157, %157
  %159 = icmp sgt i32 %158, %i.0.i
  br i1 %159, label %when_case23.i, label %when_exit16.i

when_exit16.i:                                    ; preds = %when_exit13.i
  %160 = icmp eq i32 %157, 0
  br i1 %160, label %label_18.i, label %label_20.i

label_18.i:                                       ; preds = %when_exit16.i
  call fastcc void @ThrowArithmeticException() #49
  unreachable

label_20.i:                                       ; preds = %when_exit16.i
  %161 = srem i32 %i.0.i, %157
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %when_exit24.i, label %loop_check4.i

loop_check4.i:                                    ; preds = %label_20.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %163 = load atomic volatile i64, i64* %139 monotonic, align 8
  %164 = and i64 %163, -4
  %165 = inttoptr i64 %164 to i64*
  %166 = load atomic volatile i64, i64* %165 monotonic, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = icmp eq i8* %167, bitcast ({ %struct.TypeInfo, [6 x i8*] }* @"ktypeglobal:kotlin.collections.AbstractMutableList.IteratorImpl#internal" to i8*)
  %169 = load i32, i32* %136, align 8
  br i1 %168, label %when_case.i, label %when_exit.i

when_case.i:                                      ; preds = %loop_check4.i
  %170 = load %struct.ObjHeader*, %struct.ObjHeader** %141, align 8
  %171 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %170, i64 0, i32 0
  %172 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %171 monotonic, align 8
  %173 = ptrtoint %struct.TypeInfo* %172 to i64
  %174 = and i64 %173, -4
  %175 = inttoptr i64 %174 to %struct.TypeInfo*
  %176 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %175, i64 0, i32 0
  %177 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %176 monotonic, align 8
  %178 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %177, i64 1, i32 4
  %179 = bitcast %struct.TypeInfo** %178 to i32 (%struct.ObjHeader*)**
  %180 = load i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %179, align 8
  %181 = call i32 %180(%struct.ObjHeader* %170)
  %182 = icmp slt i32 %169, %181
  br i1 %182, label %while_loop5.i, label %when_case23.i

when_exit.i:                                      ; preds = %loop_check4.i
  %183 = load %"kclassbody:kotlin.collections.ArrayList#internal"*, %"kclassbody:kotlin.collections.ArrayList#internal"** %140, align 8
  %184 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %183, i64 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %169, %185
  br i1 %186, label %while_loop5.i, label %when_case23.i

when_case23.i:                                    ; preds = %when_exit.i, %when_case.i, %when_exit13.i
  %187 = load %struct.ObjHeader*, %struct.ObjHeader** %99, align 8
  store %struct.ObjHeader* %187, %struct.ObjHeader** %90, align 8, !tbaa !11
  %188 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %i.0.i, %struct.ObjHeader** nonnull %91)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* %187)
  %189 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %187, i64 5
  %190 = bitcast %struct.ObjHeader* %189 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = bitcast %struct.ObjHeader* %187 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %193 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %192, i64 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = add i32 %191, %194
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* %187, i32 %195, %struct.ObjHeader* nonnull %188)
  br label %when_exit24.i

when_exit24.i:                                    ; preds = %when_case23.i, %label_20.i
  %196 = add nuw nsw i32 %i.0.i, 2
  br label %loop_check.i

loop_check.i:                                     ; preds = %when_exit24.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %i.0.i = phi i32 [ 3, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %196, %when_exit24.i ]
  %197 = icmp ult i32 %i.0.i, 10001
  br i1 %197, label %while_loop.i, label %epilogue

epilogue:                                         ; preds = %loop_check.i
  %198 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %199 = bitcast %"class.kotlin::mm::ShadowStack"* %198 to i64*
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %83)
  %200 = load i64, i64* %15, align 8, !tbaa !31
  store i64 %200, i64* %199, align 8, !tbaa !29
  ret void
}
