define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [9 x %struct.ObjHeader*], align 8
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
  %33 = bitcast [9 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %33)
  %.sub.i2 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(72) %33, i8 0, i32 72, i1 immarg false) #49
  %34 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %35 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %36 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %37 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %38 = bitcast [9 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %39 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to i64*
  %40 = load atomic i64, i64* %39 unordered, align 8, !tbaa !7
  %41 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %42 = bitcast %struct.ObjHeader** %41 to i64*
  store i64 %40, i64* %42, align 8, !tbaa !9
  %43 = bitcast %"class.kotlin::mm::ShadowStack"* %37 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %43, align 8, !tbaa !7
  %44 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %45 = bitcast %struct.ObjHeader** %44 to i32*
  store i32 0, i32* %45, align 8, !tbaa !12
  %46 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %38, i64 0, i32 3
  store i32 9, i32* %46, align 4, !tbaa !13
  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
  %48 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i32*
  store i32 100, i32* %48, align 8
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29 to %"kclassbody:MultithreadedLoopsBenchmark#internal"*
  %50 = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %49, i64 0, i32 4
  store i32 10000, i32* %50, align 4
  %51 = load atomic i32, i32* %50 unordered, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %AllocArrayInstance.exit.i3

53:                                               ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @ThrowIllegalArgumentException() #50
  unreachable

AllocArrayInstance.exit.i3:                       ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  %54 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %55 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %56 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %55 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %57 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %56 unordered, align 8, !tbaa !3
  %58 = zext i32 %51 to i64
  %59 = shl nuw nsw i64 %58, 3
  %60 = add nuw nsw i64 %59, 31
  %61 = and i64 %60, 68719476728
  %62 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %57, i64 0, i32 2, i32 1
  %63 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %62, i64 %61) #37
  %64 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 1
  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 2
  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to %struct.TypeInfo**
  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.LongArray#internal", i64 0, i32 0), %struct.TypeInfo** %66, align 8, !tbaa !16
  %68 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 3
  %69 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %68 to i32*
  store i32 %51, i32* %69, align 8, !tbaa !18
  %70 = bitcast %struct.ObjHeader** %54 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %70, align 8, !tbaa !3
  %71 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i64*
  %72 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %63, i64 4
  %wide.trip.count59 = zext i32 %51 to i64
  br label %loop_check.i7

while_loop.i4:                                    ; preds = %loop_check.i7
  %73 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %76

76:                                               ; preds = %while_loop.i4
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5

Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %76, %while_loop.i4
  %77 = load atomic i32, i32* %69 unordered, align 8, !tbaa !18
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %indvars.iv57, %78
  br i1 %79, label %Kotlin_LongArray_set.exit.i, label %80

80:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_LongArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
  %81 = load atomic volatile i64, i64* %71 monotonic, align 8
  %82 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %72, i64 %indvars.iv57
  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %82 to i64*
  store i64 %indvars.iv57, i64* %83, align 8, !tbaa !87
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %loop_check.i7

loop_check.i7:                                    ; preds = %Kotlin_LongArray_set.exit.i, %AllocArrayInstance.exit.i3
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_LongArray_set.exit.i ], [ 0, %AllocArrayInstance.exit.i3 ]
  %exitcond60.not = icmp eq i64 %indvars.iv57, %wide.trip.count59
  br i1 %exitcond60.not, label %loop_exit.i8, label %while_loop.i4

loop_exit.i8:                                     ; preds = %loop_check.i7
  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %84, align 8, !tbaa !3
  %85 = load atomic i32, i32* %48 unordered, align 8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %when_case.i9, label %AllocArrayInstance.exit1.i

when_case.i9:                                     ; preds = %loop_exit.i8
  %87 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %90 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89 unordered, align 8, !tbaa !3
  %91 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %90, i64 0, i32 2, i32 1
  %92 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %91, i64 56) #37
  %93 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 1
  %94 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %92, i64 2
  %95 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.ObjHeader*
  %96 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94 to %struct.TypeInfo**
  %97 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %93 to i64*
  store i64 0, i64* %97, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %96, align 8, !tbaa !14
  %98 = bitcast %struct.ObjHeader** %87 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %94, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %95, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %95) #50
  unreachable

AllocArrayInstance.exit1.i:                       ; preds = %loop_exit.i8
  %99 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %100 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %99 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %101 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %100 unordered, align 8, !tbaa !3
  %102 = zext i32 %85 to i64
  %103 = shl nuw nsw i64 %102, 3
  %104 = add nuw nsw i64 %103, 31
  %105 = and i64 %104, 68719476728
  %106 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %101, i64 0, i32 2, i32 1
  %107 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %106, i64 %105) #37
  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 1
  %109 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 2
  %110 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to %struct.TypeInfo**
  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %111, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %110, align 8, !tbaa !16
  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 3
  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to i32*
  store i32 %85, i32* %113, align 8, !tbaa !18
  %114 = bitcast %struct.ObjHeader** %34 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !3
  %115 = bitcast %struct.ObjHeader** %35 to i64*
  %116 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  %.sub.i.i12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %117 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %118 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %119 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %120 = bitcast %struct.ObjHeader** %119 to i64*
  %121 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %122 = bitcast %struct.ObjHeader** %121 to i32*
  %123 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %118, i64 0, i32 3
  %124 = bitcast %struct.ObjHeader** %117 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %125 = bitcast %struct.ObjHeader** %36 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %126 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i64*
  %127 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 4
  %wide.trip.count55 = zext i32 %85 to i64
  br label %loop_check25.i

while_loop26.i:                                   ; preds = %loop_check25.i
  %128 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %131

131:                                              ; preds = %while_loop26.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit2.i

Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %131, %while_loop26.i
  %132 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*) unordered, align 8
  store i64 %132, i64* %115, align 8, !tbaa !3
  %133 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  %134 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %133, i32 0)
  %135 = icmp eq %class.Worker* %134, null
  br i1 %135, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %136

136:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
  %137 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %138 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %137, i64 328
  %139 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138 to i32*
  %140 = atomicrmw xchg i32* %139, i32 1 seq_cst, align 4
  %141 = getelementptr inbounds %class.Worker, %class.Worker* %134, i64 0, i32 9
  %142 = bitcast %class.Worker* %134 to i8*
  %143 = call i32 @pthread_create(i64* nonnull %141, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_ZN12_GLOBAL__N_113workerRoutineEPv, i8* nonnull %142) #37
  %144 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %137, null
  br i1 %144, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %145

145:                                              ; preds = %136
  %146 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %138 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %147 = atomicrmw xchg i32* %139, i32 %140 seq_cst, align 4
  %148 = icmp eq i32 %147, 1
  %149 = icmp eq i32 %140, 0
  %150 = and i1 %149, %148
  br i1 %150, label %151, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11

151:                                              ; preds = %145
  %152 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, label %155

155:                                              ; preds = %151
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %146) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11: ; preds = %155, %151, %145, %136
  %156 = getelementptr inbounds %class.Worker, %class.Worker* %134, i64 0, i32 0
  %157 = load atomic i32, i32* %156 unordered, align 8, !tbaa !91
  br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"

"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit2.i
  %158 = phi i32 [ %157, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
  %159 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %160 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to i64*
  %161 = load atomic i64, i64* %160 unordered, align 8, !tbaa !7
  store i64 %161, i64* %120, align 8, !tbaa !9
  %162 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %162, align 8, !tbaa !7
  store i32 0, i32* %122, align 8, !tbaa !12
  store i32 4, i32* %123, align 4, !tbaa !13
  %163 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %164 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %163 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %165 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %164 unordered, align 8, !tbaa !3
  %166 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %165, i64 0, i32 2, i32 1
  %167 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %166, i64 24) #37
  %168 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 1
  %169 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 2
  %170 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169 to %struct.TypeInfo**
  %171 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168 to i64*
  store i64 0, i64* %171, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Worker#internal", i64 0, i32 0), %struct.TypeInfo** %170, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
  %172 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167, i64 3
  %173 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %172 to i32*
  store i32 %158, i32* %173, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %125, align 8, !tbaa !3
  %174 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %175 = load atomic i64, i64* %120 unordered, align 8, !tbaa !9
  %176 = bitcast %"class.kotlin::mm::ShadowStack"* %174 to i64*
  store i64 %175, i64* %176, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
  %177 = load atomic i32, i32* %113 unordered, align 8, !tbaa !18
  %178 = zext i32 %177 to i64
  %179 = icmp ult i64 %indvars.iv53, %178
  br i1 %179, label %Kotlin_Array_set.exit.i13, label %180

180:                                              ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i13:                        ; preds = %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"
  %181 = load atomic volatile i64, i64* %126 monotonic, align 8
  %182 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %127, i64 %indvars.iv53
  %183 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %182, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %169, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %183, align 8, !tbaa !3
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %loop_check25.i

loop_check25.i:                                   ; preds = %Kotlin_Array_set.exit.i13, %AllocArrayInstance.exit1.i
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i13 ], [ 0, %AllocArrayInstance.exit1.i ]
  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
  br i1 %exitcond56.not, label %call_success, label %while_loop26.i

call_success:                                     ; preds = %loop_check25.i
  %184 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %184, align 8, !tbaa !3
  %185 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %186 = load atomic i64, i64* %42 unordered, align 8, !tbaa !9
  %187 = bitcast %"class.kotlin::mm::ShadowStack"* %185 to i64*
  store i64 %186, i64* %187, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %33)
  %188 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %188)
  %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %188, i8 0, i32 136, i1 immarg false) #49
  %189 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %190 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %191 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
  %192 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
  %193 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
  %194 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %195 = load atomic i64, i64* %187 unordered, align 8, !tbaa !7
  %196 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %197 = bitcast %struct.ObjHeader** %196 to i64*
  store i64 %195, i64* %197, align 8, !tbaa !9
  %198 = bitcast %"class.kotlin::mm::ShadowStack"* %185 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %198, align 8, !tbaa !7
  %199 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %200 = bitcast %struct.ObjHeader** %199 to i32*
  store i32 0, i32* %200, align 8, !tbaa !12
  %201 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %194, i64 0, i32 3
  store i32 17, i32* %201, align 4, !tbaa !13
  %202 = load atomic i32, i32* %48 unordered, align 8
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %call_success
  %204 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %205 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %206 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %205 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %207 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %206 unordered, align 8, !tbaa !3
  %208 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %207, i64 0, i32 2, i32 1
  %209 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %208, i64 56) #37
  %210 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209, i64 1
  %211 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209, i64 2
  %212 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211 to %struct.ObjHeader*
  %213 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211 to %struct.TypeInfo**
  %214 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %210 to i64*
  store i64 0, i64* %214, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %213, align 8, !tbaa !14
  %215 = bitcast %struct.ObjHeader** %204 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %211, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %215, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %212, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @118 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %212) #50
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %call_success
  %216 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
  %217 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %218 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %219 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %220 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %219 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %221 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %220 unordered, align 8, !tbaa !3
  %222 = zext i32 %202 to i64
  %223 = shl nuw nsw i64 %222, 3
  %224 = add nuw nsw i64 %223, 31
  %225 = and i64 %224, 68719476728
  %226 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %221, i64 0, i32 2, i32 1
  %227 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %226, i64 %225) #37
  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 1
  %229 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 2
  %230 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to %struct.TypeInfo**
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %231, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %230, align 8, !tbaa !16
  %232 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 3
  %233 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %232 to i32*
  store i32 %202, i32* %233, align 8, !tbaa !18
  %234 = bitcast %struct.ObjHeader** %218 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %234, align 8, !tbaa !3
  %235 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
  %236 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %235 to %struct.ObjHeader**
  %237 = bitcast %struct.ObjHeader** %217 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %238 = bitcast %class.ObjHolder* %3 to i8*
  %239 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
  %240 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
  %241 = bitcast %struct.FrameOverlay.6** %240 to i64*
  %242 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
  %243 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
  %244 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
  %245 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
  %246 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
  %247 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
  %248 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
  %249 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
  %250 = bitcast %struct.ObjHeader** %216 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %251 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %229 to i64*
  %252 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, i64 4
  %wide.trip.count51 = zext i32 %202 to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %253 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %256

256:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %256, %while_loop.i
  %257 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %236 unordered, align 8
  %258 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %257, i64 1
  %259 = bitcast %struct.ObjHeader* %258 to i32*
  %260 = load atomic i32, i32* %259 unordered, align 8, !tbaa !18
  %261 = zext i32 %260 to i64
  %262 = icmp ult i64 %indvars.iv49, %261
  br i1 %262, label %Kotlin_Array_get.exit.i, label %263

263:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %264 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %257, i64 2
  %265 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %264, i64 %indvars.iv49
  %266 = bitcast %struct.ObjHeader* %265 to %struct.ObjHeader**
  %267 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %266 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %267, %struct.ObjHeader** %189, align 8, !tbaa !3
  %268 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %267, i64 1
  %269 = bitcast %struct.ObjHeader* %268 to i32*
  %270 = load atomic i32, i32* %269 unordered, align 4
  %271 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
  %272 = icmp eq i32 %271, 2
  br i1 %272, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"

"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
  %273 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal" unordered, align 8
  %274 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %273, i64 2
  %275 = bitcast %struct.ObjHeader* %274 to %struct.ObjHeader**
  %276 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %275 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %276, %struct.ObjHeader** %190, align 8, !tbaa !3
  %277 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %278 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %277 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %279 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %278 unordered, align 8, !tbaa !3
  %280 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %279, i64 0, i32 2, i32 1
  %281 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %280, i64 24) #37
  %282 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, i64 1
  %283 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, i64 2
  %284 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283 to %struct.ObjHeader*
  %285 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283 to %struct.TypeInfo**
  %286 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %282 to i64*
  store i64 0, i64* %286, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedULongArrayWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %285, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %283, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %237, align 8, !tbaa !3
  %287 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %287, align 8, !tbaa !3
  %288 = bitcast %struct.ObjHeader* %276 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
  %289 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %288, i64 0, i32 3
  %290 = load atomic i32, i32* %289 unordered, align 4
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %238) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %239, align 8, !tbaa !60
  %291 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %292 = bitcast %"class.kotlin::mm::ShadowStack"* %291 to i64*
  %293 = load atomic i64, i64* %292 unordered, align 8, !tbaa !7
  store i64 %293, i64* %241, align 8, !tbaa !9
  %294 = bitcast %"class.kotlin::mm::ShadowStack"* %291 to %class.ObjHolder**
  store %class.ObjHolder* %3, %class.ObjHolder** %294, align 8, !tbaa !7
  store i32 0, i32* %242, align 8, !tbaa !12
  store i32 4, i32* %243, align 4, !tbaa !13
  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %284, %struct.ObjHeader** nonnull %239)
          to label %295 unwind label %581

295:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %296 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %239 unordered, align 8, !tbaa !60
  %297 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %296) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %239, align 8, !tbaa !3
  %298 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %244)
  %299 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 0
  %300 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %301 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %300, i64 328
  %302 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %301 to i32*
  %303 = atomicrmw xchg i32* %302, i32 1 seq_cst, align 4
  %304 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %299) #37
  %305 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %300, null
  br i1 %305, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %306

306:                                              ; preds = %295
  %307 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %301 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %308 = atomicrmw xchg i32* %302, i32 %303 seq_cst, align 4
  %309 = icmp eq i32 %308, 1
  %310 = icmp eq i32 %303, 0
  %311 = and i1 %310, %309
  br i1 %311, label %312, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

312:                                              ; preds = %306
  %313 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %316

316:                                              ; preds = %312
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %307) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %316, %312, %306, %295
  %317 = sext i32 %270 to i64
  %318 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 3, i32 0, i32 1
  %319 = load atomic i64, i64* %318 unordered, align 8, !tbaa !67
  %320 = urem i64 %317, %319
  %321 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 3, i32 0, i32 0
  %322 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %321 unordered, align 8, !tbaa !72
  %323 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %322, i64 %320
  %324 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %323 unordered, align 8, !tbaa !3
  %325 = icmp eq %"struct.std::__detail::_Hash_node_base"* %324, null
  br i1 %325, label %.loopexit17, label %326

326:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %327 = bitcast %"struct.std::__detail::_Hash_node_base"* %324 to %"struct.std::__detail::_Hash_node.203"**
  %328 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %327 unordered, align 8, !tbaa !73
  %329 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %328, i64 0, i32 0, i32 1
  %330 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %329 to i32*
  %331 = load atomic i32, i32* %330 unordered, align 4, !tbaa !66
  %332 = icmp eq i32 %331, %270
  br i1 %332, label %349, label %.preheader16

333:                                              ; preds = %340
  %334 = icmp eq i32 %343, %270
  br i1 %334, label %347, label %.preheader16

.preheader16:                                     ; preds = %333, %326
  %335 = phi %"struct.std::__detail::_Hash_node.203"* [ %339, %333 ], [ %328, %326 ]
  %336 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %335, i64 0, i32 0, i32 0, i32 0
  %337 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %336 unordered, align 8, !tbaa !73
  %338 = icmp eq %"struct.std::__detail::_Hash_node_base"* %337, null
  %339 = bitcast %"struct.std::__detail::_Hash_node_base"* %337 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %338, label %.loopexit17, label %340

340:                                              ; preds = %.preheader16
  %341 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %337, i64 1
  %342 = bitcast %"struct.std::__detail::_Hash_node_base"* %341 to i32*
  %343 = load atomic i32, i32* %342 unordered, align 4, !tbaa !66
  %344 = sext i32 %343 to i64
  %345 = urem i64 %344, %319
  %346 = icmp eq i64 %345, %320
  br i1 %346, label %333, label %.loopexit17

347:                                              ; preds = %333
  %348 = icmp eq %"struct.std::__detail::_Hash_node.203"* %335, null
  br i1 %348, label %.loopexit17, label %351

349:                                              ; preds = %326
  %350 = icmp eq %"struct.std::__detail::_Hash_node.203"* %328, null
  br i1 %350, label %.loopexit17, label %351

351:                                              ; preds = %349, %347
  %352 = phi %"struct.std::__detail::_Hash_node.203"* [ %339, %347 ], [ %328, %349 ]
  %353 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %352, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %354 = bitcast i8* %353 to %class.Worker**
  %355 = load atomic %class.Worker*, %class.Worker** %354 unordered, align 8, !tbaa !74
  %356 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
  %357 = icmp eq i8* %356, null
  br i1 %357, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %358

