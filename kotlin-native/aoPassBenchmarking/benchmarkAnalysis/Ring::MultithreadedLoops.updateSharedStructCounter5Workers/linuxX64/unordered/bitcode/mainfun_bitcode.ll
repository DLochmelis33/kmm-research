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
  %11 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %12 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %13 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %14 = bitcast %"class.kotlin::mm::ShadowStack"* %12 to i64*
  %15 = load atomic i64, i64* %14 unordered, align 8, !tbaa !7
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
  %27 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %28 = bitcast [7 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %29 = bitcast %"class.kotlin::mm::ShadowStack"* %27 to i64*
  %30 = load atomic i64, i64* %29 unordered, align 8, !tbaa !7
  %31 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %32 = bitcast %struct.ObjHeader** %31 to i64*
  store i64 %30, i64* %32, align 8, !tbaa !9
  %33 = bitcast %"class.kotlin::mm::ShadowStack"* %27 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %33, align 8, !tbaa !7
  %34 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %35 = bitcast %struct.ObjHeader** %34 to i32*
  store i32 0, i32* %35, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %28, i64 0, i32 3
  store i32 7, i32* %36, align 4, !tbaa !13
  %37 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %38 = bitcast %struct.ObjHeader* %37 to i32*
  store i32 5, i32* %38, align 8
  %39 = load atomic i32, i32* %38 unordered, align 8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %when_case.i3, label %AllocArrayInstance.exit.i5

when_case.i3:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %41 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %43 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %42 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %44 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %43 unordered, align 8, !tbaa !3
  %45 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %44, i64 0, i32 2, i32 1
  %46 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %45, i64 56) #37
  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 1
  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 2
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.ObjHeader*
  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.TypeInfo**
  %51 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i64*
  store i64 0, i64* %51, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %50, align 8, !tbaa !14
  %52 = bitcast %struct.ObjHeader** %41 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %52, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %49, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @116 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %49) #50
  unreachable

AllocArrayInstance.exit.i5:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %53 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %54 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %55 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %56 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %57 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %56 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %58 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %57 unordered, align 8, !tbaa !3
  %59 = zext i32 %39 to i64
  %60 = shl nuw nsw i64 %59, 3
  %61 = add nuw nsw i64 %60, 31
  %62 = and i64 %61, 68719476728
  %63 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %58, i64 0, i32 2, i32 1
  %64 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %63, i64 %62) #37
  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 1
  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 2
  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to %struct.TypeInfo**
  %68 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %67, align 8, !tbaa !16
  %69 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 3
  %70 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %69 to i32*
  store i32 %39, i32* %70, align 8, !tbaa !18
  %71 = bitcast %struct.ObjHeader** %55 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %71, align 8, !tbaa !3
  %72 = bitcast %struct.ObjHeader** %54 to i64*
  %73 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  %.sub.i.i9 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %74 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %75 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %76 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %77 = bitcast %struct.ObjHeader** %76 to i64*
  %78 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %79 = bitcast %struct.ObjHeader** %78 to i32*
  %80 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %75, i64 0, i32 3
  %81 = bitcast %struct.ObjHeader** %74 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %82 = bitcast %struct.ObjHeader** %53 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to i64*
  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64, i64 4
  %wide.trip.count55 = zext i32 %39 to i64
  br label %loop_check.i12

while_loop.i6:                                    ; preds = %loop_check.i12
  %85 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %Kotlin_mm_safePointWhileLoopBody.exit.i7, label %88

88:                                               ; preds = %while_loop.i6
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i7

Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %88, %while_loop.i6
  %89 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
  store i64 %89, i64* %72, align 8, !tbaa !3
  %90 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  %91 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %90, i32 0)
  %92 = icmp eq %class.Worker* %91, null
  br i1 %92, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %93

93:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i7
  %94 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %95 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %94, i64 328
  %96 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %95 to i32*
  %97 = atomicrmw xchg i32* %96, i32 1 seq_cst, align 4
  %98 = getelementptr inbounds %class.Worker, %class.Worker* %91, i64 0, i32 9
  %99 = bitcast %class.Worker* %91 to i8*
  %100 = call i32 @pthread_create(i64* nonnull %98, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %99) #37
  %101 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %94, null
  br i1 %101, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8, label %102

102:                                              ; preds = %93
  %103 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %95 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %104 = atomicrmw xchg i32* %96, i32 %97 seq_cst, align 4
  %105 = icmp eq i32 %104, 1
  %106 = icmp eq i32 %97, 0
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8

108:                                              ; preds = %102
  %109 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8, label %112

112:                                              ; preds = %108
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %103) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8: ; preds = %112, %108, %102, %93
  %113 = getelementptr inbounds %class.Worker, %class.Worker* %91, i64 0, i32 0
  %114 = load atomic i32, i32* %113 unordered, align 8, !tbaa !90
  br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"

"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8, %Kotlin_mm_safePointWhileLoopBody.exit.i7
  %115 = phi i32 [ %114, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i8 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %73, i8 0, i32 32, i1 immarg false) #49
  %116 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %117 = bitcast %"class.kotlin::mm::ShadowStack"* %116 to i64*
  %118 = load atomic i64, i64* %117 unordered, align 8, !tbaa !7
  store i64 %118, i64* %77, align 8, !tbaa !9
  %119 = bitcast %"class.kotlin::mm::ShadowStack"* %116 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i9, %struct.ObjHeader*** %119, align 8, !tbaa !7
  store i32 0, i32* %79, align 8, !tbaa !12
  store i32 4, i32* %80, align 4, !tbaa !13
  %120 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %121 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %120 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %122 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %121 unordered, align 8, !tbaa !3
  %123 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %122, i64 0, i32 2, i32 1
  %124 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %123, i64 24) #37
  %125 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %124, i64 1
  %126 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %124, i64 2
  %127 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126 to %struct.TypeInfo**
  %128 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %125 to i64*
  store i64 0, i64* %128, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %127, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
  %129 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %124, i64 3
  %130 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129 to i32*
  store i32 %115, i32* %130, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %82, align 8, !tbaa !3
  %131 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %132 = load atomic i64, i64* %77 unordered, align 8, !tbaa !9
  %133 = bitcast %"class.kotlin::mm::ShadowStack"* %131 to i64*
  store i64 %132, i64* %133, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73)
  %134 = load atomic i32, i32* %70 unordered, align 8, !tbaa !18
  %135 = zext i32 %134 to i64
  %136 = icmp ult i64 %indvars.iv53, %135
  br i1 %136, label %Kotlin_Array_set.exit.i10, label %137

137:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i10:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  %138 = load atomic volatile i64, i64* %83 monotonic, align 8
  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84, i64 %indvars.iv53
  %140 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %126, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %140, align 8, !tbaa !3
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %loop_check.i12

loop_check.i12:                                   ; preds = %Kotlin_Array_set.exit.i10, %AllocArrayInstance.exit.i5
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i10 ], [ 0, %AllocArrayInstance.exit.i5 ]
  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
  br i1 %exitcond56.not, label %call_success, label %while_loop.i6

call_success:                                     ; preds = %loop_check.i12
  %141 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %142 = bitcast %struct.ObjHeader* %141 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %142, align 8, !tbaa !3
  %143 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %144 = load atomic i64, i64* %32 unordered, align 8, !tbaa !9
  %145 = bitcast %"class.kotlin::mm::ShadowStack"* %143 to i64*
  store i64 %144, i64* %145, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %26)
  %146 = bitcast [18 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %146)
  %.sub.i = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(144) %146, i8 0, i32 144, i1 immarg false) #49
  %147 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %148 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %149 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %150 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 10
  %151 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 11
  %152 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 12
  %153 = bitcast [18 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %154 = load atomic i64, i64* %145 unordered, align 8, !tbaa !7
  %155 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %156 = bitcast %struct.ObjHeader** %155 to i64*
  store i64 %154, i64* %156, align 8, !tbaa !9
  %157 = bitcast %"class.kotlin::mm::ShadowStack"* %143 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %157, align 8, !tbaa !7
  %158 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %159 = bitcast %struct.ObjHeader** %158 to i32*
  store i32 0, i32* %159, align 8, !tbaa !12
  %160 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %153, i64 0, i32 3
  store i32 18, i32* %160, align 4, !tbaa !13
  %161 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %162 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %161 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %163 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %162 unordered, align 8, !tbaa !3
  %164 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %163, i64 0, i32 2, i32 1
  %165 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %164, i64 24) #37
  %166 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 1
  %167 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 2
  %168 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167 to %struct.TypeInfo**
  %169 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166 to i64*
  store i64 0, i64* %169, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.Counter#internal", i64 0, i32 0), %struct.TypeInfo** %168, align 8, !tbaa !14
  %170 = bitcast %struct.ObjHeader** %147 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %170, align 8, !tbaa !3
  %171 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %165, i64 3
  %172 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %171 to i64*
  store i64 0, i64* %172, align 8
  %173 = load atomic i32, i32* %38 unordered, align 8
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %call_success
  %175 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %176 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %177 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %176 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %178 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %177 unordered, align 8, !tbaa !3
  %179 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %178, i64 0, i32 2, i32 1
  %180 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %179, i64 56) #37
  %181 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180, i64 1
  %182 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %180, i64 2
  %183 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182 to %struct.ObjHeader*
  %184 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182 to %struct.TypeInfo**
  %185 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %181 to i64*
  store i64 0, i64* %185, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %184, align 8, !tbaa !14
  %186 = bitcast %struct.ObjHeader** %175 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %186, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %183, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @116 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %183) #50
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %call_success
  %187 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 9
  %188 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 8
  %189 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %190 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %191 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %190 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %192 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %191 unordered, align 8, !tbaa !3
  %193 = zext i32 %173 to i64
  %194 = shl nuw nsw i64 %193, 3
  %195 = add nuw nsw i64 %194, 31
  %196 = and i64 %195, 68719476728
  %197 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %192, i64 0, i32 2, i32 1
  %198 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %197, i64 %196) #37
  %199 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 1
  %200 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 2
  %201 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200 to %struct.TypeInfo**
  %202 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %199 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %202, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %201, align 8, !tbaa !16
  %203 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 3
  %204 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203 to i32*
  store i32 %173, i32* %204, align 8, !tbaa !18
  %205 = bitcast %struct.ObjHeader** %189 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %205, align 8, !tbaa !3
  %206 = bitcast %struct.ObjHeader* %141 to %struct.ObjHeader**
  %207 = bitcast %struct.ObjHeader** %188 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %208 = bitcast %class.ObjHolder* %3 to i8*
  %209 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
  %210 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
  %211 = bitcast %struct.FrameOverlay.6** %210 to i64*
  %212 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
  %213 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
  %214 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
  %215 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
  %216 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
  %217 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
  %218 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
  %219 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
  %220 = bitcast %struct.ObjHeader** %187 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %221 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %200 to i64*
  %222 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %198, i64 4
  %wide.trip.count51 = zext i32 %173 to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %223 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %226

226:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %226, %while_loop.i
  %227 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %206 unordered, align 8
  %228 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %227, i64 1
  %229 = bitcast %struct.ObjHeader* %228 to i32*
  %230 = load atomic i32, i32* %229 unordered, align 8, !tbaa !18
  %231 = zext i32 %230 to i64
  %232 = icmp ult i64 %indvars.iv49, %231
  br i1 %232, label %Kotlin_Array_get.exit.i, label %233

233:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %234 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %227, i64 2
  %235 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %234, i64 %indvars.iv49
  %236 = bitcast %struct.ObjHeader* %235 to %struct.ObjHeader**
  %237 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %236 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %237, %struct.ObjHeader** %148, align 8, !tbaa !3
  %238 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %237, i64 1
  %239 = bitcast %struct.ObjHeader* %238 to i32*
  %240 = load atomic i32, i32* %239 unordered, align 4
  %241 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"

