define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [7 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %2 = alloca %"struct.(anonymous namespace)::Job", align 8
  %3 = alloca %class.ObjHolder, align 8
  %4 = alloca [18 x %struct.ObjHeader*], align 8
  %5 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 0
  %6 = bitcast [4 x %struct.ObjHeader*]* %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %6, i8 0, i32 32, i1 immarg false) #49
  %7 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 3
  %8 = alloca %"kclassbody:MultithreadedLoopsBenchmark#internal", align 8
  %9 = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %8, i64 0, i32 1
  %10 = bitcast %struct.ObjHeader** %9 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(24) %10, i8 0, i32 16, i1 immarg false) #49
  %objHeader = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %8, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %8, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %11 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
  %12 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %13 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %14 = bitcast %"class.kotlin::mm::ShadowStack"* %12 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %16 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 1
  %17 = bitcast %struct.ObjHeader** %16 to i64*
  store i64 %15, i64* %17, align 8, !tbaa !9
  %18 = bitcast %"class.kotlin::mm::ShadowStack"* %12 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %18, align 8, !tbaa !7
  %19 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 2
  %20 = bitcast %struct.ObjHeader** %19 to i32*
  store i32 0, i32* %20, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %13, i64 0, i32 3
  store i32 4, i32* %21, align 4, !tbaa !13
  %22 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %Kotlin_mm_safePointFunctionPrologue.exit, label %25

25:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %25, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %7, align 8, !tbaa !3
  %26 = bitcast [7 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %26)
  %.sub.i2 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(56) %26, i8 0, i32 56, i1 immarg false) #49
  %27 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %28 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %29 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %30 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %31 = bitcast [7 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %32 = bitcast %"class.kotlin::mm::ShadowStack"* %30 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !7
  %34 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %35 = bitcast %struct.ObjHeader** %34 to i64*
  store i64 %33, i64* %35, align 8, !tbaa !9
  %36 = bitcast %"class.kotlin::mm::ShadowStack"* %30 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %36, align 8, !tbaa !7
  %37 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %38 = bitcast %struct.ObjHeader** %37 to i32*
  store i32 0, i32* %38, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %31, i64 0, i32 3
  store i32 7, i32* %39, align 4, !tbaa !13
  %40 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %41 = bitcast %struct.ObjHeader* %40 to i32*
  store i32 5, i32* %41, align 8
  %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %43 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %42 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %44 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %43, align 8, !tbaa !3
  %45 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %44, i64 0, i32 2, i32 1
  %46 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %45, i64 64) #37
  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 1
  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 2
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.TypeInfo**
  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %49, align 8, !tbaa !16
  %51 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 3
  %52 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51 to i32*
  store i32 5, i32* %52, align 8, !tbaa !18
  %53 = bitcast %struct.ObjHeader** %27 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %53, align 8, !tbaa !3
  %54 = bitcast %struct.ObjHeader** %28 to i64*
  %55 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  %.sub.i.i7 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %56 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %57 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %58 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %59 = bitcast %struct.ObjHeader** %58 to i64*
  %60 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %61 = bitcast %struct.ObjHeader** %60 to i32*
  %62 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %57, i64 0, i32 3
  %63 = bitcast %struct.ObjHeader** %56 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %64 = bitcast %struct.ObjHeader** %29 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i64*
  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 4
  br label %loop_check.i10

while_loop.i4:                                    ; preds = %loop_check.i10
  %67 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %70

70:                                               ; preds = %while_loop.i4
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5

Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %70, %while_loop.i4
  %71 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
  store i64 %71, i64* %54, align 8, !tbaa !3
  %72 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  %73 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %72, i32 0)
  %74 = icmp eq %class.Worker* %73, null
  br i1 %74, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %75

75:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
  %76 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %77 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %76, i64 328
  %78 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %77 to i32*
  %79 = atomicrmw xchg i32* %78, i32 1 seq_cst, align 4
  %80 = getelementptr inbounds %class.Worker, %class.Worker* %73, i64 0, i32 9
  %81 = bitcast %class.Worker* %73 to i8*
  %82 = call i32 @pthread_create(i64* nonnull %80, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %81) #37
  %83 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %76, null
  br i1 %83, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6, label %84

84:                                               ; preds = %75
  %85 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %77 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %86 = atomicrmw xchg i32* %78, i32 %79 seq_cst, align 4
  %87 = icmp eq i32 %86, 1
  %88 = icmp eq i32 %79, 0
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6

90:                                               ; preds = %84
  %91 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6, label %94

94:                                               ; preds = %90
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %85) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6: ; preds = %94, %90, %84, %75
  %95 = getelementptr inbounds %class.Worker, %class.Worker* %73, i64 0, i32 0
  %96 = load i32, i32* %95, align 8, !tbaa !92
  br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"

"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6, %Kotlin_mm_safePointWhileLoopBody.exit.i5
  %97 = phi i32 [ %96, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i6 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit.i5 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %55, i8 0, i32 32, i1 immarg false) #49
  %98 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %99 = bitcast %"class.kotlin::mm::ShadowStack"* %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %100, i64* %59, align 8, !tbaa !9
  %101 = bitcast %"class.kotlin::mm::ShadowStack"* %98 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i7, %struct.ObjHeader*** %101, align 8, !tbaa !7
  store i32 0, i32* %61, align 8, !tbaa !12
  store i32 4, i32* %62, align 4, !tbaa !13
  %102 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %103 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %102 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %104 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %103, align 8, !tbaa !3
  %105 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %104, i64 0, i32 2, i32 1
  %106 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %105, i64 24) #37
  %107 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 1
  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 2
  %109 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to %struct.TypeInfo**
  %110 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107 to i64*
  store i64 0, i64* %110, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %109, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
  %111 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %106, i64 3
  %112 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %111 to i32*
  store i32 %97, i32* %112, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %64, align 8, !tbaa !3
  %113 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %114 = load i64, i64* %59, align 8, !tbaa !9
  %115 = bitcast %"class.kotlin::mm::ShadowStack"* %113 to i64*
  store i64 %114, i64* %115, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55)
  %116 = load i32, i32* %52, align 8, !tbaa !18
  %117 = zext i32 %116 to i64
  %118 = icmp ult i64 %indvars.iv51, %117
  br i1 %118, label %Kotlin_Array_set.exit.i8, label %119

119:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i8:                         ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  %120 = load atomic volatile i64, i64* %65 monotonic, align 8
  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, i64 %indvars.iv51
  %122 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %121, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %122, align 8, !tbaa !3
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %loop_check.i10

loop_check.i10:                                   ; preds = %Kotlin_Array_set.exit.i8, %Kotlin_mm_safePointFunctionPrologue.exit
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %Kotlin_Array_set.exit.i8 ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %exitcond53.not = icmp eq i64 %indvars.iv51, 5
  br i1 %exitcond53.not, label %call_success, label %while_loop.i4

call_success:                                     ; preds = %loop_check.i10
  %123 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %124 = bitcast %struct.ObjHeader* %123 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
  %125 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %126 = load i64, i64* %35, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %26)
  %127 = bitcast [18 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %127)
  %.sub.i = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(144) %127, i8 0, i32 144, i1 immarg false) #49
  %128 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %129 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %130 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %131 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 10
  %132 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 11
  %133 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 12
  %134 = bitcast [18 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %135 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %136 = bitcast %struct.ObjHeader** %135 to i64*
  store i64 %126, i64* %136, align 8, !tbaa !9
  %137 = bitcast %"class.kotlin::mm::ShadowStack"* %125 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %137, align 8, !tbaa !7
  %138 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %139 = bitcast %struct.ObjHeader** %138 to i32*
  store i32 0, i32* %139, align 8, !tbaa !12
  %140 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %134, i64 0, i32 3
  store i32 18, i32* %140, align 4, !tbaa !13
  %141 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %142 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %141 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %143 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %142, align 8, !tbaa !3
  %144 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %143, i64 0, i32 2, i32 1
  %145 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %144, i64 24) #37
  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 1
  %147 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 2
  %148 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147 to %struct.TypeInfo**
  %149 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to i64*
  store i64 0, i64* %149, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.Counter#internal", i64 0, i32 0), %struct.TypeInfo** %148, align 8, !tbaa !14
  %150 = bitcast %struct.ObjHeader** %128 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %150, align 8, !tbaa !3
  %151 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145, i64 3
  %152 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %151 to i64*
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %41, align 8
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %call_success
  %155 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %156 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %157 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %156 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %158 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %157, align 8, !tbaa !3
  %159 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %158, i64 0, i32 2, i32 1
  %160 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %159, i64 56) #37
  %161 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 1
  %162 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %160, i64 2
  %163 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to %struct.ObjHeader*
  %164 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162 to %struct.TypeInfo**
  %165 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %161 to i64*
  store i64 0, i64* %165, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %164, align 8, !tbaa !14
  %166 = bitcast %struct.ObjHeader** %155 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %162, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %166, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %163, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @116 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %163) #50
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %call_success
  %167 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 9
  %168 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 8
  %169 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %170 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %171 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %170 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %172 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %171, align 8, !tbaa !3
  %173 = zext i32 %153 to i64
  %174 = shl nuw nsw i64 %173, 3
  %175 = add nuw nsw i64 %174, 31
  %176 = and i64 %175, 68719476728
  %177 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %172, i64 0, i32 2, i32 1
  %178 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %177, i64 %176) #37
  %179 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 1
  %180 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 2
  %181 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180 to %struct.TypeInfo**
  %182 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %179 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %182, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %181, align 8, !tbaa !16
  %183 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 3
  %184 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %183 to i32*
  store i32 %153, i32* %184, align 8, !tbaa !18
  %185 = bitcast %struct.ObjHeader** %169 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %185, align 8, !tbaa !3
  %186 = bitcast %struct.ObjHeader* %123 to %struct.ObjHeader**
  %187 = bitcast %struct.ObjHeader** %168 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %188 = bitcast %class.ObjHolder* %3 to i8*
  %189 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
  %190 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
  %191 = bitcast %struct.FrameOverlay.6** %190 to i64*
  %192 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
  %193 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
  %194 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
  %195 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
  %196 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
  %197 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
  %198 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
  %199 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
  %200 = bitcast %struct.ObjHeader** %167 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %201 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180 to i64*
  %202 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %178, i64 4
  %wide.trip.count49 = zext i32 %153 to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %203 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %206

206:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %206, %while_loop.i
  %207 = load %struct.ObjHeader*, %struct.ObjHeader** %186, align 8
  %208 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %207, i64 1
  %209 = bitcast %struct.ObjHeader* %208 to i32*
  %210 = load i32, i32* %209, align 8, !tbaa !18
  %211 = zext i32 %210 to i64
  %212 = icmp ult i64 %indvars.iv47, %211
  br i1 %212, label %Kotlin_Array_get.exit.i, label %213

213:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %214 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %207, i64 2
  %215 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %214, i64 %indvars.iv47
  %216 = bitcast %struct.ObjHeader* %215 to %struct.ObjHeader**
  %217 = load %struct.ObjHeader*, %struct.ObjHeader** %216, align 8, !tbaa !3
  store %struct.ObjHeader* %217, %struct.ObjHeader** %129, align 8, !tbaa !3
  %218 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %217, i64 1
  %219 = bitcast %struct.ObjHeader* %218 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"