358:                                              ; preds = %351
  %359 = bitcast i8* %356 to %"class.(anonymous namespace)::Future"*
  %360 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 6
  %361 = load atomic i32, i32* %360 unordered, align 4, !tbaa !92
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 4, !tbaa !92
  %363 = bitcast i8* %356 to i32*
  store i32 1, i32* %363, align 8, !tbaa !99
  %364 = getelementptr inbounds i8, i8* %356, i64 4
  %365 = bitcast i8* %364 to i32*
  store i32 %361, i32* %365, align 4, !tbaa !101
  %366 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %367 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %366, i64 328
  %368 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %367 to i32*
  %369 = atomicrmw xchg i32* %368, i32 1 seq_cst, align 4
  %370 = getelementptr inbounds i8, i8* %356, i64 16
  %371 = bitcast i8* %370 to %union.pthread_mutex_t*
  %372 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %371, %"struct.std::atomic"* null) #37
  %373 = getelementptr inbounds i8, i8* %356, i64 56
  %374 = bitcast i8* %373 to %union.pthread_cond_t*
  %375 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %374, %"struct.std::atomic"* null) #37
  %376 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %366, null
  br i1 %376, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %377

377:                                              ; preds = %358
  %378 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %367 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %379 = atomicrmw xchg i32* %368, i32 %369 seq_cst, align 4
  %380 = icmp eq i32 %379, 1
  %381 = icmp eq i32 %369, 0
  %382 = and i1 %381, %380
  br i1 %382, label %383, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

383:                                              ; preds = %377
  %384 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %387

387:                                              ; preds = %383
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %378) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %387, %383, %377, %358, %351
  %388 = phi %"class.(anonymous namespace)::Future"* [ null, %351 ], [ %359, %358 ], [ %359, %387 ], [ %359, %383 ], [ %359, %377 ]
  %389 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %388, i64 0, i32 1
  %390 = load atomic i32, i32* %389 unordered, align 4, !tbaa !101
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 1
  %393 = load atomic i64, i64* %392 unordered, align 8, !tbaa !102
  %394 = urem i64 %391, %393
  %395 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 0
  %396 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
  %397 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %396, i64 %394
  %398 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %397 unordered, align 8, !tbaa !3
  %399 = icmp eq %"struct.std::__detail::_Hash_node_base"* %398, null
  br i1 %399, label %.loopexit15, label %400

400:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %401 = bitcast %"struct.std::__detail::_Hash_node_base"* %398 to %"struct.std::__detail::_Hash_node.203"**
  %402 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %401 unordered, align 8, !tbaa !73
  %403 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %402, i64 0, i32 0, i32 1
  %404 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %403 to i32*
  %405 = load atomic i32, i32* %404 unordered, align 4, !tbaa !66
  %406 = icmp eq i32 %390, %405
  br i1 %406, label %423, label %.preheader14

407:                                              ; preds = %414
  %408 = icmp eq i32 %390, %417
  br i1 %408, label %421, label %.preheader14

.preheader14:                                     ; preds = %407, %400
  %409 = phi %"struct.std::__detail::_Hash_node.203"* [ %413, %407 ], [ %402, %400 ]
  %410 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %409, i64 0, i32 0, i32 0, i32 0
  %411 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %410 unordered, align 8, !tbaa !73
  %412 = icmp eq %"struct.std::__detail::_Hash_node_base"* %411, null
  %413 = bitcast %"struct.std::__detail::_Hash_node_base"* %411 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %412, label %.loopexit15, label %414

414:                                              ; preds = %.preheader14
  %415 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %411, i64 1
  %416 = bitcast %"struct.std::__detail::_Hash_node_base"* %415 to i32*
  %417 = load atomic i32, i32* %416 unordered, align 4, !tbaa !66
  %418 = sext i32 %417 to i64
  %419 = urem i64 %418, %393
  %420 = icmp eq i64 %419, %394
  br i1 %420, label %407, label %.loopexit15

421:                                              ; preds = %407
  %422 = icmp eq %"struct.std::__detail::_Hash_node.203"* %409, null
  br i1 %422, label %.loopexit15, label %534

423:                                              ; preds = %400
  %424 = icmp eq %"struct.std::__detail::_Hash_node.203"* %402, null
  br i1 %424, label %.loopexit15, label %534

.loopexit15:                                      ; preds = %423, %421, %414, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %425 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
  %426 = bitcast i8* %425 to %"struct.std::__detail::_Hash_node_base"**
  %427 = getelementptr inbounds i8, i8* %425, i64 8
  %428 = bitcast i8* %427 to i32*
  store i32 %390, i32* %428, align 8, !tbaa !104
  %429 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 4
  %430 = load atomic i64, i64* %392 unordered, align 8, !tbaa !102
  %431 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 3
  %432 = load atomic i64, i64* %431 unordered, align 8, !tbaa !106
  %433 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %429, i64 %430, i64 %432, i64 1)
          to label %434 unwind label %541

434:                                              ; preds = %.loopexit15
  %435 = extractvalue { i8, i64 } %433, 0
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  %439 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
  br label %497

440:                                              ; preds = %434
  %441 = extractvalue { i8, i64 } %433, 1
  %442 = icmp eq i64 %441, 1
  br i1 %442, label %443, label %445, !prof !107, !misexpect !108

443:                                              ; preds = %440
  %444 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %444, align 8, !tbaa !109
  br label %449

445:                                              ; preds = %440
  %446 = call noalias i8* @calloc(i64 %441, i64 8) #37
  %447 = bitcast i8* %446 to %"struct.std::__detail::_Hash_node_base"**
  %448 = shl i64 %441, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %446, i8 0, i64 %448, i1 false) #37
  br label %449

449:                                              ; preds = %445, %443
  %450 = phi %"struct.std::__detail::_Hash_node_base"** [ %444, %443 ], [ %447, %445 ]
  %451 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 2
  %452 = bitcast %"struct.std::__detail::_Hash_node_base"* %451 to %"struct.std::__detail::_Hash_node.203"**
  %453 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %452 unordered, align 8, !tbaa !110
  %454 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %451, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %454, align 8, !tbaa !110
  %455 = icmp eq %"struct.std::__detail::_Hash_node.203"* %453, null
  br i1 %455, label %.loopexit, label %456

