define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [10 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %2 = alloca %"struct.(anonymous namespace)::Job", align 8
  %3 = alloca %class.ObjHolder, align 8
  %4 = alloca [17 x %struct.ObjHeader*], align 8
  %5 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 0
  %6 = bitcast [4 x %struct.ObjHeader*]* %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %6, i8 0, i32 32, i1 immarg false) #49
  %7 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 3
  %8 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %10 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
  %12 = load atomic i64, i64* %11 unordered, align 8, !tbaa !7
  %13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 1
  %14 = bitcast %struct.ObjHeader** %13 to i64*
  store i64 %12, i64* %14, align 8, !tbaa !9
  %15 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %15, align 8, !tbaa !7
  %16 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %5, i64 0, i64 2
  %17 = bitcast %struct.ObjHeader** %16 to i32*
  store i32 0, i32* %17, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %10, i64 0, i32 3
  store i32 4, i32* %18, align 4, !tbaa !13
  %19 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %Kotlin_mm_safePointFunctionPrologue.exit, label %22

22:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %22, %entry
  %23 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %24 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %23 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %25 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %24 unordered, align 8, !tbaa !3
  %26 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %25, i64 0, i32 2, i32 1
  %27 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %26, i64 40) #37
  %28 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 1
  %29 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 2
  %30 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29 to %struct.TypeInfo**
  %31 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %28 to i64*
  store i64 0, i64* %31, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark#internal", i64 0, i32 0), %struct.TypeInfo** %30, align 8, !tbaa !14
  %32 = bitcast %struct.ObjHeader** %7 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %32, align 8, !tbaa !3
  %33 = bitcast [10 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %33)
  %.sub.i2 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(80) %33, i8 0, i32 80, i1 immarg false) #49
  %34 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %35 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %36 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 9
  %37 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %38 = bitcast [10 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %39 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to i64*
  %40 = load atomic i64, i64* %39 unordered, align 8, !tbaa !7
  %41 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %42 = bitcast %struct.ObjHeader** %41 to i64*
  store i64 %40, i64* %42, align 8, !tbaa !9
  %43 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %43, align 8, !tbaa !7
  %44 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %45 = bitcast %struct.ObjHeader** %44 to i32*
  store i32 0, i32* %45, align 8, !tbaa !12
  %46 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %38, i64 0, i32 3
  store i32 10, i32* %46, align 4, !tbaa !13
  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
  %48 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i32*
  store i32 5, i32* %48, align 8
  %49 = load atomic i32, i32* %48 unordered, align 8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %when_case.i3, label %AllocArrayInstance.exit.i5

when_case.i3:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %51 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %52 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %53 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %52 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %54 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %53 unordered, align 8, !tbaa !3
  %55 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %54, i64 0, i32 2, i32 1
  %56 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %55, i64 56) #37
  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 1
  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56, i64 2
  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.ObjHeader*
  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to %struct.TypeInfo**
  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to i64*
  store i64 0, i64* %61, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %60, align 8, !tbaa !14
  %62 = bitcast %struct.ObjHeader** %51 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %59, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %59) #50
  unreachable

AllocArrayInstance.exit.i5:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %63 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %64 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %65 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %66 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %65 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %67 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %66 unordered, align 8, !tbaa !3
  %68 = zext i32 %49 to i64
  %69 = shl nuw nsw i64 %68, 3
  %70 = add nuw nsw i64 %69, 31
  %71 = and i64 %70, 68719476728
  %72 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %67, i64 0, i32 2, i32 1
  %73 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %72, i64 %71) #37
  %74 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 1
  %75 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 2
  %76 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to %struct.TypeInfo**
  %77 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %74 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %77, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %76, align 8, !tbaa !16
  %78 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 3
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %78 to i32*
  store i32 %49, i32* %79, align 8, !tbaa !18
  %80 = bitcast %struct.ObjHeader** %64 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %80, align 8, !tbaa !3
  %81 = bitcast %struct.ObjHeader** %63 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %82 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75 to i64*
  %83 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %73, i64 4
  %wide.trip.count62 = zext i32 %49 to i64
  br label %loop_check.i9

while_loop.i6:                                    ; preds = %loop_check.i9
  %84 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %Kotlin_mm_safePointWhileLoopBody.exit.i7, label %87

87:                                               ; preds = %while_loop.i6
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i7

Kotlin_mm_safePointWhileLoopBody.exit.i7:         ; preds = %87, %while_loop.i6
  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %90 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89 unordered, align 8, !tbaa !3
  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 20024) #37
  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %95, align 8, !tbaa !16
  %97 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 3
  %98 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %97 to i32*
  store i32 10000, i32* %98, align 8, !tbaa !18
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %81, align 8, !tbaa !3
  %99 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to i64*
  %100 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 4
  %101 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %100 to i16*
  br label %loop_check12.i

while_loop13.i:                                   ; preds = %loop_check12.i
  %102 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %Kotlin_mm_safePointWhileLoopBody.exit1.i, label %105

105:                                              ; preds = %while_loop13.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit1.i

Kotlin_mm_safePointWhileLoopBody.exit1.i:         ; preds = %105, %while_loop13.i
  %106 = load atomic i32, i32* %98 unordered, align 8, !tbaa !18
  %107 = zext i32 %106 to i64
  %108 = icmp ult i64 %indvars.iv57, %107
  br i1 %108, label %Kotlin_CharArray_set.exit.i, label %109

109:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit1.i
  %110 = trunc i32 %tmp8.0.i to i16
  %111 = load atomic volatile i64, i64* %99 monotonic, align 8
  %112 = getelementptr inbounds i16, i16* %101, i64 %indvars.iv57
  store i16 %110, i16* %112, align 2, !tbaa !27
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %113 = add nuw nsw i32 %tmp8.0.i, 1
  br label %loop_check12.i

loop_check12.i:                                   ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointWhileLoopBody.exit.i7
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
  %tmp8.0.i = phi i32 [ %113, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointWhileLoopBody.exit.i7 ]
  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
  br i1 %exitcond59.not, label %loop_exit11.i, label %while_loop13.i

loop_exit11.i:                                    ; preds = %loop_check12.i
  %114 = load atomic i32, i32* %79 unordered, align 8, !tbaa !18
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %indvars.iv60, %115
  br i1 %116, label %Kotlin_Array_set.exit2.i, label %117

117:                                              ; preds = %loop_exit11.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit2.i:                         ; preds = %loop_exit11.i
  %118 = load atomic volatile i64, i64* %82 monotonic, align 8
  %119 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83, i64 %indvars.iv60
  %120 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %120, align 8, !tbaa !3
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %loop_check.i9

