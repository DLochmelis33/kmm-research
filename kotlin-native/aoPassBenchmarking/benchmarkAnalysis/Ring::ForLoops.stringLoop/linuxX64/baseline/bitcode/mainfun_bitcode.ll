define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [5 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:ForLoopsBenchmark#internal", align 8
  %5 = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 1
  %6 = bitcast %struct.ObjHeader** %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(24) %6, i8 0, i32 16, i1 immarg false) #49
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
  %22 = bitcast [5 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22)
  %.sub.i = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %22, i8 0, i32 40, i1 immarg false) #49
  %23 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %24 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %25 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %26 = bitcast [5 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %27 = bitcast %"class.kotlin::mm::ShadowStack"* %25 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !7
  %29 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %30 = bitcast %struct.ObjHeader** %29 to i64*
  store i64 %28, i64* %30, align 8, !tbaa !9
  %31 = bitcast %"class.kotlin::mm::ShadowStack"* %25 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %31, align 8, !tbaa !7
  %32 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %33 = bitcast %struct.ObjHeader** %32 to i32*
  store i32 0, i32* %33, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %26, i64 0, i32 3
  store i32 5, i32* %34, align 4, !tbaa !13
  %35 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %36 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %35 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %37 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %36, align 8, !tbaa !3
  %38 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %37, i64 0, i32 2, i32 1
  %39 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %38, i64 20024) #37
  %40 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 1
  %41 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 2
  %42 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to %struct.TypeInfo**
  %43 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %42, align 8, !tbaa !16
  %44 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 3
  %45 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %44 to i32*
  store i32 10000, i32* %45, align 8, !tbaa !18
  %46 = bitcast %struct.ObjHeader** %23 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %46, align 8, !tbaa !3
  %47 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to i64*
  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %39, i64 4
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i16*
  br label %loop_check.i4

while_loop.i2:                                    ; preds = %loop_check.i4
  %50 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %Kotlin_mm_safePointWhileLoopBody.exit.i3, label %53

53:                                               ; preds = %while_loop.i2
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i3

Kotlin_mm_safePointWhileLoopBody.exit.i3:         ; preds = %53, %while_loop.i2
  %54 = load i32, i32* %45, align 8, !tbaa !18
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %indvars.iv, %55
  br i1 %56, label %Kotlin_CharArray_set.exit.i, label %57

57:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i3
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i3
  %58 = trunc i32 %tmp.0.i to i16
  %59 = load atomic volatile i64, i64* %47 monotonic, align 8
  %60 = getelementptr inbounds i16, i16* %49, i64 %indvars.iv
  store i16 %58, i16* %60, align 2, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %61 = add nuw nsw i32 %tmp.0.i, 1
  br label %loop_check.i4

loop_check.i4:                                    ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %tmp.0.i = phi i32 [ %61, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %exitcond5.not = icmp eq i64 %indvars.iv, 10000
  br i1 %exitcond5.not, label %call_success, label %while_loop.i2

call_success:                                     ; preds = %loop_check.i4
  %62 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %63 = bitcast %struct.ObjHeader* %62 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %63, align 8, !tbaa !3
  %.cast = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %41 to %struct.ObjHeader*
  %64 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* nonnull %.cast, %struct.ObjHeader** nonnull %24)
  store %struct.ObjHeader* %64, %struct.ObjHeader** %24, align 8, !tbaa !3
  %65 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %66 = bitcast %struct.ObjHeader* %65 to %struct.ObjHeader**
  store %struct.ObjHeader* %64, %struct.ObjHeader** %66, align 8, !tbaa !3
  %67 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %68 = load i64, i64* %30, align 8, !tbaa !9
  %69 = bitcast %"class.kotlin::mm::ShadowStack"* %67 to i64*
  store i64 %68, i64* %69, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22)
  %70 = load %struct.ObjHeader*, %struct.ObjHeader** %66, align 8
  %71 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %70, i64 1
  %72 = bitcast %struct.ObjHeader* %71 to i32*
  %73 = load i32, i32* %72, align 8, !tbaa !18
  %74 = icmp sgt i32 %73, 0
  %smax = select i1 %74, i32 %73, i32 0
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %75 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %78

78:                                               ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %78, %while_loop.i
  %79 = load i32, i32* %72, align 8, !tbaa !18
  %80 = icmp ugt i32 %79, %inductionVariable.0.i
  br i1 %80, label %Kotlin_String_get.exit.i, label %81

81:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_String_get.exit.i:                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %82 = add nuw i32 %inductionVariable.0.i, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_String_get.exit.i, %call_success
  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %82, %Kotlin_String_get.exit.i ]
  %exitcond.not = icmp eq i32 %inductionVariable.0.i, %smax
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %83 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %84 = load i64, i64* %13, align 8, !tbaa !9
  %85 = bitcast %"class.kotlin::mm::ShadowStack"* %83 to i64*
  store i64 %84, i64* %85, align 8, !tbaa !7
  ret void
}
