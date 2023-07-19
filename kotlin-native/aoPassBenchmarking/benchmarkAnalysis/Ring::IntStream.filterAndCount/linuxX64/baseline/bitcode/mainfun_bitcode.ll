define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [5 x %struct.ObjHeader*], align 8
  %2 = alloca [6 x %struct.ObjHeader*], align 8
  %3 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 0
  %4 = bitcast [4 x %struct.ObjHeader*]* %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %4, i8 0, i32 32, i1 immarg false) #49
  %5 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 3
  %6 = alloca %"kclassbody:IntStreamBenchmark#internal", align 8
  %7 = getelementptr inbounds %"kclassbody:IntStreamBenchmark#internal", %"kclassbody:IntStreamBenchmark#internal"* %6, i64 0, i32 1
  %8 = bitcast %struct.ObjHeader** %7 to i64*
  store i64 0, i64* %8, align 8
  %objHeader = getelementptr inbounds %"kclassbody:IntStreamBenchmark#internal", %"kclassbody:IntStreamBenchmark#internal"* %6, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:IntStreamBenchmark#internal", %"kclassbody:IntStreamBenchmark#internal"* %6, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:IntStreamBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %9 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
  %10 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %11 = bitcast [4 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
  %12 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !7
  %14 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 1
  %15 = bitcast %struct.ObjHeader** %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !9
  %16 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %16, align 8, !tbaa !7
  %17 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 2
  %18 = bitcast %struct.ObjHeader** %17 to i32*
  store i32 0, i32* %18, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %11, i64 0, i32 3
  store i32 4, i32* %19, align 4, !tbaa !13
  %20 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %Kotlin_mm_safePointFunctionPrologue.exit, label %23

23:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %23, %call_success
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %5, align 8, !tbaa !3
  %24 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  %.sub.i2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #49
  %25 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %26 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %27 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %28 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !7
  %30 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %31 = bitcast %struct.ObjHeader** %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !9
  %32 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %32, align 8, !tbaa !7
  %33 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %34 = bitcast %struct.ObjHeader** %33 to i32*
  store i32 0, i32* %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %27, i64 0, i32 3
  store i32 4, i32* %35, align 4, !tbaa !13
  %36 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %37 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %36 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %38 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %37, align 8, !tbaa !3
  %39 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %38, i64 0, i32 2, i32 1
  %40 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %39, i64 32) #37
  %41 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 1
  %42 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, i64 2
  %43 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42 to %struct.ObjHeader*
  %44 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42 to %struct.TypeInfo**
  %45 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to i64*
  store i64 0, i64* %45, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %44, align 8, !tbaa !14
  %46 = bitcast %struct.ObjHeader** %25 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %46, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}"(%struct.ObjHeader* nonnull %43, i32 1, i32 10000) #37
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %46, align 8, !tbaa !3
  %47 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %48 = bitcast %struct.ObjHeader* %47 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %42, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %48, align 8, !tbaa !3
  %49 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %50 = load i64, i64* %31, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %51 = bitcast [6 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %51)
  %.sub.i = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %51, i8 0, i32 48, i1 immarg false) #49
  %52 = bitcast [6 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %53 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %54 = bitcast %struct.ObjHeader** %53 to i64*
  store i64 %50, i64* %54, align 8, !tbaa !9
  %55 = bitcast %"class.kotlin::mm::ShadowStack"* %49 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %55, align 8, !tbaa !7
  %56 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %57 = bitcast %struct.ObjHeader** %56 to i32*
  store i32 0, i32* %57, align 8, !tbaa !12
  %58 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %52, i64 0, i32 3
  store i32 6, i32* %58, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #49
  %59 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %60 = bitcast %"class.kotlin::mm::ShadowStack"* %59 to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !7
  store i64 %61, i64* %31, align 8, !tbaa !9
  %62 = bitcast %"class.kotlin::mm::ShadowStack"* %59 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %62, align 8, !tbaa !7
  store i32 0, i32* %34, align 8, !tbaa !12
  store i32 4, i32* %35, align 4, !tbaa !13
  %63 = bitcast %struct.ObjHeader* %47 to %struct.ObjHeader**
  %64 = load %struct.ObjHeader*, %struct.ObjHeader** %63, align 8
  store %struct.ObjHeader* %64, %struct.ObjHeader** %25, align 8, !tbaa !3
  %65 = icmp eq %struct.ObjHeader* %64, null
  br i1 %65, label %when_case.i2.i, label %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"

when_case.i2.i:                                   ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @ThrowNullPointerException() #50
  unreachable

"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i": ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %66 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 5
  %67 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 4
  %68 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 3
  store %struct.ObjHeader* %64, %struct.ObjHeader** %68, align 8, !tbaa !3
  %69 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %70 = load i64, i64* %31, align 8, !tbaa !9
  %71 = bitcast %"class.kotlin::mm::ShadowStack"* %69 to i64*
  store i64 %70, i64* %71, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %72 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %73 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %72 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %74 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %73, align 8, !tbaa !3
  %75 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %74, i64 0, i32 2, i32 1
  %76 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %75, i64 24) #37
  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 1
  %78 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 2
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78 to %struct.TypeInfo**
  %80 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i64*
  store i64 0, i64* %80, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.object-2#internal", i64 0, i32 0), %struct.TypeInfo** %79, align 8, !tbaa !14
  %81 = bitcast %struct.ObjHeader** %67 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76, i64 3
  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to %struct.ObjHeader**
  store %struct.ObjHeader* %64, %struct.ObjHeader** %83, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
  %84 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %85 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %84 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %86 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %85, align 8, !tbaa !3
  %87 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %86, i64 0, i32 2, i32 1
  %88 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %87, i64 40) #37
  %89 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88, i64 1
  %90 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88, i64 2
  %91 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90 to %struct.ObjHeader*
  %92 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90 to %struct.TypeInfo**
  %93 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %89 to i64*
  store i64 0, i64* %93, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.sequences.FilteringSequence#internal", i64 0, i32 0), %struct.TypeInfo** %92, align 8, !tbaa !14
  %94 = bitcast %struct.ObjHeader** %66 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %94, align 8, !tbaa !3
  %95 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %95, align 8, !tbaa !3
  %96 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88, i64 5
  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %96 to i1*
  store i1 true, i1* %97, align 8
  %98 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %88, i64 4
  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %98 to %struct.ObjHeader**
  store %struct.ObjHeader* getelementptr inbounds ({ %struct.ObjHeader }, { %struct.ObjHeader }* @172, i64 0, i32 0), %struct.ObjHeader** %99, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %94, align 8, !tbaa !3
  %100 = bitcast [5 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %100)
  %.sub.i.i = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %100, i8 0, i32 40, i1 immarg false) #49
  %101 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %102 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 4
  %103 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %104 = bitcast [5 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %105 = bitcast %"class.kotlin::mm::ShadowStack"* %103 to i64*
  %106 = load i64, i64* %105, align 8, !tbaa !7
  %107 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %108 = bitcast %struct.ObjHeader** %107 to i64*
  store i64 %106, i64* %108, align 8, !tbaa !9
  %109 = bitcast %"class.kotlin::mm::ShadowStack"* %103 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %109, align 8, !tbaa !7
  %110 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %111 = bitcast %struct.ObjHeader** %110 to i32*
  store i32 0, i32* %111, align 8, !tbaa !12
  %112 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %104, i64 0, i32 3
  store i32 5, i32* %112, align 4, !tbaa !13
  %113 = call %struct.ObjHeader* @"kfun:kotlin.sequences.FilteringSequence#iterator(){}kotlin.collections.Iterator<1:0>"(%struct.ObjHeader* nonnull %91, %struct.ObjHeader** nonnull %101)
  %114 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %113, i64 0, i32 0
  br label %loop_check.i.i

while_loop.i.i:                                   ; preds = %loop_check.i.i
  %115 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %118

118:                                              ; preds = %while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %118, %while_loop.i.i
  %119 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %114 monotonic, align 8
  %120 = ptrtoint %struct.TypeInfo* %119 to i64
  %121 = and i64 %120, -4
  %122 = inttoptr i64 %121 to %struct.TypeInfo*
  %123 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %122, i64 0, i32 0
  %124 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %123 monotonic, align 8
  %125 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %124, i64 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %124, i64 0, i32 10
  %128 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %127, align 8
  %129 = and i32 %126, 160
  %130 = zext i32 %129 to i64
  %131 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %128, i64 %130, i32 2
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr i8*, i8** %132, i64 1
  %134 = bitcast i8** %133 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %135 = load %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %134, align 8
  %136 = call %struct.ObjHeader* %135(%struct.ObjHeader* nonnull %113, %struct.ObjHeader** nonnull %102)
  %exitcond = icmp eq i32 %count.0.i.i, 2147483647
  br i1 %exitcond, label %when_case.i.i, label %when_exit.i.i

when_case.i.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #49
  %137 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %138 = bitcast %"class.kotlin::mm::ShadowStack"* %137 to i64*
  %139 = load i64, i64* %138, align 8, !tbaa !7
  store i64 %139, i64* %31, align 8, !tbaa !9
  %140 = bitcast %"class.kotlin::mm::ShadowStack"* %137 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %140, align 8, !tbaa !7
  store i32 0, i32* %34, align 8, !tbaa !12
  store i32 4, i32* %35, align 4, !tbaa !13
  %141 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %142 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %141 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %143 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %142, align 8, !tbaa !3
  %144 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %143, i64 0, i32 2, i32 1
  %145 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %144, i64 56) #37
  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 1
  %147 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 2
  %148 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to %struct.ObjHeader*
  %149 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to %struct.TypeInfo**
  %150 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to i64*
  store i64 0, i64* %150, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ArithmeticException#internal", i64 0, i32 0), %struct.TypeInfo** %149, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %46, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %148, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [28 x i16] }* @166 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %148) #50
  unreachable