"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
  %243 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
  %244 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %243, i64 2
  %245 = bitcast %struct.ObjHeader* %244 to %struct.ObjHeader**
  %246 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %245 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %246, %struct.ObjHeader** %149, align 8, !tbaa !3
  %247 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %248 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %247 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %249 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %248 unordered, align 8, !tbaa !3
  %250 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %249, i64 0, i32 2, i32 1
  %251 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %250, i64 24) #37
  %252 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, i64 1
  %253 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, i64 2
  %254 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253 to %struct.ObjHeader*
  %255 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253 to %struct.TypeInfo**
  %256 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252 to i64*
  store i64 0, i64* %256, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runUpdateSharedStructCounterWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %255, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %253, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %207, align 8, !tbaa !3
  %257 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %251, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %257, align 8, !tbaa !3
  %258 = bitcast %struct.ObjHeader* %246 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
  %259 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %258, i64 0, i32 3
  %260 = load atomic i32, i32* %259 unordered, align 4
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %208) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %209, align 8, !tbaa !60
  %261 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %262 = bitcast %"class.kotlin::mm::ShadowStack"* %261 to i64*
  %263 = load atomic i64, i64* %262 unordered, align 8, !tbaa !7
  store i64 %263, i64* %211, align 8, !tbaa !9
  %264 = bitcast %"class.kotlin::mm::ShadowStack"* %261 to %class.ObjHolder**
  store %class.ObjHolder* %3, %class.ObjHolder** %264, align 8, !tbaa !7
  store i32 0, i32* %212, align 8, !tbaa !12
  store i32 4, i32* %213, align 4, !tbaa !13
  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %254, %struct.ObjHeader** nonnull %209)
          to label %265 unwind label %551

265:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %266 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %209 unordered, align 8, !tbaa !60
  %267 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %266) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %209, align 8, !tbaa !3
  %268 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %214)
  %269 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 0
  %270 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %271 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %270, i64 328
  %272 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %271 to i32*
  %273 = atomicrmw xchg i32* %272, i32 1 seq_cst, align 4
  %274 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %269) #37
  %275 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %270, null
  br i1 %275, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %276

276:                                              ; preds = %265
  %277 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %271 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %278 = atomicrmw xchg i32* %272, i32 %273 seq_cst, align 4
  %279 = icmp eq i32 %278, 1
  %280 = icmp eq i32 %273, 0
  %281 = and i1 %280, %279
  br i1 %281, label %282, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

282:                                              ; preds = %276
  %283 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %286

286:                                              ; preds = %282
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %277) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %286, %282, %276, %265
  %287 = sext i32 %240 to i64
  %288 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 3, i32 0, i32 1
  %289 = load atomic i64, i64* %288 unordered, align 8, !tbaa !67
  %290 = urem i64 %287, %289
  %291 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 3, i32 0, i32 0
  %292 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %291 unordered, align 8, !tbaa !72
  %293 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %292, i64 %290
  %294 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %293 unordered, align 8, !tbaa !3
  %295 = icmp eq %"struct.std::__detail::_Hash_node_base"* %294, null
  br i1 %295, label %.loopexit17, label %296

296:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %297 = bitcast %"struct.std::__detail::_Hash_node_base"* %294 to %"struct.std::__detail::_Hash_node.203"**
  %298 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %297 unordered, align 8, !tbaa !73
  %299 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %298, i64 0, i32 0, i32 1
  %300 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %299 to i32*
  %301 = load atomic i32, i32* %300 unordered, align 4, !tbaa !66
  %302 = icmp eq i32 %301, %240
  br i1 %302, label %319, label %.preheader16

303:                                              ; preds = %310
  %304 = icmp eq i32 %313, %240
  br i1 %304, label %317, label %.preheader16

.preheader16:                                     ; preds = %303, %296
  %305 = phi %"struct.std::__detail::_Hash_node.203"* [ %309, %303 ], [ %298, %296 ]
  %306 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %305, i64 0, i32 0, i32 0, i32 0
  %307 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %306 unordered, align 8, !tbaa !73
  %308 = icmp eq %"struct.std::__detail::_Hash_node_base"* %307, null
  %309 = bitcast %"struct.std::__detail::_Hash_node_base"* %307 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %308, label %.loopexit17, label %310

310:                                              ; preds = %.preheader16
  %311 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %307, i64 1
  %312 = bitcast %"struct.std::__detail::_Hash_node_base"* %311 to i32*
  %313 = load atomic i32, i32* %312 unordered, align 4, !tbaa !66
  %314 = sext i32 %313 to i64
  %315 = urem i64 %314, %289
  %316 = icmp eq i64 %315, %290
  br i1 %316, label %303, label %.loopexit17

317:                                              ; preds = %303
  %318 = icmp eq %"struct.std::__detail::_Hash_node.203"* %305, null
  br i1 %318, label %.loopexit17, label %321

319:                                              ; preds = %296
  %320 = icmp eq %"struct.std::__detail::_Hash_node.203"* %298, null
  br i1 %320, label %.loopexit17, label %321

321:                                              ; preds = %319, %317
  %322 = phi %"struct.std::__detail::_Hash_node.203"* [ %309, %317 ], [ %298, %319 ]
  %323 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %322, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %324 = bitcast i8* %323 to %class.Worker**
  %325 = load atomic %class.Worker*, %class.Worker** %324 unordered, align 8, !tbaa !74
  %326 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
  %327 = icmp eq i8* %326, null
  br i1 %327, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %328

328:                                              ; preds = %321
  %329 = bitcast i8* %326 to %"class.(anonymous namespace)::Future"*
  %330 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 6
  %331 = load atomic i32, i32* %330 unordered, align 4, !tbaa !91
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 4, !tbaa !91
  %333 = bitcast i8* %326 to i32*
  store i32 1, i32* %333, align 8, !tbaa !98
  %334 = getelementptr inbounds i8, i8* %326, i64 4
  %335 = bitcast i8* %334 to i32*
  store i32 %331, i32* %335, align 4, !tbaa !100
  %336 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %337 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %336, i64 328
  %338 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %337 to i32*
  %339 = atomicrmw xchg i32* %338, i32 1 seq_cst, align 4
  %340 = getelementptr inbounds i8, i8* %326, i64 16
  %341 = bitcast i8* %340 to %union.pthread_mutex_t*
  %342 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %341, %"struct.std::atomic"* null) #37
  %343 = getelementptr inbounds i8, i8* %326, i64 56
  %344 = bitcast i8* %343 to %union.pthread_cond_t*
  %345 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %344, %"struct.std::atomic"* null) #37
  %346 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %336, null
  br i1 %346, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %347