"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
  %223 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
  %224 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %223, i64 2
  %225 = bitcast %struct.ObjHeader* %224 to %struct.ObjHeader**
  %226 = load %struct.ObjHeader*, %struct.ObjHeader** %225, align 8, !tbaa !3
  store %struct.ObjHeader* %226, %struct.ObjHeader** %130, align 8, !tbaa !3
  %227 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %228 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %227 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %229 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %228, align 8, !tbaa !3
  %230 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %229, i64 0, i32 2, i32 1
  %231 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %230, i64 24) #37
  %232 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %231, i64 1
  %233 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %231, i64 2
  %234 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to %struct.ObjHeader*
  %235 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to %struct.TypeInfo**
  %236 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %232 to i64*
  store i64 0, i64* %236, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runUpdateSharedStructCounterWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %235, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %187, align 8, !tbaa !3
  %237 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %231, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %147, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %237, align 8, !tbaa !3
  %238 = bitcast %struct.ObjHeader* %226 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
  %239 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %238, i64 0, i32 3
  %240 = load i32, i32* %239, align 4
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %188) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %189, align 8, !tbaa !61
  %241 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %242 = bitcast %"class.kotlin::mm::ShadowStack"* %241 to i64*
  %243 = load i64, i64* %242, align 8, !tbaa !7
  store i64 %243, i64* %191, align 8, !tbaa !9
  %244 = bitcast %"class.kotlin::mm::ShadowStack"* %241 to %class.ObjHolder**
  store %class.ObjHolder* %3, %class.ObjHolder** %244, align 8, !tbaa !7
  store i32 0, i32* %192, align 8, !tbaa !12
  store i32 4, i32* %193, align 4, !tbaa !13
  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %234, %struct.ObjHeader** nonnull %189)
          to label %245 unwind label %529

245:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %246 = load %struct.ObjHeader*, %struct.ObjHeader** %189, align 8, !tbaa !61
  %247 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %246) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %189, align 8, !tbaa !3
  %248 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %194)
  %249 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 0
  %250 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %251 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %250, i64 328
  %252 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %251 to i32*
  %253 = atomicrmw xchg i32* %252, i32 1 seq_cst, align 4
  %254 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %249) #37
  %255 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %250, null
  br i1 %255, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %256

256:                                              ; preds = %245
  %257 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %251 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %258 = atomicrmw xchg i32* %252, i32 %253 seq_cst, align 4
  %259 = icmp eq i32 %258, 1
  %260 = icmp eq i32 %253, 0
  %261 = and i1 %260, %259
  br i1 %261, label %262, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

262:                                              ; preds = %256
  %263 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %266

266:                                              ; preds = %262
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %257) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %266, %262, %256, %245
  %267 = sext i32 %220 to i64
  %268 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 3, i32 0, i32 1
  %269 = load i64, i64* %268, align 8, !tbaa !67
  %270 = urem i64 %267, %269
  %271 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 3, i32 0, i32 0
  %272 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %271, align 8, !tbaa !72
  %273 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %272, i64 %270
  %274 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %273, align 8, !tbaa !3
  %275 = icmp eq %"struct.std::__detail::_Hash_node_base"* %274, null
  br i1 %275, label %.loopexit15, label %276

276:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %277 = bitcast %"struct.std::__detail::_Hash_node_base"* %274 to %"struct.std::__detail::_Hash_node.203"**
  %278 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %277, align 8, !tbaa !73
  %279 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %278, i64 0, i32 0, i32 1
  %280 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %279 to i32*
  %281 = load i32, i32* %280, align 4, !tbaa !74
  %282 = icmp eq i32 %281, %220
  br i1 %282, label %299, label %.preheader14

283:                                              ; preds = %290
  %284 = icmp eq i32 %293, %220
  br i1 %284, label %297, label %.preheader14

.preheader14:                                     ; preds = %283, %276
  %285 = phi %"struct.std::__detail::_Hash_node.203"* [ %289, %283 ], [ %278, %276 ]
  %286 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %285, i64 0, i32 0, i32 0, i32 0
  %287 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %286, align 8, !tbaa !73
  %288 = icmp eq %"struct.std::__detail::_Hash_node_base"* %287, null
  %289 = bitcast %"struct.std::__detail::_Hash_node_base"* %287 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %288, label %.loopexit15, label %290

290:                                              ; preds = %.preheader14
  %291 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %287, i64 1
  %292 = bitcast %"struct.std::__detail::_Hash_node_base"* %291 to i32*
  %293 = load i32, i32* %292, align 4, !tbaa !74
  %294 = sext i32 %293 to i64
  %295 = urem i64 %294, %269
  %296 = icmp eq i64 %295, %270
  br i1 %296, label %283, label %.loopexit15

297:                                              ; preds = %283
  %298 = icmp eq %"struct.std::__detail::_Hash_node.203"* %285, null
  br i1 %298, label %.loopexit15, label %301

299:                                              ; preds = %276
  %300 = icmp eq %"struct.std::__detail::_Hash_node.203"* %278, null
  br i1 %300, label %.loopexit15, label %301

301:                                              ; preds = %299, %297
  %302 = phi %"struct.std::__detail::_Hash_node.203"* [ %289, %297 ], [ %278, %299 ]
  %303 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %302, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %304 = bitcast i8* %303 to %class.Worker**
  %305 = load %class.Worker*, %class.Worker** %304, align 8, !tbaa !75
  %306 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
  %307 = icmp eq i8* %306, null
  br i1 %307, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %308

308:                                              ; preds = %301
  %309 = bitcast i8* %306 to %"class.(anonymous namespace)::Future"*
  %310 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 6
  %311 = load i32, i32* %310, align 4, !tbaa !93
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4, !tbaa !93
  %313 = bitcast i8* %306 to i32*
  store i32 1, i32* %313, align 8, !tbaa !100
  %314 = getelementptr inbounds i8, i8* %306, i64 4
  %315 = bitcast i8* %314 to i32*
  store i32 %311, i32* %315, align 4, !tbaa !102
  %316 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %317 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %316, i64 328
  %318 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %317 to i32*
  %319 = atomicrmw xchg i32* %318, i32 1 seq_cst, align 4
  %320 = getelementptr inbounds i8, i8* %306, i64 16
  %321 = bitcast i8* %320 to %union.pthread_mutex_t*
  %322 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %321, %"struct.std::atomic"* null) #37
  %323 = getelementptr inbounds i8, i8* %306, i64 56
  %324 = bitcast i8* %323 to %union.pthread_cond_t*
  %325 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %324, %"struct.std::atomic"* null) #37
  %326 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %316, null
  br i1 %326, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %327