loop_check.i9:                                    ; preds = %Kotlin_Array_set.exit2.i, %AllocArrayInstance.exit.i5
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %Kotlin_Array_set.exit2.i ], [ 0, %AllocArrayInstance.exit.i5 ]
  %exitcond63.not = icmp eq i64 %indvars.iv60, %wide.trip.count62
  br i1 %exitcond63.not, label %loop_exit.i10, label %while_loop.i6

loop_exit.i10:                                    ; preds = %loop_check.i9
  %121 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %121, align 8, !tbaa !3
  %122 = load atomic i32, i32* %48 unordered, align 8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %when_case20.i, label %AllocArrayInstance.exit3.i

when_case20.i:                                    ; preds = %loop_exit.i10
  %124 = getelementptr inbounds [10 x %struct.ObjHeader*], [10 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %125 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %126 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %125 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %127 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %126 unordered, align 8, !tbaa !3
  %128 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %127, i64 0, i32 2, i32 1
  %129 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %128, i64 56) #37
  %130 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 1
  %131 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %129, i64 2
  %132 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.ObjHeader*
  %133 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131 to %struct.TypeInfo**
  %134 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %130 to i64*
  store i64 0, i64* %134, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %133, align 8, !tbaa !14
  %135 = bitcast %struct.ObjHeader** %124 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %131, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %135, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %132, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %132) #50
  unreachable

AllocArrayInstance.exit3.i:                       ; preds = %loop_exit.i10
  %136 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %137 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %136 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %138 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %137 unordered, align 8, !tbaa !3
  %139 = zext i32 %122 to i64
  %140 = shl nuw nsw i64 %139, 3
  %141 = add nuw nsw i64 %140, 31
  %142 = and i64 %141, 68719476728
  %143 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %138, i64 0, i32 2, i32 1
  %144 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %143, i64 %142) #37
  %145 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 1
  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 2
  %147 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to %struct.TypeInfo**
  %148 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %145 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %148, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %147, align 8, !tbaa !16
  %149 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 3
  %150 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %149 to i32*
  store i32 %122, i32* %150, align 8, !tbaa !18
  %151 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %151, align 8, !tbaa !3
  %152 = bitcast %struct.ObjHeader** %35 to i64*
  %153 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %154 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %155 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %156 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %157 = bitcast %struct.ObjHeader** %156 to i64*
  %158 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %159 = bitcast %struct.ObjHeader** %158 to i32*
  %160 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %155, i64 0, i32 3
  %161 = bitcast %struct.ObjHeader** %154 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %162 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %163 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to i64*
  %164 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %144, i64 4
  %wide.trip.count55 = zext i32 %122 to i64
  br label %loop_check31.i

while_loop32.i:                                   ; preds = %loop_check31.i
  %165 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %168

168:                                              ; preds = %while_loop32.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i

Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %168, %while_loop32.i
  %169 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
  store i64 %169, i64* %152, align 8, !tbaa !3
  %170 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  %171 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %170, i32 0)
  %172 = icmp eq %class.Worker* %171, null
  br i1 %172, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %173

173:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
  %174 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %175 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %174, i64 328
  %176 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %175 to i32*
  %177 = atomicrmw xchg i32* %176, i32 1 seq_cst, align 4
  %178 = getelementptr inbounds %class.Worker, %class.Worker* %171, i64 0, i32 9
  %179 = bitcast %class.Worker* %171 to i8*
  %180 = call i32 @pthread_create(i64* nonnull %178, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %179) #37
  %181 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %174, null
  br i1 %181, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %182

182:                                              ; preds = %173
  %183 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %175 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %184 = atomicrmw xchg i32* %176, i32 %177 seq_cst, align 4
  %185 = icmp eq i32 %184, 1
  %186 = icmp eq i32 %177, 0
  %187 = and i1 %186, %185
  br i1 %187, label %188, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11

188:                                              ; preds = %182
  %189 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %192

192:                                              ; preds = %188
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %183) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %192, %188, %182, %173
  %193 = getelementptr inbounds %class.Worker, %class.Worker* %171, i64 0, i32 0
  %194 = load atomic i32, i32* %193 unordered, align 8, !tbaa !90
  br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"

"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit4.i
  %195 = phi i32 [ %194, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit4.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %153)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %153, i8 0, i32 32, i1 immarg false) #49
  %196 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %197 = bitcast %"class.kotlin::mm::ShadowStack"* %196 to i64*
  %198 = load atomic i64, i64* %197 unordered, align 8, !tbaa !7
  store i64 %198, i64* %157, align 8, !tbaa !9
  %199 = bitcast %"class.kotlin::mm::ShadowStack"* %196 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %199, align 8, !tbaa !7
  store i32 0, i32* %159, align 8, !tbaa !12
  store i32 4, i32* %160, align 4, !tbaa !13
  %200 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %201 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %200 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %202 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %201 unordered, align 8, !tbaa !3
  %203 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %202, i64 0, i32 2, i32 1
  %204 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %203, i64 24) #37
  %205 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204, i64 1
  %206 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204, i64 2
  %207 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206 to %struct.TypeInfo**
  %208 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %205 to i64*
  store i64 0, i64* %208, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %207, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %161, align 8, !tbaa !3
  %209 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %204, i64 3
  %210 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209 to i32*
  store i32 %195, i32* %210, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %162, align 8, !tbaa !3
  %211 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %212 = load atomic i64, i64* %157 unordered, align 8, !tbaa !9
  %213 = bitcast %"class.kotlin::mm::ShadowStack"* %211 to i64*
  store i64 %212, i64* %213, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %153)
  %214 = load atomic i32, i32* %150 unordered, align 8, !tbaa !18
  %215 = zext i32 %214 to i64
  %216 = icmp ult i64 %indvars.iv53, %215
  br i1 %216, label %Kotlin_Array_set.exit.i13, label %217

217:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  %218 = load atomic volatile i64, i64* %163 monotonic, align 8
  %219 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %164, i64 %indvars.iv53
  %220 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %219, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %206, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %220, align 8, !tbaa !3
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %loop_check31.i

loop_check31.i:                                   ; preds = %Kotlin_Array_set.exit.i13, %AllocArrayInstance.exit3.i
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i13 ], [ 0, %AllocArrayInstance.exit3.i ]
  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
  br i1 %exitcond56.not, label %call_success, label %while_loop32.i

