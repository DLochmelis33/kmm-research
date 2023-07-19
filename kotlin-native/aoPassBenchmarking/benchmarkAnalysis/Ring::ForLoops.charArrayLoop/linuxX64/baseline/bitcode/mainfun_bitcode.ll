define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:ForLoopsBenchmark#internal", align 8
  %5 = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 1
  %6 = bitcast %struct.ObjHeader** %5 to i64*
  store i64 0, i64* %6, align 8
  %objHeader = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ForLoopsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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

21:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %21, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %3, align 8, !tbaa !3
  %22 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %22)
  %.sub.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %22, i8 0, i32 32, i1 immarg false) #49
  %23 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %24 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %25 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !7
  %28 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %29 = bitcast %struct.ObjHeader** %28 to i64*
  store i64 %27, i64* %29, align 8, !tbaa !9
  %30 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %30, align 8, !tbaa !7
  %31 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %32 = bitcast %struct.ObjHeader** %31 to i32*
  store i32 0, i32* %32, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %25, i64 0, i32 3
  store i32 4, i32* %33, align 4, !tbaa !13
  %34 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %35 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %34 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %36 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %35, align 8, !tbaa !3
  %37 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %36, i64 0, i32 2, i32 1
  %38 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %37, i64 20024) #37
  %39 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %38, i64 1
  %40 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %38, i64 2
  %41 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40 to %struct.TypeInfo**
  %42 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %41, align 8, !tbaa !16
  %43 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %38, i64 3
  %44 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43 to i32*
  store i32 10000, i32* %44, align 8, !tbaa !18
  %45 = bitcast %struct.ObjHeader** %23 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %45, align 8, !tbaa !3
  %46 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40 to i64*
  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %38, i64 4
  %48 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i16*
  br label %loop_check.i4

while_loop.i2:                                    ; preds = %loop_check.i4
  %49 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %Kotlin_mm_safePointWhileLoopBody.exit.i3, label %52

52:                                               ; preds = %while_loop.i2
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i3

Kotlin_mm_safePointWhileLoopBody.exit.i3:         ; preds = %52, %while_loop.i2
  %53 = load i32, i32* %44, align 8, !tbaa !18
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %indvars.iv, %54
  br i1 %55, label %Kotlin_CharArray_set.exit.i, label %56

56:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i3
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i3
  %57 = trunc i32 %tmp.0.i to i16
  %58 = load atomic volatile i64, i64* %46 monotonic, align 8
  %59 = getelementptr inbounds i16, i16* %48, i64 %indvars.iv
  store i16 %57, i16* %59, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %60 = add nuw nsw i32 %tmp.0.i, 1
  br label %loop_check.i4

loop_check.i4:                                    ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %tmp.0.i = phi i32 [ %60, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %exitcond5.not = icmp eq i64 %indvars.iv, 10000
  br i1 %exitcond5.not, label %call_success, label %while_loop.i2

call_success:                                     ; preds = %loop_check.i4
  %61 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %62 = bitcast %struct.ObjHeader* %61 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %62, align 8, !tbaa !3
  %63 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %64 = load i64, i64* %29, align 8, !tbaa !9
  %65 = bitcast %"class.kotlin::mm::ShadowStack"* %63 to i64*
  store i64 %64, i64* %65, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22)
  %66 = bitcast %struct.ObjHeader* %61 to %struct.ObjHeader**
  %67 = load %struct.ObjHeader*, %struct.ObjHeader** %66, align 8
  %68 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %67, i64 1
  %69 = bitcast %struct.ObjHeader* %68 to i32*
  %70 = load i32, i32* %69, align 8, !tbaa !18
  %71 = icmp sgt i32 %70, 0
  %smax = select i1 %71, i32 %70, i32 0
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %72 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %75

75:                                               ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %75, %while_loop.i
  %76 = add nuw i32 %inductionVariable.0.i, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %call_success
  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %76, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %exitcond.not = icmp eq i32 %inductionVariable.0.i, %smax
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %77 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %78 = load i64, i64* %13, align 8, !tbaa !9
  %79 = bitcast %"class.kotlin::mm::ShadowStack"* %77 to i64*
  store i64 %78, i64* %79, align 8, !tbaa !7
  ret void
}
