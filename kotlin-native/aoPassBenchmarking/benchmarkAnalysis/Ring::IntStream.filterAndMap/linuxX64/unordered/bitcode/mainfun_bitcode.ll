define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [10 x %struct.ObjHeader*], align 8
  %2 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 0
  %3 = bitcast [4 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %3, i8 0, i32 32, i1 immarg false) #49
  %4 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %5 = alloca %"kclassbody:IntStreamBenchmark#internal", align 8
  %6 = getelementptr inbounds %"kclassbody:IntStreamBenchmark#internal", %"kclassbody:IntStreamBenchmark#internal"* %5, i64 0, i32 1
  %7 = bitcast %struct.ObjHeader** %6 to i64*
  store i64 0, i64* %7, align 8
  %objHeader = getelementptr inbounds %"kclassbody:IntStreamBenchmark#internal", %"kclassbody:IntStreamBenchmark#internal"* %5, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:IntStreamBenchmark#internal", %"kclassbody:IntStreamBenchmark#internal"* %5, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:IntStreamBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %8 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %10 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
  %12 = load atomic i64, i64* %11 unordered, align 8, !tbaa !7
  %13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %14 = bitcast %struct.ObjHeader** %13 to i64*
  store i64 %12, i64* %14, align 8, !tbaa !9
  %15 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %15, align 8, !tbaa !7
  %16 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %17 = bitcast %struct.ObjHeader** %16 to i32*
  store i32 0, i32* %17, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %10, i64 0, i32 3
  store i32 4, i32* %18, align 4, !tbaa !13
  %19 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %Kotlin_mm_safePointFunctionPrologue.exit, label %22

22:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %22, %call_success
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %4, align 8, !tbaa !3
  %23 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23)
  %.sub.i2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %23, i8 0, i32 32, i1 immarg false) #49
  %24 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %25 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %26 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %27 = bitcast %"class.kotlin::mm::ShadowStack"* %25 to i64*
  %28 = load atomic i64, i64* %27 unordered, align 8, !tbaa !7
  %29 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %30 = bitcast %struct.ObjHeader** %29 to i64*
  store i64 %28, i64* %30, align 8, !tbaa !9
  %31 = bitcast %"class.kotlin::mm::ShadowStack"* %25 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %31, align 8, !tbaa !7
  %32 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %33 = bitcast %struct.ObjHeader** %32 to i32*
  store i32 0, i32* %33, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %26, i64 0, i32 3
  store i32 4, i32* %34, align 4, !tbaa !13
  %35 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %36 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %35 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %37 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %36 unordered, align 8, !tbaa !3
  %38 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %37, i64 0, i32 2, i32 1
  %39 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %38, i64 32) #37
  %40 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 1
  %41 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 2
  %42 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to %struct.ObjHeader*
  %43 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to %struct.TypeInfo**
  %44 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40 to i64*
  store i64 0, i64* %44, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %43, align 8, !tbaa !14
  %45 = bitcast %struct.ObjHeader** %24 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %45, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}"(%struct.ObjHeader* nonnull %42, i32 1, i32 10000) #37
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %45, align 8, !tbaa !3
  %46 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %47 = bitcast %struct.ObjHeader* %46 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %47, align 8, !tbaa !3
  %48 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %49 = load atomic i64, i64* %30 unordered, align 8, !tbaa !9
  %50 = bitcast %"class.kotlin::mm::ShadowStack"* %48 to i64*
  store i64 %49, i64* %50, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23)
  %51 = bitcast [10 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %51)
  %.sub.i = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(80) %51, i8 0, i32 80, i1 immarg false) #49
  %52 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 8
  %53 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 9
  %54 = bitcast [10 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %55 = load atomic i64, i64* %50 unordered, align 8, !tbaa !7
  %56 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %57 = bitcast %struct.ObjHeader** %56 to i64*
  store i64 %55, i64* %57, align 8, !tbaa !9
  %58 = bitcast %"class.kotlin::mm::ShadowStack"* %48 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %58, align 8, !tbaa !7
  %59 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %60 = bitcast %struct.ObjHeader** %59 to i32*
  store i32 0, i32* %60, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %54, i64 0, i32 3
  store i32 10, i32* %61, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %23, i8 0, i32 32, i1 immarg false) #49
  %62 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %63 = bitcast %"class.kotlin::mm::ShadowStack"* %62 to i64*
  %64 = load atomic i64, i64* %63 unordered, align 8, !tbaa !7
  store i64 %64, i64* %30, align 8, !tbaa !9
  %65 = bitcast %"class.kotlin::mm::ShadowStack"* %62 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %65, align 8, !tbaa !7
  store i32 0, i32* %33, align 8, !tbaa !12
  store i32 4, i32* %34, align 4, !tbaa !13
  %66 = bitcast %struct.ObjHeader* %46 to %struct.ObjHeader**
  %67 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %66 unordered, align 8
  store %struct.ObjHeader* %67, %struct.ObjHeader** %24, align 8, !tbaa !3
  %68 = icmp eq %struct.ObjHeader* %67, null
  br i1 %68, label %when_case.i.i, label %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"