call_success:                                     ; preds = %loop_check31.i
  %221 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %221, align 8, !tbaa !3
  %222 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %223 = load atomic i64, i64* %42 unordered, align 8, !tbaa !9
  %224 = bitcast %"class.kotlin::mm::ShadowStack"* %222 to i64*
  store i64 %223, i64* %224, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %33)
  %225 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %225)
  %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %225, i8 0, i32 136, i1 immarg false) #49
  %226 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %227 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %228 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
  %229 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
  %230 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
  %231 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %232 = load atomic i64, i64* %224 unordered, align 8, !tbaa !7
  %233 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %234 = bitcast %struct.ObjHeader** %233 to i64*
  store i64 %232, i64* %234, align 8, !tbaa !9
  %235 = bitcast %"class.kotlin::mm::ShadowStack"* %222 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %235, align 8, !tbaa !7
  %236 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %237 = bitcast %struct.ObjHeader** %236 to i32*
  store i32 0, i32* %237, align 8, !tbaa !12
  %238 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %231, i64 0, i32 3
  store i32 17, i32* %238, align 4, !tbaa !13
  %239 = load atomic i32, i32* %48 unordered, align 8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %call_success
  %241 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %242 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %243 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %242 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %244 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %243 unordered, align 8, !tbaa !3
  %245 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %244, i64 0, i32 2, i32 1
  %246 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %245, i64 56) #37
  %247 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 1
  %248 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %246, i64 2
  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to %struct.ObjHeader*
  %250 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248 to %struct.TypeInfo**
  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %247 to i64*
  store i64 0, i64* %251, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %250, align 8, !tbaa !14
  %252 = bitcast %struct.ObjHeader** %241 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %248, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %252, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %249, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %249) #50
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %call_success
  %253 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
  %254 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %255 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %256 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %257 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %256 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %258 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %257 unordered, align 8, !tbaa !3
  %259 = zext i32 %239 to i64
  %260 = shl nuw nsw i64 %259, 3
  %261 = add nuw nsw i64 %260, 31
  %262 = and i64 %261, 68719476728
  %263 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %258, i64 0, i32 2, i32 1
  %264 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %263, i64 %262) #37
  %265 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 1
  %266 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 2
  %267 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266 to %struct.TypeInfo**
  %268 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %265 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %268, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %267, align 8, !tbaa !16
  %269 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 3
  %270 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %269 to i32*
  store i32 %239, i32* %270, align 8, !tbaa !18
  %271 = bitcast %struct.ObjHeader** %255 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %271, align 8, !tbaa !3
  %272 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
  %273 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %272 to %struct.ObjHeader**
  %274 = bitcast %struct.ObjHeader** %254 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %275 = bitcast %class.ObjHolder* %3 to i8*
  %276 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
  %277 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
  %278 = bitcast %struct.FrameOverlay.6** %277 to i64*
  %279 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
  %280 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
  %281 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
  %282 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
  %283 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
  %284 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
  %285 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
  %286 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
  %287 = bitcast %struct.ObjHeader** %253 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %288 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %266 to i64*
  %289 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %264, i64 4
  %wide.trip.count51 = zext i32 %239 to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %290 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %291 = and i8 %290, 1
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %293

293:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %293, %while_loop.i
  %294 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %273 unordered, align 8
  %295 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %294, i64 1
  %296 = bitcast %struct.ObjHeader* %295 to i32*
  %297 = load atomic i32, i32* %296 unordered, align 8, !tbaa !18
  %298 = zext i32 %297 to i64
  %299 = icmp ult i64 %indvars.iv49, %298
  br i1 %299, label %Kotlin_Array_get.exit.i, label %300

300:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %301 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %294, i64 2
  %302 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %301, i64 %indvars.iv49
  %303 = bitcast %struct.ObjHeader* %302 to %struct.ObjHeader**
  %304 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %303 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %304, %struct.ObjHeader** %226, align 8, !tbaa !3
  %305 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %304, i64 1
  %306 = bitcast %struct.ObjHeader* %305 to i32*
  %307 = load atomic i32, i32* %306 unordered, align 4
  %308 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
  %309 = icmp eq i32 %308, 2
  br i1 %309, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"

"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
  %310 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
  %311 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %310, i64 2
  %312 = bitcast %struct.ObjHeader* %311 to %struct.ObjHeader**
  %313 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %312 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %313, %struct.ObjHeader** %227, align 8, !tbaa !3
  %314 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %315 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %314 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %316 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %315 unordered, align 8, !tbaa !3
  %317 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %316, i64 0, i32 2, i32 1
  %318 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %317, i64 32) #37
  %319 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 1
  %320 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 2
  %321 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320 to %struct.ObjHeader*
  %322 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320 to %struct.TypeInfo**
  %323 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %319 to i64*
  store i64 0, i64* %323, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumCharArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %322, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %320, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %274, align 8, !tbaa !3
  %324 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %324, align 8, !tbaa !3
  %325 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %318, i64 4
  %326 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %325 to i32*
  %327 = trunc i64 %indvars.iv49 to i32
  store i32 %327, i32* %326, align 8
  %328 = bitcast %struct.ObjHeader* %313 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
  %329 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %328, i64 0, i32 3
  %330 = load atomic i32, i32* %329 unordered, align 4
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %275) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %276, align 8, !tbaa !60
  %331 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %332 = bitcast %"class.kotlin::mm::ShadowStack"* %331 to i64*
  %333 = load atomic i64, i64* %332 unordered, align 8, !tbaa !7
  store i64 %333, i64* %278, align 8, !tbaa !9
  %334 = bitcast %"class.kotlin::mm::ShadowStack"* %331 to %class.ObjHolder**
  store %class.ObjHolder* %3, %class.ObjHolder** %334, align 8, !tbaa !7
  store i32 0, i32* %279, align 8, !tbaa !12
  store i32 4, i32* %280, align 4, !tbaa !13
  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %321, %struct.ObjHeader** nonnull %276)
          to label %335 unwind label %621

335:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %336 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %276 unordered, align 8, !tbaa !60
  %337 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %336) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %276, align 8, !tbaa !3
  %338 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %281)
  %339 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 0
  %340 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %341 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %340, i64 328
  %342 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %341 to i32*
  %343 = atomicrmw xchg i32* %342, i32 1 seq_cst, align 4
  %344 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %339) #37
  %345 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %340, null
  br i1 %345, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %346

346:                                              ; preds = %335
  %347 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %341 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %348 = atomicrmw xchg i32* %342, i32 %343 seq_cst, align 4
  %349 = icmp eq i32 %348, 1
  %350 = icmp eq i32 %343, 0
  %351 = and i1 %350, %349
  br i1 %351, label %352, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

352:                                              ; preds = %346
  %353 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %356

356:                                              ; preds = %352
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %347) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %356, %352, %346, %335
  %357 = sext i32 %307 to i64
  %358 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 3, i32 0, i32 1
  %359 = load atomic i64, i64* %358 unordered, align 8, !tbaa !67
  %360 = urem i64 %357, %359
  %361 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 3, i32 0, i32 0
  %362 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %361 unordered, align 8, !tbaa !72
  %363 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %362, i64 %360
  %364 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %363 unordered, align 8, !tbaa !3
  %365 = icmp eq %"struct.std::__detail::_Hash_node_base"* %364, null
  br i1 %365, label %.loopexit17, label %366

366:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %367 = bitcast %"struct.std::__detail::_Hash_node_base"* %364 to %"struct.std::__detail::_Hash_node.203"**
  %368 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %367 unordered, align 8, !tbaa !73
  %369 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %368, i64 0, i32 0, i32 1
  %370 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %369 to i32*
  %371 = load atomic i32, i32* %370 unordered, align 4, !tbaa !66
  %372 = icmp eq i32 %371, %307
  br i1 %372, label %389, label %.preheader16

373:                                              ; preds = %380
  %374 = icmp eq i32 %383, %307
  br i1 %374, label %387, label %.preheader16

.preheader16:                                     ; preds = %373, %366
  %375 = phi %"struct.std::__detail::_Hash_node.203"* [ %379, %373 ], [ %368, %366 ]
  %376 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %375, i64 0, i32 0, i32 0, i32 0
  %377 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %376 unordered, align 8, !tbaa !73
  %378 = icmp eq %"struct.std::__detail::_Hash_node_base"* %377, null
  %379 = bitcast %"struct.std::__detail::_Hash_node_base"* %377 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %378, label %.loopexit17, label %380

380:                                              ; preds = %.preheader16
  %381 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %377, i64 1
  %382 = bitcast %"struct.std::__detail::_Hash_node_base"* %381 to i32*
  %383 = load atomic i32, i32* %382 unordered, align 4, !tbaa !66
  %384 = sext i32 %383 to i64
  %385 = urem i64 %384, %359
  %386 = icmp eq i64 %385, %360
  br i1 %386, label %373, label %.loopexit17

387:                                              ; preds = %373
  %388 = icmp eq %"struct.std::__detail::_Hash_node.203"* %375, null
  br i1 %388, label %.loopexit17, label %391

389:                                              ; preds = %366
  %390 = icmp eq %"struct.std::__detail::_Hash_node.203"* %368, null
  br i1 %390, label %.loopexit17, label %391

391:                                              ; preds = %389, %387
  %392 = phi %"struct.std::__detail::_Hash_node.203"* [ %379, %387 ], [ %368, %389 ]
  %393 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %392, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %394 = bitcast i8* %393 to %class.Worker**
  %395 = load atomic %class.Worker*, %class.Worker** %394 unordered, align 8, !tbaa !74
  %396 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
  %397 = icmp eq i8* %396, null
  br i1 %397, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %398

398:                                              ; preds = %391
  %399 = bitcast i8* %396 to %"class.(anonymous namespace)::Future"*
  %400 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 6
  %401 = load atomic i32, i32* %400 unordered, align 4, !tbaa !91
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 4, !tbaa !91
  %403 = bitcast i8* %396 to i32*
  store i32 1, i32* %403, align 8, !tbaa !98
  %404 = getelementptr inbounds i8, i8* %396, i64 4
  %405 = bitcast i8* %404 to i32*
  store i32 %401, i32* %405, align 4, !tbaa !100
  %406 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %407 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %406, i64 328
  %408 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %407 to i32*
  %409 = atomicrmw xchg i32* %408, i32 1 seq_cst, align 4
  %410 = getelementptr inbounds i8, i8* %396, i64 16
  %411 = bitcast i8* %410 to %union.pthread_mutex_t*
  %412 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %411, %"struct.std::atomic"* null) #37
  %413 = getelementptr inbounds i8, i8* %396, i64 56
  %414 = bitcast i8* %413 to %union.pthread_cond_t*
  %415 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %414, %"struct.std::atomic"* null) #37
  %416 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %406, null
  br i1 %416, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %417

417:                                              ; preds = %398
  %418 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %407 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %419 = atomicrmw xchg i32* %408, i32 %409 seq_cst, align 4
  %420 = icmp eq i32 %419, 1
  %421 = icmp eq i32 %409, 0
  %422 = and i1 %421, %420
  br i1 %422, label %423, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

423:                                              ; preds = %417
  %424 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %425 = and i8 %424, 1
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %427

427:                                              ; preds = %423
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %418) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %427, %423, %417, %398, %391
  %428 = phi %"class.(anonymous namespace)::Future"* [ null, %391 ], [ %399, %398 ], [ %399, %427 ], [ %399, %423 ], [ %399, %417 ]
  %429 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %428, i64 0, i32 1
  %430 = load atomic i32, i32* %429 unordered, align 4, !tbaa !100
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 1
  %433 = load atomic i64, i64* %432 unordered, align 8, !tbaa !101
  %434 = urem i64 %431, %433
  %435 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 0
  %436 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
  %437 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %436, i64 %434
  %438 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %437 unordered, align 8, !tbaa !3
  %439 = icmp eq %"struct.std::__detail::_Hash_node_base"* %438, null
  br i1 %439, label %.loopexit15, label %440

440:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %441 = bitcast %"struct.std::__detail::_Hash_node_base"* %438 to %"struct.std::__detail::_Hash_node.203"**
  %442 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %441 unordered, align 8, !tbaa !73
  %443 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %442, i64 0, i32 0, i32 1
  %444 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %443 to i32*
  %445 = load atomic i32, i32* %444 unordered, align 4, !tbaa !66
  %446 = icmp eq i32 %430, %445
  br i1 %446, label %463, label %.preheader14

447:                                              ; preds = %454
  %448 = icmp eq i32 %430, %457
  br i1 %448, label %461, label %.preheader14

.preheader14:                                     ; preds = %447, %440
  %449 = phi %"struct.std::__detail::_Hash_node.203"* [ %453, %447 ], [ %442, %440 ]
  %450 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %449, i64 0, i32 0, i32 0, i32 0
  %451 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %450 unordered, align 8, !tbaa !73
  %452 = icmp eq %"struct.std::__detail::_Hash_node_base"* %451, null
  %453 = bitcast %"struct.std::__detail::_Hash_node_base"* %451 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %452, label %.loopexit15, label %454

454:                                              ; preds = %.preheader14
  %455 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %451, i64 1
  %456 = bitcast %"struct.std::__detail::_Hash_node_base"* %455 to i32*
  %457 = load atomic i32, i32* %456 unordered, align 4, !tbaa !66
  %458 = sext i32 %457 to i64
  %459 = urem i64 %458, %433
  %460 = icmp eq i64 %459, %434
  br i1 %460, label %447, label %.loopexit15

461:                                              ; preds = %447
  %462 = icmp eq %"struct.std::__detail::_Hash_node.203"* %449, null
  br i1 %462, label %.loopexit15, label %574

