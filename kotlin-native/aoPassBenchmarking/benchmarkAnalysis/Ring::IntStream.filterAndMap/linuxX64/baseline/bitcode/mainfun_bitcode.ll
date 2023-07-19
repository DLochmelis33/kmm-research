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
  %8 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
  %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %10 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !7
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
  %28 = load i64, i64* %27, align 8, !tbaa !7
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
  %37 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %36, align 8, !tbaa !3
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
  %49 = load i64, i64* %30, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23)
  %50 = bitcast [10 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %50)
  %.sub.i = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(80) %50, i8 0, i32 80, i1 immarg false) #49
  %51 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 8
  %52 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 9
  %53 = bitcast [10 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %54 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %55 = bitcast %struct.ObjHeader** %54 to i64*
  store i64 %49, i64* %55, align 8, !tbaa !9
  %56 = bitcast %"class.kotlin::mm::ShadowStack"* %48 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %56, align 8, !tbaa !7
  %57 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %58 = bitcast %struct.ObjHeader** %57 to i32*
  store i32 0, i32* %58, align 8, !tbaa !12
  %59 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %53, i64 0, i32 3
  store i32 10, i32* %59, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %23, i8 0, i32 32, i1 immarg false) #49
  %60 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %61 = bitcast %"class.kotlin::mm::ShadowStack"* %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !7
  store i64 %62, i64* %30, align 8, !tbaa !9
  %63 = bitcast %"class.kotlin::mm::ShadowStack"* %60 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %63, align 8, !tbaa !7
  store i32 0, i32* %33, align 8, !tbaa !12
  store i32 4, i32* %34, align 4, !tbaa !13
  %64 = bitcast %struct.ObjHeader* %46 to %struct.ObjHeader**
  %65 = load %struct.ObjHeader*, %struct.ObjHeader** %64, align 8
  store %struct.ObjHeader* %65, %struct.ObjHeader** %24, align 8, !tbaa !3
  %66 = icmp eq %struct.ObjHeader* %65, null
  br i1 %66, label %when_case.i.i, label %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"

when_case.i.i:                                    ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @ThrowNullPointerException() #50
  unreachable

"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i": ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %67 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 6
  %68 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 5
  %69 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 4
  %70 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 7
  %71 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %1, i64 0, i64 3
  store %struct.ObjHeader* %65, %struct.ObjHeader** %71, align 8, !tbaa !3
  %72 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %73 = load i64, i64* %30, align 8, !tbaa !9
  %74 = bitcast %"class.kotlin::mm::ShadowStack"* %72 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23)
  %75 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %76 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %75 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %77 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %76, align 8, !tbaa !3
  %78 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %77, i64 0, i32 2, i32 1
  %79 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %78, i64 24) #37
  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79, i64 1
  %81 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79, i64 2
  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81 to %struct.TypeInfo**
  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to i64*
  store i64 0, i64* %83, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.object-2#internal", i64 0, i32 0), %struct.TypeInfo** %82, align 8, !tbaa !14
  %84 = bitcast %struct.ObjHeader** %69 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !3
  %85 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79, i64 3
  %86 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %85 to %struct.ObjHeader**
  store %struct.ObjHeader* %65, %struct.ObjHeader** %86, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !3
  %87 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %88 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %87 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %89 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %88, align 8, !tbaa !3
  %90 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %89, i64 0, i32 2, i32 1
  %91 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %90, i64 40) #37
  %92 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91, i64 1
  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91, i64 2
  %94 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to %struct.TypeInfo**
  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92 to i64*
  store i64 0, i64* %95, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.sequences.FilteringSequence#internal", i64 0, i32 0), %struct.TypeInfo** %94, align 8, !tbaa !14
  %96 = bitcast %struct.ObjHeader** %68 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %96, align 8, !tbaa !3
  %97 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %81, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %97, align 8, !tbaa !3
  %98 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91, i64 5
  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %98 to i1*
  store i1 true, i1* %99, align 8
  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91, i64 4
  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to %struct.ObjHeader**
  store %struct.ObjHeader* getelementptr inbounds ({ %struct.ObjHeader }, { %struct.ObjHeader }* @174, i64 0, i32 0), %struct.ObjHeader** %101, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %96, align 8, !tbaa !3
  %102 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %103 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %102 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %104 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %103, align 8, !tbaa !3
  %105 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %104, i64 0, i32 2, i32 1
  %106 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %105, i64 32) #37
  %107 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 1
  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 2
  %109 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to %struct.ObjHeader*
  %110 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to %struct.TypeInfo**
  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107 to i64*
  store i64 0, i64* %111, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.sequences.TransformingSequence#internal", i64 0, i32 0), %struct.TypeInfo** %110, align 8, !tbaa !14
  %112 = bitcast %struct.ObjHeader** %67 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %112, align 8, !tbaa !3
  %113 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %113, align 8, !tbaa !3
  %114 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 4
  %115 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %114 to %struct.ObjHeader**
  store %struct.ObjHeader* getelementptr inbounds ({ %struct.ObjHeader }, { %struct.ObjHeader }* @175, i64 0, i32 0), %struct.ObjHeader** %115, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %112, align 8, !tbaa !3
  %116 = call %struct.ObjHeader* @"kfun:kotlin.sequences.TransformingSequence#iterator(){}kotlin.collections.Iterator<1:1>"(%struct.ObjHeader* nonnull %109, %struct.ObjHeader** nonnull %70)
  %117 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %116, i64 0, i32 0
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
  %122 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %117 monotonic, align 8
  %123 = ptrtoint %struct.TypeInfo* %122 to i64
  %124 = and i64 %123, -4
  %125 = inttoptr i64 %124 to %struct.TypeInfo*
  %126 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %125, i64 0, i32 0
  %127 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %126 monotonic, align 8
  %128 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %127, i64 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %127, i64 0, i32 10
  %131 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %130, align 8
  %132 = and i32 %129, 160
  %133 = zext i32 %132 to i64
  %134 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %131, i64 %133, i32 2
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr i8*, i8** %135, i64 1
  %137 = bitcast i8** %136 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %138 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %137, align 8
  %139 = call %struct.ObjHeader* %138(%struct.ObjHeader* nonnull %116, %struct.ObjHeader** nonnull %51)
  %140 = load i32, i32* @"state_thread_local$Blackhole", align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Blackhole", void ()* nonnull @"kfun:Blackhole.$init_thread_local#internal")
  br label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"