456:                                              ; preds = %449
  %457 = bitcast %"struct.std::__detail::_Hash_node_base"* %451 to i64*
  br label %458

458:                                              ; preds = %487, %456
  %459 = phi %"struct.std::__detail::_Hash_node.203"* [ %453, %456 ], [ %462, %487 ]
  %460 = phi i64 [ 0, %456 ], [ %488, %487 ]
  %461 = bitcast %"struct.std::__detail::_Hash_node.203"* %459 to %"struct.std::__detail::_Hash_node.203"**
  %462 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %461 unordered, align 8, !tbaa !73
  %463 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 1
  %464 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %463 to i32*
  %465 = load atomic i32, i32* %464 unordered, align 4, !tbaa !66
  %466 = sext i32 %465 to i64
  %467 = urem i64 %466, %441
  %468 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %450, i64 %467
  %469 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468 unordered, align 8, !tbaa !3
  %470 = icmp eq %"struct.std::__detail::_Hash_node_base"* %469, null
  br i1 %470, label %471, label %480

471:                                              ; preds = %458
  %472 = load atomic i64, i64* %457 unordered, align 8, !tbaa !110
  %473 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 0
  %474 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 0, i32 0
  %475 = bitcast %"struct.std::__detail::_Hash_node.203"* %459 to i64*
  store i64 %472, i64* %475, align 8, !tbaa !73
  store %"struct.std::__detail::_Hash_node_base"* %473, %"struct.std::__detail::_Hash_node_base"** %454, align 8, !tbaa !110
  store %"struct.std::__detail::_Hash_node_base"* %451, %"struct.std::__detail::_Hash_node_base"** %468, align 8, !tbaa !3
  %476 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %474 unordered, align 8, !tbaa !73
  %477 = icmp eq %"struct.std::__detail::_Hash_node_base"* %476, null
  br i1 %477, label %487, label %478

478:                                              ; preds = %471
  %479 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %450, i64 %460
  store %"struct.std::__detail::_Hash_node_base"* %473, %"struct.std::__detail::_Hash_node_base"** %479, align 8, !tbaa !3
  br label %487

480:                                              ; preds = %458
  %481 = bitcast %"struct.std::__detail::_Hash_node_base"* %469 to i64*
  %482 = load atomic i64, i64* %481 unordered, align 8, !tbaa !73
  %483 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %459, i64 0, i32 0, i32 0
  %484 = bitcast %"struct.std::__detail::_Hash_node.203"* %459 to i64*
  store i64 %482, i64* %484, align 8, !tbaa !73
  %485 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %468 unordered, align 8, !tbaa !3
  %486 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %485, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %483, %"struct.std::__detail::_Hash_node_base"** %486, align 8, !tbaa !73
  br label %487

487:                                              ; preds = %480, %478, %471
  %488 = phi i64 [ %460, %480 ], [ %467, %471 ], [ %467, %478 ]
  %489 = icmp eq %"struct.std::__detail::_Hash_node.203"* %462, null
  br i1 %489, label %.loopexit, label %458

.loopexit:                                        ; preds = %487, %449
  %490 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
  %491 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 5
  %492 = icmp eq %"struct.std::__detail::_Hash_node_base"** %490, %491
  br i1 %492, label %495, label %493

493:                                              ; preds = %.loopexit
  %494 = bitcast %"struct.std::__detail::_Hash_node_base"** %490 to i8*
  call void @free(i8* %494) #37
  br label %495

495:                                              ; preds = %493, %.loopexit
  store i64 %441, i64* %392, align 8, !tbaa !102
  store %"struct.std::__detail::_Hash_node_base"** %450, %"struct.std::__detail::_Hash_node_base"*** %395, align 8, !tbaa !103
  %496 = urem i64 %391, %441
  br label %497

497:                                              ; preds = %495, %438
  %498 = phi %"struct.std::__detail::_Hash_node_base"** [ %439, %438 ], [ %450, %495 ]
  %499 = phi i64 [ %394, %438 ], [ %496, %495 ]
  %500 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498, i64 %499
  %501 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %500 unordered, align 8, !tbaa !3
  %502 = icmp eq %"struct.std::__detail::_Hash_node_base"* %501, null
  br i1 %502, label %509, label %503

503:                                              ; preds = %497
  %504 = bitcast %"struct.std::__detail::_Hash_node_base"* %501 to i64*
  %505 = load atomic i64, i64* %504 unordered, align 8, !tbaa !73
  %506 = bitcast i8* %425 to i64*
  store i64 %505, i64* %506, align 8, !tbaa !73
  %507 = bitcast %"struct.std::__detail::_Hash_node_base"** %500 to i8***
  %508 = load atomic i8**, i8*** %507 unordered, align 8, !tbaa !3
  store i8* %425, i8** %508, align 8, !tbaa !73
  br label %530

509:                                              ; preds = %497
  %510 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %298, i64 0, i32 2, i32 0, i32 2
  %511 = bitcast %"struct.std::__detail::_Hash_node_base"* %510 to i64*
  %512 = load atomic i64, i64* %511 unordered, align 8, !tbaa !110
  %513 = bitcast i8* %425 to i64*
  store i64 %512, i64* %513, align 8, !tbaa !73
  %514 = bitcast %"struct.std::__detail::_Hash_node_base"* %510 to i8**
  store i8* %425, i8** %514, align 8, !tbaa !110
  %515 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %426 unordered, align 8, !tbaa !73
  %516 = icmp eq %"struct.std::__detail::_Hash_node_base"* %515, null
  br i1 %516, label %527, label %517

517:                                              ; preds = %509
  %518 = load atomic i64, i64* %392 unordered, align 8, !tbaa !102
  %519 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %515, i64 1
  %520 = bitcast %"struct.std::__detail::_Hash_node_base"* %519 to i32*
  %521 = load atomic i32, i32* %520 unordered, align 4, !tbaa !66
  %522 = sext i32 %521 to i64
  %523 = urem i64 %522, %518
  %524 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %498, i64 %523
  %525 = bitcast %"struct.std::__detail::_Hash_node_base"** %524 to i8**
  store i8* %425, i8** %525, align 8, !tbaa !3
  %526 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %395 unordered, align 8, !tbaa !103
  br label %527