347:                                              ; preds = %328
  %348 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %337 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %349 = atomicrmw xchg i32* %338, i32 %339 seq_cst, align 4
  %350 = icmp eq i32 %349, 1
  %351 = icmp eq i32 %339, 0
  %352 = and i1 %351, %350
  br i1 %352, label %353, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

353:                                              ; preds = %347
  %354 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %355 = and i8 %354, 1
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %357

357:                                              ; preds = %353
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %348) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %357, %353, %347, %328, %321
  %358 = phi %"class.(anonymous namespace)::Future"* [ null, %321 ], [ %329, %328 ], [ %329, %357 ], [ %329, %353 ], [ %329, %347 ]
  %359 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %358, i64 0, i32 1
  %360 = load atomic i32, i32* %359 unordered, align 4, !tbaa !100
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 1
  %363 = load atomic i64, i64* %362 unordered, align 8, !tbaa !101
  %364 = urem i64 %361, %363
  %365 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 0
  %366 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
  %367 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %366, i64 %364
  %368 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %367 unordered, align 8, !tbaa !3
  %369 = icmp eq %"struct.std::__detail::_Hash_node_base"* %368, null
  br i1 %369, label %.loopexit15, label %370

370:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %371 = bitcast %"struct.std::__detail::_Hash_node_base"* %368 to %"struct.std::__detail::_Hash_node.203"**
  %372 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %371 unordered, align 8, !tbaa !73
  %373 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %372, i64 0, i32 0, i32 1
  %374 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %373 to i32*
  %375 = load atomic i32, i32* %374 unordered, align 4, !tbaa !66
  %376 = icmp eq i32 %360, %375
  br i1 %376, label %393, label %.preheader14

377:                                              ; preds = %384
  %378 = icmp eq i32 %360, %387
  br i1 %378, label %391, label %.preheader14

.preheader14:                                     ; preds = %377, %370
  %379 = phi %"struct.std::__detail::_Hash_node.203"* [ %383, %377 ], [ %372, %370 ]
  %380 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %379, i64 0, i32 0, i32 0, i32 0
  %381 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %380 unordered, align 8, !tbaa !73
  %382 = icmp eq %"struct.std::__detail::_Hash_node_base"* %381, null
  %383 = bitcast %"struct.std::__detail::_Hash_node_base"* %381 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %382, label %.loopexit15, label %384

384:                                              ; preds = %.preheader14
  %385 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %381, i64 1
  %386 = bitcast %"struct.std::__detail::_Hash_node_base"* %385 to i32*
  %387 = load atomic i32, i32* %386 unordered, align 4, !tbaa !66
  %388 = sext i32 %387 to i64
  %389 = urem i64 %388, %363
  %390 = icmp eq i64 %389, %364
  br i1 %390, label %377, label %.loopexit15

391:                                              ; preds = %377
  %392 = icmp eq %"struct.std::__detail::_Hash_node.203"* %379, null
  br i1 %392, label %.loopexit15, label %504

393:                                              ; preds = %370
  %394 = icmp eq %"struct.std::__detail::_Hash_node.203"* %372, null
  br i1 %394, label %.loopexit15, label %504

.loopexit15:                                      ; preds = %393, %391, %384, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %395 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
  %396 = bitcast i8* %395 to %"struct.std::__detail::_Hash_node_base"**
  %397 = getelementptr inbounds i8, i8* %395, i64 8
  %398 = bitcast i8* %397 to i32*
  store i32 %360, i32* %398, align 8, !tbaa !103
  %399 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 4
  %400 = load atomic i64, i64* %362 unordered, align 8, !tbaa !101
  %401 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 3
  %402 = load atomic i64, i64* %401 unordered, align 8, !tbaa !105
  %403 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %399, i64 %400, i64 %402, i64 1)
          to label %404 unwind label %511

404:                                              ; preds = %.loopexit15
  %405 = extractvalue { i8, i64 } %403, 0
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
  br label %467

410:                                              ; preds = %404
  %411 = extractvalue { i8, i64 } %403, 1
  %412 = icmp eq i64 %411, 1
  br i1 %412, label %413, label %415, !prof !106, !misexpect !107

413:                                              ; preds = %410
  %414 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %414, align 8, !tbaa !108
  br label %419

415:                                              ; preds = %410
  %416 = call noalias i8* @calloc(i64 %411, i64 8) #37
  %417 = bitcast i8* %416 to %"struct.std::__detail::_Hash_node_base"**
  %418 = shl i64 %411, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %416, i8 0, i64 %418, i1 false) #37
  br label %419

419:                                              ; preds = %415, %413
  %420 = phi %"struct.std::__detail::_Hash_node_base"** [ %414, %413 ], [ %417, %415 ]
  %421 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 2
  %422 = bitcast %"struct.std::__detail::_Hash_node_base"* %421 to %"struct.std::__detail::_Hash_node.203"**
  %423 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %422 unordered, align 8, !tbaa !109
  %424 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %421, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %424, align 8, !tbaa !109
  %425 = icmp eq %"struct.std::__detail::_Hash_node.203"* %423, null
  br i1 %425, label %.loopexit, label %426

426:                                              ; preds = %419
  %427 = bitcast %"struct.std::__detail::_Hash_node_base"* %421 to i64*
  br label %428

428:                                              ; preds = %457, %426
  %429 = phi %"struct.std::__detail::_Hash_node.203"* [ %423, %426 ], [ %432, %457 ]
  %430 = phi i64 [ 0, %426 ], [ %458, %457 ]
  %431 = bitcast %"struct.std::__detail::_Hash_node.203"* %429 to %"struct.std::__detail::_Hash_node.203"**
  %432 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %431 unordered, align 8, !tbaa !73
  %433 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 1
  %434 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %433 to i32*
  %435 = load atomic i32, i32* %434 unordered, align 4, !tbaa !66
  %436 = sext i32 %435 to i64
  %437 = urem i64 %436, %411
  %438 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %420, i64 %437
  %439 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %438 unordered, align 8, !tbaa !3
  %440 = icmp eq %"struct.std::__detail::_Hash_node_base"* %439, null
  br i1 %440, label %441, label %450