"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %142 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %143 = load %struct.ObjHeader*, %struct.ObjHeader** %142, align 8
  store %struct.ObjHeader* %143, %struct.ObjHeader** %52, align 8, !tbaa !3
  %144 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %143, i64 1
  %145 = bitcast %struct.ObjHeader* %144 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %139, i64 0, i32 0
  %148 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %147 monotonic, align 8
  %149 = ptrtoint %struct.TypeInfo* %148 to i64
  %150 = and i64 %149, -4
  %151 = inttoptr i64 %150 to %struct.TypeInfo*
  %152 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %151, i64 0, i32 0
  %153 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %152 monotonic, align 8
  %154 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %153, i64 1, i32 1
  %155 = bitcast %struct.ExtendedTypeInfo** %154 to i32 (%struct.ObjHeader*)**
  %156 = load i32 (%struct.ObjHeader*)*, i32 (%struct.ObjHeader*)** %155, align 8
  %157 = call i32 %156(%struct.ObjHeader* %139)
  %158 = add i32 %146, %157
  store i32 %158, i32* %145, align 4
  br label %loop_check.i

loop_check.i:                                     ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"
  %159 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %117 monotonic, align 8
  %160 = ptrtoint %struct.TypeInfo* %159 to i64
  %161 = and i64 %160, -4
  %162 = inttoptr i64 %161 to %struct.TypeInfo*
  %163 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %162, i64 0, i32 0
  %164 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %163 monotonic, align 8
  %165 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %164, i64 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %164, i64 0, i32 10
  %168 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %167, align 8
  %169 = and i32 %166, 160
  %170 = zext i32 %169 to i64
  %171 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %168, i64 %170, i32 2
  %172 = bitcast i8*** %171 to i1 (%struct.ObjHeader*)***
  %173 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %172, align 8
  %174 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %173, align 8
  %175 = call zeroext i1 %174(%struct.ObjHeader* nonnull %116)
  br i1 %175, label %while_loop.i, label %epilogue

epilogue:                                         ; preds = %loop_check.i
  %176 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %177 = bitcast %"class.kotlin::mm::ShadowStack"* %176 to i64*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %50)
  %178 = load i64, i64* %14, align 8, !tbaa !9
  store i64 %178, i64* %177, align 8, !tbaa !7
  ret void
}