when_case.i.i:                                    ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @ThrowNullPointerException() #50
  unreachable

"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i": ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %69 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 6
  %70 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 5
  %71 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 4
  %72 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 7
  %73 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 3
  store %struct.ObjHeader* %67, %struct.ObjHeader** %73, align 8, !tbaa !3
  %74 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %75 = load atomic i64, i64* %30 unordered, align 8, !tbaa !9
  %76 = bitcast %"class.kotlin::mm::ShadowStack"* %74 to i64*
  store i64 %75, i64* %76, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23)
  %77 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %78 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %77 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %79 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %78 unordered, align 8, !tbaa !3
  %80 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %79, i64 0, i32 2, i32 1
  %81 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %80, i64 24) #37
  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81, i64 1
  %83 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81, i64 2
  %84 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83 to %struct.TypeInfo**
  %85 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to i64*
  store i64 0, i64* %85, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.object-2#internal", i64 0, i32 0), %struct.TypeInfo** %84, align 8, !tbaa !14
  %86 = bitcast %struct.ObjHeader** %71 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %86, align 8, !tbaa !3
  %87 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81, i64 3
  %88 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %87 to %struct.ObjHeader**
  store %struct.ObjHeader* %67, %struct.ObjHeader** %88, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %86, align 8, !tbaa !3
  %89 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %90 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %89 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %91 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %90 unordered, align 8, !tbaa !3
  %92 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %91, i64 0, i32 2, i32 1
  %93 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %92, i64 40) #37
  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 1
  %95 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 2
  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95 to %struct.TypeInfo**
  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
  store i64 0, i64* %97, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.sequences.FilteringSequence#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !14
  %98 = bitcast %struct.ObjHeader** %70 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
  %99 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %99, align 8, !tbaa !3
  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 5
  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to i1*
  store i1 true, i1* %101, align 8
  %102 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, i64 4
  %103 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %102 to %struct.ObjHeader**
  store %struct.ObjHeader* getelementptr inbounds ({ %struct.ObjHeader }, { %struct.ObjHeader }* @174, i64 0, i32 0), %struct.ObjHeader** %103, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
  %104 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %105 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %104 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %106 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %105 unordered, align 8, !tbaa !3
  %107 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %106, i64 0, i32 2, i32 1
  %108 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %107, i64 32) #37
  %109 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 1
  %110 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 2
  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to %struct.ObjHeader*
  %112 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110 to %struct.TypeInfo**
  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i64*
  store i64 0, i64* %113, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.sequences.TransformingSequence#internal", i64 0, i32 0), %struct.TypeInfo** %112, align 8, !tbaa !14
  %114 = bitcast %struct.ObjHeader** %69 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !3
  %115 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %95, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %115, align 8, !tbaa !3
  %116 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, i64 4
  %117 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %116 to %struct.ObjHeader**
  store %struct.ObjHeader* getelementptr inbounds ({ %struct.ObjHeader }, { %struct.ObjHeader }* @175, i64 0, i32 0), %struct.ObjHeader** %117, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %110, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !3
  %118 = call %struct.ObjHeader* @"kfun:kotlin.sequences.TransformingSequence#iterator(){}kotlin.collections.Iterator<1:1>"(%struct.ObjHeader* nonnull %111, %struct.ObjHeader** nonnull %72)
  %119 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %118, i64 0, i32 0
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
  %124 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %119 monotonic, align 8
  %125 = ptrtoint %struct.TypeInfo* %124 to i64
  %126 = and i64 %125, -4
  %127 = inttoptr i64 %126 to %struct.TypeInfo*
  %128 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %127, i64 0, i32 0
  %129 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %128 monotonic, align 8
  %130 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %129, i64 0, i32 9
  %131 = load atomic i32, i32* %130 unordered, align 4
  %132 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %129, i64 0, i32 10
  %133 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %132 unordered, align 8
  %134 = and i32 %131, 160
  %135 = zext i32 %134 to i64
  %136 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %133, i64 %135, i32 2
  %137 = load atomic i8**, i8*** %136 unordered, align 8
  %138 = getelementptr i8*, i8** %137, i64 1
  %139 = bitcast i8** %138 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %140 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %139 unordered, align 8
  %141 = call %struct.ObjHeader* %140(%struct.ObjHeader* nonnull %118, %struct.ObjHeader** nonnull %52)
  %142 = load atomic i32, i32* @"state_thread_local$Blackhole" unordered, align 4
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Blackhole", void ()* nonnull @"kfun:Blackhole.$init_thread_local#internal")
  br label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"