327:                                              ; preds = %308
  %328 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %317 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %329 = atomicrmw xchg i32* %318, i32 %319 seq_cst, align 4
  %330 = icmp eq i32 %329, 1
  %331 = icmp eq i32 %319, 0
  %332 = and i1 %331, %330
  br i1 %332, label %333, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

333:                                              ; preds = %327
  %334 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %337

337:                                              ; preds = %333
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %328) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %337, %333, %327, %308, %301
  %338 = phi %"class.(anonymous namespace)::Future"* [ null, %301 ], [ %309, %308 ], [ %309, %337 ], [ %309, %333 ], [ %309, %327 ]
  %339 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %338, i64 0, i32 1
  %340 = load i32, i32* %339, align 4, !tbaa !102
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 1
  %343 = load i64, i64* %342, align 8, !tbaa !103
  %344 = urem i64 %341, %343
  %345 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 0
  %346 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
  %347 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %346, i64 %344
  %348 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %347, align 8, !tbaa !3
  %349 = icmp eq %"struct.std::__detail::_Hash_node_base"* %348, null
  br i1 %349, label %.loopexit13, label %350

350:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %351 = bitcast %"struct.std::__detail::_Hash_node_base"* %348 to %"struct.std::__detail::_Hash_node.203"**
  %352 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %351, align 8, !tbaa !73
  %353 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %352, i64 0, i32 0, i32 1
  %354 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %353 to i32*
  %355 = load i32, i32* %354, align 4, !tbaa !74
  %356 = icmp eq i32 %340, %355
  br i1 %356, label %373, label %.preheader12

357:                                              ; preds = %364
  %358 = icmp eq i32 %340, %367
  br i1 %358, label %371, label %.preheader12

.preheader12:                                     ; preds = %357, %350
  %359 = phi %"struct.std::__detail::_Hash_node.203"* [ %363, %357 ], [ %352, %350 ]
  %360 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %359, i64 0, i32 0, i32 0, i32 0
  %361 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %360, align 8, !tbaa !73
  %362 = icmp eq %"struct.std::__detail::_Hash_node_base"* %361, null
  %363 = bitcast %"struct.std::__detail::_Hash_node_base"* %361 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %362, label %.loopexit13, label %364

364:                                              ; preds = %.preheader12
  %365 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %361, i64 1
  %366 = bitcast %"struct.std::__detail::_Hash_node_base"* %365 to i32*
  %367 = load i32, i32* %366, align 4, !tbaa !74
  %368 = sext i32 %367 to i64
  %369 = urem i64 %368, %343
  %370 = icmp eq i64 %369, %344
  br i1 %370, label %357, label %.loopexit13

371:                                              ; preds = %357
  %372 = icmp eq %"struct.std::__detail::_Hash_node.203"* %359, null
  br i1 %372, label %.loopexit13, label %482

373:                                              ; preds = %350
  %374 = icmp eq %"struct.std::__detail::_Hash_node.203"* %352, null
  br i1 %374, label %.loopexit13, label %482

.loopexit13:                                      ; preds = %373, %371, %364, %.preheader12, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %375 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
  %376 = getelementptr inbounds i8, i8* %375, i64 8
  %377 = bitcast i8* %376 to i32*
  store i32 %340, i32* %377, align 8, !tbaa !105
  %378 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 4
  %379 = load i64, i64* %342, align 8, !tbaa !103
  %380 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 3
  %381 = load i64, i64* %380, align 8, !tbaa !107
  %382 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %378, i64 %379, i64 %381, i64 1)
          to label %383 unwind label %489

383:                                              ; preds = %.loopexit13
  %384 = extractvalue { i8, i64 } %382, 0
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
  br label %446

389:                                              ; preds = %383
  %390 = extractvalue { i8, i64 } %382, 1
  %391 = icmp eq i64 %390, 1
  br i1 %391, label %392, label %394, !prof !108, !misexpect !109

392:                                              ; preds = %389
  %393 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %393, align 8, !tbaa !110
  br label %398

394:                                              ; preds = %389
  %395 = call noalias i8* @calloc(i64 %390, i64 8) #37
  %396 = bitcast i8* %395 to %"struct.std::__detail::_Hash_node_base"**
  %397 = shl i64 %390, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %395, i8 0, i64 %397, i1 false) #37
  br label %398

398:                                              ; preds = %394, %392
  %399 = phi %"struct.std::__detail::_Hash_node_base"** [ %393, %392 ], [ %396, %394 ]
  %400 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 2
  %401 = bitcast %"struct.std::__detail::_Hash_node_base"* %400 to %"struct.std::__detail::_Hash_node.203"**
  %402 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %401, align 8, !tbaa !111
  %403 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %400, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %403, align 8, !tbaa !111
  %404 = icmp eq %"struct.std::__detail::_Hash_node.203"* %402, null
  br i1 %404, label %.loopexit, label %405

405:                                              ; preds = %398
  %406 = bitcast %"struct.std::__detail::_Hash_node_base"* %400 to i64*
  br label %407

407:                                              ; preds = %436, %405
  %408 = phi %"struct.std::__detail::_Hash_node.203"* [ %402, %405 ], [ %411, %436 ]
  %409 = phi i64 [ 0, %405 ], [ %437, %436 ]
  %410 = bitcast %"struct.std::__detail::_Hash_node.203"* %408 to %"struct.std::__detail::_Hash_node.203"**
  %411 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %410, align 8, !tbaa !73
  %412 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 1
  %413 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %412 to i32*
  %414 = load i32, i32* %413, align 4, !tbaa !74
  %415 = sext i32 %414 to i64
  %416 = urem i64 %415, %390
  %417 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %399, i64 %416
  %418 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
  %419 = icmp eq %"struct.std::__detail::_Hash_node_base"* %418, null
  br i1 %419, label %420, label %429