463:                                              ; preds = %440
  %464 = icmp eq %"struct.std::__detail::_Hash_node.203"* %442, null
  br i1 %464, label %.loopexit15, label %574

.loopexit15:                                      ; preds = %463, %461, %454, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %465 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
  %466 = bitcast i8* %465 to %"struct.std::__detail::_Hash_node_base"**
  %467 = getelementptr inbounds i8, i8* %465, i64 8
  %468 = bitcast i8* %467 to i32*
  store i32 %430, i32* %468, align 8, !tbaa !103
  %469 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 4
  %470 = load atomic i64, i64* %432 unordered, align 8, !tbaa !101
  %471 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 3
  %472 = load atomic i64, i64* %471 unordered, align 8, !tbaa !105
  %473 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %469, i64 %470, i64 %472, i64 1)
          to label %474 unwind label %581

474:                                              ; preds = %.loopexit15
  %475 = extractvalue { i8, i64 } %473, 0
  %476 = and i8 %475, 1
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %474
  %479 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
  br label %537

480:                                              ; preds = %474
  %481 = extractvalue { i8, i64 } %473, 1
  %482 = icmp eq i64 %481, 1
  br i1 %482, label %483, label %485, !prof !106, !misexpect !107

483:                                              ; preds = %480
  %484 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %484, align 8, !tbaa !108
  br label %489

485:                                              ; preds = %480
  %486 = call noalias i8* @calloc(i64 %481, i64 8) #37
  %487 = bitcast i8* %486 to %"struct.std::__detail::_Hash_node_base"**
  %488 = shl i64 %481, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %486, i8 0, i64 %488, i1 false) #37
  br label %489

489:                                              ; preds = %485, %483
  %490 = phi %"struct.std::__detail::_Hash_node_base"** [ %484, %483 ], [ %487, %485 ]
  %491 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 2
  %492 = bitcast %"struct.std::__detail::_Hash_node_base"* %491 to %"struct.std::__detail::_Hash_node.203"**
  %493 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %492 unordered, align 8, !tbaa !109
  %494 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %491, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %494, align 8, !tbaa !109
  %495 = icmp eq %"struct.std::__detail::_Hash_node.203"* %493, null
  br i1 %495, label %.loopexit, label %496

496:                                              ; preds = %489
  %497 = bitcast %"struct.std::__detail::_Hash_node_base"* %491 to i64*
  br label %498

498:                                              ; preds = %527, %496
  %499 = phi %"struct.std::__detail::_Hash_node.203"* [ %493, %496 ], [ %502, %527 ]
  %500 = phi i64 [ 0, %496 ], [ %528, %527 ]
  %501 = bitcast %"struct.std::__detail::_Hash_node.203"* %499 to %"struct.std::__detail::_Hash_node.203"**
  %502 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %501 unordered, align 8, !tbaa !73
  %503 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 1
  %504 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %503 to i32*
  %505 = load atomic i32, i32* %504 unordered, align 4, !tbaa !66
  %506 = sext i32 %505 to i64
  %507 = urem i64 %506, %481
  %508 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %490, i64 %507
  %509 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %508 unordered, align 8, !tbaa !3
  %510 = icmp eq %"struct.std::__detail::_Hash_node_base"* %509, null
  br i1 %510, label %511, label %520

511:                                              ; preds = %498
  %512 = load atomic i64, i64* %497 unordered, align 8, !tbaa !109
  %513 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 0
  %514 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 0, i32 0
  %515 = bitcast %"struct.std::__detail::_Hash_node.203"* %499 to i64*
  store i64 %512, i64* %515, align 8, !tbaa !73
  store %"struct.std::__detail::_Hash_node_base"* %513, %"struct.std::__detail::_Hash_node_base"** %494, align 8, !tbaa !109
  store %"struct.std::__detail::_Hash_node_base"* %491, %"struct.std::__detail::_Hash_node_base"** %508, align 8, !tbaa !3
  %516 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %514 unordered, align 8, !tbaa !73
  %517 = icmp eq %"struct.std::__detail::_Hash_node_base"* %516, null
  br i1 %517, label %527, label %518

518:                                              ; preds = %511
  %519 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %490, i64 %500
  store %"struct.std::__detail::_Hash_node_base"* %513, %"struct.std::__detail::_Hash_node_base"** %519, align 8, !tbaa !3
  br label %527

520:                                              ; preds = %498
  %521 = bitcast %"struct.std::__detail::_Hash_node_base"* %509 to i64*
  %522 = load atomic i64, i64* %521 unordered, align 8, !tbaa !73
  %523 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %499, i64 0, i32 0, i32 0
  %524 = bitcast %"struct.std::__detail::_Hash_node.203"* %499 to i64*
  store i64 %522, i64* %524, align 8, !tbaa !73
  %525 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %508 unordered, align 8, !tbaa !3
  %526 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %525, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %523, %"struct.std::__detail::_Hash_node_base"** %526, align 8, !tbaa !73
  br label %527

527:                                              ; preds = %520, %518, %511
  %528 = phi i64 [ %500, %520 ], [ %507, %511 ], [ %507, %518 ]
  %529 = icmp eq %"struct.std::__detail::_Hash_node.203"* %502, null
  br i1 %529, label %.loopexit, label %498

.loopexit:                                        ; preds = %527, %489
  %530 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
  %531 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 5
  %532 = icmp eq %"struct.std::__detail::_Hash_node_base"** %530, %531
  br i1 %532, label %535, label %533

533:                                              ; preds = %.loopexit
  %534 = bitcast %"struct.std::__detail::_Hash_node_base"** %530 to i8*
  call void @free(i8* %534) #37
  br label %535

535:                                              ; preds = %533, %.loopexit
  store i64 %481, i64* %432, align 8, !tbaa !101
  store %"struct.std::__detail::_Hash_node_base"** %490, %"struct.std::__detail::_Hash_node_base"*** %435, align 8, !tbaa !102
  %536 = urem i64 %431, %481
  br label %537

537:                                              ; preds = %535, %478
  %538 = phi %"struct.std::__detail::_Hash_node_base"** [ %479, %478 ], [ %490, %535 ]
  %539 = phi i64 [ %434, %478 ], [ %536, %535 ]
  %540 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %538, i64 %539
  %541 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %540 unordered, align 8, !tbaa !3
  %542 = icmp eq %"struct.std::__detail::_Hash_node_base"* %541, null
  br i1 %542, label %549, label %543

