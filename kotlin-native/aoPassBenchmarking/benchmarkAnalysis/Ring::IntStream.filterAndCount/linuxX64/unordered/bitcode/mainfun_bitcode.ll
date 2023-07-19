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
  %9 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %10 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %11 = bitcast [4 x %struct.ObjHeader*]* %3 to %struct.FrameOverlay.6*
  %12 = bitcast %"class.kotlin::mm::ShadowStack"* %10 to i64*
  %13 = load atomic i64, i64* %12 unordered, align 8, !tbaa !7
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
  %29 = load atomic i64, i64* %28 unordered, align 8, !tbaa !7
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
  %38 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %37 unordered, align 8, !tbaa !3
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
  %50 = load atomic i64, i64* %31 unordered, align 8, !tbaa !9
  %51 = bitcast %"class.kotlin::mm::ShadowStack"* %49 to i64*
  store i64 %50, i64* %51, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %52 = bitcast [6 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %52)
  %.sub.i = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %52, i8 0, i32 48, i1 immarg false) #49
  %53 = bitcast [6 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %54 = load atomic i64, i64* %51 unordered, align 8, !tbaa !7
  %55 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %56 = bitcast %struct.ObjHeader** %55 to i64*
  store i64 %54, i64* %56, align 8, !tbaa !9
  %57 = bitcast %"class.kotlin::mm::ShadowStack"* %49 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %57, align 8, !tbaa !7
  %58 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %59 = bitcast %struct.ObjHeader** %58 to i32*
  store i32 0, i32* %59, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %53, i64 0, i32 3
  store i32 6, i32* %60, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #49
  %61 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %62 = bitcast %"class.kotlin::mm::ShadowStack"* %61 to i64*
  %63 = load atomic i64, i64* %62 unordered, align 8, !tbaa !7
  store i64 %63, i64* %31, align 8, !tbaa !9
  %64 = bitcast %"class.kotlin::mm::ShadowStack"* %61 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %64, align 8, !tbaa !7
  store i32 0, i32* %34, align 8, !tbaa !12
  store i32 4, i32* %35, align 4, !tbaa !13
  %65 = bitcast %struct.ObjHeader* %47 to %struct.ObjHeader**
  %66 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %65 unordered, align 8
  store %struct.ObjHeader* %66, %struct.ObjHeader** %25, align 8, !tbaa !3
  %67 = icmp eq %struct.ObjHeader* %66, null
  br i1 %67, label %when_case.i2.i, label %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"

when_case.i2.i:                                   ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @ThrowNullPointerException() #50
  unreachable

"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i": ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %68 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 5
  %69 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 4
  %70 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %2, i64 0, i64 3
  store %struct.ObjHeader* %66, %struct.ObjHeader** %70, align 8, !tbaa !3
  %71 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %72 = load atomic i64, i64* %31 unordered, align 8, !tbaa !9
  %73 = bitcast %"class.kotlin::mm::ShadowStack"* %71 to i64*
  store i64 %72, i64* %73, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %74 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %75 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %74 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %76 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %75 unordered, align 8, !tbaa !3
  %77 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %76, i64 0, i32 2, i32 1
  %78 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %77, i64 24) #37
  %79 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, i64 1
  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, i64 2
  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to %struct.TypeInfo**
  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %79 to i64*
  store i64 0, i64* %82, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.collections.object-2#internal", i64 0, i32 0), %struct.TypeInfo** %81, align 8, !tbaa !14
  %83 = bitcast %struct.ObjHeader** %69 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %83, align 8, !tbaa !3
  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78, i64 3
  %85 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84 to %struct.ObjHeader**
  store %struct.ObjHeader* %66, %struct.ObjHeader** %85, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %83, align 8, !tbaa !3
  %86 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %87 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %86 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %88 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %87 unordered, align 8, !tbaa !3
  %89 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %88, i64 0, i32 2, i32 1
  %90 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %89, i64 40) #37
  %91 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, i64 1
  %92 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, i64 2
  %93 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92 to %struct.ObjHeader*
  %94 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92 to %struct.TypeInfo**
  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %91 to i64*
  store i64 0, i64* %95, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.sequences.FilteringSequence#internal", i64 0, i32 0), %struct.TypeInfo** %94, align 8, !tbaa !14
  %96 = bitcast %struct.ObjHeader** %68 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %96, align 8, !tbaa !3
  %97 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %97, align 8, !tbaa !3
  %98 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, i64 5
  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %98 to i1*
  store i1 true, i1* %99, align 8
  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %90, i64 4
  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to %struct.ObjHeader**
  store %struct.ObjHeader* getelementptr inbounds ({ %struct.ObjHeader }, { %struct.ObjHeader }* @172, i64 0, i32 0), %struct.ObjHeader** %101, align 8, !tbaa !3
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %96, align 8, !tbaa !3
  %102 = bitcast [5 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %102)
  %.sub.i.i = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %102, i8 0, i32 40, i1 immarg false) #49
  %103 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %104 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 4
  %105 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %106 = bitcast [5 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %107 = bitcast %"class.kotlin::mm::ShadowStack"* %105 to i64*
  %108 = load atomic i64, i64* %107 unordered, align 8, !tbaa !7
  %109 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %110 = bitcast %struct.ObjHeader** %109 to i64*
  store i64 %108, i64* %110, align 8, !tbaa !9
  %111 = bitcast %"class.kotlin::mm::ShadowStack"* %105 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %111, align 8, !tbaa !7
  %112 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %113 = bitcast %struct.ObjHeader** %112 to i32*
  store i32 0, i32* %113, align 8, !tbaa !12
  %114 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %106, i64 0, i32 3
  store i32 5, i32* %114, align 4, !tbaa !13
  %115 = call %struct.ObjHeader* @"kfun:kotlin.sequences.FilteringSequence#iterator(){}kotlin.collections.Iterator<1:0>"(%struct.ObjHeader* nonnull %93, %struct.ObjHeader** nonnull %103)
  %116 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %115, i64 0, i32 0
  br label %loop_check.i.i

while_loop.i.i:                                   ; preds = %loop_check.i.i
  %117 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %120

120:                                              ; preds = %while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %120, %while_loop.i.i
  %121 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %116 monotonic, align 8
  %122 = ptrtoint %struct.TypeInfo* %121 to i64
  %123 = and i64 %122, -4
  %124 = inttoptr i64 %123 to %struct.TypeInfo*
  %125 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %124, i64 0, i32 0
  %126 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %125 monotonic, align 8
  %127 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %126, i64 0, i32 9
  %128 = load atomic i32, i32* %127 unordered, align 4
  %129 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %126, i64 0, i32 10
  %130 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %129 unordered, align 8
  %131 = and i32 %128, 160
  %132 = zext i32 %131 to i64
  %133 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %130, i64 %132, i32 2
  %134 = load atomic i8**, i8*** %133 unordered, align 8
  %135 = getelementptr i8*, i8** %134, i64 1
  %136 = bitcast i8** %135 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %137 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %136 unordered, align 8
  %138 = call %struct.ObjHeader* %137(%struct.ObjHeader* nonnull %115, %struct.ObjHeader** nonnull %104)
  %exitcond = icmp eq i32 %count.0.i.i, 2147483647
  br i1 %exitcond, label %when_case.i.i, label %when_exit.i.i

when_case.i.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #49
  %139 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %140 = bitcast %"class.kotlin::mm::ShadowStack"* %139 to i64*
  %141 = load atomic i64, i64* %140 unordered, align 8, !tbaa !7
  store i64 %141, i64* %31, align 8, !tbaa !9
  %142 = bitcast %"class.kotlin::mm::ShadowStack"* %139 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %142, align 8, !tbaa !7
  store i32 0, i32* %34, align 8, !tbaa !12
  store i32 4, i32* %35, align 4, !tbaa !13
  %143 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %144 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %143 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %145 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %144 unordered, align 8, !tbaa !3
  %146 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %145, i64 0, i32 2, i32 1
  %147 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %146, i64 56) #37
  %148 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 1
  %149 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, i64 2
  %150 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149 to %struct.ObjHeader*
  %151 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149 to %struct.TypeInfo**
  %152 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %148 to i64*
  store i64 0, i64* %152, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ArithmeticException#internal", i64 0, i32 0), %struct.TypeInfo** %151, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %46, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %150, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [28 x i16] }* @166 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %150) #50
  unreachable