420:                                              ; preds = %407
  %421 = load i64, i64* %406, align 8, !tbaa !111
  %422 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 0
  %423 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 0, i32 0
  %424 = bitcast %"struct.std::__detail::_Hash_node.203"* %408 to i64*
  store i64 %421, i64* %424, align 8, !tbaa !73
  store %"struct.std::__detail::_Hash_node_base"* %422, %"struct.std::__detail::_Hash_node_base"** %403, align 8, !tbaa !111
  store %"struct.std::__detail::_Hash_node_base"* %400, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
  %425 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %423, align 8, !tbaa !73
  %426 = icmp eq %"struct.std::__detail::_Hash_node_base"* %425, null
  br i1 %426, label %436, label %427

427:                                              ; preds = %420
  %428 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %399, i64 %409
  store %"struct.std::__detail::_Hash_node_base"* %422, %"struct.std::__detail::_Hash_node_base"** %428, align 8, !tbaa !3
  br label %436

429:                                              ; preds = %407
  %430 = bitcast %"struct.std::__detail::_Hash_node_base"* %418 to i64*
  %431 = load i64, i64* %430, align 8, !tbaa !73
  %432 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %408, i64 0, i32 0, i32 0
  %433 = bitcast %"struct.std::__detail::_Hash_node.203"* %408 to i64*
  store i64 %431, i64* %433, align 8, !tbaa !73
  %434 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %417, align 8, !tbaa !3
  %435 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %434, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %432, %"struct.std::__detail::_Hash_node_base"** %435, align 8, !tbaa !73
  br label %436

436:                                              ; preds = %429, %427, %420
  %437 = phi i64 [ %409, %429 ], [ %416, %420 ], [ %416, %427 ]
  %438 = icmp eq %"struct.std::__detail::_Hash_node.203"* %411, null
  br i1 %438, label %.loopexit, label %407

.loopexit:                                        ; preds = %436, %398
  %439 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
  %440 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 5
  %441 = icmp eq %"struct.std::__detail::_Hash_node_base"** %439, %440
  br i1 %441, label %444, label %442

442:                                              ; preds = %.loopexit
  %443 = bitcast %"struct.std::__detail::_Hash_node_base"** %439 to i8*
  call void @free(i8* %443) #37
  br label %444

444:                                              ; preds = %442, %.loopexit
  store i64 %390, i64* %342, align 8, !tbaa !103
  store %"struct.std::__detail::_Hash_node_base"** %399, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
  %445 = urem i64 %341, %390
  br label %446

446:                                              ; preds = %444, %387
  %447 = phi %"struct.std::__detail::_Hash_node_base"** [ %388, %387 ], [ %399, %444 ]
  %448 = phi i64 [ %344, %387 ], [ %445, %444 ]
  %449 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %448
  %450 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %449, align 8, !tbaa !3
  %451 = icmp eq %"struct.std::__detail::_Hash_node_base"* %450, null
  br i1 %451, label %458, label %452

452:                                              ; preds = %446
  %453 = bitcast %"struct.std::__detail::_Hash_node_base"* %450 to i64*
  %454 = load i64, i64* %453, align 8, !tbaa !73
  %455 = bitcast i8* %375 to i64*
  store i64 %454, i64* %455, align 8, !tbaa !73
  %456 = bitcast %"struct.std::__detail::_Hash_node_base"** %449 to i8***
  %457 = load i8**, i8*** %456, align 8, !tbaa !3
  store i8* %375, i8** %457, align 8, !tbaa !73
  br label %478

458:                                              ; preds = %446
  %459 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %248, i64 0, i32 2, i32 0, i32 2
  %460 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to i64*
  %461 = load i64, i64* %460, align 8, !tbaa !111
  %462 = bitcast i8* %375 to i64*
  store i64 %461, i64* %462, align 8, !tbaa !73
  %463 = bitcast %"struct.std::__detail::_Hash_node_base"* %459 to i8**
  store i8* %375, i8** %463, align 8, !tbaa !111
  %464 = icmp eq i64 %461, 0
  br i1 %464, label %475, label %465

465:                                              ; preds = %458
  %.cast.i.i.i.i = inttoptr i64 %461 to %"struct.std::__detail::_Hash_node_base"*
  %466 = load i64, i64* %342, align 8, !tbaa !103
  %467 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
  %468 = bitcast %"struct.std::__detail::_Hash_node_base"* %467 to i32*
  %469 = load i32, i32* %468, align 4, !tbaa !74
  %470 = sext i32 %469 to i64
  %471 = urem i64 %470, %466
  %472 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %471
  %473 = bitcast %"struct.std::__detail::_Hash_node_base"** %472 to i8**
  store i8* %375, i8** %473, align 8, !tbaa !3
  %474 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %345, align 8, !tbaa !104
  br label %475

475:                                              ; preds = %465, %458
  %476 = phi %"struct.std::__detail::_Hash_node_base"** [ %447, %458 ], [ %474, %465 ]
  %477 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %476, i64 %448
  store %"struct.std::__detail::_Hash_node_base"* %459, %"struct.std::__detail::_Hash_node_base"** %477, align 8, !tbaa !3
  br label %478

478:                                              ; preds = %475, %452
  %479 = load i64, i64* %380, align 8, !tbaa !107
  %480 = add i64 %479, 1
  store i64 %480, i64* %380, align 8, !tbaa !107
  %481 = bitcast i8* %376 to %"struct.std::pair.50"*
  br label %486

482:                                              ; preds = %373, %371
  %483 = phi %"struct.std::__detail::_Hash_node.203"* [ %352, %373 ], [ %363, %371 ]
  %484 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %483, i64 0, i32 0, i32 1
  %485 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %484 to %"struct.std::pair.50"*
  br label %486