543:                                              ; preds = %537
  %544 = bitcast %"struct.std::__detail::_Hash_node_base"* %541 to i64*
  %545 = load atomic i64, i64* %544 unordered, align 8, !tbaa !73
  %546 = bitcast i8* %465 to i64*
  store i64 %545, i64* %546, align 8, !tbaa !73
  %547 = bitcast %"struct.std::__detail::_Hash_node_base"** %540 to i8***
  %548 = load atomic i8**, i8*** %547 unordered, align 8, !tbaa !3
  store i8* %465, i8** %548, align 8, !tbaa !73
  br label %570

549:                                              ; preds = %537
  %550 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %338, i64 0, i32 2, i32 0, i32 2
  %551 = bitcast %"struct.std::__detail::_Hash_node_base"* %550 to i64*
  %552 = load atomic i64, i64* %551 unordered, align 8, !tbaa !109
  %553 = bitcast i8* %465 to i64*
  store i64 %552, i64* %553, align 8, !tbaa !73
  %554 = bitcast %"struct.std::__detail::_Hash_node_base"* %550 to i8**
  store i8* %465, i8** %554, align 8, !tbaa !109
  %555 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %466 unordered, align 8, !tbaa !73
  %556 = icmp eq %"struct.std::__detail::_Hash_node_base"* %555, null
  br i1 %556, label %567, label %557

557:                                              ; preds = %549
  %558 = load atomic i64, i64* %432 unordered, align 8, !tbaa !101
  %559 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %555, i64 1
  %560 = bitcast %"struct.std::__detail::_Hash_node_base"* %559 to i32*
  %561 = load atomic i32, i32* %560 unordered, align 4, !tbaa !66
  %562 = sext i32 %561 to i64
  %563 = urem i64 %562, %558
  %564 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %538, i64 %563
  %565 = bitcast %"struct.std::__detail::_Hash_node_base"** %564 to i8**
  store i8* %465, i8** %565, align 8, !tbaa !3
  %566 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %435 unordered, align 8, !tbaa !102
  br label %567

567:                                              ; preds = %557, %549
  %568 = phi %"struct.std::__detail::_Hash_node_base"** [ %538, %549 ], [ %566, %557 ]
  %569 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %568, i64 %539
  store %"struct.std::__detail::_Hash_node_base"* %550, %"struct.std::__detail::_Hash_node_base"** %569, align 8, !tbaa !3
  br label %570

570:                                              ; preds = %567, %543
  %571 = load atomic i64, i64* %471 unordered, align 8, !tbaa !105
  %572 = add i64 %571, 1
  store i64 %572, i64* %471, align 8, !tbaa !105
  %573 = bitcast i8* %467 to %"struct.std::pair.50"*
  br label %578

574:                                              ; preds = %463, %461
  %575 = phi %"struct.std::__detail::_Hash_node.203"* [ %442, %463 ], [ %453, %461 ]
  %576 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %575, i64 0, i32 0, i32 1
  %577 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %576 to %"struct.std::pair.50"*
  br label %578

578:                                              ; preds = %574, %570
  %579 = phi %"struct.std::pair.50"* [ %577, %574 ], [ %573, %570 ]
  %580 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %579, i64 0, i32 1
  store %"class.(anonymous namespace)::Future"* %428, %"class.(anonymous namespace)::Future"** %580, align 8, !tbaa !3
  store i32 2, i32* %282, align 8, !tbaa.struct !110
  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumCharArrayWorkers$lambda$1#static(kotlin.CharArray){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %283, align 8, !tbaa.struct !110
  store i8* %337, i8** %284, align 8, !tbaa.struct !110
  store %"class.(anonymous namespace)::Future"* %428, %"class.(anonymous namespace)::Future"** %285, align 8, !tbaa.struct !110
  store i32 %330, i32* %286, align 8, !tbaa.struct !110
  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %395, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
  br label %.loopexit17

581:                                              ; preds = %.loopexit15
  %582 = landingpad { i8*, i32 }
          cleanup
  %583 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %584 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %583, i64 328
  %585 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %584 to i32*
  %586 = atomicrmw xchg i32* %585, i32 1 seq_cst, align 4
  %587 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %339) #37
  %588 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %583, null
  br i1 %588, label %.body.i.i.i, label %607

.loopexit17:                                      ; preds = %578, %389, %387, %380, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %589 = phi %"class.(anonymous namespace)::Future"* [ %428, %578 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %387 ], [ null, %389 ], [ null, %.preheader16 ], [ null, %380 ]
  %590 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %591 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590, i64 328
  %592 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %591 to i32*
  %593 = atomicrmw xchg i32* %592, i32 1 seq_cst, align 4
  %594 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %339) #37
  %595 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %590, null
  br i1 %595, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %596

596:                                              ; preds = %.loopexit17
  %597 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %591 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %598 = atomicrmw xchg i32* %592, i32 %593 seq_cst, align 4
  %599 = icmp eq i32 %598, 1
  %600 = icmp eq i32 %593, 0
  %601 = and i1 %600, %599
  br i1 %601, label %602, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

602:                                              ; preds = %596
  %603 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %604 = and i8 %603, 1
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %606

606:                                              ; preds = %602
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %597) #37
  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

607:                                              ; preds = %581
  %608 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %584 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %609 = atomicrmw xchg i32* %585, i32 %586 seq_cst, align 4
  %610 = icmp eq i32 %609, 1
  %611 = icmp eq i32 %586, 0
  %612 = and i1 %611, %610
  br i1 %612, label %613, label %.body.i.i.i

613:                                              ; preds = %607
  %614 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %615 = and i8 %614, 1
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %.body.i.i.i, label %617

617:                                              ; preds = %613
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %608) #37
  br label %.body.i.i.i

_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %606, %602, %596, %.loopexit17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %281)
  %618 = icmp eq %"class.(anonymous namespace)::Future"* %589, null
  br i1 %618, label %619, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"

619:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
          to label %620 unwind label %623

620:                                              ; preds = %619
  unreachable

621:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %622 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

623:                                              ; preds = %619
  %624 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %623, %621, %617, %613, %607, %581
  %625 = phi { i8*, i32 } [ %622, %621 ], [ %624, %623 ], [ %582, %607 ], [ %582, %613 ], [ %582, %617 ], [ %582, %581 ]
  %626 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %627 = load atomic i64, i64* %278 unordered, align 8, !tbaa !9
  %628 = bitcast %"class.kotlin::mm::ShadowStack"* %626 to i64*
  store i64 %627, i64* %628, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %275) #37
  resume { i8*, i32 } %625