when_exit.i.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %151 = add nuw i32 %count.0.i.i, 1
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %when_exit.i.i, %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"
  %count.0.i.i = phi i32 [ 0, %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i" ], [ %151, %when_exit.i.i ]
  %152 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %114 monotonic, align 8
  %153 = ptrtoint %struct.TypeInfo* %152 to i64
  %154 = and i64 %153, -4
  %155 = inttoptr i64 %154 to %struct.TypeInfo*
  %156 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %155, i64 0, i32 0
  %157 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %156 monotonic, align 8
  %158 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %157, i64 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %157, i64 0, i32 10
  %161 = load %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %160, align 8
  %162 = and i32 %159, 160
  %163 = zext i32 %162 to i64
  %164 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %161, i64 %163, i32 2
  %165 = bitcast i8*** %164 to i1 (%struct.ObjHeader*)***
  %166 = load i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %165, align 8
  %167 = load i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %166, align 8
  %168 = call zeroext i1 %167(%struct.ObjHeader* nonnull %113)
  br i1 %168, label %while_loop.i.i, label %epilogue

epilogue:                                         ; preds = %loop_check.i.i
  %169 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %170 = bitcast %"class.kotlin::mm::ShadowStack"* %169 to i64*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %100)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %51)
  %171 = load i64, i64* %15, align 8, !tbaa !9
  store i64 %171, i64* %170, align 8, !tbaa !7
  ret void
}