486:                                              ; preds = %482, %478
  %487 = phi %"struct.std::pair.50"* [ %485, %482 ], [ %481, %478 ]
  %488 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %487, i64 0, i32 1
  store %"class.(anonymous namespace)::Future"* %338, %"class.(anonymous namespace)::Future"** %488, align 8, !tbaa !3
  store i32 2, i32* %195, align 8, !tbaa.struct !112
  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-UNNN>runUpdateSharedStructCounterWorkers$lambda$1#static(MultithreadedLoopsBenchmark.Counter){}#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %196, align 8, !tbaa.struct !112
  store i8* %247, i8** %197, align 8, !tbaa.struct !112
  store %"class.(anonymous namespace)::Future"* %338, %"class.(anonymous namespace)::Future"** %198, align 8, !tbaa.struct !112
  store i32 %240, i32* %199, align 8, !tbaa.struct !112
  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %305, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
  br label %.loopexit15

489:                                              ; preds = %.loopexit13
  %490 = landingpad { i8*, i32 }
          cleanup
  %491 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %492 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %491, i64 328
  %493 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %492 to i32*
  %494 = atomicrmw xchg i32* %493, i32 1 seq_cst, align 4
  %495 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %249) #37
  %496 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %491, null
  br i1 %496, label %.body.i.i.i, label %515

.loopexit15:                                      ; preds = %486, %299, %297, %290, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %497 = phi %"class.(anonymous namespace)::Future"* [ %338, %486 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %297 ], [ null, %299 ], [ null, %.preheader14 ], [ null, %290 ]
  %498 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %499 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %498, i64 328
  %500 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %499 to i32*
  %501 = atomicrmw xchg i32* %500, i32 1 seq_cst, align 4
  %502 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %249) #37
  %503 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %498, null
  br i1 %503, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %504

504:                                              ; preds = %.loopexit15
  %505 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %499 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %506 = atomicrmw xchg i32* %500, i32 %501 seq_cst, align 4
  %507 = icmp eq i32 %506, 1
  %508 = icmp eq i32 %501, 0
  %509 = and i1 %508, %507
  br i1 %509, label %510, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

510:                                              ; preds = %504
  %511 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %512 = and i8 %511, 1
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %514

514:                                              ; preds = %510
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %505) #37
  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

515:                                              ; preds = %489
  %516 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %492 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %517 = atomicrmw xchg i32* %493, i32 %494 seq_cst, align 4
  %518 = icmp eq i32 %517, 1
  %519 = icmp eq i32 %494, 0
  %520 = and i1 %519, %518
  br i1 %520, label %521, label %.body.i.i.i

521:                                              ; preds = %515
  %522 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %523 = and i8 %522, 1
  %524 = icmp eq i8 %523, 0
  br i1 %524, label %.body.i.i.i, label %525

525:                                              ; preds = %521
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %516) #37
  br label %.body.i.i.i

_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %514, %510, %504, %.loopexit15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %194)
  %526 = icmp eq %"class.(anonymous namespace)::Future"* %497, null
  br i1 %526, label %527, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"

527:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
          to label %528 unwind label %531

528:                                              ; preds = %527
  unreachable

529:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %530 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

531:                                              ; preds = %527
  %532 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %531, %529, %525, %521, %515, %489
  %533 = phi { i8*, i32 } [ %530, %529 ], [ %532, %531 ], [ %490, %515 ], [ %490, %521 ], [ %490, %525 ], [ %490, %489 ]
  %534 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %535 = load i64, i64* %191, align 8, !tbaa !9
  %536 = bitcast %"class.kotlin::mm::ShadowStack"* %534 to i64*
  store i64 %535, i64* %536, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %188) #37
  resume { i8*, i32 } %533

"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  %537 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %497, i64 0, i32 1
  %538 = load i32, i32* %537, align 4, !tbaa !102
  %539 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %540 = load i64, i64* %191, align 8, !tbaa !9
  %541 = bitcast %"class.kotlin::mm::ShadowStack"* %539 to i64*
  store i64 %540, i64* %541, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %188) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %55, i8 0, i32 32, i1 immarg false) #49
  %542 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %543 = bitcast %"class.kotlin::mm::ShadowStack"* %542 to i64*
  %544 = load i64, i64* %543, align 8, !tbaa !7
  store i64 %544, i64* %59, align 8, !tbaa !9
  %545 = bitcast %"class.kotlin::mm::ShadowStack"* %542 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i7, %struct.ObjHeader*** %545, align 8, !tbaa !7
  store i32 0, i32* %61, align 8, !tbaa !12
  store i32 4, i32* %62, align 4, !tbaa !13
  %546 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %547 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %546 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %548 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %547, align 8, !tbaa !3
  %549 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %548, i64 0, i32 2, i32 1
  %550 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %549, i64 24) #37
  %551 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 1
  %552 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 2
  %553 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552 to %struct.TypeInfo**
  %554 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %551 to i64*
  store i64 0, i64* %554, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %553, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
  %555 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %550, i64 3
  %556 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %555 to i32*
  store i32 %538, i32* %556, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %200, align 8, !tbaa !3
  %557 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %558 = load i64, i64* %59, align 8, !tbaa !9
  %559 = bitcast %"class.kotlin::mm::ShadowStack"* %557 to i64*
  store i64 %558, i64* %559, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55)
  %560 = load i32, i32* %184, align 8, !tbaa !18
  %561 = zext i32 %560 to i64
  %562 = icmp ult i64 %indvars.iv47, %561
  br i1 %562, label %Kotlin_Array_set.exit.i, label %563

563:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  %564 = load atomic volatile i64, i64* %201 monotonic, align 8
  %565 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202, i64 %indvars.iv47
  %566 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %565, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %552, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %566, align 8, !tbaa !3
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
  %exitcond50.not = icmp eq i64 %indvars.iv47, %wide.trip.count49
  br i1 %exitcond50.not, label %loop_exit.i, label %while_loop.i