441:                                              ; preds = %428
  %442 = load atomic i64, i64* %427 unordered, align 8, !tbaa !109
  %443 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0
  %444 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0, i32 0
  %445 = bitcast %"struct.std::__detail::_Hash_node.203"* %429 to i64*
  store i64 %442, i64* %445, align 8, !tbaa !73
  store %"struct.std::__detail::_Hash_node_base"* %443, %"struct.std::__detail::_Hash_node_base"** %424, align 8, !tbaa !109
  store %"struct.std::__detail::_Hash_node_base"* %421, %"struct.std::__detail::_Hash_node_base"** %438, align 8, !tbaa !3
  %446 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %444 unordered, align 8, !tbaa !73
  %447 = icmp eq %"struct.std::__detail::_Hash_node_base"* %446, null
  br i1 %447, label %457, label %448

448:                                              ; preds = %441
  %449 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %420, i64 %430
  store %"struct.std::__detail::_Hash_node_base"* %443, %"struct.std::__detail::_Hash_node_base"** %449, align 8, !tbaa !3
  br label %457

450:                                              ; preds = %428
  %451 = bitcast %"struct.std::__detail::_Hash_node_base"* %439 to i64*
  %452 = load atomic i64, i64* %451 unordered, align 8, !tbaa !73
  %453 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %429, i64 0, i32 0, i32 0
  %454 = bitcast %"struct.std::__detail::_Hash_node.203"* %429 to i64*
  store i64 %452, i64* %454, align 8, !tbaa !73
  %455 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %438 unordered, align 8, !tbaa !3
  %456 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %455, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %453, %"struct.std::__detail::_Hash_node_base"** %456, align 8, !tbaa !73
  br label %457

457:                                              ; preds = %450, %448, %441
  %458 = phi i64 [ %430, %450 ], [ %437, %441 ], [ %437, %448 ]
  %459 = icmp eq %"struct.std::__detail::_Hash_node.203"* %432, null
  br i1 %459, label %.loopexit, label %428

.loopexit:                                        ; preds = %457, %419
  %460 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
  %461 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 5
  %462 = icmp eq %"struct.std::__detail::_Hash_node_base"** %460, %461
  br i1 %462, label %465, label %463

463:                                              ; preds = %.loopexit
  %464 = bitcast %"struct.std::__detail::_Hash_node_base"** %460 to i8*
  call void @free(i8* %464) #37
  br label %465

465:                                              ; preds = %463, %.loopexit
  store i64 %411, i64* %362, align 8, !tbaa !101
  store %"struct.std::__detail::_Hash_node_base"** %420, %"struct.std::__detail::_Hash_node_base"*** %365, align 8, !tbaa !102
  %466 = urem i64 %361, %411
  br label %467

467:                                              ; preds = %465, %408
  %468 = phi %"struct.std::__detail::_Hash_node_base"** [ %409, %408 ], [ %420, %465 ]
  %469 = phi i64 [ %364, %408 ], [ %466, %465 ]
  %470 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468, i64 %469
  %471 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %470 unordered, align 8, !tbaa !3
  %472 = icmp eq %"struct.std::__detail::_Hash_node_base"* %471, null
  br i1 %472, label %479, label %473

473:                                              ; preds = %467
  %474 = bitcast %"struct.std::__detail::_Hash_node_base"* %471 to i64*
  %475 = load atomic i64, i64* %474 unordered, align 8, !tbaa !73
  %476 = bitcast i8* %395 to i64*
  store i64 %475, i64* %476, align 8, !tbaa !73
  %477 = bitcast %"struct.std::__detail::_Hash_node_base"** %470 to i8***
  %478 = load atomic i8**, i8*** %477 unordered, align 8, !tbaa !3
  store i8* %395, i8** %478, align 8, !tbaa !73
  br label %500

479:                                              ; preds = %467
  %480 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %268, i64 0, i32 2, i32 0, i32 2
  %481 = bitcast %"struct.std::__detail::_Hash_node_base"* %480 to i64*
  %482 = load atomic i64, i64* %481 unordered, align 8, !tbaa !109
  %483 = bitcast i8* %395 to i64*
  store i64 %482, i64* %483, align 8, !tbaa !73
  %484 = bitcast %"struct.std::__detail::_Hash_node_base"* %480 to i8**
  store i8* %395, i8** %484, align 8, !tbaa !109
  %485 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %396 unordered, align 8, !tbaa !73
  %486 = icmp eq %"struct.std::__detail::_Hash_node_base"* %485, null
  br i1 %486, label %497, label %487

487:                                              ; preds = %479
  %488 = load atomic i64, i64* %362 unordered, align 8, !tbaa !101
  %489 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %485, i64 1
  %490 = bitcast %"struct.std::__detail::_Hash_node_base"* %489 to i32*
  %491 = load atomic i32, i32* %490 unordered, align 4, !tbaa !66
  %492 = sext i32 %491 to i64
  %493 = urem i64 %492, %488
  %494 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468, i64 %493
  %495 = bitcast %"struct.std::__detail::_Hash_node_base"** %494 to i8**
  store i8* %395, i8** %495, align 8, !tbaa !3
  %496 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %365 unordered, align 8, !tbaa !102
  br label %497

497:                                              ; preds = %487, %479
  %498 = phi %"struct.std::__detail::_Hash_node_base"** [ %468, %479 ], [ %496, %487 ]
  %499 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498, i64 %469
  store %"struct.std::__detail::_Hash_node_base"* %480, %"struct.std::__detail::_Hash_node_base"** %499, align 8, !tbaa !3
  br label %500