when_exit.i.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %153 = add nuw i32 %count.0.i.i, 1
  br label %loop_check.i.i

loop_check.i.i:                                   ; preds = %when_exit.i.i, %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i"
  %count.0.i.i = phi i32 [ 0, %"kfun:IntStreamBenchmark#<get-data>(){}kotlin.collections.Iterable<kotlin.Int>.exit.i" ], [ %153, %when_exit.i.i ]
  %154 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %116 monotonic, align 8
  %155 = ptrtoint %struct.TypeInfo* %154 to i64
  %156 = and i64 %155, -4
  %157 = inttoptr i64 %156 to %struct.TypeInfo*
  %158 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %157, i64 0, i32 0
  %159 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %158 monotonic, align 8
  %160 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %159, i64 0, i32 9
  %161 = load atomic i32, i32* %160 unordered, align 4
  %162 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %159, i64 0, i32 10
  %163 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %162 unordered, align 8
  %164 = and i32 %161, 160
  %165 = zext i32 %164 to i64
  %166 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %163, i64 %165, i32 2
  %167 = bitcast i8*** %166 to i1 (%struct.ObjHeader*)***
  %168 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %167 unordered, align 8
  %169 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %168 unordered, align 8
  %170 = call zeroext i1 %169(%struct.ObjHeader* nonnull %115)
  br i1 %170, label %while_loop.i.i, label %epilogue

epilogue:                                         ; preds = %loop_check.i.i
  %171 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %172 = bitcast %"class.kotlin::mm::ShadowStack"* %171 to i64*
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %102)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %52)
  %173 = load atomic i64, i64* %15 unordered, align 8, !tbaa !9
  store i64 %173, i64* %172, align 8, !tbaa !7
  ret void
}