loop_exit.i:                                      ; preds = %loop_check.i
  %567 = load i32, i32* %184, align 8, !tbaa !18
  %568 = icmp sgt i32 %567, 0
  %smax = select i1 %568, i32 %567, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check18.i

while_loop19.i:                                   ; preds = %loop_check18.i
  %569 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %570 = and i8 %569, 1
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %572

572:                                              ; preds = %while_loop19.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit1.i

Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %572, %while_loop19.i
  %573 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %202, i64 %indvars.iv
  %574 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %573 to %struct.ObjHeader**
  %575 = load %struct.ObjHeader*, %struct.ObjHeader** %574, align 8, !tbaa !3
  store %struct.ObjHeader* %575, %struct.ObjHeader** %131, align 8, !tbaa !3
  %576 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %575, i64 1
  %577 = bitcast %struct.ObjHeader* %576 to i32*
  %578 = load i32, i32* %577, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %55, i8 0, i32 32, i1 immarg false) #49
  %579 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %580 = bitcast %"class.kotlin::mm::ShadowStack"* %579 to i64*
  %581 = load i64, i64* %580, align 8, !tbaa !7
  store i64 %581, i64* %59, align 8, !tbaa !9
  %582 = bitcast %"class.kotlin::mm::ShadowStack"* %579 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i7, %struct.ObjHeader*** %582, align 8, !tbaa !7
  store i32 0, i32* %61, align 8, !tbaa !12
  store i32 4, i32* %62, align 4, !tbaa !13
  %583 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
  %584 = icmp eq i32 %583, 2
  br i1 %584, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i

label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"

"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit1.i
  %585 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
  %586 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %585, %struct.ObjHeader** nonnull %56)
  store %struct.ObjHeader* %586, %struct.ObjHeader** %56, align 8, !tbaa !3
  %587 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
  %588 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %587, i64 0, i32 0
  %589 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %590 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %589, i64 328
  %591 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590 to i32*
  %592 = atomicrmw xchg i32* %591, i32 1 seq_cst, align 4
  %593 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %588) #37
  %594 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %589, null
  br i1 %594, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %595

595:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %596 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %597 = atomicrmw xchg i32* %591, i32 %592 seq_cst, align 4
  %598 = icmp eq i32 %597, 1
  %599 = icmp eq i32 %592, 0
  %600 = and i1 %599, %598
  br i1 %600, label %601, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

601:                                              ; preds = %595
  %602 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %603 = and i8 %602, 1
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %605

605:                                              ; preds = %601
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %596) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %605, %601, %595, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %606 = sext i32 %578 to i64
  %607 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %587, i64 0, i32 2, i32 0, i32 1
  %608 = load i64, i64* %607, align 8, !tbaa !103
  %609 = urem i64 %606, %608
  %610 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %587, i64 0, i32 2, i32 0, i32 0
  %611 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %610, align 8, !tbaa !104
  %612 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %611, i64 %609
  %613 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %612, align 8, !tbaa !3
  %614 = icmp eq %"struct.std::__detail::_Hash_node_base"* %613, null
  br i1 %614, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %615

615:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %616 = bitcast %"struct.std::__detail::_Hash_node_base"* %613 to %"struct.std::__detail::_Hash_node.203"**
  %617 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %616, align 8, !tbaa !73
  %618 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %617, i64 0, i32 0, i32 1
  %619 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %618 to i32*
  %620 = load i32, i32* %619, align 4, !tbaa !74
  %621 = icmp eq i32 %620, %578
  br i1 %621, label %638, label %.preheader

622:                                              ; preds = %629
  %623 = icmp eq i32 %632, %578
  br i1 %623, label %636, label %.preheader

.preheader:                                       ; preds = %622, %615
  %624 = phi %"struct.std::__detail::_Hash_node.203"* [ %628, %622 ], [ %617, %615 ]
  %625 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %624, i64 0, i32 0, i32 0, i32 0
  %626 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %625, align 8, !tbaa !73
  %627 = icmp eq %"struct.std::__detail::_Hash_node_base"* %626, null
  %628 = bitcast %"struct.std::__detail::_Hash_node_base"* %626 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %627, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %629

629:                                              ; preds = %.preheader
  %630 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %626, i64 1
  %631 = bitcast %"struct.std::__detail::_Hash_node_base"* %630 to i32*
  %632 = load i32, i32* %631, align 4, !tbaa !74
  %633 = sext i32 %632 to i64
  %634 = urem i64 %633, %608
  %635 = icmp eq i64 %634, %609
  br i1 %635, label %622, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

636:                                              ; preds = %622
  %637 = icmp eq %"struct.std::__detail::_Hash_node.203"* %624, null
  br i1 %637, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %640

638:                                              ; preds = %615
  %639 = icmp eq %"struct.std::__detail::_Hash_node.203"* %617, null
  br i1 %639, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %640

640:                                              ; preds = %638, %636
  %641 = phi %"struct.std::__detail::_Hash_node.203"* [ %628, %636 ], [ %617, %638 ]
  %642 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %641, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %643 = bitcast i8* %642 to %"class.(anonymous namespace)::Future"**
  %644 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %643, align 8, !tbaa !114
  %645 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %644, i64 0, i32 3
  %646 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %647 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %646, i64 328
  %648 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %647 to i32*
  %649 = atomicrmw xchg i32* %648, i32 1 seq_cst, align 4
  %650 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %645) #37
  %651 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %646, null
  br i1 %651, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %652

652:                                              ; preds = %640
  %653 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %647 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %654 = atomicrmw xchg i32* %648, i32 %649 seq_cst, align 4
  %655 = icmp eq i32 %654, 1
  %656 = icmp eq i32 %649, 0
  %657 = and i1 %656, %655
  br i1 %657, label %658, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

658:                                              ; preds = %652
  %659 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %660 = and i8 %659, 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %662