500:                                              ; preds = %497, %473
  %501 = load atomic i64, i64* %401 unordered, align 8, !tbaa !105
  %502 = add i64 %501, 1
  store i64 %502, i64* %401, align 8, !tbaa !105
  %503 = bitcast i8* %397 to %"struct.std::pair.50"*
  br label %508

504:                                              ; preds = %393, %391
  %505 = phi %"struct.std::__detail::_Hash_node.203"* [ %372, %393 ], [ %383, %391 ]
  %506 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %505, i64 0, i32 0, i32 1
  %507 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %506 to %"struct.std::pair.50"*
  br label %508

508:                                              ; preds = %504, %500
  %509 = phi %"struct.std::pair.50"* [ %507, %504 ], [ %503, %500 ]
  %510 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %509, i64 0, i32 1
  store %"class.(anonymous namespace)::Future"* %358, %"class.(anonymous namespace)::Future"** %510, align 8, !tbaa !3
  store i32 2, i32* %215, align 8, !tbaa.struct !110
  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-UNNN>runUpdateSharedStructCounterWorkers$lambda$1#static(MultithreadedLoopsBenchmark.Counter){}#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %216, align 8, !tbaa.struct !110
  store i8* %267, i8** %217, align 8, !tbaa.struct !110
  store %"class.(anonymous namespace)::Future"* %358, %"class.(anonymous namespace)::Future"** %218, align 8, !tbaa.struct !110
  store i32 %260, i32* %219, align 8, !tbaa.struct !110
  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %325, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
  br label %.loopexit17

511:                                              ; preds = %.loopexit15
  %512 = landingpad { i8*, i32 }
          cleanup
  %513 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %514 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %513, i64 328
  %515 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %514 to i32*
  %516 = atomicrmw xchg i32* %515, i32 1 seq_cst, align 4
  %517 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %269) #37
  %518 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %513, null
  br i1 %518, label %.body.i.i.i, label %537

.loopexit17:                                      ; preds = %508, %319, %317, %310, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %519 = phi %"class.(anonymous namespace)::Future"* [ %358, %508 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %317 ], [ null, %319 ], [ null, %.preheader16 ], [ null, %310 ]
  %520 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %521 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %520, i64 328
  %522 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %521 to i32*
  %523 = atomicrmw xchg i32* %522, i32 1 seq_cst, align 4
  %524 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %269) #37
  %525 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %520, null
  br i1 %525, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %526

526:                                              ; preds = %.loopexit17
  %527 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %521 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %528 = atomicrmw xchg i32* %522, i32 %523 seq_cst, align 4
  %529 = icmp eq i32 %528, 1
  %530 = icmp eq i32 %523, 0
  %531 = and i1 %530, %529
  br i1 %531, label %532, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

532:                                              ; preds = %526
  %533 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %534 = and i8 %533, 1
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %536

536:                                              ; preds = %532
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %527) #37
  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

537:                                              ; preds = %511
  %538 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %514 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %539 = atomicrmw xchg i32* %515, i32 %516 seq_cst, align 4
  %540 = icmp eq i32 %539, 1
  %541 = icmp eq i32 %516, 0
  %542 = and i1 %541, %540
  br i1 %542, label %543, label %.body.i.i.i

543:                                              ; preds = %537
  %544 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %545 = and i8 %544, 1
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %.body.i.i.i, label %547

547:                                              ; preds = %543
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %538) #37
  br label %.body.i.i.i

_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %536, %532, %526, %.loopexit17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %214)
  %548 = icmp eq %"class.(anonymous namespace)::Future"* %519, null
  br i1 %548, label %549, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"

549:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
          to label %550 unwind label %553

550:                                              ; preds = %549
  unreachable

551:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %552 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

553:                                              ; preds = %549
  %554 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %553, %551, %547, %543, %537, %511
  %555 = phi { i8*, i32 } [ %552, %551 ], [ %554, %553 ], [ %512, %537 ], [ %512, %543 ], [ %512, %547 ], [ %512, %511 ]
  %556 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %557 = load atomic i64, i64* %211 unordered, align 8, !tbaa !9
  %558 = bitcast %"class.kotlin::mm::ShadowStack"* %556 to i64*
  store i64 %557, i64* %558, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %208) #37
  resume { i8*, i32 } %555

"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  %559 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %519, i64 0, i32 1
  %560 = load atomic i32, i32* %559 unordered, align 4, !tbaa !100
  %561 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %562 = load atomic i64, i64* %211 unordered, align 8, !tbaa !9
  %563 = bitcast %"class.kotlin::mm::ShadowStack"* %561 to i64*
  store i64 %562, i64* %563, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %208) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %73, i8 0, i32 32, i1 immarg false) #49
  %564 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %565 = bitcast %"class.kotlin::mm::ShadowStack"* %564 to i64*
  %566 = load atomic i64, i64* %565 unordered, align 8, !tbaa !7
  store i64 %566, i64* %77, align 8, !tbaa !9
  %567 = bitcast %"class.kotlin::mm::ShadowStack"* %564 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i9, %struct.ObjHeader*** %567, align 8, !tbaa !7
  store i32 0, i32* %79, align 8, !tbaa !12
  store i32 4, i32* %80, align 4, !tbaa !13
  %568 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %569 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %568 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %570 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %569 unordered, align 8, !tbaa !3
  %571 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %570, i64 0, i32 2, i32 1
  %572 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %571, i64 24) #37
  %573 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %572, i64 1
  %574 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %572, i64 2
  %575 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574 to %struct.TypeInfo**
  %576 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %573 to i64*
  store i64 0, i64* %576, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %575, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
  %577 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %572, i64 3
  %578 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %577 to i32*
  store i32 %560, i32* %578, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %220, align 8, !tbaa !3
  %579 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %580 = load atomic i64, i64* %77 unordered, align 8, !tbaa !9
  %581 = bitcast %"class.kotlin::mm::ShadowStack"* %579 to i64*
  store i64 %580, i64* %581, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73)
  %582 = load atomic i32, i32* %204 unordered, align 8, !tbaa !18
  %583 = zext i32 %582 to i64
  %584 = icmp ult i64 %indvars.iv49, %583
  br i1 %584, label %Kotlin_Array_set.exit.i, label %585

585:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  %586 = load atomic volatile i64, i64* %221 monotonic, align 8
  %587 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %222, i64 %indvars.iv49
  %588 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %587, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %574, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %588, align 8, !tbaa !3
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i

loop_exit.i:                                      ; preds = %loop_check.i
  %589 = load atomic i32, i32* %204 unordered, align 8, !tbaa !18
  %590 = icmp sgt i32 %589, 0
  %smax = select i1 %590, i32 %589, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check18.i

while_loop19.i:                                   ; preds = %loop_check18.i
  %591 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %592 = and i8 %591, 1
  %593 = icmp eq i8 %592, 0
  br i1 %593, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %594

594:                                              ; preds = %while_loop19.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit1.i

Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %594, %while_loop19.i
  %595 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %222, i64 %indvars.iv
  %596 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %595 to %struct.ObjHeader**
  %597 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %596 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %597, %struct.ObjHeader** %150, align 8, !tbaa !3
  %598 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %597, i64 1
  %599 = bitcast %struct.ObjHeader* %598 to i32*
  %600 = load atomic i32, i32* %599 unordered, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %73, i8 0, i32 32, i1 immarg false) #49
  %601 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %602 = bitcast %"class.kotlin::mm::ShadowStack"* %601 to i64*
  %603 = load atomic i64, i64* %602 unordered, align 8, !tbaa !7
  store i64 %603, i64* %77, align 8, !tbaa !9
  %604 = bitcast %"class.kotlin::mm::ShadowStack"* %601 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i9, %struct.ObjHeader*** %604, align 8, !tbaa !7
  store i32 0, i32* %79, align 8, !tbaa !12
  store i32 4, i32* %80, align 4, !tbaa !13
  %605 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
  %606 = icmp eq i32 %605, 2
  br i1 %606, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i

label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"

"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit1.i
  %607 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
  %608 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %607, %struct.ObjHeader** nonnull %74)
  store %struct.ObjHeader* %608, %struct.ObjHeader** %74, align 8, !tbaa !3
  %609 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
  %610 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %609, i64 0, i32 0
  %611 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %612 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %611, i64 328
  %613 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %612 to i32*
  %614 = atomicrmw xchg i32* %613, i32 1 seq_cst, align 4
  %615 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %610) #37
  %616 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %611, null
  br i1 %616, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %617

617:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %618 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %612 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %619 = atomicrmw xchg i32* %613, i32 %614 seq_cst, align 4
  %620 = icmp eq i32 %619, 1
  %621 = icmp eq i32 %614, 0
  %622 = and i1 %621, %620
  br i1 %622, label %623, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

623:                                              ; preds = %617
  %624 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %625 = and i8 %624, 1
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %627

627:                                              ; preds = %623
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %618) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %627, %623, %617, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %628 = sext i32 %600 to i64
  %629 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %609, i64 0, i32 2, i32 0, i32 1
  %630 = load atomic i64, i64* %629 unordered, align 8, !tbaa !101
  %631 = urem i64 %628, %630
  %632 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %609, i64 0, i32 2, i32 0, i32 0
  %633 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %632 unordered, align 8, !tbaa !102
  %634 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %633, i64 %631
  %635 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %634 unordered, align 8, !tbaa !3
  %636 = icmp eq %"struct.std::__detail::_Hash_node_base"* %635, null
  br i1 %636, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %637

637:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %638 = bitcast %"struct.std::__detail::_Hash_node_base"* %635 to %"struct.std::__detail::_Hash_node.203"**
  %639 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %638 unordered, align 8, !tbaa !73
  %640 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %639, i64 0, i32 0, i32 1
  %641 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %640 to i32*
  %642 = load atomic i32, i32* %641 unordered, align 4, !tbaa !66
  %643 = icmp eq i32 %642, %600
  br i1 %643, label %660, label %.preheader

644:                                              ; preds = %651
  %645 = icmp eq i32 %654, %600
  br i1 %645, label %658, label %.preheader

.preheader:                                       ; preds = %644, %637
  %646 = phi %"struct.std::__detail::_Hash_node.203"* [ %650, %644 ], [ %639, %637 ]
  %647 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %646, i64 0, i32 0, i32 0, i32 0
  %648 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %647 unordered, align 8, !tbaa !73
  %649 = icmp eq %"struct.std::__detail::_Hash_node_base"* %648, null
  %650 = bitcast %"struct.std::__detail::_Hash_node_base"* %648 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %649, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %651

651:                                              ; preds = %.preheader
  %652 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %648, i64 1
  %653 = bitcast %"struct.std::__detail::_Hash_node_base"* %652 to i32*
  %654 = load atomic i32, i32* %653 unordered, align 4, !tbaa !66
  %655 = sext i32 %654 to i64
  %656 = urem i64 %655, %630
  %657 = icmp eq i64 %656, %631
  br i1 %657, label %644, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

658:                                              ; preds = %644
  %659 = icmp eq %"struct.std::__detail::_Hash_node.203"* %646, null
  br i1 %659, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %662

660:                                              ; preds = %637
  %661 = icmp eq %"struct.std::__detail::_Hash_node.203"* %639, null
  br i1 %661, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %662

662:                                              ; preds = %660, %658
  %663 = phi %"struct.std::__detail::_Hash_node.203"* [ %650, %658 ], [ %639, %660 ]
  %664 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %663, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %665 = bitcast i8* %664 to %"class.(anonymous namespace)::Future"**
  %666 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %665 unordered, align 8, !tbaa !112
  %667 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %666, i64 0, i32 3
  %668 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %669 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %668, i64 328
  %670 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %669 to i32*
  %671 = atomicrmw xchg i32* %670, i32 1 seq_cst, align 4
  %672 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %667) #37
  %673 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %668, null
  br i1 %673, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %674

674:                                              ; preds = %662
  %675 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %669 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %676 = atomicrmw xchg i32* %670, i32 %671 seq_cst, align 4
  %677 = icmp eq i32 %676, 1
  %678 = icmp eq i32 %671, 0
  %679 = and i1 %678, %677
  br i1 %679, label %680, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