527:                                              ; preds = %517, %509
  %528 = phi %"struct.std::__detail::_Hash_node_base"** [ %498, %509 ], [ %526, %517 ]
  %529 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %528, i64 %499
  store %"struct.std::__detail::_Hash_node_base"* %510, %"struct.std::__detail::_Hash_node_base"** %529, align 8, !tbaa !3
  br label %530

530:                                              ; preds = %527, %503
  %531 = load atomic i64, i64* %431 unordered, align 8, !tbaa !106
  %532 = add i64 %531, 1
  store i64 %532, i64* %431, align 8, !tbaa !106
  %533 = bitcast i8* %427 to %"struct.std::pair.50"*
  br label %538

534:                                              ; preds = %423, %421
  %535 = phi %"struct.std::__detail::_Hash_node.203"* [ %402, %423 ], [ %413, %421 ]
  %536 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %535, i64 0, i32 0, i32 1
  %537 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %536 to %"struct.std::pair.50"*
  br label %538

538:                                              ; preds = %534, %530
  %539 = phi %"struct.std::pair.50"* [ %537, %534 ], [ %533, %530 ]
  %540 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %539, i64 0, i32 1
  store %"class.(anonymous namespace)::Future"* %388, %"class.(anonymous namespace)::Future"** %540, align 8, !tbaa !3
  store i32 2, i32* %245, align 8, !tbaa.struct !111
  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumSharedULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %246, align 8, !tbaa.struct !111
  store i8* %297, i8** %247, align 8, !tbaa.struct !111
  store %"class.(anonymous namespace)::Future"* %388, %"class.(anonymous namespace)::Future"** %248, align 8, !tbaa.struct !111
  store i32 %290, i32* %249, align 8, !tbaa.struct !111
  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %355, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
  br label %.loopexit17

541:                                              ; preds = %.loopexit15
  %542 = landingpad { i8*, i32 }
          cleanup
  %543 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %544 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %543, i64 328
  %545 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %544 to i32*
  %546 = atomicrmw xchg i32* %545, i32 1 seq_cst, align 4
  %547 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %299) #37
  %548 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %543, null
  br i1 %548, label %.body.i.i.i, label %567

.loopexit17:                                      ; preds = %538, %349, %347, %340, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %549 = phi %"class.(anonymous namespace)::Future"* [ %388, %538 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %347 ], [ null, %349 ], [ null, %.preheader16 ], [ null, %340 ]
  %550 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %551 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %550, i64 328
  %552 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551 to i32*
  %553 = atomicrmw xchg i32* %552, i32 1 seq_cst, align 4
  %554 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %299) #37
  %555 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %550, null
  br i1 %555, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %556

556:                                              ; preds = %.loopexit17
  %557 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %551 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %558 = atomicrmw xchg i32* %552, i32 %553 seq_cst, align 4
  %559 = icmp eq i32 %558, 1
  %560 = icmp eq i32 %553, 0
  %561 = and i1 %560, %559
  br i1 %561, label %562, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

562:                                              ; preds = %556
  %563 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %566

566:                                              ; preds = %562
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %557) #37
  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

567:                                              ; preds = %541
  %568 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %544 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %569 = atomicrmw xchg i32* %545, i32 %546 seq_cst, align 4
  %570 = icmp eq i32 %569, 1
  %571 = icmp eq i32 %546, 0
  %572 = and i1 %571, %570
  br i1 %572, label %573, label %.body.i.i.i

573:                                              ; preds = %567
  %574 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %.body.i.i.i, label %577

577:                                              ; preds = %573
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %568) #37
  br label %.body.i.i.i

_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %566, %562, %556, %.loopexit17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %244)
  %578 = icmp eq %"class.(anonymous namespace)::Future"* %549, null
  br i1 %578, label %579, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"

579:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
          to label %580 unwind label %583

580:                                              ; preds = %579
  unreachable

581:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %582 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

583:                                              ; preds = %579
  %584 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %583, %581, %577, %573, %567, %541
  %585 = phi { i8*, i32 } [ %582, %581 ], [ %584, %583 ], [ %542, %567 ], [ %542, %573 ], [ %542, %577 ], [ %542, %541 ]
  %586 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %587 = load atomic i64, i64* %241 unordered, align 8, !tbaa !9
  %588 = bitcast %"class.kotlin::mm::ShadowStack"* %586 to i64*
  store i64 %587, i64* %588, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %238) #37
  resume { i8*, i32 } %585

"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  %589 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %549, i64 0, i32 1
  %590 = load atomic i32, i32* %589 unordered, align 4, !tbaa !101
  %591 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %592 = load atomic i64, i64* %241 unordered, align 8, !tbaa !9
  %593 = bitcast %"class.kotlin::mm::ShadowStack"* %591 to i64*
  store i64 %592, i64* %593, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %238) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
  %594 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %595 = bitcast %"class.kotlin::mm::ShadowStack"* %594 to i64*
  %596 = load atomic i64, i64* %595 unordered, align 8, !tbaa !7
  store i64 %596, i64* %120, align 8, !tbaa !9
  %597 = bitcast %"class.kotlin::mm::ShadowStack"* %594 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %597, align 8, !tbaa !7
  store i32 0, i32* %122, align 8, !tbaa !12
  store i32 4, i32* %123, align 4, !tbaa !13
  %598 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %599 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %598 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %600 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %599 unordered, align 8, !tbaa !3
  %601 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %600, i64 0, i32 2, i32 1
  %602 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %601, i64 24) #37
  %603 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %602, i64 1
  %604 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %602, i64 2
  %605 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604 to %struct.TypeInfo**
  %606 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603 to i64*
  store i64 0, i64* %606, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %605, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
  %607 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %602, i64 3
  %608 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %607 to i32*
  store i32 %590, i32* %608, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %250, align 8, !tbaa !3
  %609 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %610 = load atomic i64, i64* %120 unordered, align 8, !tbaa !9
  %611 = bitcast %"class.kotlin::mm::ShadowStack"* %609 to i64*
  store i64 %610, i64* %611, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
  %612 = load atomic i32, i32* %233 unordered, align 8, !tbaa !18
  %613 = zext i32 %612 to i64
  %614 = icmp ult i64 %indvars.iv49, %613
  br i1 %614, label %Kotlin_Array_set.exit.i, label %615

615:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  %616 = load atomic volatile i64, i64* %251 monotonic, align 8
  %617 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252, i64 %indvars.iv49
  %618 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %617, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %604, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %618, align 8, !tbaa !3
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i

loop_exit.i:                                      ; preds = %loop_check.i
  %619 = load atomic i32, i32* %233 unordered, align 8, !tbaa !18
  %620 = icmp sgt i32 %619, 0
  %smax = select i1 %620, i32 %619, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check17.i

while_loop18.i:                                   ; preds = %loop_check17.i
  %621 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %622 = and i8 %621, 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %624

624:                                              ; preds = %while_loop18.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit49.i

Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %624, %while_loop18.i
  %625 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %252, i64 %indvars.iv
  %626 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %625 to %struct.ObjHeader**
  %627 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %626 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %627, %struct.ObjHeader** %191, align 8, !tbaa !3
  %628 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %627, i64 1
  %629 = bitcast %struct.ObjHeader* %628 to i32*
  %630 = load atomic i32, i32* %629 unordered, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
  %631 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %632 = bitcast %"class.kotlin::mm::ShadowStack"* %631 to i64*
  %633 = load atomic i64, i64* %632 unordered, align 8, !tbaa !7
  store i64 %633, i64* %120, align 8, !tbaa !9
  %634 = bitcast %"class.kotlin::mm::ShadowStack"* %631 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %634, align 8, !tbaa !7
  store i32 0, i32* %122, align 8, !tbaa !12
  store i32 4, i32* %123, align 4, !tbaa !13
  %635 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
  %636 = icmp eq i32 %635, 2
  br i1 %636, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i

label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"

"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
  %637 = load atomic %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal" unordered, align 8
  %638 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %637, %struct.ObjHeader** nonnull %117)
  store %struct.ObjHeader* %638, %struct.ObjHeader** %117, align 8, !tbaa !3
  %639 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
  %640 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %639, i64 0, i32 0
  %641 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %642 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %641, i64 328
  %643 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %642 to i32*
  %644 = atomicrmw xchg i32* %643, i32 1 seq_cst, align 4
  %645 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %640) #37
  %646 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %641, null
  br i1 %646, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %647

647:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %648 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %642 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %649 = atomicrmw xchg i32* %643, i32 %644 seq_cst, align 4
  %650 = icmp eq i32 %649, 1
  %651 = icmp eq i32 %644, 0
  %652 = and i1 %651, %650
  br i1 %652, label %653, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

653:                                              ; preds = %647
  %654 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %655 = and i8 %654, 1
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %657

657:                                              ; preds = %653
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %648) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %657, %653, %647, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %658 = sext i32 %630 to i64
  %659 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %639, i64 0, i32 2, i32 0, i32 1
  %660 = load atomic i64, i64* %659 unordered, align 8, !tbaa !102
  %661 = urem i64 %658, %660
  %662 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %639, i64 0, i32 2, i32 0, i32 0
  %663 = load atomic %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %662 unordered, align 8, !tbaa !103
  %664 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %663, i64 %661
  %665 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %664 unordered, align 8, !tbaa !3
  %666 = icmp eq %"struct.std::__detail::_Hash_node_base"* %665, null
  br i1 %666, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %667

667:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %668 = bitcast %"struct.std::__detail::_Hash_node_base"* %665 to %"struct.std::__detail::_Hash_node.203"**
  %669 = load atomic %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %668 unordered, align 8, !tbaa !73
  %670 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %669, i64 0, i32 0, i32 1
  %671 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %670 to i32*
  %672 = load atomic i32, i32* %671 unordered, align 4, !tbaa !66
  %673 = icmp eq i32 %672, %630
  br i1 %673, label %690, label %.preheader

674:                                              ; preds = %681
  %675 = icmp eq i32 %684, %630
  br i1 %675, label %688, label %.preheader

.preheader:                                       ; preds = %674, %667
  %676 = phi %"struct.std::__detail::_Hash_node.203"* [ %680, %674 ], [ %669, %667 ]
  %677 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %676, i64 0, i32 0, i32 0, i32 0
  %678 = load atomic %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %677 unordered, align 8, !tbaa !73
  %679 = icmp eq %"struct.std::__detail::_Hash_node_base"* %678, null
  %680 = bitcast %"struct.std::__detail::_Hash_node_base"* %678 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %679, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %681

681:                                              ; preds = %.preheader
  %682 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %678, i64 1
  %683 = bitcast %"struct.std::__detail::_Hash_node_base"* %682 to i32*
  %684 = load atomic i32, i32* %683 unordered, align 4, !tbaa !66
  %685 = sext i32 %684 to i64
  %686 = urem i64 %685, %660
  %687 = icmp eq i64 %686, %661
  br i1 %687, label %674, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

688:                                              ; preds = %674
  %689 = icmp eq %"struct.std::__detail::_Hash_node.203"* %676, null
  br i1 %689, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %692

690:                                              ; preds = %667
  %691 = icmp eq %"struct.std::__detail::_Hash_node.203"* %669, null
  br i1 %691, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %692

692:                                              ; preds = %690, %688
  %693 = phi %"struct.std::__detail::_Hash_node.203"* [ %680, %688 ], [ %669, %690 ]
  %694 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %693, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %695 = bitcast i8* %694 to %"class.(anonymous namespace)::Future"**
  %696 = load atomic %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %695 unordered, align 8, !tbaa !112
  %697 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %696, i64 0, i32 3
  %698 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %699 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %698, i64 328
  %700 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %699 to i32*
  %701 = atomicrmw xchg i32* %700, i32 1 seq_cst, align 4
  %702 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %697) #37
  %703 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %698, null
  br i1 %703, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %704

704:                                              ; preds = %692
  %705 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %699 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %706 = atomicrmw xchg i32* %700, i32 %701 seq_cst, align 4
  %707 = icmp eq i32 %706, 1
  %708 = icmp eq i32 %701, 0
  %709 = and i1 %708, %707
  br i1 %709, label %710, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