"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  %629 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %589, i64 0, i32 1
  %630 = load atomic i32, i32* %629 unordered, align 4, !tbaa !100
  %631 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %632 = load atomic i64, i64* %278 unordered, align 8, !tbaa !9
  %633 = bitcast %"class.kotlin::mm::ShadowStack"* %631 to i64*
  store i64 %632, i64* %633, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %275) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %153)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %153, i8 0, i32 32, i1 immarg false) #49
  %634 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %635 = bitcast %"class.kotlin::mm::ShadowStack"* %634 to i64*
  %636 = load atomic i64, i64* %635 unordered, align 8, !tbaa !7
  store i64 %636, i64* %157, align 8, !tbaa !9
  %637 = bitcast %"class.kotlin::mm::ShadowStack"* %634 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %637, align 8, !tbaa !7
  store i32 0, i32* %159, align 8, !tbaa !12
  store i32 4, i32* %160, align 4, !tbaa !13
  %638 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %639 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %638 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %640 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %639 unordered, align 8, !tbaa !3
  %641 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %640, i64 0, i32 2, i32 1
  %642 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %641, i64 24) #37
  %643 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642, i64 1
  %644 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642, i64 2
  %645 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644 to %struct.TypeInfo**
  %646 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %643 to i64*
  store i64 0, i64* %646, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %645, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %161, align 8, !tbaa !3
  %647 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %642, i64 3
  %648 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %647 to i32*
  store i32 %630, i32* %648, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %287, align 8, !tbaa !3
  %649 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %650 = load atomic i64, i64* %157 unordered, align 8, !tbaa !9
  %651 = bitcast %"class.kotlin::mm::ShadowStack"* %649 to i64*
  store i64 %650, i64* %651, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %153)
  %652 = load atomic i32, i32* %270 unordered, align 8, !tbaa !18
  %653 = zext i32 %652 to i64
  %654 = icmp ult i64 %indvars.iv49, %653
  br i1 %654, label %Kotlin_Array_set.exit.i, label %655

655:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  %656 = load atomic volatile i64, i64* %288 monotonic, align 8
  %657 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 %indvars.iv49
  %658 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %657, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %644, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %658, align 8, !tbaa !3
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i

loop_exit.i:                                      ; preds = %loop_check.i
  %659 = load atomic i32, i32* %270 unordered, align 8, !tbaa !18
  %660 = icmp sgt i32 %659, 0
  %smax = select i1 %660, i32 %659, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check17.i

while_loop18.i:                                   ; preds = %loop_check17.i
  %661 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %662 = and i8 %661, 1
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %664

664:                                              ; preds = %while_loop18.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit49.i

Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %664, %while_loop18.i
  %665 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %289, i64 %indvars.iv
  %666 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %665 to %struct.ObjHeader**
  %667 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %666 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %667, %struct.ObjHeader** %228, align 8, !tbaa !3
  %668 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %667, i64 1
  %669 = bitcast %struct.ObjHeader* %668 to i32*
  %670 = load atomic i32, i32* %669 unordered, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %153)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %153, i8 0, i32 32, i1 immarg false) #49
  %671 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %672 = bitcast %"class.kotlin::mm::ShadowStack"* %671 to i64*
  %673 = load atomic i64, i64* %672 unordered, align 8, !tbaa !7
  store i64 %673, i64* %157, align 8, !tbaa !9
  %674 = bitcast %"class.kotlin::mm::ShadowStack"* %671 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %674, align 8, !tbaa !7
  store i32 0, i32* %159, align 8, !tbaa !12
  store i32 4, i32* %160, align 4, !tbaa !13
  %675 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
  %676 = icmp eq i32 %675, 2
  br i1 %676, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i

label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"

"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
  %677 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
  %678 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %677, %struct.ObjHeader** nonnull %154)
  store %struct.ObjHeader* %678, %struct.ObjHeader** %154, align 8, !tbaa !3
  %679 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
  %680 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %679, i64 0, i32 0
  %681 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %682 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %681, i64 328
  %683 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %682 to i32*
  %684 = atomicrmw xchg i32* %683, i32 1 seq_cst, align 4
  %685 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %680) #37
  %686 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %681, null
  br i1 %686, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %687

687:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %688 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %682 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %689 = atomicrmw xchg i32* %683, i32 %684 seq_cst, align 4
  %690 = icmp eq i32 %689, 1
  %691 = icmp eq i32 %684, 0
  %692 = and i1 %691, %690
  br i1 %692, label %693, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

693:                                              ; preds = %687
  %694 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %695 = and i8 %694, 1
  %696 = icmp eq i8 %695, 0
  br i1 %696, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %697

697:                                              ; preds = %693
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %688) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %697, %693, %687, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %698 = sext i32 %670 to i64
  %699 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %679, i64 0, i32 2, i32 0, i32 1
  %700 = load atomic i64, i64* %699 unordered, align 8, !tbaa !101
  %701 = urem i64 %698, %700
  %702 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %679, i64 0, i32 2, i32 0, i32 0
  %703 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %702 unordered, align 8, !tbaa !102
  %704 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %703, i64 %701
  %705 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %704 unordered, align 8, !tbaa !3
  %706 = icmp eq %"struct.std::__detail::_Hash_node_base"* %705, null
  br i1 %706, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %707

707:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %708 = bitcast %"struct.std::__detail::_Hash_node_base"* %705 to %"struct.std::__detail::_Hash_node.203"**
  %709 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %708 unordered, align 8, !tbaa !73
  %710 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %709, i64 0, i32 0, i32 1
  %711 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %710 to i32*
  %712 = load atomic i32, i32* %711 unordered, align 4, !tbaa !66
  %713 = icmp eq i32 %712, %670
  br i1 %713, label %730, label %.preheader

714:                                              ; preds = %721
  %715 = icmp eq i32 %724, %670
  br i1 %715, label %728, label %.preheader

.preheader:                                       ; preds = %714, %707
  %716 = phi %"struct.std::__detail::_Hash_node.203"* [ %720, %714 ], [ %709, %707 ]
  %717 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %716, i64 0, i32 0, i32 0, i32 0
  %718 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %717 unordered, align 8, !tbaa !73
  %719 = icmp eq %"struct.std::__detail::_Hash_node_base"* %718, null
  %720 = bitcast %"struct.std::__detail::_Hash_node_base"* %718 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %719, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %721

721:                                              ; preds = %.preheader
  %722 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %718, i64 1
  %723 = bitcast %"struct.std::__detail::_Hash_node_base"* %722 to i32*
  %724 = load atomic i32, i32* %723 unordered, align 4, !tbaa !66
  %725 = sext i32 %724 to i64
  %726 = urem i64 %725, %700
  %727 = icmp eq i64 %726, %701
  br i1 %727, label %714, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

728:                                              ; preds = %714
  %729 = icmp eq %"struct.std::__detail::_Hash_node.203"* %716, null
  br i1 %729, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %732

730:                                              ; preds = %707
  %731 = icmp eq %"struct.std::__detail::_Hash_node.203"* %709, null
  br i1 %731, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %732