"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %144 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %145 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %144 unordered, align 8
  store %struct.ObjHeader* %145, %struct.ObjHeader** %53, align 8, !tbaa !3
  %146 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %145, i64 1
  %147 = bitcast %struct.ObjHeader* %146 to i32*
  %148 = load atomic i32, i32* %147 unordered, align 4
  %149 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %141, i64 0, i32 0
  %150 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %149 monotonic, align 8
  %151 = ptrtoint %struct.TypeInfo* %150 to i64
  %152 = and i64 %151, -4
  %153 = inttoptr i64 %152 to %struct.TypeInfo*
  %154 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %153, i64 0, i32 0
  %155 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %154 monotonic, align 8
  %156 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %155, i64 1, i32 1
  %157 = bitcast %struct.ExtendedTypeInfo** %156 to i32 (%struct.ObjHeader*)**
  %158 = load atomic i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %157 unordered, align 8
  %159 = call i32 %158(%struct.ObjHeader* %141)
  %160 = add i32 %148, %159
  store i32 %160, i32* %147, align 4
  br label %loop_check.i

loop_check.i:                                     ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"
  %161 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %119 monotonic, align 8
  %162 = ptrtoint %struct.TypeInfo* %161 to i64
  %163 = and i64 %162, -4
  %164 = inttoptr i64 %163 to %struct.TypeInfo*
  %165 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %164, i64 0, i32 0
  %166 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %165 monotonic, align 8
  %167 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %166, i64 0, i32 9
  %168 = load atomic i32, i32* %167 unordered, align 4
  %169 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %166, i64 0, i32 10
  %170 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %169 unordered, align 8
  %171 = and i32 %168, 160
  %172 = zext i32 %171 to i64
  %173 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %170, i64 %172, i32 2
  %174 = bitcast i8*** %173 to i1 (%struct.ObjHeader*)***
  %175 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %174 unordered, align 8
  %176 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %175 unordered, align 8
  %177 = call zeroext i1 %176(%struct.ObjHeader* nonnull %118)
  br i1 %177, label %while_loop.i, label %epilogue

epilogue:                                         ; preds = %loop_check.i
  %178 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %179 = bitcast %"class.kotlin::mm::ShadowStack"* %178 to i64*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %51)
  %180 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
  store i64 %180, i64* %179, align 8, !tbaa !7
  ret void
}