710:                                              ; preds = %704
  %711 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %712 = and i8 %711, 1
  %713 = icmp eq i8 %712, 0
  br i1 %713, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %714

714:                                              ; preds = %710
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %705) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %714, %710, %704, %692
  %715 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %696, i64 0, i32 0
  %716 = load atomic i32, i32* %715 unordered, align 8, !tbaa !99
  %717 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %718 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717, i64 328
  %719 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718 to i32*
  %720 = atomicrmw xchg i32* %719, i32 1 seq_cst, align 4
  %721 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %697) #37
  %722 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %717, null
  br i1 %722, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %723

723:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
  %724 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %718 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %725 = atomicrmw xchg i32* %719, i32 %720 seq_cst, align 4
  %726 = icmp eq i32 %725, 1
  %727 = icmp eq i32 %720, 0
  %728 = and i1 %727, %726
  br i1 %728, label %729, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

729:                                              ; preds = %723
  %730 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %731 = and i8 %730, 1
  %732 = icmp eq i8 %731, 0
  br i1 %732, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %733

733:                                              ; preds = %729
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %724) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %733, %729, %723, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %690, %688, %681, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %734 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %688 ], [ 0, %690 ], [ %716, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %716, %733 ], [ %716, %729 ], [ %716, %723 ], [ 0, %.preheader ], [ 0, %681 ]
  %735 = load atomic %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**) unordered, align 8, !tbaa !3
  %736 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735, i64 328
  %737 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736 to i32*
  %738 = atomicrmw xchg i32* %737, i32 1 seq_cst, align 4
  %739 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %640) #37
  %740 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %735, null
  br i1 %740, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %741

741:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %742 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %736 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %743 = atomicrmw xchg i32* %737, i32 %738 seq_cst, align 4
  %744 = icmp eq i32 %743, 1
  %745 = icmp eq i32 %738, 0
  %746 = and i1 %745, %744
  br i1 %746, label %747, label %Kotlin_Worker_stateOfFuture.exit.i.i

747:                                              ; preds = %741
  %748 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %749 = and i8 %748, 1
  %750 = icmp eq i8 %749, 0
  br i1 %750, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %751

751:                                              ; preds = %747
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %742) #37
  br label %Kotlin_Worker_stateOfFuture.exit.i.i

Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %751, %747, %741, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %752 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %638, i64 1
  %753 = bitcast %struct.ObjHeader* %752 to i32*
  %754 = load atomic i32, i32* %753 unordered, align 8, !tbaa !18
  %755 = icmp ugt i32 %754, %734
  br i1 %755, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %756

756:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  %757 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %638, i64 2
  %758 = sext i32 %734 to i64
  %759 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %757, i64 %758
  %760 = bitcast %struct.ObjHeader* %759 to %struct.ObjHeader**
  %761 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %760 unordered, align 8, !tbaa !3
  store %struct.ObjHeader* %761, %struct.ObjHeader** %192, align 8, !tbaa !3
  %762 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %763 = load atomic i64, i64* %120 unordered, align 8, !tbaa !9
  %764 = bitcast %"class.kotlin::mm::ShadowStack"* %762 to i64*
  store i64 %763, i64* %764, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
  %765 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %761, i64 2
  %766 = bitcast %struct.ObjHeader* %765 to i32*
  %767 = load atomic i32, i32* %766 unordered, align 4
  switch i32 %767, label %when_next27.i [
    i32 1, label %when_case21.i
    i32 2, label %when_case21.i
    i32 0, label %when_case22.i
    i32 3, label %when_case24.i
    i32 4, label %when_case26.i
  ]

when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %630, %struct.ObjHeader** nonnull %193)
  br label %loop_check17.i

when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %768 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
  %769 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %770 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %769 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %771 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %770 unordered, align 8, !tbaa !3
  %772 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %771, i64 0, i32 2, i32 1
  %773 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %772, i64 56) #37
  %774 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %773, i64 1
  %775 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %773, i64 2
  %776 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775 to %struct.ObjHeader*
  %777 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775 to %struct.TypeInfo**
  %778 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %774 to i64*
  store i64 0, i64* %778, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %777, align 8, !tbaa !14
  %779 = bitcast %struct.ObjHeader** %768 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %775, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %779, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %776, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @137 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %776) #50
  unreachable

when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %780 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
  %781 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %630, %struct.ObjHeader** nonnull %781)
  %782 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %783 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %782 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %784 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %783 unordered, align 8, !tbaa !3
  %785 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %784, i64 0, i32 2, i32 1
  %786 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %785, i64 56) #37
  %787 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 1
  %788 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %786, i64 2
  %789 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %struct.ObjHeader*
  %790 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788 to %struct.TypeInfo**
  %791 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %787 to i64*
  store i64 0, i64* %791, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %790, align 8, !tbaa !14
  %792 = bitcast %struct.ObjHeader** %780 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %788, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %792, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %789, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @138 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %789) #50
  unreachable

when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %793 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
  %794 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %630, %struct.ObjHeader** nonnull %794)
  %795 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %796 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %795 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %797 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %796 unordered, align 8, !tbaa !3
  %798 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %797, i64 0, i32 2, i32 1
  %799 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %798, i64 56) #37
  %800 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %799, i64 1
  %801 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %799, i64 2
  %802 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801 to %struct.ObjHeader*
  %803 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801 to %struct.TypeInfo**
  %804 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %800 to i64*
  store i64 0, i64* %804, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %803, align 8, !tbaa !14
  %805 = bitcast %struct.ObjHeader** %793 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %801, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %805, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %802, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @139 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %802) #50
  unreachable

when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @"kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing"() #50
  unreachable

loop_check17.i:                                   ; preds = %when_case21.i, %loop_exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %when_case21.i ], [ 0, %loop_exit.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop18.i

epilogue:                                         ; preds = %loop_check17.i
  %806 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %807 = bitcast %"class.kotlin::mm::ShadowStack"* %806 to i64*
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %188)
  %808 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
  store i64 %808, i64* %807, align 8, !tbaa !7
  ret void
}