732:                                              ; preds = %730, %728
  %733 = phi %"struct.std::__detail::_Hash_node.203"* [ %720, %728 ], [ %709, %730 ]
  %734 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %733, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %735 = bitcast i8* %734 to %"class.(anonymous namespace)::Future"**
  %736 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %735 unordered, align 8, !tbaa !112
  %737 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %736, i64 0, i32 3
  %738 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %739 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738, i64 328
  %740 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %739 to i32*
  %741 = atomicrmw xchg i32* %740, i32 1 seq_cst, align 4
  %742 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %737) #37
  %743 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %738, null
  br i1 %743, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %744

744:                                              ; preds = %732
  %745 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %739 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %746 = atomicrmw xchg i32* %740, i32 %741 seq_cst, align 4
  %747 = icmp eq i32 %746, 1
  %748 = icmp eq i32 %741, 0
  %749 = and i1 %748, %747
  br i1 %749, label %750, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

750:                                              ; preds = %744
  %751 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %752 = and i8 %751, 1
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %754

754:                                              ; preds = %750
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %745) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %754, %750, %744, %732
  %755 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %736, i64 0, i32 0
  %756 = load atomic i32, i32* %755 unordered, align 8, !tbaa !98
  %757 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %758 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %757, i64 328
  %759 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %758 to i32*
  %760 = atomicrmw xchg i32* %759, i32 1 seq_cst, align 4
  %761 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %737) #37
  %762 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %757, null
  br i1 %762, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %763

763:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
  %764 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %758 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %765 = atomicrmw xchg i32* %759, i32 %760 seq_cst, align 4
  %766 = icmp eq i32 %765, 1
  %767 = icmp eq i32 %760, 0
  %768 = and i1 %767, %766
  br i1 %768, label %769, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

769:                                              ; preds = %763
  %770 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %771 = and i8 %770, 1
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %773

773:                                              ; preds = %769
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %764) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %773, %769, %763, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %730, %728, %721, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %774 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %728 ], [ 0, %730 ], [ %756, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %756, %773 ], [ %756, %769 ], [ %756, %763 ], [ 0, %.preheader ], [ 0, %721 ]
  %775 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %776 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %775, i64 328
  %777 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %776 to i32*
  %778 = atomicrmw xchg i32* %777, i32 1 seq_cst, align 4
  %779 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %680) #37
  %780 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %775, null
  br i1 %780, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %781

781:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %782 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %776 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %783 = atomicrmw xchg i32* %777, i32 %778 seq_cst, align 4
  %784 = icmp eq i32 %783, 1
  %785 = icmp eq i32 %778, 0
  %786 = and i1 %785, %784
  br i1 %786, label %787, label %Kotlin_Worker_stateOfFuture.exit.i.i

787:                                              ; preds = %781
  %788 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %789 = and i8 %788, 1
  %790 = icmp eq i8 %789, 0
  br i1 %790, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %791

791:                                              ; preds = %787
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %782) #37
  br label %Kotlin_Worker_stateOfFuture.exit.i.i

Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %791, %787, %781, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %792 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %678, i64 1
  %793 = bitcast %struct.ObjHeader* %792 to i32*
  %794 = load atomic i32, i32* %793 unordered, align 8, !tbaa !18
  %795 = icmp ugt i32 %794, %774
  br i1 %795, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %796

796:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  %797 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %678, i64 2
  %798 = sext i32 %774 to i64
  %799 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %797, i64 %798
  %800 = bitcast %struct.ObjHeader* %799 to %struct.ObjHeader**
  %801 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %800 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %801, %struct.ObjHeader** %229, align 8, !tbaa !3
  %802 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %803 = load atomic i64, i64* %157 unordered, align 8, !tbaa !9
  %804 = bitcast %"class.kotlin::mm::ShadowStack"* %802 to i64*
  store i64 %803, i64* %804, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %153)
  %805 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %801, i64 2
  %806 = bitcast %struct.ObjHeader* %805 to i32*
  %807 = load atomic i32, i32* %806 unordered, align 4
  switch i32 %807, label %when_next27.i [
    i32 1, label %when_case21.i
    i32 2, label %when_case21.i
    i32 0, label %when_case22.i
    i32 3, label %when_case24.i
    i32 4, label %when_case26.i
  ]

when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %670, %struct.ObjHeader** nonnull %230)
  br label %loop_check17.i

when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %808 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
  %809 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %810 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %809 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %811 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %810 unordered, align 8, !tbaa !3
  %812 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %811, i64 0, i32 2, i32 1
  %813 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %812, i64 56) #37
  %814 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %813, i64 1
  %815 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %813, i64 2
  %816 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815 to %struct.ObjHeader*
  %817 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815 to %struct.TypeInfo**
  %818 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %814 to i64*
  store i64 0, i64* %818, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %817, align 8, !tbaa !14
  %819 = bitcast %struct.ObjHeader** %808 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %815, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %819, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %816, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %816) #50
  unreachable

when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %820 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
  %821 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %670, %struct.ObjHeader** nonnull %821)
  %822 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %823 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %822 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %824 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %823 unordered, align 8, !tbaa !3
  %825 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %824, i64 0, i32 2, i32 1
  %826 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %825, i64 56) #37
  %827 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %826, i64 1
  %828 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %826, i64 2
  %829 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828 to %struct.ObjHeader*
  %830 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828 to %struct.TypeInfo**
  %831 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %827 to i64*
  store i64 0, i64* %831, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %830, align 8, !tbaa !14
  %832 = bitcast %struct.ObjHeader** %820 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %828, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %832, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %829, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %829) #50
  unreachable

when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %833 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
  %834 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %670, %struct.ObjHeader** nonnull %834)
  %835 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %836 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %835 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %837 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %836 unordered, align 8, !tbaa !3
  %838 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %837, i64 0, i32 2, i32 1
  %839 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %838, i64 56) #37
  %840 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %839, i64 1
  %841 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %839, i64 2
  %842 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841 to %struct.ObjHeader*
  %843 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841 to %struct.TypeInfo**
  %844 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %840 to i64*
  store i64 0, i64* %844, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %843, align 8, !tbaa !14
  %845 = bitcast %struct.ObjHeader** %833 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %841, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %845, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %842, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %842) #50
  unreachable

when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @"kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing"() #50
  unreachable

loop_check17.i:                                   ; preds = %when_case21.i, %loop_exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %when_case21.i ], [ 0, %loop_exit.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop18.i

epilogue:                                         ; preds = %loop_check17.i
  %846 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %847 = bitcast %"class.kotlin::mm::ShadowStack"* %846 to i64*
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %225)
  %848 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
  store i64 %848, i64* %847, align 8, !tbaa !7
  ret void
}