680:                                              ; preds = %674
  %681 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %682 = and i8 %681, 1
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %684

684:                                              ; preds = %680
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %675) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %684, %680, %674, %662
  %685 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %666, i64 0, i32 0
  %686 = load atomic i32, i32* %685 unordered, align 8, !tbaa !98
  %687 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %688 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %687, i64 328
  %689 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688 to i32*
  %690 = atomicrmw xchg i32* %689, i32 1 seq_cst, align 4
  %691 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %667) #37
  %692 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %687, null
  br i1 %692, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %693

693:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
  %694 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %688 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %695 = atomicrmw xchg i32* %689, i32 %690 seq_cst, align 4
  %696 = icmp eq i32 %695, 1
  %697 = icmp eq i32 %690, 0
  %698 = and i1 %697, %696
  br i1 %698, label %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

699:                                              ; preds = %693
  %700 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %701 = and i8 %700, 1
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %703

703:                                              ; preds = %699
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %694) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %703, %699, %693, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %660, %658, %651, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %704 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %658 ], [ 0, %660 ], [ %686, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %686, %703 ], [ %686, %699 ], [ %686, %693 ], [ 0, %.preheader ], [ 0, %651 ]
  %705 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %706 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %705, i64 328
  %707 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706 to i32*
  %708 = atomicrmw xchg i32* %707, i32 1 seq_cst, align 4
  %709 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %610) #37
  %710 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %705, null
  br i1 %710, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %711

711:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %712 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %706 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %713 = atomicrmw xchg i32* %707, i32 %708 seq_cst, align 4
  %714 = icmp eq i32 %713, 1
  %715 = icmp eq i32 %708, 0
  %716 = and i1 %715, %714
  br i1 %716, label %717, label %Kotlin_Worker_stateOfFuture.exit.i.i

717:                                              ; preds = %711
  %718 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %719 = and i8 %718, 1
  %720 = icmp eq i8 %719, 0
  br i1 %720, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %721

721:                                              ; preds = %717
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %712) #37
  br label %Kotlin_Worker_stateOfFuture.exit.i.i

Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %721, %717, %711, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %722 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %608, i64 1
  %723 = bitcast %struct.ObjHeader* %722 to i32*
  %724 = load atomic i32, i32* %723 unordered, align 8, !tbaa !18
  %725 = icmp ugt i32 %724, %704
  br i1 %725, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %726

726:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  %727 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %608, i64 2
  %728 = sext i32 %704 to i64
  %729 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %727, i64 %728
  %730 = bitcast %struct.ObjHeader* %729 to %struct.ObjHeader**
  %731 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %730 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %731, %struct.ObjHeader** %151, align 8, !tbaa !3
  %732 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %733 = load atomic i64, i64* %77 unordered, align 8, !tbaa !9
  %734 = bitcast %"class.kotlin::mm::ShadowStack"* %732 to i64*
  store i64 %733, i64* %734, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73)
  %735 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %731, i64 2
  %736 = bitcast %struct.ObjHeader* %735 to i32*
  %737 = load atomic i32, i32* %736 unordered, align 4
  switch i32 %737, label %when_next28.i [
    i32 1, label %when_case22.i
    i32 2, label %when_case22.i
    i32 0, label %when_case23.i
    i32 3, label %when_case25.i
    i32 4, label %when_case27.i
  ]

when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %600, %struct.ObjHeader** nonnull %152)
  br label %loop_check18.i

when_case23.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %738 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 13
  %739 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %740 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %739 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %741 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %740 unordered, align 8, !tbaa !3
  %742 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %741, i64 0, i32 2, i32 1
  %743 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %742, i64 56) #37
  %744 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %743, i64 1
  %745 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %743, i64 2
  %746 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %745 to %struct.ObjHeader*
  %747 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %745 to %struct.TypeInfo**
  %748 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %744 to i64*
  store i64 0, i64* %748, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %747, align 8, !tbaa !14
  %749 = bitcast %struct.ObjHeader** %738 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %745, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %749, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %746, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @136 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %746) #50
  unreachable

when_case25.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %750 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 15
  %751 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 14
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %600, %struct.ObjHeader** nonnull %751)
  %752 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %753 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %752 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %754 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %753 unordered, align 8, !tbaa !3
  %755 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %754, i64 0, i32 2, i32 1
  %756 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %755, i64 56) #37
  %757 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 1
  %758 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %756, i64 2
  %759 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %struct.ObjHeader*
  %760 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758 to %struct.TypeInfo**
  %761 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %757 to i64*
  store i64 0, i64* %761, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %760, align 8, !tbaa !14
  %762 = bitcast %struct.ObjHeader** %750 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %758, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %762, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %759, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @137 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %759) #50
  unreachable

when_case27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %763 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 17
  %764 = getelementptr inbounds [18 x %struct.ObjHeader*], [18 x %struct.ObjHeader*]* %4, i64 0, i64 16
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %600, %struct.ObjHeader** nonnull %764)
  %765 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 6
  %766 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %765 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %767 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %766 unordered, align 8, !tbaa !3
  %768 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %767, i64 0, i32 2, i32 1
  %769 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %768, i64 56) #37
  %770 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 1
  %771 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 2
  %772 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.ObjHeader*
  %773 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.TypeInfo**
  %774 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %770 to i64*
  store i64 0, i64* %774, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %773, align 8, !tbaa !14
  %775 = bitcast %struct.ObjHeader** %763 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %775, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %772, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @138 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %772) #50
  unreachable

when_next28.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @"kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing"() #50
  unreachable

loop_check18.i:                                   ; preds = %when_case22.i, %loop_exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %when_case22.i ], [ 0, %loop_exit.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop19.i

epilogue:                                         ; preds = %loop_check18.i
  %776 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %11, i64 0, i32 1, i32 5
  %777 = bitcast %"class.kotlin::mm::ShadowStack"* %776 to i64*
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %146)
  %778 = load atomic i64, i64* %17 unordered, align 8, !tbaa !9
  store i64 %778, i64* %777, align 8, !tbaa !7
  ret void
}
