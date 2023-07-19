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
  %9 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !11
  %10 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %11 = bitcast [4 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
  %12 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to i64*
  %13 = load atomic i64, i64* %12 unordered, align 8, !tbaa !14
  %14 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %15 = bitcast %struct.ObjHeader** %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !16
  %16 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %16, align 8, !tbaa !14
  %17 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %18 = bitcast %struct.ObjHeader** %17 to i32*
  store i32 0, i32* %18, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %11, i64 0, i32 3
  store i32 4, i32* %19, align 4, !tbaa !19
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
  %29 = load atomic i64, i64* %28 unordered, align 8, !tbaa !14
  %30 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %31 = bitcast %struct.ObjHeader** %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !16
  %32 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %32, align 8, !tbaa !14
  %33 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %34 = bitcast %struct.ObjHeader** %33 to i32*
  store i32 0, i32* %34, align 8, !tbaa !18
  %35 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %27, i64 0, i32 3
  store i32 4, i32* %35, align 4, !tbaa !19
  %36 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %37 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %36 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %38 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %37 unordered, align 8, !tbaa !11
  %39 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %38, i64 0, i32 2, i32 1
  %40 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %39, i64 64) #37
  %41 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 1
  %42 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 2
  %43 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42 to %struct.TypeInfo**
  %44 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to i64*
  store i64 0, i64* %44, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [27 x i8*] }, { %struct.TypeInfo, [27 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList#internal", i64 0, i32 0), %struct.TypeInfo** %43, align 8, !tbaa !20
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
  %51 = load atomic i64, i64* %50 unordered, align 8, !tbaa !14
  %52 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %53 = bitcast %struct.ObjHeader** %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !16
  %54 = bitcast %"class.kotlin::mm::ShadowStack"* %48 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i.i, %struct.ObjHeader*** %54, align 8, !tbaa !14
  %55 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %56 = bitcast %struct.ObjHeader** %55 to i32*
  store i32 0, i32* %56, align 8, !tbaa !18
  %57 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %49, i64 0, i32 3
  store i32 5, i32* %57, align 4, !tbaa !19
  %58 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %59 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %58 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %60 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %59 unordered, align 8, !tbaa !11
  %61 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %60, i64 0, i32 2, i32 1
  %62 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %61, i64 104) #37
  %63 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62, i64 1
  %64 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62, i64 2
  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64 to %struct.TypeInfo**
  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %65, align 8, !tbaa !22
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
  %80 = bitcast %"class.kotlin::mm::ShadowStack"* %79 to i64*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %46) #37
  %81 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %82 = bitcast %struct.ObjHeader* %81 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %82, align 8, !tbaa !11
  %83 = load atomic i64, i64* %31 unordered, align 8, !tbaa !16
  store i64 %83, i64* %80, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %84 = bitcast [11 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %84)
  %.sub.i = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(88) %84, i8 0, i32 88, i1 immarg false) #50
  %85 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %86 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 4
  %87 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 5
  %88 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 6
  %89 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 7
  %90 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 8
  %91 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 9
  %92 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 10
  %93 = bitcast [11 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %94 = load atomic i64, i64* %80 unordered, align 8, !tbaa !14
  %95 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %96 = bitcast %struct.ObjHeader** %95 to i64*
  store i64 %94, i64* %96, align 8, !tbaa !16
  %97 = bitcast %"class.kotlin::mm::ShadowStack"* %79 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %97, align 8, !tbaa !14
  %98 = getelementptr inbounds [11 x %struct.ObjHeader*], [11 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %99 = bitcast %struct.ObjHeader** %98 to i32*
  store i32 0, i32* %99, align 8, !tbaa !18
  %100 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %93, i64 0, i32 3
  store i32 11, i32* %100, align 4, !tbaa !19
  %101 = bitcast %struct.ObjHeader* %81 to %struct.ObjHeader**
  %102 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %101 unordered, align 8
  store %struct.ObjHeader* %102, %struct.ObjHeader** %85, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* %102)
  %103 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %102, i64 5
  %104 = bitcast %struct.ObjHeader* %103 to i32*
  %105 = load atomic i32, i32* %104 unordered, align 4
  %106 = bitcast %struct.ObjHeader* %102 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %107 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %106, i64 0, i32 6
  %108 = load atomic i32, i32* %107 unordered, align 4
  call fastcc void @"kfun:kotlin.collections.ArrayList.removeRangeInternal#internal"(%struct.ObjHeader* %102, i32 %105, i32 %108)
  %109 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %101 unordered, align 8
  store %struct.ObjHeader* %109, %struct.ObjHeader** %86, align 8, !tbaa !11
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* %109)
  %110 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %109, i64 5
  %111 = bitcast %struct.ObjHeader* %110 to i32*
  %112 = load atomic i32, i32* %111 unordered, align 4
  %113 = bitcast %struct.ObjHeader* %109 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %114 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %113, i64 0, i32 6
  %115 = load atomic i32, i32* %114 unordered, align 4
  %116 = add i32 %112, %115
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* %109, i32 %116, %struct.ObjHeader* getelementptr inbounds ([256 x { %struct.ObjHeader, i32 }], [256 x { %struct.ObjHeader, i32 }]* @INT_CACHE, i64 0, i64 130, i32 0))
  %117 = bitcast %struct.ObjHeader* %81 to i64*
  %118 = bitcast %struct.ObjHeader** %87 to i64*
  %119 = bitcast %struct.ObjHeader** %88 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %120 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %123

123:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %123, %while_loop.i
  %124 = load atomic i64, i64* %117 unordered, align 8
  store i64 %124, i64* %118, align 8, !tbaa !11
  %125 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %126 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %125 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %127 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %126 unordered, align 8, !tbaa !11
  %128 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %127, i64 0, i32 2, i32 1
  %129 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %128, i64 32) #37
  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 1
  %131 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 2
  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.ObjHeader*
  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.TypeInfo**
  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to i64*
  store i64 0, i64* %134, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.ArrayList.Itr#internal", i64 0, i32 0), %struct.TypeInfo** %133, align 8, !tbaa !20
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %119, align 8, !tbaa !11
  %135 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 3
  %136 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %135 to i64*
  store i64 %124, i64* %136, align 8, !tbaa !11
  %137 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 4
  %138 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137 to i32*
  store i32 0, i32* %138, align 8
  %139 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %"kclassbody:kotlin.collections.ArrayList.Itr#internal"*
  %140 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList.Itr#internal", %"kclassbody:kotlin.collections.ArrayList.Itr#internal"* %139, i64 0, i32 3
  store i32 -1, i32* %140, align 4
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %119, align 8, !tbaa !11
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to i64*
  %142 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %135 to %"kclassbody:kotlin.collections.ArrayList#internal"**
  %143 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %135 to %struct.ObjHeader**
  br label %loop_check4.i

while_loop5.i:                                    ; preds = %when_exit.i, %when_case.i
  %144 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %Kotlin_mm_safePointWhileLoopBody.exit27.i, label %147

147:                                              ; preds = %while_loop5.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit27.i

Kotlin_mm_safePointWhileLoopBody.exit27.i:        ; preds = %147, %while_loop5.i
  %148 = load atomic volatile i64, i64* %141 monotonic, align 8
  %149 = and i64 %148, -4
  %150 = inttoptr i64 %149 to i64*
  %151 = load atomic volatile i64, i64* %150 monotonic, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = icmp eq i8* %152, bitcast ({ %struct.TypeInfo, [6 x i8*] }* @"ktypeglobal:kotlin.collections.AbstractMutableList.IteratorImpl#internal" to i8*)
  br i1 %153, label %when_case10.i, label %when_next11.i

when_case10.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit27.i
  %154 = call %struct.ObjHeader* @"kfun:kotlin.collections.AbstractMutableList.IteratorImpl.next#internal"(%struct.ObjHeader* nonnull %132, %struct.ObjHeader** nonnull %89)
  br label %when_exit13.i

when_next11.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit27.i
  %155 = call %struct.ObjHeader* @"kfun:kotlin.collections.ArrayList.Itr.next#internal"(%struct.ObjHeader* nonnull %132, %struct.ObjHeader** nonnull %90)
  br label %when_exit13.i

when_exit13.i:                                    ; preds = %when_next11.i, %when_case10.i
  %156 = phi %struct.ObjHeader* [ %154, %when_case10.i ], [ %155, %when_next11.i ]
  %157 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %156, i64 1
  %158 = bitcast %struct.ObjHeader* %157 to i32*
  %159 = load atomic i32, i32* %158 unordered, align 4
  %160 = mul i32 %159, %159
  %161 = icmp sgt i32 %160, %i.0.i
  br i1 %161, label %when_case23.i, label %when_exit16.i

