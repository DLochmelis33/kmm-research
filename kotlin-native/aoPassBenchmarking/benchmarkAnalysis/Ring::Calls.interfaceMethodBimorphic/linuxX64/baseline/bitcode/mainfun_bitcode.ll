define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [9 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:CallsBenchmark#internal", align 8
  %5 = getelementptr inbounds %"kclassbody:CallsBenchmark#internal", %"kclassbody:CallsBenchmark#internal"* %4, i64 0, i32 1
  %6 = bitcast %struct.ObjHeader** %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(88) %6, i8 0, i32 80, i1 immarg false) #49
  %objHeader = getelementptr inbounds %"kclassbody:CallsBenchmark#internal", %"kclassbody:CallsBenchmark#internal"* %4, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:CallsBenchmark#internal", %"kclassbody:CallsBenchmark#internal"* %4, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:CallsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %7 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
  %8 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %9 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %10 = bitcast %"class.kotlin::mm::ShadowStack"* %8 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !7
  %12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %13 = bitcast %struct.ObjHeader** %12 to i64*
  store i64 %11, i64* %13, align 8, !tbaa !9
  %14 = bitcast %"class.kotlin::mm::ShadowStack"* %8 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %14, align 8, !tbaa !7
  %15 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %16 = bitcast %struct.ObjHeader** %15 to i32*
  store i32 0, i32* %16, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %9, i64 0, i32 3
  store i32 4, i32* %17, align 4, !tbaa !13
  %18 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %Kotlin_mm_safePointFunctionPrologue.exit, label %21

21:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %21, %call_success
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %3, align 8, !tbaa !3
  %22 = bitcast [9 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %22)
  %.sub.i = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(72) %22, i8 0, i32 72, i1 immarg false) #49
  %23 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %24 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %25 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %26 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %27 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %28 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %29 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %30 = bitcast [9 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %31 = bitcast %"class.kotlin::mm::ShadowStack"* %29 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !7
  %33 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %34 = bitcast %struct.ObjHeader** %33 to i64*
  store i64 %32, i64* %34, align 8, !tbaa !9
  %35 = bitcast %"class.kotlin::mm::ShadowStack"* %29 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %35, align 8, !tbaa !7
  %36 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %37 = bitcast %struct.ObjHeader** %36 to i32*
  store i32 0, i32* %37, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %30, i64 0, i32 3
  store i32 9, i32* %38, align 4, !tbaa !13
  %39 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %40 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %39 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %41 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %40, align 8, !tbaa !3
  %42 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %41, i64 0, i32 2, i32 1
  %43 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %42, i64 16) #37
  %44 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 1
  %45 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 2
  %46 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45 to %struct.TypeInfo**
  %47 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %44 to i64*
  store i64 0, i64* %47, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.D#internal", i64 0, i32 0), %struct.TypeInfo** %46, align 8, !tbaa !14
  %48 = bitcast %struct.ObjHeader** %23 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %48, align 8, !tbaa !3
  %49 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %50 = bitcast %struct.ObjHeader* %49 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %50, align 8, !tbaa !3
  %51 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %52 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %51 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %53 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52, align 8, !tbaa !3
  %54 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %53, i64 0, i32 2, i32 1
  %55 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %54, i64 16) #37
  %56 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 1
  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 2
  %58 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to %struct.TypeInfo**
  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56 to i64*
  store i64 0, i64* %59, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.B#internal", i64 0, i32 0), %struct.TypeInfo** %58, align 8, !tbaa !14
  %60 = bitcast %struct.ObjHeader** %24 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %60, align 8, !tbaa !3
  %61 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %62 = bitcast %struct.ObjHeader* %61 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
  %63 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %64 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %63 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %65 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %64, align 8, !tbaa !3
  %66 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %65, i64 0, i32 2, i32 1
  %67 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %66, i64 16) #37
  %68 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %67, i64 1
  %69 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %67, i64 2
  %70 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69 to %struct.TypeInfo**
  %71 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %68 to i64*
  store i64 0, i64* %71, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.C#internal", i64 0, i32 0), %struct.TypeInfo** %70, align 8, !tbaa !14
  %72 = bitcast %struct.ObjHeader** %25 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %72, align 8, !tbaa !3
  %73 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 3
  %74 = bitcast %struct.ObjHeader* %73 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %74, align 8, !tbaa !3
  %75 = bitcast %struct.ObjHeader* %49 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 4
  %78 = bitcast %struct.ObjHeader* %77 to i64*
  store i64 %76, i64* %78, align 8, !tbaa !3
  %79 = bitcast %struct.ObjHeader* %61 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 5
  %82 = bitcast %struct.ObjHeader* %81 to i64*
  store i64 %80, i64* %82, align 8, !tbaa !3
  %83 = ptrtoint %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69 to i64
  %84 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 6
  %85 = bitcast %struct.ObjHeader* %84 to i64*
  store i64 %83, i64* %85, align 8, !tbaa !3
  %86 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 7
  %87 = bitcast %struct.ObjHeader* %86 to i64*
  store i64 %76, i64* %87, align 8, !tbaa !3
  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %90 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89, align 8, !tbaa !3
  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 16) #37
  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i64*
  store i64 0, i64* %96, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.X#internal", i64 0, i32 0), %struct.TypeInfo** %95, align 8, !tbaa !14
  %97 = bitcast %struct.ObjHeader** %26 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %97, align 8, !tbaa !3
  %98 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 8
  %99 = bitcast %struct.ObjHeader* %98 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %99, align 8, !tbaa !3
  %100 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %101 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %100 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %102 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %101, align 8, !tbaa !3
  %103 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %102, i64 0, i32 2, i32 1
  %104 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %103, i64 16) #37
  %105 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %104, i64 1
  %106 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %104, i64 2
  %107 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106 to %struct.TypeInfo**
  %108 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105 to i64*
  store i64 0, i64* %108, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.Y#internal", i64 0, i32 0), %struct.TypeInfo** %107, align 8, !tbaa !14
  %109 = bitcast %struct.ObjHeader** %27 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %109, align 8, !tbaa !3
  %110 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 9
  %111 = bitcast %struct.ObjHeader* %110 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %111, align 8, !tbaa !3
  %112 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %113 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %112 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %114 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %113, align 8, !tbaa !3
  %115 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %114, i64 0, i32 2, i32 1
  %116 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %115, i64 16) #37
  %117 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116, i64 1
  %118 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116, i64 2
  %119 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118 to %struct.TypeInfo**
  %120 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %117 to i64*
  store i64 0, i64* %120, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [103 x i8*] }, { %struct.TypeInfo, [103 x i8*] }* @"ktypeglobal:CallsBenchmark.Z#internal", i64 0, i32 0), %struct.TypeInfo** %119, align 8, !tbaa !14
  %121 = bitcast %struct.ObjHeader** %28 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %121, align 8, !tbaa !3
  %122 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 10
  %123 = bitcast %struct.ObjHeader* %122 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %118, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %123, align 8, !tbaa !3
  %124 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %125 = load i64, i64* %34, align 8, !tbaa !9
  %126 = bitcast %"class.kotlin::mm::ShadowStack"* %124 to i64*
  store i64 %125, i64* %126, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %22)
  %127 = bitcast %struct.ObjHeader* %81 to i64**
  %128 = load i64*, i64** %127, align 8
  %129 = bitcast %struct.ObjHeader* %84 to i64**
  %130 = load i64*, i64** %129, align 8
  br label %do_while_loop.i

do_while_loop.i:                                  ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %inductionVariable.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %135, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %131 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %134

134:                                              ; preds = %do_while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %134, %do_while_loop.i
  %135 = add nuw nsw i32 %inductionVariable.0.i, 1
  %136 = and i32 %inductionVariable.0.i, 1
  %137 = icmp eq i32 %136, 0
  %spec.select = select i1 %137, i64* %128, i64* %130
  %138 = load atomic volatile i64, i64* %spec.select monotonic, align 8
  %139 = and i64 %138, -4
  %140 = inttoptr i64 %139 to i64*
  %141 = load atomic volatile i64, i64* %140 monotonic, align 8
  %exitcond.not = icmp eq i32 %135, 1000000
  br i1 %exitcond.not, label %epilogue, label %do_while_loop.i

epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %142 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %143 = load i64, i64* %13, align 8, !tbaa !9
  %144 = bitcast %"class.kotlin::mm::ShadowStack"* %142 to i64*
  store i64 %143, i64* %144, align 8, !tbaa !7
  ret void
}