662:                                              ; preds = %658
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %653) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %662, %658, %652, %640
  %663 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %644, i64 0, i32 0
  %664 = load i32, i32* %663, align 8, !tbaa !100
  %665 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %666 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %665, i64 328
  %667 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %666 to i32*
  %668 = atomicrmw xchg i32* %667, i32 1 seq_cst, align 4
  %669 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %645) #37
  %670 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %665, null
  br i1 %670, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %671

671:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
  %672 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %666 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %673 = atomicrmw xchg i32* %667, i32 %668 seq_cst, align 4
  %674 = icmp eq i32 %673, 1
  %675 = icmp eq i32 %668, 0
  %676 = and i1 %675, %674
  br i1 %676, label %677, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

677:                                              ; preds = %671
  %678 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %679 = and i8 %678, 1
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %681

681:                                              ; preds = %677
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %672) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %681, %677, %671, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %638, %636, %629, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %682 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %636 ], [ 0, %638 ], [ %664, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %664, %681 ], [ %664, %677 ], [ %664, %671 ], [ 0, %.preheader ], [ 0, %629 ]
  %683 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %684 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683, i64 328
  %685 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %684 to i32*
  %686 = atomicrmw xchg i32* %685, i32 1 seq_cst, align 4
  %687 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %588) #37
  %688 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %683, null
  br i1 %688, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %689

689:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %690 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %684 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %691 = atomicrmw xchg i32* %685, i32 %686 seq_cst, align 4
  %692 = icmp eq i32 %691, 1
  %693 = icmp eq i32 %686, 0
  %694 = and i1 %693, %692
  br i1 %694, label %695, label %Kotlin_Worker_stateOfFuture.exit.i.i

695:                                              ; preds = %689
  %696 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %697 = and i8 %696, 1
  %698 = icmp eq i8 %697, 0
  br i1 %698, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %699

699:                                              ; preds = %695
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %690) #37
  br label %Kotlin_Worker_stateOfFuture.exit.i.i

Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %699, %695, %689, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %700 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %586, i64 1
  %701 = bitcast %struct.ObjHeader* %700 to i32*
  %702 = load i32, i32* %701, align 8, !tbaa !18
  %703 = icmp ugt i32 %702, %682
  br i1 %703, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %704

704:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  %705 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %586, i64 2
  %706 = sext i32 %682 to i64
  %707 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %705, i64 %706
  %708 = bitcast %struct.ObjHeader* %707 to %struct.ObjHeader**
  %709 = load %struct.ObjHeader*, %struct.ObjHeader** %708, align 8, !tbaa !3
  store %struct.ObjHeader* %709, %struct.ObjHeader** %132, align 8, !tbaa !3
  %710 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %711 = load i64, i64* %59, align 8, !tbaa !9
  %712 = bitcast %"class.kotlin::mm::ShadowStack"* %710 to i64*
  store i64 %711, i64* %712, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55)
  %713 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %709, i64 2
  %714 = bitcast %struct.ObjHeader* %713 to i32*
  %715 = load i32, i32* %714, align 4
  switch i32 %715, label %when_next28.i [
    i32 1, label %when_case22.i
    i32 2, label %when_case22.i
    i32 0, label %when_case23.i
    i32 3, label %when_case25.i
    i32 4, label %when_case27.i
  ]

when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %578, %struct.ObjHeader** nonnull %133)
  br label %loop_check18.i

when_case23.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %716 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 13
  %717 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %718 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %717 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %719 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %718, align 8, !tbaa !3
  %720 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %719, i64 0, i32 2, i32 1
  %721 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %720, i64 56) #37
  %722 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721, i64 1
  %723 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %721, i64 2
  %724 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %723 to %struct.ObjHeader*
  %725 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %723 to %struct.TypeInfo**
  %726 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %722 to i64*
  store i64 0, i64* %726, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %725, align 8, !tbaa !14
  %727 = bitcast %struct.ObjHeader** %716 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %723, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %727, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %724, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @136 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %724) #50
  unreachable

when_case25.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %728 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 15
  %729 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 14
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %578, %struct.ObjHeader** nonnull %729)
  %730 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %731 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %730 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %732 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %731, align 8, !tbaa !3
  %733 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %732, i64 0, i32 2, i32 1
  %734 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %733, i64 56) #37
  %735 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %734, i64 1
  %736 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %734, i64 2
  %737 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %736 to %struct.ObjHeader*
  %738 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %736 to %struct.TypeInfo**
  %739 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %735 to i64*
  store i64 0, i64* %739, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %738, align 8, !tbaa !14
  %740 = bitcast %struct.ObjHeader** %728 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %736, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %740, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %737, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @137 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %737) #50
  unreachable

when_case27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %741 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 17
  %742 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 16
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %578, %struct.ObjHeader** nonnull %742)
  %743 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %744 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %743 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %745 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %744, align 8, !tbaa !3
  %746 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %745, i64 0, i32 2, i32 1
  %747 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %746, i64 56) #37
  %748 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %747, i64 1
  %749 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %747, i64 2
  %750 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %749 to %struct.ObjHeader*
  %751 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %749 to %struct.TypeInfo**
  %752 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %748 to i64*
  store i64 0, i64* %752, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %751, align 8, !tbaa !14
  %753 = bitcast %struct.ObjHeader** %741 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %749, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %753, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %750, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @138 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %750) #50
  unreachable

when_next28.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @"kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing"() #50
  unreachable

loop_check18.i:                                   ; preds = %when_case22.i, %loop_exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %when_case22.i ], [ 0, %loop_exit.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop19.i

epilogue:                                         ; preds = %loop_check18.i
  %754 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %755 = bitcast %"class.kotlin::mm::ShadowStack"* %754 to i64*
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %127)
  %756 = load i64, i64* %17, align 8, !tbaa !9
  store i64 %756, i64* %755, align 8, !tbaa !7
  ret void
}