when_exit16.i:                                    ; preds = %when_exit13.i
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %label_18.i, label %label_20.i

label_18.i:                                       ; preds = %when_exit16.i
  call fastcc void @ThrowArithmeticException() #49
  unreachable

label_20.i:                                       ; preds = %when_exit16.i
  %163 = srem i32 %i.0.i, %159
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %when_exit24.i, label %loop_check4.i

loop_check4.i:                                    ; preds = %label_20.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %165 = load atomic volatile i64, i64* %141 monotonic, align 8
  %166 = and i64 %165, -4
  %167 = inttoptr i64 %166 to i64*
  %168 = load atomic volatile i64, i64* %167 monotonic, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = icmp eq i8* %169, bitcast ({ %struct.TypeInfo, [6 x i8*] }* @"ktypeglobal:kotlin.collections.AbstractMutableList.IteratorImpl#internal" to i8*)
  %171 = load atomic i32, i32* %138 unordered, align 8
  br i1 %170, label %when_case.i, label %when_exit.i

when_case.i:                                      ; preds = %loop_check4.i
  %172 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %143 unordered, align 8
  %173 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %172, i64 0, i32 0
  %174 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %173 monotonic, align 8
  %175 = ptrtoint %struct.TypeInfo* %174 to i64
  %176 = and i64 %175, -4
  %177 = inttoptr i64 %176 to %struct.TypeInfo*
  %178 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %177, i64 0, i32 0
  %179 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %178 monotonic, align 8
  %180 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %179, i64 1, i32 4
  %181 = bitcast %struct.TypeInfo** %180 to i32 (%struct.ObjHeader*)**
  %182 = load atomic i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %181 unordered, align 8
  %183 = call i32 %182(%struct.ObjHeader* %172)
  %184 = icmp slt i32 %171, %183
  br i1 %184, label %while_loop5.i, label %when_case23.i

when_exit.i:                                      ; preds = %loop_check4.i
  %185 = load atomic %"kclassbody:kotlin.collections.ArrayList#internal"*, %"kclassbody:kotlin.collections.ArrayList#internal"** %142 unordered, align 8
  %186 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %185, i64 0, i32 6
  %187 = load atomic i32, i32* %186 unordered, align 4
  %188 = icmp slt i32 %171, %187
  br i1 %188, label %while_loop5.i, label %when_case23.i

when_case23.i:                                    ; preds = %when_exit.i, %when_case.i, %when_exit13.i
  %189 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %101 unordered, align 8
  store %struct.ObjHeader* %189, %struct.ObjHeader** %91, align 8, !tbaa !11
  %190 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %i.0.i, %struct.ObjHeader** nonnull %92)
  call fastcc void @"kfun:kotlin.collections.ArrayList.checkIsMutable#internal"(%struct.ObjHeader* %189)
  %191 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %189, i64 5
  %192 = bitcast %struct.ObjHeader* %191 to i32*
  %193 = load atomic i32, i32* %192 unordered, align 4
  %194 = bitcast %struct.ObjHeader* %189 to %"kclassbody:kotlin.collections.ArrayList#internal"*
  %195 = getelementptr inbounds %"kclassbody:kotlin.collections.ArrayList#internal", %"kclassbody:kotlin.collections.ArrayList#internal"* %194, i64 0, i32 6
  %196 = load atomic i32, i32* %195 unordered, align 4
  %197 = add i32 %193, %196
  call fastcc void @"kfun:kotlin.collections.ArrayList.addAtInternal#internal"(%struct.ObjHeader* %189, i32 %197, %struct.ObjHeader* nonnull %190)
  br label %when_exit24.i

when_exit24.i:                                    ; preds = %when_case23.i, %label_20.i
  %198 = add nuw nsw i32 %i.0.i, 2
  br label %loop_check.i

loop_check.i:                                     ; preds = %when_exit24.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %i.0.i = phi i32 [ 3, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %198, %when_exit24.i ]
  %199 = icmp ult i32 %i.0.i, 10001
  br i1 %199, label %while_loop.i, label %epilogue

epilogue:                                         ; preds = %loop_check.i
  %200 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %201 = bitcast %"class.kotlin::mm::ShadowStack"* %200 to i64*
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %84)
  %202 = load atomic i64, i64* %15 unordered, align 8, !tbaa !16
  store i64 %202, i64* %201, align 8, !tbaa !14
  ret void
}
